// Обработка сбоев при распаковке архива
#undef  CHECK
#define CHECK(e,a,b)   {if (!(a))  {char *s=(char*)malloc(MY_FILENAME_MAX*4);  if (s)  sprintf b;  UnarcQuit(e,s);}}
void UnarcQuit (int errcode, char* errmsg);

// Доступ к структуре архива
#include "ArcStructure.h"

#include "../Compression/MultiThreading.h"
#include "unarcdll.h"

// Доступ к парсингу командной строки и выполнению операций над архивом
#include "ArcCommand.h"
#include "ArcProcess.h"

// Экстренный выход из программы в случае ошибки
void UnarcQuit (int errcode, char* errmsg)
{
  CurrentProcess->quit (errcode, errmsg);
}

// Запомним хендл unarc.dll, необходимый нам для правильной загрузки других dll
extern "C" BOOL WINAPI DllMain (HINSTANCE hinstDll, DWORD fdwReason, LPVOID lpvReserved)
{
  if (fdwReason == DLL_PROCESS_ATTACH)
    hinstUnarcDll = hinstDll;
  return TRUE;
}


/******************************************************************************
** Описание интерфейса с программой, использующей DLL *************************
******************************************************************************/
class DLLUI : public BASEUI
{
private:
  char outdir[MY_FILENAME_MAX*4];  //unicode: utf-8 encoding
public:
  COMMAND *command;
  bool     callback;
  Mutex    mutex;
  Event    DoEvent, EventDone;

  char *what; Number n1, n2; int result; char *str;
  int event (char *_what, Number _n1, Number _n2, char *_str);

  DLLUI (COMMAND *_command, bool _callback)  :  command(_command), callback(_callback) {}
  bool AllowProcessing (char cmd, int silent, FILENAME arcname, char* comment, int cmtsize, FILENAME outdir);
  FILENAME GetOutDir ();
  bool BeginProgress (uint64 totalBytes);
  bool ProgressRead  (uint64 readBytes);
  bool ProgressWrite (uint64 writtenBytes);
  bool ProgressFile  (bool isdir, const char *operation, FILENAME filename, uint64 filesize);
  char AskOverwrite  (FILENAME filename, uint64 size, time_t modified);
  char AskPassword   (char *pwd, int pwdbuf_size);
  void Abort         (COMMAND *cmd, int errcode, char* errmsg);
};


/******************************************************************************
** Реализация интерфейса с программой, использующей DLL ***********************
******************************************************************************/
int DLLUI::event (char *_what, Number _n1, Number _n2, char *_str)
{
  Lock _(mutex);
  what = _what;
  n1   = _n1;
  n2   = _n2;
  str  = _str;

  DoEvent.Signal();
  EventDone.Wait();
  return result;
}

bool DLLUI::BeginProgress (uint64 totalBytes)
{
  return callback? event ("total", totalBytes>>20, totalBytes, "") >= 0
                 : TRUE;
}

bool DLLUI::ProgressRead (uint64 readBytes)
{
  return callback? event ("read", readBytes>>20, readBytes, "") >= 0
                 : TRUE;
}

bool DLLUI::ProgressWrite (uint64 writtenBytes)
{
  return callback? event ("write", writtenBytes>>20, writtenBytes, "") >= 0
                 : TRUE;
}

bool DLLUI::ProgressFile (bool isdir, const char *operation, FILENAME filename, uint64 filesize)
{
  return callback? event ("filename", filesize>>20, filesize, filename) >= 0
                 : TRUE;
}

FILENAME DLLUI::GetOutDir()
{
  return outdir;
}

bool DLLUI::AllowProcessing (char cmd, int silent, FILENAME arcname, char* comment, int cmtsize, FILENAME _outdir)
{
  strcpy (outdir, _outdir);
  return TRUE;
}

char DLLUI::AskOverwrite (FILENAME filename, uint64 size, time_t modified)
{
  return callback? event ("overwrite?", size>>20, size, filename)
                 : 's';
}

