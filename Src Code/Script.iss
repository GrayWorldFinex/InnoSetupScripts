/////////////////////////////////////////////////////////////Модули (не трогать!!!)/////////////////////////////////////////////////////
#include "Modules\botva2.iss"
#include "Modules\progressbar.iss"
/////////////////////////////////////////////////////////////Модули (не трогать!!!)//////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////Итоги (начало)//////////////////////////////////////////////////////
#define Top "362"                   ;отступ надписи сверху, чем значение больше - тем надпись ниже
#define Mnojitel "1"     ;множитель - если название игры занимает 1строку - ставим 1, если 2 строки - ставим 2
/////////////////////////////////////////////////////////////Итоги (конец)///////////////////////////////////////////////////////

#define GameName "DiRT 3"
#define GameVersion "1.2"
#define Publisher "RePacker"
#define RePacker "RePacker"
#define Company "Новый Диск"

// Нужно для установки
#define NeedSize 111264
// Нужно ОЗУ
#define NeedMem 256


// Сплэш
//#define Splash

////с слайдами или просто с картинкой
//#define Slides
#define Image

// Музыка
//#define Music

/////////////////////////////////////

//#define records
//#define facompress
//#define PrecompInside
//#define SrepInside
//#define precomp "0.42"
//#define unrar
//#define XDelta
//#define PackZIP


