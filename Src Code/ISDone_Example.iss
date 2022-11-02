#define NeedSize "5000000000"

#define NeedMem 512

#define SecondProgressBar

;#define Components

;#define records

;#define facompress

;#define PrecompInside
;#define SrepInside
;#define MSCInside
;#define precomp "0.42"
;#define unrar
;#define XDelta
;#define PackZIP

[Setup]
AppName=ISDone
AppVerName=ISDone
DefaultDirName={pf}\ISDone
DefaultGroupName=ISDone Example
OutputDir=.
OutputBaseFilename=Setup
VersionInfoCopyright=ProFrager
SolidCompression=yes
#ifdef NeedSize
ExtraDiskSpaceRequired={#NeedSize}
#endif

#ifdef Components
[Types]
Name: full; Description: Full installation; Flags: iscustom

[Components]
Name: text; Description: Язык субтитров; Types: full; Flags: fixed
Name: text\rus; Description: Русский; Flags: exclusive; ExtraDiskSpaceRequired: 100000000
Name: text\eng; Description: Английский; Flags: exclusive; ExtraDiskSpaceRequired: 200000000
Name: voice; Description: Язык озвучки; Types: full; Flags: fixed
Name: voice\rus; Description: Русский; Flags: exclusive; ExtraDiskSpaceRequired: 500000000
Name: voice\eng; Description: Английский; Flags: exclusive; ExtraDiskSpaceRequired: 600000000
#endif

[Registry]
Root: HKLM; Subkey: Software\ProFrager; ValueName: path; ValueType: String; ValueData: {app}; Flags: uninsdeletekey; Check: CheckError
Root: HKLM; Subkey: Software\ProFrager; ValueName: name; ValueType: String; ValueData: Data; Flags: uninsdeletekey; Check: CheckError

[Icons]
Name: {group}\Удалить пример ISDone; Filename: {app}\unins000.exe; WorkingDir: {app}; Check: CheckError
Name: {commondesktop}\Удалить пример ISDone; Filename: {app}\unins000.exe; WorkingDir: {app}; Check: CheckError

[Tasks]
Name: VCCheck; Description: Установить Microsoft Visual C++ 2005 Redist
Name: PhysXCheck; Description: Установить Nvidia PhysX

[Run]
Filename: {src}\Redist\vcredist_x86.exe; Parameters: /q; StatusMsg: Устанавливаем Microsoft Visual C++ 2005 Redist...; Flags: skipifdoesntexist; Tasks: VCCheck; Check: CheckError
Filename: {src}\Redist\PhysX.exe; Parameters: /qn; StatusMsg: Устанавливаем Nvidia PhysX...; Flags: skipifdoesntexist; Tasks: PhysXCheck; Check: CheckError

[Files]
Source: Include\English.ini; DestDir: {tmp}; Flags: dontcopy
Source: Include\unarc.dll; DestDir: {tmp}; Flags: dontcopy
Source: ISDone.dll; DestDir: {tmp}; Flags: dontcopy
#ifdef records
Source: records.inf; DestDir: {tmp}; Flags: dontcopy
#endif

#ifdef PrecompInside
Source: Include\CLS-precomp.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\packjpg_dll.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\packjpg_dll1.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\precomp.exe; DestDir: {tmp}; Flags: dontcopy
Source: Include\zlib1.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef SrepInside
Source: Include\CLS-srep.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef MSCInside
Source: Include\CLS-MSC.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef facompress
Source: Include\facompress.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef precomp
  #if precomp == "0.38"
  Source: Include\precomp038.exe; DestDir: {tmp}; Flags: dontcopy
  #else
    #if precomp == "0.4"
    Source: Include\precomp040.exe; DestDir: {tmp}; Flags: dontcopy
    #else
      #if precomp == "0.41"
      Source: Include\precomp041.exe; DestDir: {tmp}; Flags: dontcopy
      #else
        #if precomp == "0.42"
        Source: Include\precomp042.exe; DestDir: {tmp}; Flags: dontcopy
        #else
        Source: Include\precomp038.exe; DestDir: {tmp}; Flags: dontcopy
        Source: Include\precomp040.exe; DestDir: {tmp}; Flags: dontcopy
        Source: Include\precomp041.exe; DestDir: {tmp}; Flags: dontcopy
        Source: Include\precomp042.exe; DestDir: {tmp}; Flags: dontcopy
        #endif
      #endif
    #endif
  #endif
#endif
#ifdef unrar
Source: Include\Unrar.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef XDelta
Source: Include\XDelta3.dll; DestDir: {tmp}; Flags: dontcopy
#endif
#ifdef PackZIP
Source: Include\7z.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\packZIP.exe; DestDir: {tmp}; Flags: dontcopy
#endif

[CustomMessages]
russian.ExtractedFile=Извлекается файл:
russian.Extracted=Распаковка архивов...
russian.CancelButton=Отменить распаковку
russian.Error=Ошибка распаковки!
russian.ElapsedTime=Прошло:
russian.RemainingTime=Осталось времени:
russian.EstimatedTime=Всего:
russian.AllElapsedTime=Время установки:

[Languages]
Name: russian; MessagesFile: compiler:Languages\Russian.isl

[UninstallDelete]
Type: filesandordirs; Name: {app}

[Code]
const
  PCFonFLY=true;
  notPCFonFLY=false;
var
  LabelPct1,LabelCurrFileName,LabelTime1,LabelTime2,LabelTime3: TLabel;
  ISDoneProgressBar1: TNewProgressBar;
#ifdef SecondProgressBar
  LabelPct2: TLabel;
  ISDoneProgressBar2:TNewProgressBar;
#endif
  MyCancelButton: TButton;
  ISDoneCancel:integer;
  ISDoneError:boolean;
  PCFVer:double;

type
  TCallback = function (OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;

function WrapCallback(callback:TCallback; paramcount:integer):longword;external 'wrapcallback@files:ISDone.dll stdcall delayload';

function ISArcExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath, ExtractedPath: AnsiString; DeleteInFile:boolean; Password, CfgFile, WorkPath: AnsiString; ExtractPCF: boolean ):boolean; external 'ISArcExtract@files:ISDone.dll stdcall delayload';
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
function FileSearchInit(RecursiveSubDir:boolean):boolean; external 'FileSearchInit@files:ISDone.dll stdcall delayload';
function ISDoneInit(RecordFileName:AnsiString; TimeType,Comp1,Comp2,Comp3:Cardinal; WinHandle, NeededMem:longint; callback:TCallback):boolean; external 'ISDoneInit@files:ISDone.dll stdcall';
function ISDoneStop:boolean; external 'ISDoneStop@files:ISDone.dll stdcall';
function ChangeLanguage(Language:AnsiString):boolean; external 'ChangeLanguage@files:ISDone.dll stdcall delayload';
function SuspendProc:boolean; external 'SuspendProc@files:ISDone.dll stdcall';
function ResumeProc:boolean; external 'ResumeProc@files:ISDone.dll stdcall';

function ProgressCallback(OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;
begin
  if OveralPct<=1000 then ISDoneProgressBar1.Position := OveralPct;
  LabelPct1.Caption := IntToStr(OveralPct div 10)+'.'+chr(48 + OveralPct mod 10)+'%';
#ifdef SecondProgressBar
  if CurrentPct<=1000 then ISDoneProgressBar2.Position := CurrentPct;
  LabelPct2.Caption := IntToStr(CurrentPct div 10)+'.'+chr(48 + CurrentPct mod 10)+'%';
#endif
  LabelCurrFileName.Caption:=ExpandConstant('{cm:ExtractedFile} ')+MinimizePathName(CurrentFile, LabelCurrFileName.Font, LabelCurrFileName.Width-ScaleX(100));
  LabelTime1.Caption:=ExpandConstant('{cm:ElapsedTime} ')+TimeStr2;
  LabelTime2.Caption:=ExpandConstant('{cm:RemainingTime} ')+TimeStr1;
  LabelTime3.Caption:=ExpandConstant('{cm:AllElapsedTime}')+TimeStr3;
  Result := ISDoneCancel;
end;

procedure CancelButtonOnClick(Sender: TObject);
begin
  SuspendProc;
  if MsgBox(SetupMessage(msgExitSetupMessage), mbConfirmation, MB_YESNO) = IDYES then ISDoneCancel:=1;
  ResumeProc;
end;

procedure HideControls;
begin
  WizardForm.FileNamelabel.Hide;
  ISDoneProgressBar1.Hide;
  LabelPct1.Hide;
  LabelCurrFileName.Hide;
  LabelTime1.Hide;
  LabelTime2.Hide;
  MyCancelButton.Hide;
#ifdef SecondProgressBar
  ISDoneProgressBar2.Hide;
  LabelPct2.Hide;
#endif
end;

procedure CreateControls;
var PBTop:integer;
begin
  PBTop:=ScaleY(50);
  ISDoneProgressBar1 := TNewProgressBar.Create(WizardForm);
  with ISDoneProgressBar1 do begin
    Parent   := WizardForm.InstallingPage;
    Height   := WizardForm.ProgressGauge.Height;
    Left     := ScaleX(0);
    Top      := PBTop;
    Width    := ScaleX(365);
    Max      := 1000;
  end;
  LabelPct1 := TLabel.Create(WizardForm);
  with LabelPct1 do begin
    Parent    := WizardForm.InstallingPage;
    AutoSize  := False;
    Left      := ISDoneProgressBar1.Width+ScaleX(5);
    Top       := ISDoneProgressBar1.Top + ScaleY(2);
    Width     := ScaleX(80);
  end;
  LabelCurrFileName := TLabel.Create(WizardForm);
  with LabelCurrFileName do begin
    Parent   := WizardForm.InstallingPage;
    AutoSize := False;
    Width    := ISDoneProgressBar1.Width+ScaleX(30);
    Left     := ScaleX(0);
    Top      := ScaleY(30);
  end;
#ifdef SecondProgressBar
  PBTop:=PBTop+ScaleY(25);
  ISDoneProgressBar2 := TNewProgressBar.Create(WizardForm);
  with ISDoneProgressBar2 do begin
    Parent   := WizardForm.InstallingPage;
    Left     := ScaleX(0);
    Top      := PBTop+ScaleY(8);
    Width    := ISDoneProgressBar1.Width;
    Max      := 1000;
    Height   := WizardForm.ProgressGauge.Height;
  end;
  LabelPct2 := TLabel.Create(WizardForm);
  with LabelPct2 do begin
    Parent    := WizardForm.InstallingPage;
    AutoSize  := False;
    Left      := ISDoneProgressBar2.Width+ScaleX(5);
    Top       := ISDoneProgressBar2.Top + ScaleY(2);
    Width     := ScaleX(80);
  end;
#endif
  LabelTime1 := TLabel.Create(WizardForm);
  with LabelTime1 do begin
    Parent   := WizardForm.InstallingPage;
    AutoSize := False;
    Width    := ISDoneProgressBar1.Width div 2;
    Left     := ScaleX(0);
    Top      := PBTop + ScaleY(35);
  end;
  LabelTime2 := TLabel.Create(WizardForm);
  with LabelTime2 do begin
    Parent   := WizardForm.InstallingPage;
    AutoSize := False;
    Width    := LabelTime1.Width+ScaleX(40);
    Left     := ISDoneProgressBar1.Width div 2;
    Top      := LabelTime1.Top;
  end;
  LabelTime3 := TLabel.Create(WizardForm);
  with LabelTime3 do begin
    Parent   := WizardForm.FinishedPage;
    AutoSize := False;
    Width    := 300;
    Left     := 180;
    Top      := 200;
  end;
  MyCancelButton:=TButton.Create(WizardForm);
  with MyCancelButton do begin
    Parent:=WizardForm;
    Width:=ScaleX(135);
    Caption:=ExpandConstant('{cm:CancelButton}');
    Left:=ScaleX(360);
    Top:=WizardForm.cancelbutton.top;
    OnClick:=@CancelButtonOnClick;
  end;
end;

Procedure CurPageChanged(CurPageID: Integer);
Begin
  if (CurPageID = wpFinished) and ISDoneError then
  begin
    LabelTime3.Hide;
    WizardForm.Caption:= ExpandConstant('{cm:Error}');
    WizardForm.FinishedLabel.Font.Color:= clRed;
    WizardForm.FinishedLabel.Caption:= SetupMessage(msgSetupAborted) ;
  end;
end;

function CheckError:boolean;
begin
  result:= not ISDoneError;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var Comps1,Comps2,Comps3, TmpValue:cardinal;
    FindHandle1,ColFiles1,CurIndex1,tmp:integer;
    ExecError:boolean;
    InFilePath,OutFilePath,OutFileName:PAnsiChar;
begin
  if CurStep = ssInstall then begin  //Если необходимо, можно поменять на ssPostInstall
    WizardForm.ProgressGauge.Hide;
    WizardForm.CancelButton.Hide;
    CreateControls;
    WizardForm.StatusLabel.Caption:=ExpandConstant('{cm:Extracted}');
    ISDoneCancel:=0;

// Распаковка всех необходимых файлов в папку {tmp}.

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
#ifdef MSCInside
ExtractTemporaryFile('CLS-MSC.dll');
#endif
#ifdef facompress
    ExtractTemporaryFile('facompress.dll'); //ускоряет распаковку .arc архивов.
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

    ExtractTemporaryFile('English.ini');

// Подготавливаем переменную, содержащую всю информацию о выделенных компонентах для ISDone.dll
// максимум 96 компонентов.
    Comps1:=0; Comps2:=0; Comps3:=0;
#ifdef Components
    TmpValue:=1;
    if IsComponentSelected('text\rus') then Comps1:=Comps1+TmpValue;     //компонент 1
    TmpValue:=TmpValue*2;
    if IsComponentSelected('text\eng') then Comps1:=Comps1+TmpValue;     //компонент 2
    TmpValue:=TmpValue*2;
    if IsComponentSelected('voice\rus') then Comps1:=Comps1+TmpValue;    //компонент 3
    TmpValue:=TmpValue*2;
    if IsComponentSelected('voice\eng') then Comps1:=Comps1+TmpValue;    //компонент 4
//    .....
// см. справку
#endif

#ifdef precomp
  PCFVer:={#precomp};
#else
  PCFVer:=0;
#endif
    ISDoneError:=true;
    if ISDoneInit(ExpandConstant('{src}\records.inf'), $F777, Comps1,Comps2,Comps3, MainForm.Handle, {#NeedMem}, @ProgressCallback) then begin
      repeat
//        ChangeLanguage('English');
        if not SrepInit('',512,0) then break;
        if not PrecompInit('',128,PCFVer) then break;
        if not FileSearchInit(true) then break;

        if not ISArcExtract ( 0, 0, ExpandConstant('{src}\*.arc'), ExpandConstant('{app}'), '', false, '', '', ExpandConstant('{app}'), notPCFonFLY {PCFonFLY}) then break;

//    далее находятся закомментированые примеры различных функций распаковки (чтобы каждый раз не лазить в справку за примерами)
(*
        if not ISArcExtract    ( 0, 0, ExpandConstant('{src}\arc.arc'), ExpandConstant('{app}\'), '', false, '', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\'), notPCFonFLY{PCFonFLY}) then break;
        if not IS7ZipExtract   ( 0, 0, ExpandConstant('{src}\CODMW2.7z'), ExpandConstant('{app}\data1'), false, '') then break;
        if not ISRarExtract    ( 0, 0, ExpandConstant('{src}\data_*.rar'), ExpandConstant('{app}'), false, '') then break;
        if not ISSRepExtract   ( 0, 0, ExpandConstant('{app}\data1024_1024.srep'),ExpandConstant('{app}\data1024.arc'), true) then break;
        if not ISPrecompExtract( 0, 0, ExpandConstant('{app}\data.pcf'),    ExpandConstant('{app}\data.7z'), true) then break;
        if not ISxDeltaExtract ( 0, 0, 0, 640, ExpandConstant('{app}\in.pcf'), ExpandConstant('{app}\*.diff'),   ExpandConstant('{app}\out.dat'), false, false) then break;
        if not ISPackZIP       ( 0, 0, ExpandConstant('{app}\1a1\*'), ExpandConstant('{app}\1a1.pak'), 2, false ) then break;
        if not ISExec          ( 0, 0, 0, ExpandConstant('{tmp}\Arc.exe'), ExpandConstant('x -o+ "{src}\001.arc" "{app}\"'), ExpandConstant('{tmp}'), '...',false) then break;
        if not ShowChangeDiskWindow ('Пожалуйста, вставьте второй диск и дождитесь его инициализации.', ExpandConstant('{src}'),'CODMW_2.arc') then break;

//    распаковка группы файлов посредством внешнего приложения

        FindHandle1:=ISFindFiles(0,ExpandConstant('{app}\*.ogg'),ColFiles1);
        ExecError:=false;
        while not ExecError and ISPickFilename(FindHandle1,ExpandConstant('{app}\'),CurIndex1,true) do begin
          InFilePath:=ISGetName(0);
          OutFilePath:=ISGetName(1);
          OutFileName:=ISGetName(2);
          ExecError:=not ISExec(0, 0, 0, ExpandConstant('{tmp}\oggdec.exe'), '"'+InFilePath+'" -w "'+OutFilePath+'"',ExpandConstant('{tmp}'),OutFileName,false);
        end;
        ISFindFree(FindHandle1);
        if ExecError then break;
*)

        ISDoneError:=false;
      until true;
      ISDoneStop;
    end;
    HideControls;
    WizardForm.CancelButton.Visible:=true;
    WizardForm.CancelButton.Enabled:=false;
  end;
  if (CurStep=ssPostInstall) and ISDoneError then begin
    Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', false);
  end;
end;