char DLLUI::AskPassword (char *pwd, int pwdbuf_size)
{
  return callback? event ("password?", pwdbuf_size, 0, pwd)
                 : 'n';
}

void DLLUI::Abort (COMMAND *cmd, int errcode, char* errmsg)
{
  event ("error", errcode, 0, errmsg);
}


/******************************************************************************
** Реализация функционала DLL *************************************************
******************************************************************************/
static THREAD_FUNC_RET_TYPE THREAD_FUNC_CALL_TYPE decompress_thread (void *paramPtr)
{
  uint64 total_files, origsize, compsize;
  DLLUI *ui = (DLLUI*) paramPtr;
  // Выполнить разобранную команду
  if (ui->command->cmd=='l')
  {
    PROCESS (ui->command, ui, total_files, origsize, compsize);
    ui->event ("total_files", total_files,  0,        "");
    ui->event ("origsize",    origsize>>20, origsize, "");
    ui->event ("compsize",    compsize>>20, compsize, "");
  }
  else
    PROCESS (ui->command, ui);
  ui->what = "return";
  ui->DoEvent.Signal();
  return 0;
}

int __cdecl FreeArcExtract (cbtype *callback, ...)
{
  jmpready = FALSE;

  va_list argptr;
  va_start(argptr, callback);

  int argc=0;
  char *argv[1000] = {"c:\\unarc.dll"};  //// Здесь будет искаться arc.ini!

  for (int i=1; i<1000; i++)
  {
    argc = i;
    argv[i] = va_arg(argptr, char*);
    if (argv[i]==NULL || argv[i][0]==0)
      {argv[i]=NULL; break;}
  }
  va_end(argptr);

  int errcode = FREEARC_OK;
  COMMAND command (argc, argv);    // Распарсить команду
  if (command.ok) {                // Если парсинг был удачен и можно выполнить команду
    command.Prepare();
    Thread thread;
    DLLUI *ui  =  new DLLUI (&command, callback!=NULL);
    thread.Create (decompress_thread, ui);   //   Выполнить разобранную команду

    for(;;)
    {
      ui->DoEvent.Wait();
      if (strequ (ui->what, "return"))   break;
      ui->result = callback? callback (ui->what, ui->n1, ui->n2, ui->str) : FREEARC_ERRCODE_NOT_IMPLEMENTED;
      if (strequ (ui->what, "quit"))     errcode = ui->n1;   // error code of command
      ui->EventDone.Signal();
    }
    thread.Wait();
  }
  return errcode? errcode : (command.ok? FREEARC_OK : FREEARC_ERRCODE_GENERAL);
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////
typedef struct _stack_t {
  struct _stack_t *next;
  char text[1];
} stack_t;

unsigned int g_stringsize;
stack_t **g_stacktop;
LPTSTR g_variables;
HWND g_hWndParent;

#define EXDLL_INIT()           {  \
		g_hWndParent = hwndParent; \
        g_stringsize=string_size; \
        g_stacktop=stacktop;      \
        g_variables=variables; }
	
int WINAPI popstringn(char *str, int maxlen)
{
  stack_t *th;
  if (!g_stacktop || !*g_stacktop) return 1;
  th=(*g_stacktop);
  if (str) lstrcpynA(str,th->text,maxlen?maxlen:g_stringsize);
  *g_stacktop = th->next;
  GlobalFree((HGLOBAL)th);
  return 0;
}

// Unicode
/*int WINAPI PopStringNW(LPWSTR wideStr, int maxlen)
{
   int realLen = maxlen ? maxlen : g_stringsize;
   char *ansiStr = ( char * ) GlobalAlloc(GPTR, realLen);
   int rval = popstringn(ansiStr, realLen);
   MultiByteToWideChar(CP_UTF8, 0, ansiStr, -1, wideStr, realLen);
   GlobalFree((HGLOBAL)ansiStr);
   
   MessageBoxA( 0, ansiStr, "", MB_OK );
   
   return rval;
}*/