[Setup]
VersionInfoDescription={#GameName} RePack by {#Repacker}
AppName={#GameName} v{#GameVersion}
AppPublisher={#Publisher}
AppVerName={#GameName} v{#GameVersion} от {#Publisher}
VersionInfoVersion={#GameVersion}
AppCopyright=© {#Company}
DefaultDirName={pf}\{#GameName}
DefaultGroupName={#GameName}
OutputDir=.
DisableReadyPage=yes
SetupIconFile= Files\Setup.ico
OutputBaseFilename=setup
SolidCompression=true
Compression=lzma2/ultra64


[Languages]
Name: rus; MessagesFile: compiler:Languages\Russian.isl

[Files]
#ifdef Splash
Source: splash.png; Flags: dontcopy deleteafterinstall
Source: "isgsg.dll"; DestDir: {tmp}; Flags: ignoreversion dontcopy nocompression
#endif
#ifdef Slides
Source: Files\SlidesFiles\*; Flags: dontcopy deleteafterinstall
Source: Files\PictureDLL\IsSlideShow\*.*; Flags: dontcopy deleteafterinstall
#endif
#ifdef Image
Source: Files\fon.png; Flags: dontcopy deleteafterinstall
#endif
Source: Files\Music\bass.dll; Flags: dontcopy deleteafterinstall

Source: ISSkin.dll; DestDir: {app}; Attribs: hidden system
Source: Skin.cjstyles; DestDir: {app}; Attribs: hidden system
#ifdef Music
Source: Files\Music\music.mp3; Flags: dontcopy deleteafterinstall
Source: Files\Music\MusicButton.png; Flags: dontcopy deleteafterinstall
#endif
Source: Files\PictureDLL\*.*; Flags: dontcopy deleteafterinstall
Source: Files\*.png; Flags: dontcopy deleteafterinstall
Source: Files\aboutlog.png; Flags: dontcopy deleteafterinstall
Source: Files\t&c.bmp; Flags: dontcopy deleteafterinstall


#ifdef Components
Source: Files\work*.jpg; Flags: dontcopy deleteafterinstall
Source: Files\workerror.jpg; Flags: dontcopy deleteafterinstall
#else
Source: Files\2work*.jpg; Flags: dontcopy deleteafterinstall
Source: Files\2workerror.jpg; Flags: dontcopy deleteafterinstall
#endif

Source: Files\IsDone\IsDone\*.*; DestDir: {tmp}; Flags: dontcopy deleteafterinstall

#ifdef records
Source: Files\ISDone\IsDone\records\records.inf; DestDir: {tmp}; Flags: dontcopy
#endif

#ifdef PrecompInside
Source: Files\IsDone\PrecompInside\*.*; DestDir: {tmp}; Flags: dontcopy deleteafterinstall
#endif

#ifdef SrepInside
Source: Files\IsDone\SrepInside\*.*; DestDir: {tmp}; Flags: dontcopy deleteafterinstall
#endif

#ifdef facompress
Source: Files\IsDone\IsDone\facompress\*.*; DestDir: {tmp}; Flags: dontcopy
#endif

#ifdef precomp
  #if precomp == "0.38"
  ; Source: Files\IsDone\Precomp\0.38\precomp038.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
  #else
    #if precomp == "0.4"
    ; Source: Files\IsDone\Precomp\0.40\precomp040.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
    #else
      #if precomp == "0.41"
      ; Source: Files\IsDone\Precomp\0.41\precomp041.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
      #else
        #if precomp == "0.42"
        ; Source: Files\IsDone\Precomp\0.42\precomp042.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
        #else
        ; Source: Files\IsDone\Precomp\0.38\precomp038.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
        ; Source: Files\IsDone\Precomp\0.40\precomp040.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
        ; Source: Files\IsDone\Precomp\0.41\precomp041.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
        ; Source: Files\IsDone\Precomp\0.42\precomp042.exe; DestDir: {tmp}; Flags: dontcopy deleteafterinstall;
        #endif
      #endif
    #endif
  #endif
#endif

#ifdef unrar
Source: Files\IsDone\Unrar.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef XDelta
Source: Files\IsDone\XDelta3.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef PackZIP
Source: Files\IsDone\7z.dll; DestDir: {tmp}; Flags: dontcopy
Source: Files\IsDone\packZIP.exe; DestDir: {tmp}; Flags: dontcopy
#endif



[CustomMessages]
rus.Welcome1=Вас приветствует Мастер установки игры %n«{#GameName} v{#GameVersion}»
rus.Welcome2=%nЧтобы продолжить установку нажмите на стрелку вправо, чтобы выйти нажмите на значок "X".
rus.Dir1=Программа установит «{#GameName} v{#GameVersion}» в следующую папку.
rus.Dir2=Нажмите «Далее», чтобы продолжить. Если Вы хотите выбрать другую папку, нажмите на шестерёнку.
rus.Group1=Программа создаст ярлыки в следующей папке меню «Пуск».
rus.FreeSpace=Доступно места на диске:
rus.NeedSpace=Требуется места для установки:
rus.AfterInstallSpace=После установки игра займет:
rus.nic=Не создавать папку в меню «Пуск»
rus.Comp=Выберите компоненты, которые Вы хотите установить; %nснимите флажки с компонентов, устанавливать которые не требуется. %nНажмите стрелку вправо, когда Вы будете готовы продолжить.
rus.dop=Выберите дополнительные задачи, которые необходимо выполнить
rus.ic=Добавить ярлык на рабочий стол
rus.Fin1=Установка игры «{#GameName} v{#GameVersion}» %nуспешно завершена!
rus.Fin2=%n%nДля ее запуска выберите соответствующий ярлык в меню "Пуск" %nили на Рабочем столе. %n%nНажмите стрелку вправо, чтобы выйти из программы установки.
rus.ExtractedFile=Извлекается файл:
rus.Extracted=Установка...
rus.Error=Ошибка распаковки!
rus.ElapsedTime=Прошло:
rus.RemainingTime=Осталось времени:
rus.rbc=Откат установки...
rus.p=Прогресс:
rus.exit=Выход
rus.Error1=Установка игры «{#GameName} v{#GameVersion}» не завершена.
rus.Error2=%nВо время установки произошла ошибка, пожалуйста отключите сторонние программы и повторите попытку установки. %n%nНажмите стрелку вправо, чтобы выйти из программы установки.
rus.DX=Обновить DirectX
rus.VC=Установить Microsoft Visual C++
rus.ready1=Программа установки готова начать установку
rus.ready12=«{#GameName} v{#GameVersion}»
rus.ready13=на Ваш компьютер.
rus.ready2=Информация:
rus.ready3=Игра будет установлена в
rus.ready4=Папка в меню пуск
rus.ready5=Будет создан ярлык на рабочем столе
rus.ready6=Ярлык на рабочем столе создан не будет
rus.doppo=Установить дополнительное программное обеспечение
rus.ready7=Будет установлено дополнительное программное обеспечение
rus.ready8=Дополнительное программное обеспечение установлено не будет


[Icons]
Name: {userdesktop}\{#GameName}; Filename: {app}\1.exe; WorkingDir: {app}; IconFilename: {app}\1.exe; Check: CheckError and IconsChecks
Name: {group}\{#GameName}; Filename: {app}\1.exe; WorkingDir: {app}; IconFilename: {app}\1.exe; Check: CheckError and IconsChecks
Name: {group}\Удалить игру; Filename: {uninstallexe}; Comment: Удалить игру; Check: CheckError and IconsChecks


[Run]
//Filename: {src}\Redist\DirectX\DirectX_June_x86.exe; WorkingDir: {src}\Redist\DirectX; Flags: waituntilterminated runminimized; Check: CheckError and DpoChecks
//Filename: {src}\Redist\C++\vcredist_2005_sp1_x86.exe; WorkingDir: {src}\Redist\C++\; Parameters: /Q; Flags: waituntilterminated; Check: not IsWin64 and CheckError and DpoChecks
//Filename: {src}\Redist\C++\vcredist_2008_sp1_x86.exe; WorkingDir: {src}\Redist\C++\; Parameters: /Q; Flags: waituntilterminated; Check: not IsWin64 and CheckError and DpoChecks
//Filename: {src}\Redist\OpenAL\OpenAL.exe; WorkingDir: {src}\Redist\OpenAL; Parameters: /q/s; Flags: waituntilterminated; Check: CheckError and DpoChecks
//Filename: {src}\Redist\Punkbuster\Punkbuster.exe; WorkingDir: {src}\Redist\Punkbuster; Parameters: /i --no-prompts; Flags: waituntilterminated; Check: CheckError and DpoChecks
//Filename: {src}\Redist\Rapture3D\Rapture3D.exe; WorkingDir: {src}\Redist\Rapture3D; Parameters: /silent; Flags: waituntilterminated; Check: CheckError and DpoChecks
//Filename: {src}\Redist\GFWL\gfwlivesetup.exe; WorkingDir: {src}\Redist\GFWL; Flags: waituntilterminated; Check: CheckError and DpoChecks
//Filename: msiexec; Parameters: "/i""{src}\Redist\PhysX\PhysX_9.11.1107.msi"; Flags: waituntilterminated; Check: CheckError and DpoChecks


[Tasks]
Name: VCCheck; Description: Установить Microsoft Visual C++ 2005 Redist

#ifdef Components
[Types]
Name: full; Description: Full installation; Flags: iscustom

[Components]
Name: games; Description: Выберите тип установки; Types: full; Flags: fixed
Name: games\games1; Description: Установить все; Flags: exclusive; Types: full
Name: games\games1\rus; Description: На Русском; Flags: exclusive
Name: games\games1\eng; Description: На Английском; Flags: exclusive
Name: games\games2; Description: Установить выборочно; Flags: exclusive; Types: full
Name: games\games2\game1; Description: Portal; Flags: exclusive; Types: full
Name: games\games2\game1\rus; Description: На Русском; Flags: exclusive
Name: games\games2\game1\eng; Description: на Английском; Flags: exclusive
Name: games\games2\game1\mod; Description: Portal Prelude; Types: full; Flags: dontinheritcheck checkablealone
Name: games\games2\game3; Description: Portal 2; Flags: exclusive; Types: full
Name: games\games2\game3\rus; Description: На Русском; Flags: exclusive
Name: games\games2\game3\eng; Description: На Английском; Flags: exclusive
#endif


[UninstallDelete]
Type: filesandordirs; Name: {app}
Type: filesandordirs; Name: {userdesktop}\{app}.ink


[Code]
const
  PCFonFLY = true;
  notPCFonFLY = false;
  VK_ESCAPE = 27;

  #ifdef Music
//  BtnClickEventID      = 1;
//  BtnMouseEnterEventID = 2;
  LanguageButtonCount  = 2;
  BASS_ACTIVE_PAUSED   = 3;
  BASS_SAMPLE_LOOP     = 4;
  WFDiskTimerID        = 1;
  WFSysReqTimerID      = 2;
  #endif

var
  Cancel: Integer;
  Error: Boolean;
  ISDoneError: Boolean;
  PCFVer: Double;
  edit, dir, group, work1, work2, work3, work4, work5, work6, work7, work8, workerror, tasks, ready: Longint;
  #ifdef Music
  mp3Name: string;
  MusicButton, mp3Handle, 
  #endif
  QuickLaunchCheck, DesktopCheck, NoIconsCheck, hCancelBtn, hNextBtn, hBackBtn, hDirBrowseBtn, hGroupBrowseBtn, Min, CloseBtn, Ok, nic, IconsCheck, CancelBtn, MinBtn, AboutBtn, dpo: HWND;
  WFButtonFont: TFont;
  UpdBtn, UpdTasks: TTimer;
  WelcomeLabel1, MainLabel, WelcomeLabel2, dir1, IconsCheckLbl, 
  NeedSpaceLabel, Dir1Label, FreeSpaceLabel, niclabel, doplbl, Pct, CurrFileName, Time1, Time2, i, dxlbl, vclbl, complbl, ready1, ready12, ready13, ready14, ready2, ready3, ready4, ready5, ready6, ready7, ready8, ready9, dpolbl: TLabel;
  FreeMB, TotalMB: Cardinal;
  SizeInt: Longint;
  Enabled: Boolean;
  LogoForm: TForm; closebnt: HWND;
  TimerID: LongWord;
  CurrentPicture:integer;
  PicList: TStringlist;
  imgpanel: tpanel;

var pb: TImgPB;

function ReleaseCapture: Longint; external 'ReleaseCapture@user32.dll stdcall';
type
  TCallback = function (OveralPct, CurrentPct: Integer; CurrentFile, TimeStr1, TimeStr2, TimeStr3: PAnsiChar): longword;
  TProc=procedure(HandleW, msg, idEvent, TimeSys: LongWord);

function GetKeyState(nVirtKey: Integer): ShortInt; external 'GetKeyState@user32 stdcall delayload';
function WrapCallback(callback: TCallback; paramcount: Integer): longword;external 'wrapcallback@files:ISDone.dll stdcall delayload';
function ISArcExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath, ExtractedPath: AnsiString; DeleteInFile: Boolean; Password, CfgFile, WorkPath: AnsiString; ExtractPCF: boolean):boolean; external 'ISArcExtract@files:ISDone.dll stdcall delayload';
function IS7ZipExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'IS7zipExtract@files:ISDone.dll stdcall delayload';
function ISRarExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'ISRarExtract@files:ISDone.dll stdcall delayload';
function ISPrecompExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISPrecompExtract@files:ISDone.dll stdcall delayload';
function ISSRepExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISSrepExtract@files:ISDone.dll stdcall delayload';
function ISxDeltaExtract(CurComponent:Cardinal; PctOfTotal:double; minRAM,maxRAM:integer; InName, DiffFile, OutFile: AnsiString; DeleteInFile, DeleteDiffFile:boolean):boolean; external 'ISxDeltaExtract@files:ISDone.dll stdcall delayload';
function ISPackZIP(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString;ComprLvl:integer; DeleteInFile:boolean):boolean; external 'ISPackZIP@files:ISDone.dll stdcall delayload';
function ShowChangeDiskWindow(Text, DefaultPath, SearchFile:AnsiString):boolean; external 'ShowChangeDiskWindow@files:ISDone.dll stdcall delayload';
function Exec2 (FileName, Param: PAnsiChar;Show:boolean):boolean; external 'Exec2@files:ISDone.dll stdcall delayload';
function ISFindFiles(CurComponent:Cardinal; FileMask:AnsiString; var ColFiles:integer):integer; external 'ISFindFiles@files:ISDone.dll stdcall delayload';
function ISPickFilename(FindHandle:integer; OutPath:AnsiString; var CurIndex:integer; DeleteInFile:boolean):boolean; external 'ISPickFilename@files:ISDone.dll stdcall delayload';
function ISGetName(TypeStr:integer):PAnsichar; external 'ISGetName@files:ISDone.dll stdcall delayload';
function ISFindFree(FindHandle:integer):boolean; external 'ISFindFree@files:ISDone.dll stdcall delayload';
function ISExec(CurComponent:Cardinal; PctOfTotal,SpecifiedProcessTime:double; ExeName,Parameters,TargetDir,OutputStr:AnsiString;Show:boolean):boolean; external 'ISExec@files:ISDone.dll stdcall delayload';
function SrepInit(TmpPath:PAnsiChar;VirtMem,MaxSave:Cardinal):boolean; external 'SrepInit@files:ISDone.dll stdcall delayload';
function PrecompInit(TmpPath:PAnsiChar;VirtMem:cardinal;PrecompVers:single):boolean; external 'PrecompInit@files:ISDone.dll stdcall delayload';
function FileSearchInit(RecursiveSubDir: Boolean): Boolean; external 'FileSearchInit@files:ISDone.dll stdcall delayload';
function ISDoneInit(RecordFileName:AnsiString; TimeType,Comp1,Comp2,Comp3:Cardinal; WinHandle, NeededMem:longint; callback:TCallback):boolean; external 'ISDoneInit@files:ISDone.dll stdcall';
function ISDoneStop: Boolean; external 'ISDoneStop@files:ISDone.dll stdcall';
function ChangeLanguage(Language: AnsiString): Boolean; external 'ChangeLanguage@files:ISDone.dll stdcall delayload';
function SuspendProc: Boolean; external 'SuspendProc@files:ISDone.dll stdcall';
function ResumeProc: Boolean; external 'ResumeProc@files:ISDone.dll stdcall';

function sndPlaySound(lpszSoundName: AnsiString; uFlags: cardinal):integer; external 'sndPlaySoundA@winmm.dll stdcall';

#ifdef Slides
function WrapTimerProc(callback:TProc; paramcount:integer):longword; external 'wrapcallback@files:innocallback.dll stdcall';
function SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc: LongWord): LongWord; external 'SetTimer@user32.dll stdcall';
function KillTimer(hWnd, nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall';
function GetSystemMetrics(nIndex:Integer):Integer; external 'GetSystemMetrics@user32.dll stdcall';
procedure InitializeSlideShow(Hwnd:Thandle; l,t,w,h:integer;Animate:boolean; Stretch:integer); external 'InitializeSlideShow@files:isslideshow.dll stdcall';
procedure DeinitializeSlideShow; external 'DeinitializeSlideShow@files:isslideshow.dll stdcall';
procedure ShowImage_(file_: PAnsiChar; effect_: longint); external 'ShowImage@files:isslideshow.dll stdcall';
#endif

procedure LabelOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(WizardForm.Handle,$0112,$F012,0)
end;
function ProgressCallback(OveralPct, CurrentPct: Integer; CurrentFile, TimeStr1, TimeStr2, TimeStr3: PAnsiChar): longword;
begin
  if (GetKeyState(VK_ESCAPE) < 0) then begin if MsgBox(SetupMessage(msgExitSetupMessage), mbConfirmation, MB_YESNO) = IDYES then Cancel:= 1; end;
  if OveralPct<=1000 then ImgPBSetPosition(pb, OveralPct);
  Pct.Caption := ExpandConstant('{cm:p} ')+IntToStr(OveralPct div 10)+'.'+chr(48 + OveralPct mod 10)+'%';
  CurrFileName.Caption:=ExpandConstant('{cm:ExtractedFile} ')+MinimizePathName(CurrentFile, CurrFileName.Font, CurrFileName.Width-ScaleX(100));
  Time1.Caption:=ExpandConstant('{cm:ElapsedTime} ')+TimeStr2;
  Time2.Caption:=ExpandConstant('{cm:RemainingTime} ')+TimeStr1;
  Result := Cancel;
end;

function IconsChecks: Boolean;
begin
  Result:= BtnGetChecked(IconsCheck);
end;

function DpoChecks: Boolean;
begin
  Result:= BtnGetChecked(dpo);
end;

procedure CancelButtonOnClick(h: HWND);
begin
  SuspendProc;
  if MsgBox(SetupMessage(msgExitSetupMessage), mbConfirmation, MB_YESNO) = IDYES then Cancel:= 1;
  ResumeProc;
end;

function cm(s: PAnsiChar): String;
begin
  Result:= ExpandConstant('{cm:'+s+'}');
end;
#ifdef Slides
procedure ShowImage(file: string);
begin
  if Pos(ExpandConstant('{tmp}\'), File)>0 then StringChange(File, ExpandConstant('{tmp}\'), '');
  if Pos('{tmp}\', File)>0 then StringChange(File, '{tmp}\', '');
  ExtractTemporaryFile(file);
  ShowImage_(ExpandConstant('{tmp}\'+File), 1);
  DeleteFile(ExpandConstant('{tmp}\'+File));
end;
#endif
procedure HideControls;
begin
  Pct.Hide; i.Hide; CurrFileName.Hide; Time1.Hide; Time2.Hide; ImgPBDelete(pb);
  if Error then begin i.Show; i.Caption:= cm('rbc'); end;
end;

procedure CreateControls;
begin
  Pct := TLabel.Create(WizardForm);
  with Pct do begin
    AutoSize:= false;
    WordWrap:= true;
    Font.Name:= 'Arial';
    Font.Size:= 8
    Font.Style := [fsBold];
    Transparent:= true;
    Font.Color:= $c1c1c1;
    Parent:= WizardForm;
    AutoSize:= false;
    Left:= ScaleX(200);
    Top:= ScaleY(420);
    Width:= ScaleX(180);
    Transparent:= true;
    BringToFront;
  end;

  CurrFileName := TLabel.Create(WizardForm);
  with CurrFileName do begin
    Parent:= WizardForm;
    AutoSize:= false;
    WordWrap:= true;
    Font.Name:= 'Arial';
    Font.Size:= 8
    Font.Style := [fsBold];
    Transparent:= true;
    Font.Color:= $c1c1c1;
    AutoSize:= false;
    Width:= ScaleX(300);
    Left:= ScaleX(430);
    Top:= ScaleY(420);
    Transparent:= true;
  end;

  Time1 := TLabel.Create(WizardForm);
  with Time1 do begin
    AutoSize:= false;
    WordWrap:= true;
    Font.Name:= 'Arial';
    Font.Size:= 8
    Font.Style := [fsBold];
    Transparent:= true;
    Font.Color:= $c1c1c1;
    Parent:= WizardForm;
    AutoSize:= false;
    Width:= ScaleX(200);
    Left:= ScaleX(200);
    Top:= ScaleY(395);
    Transparent:= true;
  end;

  Time2 := TLabel.Create(WizardForm);
  with Time2 do begin
    AutoSize:= false;
    WordWrap:= true;
    Font.Name:= 'Arial';
    Font.Size:= 8
    Font.Style := [fsBold];
    Transparent:= true;
    Font.Color:= $c1c1c1;
    Parent:= WizardForm;
    AutoSize:= false;
    Width:= Time1.Width+ScaleX(40);
    Left:= ScaleX(430);
    Top:= ScaleY(395);
    Transparent:= true;
  end;

  i := TLabel.Create(WizardForm);
  with i do begin
    AutoSize:= false;
    WordWrap:= true;
    Font.Name:= 'Arial';
    Font.Size:= 8
    Font.Style := [fsBold];
    Transparent:= true;
    Font.Color:= $c1c1c1;
    Parent:= WizardForm;
    AutoSize:= false;
    Width:= Time1.Width+ScaleX(40);
    Left:= ScaleX(350);
    Top:= ScaleY(360);
    Transparent:= true;
    Caption:= cm('Extracted');
  end;
end;

function CheckError: Boolean;
begin
  Result:= not Error;
end;
///

procedure FrameMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  WizardForm.SetFocus;
  ReleaseCapture;
  SendMessage(WizardForm.Handle,$0112,$F012,0);
end;

procedure LoadSkin(lpszPath: String; lpszIniFileName: String); external 'LoadSkin@files:isskin.dll stdcall delayload setuponly';
procedure UnloadSkin(); external 'UnloadSkin@files:isskin.dll stdcall delayload setuponly';

procedure LoadSkinU(lpszPath: String; lpszIniFileName: String); external 'LoadSkin@{tmp}\isskin.dll stdcall delayload uninstallonly';
procedure UnloadSkinU(); external 'UnloadSkin@{tmp}\isskin.dll stdcall delayload uninstallonly';


function InitializeSetup:boolean;
begin
  ExtractTemporaryFile('Skin.cjstyles');
  LoadSkin(ExpandConstant('{tmp}\Skin.cjstyles'), '');
  Result:= true
  if not FileExists(ExpandConstant('{tmp}\botva2.dll')) then ExtractTemporaryFile('botva2.dll');

  if not FileExists(ExpandConstant('{tmp}\b2p.dll')) then ExtractTemporaryFile('b2p.dll');
  if not FileExists(ExpandConstant('{tmp}\gdiplus.dll')) then ExtractTemporaryFile('gdiplus.dll');
  Result:=True;
end;


procedure CreateWizardImg;
begin
with WizardForm do begin
 BorderStyle := bsNone;
 ClientWidth:=ScaleX(754);
 ClientHeight:=ScaleY(525);
 InnerNotebook.Hide;
 OuterNotebook.Hide;
 Bevel.Hide;
 Center;
 Color:= $191919;
end;

#ifdef Music
ExtractTemporaryFile('MusicButton.png');
ExtractTemporaryFile('Music.mp3');
#endif


ExtractTemporaryFile('BASS.dll');

     #ifdef Slides
  imgPanel := TPanel.Create(WizardForm);
  imgPanel.Top := ScaleY(64);
  imgPanel.Left := ScaleX(9);
  imgPanel.Width := ScaleX(738);
  imgPanel.Height := ScaleY(260);
  imgPanel.BevelOuter := bvNone;
  imgPanel.Parent := WizardForm;
  InitializeSlideShow(imgPanel.Handle, ScaleX(0), ScaleY(0), ScaleX(738), ScaleY(260), true, 8);
  #endif

  #ifdef Components
  work1:= ImgLoad(WizardForm.handle, ExpandConstant('work1.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work2:= ImgLoad(WizardForm.handle, ExpandConstant('work2.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work3:= ImgLoad(WizardForm.handle, ExpandConstant('work5.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work4:= ImgLoad(WizardForm.handle, ExpandConstant('work3.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work5:= ImgLoad(WizardForm.handle, ExpandConstant('work4.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work6:= ImgLoad(WizardForm.handle, ExpandConstant('work6.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work7:= ImgLoad(WizardForm.handle, ExpandConstant('work7.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work8:= ImgLoad(WizardForm.handle, ExpandConstant('work8.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  workerror:= ImgLoad(WizardForm.handle, ExpandConstant('workerror.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  #else
  work1:= ImgLoad(WizardForm.handle, ExpandConstant('2work1.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work2:= ImgLoad(WizardForm.handle, ExpandConstant('2work2.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work3:= ImgLoad(WizardForm.handle, ExpandConstant('2work3.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work4:= ImgLoad(WizardForm.handle, ExpandConstant('2work4.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work5:= ImgLoad(WizardForm.handle, ExpandConstant('2work5.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work6:= ImgLoad(WizardForm.handle, ExpandConstant('2work6.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  work7:= ImgLoad(WizardForm.handle, ExpandConstant('2work7.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  workerror:= ImgLoad(WizardForm.handle, ExpandConstant('2workerror.jpg'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  #endif

  #ifdef Image
  ImgLoad(WizardForm.handle, ExpandConstant('fon.png'), ScaleX(15), ScaleY(64), ScaleX(738), ScaleY(260), True, True);
  #endif


  edit:= ImgLoad(WizardForm.handle, ExpandConstant('edit.png'), ScaleX(215), ScaleY(400), ScaleX(328), ScaleY(24), True, True);
  ready:= ImgLoad(WizardForm.handle, ExpandConstant('ready.png'), ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
  ImgApplyChanges(WizardForm.Handle);
end;

procedure SetStateNewButtons;
begin
  with WizardForm.BackButton do begin
    //BtnSetText(hBackBtn,PAnsiChar(Caption));
    //BtnSetVisibility(hBackBtn,Visible);
    //BtnSetEnabled(hBackBtn,Enabled);
    //BtnRefresh(hBackBtn);
  end;
  with WizardForm.NextButton do begin
    //BtnSetText(hNextBtn,PAnsiChar(Caption));
    //BtnSetVisibility(hNextBtn,Visible);
    //BtnSetEnabled(hNextBtn,Enabled);
    //BtnRefresh(hNextBtn);
  end;
  with WizardForm.CancelButton do begin
    //BtnSetText(hCancelBtn, PAnsiChar(cm('exit')));
    //BtnSetVisibility(hCancelBtn,Visible);
    //BtnSetEnabled(hCancelBtn,Enabled);
    //BtnRefresh(hCancelBtn);
  end;
  //BtnSetText(hDirBrowseBtn,PAnsiChar(WizardForm.DirBrowseButton.Caption));
  //BtnSetText(hGroupBrowseBtn,PAnsiChar(WizardForm.GroupBrowseButton.Caption));
end;

procedure WizardFormBtnClick(hBtn:HWND);
var
  Btn:TButton;
begin

  case hBtn of
    hCancelBtn: Btn:=WizardForm.CancelButton;
    hNextBtn: Btn:=WizardForm.NextButton;
    hBackBtn: Btn:=WizardForm.BackButton;
    hDirBrowseBtn: Btn:=WizardForm.DirBrowseButton;
    hGroupBrowseBtn: Btn:=WizardForm.GroupBrowseButton;
  end;
  Btn.OnClick(Btn);
  SetStateNewButtons;
  BtnRefresh(hBtn);
end;

procedure WFBtnEnter(hBtn:HWND);
begin

end;

procedure LogoClick(hBtn:HWND);
var
Check:boolean;
begin
Check:=BtnGetChecked(hBtn);

Check:=BtnGetChecked(hBtn);
BtnSetEnabled(hBackBtn, not Check);
BtnSetEnabled(hNextBtn, not Check);
BtnSetEnabled(hCancelBtn, not Check);
BtnSetEnabled(hDirBrowseBtn, not Check);
BtnSetEnabled(hGroupBrowseBtn, not Check);
BtnSetEnabled(QuickLaunchCheck, not Check);
BtnSetEnabled(DesktopCheck, not Check);
BtnSetEnabled(AboutBtn, not Check);       
BtnSetEnabled(CloseBtn, not Check);
BtnSetEnabled(Ok, not Check);
#ifdef Music
BtnSetEnabled(MusicButton, not Check);
#endif

BtnSetEnabled(NoIconsCheck, not Check);

#ifdef Music
BtnSetEnabled(MusicButton, not Check);
#endif

ImgApplyChanges(WizardForm.Handle);
end;

procedure TimerRefreshBtn(S: TObject);
begin
  BtnRefresh(hBackBtn);
  BtnRefresh(hNextBtn);
  BtnRefresh(hCancelBtn);
  BtnRefresh(hDirBrowseBtn);
  BtnRefresh(hGroupBrowseBtn);
  if BtnGetChecked(nic) then ready3.Caption:= cm('ready4') + ': ' + '-- --'
  else ready3.Caption:= cm('ready4') + ':  ' + WizardForm.GroupEdit.Text;
end;

procedure MinimizeBtnClick(h: HWND);
begin

  WizardForm.SetFocus;
  ReleaseCapture;
  SendMessage(WizardForm.Handle,$112,61472,0);
end;

procedure CancelBtnClick(h: HWND);
begin

  WizardForm.CancelButton.OnClick(WizardForm.CancelButton);
end;

procedure CancelBtnClick1(h: HWND);
begin
  LogoForm.Hide;
  BtnSetEnabled(AboutBtn, not LogoForm.Visible);
end;

procedure NoIconsClick(hBtn: HWND);
var
  Check:boolean;
begin

  Check:= BtnGetChecked(hBtn);
  BtnSetEnabled(hGroupBrowseBtn, not Check);
  WizardForm.GroupEdit.Enabled:= not Check;
  WizardForm.NoIconsCheck.Checked:= Check;
  WizardForm.GroupEdit.Color:= $000000;
end;

procedure DpoOnClick(hBtn: TObject);
begin

  BtnSetChecked(dpo, not BtnGetChecked(dpo));
  if BtnGetChecked(dpo) then dpolbl.Font.Color:= $c1c1c1 else dpolbl.Font.Color:= clgray;
end;

procedure DpoOnClick1(hBtn: HWND);
begin

  if BtnGetChecked(hBtn) then dpolbl.Font.Color:= $c1c1c1 else dpolbl.Font.Color:= clgray;
end;

procedure AboutClick(hBtn: HWND);
begin

  CloseBtn:= BtnCreate(LogoForm.Handle, ScaleX(715), ScaleY(5), ScaleX(30), ScaleY(30), ExpandConstant('exit.png'), 1, False);
  BtnSetEvent(CloseBtn, BtnClickEventID,WrapBtnCallback(@CancelBtnClick1, 1));

  Ok:=BtnCreate(LogoForm.Handle, ScaleX(15), ScaleY(465), ScaleX(40), ScaleY(40), ExpandConstant('back.png'), 1, False);
  BtnSetEvent(Ok,BtnClickEventID,WrapBtnCallback(@CancelBtnClick1,1));

  //BtnSetFont(ok,WFButtonFont.Handle);
  //BtnSetFontColor(ok, $c7c4c2, $eaeaea, $969696, clgray);
  //BtnSetText(ok,'OK');

  ImgLoad(LogoForm.Handle, 'aboutlog.png', 0, 0, ScaleX(754), ScaleY(525), true, true);
  LogoForm.Show;
  BtnSetEnabled(AboutBtn, not LogoForm.Visible);
  ImgApplyChanges(LogoForm.Handle);
end;

procedure IconsClick(hBtn: HWND);
var Check: Boolean;
begin

  if BtnGetChecked(IconsCheck) then IconsCheckLbl.Font.Color:= $c1c1c1 else IconsCheckLbl.Font.Color:= clgray;
end;

procedure nicOnClick(Sender: TObject);
begin

  BtnSetChecked(nic, not BtnGetChecked(nic));
  NoIconsClick(nic);
end;

procedure IconsOnClick(Sender: TObject);
begin

  BtnSetChecked(IconsCheck, not BtnGetChecked(IconsCheck));
  if BtnGetChecked(IconsCheck) then IconsCheckLbl.Font.Color:= $c1c1c1 else IconsCheckLbl.Font.Color:= clgray;
end;

procedure ButtonsTextures;
begin
  WFButtonFont:=TFont.Create;
  WFButtonFont.Name:= 'Tahoma';
  WFButtonFont.Size:= 9;
  WFButtonFont.Color:= $c7c4c2;

 with WizardForm.NextButton do begin
  hNextBtn:=BtnCreate(WizardForm.Handle, ScaleX(680), ScaleY(470), ScaleX(40), ScaleY(40), 'next.png', 5, False);
  BtnSetEvent(hNextBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
  BtnSetEvent(hNextBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
  BtnSetFont(hNextBtn,WFButtonFont.Handle);
  BtnSetFontColor(hNextBtn, $c7c4c2, $eaeaea, $969696, clgray);
  Width:=0;
  Height:=0;
 end;

 with WizardForm.BackButton do begin
  hBackBtn:=BtnCreate(WizardForm.Handle, ScaleX(570), ScaleY(470), ScaleX(40), ScaleY(40), ExpandConstant('back.png'), 1, False);
  BtnSetEvent(hBackBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
  BtnSetEvent(hBackBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
  BtnSetFont(hBackBtn,WFButtonFont.Handle);
  BtnSetFontColor(hBackBtn, $c7c4c2, $eaeaea, $969696, clgray);
  Width:=0;
  Height:=0;
 end;

 with WizardForm.CancelButton do begin
  hCancelBtn:=BtnCreate(WizardForm.Handle, ScaleX(625), ScaleY(470), ScaleX(39), ScaleY(39), ExpandConstant('cancel.png'), 1, False);
  BtnSetEvent(hCancelBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
  BtnSetEvent(hCancelBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
  BtnSetFont(hCancelBtn,WFButtonFont.Handle);
  BtnSetFontColor(hCancelBtn, $c7c4c2, $eaeaea, $969696, clgray);
  Width:=0;
  Height:=0;
 end;

  //CancelBtn:=BtnCreate(WizardForm.Handle, ScaleX(715), ScaleY(5), ScaleX(30), ScaleY(30), ExpandConstant('exit.png'), 1, False);
  //BtnSetEvent(CancelBtn, BtnClickEventID,WrapBtnCallback(@CancelBtnClick,1));
  //BtnSetEvent(CancelBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
  //BtnSetFont(CancelBtn, WFButtonFont.Handle);
  //BtnSetText(CancelBtn,'');

  MinBtn:=BtnCreate(WizardForm.Handle, ScaleX(715), ScaleY(5), ScaleX(30), ScaleY(30), ExpandConstant('min.png'), 1, false);
  BtnSetEvent(MinBtn, BtnClickEventID,WrapBtnCallback(@MinimizeBtnClick,1));
  BtnSetEvent(MinBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));

  AboutBtn:=BtnCreate(WizardForm.Handle, ScaleX(160), ScaleY(490), ScaleX(29), ScaleY(29), ExpandConstant('about.png'), 5, false);
  BtnSetChecked(AboutBtn, true);
  BtnSetEvent(AboutBtn, BtnClickEventID,WrapBtnCallback(@AboutClick,1));
  BtnSetEvent(AboutBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));

 with WizardForm.DirBrowseButton do begin
  hDirBrowseBtn:=BtnCreate(WizardForm.Handle, ScaleX(620), ScaleY(389), ScaleX(48), ScaleY(48), ExpandConstant('browse.png'), 1, False);
  BtnSetEvent(hDirBrowseBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
  BtnSetEvent(hDirBrowseBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
  BtnSetFont(hDirBrowseBtn,WFButtonFont.Handle);
  BtnSetFontColor(hDirBrowseBtn, $c7c4c2, $eaeaea, $969696, clgray);
  Width:=0;
  Height:=0;
 end;


 with WizardForm.GroupBrowseButton do begin
  hGroupBrowseBtn:=BtnCreate(WizardForm.Handle, ScaleX(620), ScaleY(389), ScaleX(48), ScaleY(48), ExpandConstant('browse.png'), 1, False);
  BtnSetEvent(hGroupBrowseBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
  BtnSetFont(hGroupBrowseBtn,WFButtonFont.Handle);
  BtnSetFontColor(hGroupBrowseBtn, $c7c4c2, $eaeaea, $969696, clgray);
  Width:=0;
  Height:=0;
 end;

  nic:=BtnCreate(WizardForm.Handle, ScaleX(210),ScaleY(425), ScaleX(30),ScaleY(30), ExpandConstant('cb.png'), 1, true);
  BtnSetChecked(nic, false);
  BtnSetEvent(nic,BtnClickEventID,WrapBtnCallback(@NoIconsClick,1));

  IconsCheck:=BtnCreate(WizardForm.Handle, ScaleX(200), ScaleY(400), ScaleX(30), ScaleY(30), ExpandConstant('cb.png'), 1, true);
  BtnSetChecked(IconsCheck, true);
  BtnSetEvent(IconsCheck, BtnClickEventID, WrapBtnCallback(@IconsClick, 1));

  dpo:=BtnCreate(WizardForm.Handle, ScaleX(200), ScaleY(430), ScaleX(30), ScaleY(30), ExpandConstant('cb.png'), 1, true);
  BtnSetChecked(dpo, true);
  BtnSetEvent(dpo, BtnClickEventID, WrapBtnCallback(@DpoOnClick1, 1));
end;

#ifdef Music
function BASS_Init(device: Integer; freq, flags: DWORD; win: hwnd; CLSID: Integer): Boolean; external 'BASS_Init@files:BASS.dll stdcall delayload';
function BASS_StreamCreateFile(mem: BOOL; f: PAnsiChar; offset: DWORD; length: DWORD; flags: DWORD): DWORD; external 'BASS_StreamCreateFile@files:BASS.dll stdcall delayload';
function BASS_Start: Boolean; external 'BASS_Start@files:BASS.dll stdcall delayload';
function BASS_ChannelPlay(handle: DWORD; restart: BOOL): Boolean; external 'BASS_ChannelPlay@files:BASS.dll stdcall delayload';
function BASS_ChannelIsActive(handle: DWORD): Integer; external 'BASS_ChannelIsActive@files:BASS.dll stdcall delayload';
function BASS_ChannelPause(handle: DWORD): Boolean; external 'BASS_ChannelPause@files:BASS.dll stdcall delayload';
function BASS_Pause: Boolean; external 'BASS_Pause@files:BASS.dll stdcall delayload';
function BASS_Stop: Boolean; external 'BASS_Stop@files:BASS.dll stdcall delayload';
function BASS_Free: Boolean; external 'BASS_Free@files:BASS.dll stdcall delayload';

procedure MusicButtonClick(hBtn:HWND);
begin

  if BtnGetChecked(MusicButton) then BASS_ChannelPause(mp3Handle)
    else if BASS_ChannelIsActive(mp3Handle)=BASS_ACTIVE_PAUSED then BASS_ChannelPlay(mp3Handle, False);
end;

procedure InsertMusic;
begin
  MusicButton:=BtnCreate(WizardForm.Handle,ScaleX(120),ScaleY(485),ScaleX(35),ScaleY(35),ExpandConstant('{tmp}\MusicButton.png'),4,True);
  BtnSetEvent(MusicButton,BtnClickEventID,WrapBtnCallback(@MusicButtonClick,1));
  BtnSetEvent(MusicButton,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
  BtnSetVisibility(MusicButton,True);
  BtnSetCursor(MusicButton,GetSysCursorHandle(32649));

  mp3Name:=ExpandConstant('{tmp}\Music.mp3');
  BASS_Init(-1,44100,0,0,0);
  mp3Handle:=BASS_StreamCreateFile(FALSE,PAnsiChar(mp3Name),0,0,BASS_SAMPLE_LOOP);
  BASS_Start;
  BASS_ChannelPlay(mp3Handle,False);
end;
#endif

Function NumToStr(Float: Extended): String;
Begin
  Result:= Format('%.2n', [Float]); StringChange(Result, ',', ',');
  while ((Result[Length(Result)] = '0') or (Result[Length(Result)] = ',')) and (Pos(',', Result) > 0) do
  SetLength(Result, Length(Result)-1);
End;

function CompareNum(FirstNum, SecondNum: Integer): Boolean;
begin
if FirstNum < SecondNum then Result:= False else Result:= True;
end;

Function MbOrTb(Byte: Extended): AnsiString;
begin
if Byte < 1024 then Result:= NumToStr(Byte) + ' MB' else
  if Byte/1024 < 1024 then Result:= NumToStr(round(Byte/1024*100)/100) + ' GB' else
     Result:= NumToStr(round((Byte/(1024*1024))*100)/100) + ' TB'
end;

procedure GetFreeSpaceCaption(Sender: TObject);
var
  Path: AnsiString; gsod: Boolean;
begin
  Path := ExtractFileDrive(WizardForm.DirEdit.Text);
  gsod:= GetSpaceOnDisk(Path, True, FreeMB, TotalMB);

  if gsod then begin
    FreeSpaceLabel.Caption:= ExpandConstant('{cm:FreeSpace} ') + ' ' + MbOrTB(FreeMb) + ' (' + IntToStr((FreeMb*100) div TotalMB) + ' %)';
    NeedSpaceLabel.Caption := ExpandConstant('{cm:NeedSpace} ') + ' ' + MbOrTb(SizeInt);
    BtnSetEnabled(hNextBtn, true);
    WizardForm.NextButton.Enabled:= true;
  end else

  if not gsod then begin
    FreeSpaceLabel.Caption:= ExpandConstant('{cm:FreeSpace} 0 MB');
    NeedSpaceLabel.Caption := ExpandConstant('{cm:NeedSpace} ') + MbOrTb(SizeInt)
    BtnSetEnabled(hNextBtn, false);
    WizardForm.NextButton.Enabled:= false;
    Exit;
  end;
  ready2.Caption:='Игра будет установлена в' + ':  ' + WizardForm.DirEdit.Text;
end;

procedure NeedSpace;
begin
SizeInt:= {#NeedSize};

FreeSpaceLabel := TLabel.Create(WizardForm);
FreeSpaceLabel.SetBounds(ScaleX(215), ScaleY(435), ScaleX(209), ScaleY(13))
FreeSpaceLabel.Parent := WizardForm;
FreeSpaceLabel.Font.Name:='Arial';
FreeSpaceLabel.Font.Size:= 8;
FreeSpaceLabel.Font.Color:= $c1c1c1;
FreeSpaceLabel.Transparent:=true;
FreeSpaceLabel.Font.Style := [fsBold];

NeedSpaceLabel := TLabel.Create(WizardForm);
NeedSpaceLabel.SetBounds(ScaleX(215), ScaleY(455), ScaleX(209), ScaleY(13))
NeedSpaceLabel.Parent := WizardForm;
NeedSpaceLabel.Font.Name:='Arial';
NeedSpaceLabel.Font.Size:= 8;
NeedSpaceLabel.Font.Color:= $c1c1c1;
NeedSpaceLabel.Transparent:=true;
NeedSpaceLabel.Font.Style:= [fsBold];

WizardForm.DirEdit.OnChange:= @GetFreeSpaceCaption;
WizardForm.DirEdit.Text:= WizardForm.DirEdit.Text + #0;
end;

procedure CreateLabel;
begin
  UpdBtn:= TTimer.Create(nil);
  UpdBtn.Interval:= 1;
  UpdBtn.OnTimer:= @TimerRefreshBtn;

MainLabel:= TLabel.Create(WizardForm);
with MainLabel do
begin
  Left:= ScaleX(0);
  Top:= ScaleY(7);
  Width:= ScaleX(752);
  Height:= ScaleY(34);
  AutoSize:= false;
  Transparent:= true;
  WordWrap:= true;
  Font.Name:='Corbel';
  Alignment:= taCenter;
  Font.Size:= 10;
  Font.Color:= $aeacac;
  Font.Style := [fsBold];
  Parent:= WizardForm;
  OnMouseDown:=@LabelOnMouseDown;
  Caption:= WizardForm.Caption;
end;

WelcomeLabel1:= TLabel.Create(WizardForm);
with WelcomeLabel1 do
begin
  Left:= ScaleX(200);
  Top:= ScaleY(350);
  Width:= ScaleX(450);
  Height:= ScaleY(65);
  AutoSize:= false;
  Transparent:= true;
  WordWrap:= true;
  Font.Name:='Arial';
  Font.Size:= 10;
  Font.Color:=$aeacac;
  Font.Style := [fsBold];
  Alignment := taCenter;
  Parent:= WizardForm;
  Caption:= cm('Welcome1');
end;

WelcomeLabel2:=TLabel.Create(WizardForm);
with WelcomeLabel2 do
begin
  Left:= ScaleX(200);
  Top:= ScaleY(390);;
  Width:= ScaleX(450);
  Height:= ScaleY(200);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:='Arial';
  Font.Size:= 9;
  Font.Color:=$aeacac;
  Alignment := taCenter;
  Font.Style := [fsBold];
  Transparent:= true;
  Parent:= WizardForm;
  Caption:= cm('Welcome2');
end;

 with WizardForm.DirEdit do begin
  Parent:= WizardForm;
  Left:= ScaleX(218);
  Top:= ScaleY(404);
  BorderStyle:= bsNone;
  Color:= $000000;
  Font.Name:= 'Arial';
  Font.Size:= 9;
  Font.Color:= $aeacac;
  Width:= ScaleX(324);
  Height:= ScaleY(18);
  end;

 with WizardForm.GroupEdit do begin
  Parent:= WizardForm;
  Left:= ScaleX(218);
  Top:= ScaleY(404);
  BorderStyle:= bsNone;
  Color:= $000000;
  Font.Name:= 'Arial';
  Font.Size:= 9;
  Font.Color:= $aeacac;
  Width:= ScaleX(324);
  Height:= ScaleY(18);
  end;

dir1:=TLabel.Create(WizardForm);
with dir1 do
begin
  Left:= ScaleX(400);
  Top:= ScaleY(500);
  Width:= ScaleX(450);
  Height:= ScaleY(200);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:= $aeacac;
  Parent:= WizardForm;
  Caption:= cm('dir1');
end;


ExtractTemporaryFile('t&c.bmp');
with WizardForm.ComponentsList do begin
  Left:= ScaleX(450);
  Top:= ScaleY(350);
  Width:= ScaleX(275);
  Height:= ScaleY(110);
  Color:= WizardForm.Color;
  Font.Color:= clwhite;
  Font.Style:= [fsBold];
  Font.Size:= 8;
  Font.Name:= 'Arial'
  BorderStyle:= bsSingle;
  Font.Color:= $c1c1c1;
  LoadBGBmpFromFile(ExpandConstant('{tmp}\t&c.bmp'), 0, 0);
  Parent:= WizardForm;
end;

complbl:=TLabel.Create(WizardForm);
with complbl do
begin
  Left:= ScaleX(20);
  Top:= ScaleY(383);
  Width:= ScaleX(450);
  Height:= ScaleY(200);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 9;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('comp');
end;

niclabel:=TLabel.Create(WizardForm);
with niclabel do
begin
  Left:= ScaleX(245);
  Top:= ScaleY(432);
  Width:= ScaleX(250);
  Height:= ScaleY(16);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$aeacac;
  Parent:= WizardForm;
  Caption:= cm('nic');
  OnClick:= @nicOnClick;
end;

doplbl:=TLabel.Create(WizardForm);
with doplbl do
begin
  Left:= ScaleX(215);
  Top:= ScaleY(368);
  Width:= ScaleX(450);
  Height:= ScaleY(200);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('dop');
end;

IconsCheckLbl:=TLabel.Create(WizardForm);
with IconsCheckLbl do
begin
  Left:= ScaleX(230);
  Top:= ScaleY(407);
  Width:= ScaleX(250);
  Height:= ScaleY(16);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ic');
  OnClick:= @IconsOnClick;
end;

dpolbl:=TLabel.Create(WizardForm);
with dpolbl do
begin
  Left:= ScaleX(230);
  Top:= ScaleY(438);
  Width:= ScaleX(350);
  Height:= ScaleY(16);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('doppo');
  OnClick:= @DpoOnClick;
end;

DeleteFile(ExpandConstant('{tmp}\t&c.bmp'));
ready1:=TLabel.Create(WizardForm);
with ready1 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top});
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready1')+cm('ready12')+cm('ready13')+#10#13;
end;

ready14:=TLabel.Create(WizardForm);
with ready14 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top}+({#mnojitel}*15));
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready2');
end;

ready2:=TLabel.Create(WizardForm);
with ready2 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top}+(({#mnojitel}+1)*15));
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready3');
end;

ready3:=TLabel.Create(WizardForm);
with ready3 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top}+(({#mnojitel}+2)*15));
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready4');
end;

ready4:=TLabel.Create(WizardForm);
with ready4 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top}+(({#mnojitel}+3)*15));
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready5');
end;

ready5:=TLabel.Create(WizardForm);
with ready5 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top}+(({#mnojitel}+3)*15));
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready6');
end;

ready6:=TLabel.Create(WizardForm);
with ready6 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top}+(({#mnojitel}+4)*15));
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready7');
end;

ready7:=TLabel.Create(WizardForm);
with ready7 do
begin
  Left:= ScaleX(190);
  Top:= ScaleY({#Top}+(({#mnojitel}+4)*15));
  Width:= ScaleX(489);
  Height:= ScaleY(85);
  AutoSize:= false;
  WordWrap:= true;
  Font.Name:= 'Arial';
  Font.Size:= 8;
  Font.Style := [fsBold];
  Transparent:= true;
  Font.Color:=$c1c1c1;
  Parent:= WizardForm;
  Caption:= cm('ready8');
end;

  LogoForm:= TForm.Create(WizardForm);
  LogoForm.BorderStyle:= bsNone;
  LogoForm.SetBounds(ScaleX(WizardForm.Width div 6 - 125), ScaleY(0), ScaleX(754), ScaleY(525));
  LogoForm.Parent:= WizardForm;
end;

#ifdef Splash
procedure ShowSplashScreen(p1:HWND;p2:string;p3,p4,p5,p6,p7:integer;p8:boolean;p9:Cardinal;p10:integer); external 'ShowSplashScreen@files:isgsg.dll stdcall delayload';
#endif


procedure InitializeWizard;
begin
  #ifdef Splash
  ExtractTemporaryFile('splash.png');
  ShowSplashScreen(WizardForm.Handle,ExpandConstant('{tmp}')+'\splash.png',1000,3000,1000,0,255,False,$FFFFFF,10);
  #endif
  Enabled:= true;
  CreateWizardImg;
  CreateLabel;
  ButtonsTextures;
  
  #ifdef Music
  InsertMusic
  #endif
  
  NeedSpace;

  #ifdef Slides
  #ifdef Components
  PicList:=tstringlist.Create;
  ExtractTemporaryFile('fon1.jpg');
  ExtractTemporaryFile('fon2.jpg');
  ExtractTemporaryFile('fon3.jpg');
  ExtractTemporaryFile('fon4.jpg');
  ExtractTemporaryFile('fon5.jpg');
  ExtractTemporaryFile('fon6.jpg');
  ExtractTemporaryFile('fon7.jpg');
  ExtractTemporaryFile('fon8.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon1.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon2.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon3.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon4.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon5.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon6.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon7.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon8.jpg');
  #else
  PicList:=tstringlist.Create;
  ExtractTemporaryFile('fon1.jpg');
  ExtractTemporaryFile('fon2.jpg');
  ExtractTemporaryFile('fon3.jpg');
  ExtractTemporaryFile('fon4.jpg');
  ExtractTemporaryFile('fon5.jpg');
  ExtractTemporaryFile('fon6.jpg');
  ExtractTemporaryFile('fon7.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon1.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon2.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon3.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon4.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon5.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon6.jpg');
  piclist.add(ExpandConstant('{tmp}') + '\fon7.jpg');
  #endif
  #endif
end;

#ifdef Slides
procedure OnTimer(HandleW, msg, idEvent, TimeSys: LongWord);
begin
 CurrentPicture:=CurrentPicture+1;
 if CurrentPicture=piclist.count+1 then CurrentPicture:=1;
 ShowImage(piclist.strings[CurrentPicture - 1]);
end;
#endif

procedure CurPageChanged(CurPageID: Integer);
#ifdef Components
begin
  SetStateNewButtons;

  WelcomeLabel1.Hide;
  WelcomeLabel2.Hide;
  BtnSetVisibility(hDirBrowseBtn, false);
  BtnSetVisibility(hGroupBrowseBtn, false);
  BtnSetVisibility(nic, false);
  ImgSetVisibility(edit, false);
  ImgSetVisibility(dir, false);
  ImgSetVisibility(group, false);
  ImgSetVisibility(work1, false);
  ImgSetVisibility(work2, false);
  ImgSetVisibility(work3, false);
  ImgSetVisibility(work4, false);
  ImgSetVisibility(work5, false);
  ImgSetVisibility(work6, false);
  ImgSetVisibility(work7, false);
  ImgSetVisibility(ready, false);


  ImgSetVisibility(work8, false);

  ImgSetVisibility(workerror, false);
  ImgSetVisibility(tasks, false);
  WizardForm.DirEdit.Hide;
  WizardForm.GroupEdit.Hide;
  dir1.Hide;
  FreeSpaceLabel.Hide;
  NeedSpaceLabel.Hide;
  niclabel.Hide;
  WizardForm.ComponentsList.Hide;
  BtnSetVisibility(IconsCheck, false);
  doplbl.Hide;
  IconsCheckLbl.Hide;
  WizardForm.TasksList.Hide;
  complbl.Hide;
  ready1.Hide;
  ready14.Hide;
  ready2.Hide;
  ready3.Hide;
  ready4.Hide;
  ready5.Hide;
  ready6.Hide;
  ready7.Hide;
  BtnSetVisibility(dpo, false);
  dpolbl.Hide;

  if CurPageID = wpWelcome then
   begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon1.jpg'))
    #endif

    LogoForm.Hide;
    WelcomeLabel1.Show;
    WelcomeLabel2.Show;
    ImgSetVisibility(work1, true);
    CancelBtnClick1(0);
   end;

  if CurPageID = wpSelectDir then
   begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon2.jpg'))
    #endif

    BtnSetVisibility(hDirBrowseBtn, true);
    ImgSetVisibility(edit, true);
    ImgSetVisibility(dir, true);
    WizardForm.DirEdit.Show;
    FreeSpaceLabel.Show;
    NeedSpaceLabel.Show;
    dir1.Show;
    dir1.Caption:=  cm('dir1');
    dir1.Left:= ScaleX(220);
    dir1.Top:= ScaleX(363);
    ImgSetVisibility(work2, true);
    LogoForm.Hide;
    CancelBtnClick1(0);
   end;

   if CurPageID = wpSelectProgramGroup then
   begin

    #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon4.jpg'))
    #endif

     BtnSetVisibility(IconsCheck, true);
     doplbl.Show;
     IconsCheckLbl.Show;

     ImgSetVisibility(work5, true);

     ImgSetVisibility(tasks, true);
     BtnSetVisibility(dpo, true);
     dpolbl.Show;
     LogoForm.Hide;
     CancelBtnClick1(0);
   end;

  if CurPageID = wpSelectTasks then
   begin

    #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon5.jpg'))
    #endif

    WizardForm.ComponentsList.Show;
    WizardForm.ComponentsList.DragMode;
    WizardForm.ComponentsList.Dragging;
    ImgSetVisibility(work3, true);
    complbl.Show;
    LogoForm.Hide;
    CancelBtnClick1(0);
   end;

  if CurPageID = wpSelectComponents   then
   begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon3.jpg'))
    #endif

    BtnSetVisibility(hGroupBrowseBtn, true);
    ImgSetVisibility(edit, true);
    WizardForm.GroupEdit.Show;
    ImgSetVisibility(group, true);
    dir1.Caption:=  cm('group1');
    dir1.Left:= ScaleX(220);
    dir1.Top:= ScaleX(363);
    dir1.Show;
    BtnSetVisibility(nic, true);
    niclabel.Show;

    ImgSetVisibility(work4, true);

    LogoForm.Hide;
    CancelBtnClick1(0);
   end;


  if CurPageID = wpReady then
  begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon6.jpg'))
    #endif

   ImgSetVisibility(work6, true);

   ready1.Show;
   ready14.Show;
   ready2.Show;
   ready3.Show;
   if BtnGetChecked(IconsCheck) then begin ready5.Hide; ready4.Show end else begin ready4.Hide; ready5.Show; end;
   if BtnGetChecked(dpo) then begin ready7.Hide; ready6.Show end else begin ready6.Hide; ready7.Show; end;
   LogoForm.Hide;
   CancelBtnClick1(0);
   ImgSetVisibility(ready, true);
  end;


  if CurPageID = wpInstalling then
  begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon7.jpg'))
    CurrentPicture:=1;
    TimerID:=SetTimer(0, 0, 10000, WrapTimerProc(@OnTimer, 4)); //задержка 10000 мс (10 секунд)
    #endif


   ImgSetVisibility(work7, true);

   LogoForm.Hide;
   CancelBtnClick1(0);
  end;

  if CurPageID = wpFinished then
  begin

    #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon8.jpg'))
    #endif

   ImgSetVisibility(work8, true);

    WelcomeLabel1.Caption:= cm('Fin1');
    WelcomeLabel2.Caption:= cm('Fin2');
    WelcomeLabel2.Top:= WelcomeLabel2.Top-ScaleY(23);
    WelcomeLabel1.Show;
    WelcomeLabel2.Show;
    i.Hide;
    LogoForm.Hide;
    CancelBtnClick1(0);
  end;

  if (CurPageID = wpFinished) and Error then
  begin
  WelcomeLabel1.Caption:= cm('Error1');
  WelcomeLabel2.Caption:= cm('Error2')
  ImgSetVisibility(workerror, true);
  LogoForm.Hide;
  CancelBtnClick1(0);
  end;
  ImgApplyChanges(WizardForm.Handle);
end;
#else
begin
  SetStateNewButtons;

  WelcomeLabel1.Hide;
  WelcomeLabel2.Hide;
  BtnSetVisibility(hDirBrowseBtn, false);
  BtnSetVisibility(hGroupBrowseBtn, false);
  BtnSetVisibility(nic, false);
  ImgSetVisibility(edit, false);
  ImgSetVisibility(dir, false);
  ImgSetVisibility(group, false);
  ImgSetVisibility(work1, false);
  ImgSetVisibility(work2, false);
  ImgSetVisibility(work3, false);
  ImgSetVisibility(work4, false);
  ImgSetVisibility(work5, false);
  ImgSetVisibility(work6, false);
  ImgSetVisibility(work7, false);
  ImgSetVisibility(ready, false);

  ImgSetVisibility(workerror, false);
  ImgSetVisibility(tasks, false);
  WizardForm.DirEdit.Hide;
  WizardForm.GroupEdit.Hide;
  dir1.Hide;
  FreeSpaceLabel.Hide;
  NeedSpaceLabel.Hide;
  niclabel.Hide;
  WizardForm.ComponentsList.Hide;
  BtnSetVisibility(IconsCheck, false);
  doplbl.Hide;
  IconsCheckLbl.Hide;
  WizardForm.TasksList.Hide;
  complbl.Hide;
  ready1.Hide;
  ready14.Hide;
  ready2.Hide;
  ready3.Hide;
  ready4.Hide;
  ready5.Hide;
  ready6.Hide;
  ready7.Hide;
  BtnSetVisibility(dpo, false);
  dpolbl.Hide;

  if CurPageID = wpWelcome then
   begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon1.jpg'))
    #endif

    LogoForm.Hide;
    WelcomeLabel1.Show;
    WelcomeLabel2.Show;
    ImgSetVisibility(work1, true);
    CancelBtnClick1(0);
   end;

  if CurPageID = wpSelectDir then
   begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon2.jpg'))
    #endif

    BtnSetVisibility(hDirBrowseBtn, true);
    ImgSetVisibility(edit, true);
    ImgSetVisibility(dir, true);
    WizardForm.DirEdit.Show;
    FreeSpaceLabel.Show;
    NeedSpaceLabel.Show;
    dir1.Show;
    dir1.Caption:=  cm('dir1');
    dir1.Left:= ScaleX(220);
    dir1.Top:= ScaleX(363);
    ImgSetVisibility(work2, true);
    LogoForm.Hide;
    CancelBtnClick1(0);
   end;

  if CurPageID = wpSelectProgramGroup then
   begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon3.jpg'))
    #endif

    BtnSetVisibility(hGroupBrowseBtn, true);
    ImgSetVisibility(edit, true);
    WizardForm.GroupEdit.Show;
    ImgSetVisibility(group, true);
    dir1.Caption:=  cm('group1');
    dir1.Left:= ScaleX(220);
    dir1.Top:= ScaleX(363);
    dir1.Show;
    BtnSetVisibility(nic, true);
    niclabel.Show;

    ImgSetVisibility(work3, true);

    LogoForm.Hide;
    CancelBtnClick1(0);
   end;

  if CurPageID = wpSelectTasks then
   begin

    #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon4.jpg'))
    #endif

     BtnSetVisibility(IconsCheck, true);
     doplbl.Show;
     IconsCheckLbl.Show;

     ImgSetVisibility(work4, true);

     ImgSetVisibility(tasks, true);
     BtnSetVisibility(dpo, true);
     dpolbl.Show;
     LogoForm.Hide;
     CancelBtnClick1(0);
   end;

  if CurPageID = wpReady then
  begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon5.jpg'))
    #endif

   ImgSetVisibility(work5, true);

   ready1.Show;
   ready14.Show;
   ready2.Show;
   ready3.Show;
   if BtnGetChecked(IconsCheck) then begin ready5.Hide; ready4.Show end else begin ready4.Hide; ready5.Show; end;
   if BtnGetChecked(dpo) then begin ready7.Hide; ready6.Show end else begin ready6.Hide; ready7.Show; end;
   LogoForm.Hide;
   CancelBtnClick1(0);
   ImgSetVisibility(ready, true);
  end;

  if CurPageID = wpInstalling then
  begin

   #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon6.jpg'))
    CurrentPicture:=1;
    TimerID:=SetTimer(0, 0, 10000, WrapTimerProc(@OnTimer, 4));
    #endif

   ImgSetVisibility(work6, true);

   LogoForm.Hide;
   CancelBtnClick1(0);
  end;

  if CurPageID = wpFinished then
  begin

    #ifdef Slides
    ShowImage(ExpandConstant('{tmp}\fon7.jpg'))
    #endif

   ImgSetVisibility(work7, true);

    WelcomeLabel1.Caption:= cm('Fin1');
    WelcomeLabel2.Caption:= cm('Fin2');
    WelcomeLabel2.Top:= WelcomeLabel2.Top-ScaleY(23);
    WelcomeLabel1.Show;
    WelcomeLabel2.Show;
    i.Hide;
    LogoForm.Hide;
    CancelBtnClick1(0);
  end;

  if (CurPageID = wpFinished) and Error then
  begin
  WelcomeLabel1.Caption:= cm('Error1');
  WelcomeLabel2.Caption:= cm('Error2')
  ImgSetVisibility(workerror, true);
  LogoForm.Hide;
  CancelBtnClick1(0);
  end;
  ImgApplyChanges(WizardForm.Handle);
end;
#endif

procedure CurStepChanged(CurStep: TSetupStep);
var
  Comps1, Comps2, Comps3, TmpValue: Cardinal;
  FindHandle1, ColFiles1, CurIndex1: Integer;
  ExecError: Boolean;
  InFilePath, OutFilePath, OutFileName: PAnsiChar;
begin
  if CurStep = ssInstall then begin
    CreateControls;
    pb:= ImgPBCreate(WizardForm.Handle, 'pb1.png', 'pb.png', ScaleX(160), ScaleY(440), ScaleX(540), ScaleY(25));
    BtnSetEvent(hCancelBtn, BtnClickEventID, WrapBtnCallback(@CancelButtonOnClick, 1));
    WizardForm.StatusLabel.Caption:=ExpandConstant('{cm:Extracted}');
    Cancel:=0;

ExtractTemporaryFile('unarc.dll');

#ifdef PrecompInside
ExtractTemporaryFile('CLS-precomp.dll');
ExtractTemporaryFile('packjpg_dll.dll');
ExtractTemporaryFile('packjpg_dll1.dll');
ExtractTemporaryFile('precomp.exe');
ExtractTemporaryFile('zlib1.dll');
#endif
#ifdef SrepInside
ExtractTemporaryFile('CLS-srep.dll');
#endif
#ifdef facompress
    ExtractTemporaryFile('facompress.dll');
#endif

#ifdef records
    ExtractTemporaryFile('records.inf');
#endif

#ifdef precomp
  #if precomp == "0.38"
    ExtractTemporaryFile('precomp038.exe');
  #else
    #if precomp == "0.4"
      ExtractTemporaryFile('precomp040.exe');
    #else
      #if precomp == "0.41"
        ExtractTemporaryFile('precomp041.exe');
      #else
        #if precomp == "0.42"
          ExtractTemporaryFile('precomp042.exe');
        #else
          ExtractTemporaryFile('precomp038.exe');
          ExtractTemporaryFile('precomp040.exe');
          ExtractTemporaryFile('precomp041.exe');
          ExtractTemporaryFile('precomp042.exe');
        #endif
      #endif
    #endif
  #endif
#endif

#ifdef unrar
    ExtractTemporaryFile('Unrar.dll');
#endif

#ifdef XDelta
    ExtractTemporaryFile('XDelta3.dll');
#endif

#ifdef PackZIP
    ExtractTemporaryFile('7z.dll');
    ExtractTemporaryFile('PackZIP.exe');
#endif

    Comps1:=0; Comps2:=0; Comps3:=0;

#ifdef Components
    TmpValue:=1;
    if IsComponentSelected('text\rus') then Comps1:=Comps1+TmpValue;
    TmpValue:=TmpValue*2;
    if IsComponentSelected('text\eng') then Comps1:=Comps1+TmpValue;
    TmpValue:=TmpValue*2;
    if IsComponentSelected('voice\rus') then Comps1:=Comps1+TmpValue;
    TmpValue:=TmpValue*2;
    if IsComponentSelected('voice\eng') then Comps1:=Comps1+TmpValue;

#endif

#ifdef precomp
  PCFVer:={#precomp};
#else
  PCFVer:=0;
#endif

    Error:=true;
    if ISDoneInit(ExpandConstant('Files\ISDone\IsDone\records\records.inf'), $F777, Comps1,Comps2,Comps3, MainForm.Handle, {#NeedMem}, @ProgressCallback) then begin
      repeat

        if not SrepInit('',256,0) then break;
        if not PrecompInit('',256,PCFVer) then break;
        if not FileSearchInit(true) then break;

        if not ISArcExtract    ( 0, 35, ExpandConstant('{src}\1.bin'), ExpandConstant('{app}\'), '', false, '', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\'), notPCFonFLY{PCFonFLY}) then break;
        if not ISSRepExtract   ( 0, 35, ExpandConstant('{app}\1.srp'),ExpandConstant('{app}\1.arc'), true) then break;
        if not ISArcExtract    ( 0, 30, ExpandConstant('{app}\1.arc'), ExpandConstant('{app}\'), '', true, '', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\'), notPCFonFLY{PCFonFLY}) then break;

        
//    далее находятся закомментированые примеры различных функций распаковки (чтобы каждый раз не лазить в справку за примерами)
(*
        if not ISArcExtract    ( 0, 0, ExpandConstant('{src}\arc.arc'), ExpandConstant('{app}\'), '', false, '', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\'), notPCFonFLY{PCFonFLY}) then break;
        if not IS7ZipExtract   ( 0, 0, ExpandConstant('{src}\CODMW2.7z'), ExpandConstant('{app}\data1'), false, '') then break;
        if not ISRarExtract    ( 0, 0, ExpandConstant('{src}\data_*.rar'), ExpandConstant('{app}'), false, '') then break;
        if not ISSRepExtract   ( 0, 0, ExpandConstant('{app}\data1024_1024.srep'),ExpandConstant('{app}\data1024.arc'), true) then break;
        if not ISPrecompExtract( 0, 0, ExpandConstant('{app}\data.pcf'),    ExpandConstant('{app}\data.7z'), true) then break;
        if not ISxDeltaExtract ( 0, 0, 0, 640, ExpandConstant('{app}\in.pcf'), ExpandConstant('{app}\*.diff'),   ExpandConstant('{app}\out.dat'), false) then break;
        if not ISPackZIP       ( 0, 0, ExpandConstant('{app}\1a1\*'), ExpandConstant('{app}\1a1.pak'), 2, false ) then break;
        if not ISExec          ( 0, 0, 0, ExpandConstant('{tmp}\Arc.exe'), ExpandConstant('x -o+ "{src}\001.arc" "{app}\"'), ExpandConstant('{tmp}'), '...',false) then break;
        if not ShowChangeDiskWindow ('Пожалуйста, вставьте второй диск и дождитесь его инициализации.', ExpandConstant('{src}'),'CODMW_2.arc') then break;

*)

        Error:=false;
      until true;
      ISDoneStop;
    end;
    HideControls;
  end;
  if (CurStep=ssPostInstall) and Error then begin
    Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', false);
  end;

 #ifdef Slides
 KillTimer(0, TimerID);
 #endif
 
end;

procedure DeinitializeSetup;
begin
  if Enabled then gdipShutdown;
  UnloadSkin();
  #ifdef Music
  BASS_Stop;
  BASS_Free;
  #endif
  #ifdef Slides
  DeinitializeSlideShow;
 #endif
end;