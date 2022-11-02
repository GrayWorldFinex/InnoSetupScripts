
; Requires: - Inno Setup (Enhanced) build 121216 (restools)
;           - Inno Setup Compiler (Enhanced) build 121002 (restools)
;

#define GameName     "GRIDBERD"
#define PathGameName "GRIDBERD"
#define GameSize     "4616"

[Setup]
AppName={#GameName}
AppVerName={#GameName}
DefaultDirName={code:DefDirWiz}
DefaultGroupName={#GameName}
Compression=lzma
SolidCompression=true
InternalCompressLevel=max
OutputDir=.\
OutputBaseFilename=setup
WizardImageFile=include\gfx\logos\logo1\logo.bmp
SetupIconFile=include\gfx\icon.ico
AllowNoIcons=yes
Uninstallable=Unnin

[Files]
//Source: "{userappdata}\Pro Cycling Manager 2015\Users.cdb"; DestDir: "{userappdata}\Pro Cycling Manager 2015"; Flags: ignoreversion
//Source: "{userappdata}\Pro Cycling Manager 2015\Users.cdb~"; DestDir: "{userappdata}\Pro Cycling Manager 2015"; Flags: ignoreversion
//Source: "{userappdata}\Pro Cycling Manager 2015\Config\lang.xml"; DestDir: "{userappdata}\Pro Cycling Manager 2015\Config"; Flags: ignoreversion
//Source: "{userappdata}\Pro Cycling Manager 2015\Config\Options.xml"; DestDir: "{userappdata}\Pro Cycling Manager 2015\Config"; Flags: ignoreversion
//Source: "{userappdata}\Pro Cycling Manager 2015\Users\CODEX\Tutorials.xml"; DestDir: "{userappdata}\Pro Cycling Manager 2015\Users\CODEX"; Flags: ignoreversion
Source: "include\dll\ISDone\ISDone.dll"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\english.ini"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\style\Style.vsf"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\dll\VclStylesinnoMOD\VclStylesinno.dll"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\dll\BASS\BASS.dll"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\dll\BASSProtect\bp.dll"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\dll\WinTB\wintb.dll"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\music\Battle Squadron RMX\Music.ogg"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\Play1.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\Play2.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\Play3.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\Pause1.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\Pause2.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\Pause3.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\trackBkg.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\trackbtn1.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\trackbtn2.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\gfx\buttons\trackbtn3.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "include\dll\unarc.dll"; DestDir: "{tmp}"; Flags: dontcopy

[Dirs]
//Name: "{userappdata}\Pro Cycling Manager 2015\Cache\";
//Name: "{userappdata}\Pro Cycling Manager 2015\History\";
//Name: "{userappdata}\Pro Cycling Manager 2015\Temp\";

[Registry]
//Root: HKCU; Subkey: "Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers"; ValueName: "{app}\XFRGB\BIN64\XFRGRIDBERD_Launcher.exe"; ValueType: String; ValueData: "RUNASADMIN"; Check: "CheckError"; Flags: uninsdeletevalue uninsdeletekeyifempty

[Icons]
//Name: "{group}\{cm:UninstallProgram,GRIDBERD}"; Filename: "{uninstallexe}"; Check: Unnin and Start and CheckError;
//Name: "{userdesktop}\{#GameName}"; Filename: "{app}\XFRGB\BIN64\XFRGRIDBERD_Launcher.exe"; Check: Icon and CheckError;
//Name: "{group}\{#GameName}"; Filename: "{app}\XFRGB\BIN64\XFRGRIDBERD_Launcher.exe"; Check: Start and CheckError;

[Languages]
Name: "English"; MessagesFile: "compiler:Default.isl"

[CustomMessages]
ErrDir=Install path contains bad characters!
ErrBro=They are bad characters at Start Menu directory!
DirInstall=Install directory
IconDest=&Create desktop shortcut
IconGroup=Directory at Start Menu
CreateIconGroup=&Create a Start Menu folder
NoUninstall=Do not create uninstaller and do not write any specific system info
ExitBtn=&Exit
CopyCrack=Copy contents of CODEX directory to installdir
ExDir=Directory to copy is wrong or empty!
ErrCopy=Auto copying of CODEX folder is blocked by a system or AV! You need to copy CODEX folder yourself.
FreeSpace1=At least
FreeSpace2=of free space required
ErrSize=There is not enough of free space on selected disk!
MemoReady=Waiting for Input...
InteProc=Cancel extraction?
Success=Successfully Installed
Fail=Installation Failed

[UninstallDelete]
Type: filesandordirs; Name: {app}

[Code]
  #IfDef UNICODE
   #define A "W"
  #Else
   #define A "A";
  #endif
  #define isFalse(any S) (S = LowerCase(Str(S))) == "no" || S == "false" || S == "off" ? "true" : "false"

 type
  TMargins = record
   cxLeftWidth: Integer;
   cxRightWidth: Integer;
   cyTopHeight: Integer;
   cyBottomHeight: Integer;
  end;

  TTimerProc = Procedure(HandleW, Msg, idEvent, TimeSys: LongWord);
  TCallbackUnk = Function(OveralPct, CurrentPct: Integer; CurrentFile, TimeStr1, TimeStr2, TimeStr3: PAnsiChar): LongWord;
  TCallback = function(OveralPct, CurrentPct:Integer; CurrentFile, TimeStr1, TimeStr2, TimeStr3:PAnsiChar): LongWord;
  TCallbackProc = Function(h:HWND; Msg, wParam, lParam: LongInt): LongInt;
  
  TSHFileOpStruct = record
   Wnd: HWND;
   wFunc: UINT;
   pFrom: PANSICHAR;
   pTo: PANSICHAR;
   fFlags: Word; // FILEOP_FLAGS;
   fAnyOperationsAborted: BOOL;
   hNameMappings: HWND; // Pointer;
   lpszProgressTitle: PANSICHAR; { only used if FOF_SIMPLEPROGRESS }
  end;

 var
  gv00: TStartMenuFolderTreeView;  // StartMenuTreeView - FFolderTreeView - DirFolderTreeView
  FolderTreeView: TFolderTreeView; // GlobalVar[01]
  gv02: TNewEdit;
  DirEdit: TNewEdit;               // GlobalVar[03]
  lblDirInstall: TLabel;
  lblCreateGroup: TLabel;
  lblDesktopIcon: TLabel;
  lblNoUninstaller: TLabel;
  lblDiskSizeNeeded: TLabel;
  lblCopyCrack: TLabel;
  lblGroupDir: TLabel;
  lblInstallResult: TLabel;
  bvl1: TBevel;
  bvlDirInstall: TBevel;
  bvlIconGroup: TBevel;
  bvl2: TBevel;
  bvlInstallOptions: TBevel;
  bvl3: TBevel;
  bvlLeftButton: TBevel;
  bvlRightButton: TBevel;
  bvl4: TBevel;
  bvlProgressGauge: TBevel;
  chbCreateDesktopIcon: TCheckBox;
  chbCreateGroup: TCheckBox;
  chbNoUninstaller: TCheckBox;
  chbCopyCrack: TCheckBox;
  cbxDrive: TNewComboBox;
  ImageName: AnsiString;
  FNameSearch: AnsiString;
  FreeMB: Cardinal;
  TotalMB: Cardinal;
  memProgressLog: TNewMemo;
  ISDoneCancel: Integer;
  ISStep: LongInt;
  Transparency: LongInt;
  hMusic: LongInt;
  hInstall: HWND;
  hExit: HWND;
  ISDoneError : Boolean;
  bInitDone : Boolean;
  ImgBtnMouseEnter: Boolean;
  ImgBtnMouseDown: Boolean;
  ISPaused: Boolean;
  CrackInstalled: Boolean;
  unused: Double;
  btnPause: TButton;
  btnRetry: TButton;
  btnRun: TButton;
  btnDirBrowse: TButton;
  btnGroupBrowse: TButton;
  btnLeftButton: TButton;
  btnRightButton: TButton;
  bmpPlayButton: TBitmapImage;
  bmpPauseButton: TBitmapImage;
  bmpTrackBar: TBitmapImage;
  bmpTrackButton: TBitmapImage;
  MemStream: TMemoryStream;
  mp3HNDL: DWord;
  oldWFproc: HWND;
  TimerID: LongInt;
  BASS_CursorPos: TPoint;
  BASS_Volume: Single;
  TrackBarWidth: Extended;
  DraggingEnabled: DWord;
  _m_: TMargins;
  TBIcon: Array[1..7] of TNewIcon;
  frmDirBrowse: TSetupForm;
  frmGroupBrowse: TSetupForm;

 const
  // GetDriveType
  DRIVE_UNKNOWN     = 0; //UNKNOWN
  DRIVE_NO_ROOT_DIR = 1; //Root path invalid
  DRIVE_REMOVABLE   = 2; //Removable
  DRIVE_FIXED       = 3; //Fixed
  DRIVE_REMOTE      = 4; //Network
  DRIVE_CDROM       = 5; //DVD-ROM and CD-ROM
  DRIVE_RAMDISK     = 6; //Ram disk
  // BASS
  BASS_ACTIVE_STOPPED = 0;
  BASS_ACTIVE_PLAYING = 1;
  BASS_ACTIVE_STALLED = 2;
  BASS_ACTIVE_PAUSED = 3;
  BASS_SAMPLE_LOOP = 4;
  // GetWindowLong-SetWindowLong
  GWL_EXSTYLE = -20;
  GWL_HINSTANCE = -6;
  GWL_ID = -12;
  GWL_STYLE = -16;
  GWL_USERDATA = -21;
  GWL_WNDPROC = -4;
  WS_EX_LAYERED = $80000;

  IMAGE_ICON = 1;
  SPI_GETDRAGFULLWINDOWS = $0026;

    //Òèïû ïðîãðåññáàðà íà ïàíåëè çàäà÷
  TBPF_NOPROGRESS         = 0;
  TBPF_INDETERMINATE      = 1;
  TBPF_NORMAL             = 2;
  TBPF_ERROR              = 4;
  TBPF_PAUSED             = 8;
  // AnimateWindow (dwFlags)
  AW_ACTIVATE = $00020000;
  AW_BLEND = $00080000;
  AW_CENTER = $00000010;
  AW_HIDE = $00010000;
  AW_HOR_POSITIVE = $00000001;
  AW_HOR_NEGATIVE = $00000002;
  AW_SLIDE = $00040000;
  AW_VER_POSITIVE = $00000004;
  AW_VER_NEGATIVE = $00000008;
  AW_FADE_IN = $00080000;
  AW_FADE_OUT = $00090000;
  AW_SLIDE_IN_LEFT = $00040001;
  AW_SLIDE_OUT_LEFT = $00050002;
  AW_SLIDE_IN_RIGHT = $00040002;
  AW_SLIDE_OUT_RIGHT = $00050001;
  AW_SLIDE_IN_TOP = $00040004;
  AW_SLIDE_OUT_TOP = $00050008;
  AW_SLIDE_IN_BOTTOM = $00040008;
  AW_SLIDE_OUT_BOTTOM = $00050004;
  AW_DIAG_SLIDE_IN_TOPLEFT = $00040005;
  AW_DIAG_SLIDE_OUT_TOPLEFT = $0005000A;
  AW_DIAG_SLIDE_IN_TOPRIGHT = $00040006;
  AW_DIAG_SLIDE_OUT_TOPRIGHT = $00050009;
  AW_DIAG_SLIDE_IN_BOTTOMLEFT = $00040009;
  AW_DIAG_SLIDE_OUT_BOTTOMLEFT = $00050006;
  AW_DIAG_SLIDE_IN_BOTTOMRIGHT = $0004000A;
  AW_DIAG_SLIDE_OUT_BOTTOMRIGHT = $00050005;
  AW_EXPLODE = $00040010;
  AW_IMPLODE = $00050010;

// use in wFunc
{ $EXTERNALSYM FO_MOVE }
FO_MOVE = $0001;
{ $EXTERNALSYM FO_COPY }
FO_COPY = $0002;
{ $EXTERNALSYM FO_DELETE }
FO_DELETE = $0003;
{ $EXTERNALSYM FO_RENAME }
FO_RENAME = $0004;
// use in fFlags
{ $EXTERNALSYM FOF_MULTIDESTFILES }
FOF_MULTIDESTFILES = $0001;
{ $EXTERNALSYM FOF_CONFIRMMOUSE }
FOF_CONFIRMMOUSE = $0002;
{ $EXTERNALSYM FOF_SILENT }
FOF_SILENT = $0004; { don't create progress/report }
{ $EXTERNALSYM FOF_RENAMEONCOLLISION }
FOF_RENAMEONCOLLISION = $0008;
{ $EXTERNALSYM FOF_NOCONFIRMATION }
FOF_NOCONFIRMATION = $0010; { Don't prompt the user. }
FOF_WANTMAPPINGHANDLE = $0020;
FOF_ALLOWUNDO = $0040;
FOF_FILESONLY = $0080;
FOF_SIMPLEPROGRESS = $0100;
FOF_NOCONFIRMMKDIR = $0200;
FOF_NOERRORUI = $0400;

 procedure LoadFromStreamVCLStyle(VCLStyle: String);
  external 'LoadFromStreamVCLStyle{#A}@files:VclStylesInno.dll stdcall';
 procedure UnLoadVCLStyles;
  external 'UnLoadVCLStyles@files:VclStylesInno.dll stdcall';
 function  GetLogicalDrives: DWord;
  external 'GetLogicalDrives@kernel32.dll stdcall';
 function  GetDriveType(lpRootPathName: AnsiString): UInt;
  external 'GetDriveTypeA@kernel32.dll stdcall';
 // 09
 Function  DeleteFile(FmemName: PAnsiChar): Boolean;
 External 'DeleteFileA@kernel32.dll stdcall';
 // 10
 Function  AnimateWindow(hWnd: HWND; dwTime: DWord; dwFlags: DWord): Boolean;
 External 'AnimateWindow@user32 stdcall';
 // (ISDone.iss)
 function  ISArcExtract(CurComponent:Cardinal; PctOfTotal:Double; InName, OutPath, ExtractedPath:AnsiString; DeleteInFile:Boolean; Password, CfgFile, WorkPath:AnsiString; ExtractPCF:Boolean):Boolean;
  external 'ISArcExtract@files:ISDone.dll stdcall delayload';
 function IS7ZipExtract(CurComponent:Cardinal; PctOfTotal:Double; InName, OutPath:AnsiString; DeleteInFile:Boolean; Password:AnsiString):Boolean;
  external 'IS7zipExtract@files:ISDone.dll stdcall delayload';
 function  ISRarExtract(CurComponent:Cardinal; PctOfTotal:Double; InName, OutPath:AnsiString; DeleteInFile:Boolean; Password:AnsiString):Boolean;
  external 'ISRarExtract@files:ISDone.dll stdcall delayload';
 function  ISPrecompExtract(CurComponent:Cardinal; PctOfTotal:Double; InName, OutFile:AnsiString; DeleteInFile:Boolean):Boolean;
  external 'ISPrecompExtract@files:ISDone.dll stdcall delayload';
 function  ISSRepExtract  (CurComponent:Cardinal; PctOfTotal:Double; InName, OutFile:AnsiString; DeleteInFile:Boolean):Boolean;
  external 'ISSrepExtract@files:ISDone.dll stdcall delayload';
 function  ISxDeltaExtract(CurComponent:Cardinal; PctOfTotal:Double; minRAM, maxRAM:Integer; InName, DiffFile, OutFile:AnsiString; DeleteInFile, DeleteDiffFile:Boolean):Boolean;
  external 'ISxDeltaExtract@files:ISDone.dll stdcall delayload';
 function  ISPackZIP(CurComponent:Cardinal; PctOfTotal:Double; InName, OutFile:AnsiString; ComprLvl:Integer; DeleteInFile:Boolean):Boolean;
  external 'ISPackZIP@files:ISDone.dll stdcall delayload';
 function  ShowChangeDiskWindow(Text, DefaultPath, SearchFile:AnsiString):Boolean;
  external 'ShowChangeDiskWindow@files:ISDone.dll stdcall delayload';
 function  Exec2(FileName, Param: PAnsiChar; Show:Boolean):Boolean;
  external 'Exec2@files:ISDone.dll stdcall delayload';
 function  ISFindFiles(CurComponent:Cardinal; FileMask:AnsiString; var ColFiles:Integer):Integer;
  external 'ISFindFiles@files:ISDone.dll stdcall delayload';
 function  ISPickFilename(FindHandle:Integer; OutPath:AnsiString; var CurIndex:Integer; DeleteInFile:Boolean):Boolean;
  external 'ISPickFilename@files:ISDone.dll stdcall delayload';
 function  ISGetName(TypeStr:Integer):PAnsiChar;
  external 'ISGetName@files:ISDone.dll stdcall delayload';
 function  ISFindFree(FindHandle:Integer):Boolean;
  external 'ISFindFree@files:ISDone.dll stdcall delayload';
 function  ISExec(CurComponent:Cardinal; PctOfTotal, SpecifiedProcessTime:Double; ExeName, Parameters, TargetDir, OutputStr:AnsiString; Show:Boolean):Boolean;
  external 'ISExec@files:ISDone.dll stdcall delayload';
 function  SrepInit(TmpPath:PAnsiChar; VirtMem, MaxSave:Cardinal):Boolean;
  external 'SrepInit@files:ISDone.dll stdcall delayload';
 function PrecompInit(TmpPath:PAnsiChar; VirtMem:Cardinal; PrecompVers:Single):Boolean;
  external 'PrecompInit@files:ISDone.dll stdcall delayload';
 function FileSearchInit(RecursiveSubDir:Boolean):Boolean;
  external 'FileSearchInit@files:ISDone.dll stdcall delayload';
 function  ISDoneInit(RecordFileName:AnsiString; TimeType, Comp1, Comp2, Comp3:Cardinal; WinHandle, NeededMem:LongInt; callback:TCallback):Boolean;
  external 'ISDoneInit@files:ISDone.dll stdcall';
 function  ISDoneStop:Boolean;
  external 'ISDoneStop@files:ISDone.dll stdcall';
 function  ChangeLanguage(Language:AnsiString):Boolean;
  external 'ChangeLanguage@files:ISDone.dll stdcall delayload';
 function  SuspendProc:Boolean;
  external 'SuspendProc@files:ISDone.dll stdcall';
 function  ResumeProc:Boolean;
  external 'ResumeProc@files:ISDone.dll stdcall';
 // (BASS.iss)
 Function  BASS_Init(device: Integer; freq, flags, win: DWord; clsid: Integer): Boolean;
 External 'BASS_Init@files:BASS.dll stdcall';
 Function  BASS_Free(): Boolean;
 External 'BASS_Free@files:BASS.dll stdcall';
 function  BASS_StreamCreateFileLib(mem: Bool; fil: AnsiString; offset, length, flags: DWord): DWord;
  external 'BASS_StreamCreateFile@files:bp.dll stdcall';
 function  BASS_Start: Boolean;
 External 'BASS_Start@files:BASS.dll stdcall';
 Function  BASS_Stop: Boolean;
 External 'BASS_Stop@files:BASS.dll stdcall';
 Function  BASS_Pause: Boolean;
 External 'BASS_Pause@files:BASS.dll stdcall';
 Function  BASS_SetVolume(volume: Single): Boolean;
 External 'BASS_SetVolume@files:BASS.dll stdcall';
 Function  BASS_ChannelPlay(handle: DWord; restart: Bool): Boolean;
 External 'BASS_ChannelPlay@files:BASS.dll stdcall';
 Function  BASS_ChannelPause(handle: DWord): Boolean;
 External 'BASS_ChannelPause@files:BASS.dll stdcall';
 Function  BASS_ChannelIsActive(handle: DWord): DWord;
 External 'BASS_ChannelIsActive@{tmp}\BASS.dll stdcall delayload';
 Function  BASS_ChannelSetAttribute(handle: DWord; attrib: DWord; value: Single): Boolean;
 External 'BASS_ChannelSetAttribute@{tmp}\BASS.dll stdcall delayload';
 // 44
 Procedure SetTaskBarProgressValue(APP: HWND; Value: Integer);
 External 'SetTaskBarProgressValue@{tmp}\WinTB.dll stdcall delayload';
 // 45
 Procedure SetTaskBarProgressState(APP:HWND; Value: Integer);
 External 'SetTaskBarProgressState@{tmp}\WinTB.dll stdcall delayload';
 // 46
 Procedure SetTaskBarToolTip(APP: HWND; Hint: PAnsiChar);
 External 'SetTaskBarToolTip@{tmp}\WinTB.dll stdcall delayload';
 // 47
 Function  TaskBarAddButton(Icon: Cardinal; Hint: PAnsiChar; Event: Integer; Border: Boolean): Integer;
 External 'TaskBarAddButton@{tmp}\WinTB.dll stdcall delayload';
 // 48
 Procedure TaskBarUpdateButtons(APP: HWND);
 External 'TaskBarUpdateButtons@{tmp}\WinTB.dll stdcall delayload';
 // 49
 Procedure TaskBarButtonEnabled(Button: LongInt; Enabled: Boolean);
 External 'TaskBarButtonEnabled@{tmp}\WinTB.dll stdcall delayload'; // cdecl = 2, stdcall = 3  -  delayload = 1, [ ] = 0
 // 50
 Procedure TaskBarButtonToolTip(Button: LongInt; Hint: PAnsiChar);
 External 'TaskBarButtonToolTip@{tmp}\WinTB.dll stdcall delayload';
 // 51
 Procedure TaskBarButtonIcon(Button: LongInt; Icon: DWord);
 External 'TaskBarButtonIcon@{tmp}\WinTB.dll stdcall delayload';
 // 52
 Procedure TaskBarV10(mf, wf: HWND; isSkin, isAero: Boolean; Top, Frame: Integer; Const m: TMargins);
 External 'TaskBarV10@{tmp}\WinTB.dll stdcall delayload';
 // 53
 function  WrapCallback(callback:TCallbackUnk; paramcount:Integer):LongWord;
  external 'wrapcallback@{tmp}\ISDone.dlll stdcall delayload';
 // 54
 Procedure TaskBarDestroy;
 External 'TaskBarDestroy@{tmp}\WinTB.dll stdcall delayload';
 // 55
 Function  ShowWindow(hWnd: HWND; uType: Integer): LongInt;
 External 'ShowWindow@user32.dll stdcall';
 // 56
 Function  ScreenToClient(hWnd: HWND; var lpPoint: TPoint): Bool;
 External 'ScreenToClient@user32.dll stdcall';
 // 57
 Function  GetCursorPos(var lpPoint: TPoint): Bool;
 External 'GetCursorPos@user32.dll stdcall';
 // 58
 Function  SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: LongInt): LongInt;
 External 'SetWindowLongA@user32.dll stdcall';
 // 59
 Function  WndProcCallBack(callback: TCallbackProc; paramcount: Integer): LongWord;
 External 'wrapcallback@files:ISDone.dll stdcall';
 // 60
 Function  CallWindowProc(lpPrevWndFunc: LongInt; hWnd: HWND; Msg: UInt; wParam, lParam: LongInt): LongInt;
 External 'CallWindowProcA@user32.dll stdcall';
 // 61
 Function  GetWindowLong(HWND: HWND; nIndex: Integer): LongInt;
 External 'GetWindowLongA@user32.dll stdcall';
 // 62
 Function  SetLayeredWindowAttributes(hwnd: HWND; crKey: TColor; bAlpha: Byte; dwFlags: DWord): Boolean;
 External 'SetLayeredWindowAttributes@user32.dll stdcall';
 // 63
 Function  SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc: LongWord): LongWord;
 External 'SetTimer@user32.dll stdcall';
 Function  KillTimer(hWnd, nIDEvent: LongWord): LongWord;
 External 'KillTimer@user32.dll stdcall';
 // 65
 Function  WrapTimerProc(callback: TTimerProc; ParamCount: Integer): LongWord;
 External 'wrapcallback@files:ISDone.dll stdcall delayload';
 // 66
 Function  SystemParametersInfo(uiAction: UInt; uiParam: UInt; var pvParam: DWord; fWinIni: UInt): Bool;
 External 'SystemParametersInfo{#A}@user32.dll stdcall';
 // 67
 Function  IsThemeActive: Bool;
 External 'IsThemeActive@UxTheme.dll stdcall delayload';
 // 70
 Function  SHFileOperation(const lpFileOp: TSHFileOpStruct): Integer;
 External 'SHFileOperation@shell32.dll stdcall';

 Function ProgressCallback(OveralPct, CurrentPct: Integer; CurrentFile, TimeStr1, TimeStr2, TimeStr3: PAnsiChar): LongWord;
  var
   s: AnsiString;
  Begin
   if OveralPct <= 1000 then begin
    WizardForm.ProgressGauge.Position := OveralPct;
   end;
   SetTaskBarProgressValue(0, WizardForm.ProgressGauge.Position / 10);
   s := CurrentFile;
   if memProgressLog.Lines.Strings[memProgressLog.Lines.Count - 1] <> s then begin
    memProgressLog.Lines.Add(MinimizePathName(CurrentFile, memProgressLog.Font, memProgressLog.Width - ScaleX(50)));
   end;
   Result := ISDoneCancel;
  End;

 Function CheckError: Boolean;
  Begin
   Result := not ISDoneError;
  End;

 Function NoSD: String;
  var
   x, bit, i: Integer;
   tp: Cardinal;
   sd: string;
  Begin
   sd := ExpandConstant('{sd}');
   Result := ExpandConstant('{pf}\');
   x := GetLogicalDrives;
   if x <> 0 then begin
    for i:= 1 to 64 do begin
     bit := x and 1;
     if bit = 1 then begin
      tp := GetDriveType(PAnsiChar(Chr(64 + i) + ':'));
      if tp = DRIVE_FIXED then begin
       if Chr(64 + i) <> Copy(sd, 1, 1) then begin
        Result := Chr(64 + i) + ':\Games\';
        Break;
       end;
      end;
     end;
     x := x shr 1;
    end;
   end;
  End;

 Function AddDriveToList(cb: TNewComboBox): Boolean;
  var
   x, bit, i: Integer;
   tp: DWord;
  Begin
   x := GetLogicalDrives;
   if x <> 0 then begin
    for i:= 1 To 64 do begin
     bit := x and 1;
     if bit = 1 then begin
      tp := GetDriveType(PAnsiChar(Chr(64 + i) + ':'));
      if tp = DRIVE_FIXED then begin
       cb.Items.Add((Chr(64 + i) + ':\'));
      end;
     end;
     x := x shr 1;
    end;
   end;
   if cb.Items.IndexOf(AddBackslash(ExtractFileDrive(WizardForm.DirEdit.Text))) >= 0 then begin
    cb.ItemIndex := cb.Items.IndexOf(AddBackslash(ExtractFileDrive(WizardForm.DirEdit.Text)));
   end;
   Result := True;
  End;

 Function _IsWin8: Boolean;
  var
   Version: TWindowsVersion;
  Begin
   GetWindowsVersionEx(Version);
   if ((Version.Major = 6) and (Version.Minor > 1)) or (Version.Major > 6) then begin
    Result := True; end
   else begin
    Result := False;
   end;
  End;

 Function IsAnsi(S: String): Boolean;
  var
   S1, S2: String;
  Begin
   S1 := AnsiUppercase(S);
   S2 := Uppercase(S);
   if CompareStr(S1, S2) = 0 then begin
    S1 := Lowercase(S);
    S2 := AnsiLowercase(S);
    if CompareStr(S1, S2) = 0 then begin
     Result := True;
    end;
   end;
  End;

 Function DefDirWiz(s: String): String;
  Begin
   if _IsWin8 then begin
    Result := NoSD() + '{#PathGameName}'; end
   else begin
    Result := ExpandConstant('{pf}\') + '{#PathGameName}';
   end;
  End;

 Function MbOrTb(Float: Extended): String;
  Begin
   if Float < 1024 then begin
    Result := FormatFloat('0', Float) + ' Mb'; end
   else if (Float / 1024) < 1024 then begin
    Result := Format('%.2n', [Float / 1024]) + ' GB'; end
   else begin
    Result := Format('%.2n', [Float / (1024 * 1024)]) + ' TB';
   end;
   StringChange(Result, ',', '.');
  End;

 Function FileSeach(Filename: String): AnsiString;
  Begin
   if not FileExists(Filename) then begin
    TaskBarButtonEnabled(hInstall, False);
    TaskBarButtonEnabled(hExit, False);
    if GetOpenFileName('File not found!', Filename, ExtractFilePath(Filename), ExtractFileName(Filename), ExtractFileExt(Filename)) then begin
     Result := Filename;
    end;
    TaskBarButtonEnabled(hInstall, True);
    TaskBarButtonEnabled(hExit, True); end
   else begin
    Result := Filename;
   end;
  End;

 Function FinishedDone: Boolean;
  var
   i: LongInt;
  Begin
   btnPause.Hide;
   TaskBarButtonEnabled(hInstall, True);
   TaskBarButtonEnabled(hExit, True);
   btnRightButton.Caption := WizardForm.NextButton.Caption;
   btnRightButton.Visible := True;
   for i := 0 to 40 do begin
    WizardForm.ClientHeight := WizardForm.ClientHeight + ScaleY(1);
    i := i + 1;
   end;
   If ISDoneError Then Begin
    If IsAnsi(ExpandConstant('{srcexe}')) Then
     btnRetry.Enabled := True
    Else Begin
     btnRetry.Enabled := False;
    End;
    lblInstallResult.Caption := ExpandConstant('{cm:Fail}');
    lblInstallResult.Font.Color := $1B1BE7;
    TaskBarButtonIcon(hExit, TBIcon[6].Handle);
    TaskBarButtonToolTip(hExit, 'Retry');
    memProgressLog.Lines.Add('Error!'); End
   Else Begin
    lblInstallResult.caption := ExpandConstant('{cm:Success}');
    lblInstallResult.Font.Color := $34DD00;
    TaskBarButtonIcon(hExit, TBIcon[5].Handle);
    TaskBarButtonToolTip(hExit, 'Run {#GameName}');
    memProgressLog.Lines.Add('Done!');
    If CrackInstalled Then Begin
     TaskBarButtonEnabled(hExit, True);
     btnRun.Enabled := True; End
    Else Begin
     btnRun.Enabled := False;
     TaskBarButtonEnabled(hExit, False);
    End;
   End;
   lblInstallResult.Left := (WizardForm.ClientWidth - lblInstallResult.Width) / 2;
   lblInstallResult.Show;
   WizardForm.ProgressGauge.Style := npbstNormal;
   TaskBarButtonToolTip(hInstall, 'Exit');
   TaskBarButtonIcon(hInstall, TBIcon[7].Handle);
   Result := True;
  End;

 Procedure BtnOnClick(Btn: Integer);
  var
   i: LongInt;
  Begin
   Case Btn of
    hInstall : If ISStep = 1 Then
            WizardForm.NextButton.OnClick(WizardForm.NextButton)
           Else If ISStep = 2 Then
            btnPause.OnClick(btnPause)
           Else If ISStep = 3 Then
            WizardForm.NextButton.OnClick(WizardForm.NextButton);
    hExit : If ISStep <= 2 Then
            WizardForm.CancelButton.OnClick(WizardForm.CancelButton)
           Else If ISDoneError Then
            btnRetry.OnClick(btnRetry)
           Else If not ISDoneError Then
            btnRun.OnClick(btnRun);
    hMusic : If Not (BASS_ChannelIsActive(mp3HNDL) = BASS_ACTIVE_PAUSED) Then
            bmpPauseButton.OnClick(bmpPauseButton)
           Else
            bmpPlayButton.OnClick(bmpPlayButton);
   End;
  End;

 Function LoadTaskBar: Boolean;
  var
   i: LongInt;
  Begin
   TaskBarV10(MainForm.Handle, WizardForm.Handle, TRUE, FALSE, ScaleY(40), ScaleX(18), _m_);
   SetTaskBarToolTip(0, '{#GameName}');
   for i:= 1 to 7 do begin
    TBIcon[i] := TNewIcon.Create;
    TBIcon[i].LoadFromResourceName(HInstance, '_IS_I' + IntToStr(i));
   end;
   hMusic := TaskBarAddButton(TBIcon[4].Handle, 'Music', CallbackAddr('BtnOnClick'), True);
   hExit := TaskBarAddButton(TBIcon[7].Handle, 'Exit', CallbackAddr('BtnOnClick'), True);
   hInstall := TaskBarAddButton(TBIcon[1].Handle, 'Install', CallbackAddr('BtnOnClick'), True);
   TaskBarUpdateButtons(0);
   Result := True;
  End;

 Function BASS_StreamCreateFile(mem: Bool; fil: AnsiString; offset, size, flags: DWord): DWord;
  var
   filesize: DWord; Buffer: AnsiString;
  Begin
   if mem then begin
    filesize := ExtractTemporaryFileSize(fil);
    SetLength(Buffer, filesize);
    ExtractTemporaryFileToBuffer(fil, Cast{#defined UNICODE ? "Ansi" : ""}StringToInteger(Buffer));
    Result := BASS_StreamCreateFileLib(mem, Buffer, offset, filesize, flags); end
   else begin
    Result := BASS_StreamCreateFileLib(mem, fil, offset, size, flags);
   end;
  End;

 Procedure MyOnTimer1(h, msg, idevent, dwTime: LongWord);
  Begin
   if Transparency > 100 then begin
    KillTimer(WizardForm.Handle, TimerID);
   end;
   Transparency := Transparency + 5;
   SetLayeredWindowAttributes(WizardForm.Handle, 0, 255 - Transparency, 2)
  End;

 Function MyProc(h:HWND; Msg, wParam, lParam: LongInt): LongInt;
  var
   ExStyle: LongInt;
  Begin
   if Msg = 534 then begin
    ExStyle := GetWindowLong(WizardForm.Handle, GWL_EXSTYLE);
    if not SystemParametersInfo(SPI_GETDRAGFULLWINDOWS, 0, DraggingEnabled, 0) then begin
     Exit;
    end;
    SetWindowLong(WizardForm.Handle, GWL_EXSTYLE, GetWindowLong(WizardForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
    if (Transparency = 0) and (DraggingEnabled <> 0) then begin
     TimerID := SetTimer(WizardForm.Handle, 1, 10, WrapTimerProc(@MyOnTimer1, 4));
    end;
   end;
   if Msg = 533 Then begin
    Transparency := 0;
    SetWindowLong(WizardForm.Handle, GWL_EXSTYLE, ExStyle);
    SetLayeredWindowAttributes(WizardForm.Handle, 0, 255, 2);
   end;
   Result := CallWindowProc(oldWFproc, h, Msg, wParam, lParam);
  End;

 Function ProcessFiles(S: {#defined UNICODE ? "Ansi" : ""}String): array of {#defined UNICODE ? "Ansi" : ""}String;
  var
   i, k: Integer;
  Begin
   repeat
    i := Pos(',', S);
    k := GetArrayLength(Result);
    SetArrayLength(Result, k + 1);
    If (i > 0) then begin
     Result[k] := Copy(S, 1, i - 1);
     Delete(S, 1, i); end
    else begin
     Result[k] := S;
     SetLength(S, 0);
    end;
   until (Length(S) = 0);
  End;

 Procedure MoveFile(SourceFile, DestFile: {#defined UNICODE ? "Ansi" : ""}String);
  Begin
   FileCopy(SourceFile, DestFile, False);
  End;

 Procedure CopyFiles(SourceDir, DestDir, ExcludeFiles: {#defined UNICODE ? "Ansi" : ""}String);
  var
   FSR, DSR: TFindRec;
   FindResult, Exclude: Boolean;
   SourceFile, DestFile:{#defined UNICODE ? "Ansi" : ""}String;
   i, k: Integer;
   SS: Array of {#defined UNICODE ? "Ansi" : ""}String;
  Begin
   SetArrayLength(SS, 0);
   SS := ProcessFiles(ExcludeFiles);
   k := GetArrayLength(SS);
   If not DirExists(DestDir) Then Begin
    CreateDir(DestDir);
   End;
   FindResult := FindFirst(AddBackslash(SourceDir) + '*.*', FSR);
   Try
    While FindResult Do Begin
     If FSR.Attributes and FILE_ATTRIBUTE_DIRECTORY = 0 Then Begin
      Exclude := False;
      For i := 0 To k - 1 Do Begin
       If AnsiLowercase(SS[i]) = AnsiLowercase(FSR.Name) Then Begin
        Exclude := True;
        Break;
       End;
      End;
      If not Exclude Then Begin
       SourceFile := AddBackslash(SourceDir) + FSR.Name;
       DestFile := AddBackslash(DestDir) + FSR.Name;
       MoveFile(SourceFile, DestFile);
      End;
     End;
     FindResult := FindNext(FSR);
    End;
    FindResult := FindFirst(AddBackslash(SourceDir) + '*.*', DSR);
    While FindResult Do Begin
     If ((DSR.Attributes and FILE_ATTRIBUTE_DIRECTORY) = FILE_ATTRIBUTE_DIRECTORY) and not ((DSR.Name = '.') or (DSR.Name = '..')) Then Begin
      CopyFiles(AddBackslash(SourceDir) + DSR.Name, AddBackslash(DestDir) + DSR.Name, ExcludeFiles);
     End;
     FindResult := FindNext(DSR);
    End;
   Finally
    FindClose(FSR);
    FindClose(DSR);
   End;
  End;

 Function BackupDir(const fromDir, toDir: {#defined UNICODE ? "Ansi" : ""}String; IsMove: Boolean): Boolean;
  var
   fos: TSHFileOpStruct;
   _fromDir, _toDir: {#defined UNICODE ? "Ansi" : ""}String;
   SR: TFindRec;
   res: Boolean;
  Begin
   ForceDirectories(toDir);
   if IsMove then begin
    fos.wFunc := FO_MOVE; end
   else begin
    fos.wFunc := FO_COPY;
   end;
   fos.fFlags := FOF_FILESONLY or FOF_SILENT or FOF_NOCONFIRMATION or FOF_NOCONFIRMMKDIR;
   _fromDir := AddBackslash(fromDir);
   _toDir := AddBackslash(toDir);
   if (Length(fromDir) = Length(_fromDir)) then begin
    res := FindFirst(_fromDir + '*', SR);
    try
     while res do begin
      if (SR.Name <> '') and (SR.Name <> '.') and (SR.Name <> '..') then begin
       if SR.Attributes = FILE_ATTRIBUTE_DIRECTORY then begin
        _fromDir := _fromDir + SR.Name + #0#0;
        _toDir := _toDir + #0#0;
        fos.pFrom := PAnsiChar(_fromDir);
        fos.pTo := PAnsiChar(_toDir); end
       else begin
        _fromDir := _fromDir + SR.Name + #0#0;
        _toDir := _toDir + SR.Name + #0#0;
        fos.pFrom := PAnsiChar(_fromDir);
        fos.pTo := PAnsiChar(_toDir);
       end;
       Result := (0 = ShFileOperation(fos));
       _fromDir := ExtractFilePath(_fromDir);
       _toDir := ExtractFilePath(_toDir);
      end;
      res := FindNext(SR);
     end;
    finally
     FindClose(SR);
    end; end
   else begin
    _fromDir := RemoveBackslashUnlessRoot(_fromDir) + #0#0;
    _toDir := RemoveBackslashUnlessRoot(_toDir) + #0#0;
    fos.pFrom := PAnsiChar(_fromDir);
    fos.pTo := PAnsiChar(_toDir);
    Result := (0 = ShFileOperation(fos));
   end;
  End;

 Procedure CopyDirBat(t1, t2: {#defined UNICODE ? "Ansi" : ""}String);
  var
   ResultCode: Integer;
  Begin
   SaveStringToFile(ExpandConstant('{userdocs}\start.bat'), 'echo D | XCOPY /E /D /H /R /Y /C "' + t1 + '" "' + t2 + #34, True);
   Exec(ExpandConstant('{userdocs}\start.bat'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
   DeleteFile(ExpandConstant('{userdocs}') + '\start.bat');
  End;

 Function SearchFirstFile(SourceDir: {#defined UNICODE ? "Ansi" : ""}String): {#defined UNICODE ? "Ansi" : ""}String;
  var
   DirValue: {#defined UNICODE ? "Ansi" : ""}String;
   FindRec: TFindRec;
  Begin
   if not DirExists(SourceDir) then begin
    if MsgBox(ExpandConstant('{cm:ExDir}'), mbConfirmation, MB_OK) = IDOK then exit;
   end;
   DirValue := AddBackslash(RemoveBackSlash(SourceDir));
   if FindFirst(DirValue + '*.*', FindRec) then begin
    try
     repeat
      if ((FindRec.Name <> '.') and (FindRec.Name <> '..')) then begin
       if ((FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY) = 0) then begin
        if (Length(FNameSearch) < 1) then FNameSearch := DirValue + FindRec.Name else exit;
        Result := FNameSearch; end
       else begin
        if ((FindRec.Attributes and FILE_ATTRIBUTE_DIRECTORY) = FILE_ATTRIBUTE_DIRECTORY) then SearchFirstFile(DirValue + FindRec.Name);
       end;
      end;
     until not FindNext(FindRec);
    finally
     FindClose(FindRec);
    end;
   end;
  End;

 Procedure CopyCrack(SourceDir, DestDir: {#defined UNICODE ? "Ansi" : ""}String);
  var
   Filename: {#defined UNICODE ? "Ansi" : ""}String;
   MD5Hash: {#defined UNICODE ? "Ansi" : ""}String;
  Begin
   FNameSearch := SearchFirstFile(SourceDir);
   Filename := FNameSearch;
   if not FileExists(Filename) then Exit;
   MD5Hash := GetMD5OfFile(Filename);
   Delete(Filename, Pos(SourceDir, Filename), Length(SourceDir));
   CopyFiles(SourceDir, DestDir, '');
   if FileExists(RemoveBackSlash(DestDir) + Filename) then
    if MD5Hash <> GetMD5OfFile(RemoveBackSlash(DestDir) + Filename) then
     BackupDir(AddBackslash(RemoveBackSlash(SourceDir)), RemoveBackSlash(DestDir), False)
    else begin
     CrackInstalled := True;
     exit;
    end
   else begin
    BackupDir(AddBackslash(RemoveBackSlash(SourceDir)), RemoveBackSlash(DestDir), False);
   end;
   if FileExists(RemoveBackSlash(DestDir) + Filename) then
    if MD5Hash <> GetMD5OfFile(RemoveBackSlash(DestDir) + Filename) then
     CopyDirBat(SourceDir, DestDir)
    else begin
     CrackInstalled := True;
     exit;
    end
   else
    CopyDirBat(SourceDir, DestDir);
   if FileExists(RemoveBackSlash(DestDir) + Filename) then
    if MD5Hash <> GetMD5OfFile(RemoveBackSlash(DestDir) + Filename) then
     MsgBox(ExpandConstant('{cm:ErrCopy}'), mbConfirmation, MB_OK)
    else begin
     CrackInstalled := True;
     exit;
    end
   else begin
    MsgBox(ExpandConstant('{cm:ErrCopy}'), mbConfirmation, MB_OK)
   end
  End;

 Procedure CBDriveOnClick(Sender: TObject);
  var
   DirValue: AnsiString;
   I: Integer;
  Begin
   DirValue := WizardForm.DirEdit.Text;
   Delete(DirValue, 1, Length(cbxDrive.Text));
   WizardForm.DirEdit.Text := cbxDrive.Text + DirValue;
  End;

 // 162
 Procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
  Begin
   TaskBarButtonEnabled(hInstall, False);
   TaskBarButtonEnabled(hExit, False);
   TaskBarButtonEnabled(hMusic, False);
   Confirm := False;
   If CurPageID = wpInstalling Then
    Begin
     Cancel := False;
     SuspendProc;
     SetTaskBarProgressState(0, TBPF_PAUSED);
     If MsgBox(ExpandConstant('{cm:InteProc}'), mbConfirmation, MB_YESNO) = IDYES Then
      ISDoneCancel := 1;
     SetTaskBarProgressState(0, TBPF_NORMAL);
     TaskBarButtonEnabled(hInstall, True);
     TaskBarButtonEnabled(hExit, True);
     TaskBarButtonEnabled(hMusic, True);
     ResumeProc;
    End
   Else
    Begin
     AnimateWindow(WizardForm.Handle, 300, AW_FADE_OUT);
     Cancel := True;
    End;
  End;

 Function NextButtonClick(CurPageID: Integer): Boolean;
  Begin
   Result := True;
   if CurPageID = wpSelectDir then begin
    TaskBarButtonEnabled(hInstall, False);
    TaskBarButtonEnabled(hExit, False);
    TaskBarButtonEnabled(hMusic, False);
    if not IsAnsi(WizardForm.DirEdit.Text) then begin
     MsgBox(ExpandConstant('{cm:ErrDir}'), mbError, MB_OK);
     Result := False;
    end;
    if not IsAnsi(WizardForm.GroupEdit.Text) and WizardForm.GroupEdit.Enabled then begin
     MsgBox(ExpandConstant('{cm:ErrBro}'), mbError, MB_OK);
     Result := False;
    end;
    if FreeMB < {#GameSize} then begin
     MsgBox(ExpandConstant('{cm:ErrSize}'), mbError, MB_OK);
     Result := False;
    end;
    TaskBarButtonEnabled(hInstall, True);
    TaskBarButtonEnabled(hExit, True);
    TaskBarButtonEnabled(hMusic, True);
   end;
   if CurPageID = wpFinished then begin
    AnimateWindow(WizardForm.Handle, 500, AW_FADE_OUT);
   end;
  End;

 Procedure DirEditOnChange(Sender: TObject);
  var
   Path: String;
  Begin
   Path := ExtractFileDrive(WizardForm.DirEdit.Text);
   GetSpaceOnDisk(Path, True, FreeMB, TotalMB);
   lblDiskSizeNeeded.Caption := ExpandConstant('{cm:FreeSpace1}') + ' ' + MbOrTb({#GameSize})+ ' ' + ExpandConstant('{cm:FreeSpace2}');
   if not (FreeMB > {#GameSize}) then begin
    lblDiskSizeNeeded.Font.Color := $1B1BE7; end
   else begin
    lblDiskSizeNeeded.Font.Color := $E6E0E1;
   end;
   if cbxDrive.Items.IndexOf(AddBackslash(ExtractFileDrive(WizardForm.DirEdit.Text))) >= 0 then begin
    cbxDrive.ItemIndex := cbxDrive.Items.IndexOf(AddBackslash(ExtractFileDrive(WizardForm.DirEdit.Text)));
   end;
  End;

 // 168
 Procedure PauseBtnClick(Sender: TObject);
  Begin
   If Not ISPaused Then
    Begin
     SuspendProc;
     WizardForm.ProgressGauge.State := npbsPaused;
     btnPause.Caption := 'Resume';
     WizardForm.CancelButton.Enabled := False;
     btnLeftButton.Enabled := False;
     SetTaskBarProgressState(0, TBPF_PAUSED);
     TaskBarButtonToolTip(hInstall, 'Resume');
     TaskBarButtonIcon(hInstall, TBIcon[1].Handle);
     TaskBarButtonEnabled(hExit, False);
     ISPaused := True;
     Exit;
    End
   Else
    Begin
     ResumeProc;
     WizardForm.ProgressGauge.State := npbsNormal;
     btnPause.Caption := 'Pause';
     WizardForm.CancelButton.Enabled := True;
     btnLeftButton.Enabled := True;
     SetTaskBarProgressState(0, TBPF_NORMAL);
     TaskBarButtonToolTip(hInstall, 'Pause');
     TaskBarButtonIcon(hInstall, TBIcon[2].Handle);
     TaskBarButtonEnabled(hExit, True);
     ISPaused := False;
     Exit;
    End;
  End;

 // 170
 Procedure AgainOnClick(Sender: TObject);
  var
   ResultCode: Integer;
  Begin
   SaveStringToFile(ExpandConstant('{userdocs}\Again.bat'), 'Start "" /b "' +  ExpandConstant('{src}') + '\Setup.exe"', True);
   Exec(Expandconstant('{userdocs}\Again.bat'), '', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
   DeleteFile(ExpandConstant('{userdocs}') + '\Again.bat');
   WizardForm.NextButton.OnClick(WizardForm.NextButton);
  End;

  // 171
 Procedure RunOnClick(Sender: TObject);
  var
   ResultCode: Integer;
  Begin
   Exec(Expandconstant('{app}\XFRGB\BIN64\XFRGRIDBERD_Launcher.exe'), '', '', SW_SHOW, ewNoWait, ResultCode);
   WizardForm.NextButton.OnClick(WizardForm.NextButton);
  End;

 // 173
 Procedure Label1OnMouseEnter(Sender: TObject);
 Begin
  If chbCreateDesktopIcon.Enabled Then
   lblDesktopIcon.Font.Color :=$2D7DEA;
 End;

 // 174
 Procedure Label1OnMouseLeave(Sender: TObject);
 Begin
  If chbCreateDesktopIcon.Enabled Then
   lblDesktopIcon.Font.Color :=$E6E0E1;
 End;

 // 175
 Procedure Label1OnClick(Sender: TObject);
 Begin
  If chbCreateDesktopIcon.Checked And chbCreateDesktopIcon.Enabled Then
   chbCreateDesktopIcon.Checked := False
  Else
   chbCreateDesktopIcon.Checked := True;
 End;

 // 178
 Function Icon: Boolean;
 Begin
  If chbCreateDesktopIcon.Checked Then
   Result := True
  Else
   Result := False;
 End;

 // 179
 Procedure NoStartLabelOnMouseEnter(Sender: TObject);
 Begin
  If chbCreateGroup.Enabled then lblCreateGroup.Font.Color :=$2D7DEA;
 End;

 // 180
 Procedure NoStartLabelOnMouseLeave(Sender: TObject);
 Begin
  If chbCreateGroup.Enabled Then
   lblCreateGroup.Font.Color :=$E6E0E1;
 End;

 // 181
 Procedure NoStartLabelOnClick(Sender: TObject);
 Begin
  If chbCreateGroup.Enabled Then
   chbCreateGroup.Checked := not(chbCreateGroup.Checked);
  If (chbCreateGroup.Checked and chbCreateGroup.Enabled) Then
   begin
    btnGroupBrowse.Enabled := True;
    WizardForm.GroupEdit.Enabled := True;
   end
  Else
   begin
    btnGroupBrowse.Enabled := False;
    WizardForm.GroupEdit.Enabled := False;
   end;
 End;

 // 182
 Procedure NoStartCheckListBoxClick(Sender: TObject);
 Begin
  If (chbCreateGroup.Checked and chbCreateGroup.Enabled) Then
   begin
    btnGroupBrowse.Enabled := True;
    WizardForm.GroupEdit.Enabled := True;
   end
  Else
   begin
    btnGroupBrowse.Enabled := False;
    WizardForm.GroupEdit.Enabled := False;
   end;
 End;

 // 183
 Function Start: Boolean;
 Begin
  If chbCreateGroup.Checked Then
   Result := True
  Else
   Result := False
 End;

 // 184
 Function UnnIn: Boolean;
  var
   Unused: Integer;
 Begin
  If ((chbNoUninstaller.Checked) and (ISDoneCancel <> 1)) Then
   Result := False
  Else
   Result := True
 End;

 // 185
 Procedure InstallOptionsOnMouseEnter(Sender: TObject);
 Begin
  If chbNoUninstaller.Enabled Then
   lblNoUninstaller.Font.Color :=$2D7DEA;
 End;

 // 186
 Procedure InstallOptionsOnMouseLeave(Sender: TObject);
 Begin
  If chbNoUninstaller.Enabled Then
   lblNoUninstaller.Font.Color :=$E6E0E1;
 End;

  // 187
 Procedure InstallOptionsOnClick(Sender: TObject);
 Begin
  If (chbNoUninstaller.Checked and chbNoUninstaller.Enabled) Then
   begin
    chbNoUninstaller.Checked := False;
   end
  Else
   begin
    chbNoUninstaller.Checked := True;
   end;
 End;

 // 188
 Procedure LabelCrackOnMouseEnter(Sender: TObject);
 Begin
  If chbCopyCrack.Enabled Then
   lblCopyCrack.Font.Color :=$2D7DEA;
 End;

 // 189
 Procedure LabelCrackOnMouseLeave(Sender: TObject);
 Begin
  If chbCopyCrack.Enabled Then
   lblCopyCrack.Font.Color :=$E6E0E1;
 End;

 // 190
 Procedure LabelCrackOnClick(Sender: TObject);
 Begin
  If (chbCopyCrack.Checked and chbCopyCrack.Enabled) Then
   begin
    chbCopyCrack.Checked := False;
   end
  Else
   begin
    chbCopyCrack.Checked := True;
   end;
 End;

 // 191
 Procedure NullOnClick(Sender: TObject);
 Begin
 End;

 // 192
 Procedure Bass_ChangePos(var1: Single);
 Begin
  BASS_Volume := var1;
  If BASS_Volume < 0.03 Then
   BASS_ChannelPause(mp3HNDL)
  Else
   begin
    If (BASS_ChannelIsActive(mp3HNDL) = BASS_ACTIVE_PAUSED) Then
     BASS_ChannelPlay(mp3HNDL, False);
    Log(FloatToStr(BASS_Volume));
    BASS_ChannelSetAttribute(mp3HNDL, 2, BASS_Volume);
   end;
 End;

 // 195
 Procedure ImgButtonOnMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
 Begin
  If not GetCursorPos(BASS_CursorPos) Then Exit;
  With Sender Do
   begin
    BASS_CursorPos := WizardForm.ScreenToClient(BASS_CursorPos);
    If (ImgBtnMouseDown and (bmpTrackBar.Left < BASS_CursorPos.x) and ((bmpTrackBar.Left + bmpTrackBar.Width) > BASS_CursorPos.x)) Then
     TBitmapImage(Sender).Left := (BASS_CursorPos.x - TBitmapImage(Sender).Width / 2 );
    TrackBarWidth := bmpTrackBar.Width;
    BASS_Volume := (bmpTrackButton.Left + bmpTrackButton.Width / 4 + ScaleX(1) - bmpTrackBar.Left) / (TrackBarWidth + bmpTrackButton.Width / 4);
    If ImgBtnMouseDown Then
     BASS_ChangePos(BASS_Volume);
   end;
 End;

 // 199
 Procedure BkgButtonOnMouseEnter(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 Begin
  If not GetCursorPos(BASS_CursorPos) Then Exit;
  If not ImgBtnMouseDown Then
   begin
    BASS_CursorPos := WizardForm.ScreenToClient(BASS_CursorPos);
    If BASS_CursorPos.x > bmpTrackButton.Left Then
     bmpTrackButton.Left := (bmpTrackButton.Left + 3) + bmpTrackButton.Width / 2
    Else
     bmpTrackButton.Left := (bmpTrackButton.Left - 3) - bmpTrackButton.Width / 2;
    TrackBarWidth := bmpTrackBar.Width;
    BASS_Volume := (bmpTrackButton.Left + bmpTrackButton.Width / 4 + ScaleX(1) - bmpTrackBar.Left) / (TrackBarWidth + bmpTrackButton.Width / 4);
    BASS_ChangePos(BASS_Volume);
   end;
 End;

 Procedure ImgButtonOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  Begin
   ImgBtnMouseDown := True;
   with Sender do begin
    try
     ImageName := TBitmapImage(Sender).Name;
     ExtractTemporaryFileToStream(ImageName + '3.bmp', MemStream);
     MemStream.Position := 0;
     TBitmapImage(Sender).Bitmap.LoadFromStream(MemStream);
    finally
     MemStream.Clear;
    end;
   end;
  End;

 // 207
 Procedure ImgButtonOnMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
 Begin
  ImgBtnMouseDown := False;
  If ImgBtnMouseEnter Then
   With Sender Do
    Try
     ImageName := TBitmapImage(Sender).Name;
     ExtractTemporaryFileToStream(ImageName + '2.bmp', MemStream);
     MemStream.Position := 0;
     TBitmapImage(Sender).Bitmap.LoadFromStream(MemStream);
    Finally
     MemStream.Clear;
    End;
 End;

 // 208
 Procedure ImgButtonOnMouseEnter(Sender: TObject);
 Begin
  ImgBtnMouseEnter := True;
  With Sender Do
   Try
    ImageName := TBitmapImage(Sender).Name;
    If ImgBtnMouseDown Then
     ExtractTemporaryFileToStream(ImageName + '3.bmp', MemStream)
    Else
     ExtractTemporaryFileToStream(ImageName + '2.bmp', MemStream);
    MemStream.Position := 0;
    TBitmapImage(Sender).Bitmap.LoadFromStream(MemStream);
   Finally
    MemStream.Clear;
   End;
 End;

 Procedure ImgButtonOnMouseLeave(Sender: TObject);
  Begin
   ImgBtnMouseEnter := False;
   with Sender do
   Try
    ImageName := TBitmapImage(Sender).Name;
    ExtractTemporaryFileToStream(ImageName + '1.bmp', MemStream);
    MemStream.Position := 0;
    TBitmapImage(Sender).Bitmap.LoadFromStream(MemStream);
   Finally
    MemStream.Clear;
   End;
 End;

 Procedure ImgButton1OnClick(Sender: TObject);
  Begin
   if not (BASS_ChannelIsActive(mp3HNDL) = BASS_ACTIVE_PAUSED) then begin
    BASS_ChannelPause(mp3HNDL);
    TaskBarButtonIcon(hMusic, TBIcon[3].Handle);
   end;
  End;

 Procedure ImgButton2OnClick(Sender: TObject);
  Begin
   if ((BASS_ChannelIsActive(mp3HNDL) = BASS_ACTIVE_PAUSED) and (BASS_Volume > 0.03)) then begin
    BASS_ChannelPlay(mp3HNDL, False);
    TaskBarButtonIcon(hMusic, TBIcon[4].Handle);
   end;
  End;

 Procedure LoadSoundButton;
 Begin
  bmpPauseButton := TBitmapImage.Create(WizardForm);
  bmpPauseButton.ReplaceColor := clBlack;
  bmpPauseButton.ReplaceWithColor := WizardForm.Color;
  bmpPauseButton.Parent := WizardForm;
  bmpPauseButton.Stretch := True;
  Try
   MemStream := TMemoryStream.Create;
   ExtractTemporaryFileToStream('Pause1.bmp', MemStream);
   MemStream.Position := 0;
   bmpPauseButton.Bitmap.LoadFromStream(MemStream);
  Finally
   MemStream.Clear;
  End;
  bmpPauseButton.SetBounds(bvlInstallOptions.Left + bvlInstallOptions.Width - ScaleX(16), bvlInstallOptions.Top + ScaleY(7), ScaleX(11), ScaleY(11));
  bmpPauseButton.Name := 'Pause';
  bmpPauseButton.OnMouseEnter := @ImgButtonOnMouseEnter;
  bmpPauseButton.OnMouseLeave := @ImgButtonOnMouseLeave;
  bmpPauseButton.OnMouseDown := @ImgButtonOnMouseDown;
  bmpPauseButton.OnMouseUp := @ImgButtonOnMouseUp;
  bmpPauseButton.OnClick := @ImgButton1OnClick;
  bmpPlayButton := TBitmapImage.Create(WizardForm);
  bmpPlayButton.Parent := WizardForm;
  bmpPlayButton.ReplaceColor := clBlack;
  bmpPlayButton.ReplaceWithColor := WizardForm.Color;
  bmpPlayButton.Stretch := True;
  Try
   ExtractTemporaryFileToStream('Play1.bmp', MemStream);
   MemStream.Position := 0;
   bmpPlayButton.Bitmap.LoadFromStream(MemStream);
  Finally
   MemStream.Clear;
  End;
  bmpPlayButton.SetBounds(bmpPauseButton.Left - ScaleX(13), bmpPauseButton.Top, ScaleX(11), ScaleY(11));
  bmpPlayButton.Name := 'Play';
  bmpPlayButton.OnMouseEnter := @ImgButtonOnMouseEnter;
  bmpPlayButton.OnMouseLeave := @ImgButtonOnMouseLeave;
  bmpPlayButton.OnMouseDown := @ImgButtonOnMouseDown;
  bmpPlayButton.OnMouseUp := @ImgButtonOnMouseUp;
  bmpPlayButton.OnClick := @ImgButton2OnClick;
  bmpTrackBar := TBitmapImage.Create(WizardForm);
  bmpTrackBar.Parent := WizardForm;
  bmpTrackBar.ReplaceColor := clBlack;
  bmpTrackBar.ReplaceWithColor := WizardForm.Color;
  bmpTrackBar.Stretch := True;
  Try
   ExtractTemporaryFileToStream('trackBkg.bmp', MemStream);
   MemStream.Position := 0;
   bmpTrackBar.Bitmap.LoadFromStream(MemStream);
  Finally
   MemStream.Clear;
  End;
  bmpTrackBar.SetBounds(bmpPlayButton.Left - ScaleX(65), bmpPlayButton.Top + ScaleY(4), ScaleX(60), ScaleY(3));
  bmpTrackBar.Name := 'trackBkg';
  bmpTrackBar.OnMouseDown := @BkgButtonOnMouseEnter;
  bmpTrackButton := TBitmapImage.Create(WizardForm);
  bmpTrackButton.Parent := WizardForm;
  bmpTrackButton.ReplaceColor := clBlack;
  bmpTrackButton.ReplaceWithColor := WizardForm.Color;
  bmpTrackButton.Stretch := True;
  Try
   ExtractTemporaryFileToStream('trackbtn1.bmp', MemStream);
   MemStream.Position := 0;
   bmpTrackButton.Bitmap.LoadFromStream(MemStream);
  Finally
   MemStream.Clear;
  End;
  bmpTrackButton.SetBounds(bmpTrackBar.Left + bmpTrackBar.Width / 2, bmpTrackBar.Top - ScaleY(9) / 2 + bmpTrackBar.Height / 2, ScaleX(8), ScaleY(9));
  bmpTrackButton.Name := 'trackbtn';
  bmpTrackButton.OnMouseEnter := @ImgButtonOnMouseEnter;
  bmpTrackButton.OnMouseLeave := @ImgButtonOnMouseLeave;
  bmpTrackButton.OnMouseDown := @ImgButtonOnMouseDown;
  bmpTrackButton.OnMouseUp := @ImgButtonOnMouseUp;
  bmpTrackButton.OnMouseMove := @ImgButtonOnMove;
  BASS_Init(-1, 44100, 0, 0, 0);
  BASS_Start;
  mp3HNDL := BASS_StreamCreateFile(True, 'Music.ogg', 0, 0, 4);
  TrackBarWidth := bmpTrackBar.Width;
  BASS_Volume := (bmpTrackButton.Left + bmpTrackButton.Width / 4 + ScaleX(1) - bmpTrackBar.Left) / (TrackBarWidth + bmpTrackButton.Width / 4);
  BASS_ChangePos(BASS_Volume);
  BASS_ChannelPlay(mp3HNDL, True);
  If not (BASS_ChannelIsActive(mp3HNDL) = BASS_ACTIVE_PAUSED) Then
   TaskBarButtonIcon(hMusic, TBIcon[4].Handle)
  Else
   TaskBarButtonIcon(hMusic, TBIcon[3].Handle);
 End;

 Procedure DubleOnClick(Sender: TObject);
  Begin
   case Sender of
    btnLeftButton: WizardForm.CancelButton.OnClick(WizardForm.CancelButton);
    btnRightButton: WizardForm.NextButton.OnClick(WizardForm.NextButton);
   end;
  End;

 Procedure DirFolderChange(Sender: TObject);
  Begin
   DirEdit.Text := AddBackslash(FolderTreeView.Directory) + '{#PathGameName}';
  End;

 Procedure BackClick(Sender: TObject);
  Begin
   FolderTreeView.ChangeDirectory(AddBackslash(WizardForm.DirEdit.Text), True);
   DirEdit.Text := AddBackslash(FolderTreeView.Directory);
  End;

 Procedure NewClick(Sender: TObject);
  Begin
   FolderTreeView.CreateNewDirectory(SetupMessage(msgNewFolderName));
   DirEdit.Text := AddBackslash(FolderTreeView.Directory);
  End;

 Procedure BrowseClick(Sender: TObject);
  var
   btnOk: TButton;
   btnCancel: TButton;
   btnDefault: TButton;
   btnNewDir: TButton;
   lblBrowse: TLabel;
   bvlTop: TBevel;
   bvlTopOk: TBevel;
   bvlBotOk: TBevel;
   bvlTopCancel: TBevel;
   bvlBotCancel: TBevel;
   bvlTopDefault: TBevel;
   bvlBotDefault: TBevel;
   bvlTopNewDir: TBevel;
   bvlBotNewDir: TBevel;
   bvlBottom: TBevel;
  Begin
   frmDirBrowse := CreateCustomForm();
   try
    frmDirBrowse.ClientWidth := ScaleX(450);
    frmDirBrowse.ClientHeight := ScaleY(317);
    frmDirBrowse.Position := poScreenCenter;
    frmDirBrowse.Caption := SetupMessage(msgBrowseDialogTitle);
    frmDirBrowse.Font.Name := WizardForm.DirEdit.Font.Name;
    frmDirBrowse.Font.Size := 8;
    frmDirBrowse.Font.Color := $E6E0E1;
    frmDirBrowse.CenterInsideControl(WizardForm, False);
    FolderTreeView := TFolderTreeView.Create(frmDirBrowse);
    FolderTreeView.SetBounds(ScaleX(5), ScaleY(51), ScaleX(355), ScaleY(261));
    FolderTreeView.OnChange := @DirFolderChange;
    FolderTreeView.Parent := frmDirBrowse;
    DirEdit := TNewEdit.Create(frmDirBrowse);
    DirEdit.SetBounds(ScaleX(5), ScaleY(25), ScaleX(440), ScaleY(15));
    DirEdit.Text := WizardForm.DirEdit.Text;
    DirEdit.Parent := frmDirBrowse;
    lblBrowse := TLabel.Create(frmDirBrowse);
    lblBrowse.SetBounds(ScaleX(6), ScaleY(5), ScaleX(400), ScaleY(20));
    lblBrowse.Caption := SetupMessage(msgBrowseDialogLabel);
    lblBrowse.Parent := frmDirBrowse;
    lblBrowse.Font.Color := $E6E0E1;
    bvlTop := TBevel.Create(frmDirBrowse);
    bvlTop.SetBounds(ScaleX(365), FolderTreeView.Top - ScaleY(2), ScaleX(80), ScaleY(5));
    bvlTop.Shape := bsBottomLine;
    bvlTop.Style := bsRaised;
    bvlTop.Parent := frmDirBrowse;
    bvlTopOk := TBevel.Create(frmDirBrowse);
    bvlTopOk.SetBounds(bvlTop.Left, bvlTop.Top + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlTopOk.Shape := bsBottomLine;
    bvlTopOk.Style := bsRaised;
    bvlTopOk.Parent := frmDirBrowse;
    if IsThemeActive then begin
     btnOk := TButton.Create(frmDirBrowse); end
    else begin
     btnOk := TNewButton.Create(frmDirBrowse);
    end;
    btnOk.SetBounds(bvlTop.Left, bvlTopOk.Top + ScaleY(17), bvlTop.Width, ScaleY(25));
    btnOk.Font.Name := WizardForm.DirEdit.Font.Name;
    btnOk.Font.Size := 8;
    btnOk.Font.Color := clBlack;
    btnOk.Parent := frmDirBrowse;
    btnOk.Caption := SetupMessage(msgButtonOK);
    btnOk.ModalResult := mrOk;
    btnOk.Default := True;
    bvlBotOk := TBevel.Create(frmDirBrowse);
    bvlBotOk.SetBounds(bvlTop.Left, btnOk.Top + btnOk.Height + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlBotOk.Shape := bsBottomLine;
    bvlBotOk.Style := bsRaised;
    bvlBotOk.Parent := frmDirBrowse;
    bvlTopCancel := TBevel.Create(frmDirBrowse);
    bvlTopCancel.SetBounds(bvlBotOk.Left, bvlBotOk.Top + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlTopCancel.Shape := bsBottomLine;
    bvlTopCancel.Style := bsRaised;
    bvlTopCancel.Parent := frmDirBrowse;
    if IsThemeActive then begin
     btnCancel := TButton.Create(frmDirBrowse); end
    else begin
     btnCancel := TNewButton.Create(frmDirBrowse);
    end;
    btnCancel.SetBounds(bvlTop.Left, bvlTopCancel.Top + ScaleY(17), bvlTop.Width, ScaleY(25));
    btnCancel.Font.Name := WizardForm.DirEdit.Font.Name;
    btnCancel.Font.Size := 8;
    btnCancel.Font.Color := clBlack;
    btnCancel.Parent := frmDirBrowse;
    btnCancel.Caption := SetupMessage(msgButtonCancel);
    btnCancel.ModalResult := mrCancel;
    btnCancel.Cancel := True;
    bvlBotCancel := TBevel.Create(frmDirBrowse);
    bvlBotCancel.SetBounds(bvlTop.Left, btnCancel.Top + btnCancel.Height + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlBotCancel.Shape := bsBottomLine;
    bvlBotCancel.Style := bsRaised;
    bvlBotCancel.Parent := frmDirBrowse;
    bvlTopDefault := TBevel.Create(frmDirBrowse);
    bvlTopDefault.SetBounds(bvlBotOk.Left, bvlBotCancel.Top + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlTopDefault.Shape := bsBottomLine;
    bvlTopDefault.Style := bsRaised;
    bvlTopDefault.Parent := frmDirBrowse;
    if IsThemeActive then begin
     btnDefault := TButton.Create(frmDirBrowse); end
    else begin
     btnDefault := TNewButton.Create(frmDirBrowse);
    end;
    btnDefault.SetBounds(bvlTop.Left, bvlTopDefault.Top + ScaleY(17), bvlTop.Width, ScaleY(25));
    btnDefault.Font.Name := WizardForm.DirEdit.Font.Name;
    btnDefault.Font.Size := 8;
    btnDefault.Font.Color := clBlack;
    btnDefault.Parent := frmDirBrowse;
    btnDefault.Caption := 'Default';
    btnDefault.OnClick := @BackClick;
    bvlBotDefault := TBevel.Create(frmDirBrowse);
    bvlBotDefault.SetBounds(bvlTop.Left, btnDefault.Top + btnDefault.Height + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlBotDefault.Shape := bsBottomLine;
    bvlBotDefault.Style := bsRaised;
    bvlBotDefault.Parent := frmDirBrowse;
    bvlTopNewDir := TBevel.Create(frmDirBrowse);
    bvlTopNewDir.SetBounds(bvlBotOk.Left, bvlBotDefault.Top + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlTopNewDir.Shape := bsBottomLine;
    bvlTopNewDir.Style := bsRaised;
    bvlTopNewDir.Parent := frmDirBrowse;
    if IsThemeActive then begin
     btnNewDir := TButton.Create(frmDirBrowse); end
    else begin
     btnNewDir := TNewButton.Create(frmDirBrowse);
    end;
    btnNewDir.SetBounds(bvlTop.Left, bvlTopNewDir.Top + ScaleY(17), bvlTop.Width, ScaleY(25));
    btnNewDir.Font.Name := WizardForm.DirEdit.Font.Name;
    btnNewDir.Font.Size := 8;
    btnNewDir.Font.Color := clBlack;
    btnNewDir.Parent := frmDirBrowse;
    btnNewDir.Caption := SetupMessage(msgNewFolderName);
    btnNewDir.OnClick := @NewClick;
    bvlBotNewDir := TBevel.Create(frmDirBrowse);
    bvlBotNewDir.SetBounds(bvlTop.Left, btnNewDir.Top + btnNewDir.Height + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlBotNewDir.Shape := bsBottomLine;
    bvlBotNewDir.Style := bsRaised;
    bvlBotNewDir.Parent := frmDirBrowse;
    bvlBottom := TBevel.Create(frmDirBrowse);
    bvlBottom.SetBounds(bvlBotOk.Left, bvlBotNewDir.Top + ScaleY(10), bvlTop.Width, bvlTop.Height);
    bvlBottom.Shape := bsBottomLine;
    bvlBottom.Style := bsRaised;
    bvlBottom.Parent := frmDirBrowse;
    FolderTreeView.ChangeDirectory(AddBackslash(WizardForm.DirEdit.Text), True);
    DirEdit.Text := AddBackslash(FolderTreeView.Directory);
    frmDirBrowse.ActiveControl := FolderTreeView;
    if frmDirBrowse.ShowModal = mrOk then begin
     WizardForm.DirEdit.Text := AddBackslash(DirEdit.Text);
    end;
   finally
    frmDirBrowse.Free;
   end;
  End;

 Procedure GroupFolderChange(Sender: TObject);
  Begin
   gv02.Text := AddBackslash(gv00.Directory) + '{#PathGameName}';
  End;

 Procedure GroupClick(Sender: TObject);
  var
   btnCancel: TButton;
   btnOk: TButton;
   lblBrowse: TLabel;
  Begin
   frmGroupBrowse := CreateCustomForm();
   try
    frmGroupBrowse := CreateCustomForm();
    frmGroupBrowse.ClientWidth := ScaleX(455);
    frmGroupBrowse.ClientHeight := ScaleY(260);
    frmGroupBrowse.Caption := SetupMessage(msgBrowseDialogTitle);
    frmGroupBrowse.Position := poScreenCenter;
    frmGroupBrowse.Font.Name := WizardForm.DirEdit.Font.Name;
    frmGroupBrowse.Font.Size := 8;
    frmGroupBrowse.Font.Color := $E6E0E1;
    frmGroupBrowse.CenterInsideControl(WizardForm, False);
    if IsThemeActive then begin
     btnOk := TButton.Create(frmGroupBrowse); end
    else begin
     btnOk := TNewButton.Create(frmGroupBrowse);
    end;
    btnOk.SetBounds(ScaleX(285), ScaleY(25), ScaleX(80), ScaleY(25));
    btnOk.Font.Name := WizardForm.DirEdit.Font.Name;
    btnOk.Font.Size := 8;
    btnOk.Font.Color := clBlack;
    btnOk.Parent := frmGroupBrowse;
    btnOk.Caption := SetupMessage(msgButtonOK);
    btnOk.ModalResult := mrOk;
    btnOk.Default := True;
    if IsThemeActive then begin
     btnCancel := TButton.Create(frmGroupBrowse); end
    else begin
     btnCancel := TNewButton.Create(frmGroupBrowse);
    end;
    btnCancel.SetBounds(ScaleX(370), ScaleY(25), ScaleX(80), ScaleY(25));
    btnCancel.Font.Name := WizardForm.DirEdit.Font.Name;
    btnCancel.Font.Size := 8;
    btnCancel.Font.Color := clBlack;
    btnCancel.Parent := frmGroupBrowse;
    btnCancel.Caption := SetupMessage(msgButtonCancel);
    btnCancel.ModalResult := mrCancel;
    btnCancel.Cancel := True;
    gv00 := TStartMenuFolderTreeView.Create(frmGroupBrowse);
    gv00.SetBounds(ScaleX(5), ScaleY(55), ScaleX(445), ScaleY(200));
    gv00.OnChange := @GroupFolderChange;
    gv00.SetPaths(ExpandConstant('{userprograms}'), ExpandConstant('{commonprograms}'), ExpandConstant('{userstartup}'), ExpandConstant('{commonstartup}'));
    gv00.Parent := frmGroupBrowse;
    gv02 := TNewEdit.Create(frmGroupBrowse);
    gv02.SetBounds(ScaleX(5), ScaleY(27), ScaleX(275), ScaleY(15));
    gv02.Text := WizardForm.GroupEdit.Text;
    gv02.Parent := frmGroupBrowse;
    lblBrowse := TLabel.Create(frmGroupBrowse);
    lblBrowse.SetBounds(ScaleX(6), ScaleY(5), ScaleX(400), ScaleY(20));
    lblBrowse.Caption := SetupMessage(msgBrowseDialogLabel);
    lblBrowse.Parent := frmGroupBrowse;
    lblBrowse.Font.Color := $E6E0E1;
    gv00.ChangeDirectory(AddBackslash(WizardForm.GroupEdit.Text), True);
    gv02.Text := AddBackslash(gv00.Directory);
    frmGroupBrowse.ActiveControl := gv00;
    if frmGroupBrowse.ShowModal = mrOk then begin
     WizardForm.GroupEdit.Text := AddBackslash(gv02.Text);
    end;
   finally
    frmGroupBrowse.Free;
   end;
  End;

 Procedure StyleStreamCreate(InitStylefile: String);
  var
   StyleSize: Cardinal;
   StyleBuffer: AnsiString;
  Begin
   StyleSize := ExtractTemporaryFileSize(InitStylefile);
   SetLength(StyleBuffer, StyleSize);
   ExtractTemporaryFileToBuffer(InitStylefile, Cast{#defined UNICODE ? "Ansi" : ""}StringToInteger(StyleBuffer));
   LoadFromStreamVCLStyle(StyleBuffer);
  End;

 Function InitializeSetup(): Boolean;
 Begin
  bInitDone := False;
  if not FileExists(ExpandConstant('{tmp}\ISDone.dll')) then begin
   ExtractTemporaryFile('ISDone.dll');
  end;
  if not FileExists(ExpandConstant('{tmp}\VclStylesinno.dll')) then begin
   ExtractTemporaryFile('VclStylesinno.dll');
  end;
  if not FileExists(ExpandConstant('{tmp}\BASS.dll')) then begin
   ExtractTemporaryFile('BASS.dll');
  end;
  if not FileExists(ExpandConstant('{tmp}\bp.dll')) then begin
   ExtractTemporaryFile('bp.dll');
  end;
  if not FileExists(ExpandConstant('{tmp}\wintb.dll')) then begin
   ExtractTemporaryFile('wintb.dll');
  end;
  StyleStreamCreate('Style.vsf');
  Result := True;
 End;

Procedure InitializeWizard();
 Begin
  Application.Title := '{#GameName}';
  WizardForm.Caption := '{#GameName}';
  WizardForm.ReadyMemo.Hide;
  WizardForm.MainPanel.Hide;
  WizardForm.PageNameLabel.Hide;
  WizardForm.PageDescriptionLabel.Hide;
  WizardForm.DiskSpaceLabel.Hide;
  WizardForm.WelcomeLabel1.Hide;
  WizardForm.WelcomeLabel2.Hide;
  WizardForm.SelectDirBitmapImage.Hide;
  WizardForm.SelectDirBrowseLabel.Hide;
  WizardForm.SelectDirLabel.Hide;
  WizardForm.FinishedHeadingLabel.Hide;
  WizardForm.FinishedLabel.Hide;
  WizardForm.FilenameLabel.Hide;
  WizardForm.StatusLabel.Hide;
  WizardForm.SelectStartMenuFolderLabel.Hide;
  WizardForm.SelectStartMenuFolderBrowseLabel.Hide;
  WizardForm.ReadyLabel.Hide;
  WizardForm.LicenseLabel1.Hide;
  WizardForm.InfoBeforeClickLabel.Hide;
  WizardForm.InfoAfterClickLabel.Hide;
  WizardForm.ComponentsDiskSpaceLabel.Hide;
  WizardForm.SelectComponentsLabel.Hide;
  WizardForm.WizardSmallBitmapImage.Hide;
  WizardForm.SelectGroupBitmapImage.Hide;
  WizardForm.OuterNotebook.Hide;
  WizardForm.InnerNotebook.Hide;
  WizardForm.Bevel.Hide;
  WizardForm.Bevel1.Hide;
  WizardForm.DirBrowseButton.Enabled := False; WizardForm.DirBrowseButton.Visible := False;
  WizardForm.GroupBrowseButton.Enabled := False; WizardForm.GroupBrowseButton.Visible := False;
  WizardForm.ClientWidth := ScaleX(480);
  WizardForm.ClientHeight := ScaleY(580);
  WizardForm.Position := poScreenCenter;
  WizardForm.WizardBitmapImage.Parent := WizardForm;
  WizardForm.WizardBitmapImage.SetBounds(WizardForm.ClientWidth / 2 - ScaleX(225), ScaleY(0), ScaleX(450), ScaleY(65));
  bvl1 := TBevel.Create(WizardForm);
  bvl1.SetBounds(ScaleX(10), ScaleY(60), WizardForm.ClientWidth - ScaleX(20), ScaleY(180));
  bvl1.Shape := bsBox;
  bvl1.Style := bsRaised;
  bvl1.Parent := WizardForm;
  bvlDirInstall := TBevel.Create(WizardForm);
  bvlDirInstall.SetBounds(bvl1.Left + ScaleX(10), bvl1.Top + ScaleY(10), bvl1.Width - ScaleX(20), ScaleY(75));
  bvlDirInstall.Shape := bsBox;
  bvlDirInstall.Style := bsLowered;
  bvlDirInstall.Parent := WizardForm;
  bvlIconGroup := TBevel.Create(WizardForm);
  bvlIconGroup.SetBounds(bvlDirInstall.Left, bvlDirInstall.Top + bvlDirInstall.Height + ScaleY(10), bvlDirInstall.Width, bvlDirInstall.Height);
  bvlIconGroup.Shape := bsBox;
  bvlIconGroup.Style := bsLowered;
  bvlIconGroup.Parent := WizardForm;
  bvl2 := TBevel.Create(WizardForm);
  bvl2.SetBounds(bvl1.Left, bvl1.Top + bvl1.Height + ScaleY(10), bvl1.Width, bvlDirInstall.Height - ScaleY(7));
  bvl2.Shape := bsBox;
  bvl2.Style := bsLowered;
  bvl2.Parent := WizardForm;
  bvlInstallOptions := TBevel.Create(WizardForm);
  bvlInstallOptions.SetBounds(bvl2.Left + ScaleX(10), bvl2.Top + ScaleY(10), bvl2.Width - ScaleX(20), bvl2.Height - ScaleY(20));
  bvlInstallOptions.Shape := bsBox;
  bvlInstallOptions.Style := bsLowered;
  bvlInstallOptions.Parent := WizardForm;
  WizardForm.DirEdit.Parent := WizardForm;
  WizardForm.DirEdit.SetBounds(bvlDirInstall.Left + ScaleX(55), bvlDirInstall.Top + ScaleY(25), bvlDirInstall.Width - ScaleX(150), ScaleY(75))
  WizardForm.DirEdit.Font.Color := $E6E0E1;
  if IsThemeActive then begin
   btnDirBrowse := TButton.Create(WizardForm); end
  else begin
   btnDirBrowse := TNewButton.Create(WizardForm);
  end;
  btnDirBrowse.SetBounds(WizardForm.DirEdit.Left + WizardForm.DirEdit.Width + ScaleX(5), WizardForm.DirEdit.Top - ScaleY(1), ScaleX(80), ScaleY(23));
  btnDirBrowse.Font.Name := WizardForm.DirEdit.Font.Name;
  btnDirBrowse.Font.Size := 8;
  btnDirBrowse.Parent := WizardForm;
  btnDirBrowse.Caption := WizardForm.DirBrowseButton.Caption;
  btnDirBrowse.OnClick := @BrowseClick;
  WizardForm.GroupEdit.Parent:= WizardForm;
  WizardForm.GroupEdit.SetBounds(bvlIconGroup.Left + ScaleX(10), bvlIconGroup.Top + ScaleY(25), bvlIconGroup.Width - ScaleX(105), ScaleY(75))
  WizardForm.GroupEdit.Font.Color := $E6E0E1;
  if IsThemeActive then begin
   btnGroupBrowse := TButton.Create(WizardForm); end
  else begin
   btnGroupBrowse := TNewButton.Create(WizardForm);
  end;
  btnGroupBrowse.SetBounds(WizardForm.GroupEdit.Left + WizardForm.GroupEdit.Width + ScaleX(5), WizardForm.GroupEdit.Top - ScaleY(1), ScaleX(80), ScaleY(23));
  btnGroupBrowse.Font.Name := WizardForm.DirEdit.Font.Name;
  btnGroupBrowse.Font.Size := 8;
  btnGroupBrowse.Parent := WizardForm;
  btnGroupBrowse.Caption := WizardForm.DirBrowseButton.Caption;
  btnGroupBrowse.OnClick := @GroupClick;
  lblDirInstall := TLabel.Create(WizardForm);
  lblDirInstall.Parent := WizardForm;
  lblDirInstall.AutoSize := False;
  lblDirInstall.SetBounds(bvlDirInstall.Left + ScaleX(10), bvlDirInstall.Top + ScaleY(5), bvlDirInstall.Width - ScaleX(20), ScaleY(15));
  lblDirInstall.Transparent := True;
  lblDirInstall.WordWrap := True;
  lblDirInstall.Font.Color := $E6E0E1; lblDirInstall.Font.Name := 'Arial'; lblDirInstall.Font.Style := [fsBold]; lblDirInstall.Font.Size := 9;
  lblDirInstall.Caption := ExpandConstant('{cm:DirInstall}');
  cbxDrive := TNewComboBox.Create(WizardForm);
  cbxDrive.Parent := WizardForm;
  cbxDrive.SetBounds(lblDirInstall.Left, WizardForm.DirEdit.Top, ScaleX(40), WizardForm.DirEdit.Height);
  cbxDrive.Style := csDropDownList;
  cbxDrive.OnClick := @CBDriveOnClick;
  AddDriveToList(cbxDrive);
  chbCreateDesktopIcon := TCheckBox.Create(WizardForm);
  chbCreateDesktopIcon.SetBounds(lblDirInstall.Left, WizardForm.DirEdit.Top + WizardForm.DirEdit.Height + ScaleY(5), ScaleX(15), ScaleY(15));
  chbCreateDesktopIcon.Parent := WizardForm;
  chbCreateDesktopIcon.Checked := True;
  chbCreateDesktopIcon.Cursor := 1;
  lblDesktopIcon := TLabel.Create(WizardForm);
  lblDesktopIcon.Parent := WizardForm;
  lblDesktopIcon.SetBounds(chbCreateDesktopIcon.Left + ScaleX(17), chbCreateDesktopIcon.Top + ScaleY(1), bvlDirInstall.Width - ScaleX(40), ScaleY(15));
  lblDesktopIcon.Transparent := True;
  lblDesktopIcon.WordWrap := False;
  lblDesktopIcon.AutoSize := True;
  lblDesktopIcon.Font.Color := $E6E0E1;
  lblDesktopIcon.Font.Name := 'Arial';
  lblDesktopIcon.Font.Style := [fsBold];
  lblDesktopIcon.Font.Size := 9;
  lblDesktopIcon.Cursor := 1;
  lblDesktopIcon.Caption := ExpandConstant('{cm:IconDest}');
  lblDesktopIcon.OnMouseEnter := @Label1OnMouseEnter;
  lblDesktopIcon.OnMouseLeave := @Label1OnMouseLeave;
  lblDesktopIcon.OnClick := @Label1OnClick;
  lblGroupDir := TLabel.Create(WizardForm);
  lblGroupDir.Parent := WizardForm;
  lblGroupDir.AutoSize := False;
  lblGroupDir.SetBounds(WizardForm.GroupEdit.Left, bvlIconGroup.Top + ScaleY(5), bvlIconGroup.Width - ScaleX(20), ScaleY(15));
  lblGroupDir.Transparent := True;
  lblGroupDir.WordWrap := True;
  lblGroupDir.Font.Color := $E6E0E1;
  lblGroupDir.Font.Name := 'Arial';
  lblGroupDir.Font.Style := [fsBold];
  lblGroupDir.Font.Size := 9;
  lblGroupDir.Caption := ExpandConstant('{cm:IconGroup}');
  chbCreateGroup := TCheckBox.Create(WizardForm);
  chbCreateGroup.SetBounds(WizardForm.GroupEdit.Left, WizardForm.GroupEdit.Top + WizardForm.GroupEdit.Height + ScaleY(5), ScaleX(15), ScaleY(15));
  chbCreateGroup.Parent := WizardForm;
  chbCreateGroup.Checked := True;
  chbCreateGroup.Cursor := 1;
  chbCreateGroup.OnClick := @NoStartCheckListBoxClick;
  lblCreateGroup := TLabel.Create(WizardForm);
  lblCreateGroup.Parent := WizardForm;
  lblCreateGroup.SetBounds(chbCreateGroup.Left + ScaleX(17), chbCreateGroup.Top + ScaleY(1), bvlIconGroup.Width - ScaleX(40), ScaleY(15));
  lblCreateGroup.Transparent := True;
  lblCreateGroup.WordWrap := False;
  lblCreateGroup.AutoSize := True;
  lblCreateGroup.Font.Color := $E6E0E1;
  lblCreateGroup.Font.Name := 'Arial';
  lblCreateGroup.Font.Style := [fsBold];
  lblCreateGroup.Font.Size := 9;
  lblCreateGroup.Cursor := 1;
  lblCreateGroup.Caption := ExpandConstant('{cm:CreateIconGroup}');
  lblCreateGroup.OnMouseEnter := @NoStartLabelOnMouseEnter;
  lblCreateGroup.OnMouseLeave := @NoStartLabelOnMouseLeave;
  lblCreateGroup.OnClick := @NoStartLabelOnClick;
  lblDiskSizeNeeded := TLabel.Create(WizardForm);
  lblDiskSizeNeeded.Parent := WizardForm;
  lblDiskSizeNeeded.SetBounds(bvlInstallOptions.Left + ScaleY(10), bvlInstallOptions.Top + ScaleY(5), ScaleX(15), ScaleY(15));
  lblDiskSizeNeeded.Transparent := True;
  lblDiskSizeNeeded.WordWrap := False;
  lblDiskSizeNeeded.AutoSize := True;
  lblDiskSizeNeeded.Font.Color := $E6E0E1;
  lblDiskSizeNeeded.Font.Name := 'Arial';
  lblDiskSizeNeeded.Font.Style := [fsBold];
  lblDiskSizeNeeded.Font.Size := 9;
  chbNoUninstaller := TCheckBox.Create(WizardForm);
  chbNoUninstaller.SetBounds(lblDiskSizeNeeded.Left, lblDiskSizeNeeded.Top + lblDiskSizeNeeded.Height + ScaleY(5), ScaleX(15), ScaleY(15));
  chbNoUninstaller.Parent := WizardForm;
  chbNoUninstaller.Checked := False;
  chbNoUninstaller.Cursor := 1;
  lblNoUninstaller := TLabel.Create(WizardForm);
  lblNoUninstaller.Parent := WizardForm;
  lblNoUninstaller.SetBounds(chbNoUninstaller.Left + ScaleX(17), chbNoUninstaller.Top + ScaleY(1), lblNoUninstaller.Width, lblNoUninstaller.Height);
  lblNoUninstaller.Transparent := True;
  lblNoUninstaller.WordWrap := False;
  lblNoUninstaller.AutoSize := True;
  lblNoUninstaller.Font.Color := $E6E0E1;
  lblNoUninstaller.Font.Name := 'Arial';
  lblNoUninstaller.Font.Style := [fsBold];
  lblNoUninstaller.Font.Size := 9;
  lblNoUninstaller.Cursor := 1;
  lblNoUninstaller.Caption := ExpandConstant('{cm:NoUninstall}');
  lblNoUninstaller.OnMouseEnter := @InstallOptionsOnMouseEnter;
  lblNoUninstaller.OnMouseLeave := @InstallOptionsOnMouseLeave;
  lblNoUninstaller.OnClick := @InstallOptionsOnClick;
  chbCopyCrack := TCheckBox.Create(WizardForm);
  chbCopyCrack.SetBounds(chbNoUninstaller.Left, chbNoUninstaller.Top + ScaleY(20), ScaleX(15), ScaleY(15));
  chbCopyCrack.Parent := WizardForm;
  chbCopyCrack.Checked := False;
  chbCopyCrack.Cursor := 1;
  CrackInstalled := False;
  lblCopyCrack := TLabel.Create(WizardForm);
  lblCopyCrack.Parent := WizardForm;
  lblCopyCrack.SetBounds(chbCopyCrack.Left + ScaleX(17), chbCopyCrack.Top + ScaleY(1), lblCopyCrack.Width, lblCopyCrack.Height);
  lblCopyCrack.Transparent := True;
  lblCopyCrack.WordWrap := False;
  lblCopyCrack.AutoSize := True;
  lblCopyCrack.Font.Color := $E6E0E1;
  lblCopyCrack.Font.Name := 'Arial';
  lblCopyCrack.Font.Style := [fsBold];
  lblCopyCrack.Font.Size := 9;
  lblCopyCrack.Cursor := 1;
  lblCopyCrack.Caption := ExpandConstant('{cm:CopyCrack}');
  lblCopyCrack.OnMouseEnter := @LabelCrackOnMouseEnter;
  lblCopyCrack.OnMouseLeave := @LabelCrackOnMouseLeave;
  lblCopyCrack.OnClick := @LabelCrackOnClick;
  bvl2.Height := WizardForm.ClientHeight - bvlInstallOptions.Top - chbCopyCrack.Top + chbCopyCrack.Height + ScaleY(55);
  bvlInstallOptions.Height := bvl2.Height - ScaleY(20);
  bvl3 := TBevel.Create(WizardForm);
  bvl3.SetBounds(bvl1.Left, bvl2.Top + bvl2.Height + ScaleY(10), bvl1.Width, ScaleY(50));
  bvl3.Shape := bsBox;
  bvl3.Style := bsLowered;
  bvl3.Parent := WizardForm;
  bvlLeftButton := TBevel.Create(WizardForm);
  bvlLeftButton.SetBounds(bvl3.Left + ScaleX(5), bvl3.Top + ScaleY(5), bvl3.Width / 2 - ScaleX(8), bvl3.Height - ScaleY(10));
  bvlLeftButton.Shape := bsBox;
  bvlLeftButton.Style := bsLowered;
  bvlLeftButton.Parent := WizardForm;
  bvlRightButton := TBevel.Create(WizardForm);
  bvlRightButton.SetBounds(bvlLeftButton.Left + bvlLeftButton.Width + ScaleX(6), bvl3.Top + ScaleY(5), bvl3.Width / 2 - ScaleX(8), bvl3.Height - ScaleY(10));
  bvlRightButton.Shape := bsBox;
  bvlRightButton.Style := bsLowered;
  bvlRightButton.Parent := WizardForm;
  WizardForm.CancelButton.SetBounds(WizardForm.Left - ScaleX(500), WizardForm.Top - ScaleY(500), ScaleX(0), ScaleY(0));
  WizardForm.NextButton.SetBounds(WizardForm.Left - ScaleX(500), WizardForm.Top - ScaleY(500), ScaleX(1), ScaleY(1));
  if IsThemeActive then begin
   btnLeftButton := TButton.Create(WizardForm); end
  else begin
   btnLeftButton := TNewButton.Create(WizardForm);
  end;
  btnLeftButton.SetBounds(bvlLeftButton.Left + ScaleX(5), bvlLeftButton.Top + ScaleY(5), bvlLeftButton.Width - ScaleX(10), bvlLeftButton.Height - ScaleY(10));
  btnLeftButton.Font.Name := WizardForm.DirEdit.Font.Name;
  btnLeftButton.Font.Size := 8;
  btnLeftButton.Parent := WizardForm;
  btnLeftButton.OnClick := @DubleOnClick;
  if IsThemeActive then begin
   btnRightButton := TButton.Create(WizardForm); end
  else begin
   btnRightButton := TNewButton.Create(WizardForm);
  end;
  btnRightButton.SetBounds(bvlRightButton.Left + ScaleX(5), bvlLeftButton.Top + ScaleY(5), bvlLeftButton.Width - ScaleX(10), bvlLeftButton.Height - ScaleY(10));
  btnRightButton.Font.Name := WizardForm.DirEdit.Font.Name;
  btnRightButton.Font.Size := 8;
  btnRightButton.Parent := WizardForm;
  btnRightButton.OnClick := @DubleOnClick;
  bvl4 := TBevel.Create(WizardForm);
  bvl4.SetBounds(bvl1.Left, bvl3.Top + bvl3.Height + ScaleY(10), bvl1.Width, WizardForm.ClientHeight - bvl3.Top  - bvl3.Height - ScaleY(20));
  bvl4.Shape := bsBox;
  bvl4.Style := bsLowered;
  bvl4.Parent := WizardForm;
  bvlProgressGauge := TBevel.Create(WizardForm);
  bvlProgressGauge.SetBounds(bvl4.Left + ScaleX(10), bvl4.Top + ScaleY(10), bvl4.Width - ScaleX(20), bvl4.Height - ScaleY(20));
  bvlProgressGauge.Shape := bsBox;
  bvlProgressGauge.Style := bsLowered;
  bvlProgressGauge.Parent := WizardForm;
  WizardForm.ProgressGauge.Parent := WizardForm;
  WizardForm.ProgressGauge.SetBounds(bvlProgressGauge.Left + ScaleX(10), bvlProgressGauge.Top + ScaleY(10), bvlProgressGauge.Width - ScaleX(20), ScaleY(15));
  WizardForm.ProgressGauge.Max := 1000;
  memProgressLog := TNewMemo.Create(WizardForm);
  memProgressLog.SetBounds(WizardForm.ProgressGauge.Left + ScaleX(1), WizardForm.ProgressGauge.Top + WizardForm.ProgressGauge.Height + ScaleY(5), WizardForm.ProgressGauge.Width - ScaleX(2), bvlProgressGauge.Height - WizardForm.ProgressGauge.Height - ScaleY(25));
  memProgressLog.WordWrap := False;
  memProgressLog.Parent := WizardForm;
  memProgressLog.ScrollBars := ssVertical;
  memProgressLog.ReadOnly := True;
  memProgressLog.Clear;
  memProgressLog.Lines.Add(ExpandConstant('{cm:MemoReady}'));
  lblInstallResult := TLabel.Create(WizardForm);
  lblInstallResult.Parent := WizardForm;
  lblInstallResult.SetBounds(ScaleX(0), bvl4.Top + bvl4.Height + ScaleY(5), WizardForm.ClientWidth, ScaleY(30));
  lblInstallResult.Transparent := True;
  lblInstallResult.WordWrap := False;
  lblInstallResult.AutoSize := True;
  lblInstallResult.Font.Name := 'Tahoma';
  lblInstallResult.Font.Style := [fsBold];
  lblInstallResult.Font.Size := 14;
  lblInstallResult.Hide;
  if IsThemeActive then begin
   btnPause := TButton.Create(WizardForm); end
  else begin
   btnPause := TNewButton.Create(WizardForm);
  end;
  btnPause.SetBounds(btnRightButton.Left, btnRightButton.Top, btnRightButton.Width, btnRightButton.Height);
  btnPause.Font.Name := WizardForm.DirEdit.Font.Name;
  btnPause.Font.Size := 8;
  btnPause.Parent := WizardForm;
  btnPause.Caption := 'Pause';
  btnPause.OnClick := @PauseBtnClick;
  btnPause.Hide;
  if IsThemeActive then begin
   btnRetry := TButton.Create(WizardForm); end
  else begin
   btnRetry := TNewButton.Create(WizardForm);
  end;
  btnRetry.SetBounds(btnLeftButton.Left, btnLeftButton.Top, btnLeftButton.Width, btnLeftButton.Height);
  btnRetry.Font.Name := WizardForm.DirEdit.Font.Name;
  btnRetry.Font.Size := 8;
  btnRetry.Parent := WizardForm;
  btnRetry.Caption := 'Retry';
  btnRetry.OnClick := @AgainOnClick;
  btnRetry.Hide;
  if IsThemeActive then begin
   btnRun := TButton.Create(WizardForm); end
  else begin
   btnRun := TNewButton.Create(WizardForm);
  end;
  btnRun.SetBounds(btnLeftButton.Left, btnLeftButton.Top, btnLeftButton.Width, btnLeftButton.Height);
  btnRun.Font.Name := WizardForm.DirEdit.Font.Name;
  btnRun.Font.Size := 8;
  btnRun.Parent := WizardForm;
  btnRun.Caption := 'Run';
  btnRun.OnClick := @RunOnClick;
  btnRun.Enabled := False;
  btnRun.Hide;
  WizardForm.DirEdit.OnChange := @DirEditOnChange;
  Transparency := 0;
  oldWFproc := 0;
  TimerID := 0;
  oldWFproc := SetWindowLong(WizardForm.Handle, GWL_WNDPROC, WndProcCallBack(@MyProc, 4));
  bInitDone := True;
 End;

 Function ShouldSkipPage(PageID: Integer): Boolean;
  Begin
   if (PageID = wpPassword) or (PageID = wpWelcome) or (PageID = wpLicense) or (PageID = wpInfoBefore) or (PageID = wpUserInfo) or (PageID = wpReady) or (PageID = wpSelectComponents) or (PageID = wpSelectProgramGroup) or (PageID = wpSelectTasks) or (PageID = wpPreparing) or (PageID = wpInfoAfter) then begin
    Result := True;
   end;
  End;

  // 320
 Procedure CurPageChanged(CurPageID: Integer);
  Begin
   if (CurPageID = wpSelectDir) then begin
    LoadTaskBar;
    LoadSoundButton;
    WizardForm.ActiveControl := btnRightButton;
    ISStep := 1;
    btnRightButton.Caption := SetupMessage(msgButtonInstall);
    btnLeftButton.Caption := ExpandConstant('{cm:ExitBtn}')
    DirEditOnChange(nil);
    WizardForm.BackButton.Visible := False;
   end;
   if (CurPageID = wpInstalling) then begin
    WizardForm.ActiveControl := btnLeftButton;
    ISStep := 2;
    btnPause.Show;
    cbxDrive.Enabled := False;
    WizardForm.DirEdit.Enabled := False;
    btnDirBrowse.Enabled := False;
    WizardForm.GroupEdit.Enabled := False;
    btnGroupBrowse.Enabled := False;
    chbCreateDesktopIcon.Enabled := False;
    chbCreateGroup.Enabled := False;
    chbNoUninstaller.Enabled := False;
    lblDesktopIcon.OnClick := @NullOnClick
    lblCreateGroup.OnClick := @NullOnClick
    lblNoUninstaller.OnClick := @NullOnClick
    chbCreateDesktopIcon.Cursor := -2;
    chbCreateGroup.Cursor := -2;
    chbNoUninstaller.Cursor := -2;
    lblDesktopIcon.Cursor := -2;
    lblCreateGroup.Cursor := -2;
    lblNoUninstaller.Cursor := -2;
    chbCopyCrack.Enabled := False;
    chbCopyCrack.Cursor := -2;
    lblCopyCrack.OnClick := @NullOnClick
    lblCopyCrack.Cursor := -2;
    TaskBarButtonToolTip(hExit, 'Cancel');
    TaskBarButtonToolTip(hInstall, 'Pause');
    TaskBarButtonIcon(hInstall, TBIcon[2].Handle);
    btnLeftButton.Caption := WizardForm.CancelButton.Caption;
    btnRightButton.Caption := WizardForm.NextButton.Caption;
    btnRightButton.Visible := False;
   end;
   if (CurPageID = wpFinished) then begin
    ISStep := 3;
    FinishedDone;
    WizardForm.ActiveControl := btnRightButton;
    Application.Title := '{#GameName}';
    WizardForm.Caption := '{#GameName}';
   end;
   WizardForm.BackButton.Visible := False;
  End;

 Procedure CurStepChanged(CurStep: TSetupStep);
  var
   unused1, unused2: Integer;
   Comps1, Comps2, Comps3, TmpValue: Cardinal;
   FindHandle1, ColFiles1, CurIndex1, tmp: Integer;
   ExecError: Boolean;
   InFilePath, OutFilePath, OutFileName: PAnsiChar;
  Begin
   if (CurStep = ssInstall) then begin
    ISDoneCancel := 0;
    ExtractTemporaryFile('English.ini');
    ExtractTemporaryFile('unarc.dll');
    ISPaused := False;
    ISDoneError := True;
    if ISDoneInit(ExpandConstant('{src}\records.inf'), $1111, Comps1, Comps2, Comps3, MainForm.Handle, 10, @ProgressCallback) then begin
     repeat
      ChangeLanguage('English');
      if not FileSearchInit(False) then begin
       Break;
      end;
      if not ISArcExtract(0, 100, FileSeach(ExpandConstant('{src}\setup-1.bin')), ExpandConstant('{app}'), '', False, '', '', ExpandConstant('{app}'), False) then begin
       Break;
      end;
      ISDoneError := False;
      btnRun.Show;
     until True;
     ISDoneStop;
    end;
    WizardForm.ProgressGauge.Style := npbstMarquee;
    btnLeftButton.Visible := True;
    btnLeftButton.Enabled := False;
    WizardForm.CancelButton.Visible := True;
    WizardForm.CancelButton.Enabled := False;
    btnPause.Enabled := False;
    TaskBarButtonEnabled(hInstall, False);
    TaskBarButtonEnabled(hExit, False);
   end;
   if (CurStep = ssPostInstall) and ISDoneError then begin
    btnRightButton.Caption := WizardForm.NextButton.Caption;
    btnRightButton.Visible := True;
    btnRetry.Enabled := False;
    btnRetry.Show;
    SetTaskBarProgressState(0, 4);
    SetTaskBarProgressValue(0, 100);
    memProgressLog.Lines.Add(SetupMessage(msgStatusRollback));
    WizardForm.ProgressGauge.Style := npbstMarquee;
    Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', False); end
   else begin
    if not ISDoneError and (memProgressLog.Lines.Strings[memProgressLog.Lines.Count - 1] <> SetupMessage(msgStatusRunProgram)) then begin
     memProgressLog.Lines.Add(SetupMessage(msgStatusRunProgram));
    end;
   end;
   if (CurStep = ssPostInstall) and (chbCopyCrack.Checked) and not ISDoneError then begin
    CopyCrack(ExpandConstant('{src}\CODEX'), ExpandConstant('{app}'));
   end;
  End;

 Procedure DeinitializeSetup;
  var
   unused: LongInt;
  Begin
   if bInitDone then begin
    ShowWindow(WizardForm.Handle, SW_HIDE);
    BASS_ChannelSetAttribute(mp3HNDL, 2, 0.05)
    BASS_Stop;
    BASS_Free;
    MemStream.Free;
    UnLoadVCLStyles;
    TaskBarDestroy;
   end;
  End;