void WINAPI pushstring(char *str)
{
  stack_t *th;
  if (!g_stacktop) return;
  th=(stack_t*)GlobalAlloc(GPTR,(sizeof(stack_t)+(g_stringsize)*sizeof(*str)));
  lstrcpynA(th->text,str,g_stringsize);
  th->next=*g_stacktop;
  *g_stacktop=th;
}

void WINAPI pushintptr(INT_PTR value)
{
  char buffer[ 30 ] = {};
  snprintf(buffer, 30, sizeof(void*) > 4 ? "%Id" : "%d", value);
  pushstring(buffer);
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Начало нашего кода
// Contacts and Copyright
// FreeArc for NSIS is written by Krinkels 
// http://www.krinkels.org

// Отдельная благодарность kotkovets (http://forum.oszone.net/member.php?userid=133945) за помощь в написании кода

#include <shlwapi.h>
#include <windows.h>
#include <stdio.h>
#include <tchar.h>
#include <CommCtrl.h>

HANDLE hEvent=NULL, hThread=NULL;
DWORD thID=0;

char InputFileExt[_MAX_PATH] = {0}; 
char OutputPathExt[_MAX_PATH] = {0};
char PasswordExt[_MAX_PATH] = {0};

char OutputPath[_MAX_PATH] = {0};
char InputFile[_MAX_PATH] = {0};
char Password[ _MAX_PATH ] = {0};

char ReadyProgressInfo[_MAX_PATH] = {0};
char ExtractFiles[_MAX_PATH] = {0};

int ProgressMax = 1000, completedSize = 0;
int currentmb=0;

HWND hButton;
UINT g_uMsgCreate;
WNDPROC WndProcOld;
BOOL Thread = TRUE;

////////////////////////
// Ведение лога
HWND g_hwndParent;
HWND g_hwnddialog;
HWND g_hwndprogress;
HWND g_hwndText;
HWND g_hwndList;

void InitDialogs( HWND hWndParent )
{
	g_hwnddialog = FindWindowExA( hWndParent,NULL, "#32770" , "" );

	if( g_hwnddialog )
		g_hwndList = FindWindowExA( g_hwnddialog, NULL, "SysListView32", NULL );
	
	if( g_hwnddialog )
		g_hwndText = GetDlgItem(g_hwnddialog, 1006 );
		
	if( g_hwnddialog )
		g_hwndprogress = GetDlgItem( g_hwnddialog, 1004 );
}

void LogMessage( char *aStr ) 
{	
	if( !g_hwndList ) 
		return;

	UINT cch;
	wchar_t uStr[ _MAX_PATH ];
	*uStr = '\0';
	
	if( aStr != NULL )
	{
		cch = MultiByteToWideChar( CP_UTF8, 0, aStr, -1, NULL, 0 );
		if( cch )
			MultiByteToWideChar( CP_UTF8, 0, aStr, -1, uStr, cch );
	}
		
	LVITEM item = {0};
	int nItemCount;
	nItemCount = ( int )SendMessage( g_hwndList, LVM_GETITEMCOUNT, 0, 0 );
	item.mask = LVIF_TEXT;
	item.pszText = uStr;
	item.cchTextMax = wcslen( uStr );
	item.iItem = nItemCount;
	ListView_InsertItem( g_hwndList, &item );
	ListView_EnsureVisible( g_hwndList, item.iItem, 0 );
}
////////////////////////

bool UnarcError = false;
// Обработка нажатия кнопки. Нажимаем кнопку, выводится сообщение/распаковка приостанавливается. Если в сообщении нажали нет, то распаковка возобновляется
LRESULT CALLBACK WndProc( HWND hWndDlg, UINT uMsg, WPARAM wParam, LPARAM lParam )
{
	if( uMsg == g_uMsgCreate )
	{
		HFONT hFont = ( HFONT )SendMessage( hWndDlg, WM_GETFONT, 0, 0 );

		TCHAR BtnText[ 120 ] = { 0 };
		HWND hBtnText = GetDlgItem( g_hWndParent, 2 );
		ShowWindow( hBtnText, FALSE );
		GetWindowText( hBtnText, BtnText, sizeof( BtnText ) );
		RECT rButtonCancel;
		GetWindowRect( GetDlgItem( g_hWndParent, 2 ), &rButtonCancel );
		MapWindowPoints( HWND_DESKTOP, g_hWndParent, ( LPPOINT )&rButtonCancel, 2 );
		hButton = CreateWindowEx( 0, WC_BUTTON, BtnText, WS_CHILD | WS_VISIBLE | BS_PUSHBUTTON | BS_VCENTER,
								  rButtonCancel.left, rButtonCancel.top, rButtonCancel.right - rButtonCancel.left,
								  rButtonCancel.bottom - rButtonCancel.top, g_hWndParent, ( HMENU )1300, hinstUnarcDll, NULL );
		SendMessage( hButton, WM_SETFONT, ( WPARAM )hFont, 0 );
		return FALSE;
	}
	else 
	if( uMsg == WM_SHOWWINDOW )
	{
		DestroyWindow( hButton );
		ShowWindow( GetDlgItem( g_hWndParent, 2 ), TRUE );
		return TRUE;
	}
	else 
	if( uMsg == WM_COMMAND && LOWORD( wParam ) == 1300 )
	{
		SuspendThread( hThread );
		Thread = FALSE;
		if( MessageBoxA( g_hWndParent, "Прервать распаковку?", "!!!", MB_ICONQUESTION | MB_YESNO ) == IDYES )
		{
			SetEvent( hEvent );
			UnarcError = TRUE;
			SendMessage( g_hWndParent, WM_CLOSE, 0, 0 );
		}
		else
		{
			ResumeThread( hThread );
			Thread = TRUE;
		}
		return TRUE;
	}
	else return CallWindowProc( WndProcOld, hWndDlg, uMsg, wParam, lParam );
}
 
int __stdcall Extract(char *what, Number sizeMB, Number sizeByte, char *str)
{
	if ( !lstrcmpiA( what, "filename" ) && sizeByte ) 
	{
		// sizeMB - всегда ноль
		// sizeByte - размер файла		
		LogMessage( str );
		lstrcpyA( ExtractFiles, str );			
	}
	else 
	if( !lstrcmpiA( what, "write" ) ) 
	{
		// sizeMB - Мегабайты
		// sizeByte - Байты
		sprintf( ReadyProgressInfo, "(%u / %u Mb) %s", sizeMB, completedSize, ExtractFiles );		
		SetWindowTextA( g_hwndText, ReadyProgressInfo );
		currentmb = sizeMB;
	}
	else 
	if( !lstrcmpiA( what, "origsize" ) ) 
	{
		// sizeMB - Мегабайты
		// sizeByte - Байты
		completedSize = sizeMB;
	}
   else
   if( !lstrcmpiA( what, "error" ) && ( sizeMB < 0 ) && ( sizeMB != -10 ) ) 
	{
		if( !UnarcError )
		{
			MessageBoxA( g_hwnddialog, str, "Ошибка!!!", MB_ICONERROR );
			UnarcError = TRUE;
			pushintptr( sizeMB );
		}
	}

	return UnarcError ? -127 : 0;
}

char *GetShortFileName( char *FileName )
{
	static char aTmp[ _MAX_PATH ] = { 0 };
	if( GetShortPathNameA( FileName, aTmp, sizeof( aTmp ) - 1 ) == 0 )
		return ( char * )FileName;
	else
		return ( char * )aTmp;
}

DWORD WINAPI UnarcThread( LPVOID IpParam )
{
	char OutputPathExt[ _MAX_PATH ], WorkPathExt[ _MAX_PATH ], PasswordExt[ 130 ];
	
	sprintf( OutputPathExt, "-dp%s", GetShortFileName( OutputPath ) );
	sprintf( WorkPathExt, "-w%s", GetShortFileName( OutputPath ) );
	sprintf( PasswordExt, "-p%s", Password );

	if( FreeArcExtract( Extract, "l", "--", GetShortFileName( InputFileExt ), "", "", "", "", "", "", "" ) == 0 )
	{		
		if( strlen( PasswordExt ) > 2 )
			FreeArcExtract( Extract, "x", "-o+", WorkPathExt, OutputPathExt, PasswordExt, "--", GetShortFileName( InputFileExt ), "", "", "" );
		else
			FreeArcExtract( Extract, "x", "-o+", WorkPathExt, OutputPathExt, "--", GetShortFileName( InputFileExt ), "", "", "", "" );
	}


	hThread = NULL;
	SetEvent( hEvent );	
	return 0;
}
		
extern "C" 
{
void __cdecl ArcExtract( HWND hwndParent, int string_size, TCHAR *variables, stack_t **stacktop )
{	
	int PBRange; // Макс. значенип ПБ
	int PBPos; // Положение ПБ до начала распаковки
	EXDLL_INIT();

	popstringn( InputFileExt, _MAX_PATH );
	popstringn( OutputPath, _MAX_PATH );
	popstringn( Password, 128 );
	
	InitDialogs( hwndParent );

    g_uMsgCreate = RegisterWindowMessage( L"nsDialogExtract" );
	WndProcOld = (WNDPROC)SetWindowLongPtr( g_hwnddialog, GWLP_WNDPROC, ( long )WndProc );
	SendMessage( g_hwnddialog, g_uMsgCreate, TRUE, ( LPARAM )g_hwnddialog );

	SECURITY_ATTRIBUTES sa = {0};
	ZeroMemory( &sa, sizeof( sa ) );
    sa.nLength = sizeof( sa );
    sa.bInheritHandle = TRUE;
    sa.lpSecurityDescriptor = NULL;
	hEvent = CreateEvent( &sa, false, false, NULL );
    hThread = CreateThread( &sa, 0, UnarcThread, 0, 0, &thID );
	UINT val = 0, lastval = 0;
	
	PBRange = SendMessage( g_hwndprogress, PBM_GETRANGE, FALSE, 0 );
	PBPos = SendMessage( g_hwndprogress, PBM_GETPOS, 0, 0 );
	
	SendMessage( g_hwndprogress, PBM_SETRANGE, 0, MAKELPARAM( 0, ProgressMax ) );
	SendMessage( g_hwndprogress, PBM_SETPOS, 0, 0 );
		
	while( WaitForSingleObject( hEvent, 1 ) == WAIT_TIMEOUT && !WAIT_OBJECT_0 )
	{
		if( completedSize > 0 )
		{
			if( currentmb != 0 )
			{
				val = ( currentmb * ProgressMax ) / completedSize;
						
				if( val > ProgressMax ) val = ProgressMax;
				if( lastval != val ) 
				{
					SendMessage( g_hwndprogress, PBM_SETPOS, ( UINT )val, 0 );
				}								
			}
		}		
	}

	SendMessage( g_hwndprogress, PBM_SETRANGE, 0, MAKELPARAM( 0, PBRange ) );
	SendMessage( g_hwndprogress, PBM_SETPOS, ( int )PBPos, 0 );
	
	CloseHandle( hEvent );
	CloseHandle( hThread );
	SendMessage( g_hwnddialog, WM_SHOWWINDOW, 0, 0 );
	SetWindowLongPtr( g_hwnddialog, GWLP_WNDPROC, ( long )WndProcOld );
	UnloadDLL();
	pushintptr( 0 );	
}

}
