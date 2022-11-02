#define NeedSize 5380
#define NeedInstallSize 8890

#define NeedMem 512

#define SecondProgressBar

;#define Components

;#define records

;#define facompress
#define precomp "0.4"
;#define unrar
;#define XDelta
;#define PackZIP


[Setup]
AppName=My Program
AppVerName=My Program version 1.5
DefaultDirName={pf}\My Program
DefaultGroupName=My Program
UninstallDisplayIcon={app}\MyProg.exe
Compression=lzma
SolidCompression=yes
WizardImageFile=1.bmp
OutputDir=.

[Files]
#if SetupSetting("WizardImageFile")
 Source:{#SetupSetting("WizardImageFile")};DestDir: "{app}"; Flags: ignoreversion solidbreak noencryption; Attribs: hidden system;
#endif
Source: dll\iswin7.dll; Flags: dontcopy
Source: dll\isSlideShow.dll; Flags: dontcopy
Source: dll\ISDone.dll; Flags: dontcopy
Source: Slides\*; Flags: dontcopy
Source: ISDone\russian.ini; Flags: dontcopy
Source: ISDone\unarc.dll; Flags: dontcopy

#ifdef records
Source: records.inf; Flags: dontcopy
#endif

#ifdef facompress
Source: ISDone\facompress.dll; Flags: dontcopy
#endif
#ifdef precomp
  #if precomp == "0.38"
  Source: ISDone\precomp038.exe; Flags: dontcopy
  #else
    #if precomp == "0.4"
    Source: ISDone\precomp040.exe; Flags: dontcopy
    #else
      #if precomp == "0.41"
      Source: ISDone\precomp041.exe; Flags: dontcopy
      #else
      Source: ISDone\precomp038.exe; Flags: dontcopy
      Source: ISDone\precomp040.exe; Flags: dontcopy
      Source: ISDone\precomp041.exe; Flags: dontcopy
      #endif
    #endif
  #endif
#endif
#ifdef unrar
Source: ISDone\Unrar.dll; Flags: dontcopy
#endif
#ifdef XDelta
Source: ISDone\XDelta3.dll; Flags: dontcopy
#endif
#ifdef PackZIP
Source: ISDone\7z.dll; Flags: dontcopy
Source: ISDone\packZIP.exe; Flags: dontcopy
#endif

[Types]
Name: full; Description: Полная установка; Flags: iscustom
Name: custom; Description: Выборочная установка;

[Components]
Name: text; Description: Язык субтитров; Types: full custom; Flags: fixed
Name: text\rus; Description: Русский; Flags: exclusive; ExtraDiskSpaceRequired: 100000000
Name: text\eng; Description: Английский; Flags: exclusive; ExtraDiskSpaceRequired: 200000000
Name: voice; Description: Язык озвучки; Types: full custom; Flags: fixed
Name: voice\rus; Description: Русский; Flags: exclusive; ExtraDiskSpaceRequired: 500000000
Name: voice\eng; Description: Английский; Flags: exclusive; ExtraDiskSpaceRequired: 600000000

[Tasks]
Name: VCCheck; Description: Microsoft Visual C++ 2005 Redist; GroupDescription: Установить
Name: PhysXCheck; Description: Nvidia PhysX; GroupDescription: Установить

[Languages]
Name: russian; MessagesFile: compiler:Languages\Russian.isl

[CustomMessages]
russian.ExtractedFile=Извлекается файл:
russian.Extracted=Распаковка архивов...
russian.CancelButton=Отменить распаковку
russian.Error=Ошибка распаковки!
russian.ElapsedTime=Прошло:
russian.RemainingTime=Осталось времени:
russian.EstimatedTime=Всего:
russian.AllElapsedTime=Время установки:

[UninstallDelete]
Type: filesandordirs; Name: {app}

[Code]
//---------------------- ISDone ----------------------\\
type
  TCallback = function (OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;
//---------------------- ISDone ----------------------\\

var
  SpaceLabel,Info,Infodescr: array of TLabel;
  tasckLbl,DirEdit,FinishedLabel,FinishedHeadingLabel: TLabel;
  FreeMB, TotalMB: Cardinal;
  Pages: array of TPanel;
  D,Index,BorderWidth,i,id,Pag:integer;
  Flag:boolean;
  BGImgFile: AnsiString;
  OldNextClick: TNotifyEvent;
  Drive: String;
  BitmapImage1: TBitmapImage;
//---------------------- ISDone ----------------------\\
  LabelPct1,LabelTime1,LabelTime2,LabelTime3: TLabel;
#ifdef SecondProgressBar
  LabelPct2: TLabel;
  SecondProgressBar:TNewProgressBar;
#endif
  ISDoneCancel:integer;
  ISDoneError:boolean;
  PCFVer:double;

const
  PCFonFLY=true;
  notPCFonFLY=false;

function WrapCallback(callback:TCallback; paramcount:integer):longword;external 'wrapcallback@files:ISDone.dll stdcall delayload';

function ISArcExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath, ExtractedPath: AnsiString; DeleteInFile:boolean; Password, CfgFile, WorkPath: AnsiString; ExtractPCF: boolean ):boolean; external 'ISArcExtract@files:ISDone.dll stdcall delayload';
function IS7ZipExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'IS7zipExtract@files:ISDone.dll stdcall delayload';
function ISRarExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'ISRarExtract@files:ISDone.dll stdcall delayload';
function ISPrecompExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISPrecompExtract@files:ISDone.dll stdcall delayload';
function ISSRepExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISSrepExtract@files:ISDone.dll stdcall delayload';
function ISxDeltaExtract(CurComponent:Cardinal; PctOfTotal:double; minRAM,maxRAM:integer; InName, DiffFile, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISxDeltaExtract@files:ISDone.dll stdcall delayload';
function ISPackZIP(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString;ComprLvl:integer; DeleteInFile:boolean):boolean; external 'ISPackZIP@files:ISDone.dll stdcall delayload';
function ShowChangeDiskWindow(Text, DefaultPath, SearchFile:AnsiString):boolean; external 'ShowChangeDiskWindow@files:ISDone.dll stdcall delayload';

function Exec2 (FileName, Param: PAnsiChar;Show:boolean):boolean; external 'Exec2@files:ISDone.dll stdcall delayload';
function ISFindFiles(CurComponent:Cardinal; FileMask:AnsiString; var ColFiles:integer):integer; external 'ISFindFiles@files:ISDone.dll stdcall delayload';
function ISPickFilename(FindHandle:integer; OutPath:AnsiString; var CurIndex:integer; DeleteInFile:boolean):boolean; external 'ISPickFilename@files:ISDone.dll stdcall delayload';
function ISGetName(TypeStr:integer):PAnsichar; external 'ISGetName@files:ISDone.dll stdcall delayload';
function ISFindFree(FindHandle:integer):boolean; external 'ISFindFree@files:ISDone.dll stdcall delayload';
function ISExec(CurComponent:Cardinal; PctOfTotal,SpecifiedProcessTime:double; ExeName,Parameters,TargetDir,OutputStr:AnsiString;Show:boolean):boolean; external 'ISExec@files:ISDone.dll stdcall delayload';

function SrepInit(TmpFile:PAnsiChar;VirtMem,MaxSave:Cardinal):boolean; external 'SrepInit@files:ISDone.dll stdcall delayload';
function PrecompInit(PrecompVers:single):boolean; external 'PrecompInit@files:ISDone.dll stdcall delayload';
function FileSearchInit(RecursiveSubDir:boolean):boolean; external 'FileSearchInit@files:ISDone.dll stdcall delayload';
function ISDoneInit(RecordFileName:AnsiString; TimeType,Comp1,Comp2,Comp3:Cardinal; WinHandle, NeededMem:longint; callback:TCallback):boolean; external 'ISDoneInit@files:ISDone.dll stdcall';
function ISDoneStop:boolean; external 'ISDoneStop@files:ISDone.dll stdcall';
function ChangeLanguage(Language:string):boolean; external 'ChangeLanguage@files:ISDone.dll stdcall';
function SuspendProc:boolean; external 'SuspendProc@files:ISDone.dll stdcall';
function ResumeProc:boolean; external 'ResumeProc@files:ISDone.dll stdcall';

function ProgressCallback(OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;
begin
  if OveralPct<=1000 then WizardForm.ProgressGauge.Position := OveralPct;
  LabelPct1.Caption := IntToStr(OveralPct div 10)+'.'+chr(48 + OveralPct mod 10)+'%';
#ifdef SecondProgressBar
  if CurrentPct<=1000 then SecondProgressBar.Position := CurrentPct;
  LabelPct2.Caption := IntToStr(CurrentPct div 10)+'.'+chr(48 + CurrentPct mod 10)+'%';
#endif
  LabelTime1.Caption:=ExpandConstant('{cm:ElapsedTime} ')+TimeStr2;
  LabelTime2.Caption:=ExpandConstant('{cm:RemainingTime} ')+TimeStr1;
  LabelTime3.Caption:=ExpandConstant('{cm:AllElapsedTime}')+TimeStr3;
  Result := ISDoneCancel;
end;

procedure CancelOnClick(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caNone;
  SuspendProc;
  if MsgBox(SetupMessage(msgExitSetupMessage), mbConfirmation, MB_YESNO) = IDYES then ISDoneCancel:=1;
  If ISDoneCancel=0 then ISDoneError:=False else ISDoneError:=True;
  ResumeProc;
end;
//---------------------- ISDone ----------------------\\

//---------------------- iswin7 ----------------------\\
procedure iswin7_add_glass(Handle:HWND; Left, Top, Right, Bottom : Integer; GDIPLoadMode: boolean);external 'iswin7_add_glass@files:iswin7.dll stdcall';
procedure iswin7_add_button(Handle:HWND);external 'iswin7_add_button@files:iswin7.dll stdcall';
procedure iswin7_free;external 'iswin7_free@files:iswin7.dll stdcall';

procedure AddGlass;
begin
  // Необходимо добавлять каждую кнопку расположенную на стекле
  // до инициализации стекла для того что бы не было дыр ))
  iswin7_add_button(WizardForm.BackButton.Handle);
  iswin7_add_button(WizardForm.NextButton.Handle);
  iswin7_add_button(WizardForm.CancelButton.Handle);
  iswin7_add_button(WizardForm.DirBrowseButton.Handle);
  // Параметр True не трогать он для htuos ))
  iswin7_add_glass(WizardForm.Handle, 0, 0, 0, ScaleY(70), True);
end;
//---------------------- iswin7 ----------------------\\

//---------------------- Слайдшоу ----------------------\\
type
  TProc=procedure(HandleW, msg, idEvent, TimeSys: LongWord);

var
  TimerID: LongWord;
  CurrentPicture:integer;
  PicList: TStringlist;

function WrapTimerProc(callback:TProc; paramcount:integer):longword; external 'wrapcallback@files:ISDone.dll stdcall';
function SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc: LongWord): LongWord; external 'SetTimer@user32.dll stdcall';
function KillTimer(hWnd, nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall';
function GetSystemMetrics(nIndex:Integer):Integer; external 'GetSystemMetrics@user32.dll stdcall';
procedure InitializeSlideShow(Hwnd:Thandle; l,t,w,h:integer;Animate:boolean; Stretch:integer); external 'InitializeSlideShow@files:isslideshow.dll stdcall';
procedure DeinitializeSlideShow; external 'DeinitializeSlideShow@files:isslideshow.dll stdcall';
procedure ShowImage(ipath:PAnsiChar; Effect:integer); external 'ShowImage@files:isslideshow.dll stdcall';

procedure OnTimer(HandleW, msg, idEvent, TimeSys: LongWord);
begin
  CurrentPicture:=CurrentPicture+1;
  if CurrentPicture=piclist.count+1 then CurrentPicture:=1;
  ShowImage(piclist.strings[CurrentPicture - 1], 2);
end;

procedure InitializeShowImage;
begin
  PicList:=tstringlist.Create;
  for i:=1 to 20 do begin
  ExtractTemporaryFile(IntToStr(i)+'.jpg');
  piclist.add(ExpandConstant('{tmp}\') + IntToStr(i)+'.jpg');
                     end;
end;
//---------------------- Слайдшоу ----------------------\\

procedure ComponentsListClick(Sender: TObject);
var
  s: String;
  n: Integer;
begin
    s:='';
    for n:= 0 to WizardForm.ComponentsList.ItemCount-1 do
  begin
    if WizardForm.ComponentsList.Checked[n] then
    s:=s+WizardForm.ComponentsList.ItemCaption[n]+','+#32;
  end;
    if s='' then s:='Ничего не выбрано';
    Infodescr[1].Caption:= s;
end;

procedure TasksListClick(Sender: TObject);
var
  s: String;
  n: Integer;
begin
    s:='';
    for n:= 0 to WizardForm.TasksList.ItemCount-1 do
  begin
    if WizardForm.TasksList.Checked[n] then
    s:=s+WizardForm.TasksList.ItemCaption[n]+','+#32;
  end;
    if s='' then s:='Ничего не выбрано';
    Infodescr[2].Caption:= s;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  if(PageID =wpWelcome)
  or(PageID =wpLicense)
  or(PageID =wpInfoBefore)
  or(PageID =wpUserInfo)
  or(PageID =wpSelectDir)
  or(PageID =wpSelectComponents)
  or(PageID =wpSelectProgramGroup)
  or(PageID =wpSelectTasks)
  then Result:= True;
end;
//---------- начало: Место на диске ----------\\
function NumToStr(Float: Extended): String;
begin
  Result:= format('%.2n', [Float]); StringChange(Result, ',', '.');
  while (Result[Length(Result)] = '0') or((Result[Length(Result)] = '.') and(Pos('.', Result) > 0)) do SetLength(Result, Length(Result)-1);
end;

function MbOrTb(Float: Extended): String;
begin
  if Float < 1024 then Result:= NumToStr(Float)+' Мб' else
  if Float/1024 < 1024 then Result:= NumToStr(Float/1024)+' Гб' else
  Result:= NumToStr(Float/(1024*1024))+' Тб';
end;

//---------- конец: Место на диске ----------\\
procedure DirEditOnChange(Sender: TObject);
begin
  DirEdit.Caption:= WizardForm.DirEdit.Text;
  Infodescr[0].Caption:= WizardForm.DirEdit.Text;

//---------- начало: Место на диске ----------\\
  Drive:= ExtractFileDrive(WizardForm.DirEdit.Text);
  GetSpaceOnDisk(Drive, True, FreeMB, TotalMB);
  SpaceLabel[0].Caption:= 'Всего места на диске: '+MbOrTb(TotalMB);
  SpaceLabel[1].Caption:= 'Доступно места на диске: '+MbOrTb(FreeMB)+' ('+IntToStr(round(FreeMB*100/TotalMB))+'%)';
  SpaceLabel[2].Caption:= 'Требуется места на диске: '+MbOrTb({#NeedSize});
  WizardForm.NextButton.Enabled:= (FreeMB>{#NeedInstallSize})and(FreeMB>{#NeedSize});

      if WizardForm.NextButton.Enabled then
  begin
      Infodescr[3].Font.Color:=$00FFFF;
      Infodescr[3].Caption:= 'Проблем не обнаружено';
  end else
    begin
      Infodescr[3].Font.Color:=$0F00FF;
      Infodescr[3].Caption:= 'Недстаточно места на диске, нажмите кнопку "Настроить" и выберите другой жесткий диск для установки.';
    end;
end;

//---------- конец: Место на диске ----------\\

procedure Next(Sender: TObject);
begin
    OldNextClick(Sender);
end;

procedure TascComp(Sender: TObject);
begin
  If not Flag then
  begin
    WizardForm.ComponentsList.Show;
    WizardForm.TypesCombo.Show;
    WizardForm.TasksList.Hide;
    WizardForm.NextButton.Caption := 'Задачи';
    Flag:=True;
  end else
  begin
    WizardForm.NextButton.Caption := 'Компоненты';
    WizardForm.ComponentsList.Hide;
    WizardForm.TypesCombo.Hide;
    WizardForm.TasksList.Show;
    Flag:=False;
  end;
end;

procedure Refresh(Sender: TObject; X: Integer; Y: Integer; Index: Integer; Area: TItemArea);
begin
    Case Sender of
    WizardForm.ComponentsList:WizardForm.ComponentsList.Repaint;
    WizardForm.TasksList:WizardForm.TasksList.Repaint;
    end;
end;

procedure DirSetup(Sender: TObject);
begin
  for Pag:=0 to getArrayLength(Pages)-1 do begin Pages[Pag].Hide;Pages[Pag].Refresh;end;
  If not Flag then begin
    Pages[1].Show;

    WizardForm.NextButton.Left := ScaleX(120);
    WizardForm.NextButton.Top := ScaleY(370);
    WizardForm.NextButton.Height := ScaleY(48);
    WizardForm.NextButton.OnClick:=@TascComp;
    WizardForm.NextButton.Caption := 'Задачи';
    WizardForm.NextButton.Enabled:= True;

    WizardForm.DirBrowseButton.Show;

    WizardForm.ComponentsList.Show;
    WizardForm.TypesCombo.Show;
    WizardForm.TasksList.Hide;

    WizardForm.BackButton.Caption := '< &Назад';
    WizardForm.NextButton.Refresh;
  Flag:=True;
end else begin
ComponentsListClick(nil);
TasksListClick(nil);

    Pages[0].Show;
    WizardForm.DirBrowseButton.Hide;
    WizardForm.NextButton.Left := ScaleX(553);
    WizardForm.NextButton.Top := ScaleY(370);
    WizardForm.NextButton.Height := WizardForm.CancelButton.Height;
    WizardForm.NextButton.Caption := '&Установить';
    WizardForm.NextButton.OnClick:=@Next;
    WizardForm.NextButton.Enabled:= (FreeMB>{#NeedInstallSize})and(FreeMB>{#NeedSize});
    WizardForm.BackButton.Caption := 'Настроить';
  Flag:=False;
  end;
end;

procedure InitializeWizard();
var PBTop:integer;
begin
    SetArrayLength(Info, 5); SetArrayLength(Infodescr, 4);SetArrayLength(SpaceLabel, 3);
 #if SetupSetting("WizardImageFile")
    ExtracttemporaryFile('{#SetupSetting("WizardImageFile")}')
    BGImgFile := ExpandConstant('{tmp}\{#SetupSetting("WizardImageFile")}');
#endif
    WizardForm.OuterNotebook.Hide;
    WizardForm.AutoScroll := False;
    WizardForm.ClientHeight := ScaleY(424);
    WizardForm.ClientWidth := ScaleX(653);
    WizardForm.Font.Name:='Georgia';
    WizardForm.Font.Color:=$FF0F0F;
    WizardForm.Font.Style := [fsBold, fsItalic];

    with WizardForm.NextButton do
    begin
      Left := ScaleX(553);
      Top := ScaleY(370);
      OldNextClick := OnClick;
      Width := ScaleX(100);
    end;

    WizardForm.CancelButton.Left := ScaleX(553);
    WizardForm.CancelButton.Top := ScaleY(395);
    WizardForm.CancelButton.Width := ScaleX(100);

    WizardForm.DirBrowseButton.Left := ScaleX(553);
    WizardForm.DirBrowseButton.Top := ScaleY(370);
    WizardForm.DirBrowseButton.Width := ScaleX(100);
    WizardForm.DirBrowseButton.Parent := WizardForm;
    WizardForm.DirBrowseButton.Hide;

    WizardForm.BackButton.Left := ScaleX(2);
    WizardForm.BackButton.Top := ScaleY(370);
    WizardForm.BackButton.Height := ScaleY(48);
    WizardForm.BackButton.Width := ScaleX(100);
    WizardForm.BackButton.OnClick:=@DirSetup;
    Flag:=False;

    SetArrayLength(Pages, 4);
for Pag:=0 to getArrayLength(Pages)-1 do
  begin
      Pages[Pag]:=  TPanel.Create(WizardForm);
      Pages[Pag].SetBounds(0,0,WizardForm.ClientWidth,WizardForm.ClientHeight-ScaleY(70))
      Pages[Pag].Parent := WizardForm;
      Pages[Pag].BevelOuter := bvNone;
      WizardForm.Bevel.Top := Pages[Pag].Height;
      Pages[Pag].Color := clNone;
      Pages[Pag].Hide;
   #if SetupSetting("WizardImageFile")
  with TBitmapImage.Create(Pages[Pag]) do
    begin
      Parent := Pages[Pag];
      SetBounds(0,0,Pages[Pag].Width,Pages[Pag].Height)
      BackColor := clNone;
      Bitmap.LoadFromFile(BGImgFile);
    end;
  #endif
      Pages[Pag].Refresh;
      Pages[0].Show;
  end;

    WizardForm.Bevel.Parent := Pages[1];
    WizardForm.Bevel.SetBounds(ScaleX(40),ScaleY(265),WizardForm.ClientWidth-ScaleX(80),WizardForm.DirEdit.Height)
    WizardForm.Bevel.Shape := bsFrame;

    DirEdit := TLabel.Create(WizardForm);
    DirEdit.Parent := Pages[1];
    DirEdit.SetBounds(ScaleX(55),ScaleY(268),WizardForm.ClientWidth-ScaleX(90),WizardForm.DirEdit.Height-ScaleY(6))
    DirEdit.AutoSize := False;
    DirEdit.Font.Color:=$00FFFF;
    DirEdit.Transparent := True;

    WizardForm.ComponentsList.Parent := Pages[1];
    WizardForm.ComponentsList.Left := ScaleX(40);
    WizardForm.ComponentsList.Width := WizardForm.ClientWidth-ScaleX(80);
    WizardForm.ComponentsList.HideSelection := True;
    WizardForm.ComponentsList.OnItemMouseMove := @Refresh;

    WizardForm.TypesCombo.Parent := Pages[1];
    WizardForm.TypesCombo.Left := ScaleX(40);
    WizardForm.TypesCombo.Width := WizardForm.ClientWidth-ScaleX(80);

    WizardForm.TasksList.Parent := Pages[1];
    WizardForm.TasksList.BorderStyle := bsSingle;
    WizardForm.TasksList.Left := ScaleX(40);
    WizardForm.TasksList.Width := WizardForm.ClientWidth-ScaleX(80);
    WizardForm.TasksList.HideSelection := True;
    WizardForm.TasksList.OnItemMouseMove := @Refresh;

    WizardForm.Bevel1.Parent := Pages[1];
    WizardForm.Bevel1.SetBounds(ScaleX(40),ScaleY(292),WizardForm.ClientWidth-ScaleX(80),ScaleY(60));
    WizardForm.Bevel1.Shape := bsFrame;

for D:=0 to getArrayLength(SpaceLabel)-1 do
    begin
    SpaceLabel[D]:= TLabel.Create(WizardForm);
    SpaceLabel[D].AutoSize:= False;
    SpaceLabel[D].SetBounds(ScaleX(55),ScaleY(294+20*D),ScaleX(300),ScaleY(20));
    SpaceLabel[D].Transparent:=True;
    SpaceLabel[D].Parent:= Pages[1];
    SpaceLabel[D].Font.Color:=$00FFFF;
    end;

for i:=0 to getArrayLength(Info)-1 do
    begin
    Info[i] := TLabel.Create(WizardForm);
    Info[i].Parent := Pages[0];
    Info[i].AutoSize:=False;
    Info[i].SetBounds(ScaleX(20),ScaleY(10+i*65),Pages[0].Width-ScaleX(120),ScaleY(20));
    Info[i].WordWrap:=True;
    Info[i].Transparent:=True;
    Info[i].Font.Size:= 9;
    Info[i].Font.Color:=$00FF0F;
    Info[i].Font.Style := [fsBold, fsItalic];
    Info[i].Caption:= WizardForm.DirEdit.Text;
     end;
    Info[0].Font.Size:= 16;
    Info[0].Font.Color:=$FF0F0F;
    Info[0].Alignment := taCenter;
    Info[0].WordWrap:=True;
    Info[0].SetBounds(ScaleX(80),ScaleY(10),Pages[0].Width-ScaleX(160),ScaleY(60));
    Info[0].Caption:= WizardForm.WelcomeLabel1.Caption;
    Info[1].Caption:= 'Папка установки';
    Info[2].Caption:= 'Выбранные компоненты';
    Info[3].Caption:= 'Выбранные задачи';
    Info[4].Caption:= 'Проблемы установки';

for id:=0 to getArrayLength(Infodescr)-1 do
    begin
    Infodescr[id] := TLabel.Create(WizardForm);
    Infodescr[id].Parent := Pages[0];
    Infodescr[id].AutoSize:=False;
    Infodescr[id].Alignment := taCenter;
    Infodescr[id].SetBounds(ScaleX(20),ScaleY(95+id*65),Pages[0].Width-ScaleX(40),ScaleY(55));
    Infodescr[id].WordWrap:=True;
    Infodescr[id].Transparent:=True;
    Infodescr[id].Font.Size:= 10;
    Infodescr[id].Font.Color:=$FF0F0F;
    Infodescr[id].Font.Style := [fsBold, fsItalic];
    end;

    PBTop:=ScaleY(370);
    WizardForm.ProgressGauge.Parent   := WizardForm;
    WizardForm.ProgressGauge.Max      := 1000;
    
#ifdef SecondProgressBar
    SecondProgressBar := TNewProgressBar.Create(WizardForm);
    SecondProgressBar.Parent   := WizardForm;
    SecondProgressBar.Max      := 1000;
    SecondProgressBar.SetBounds(ScaleX(2),PBTop,WizardForm.ClientWidth-ScaleX(4),ScaleY(20))

    LabelPct2 := TLabel.Create(WizardForm);
    LabelPct2.Parent    := SecondProgressBar;
    LabelPct2.AutoSize  := False;
    LabelPct2.Alignment := taRightJustify;
    LabelPct2.SetBounds(SecondProgressBar.Width-ScaleX(85),ScaleY(2),ScaleX(80),ScaleY(18));
    LabelPct2.Transparent:=True;
    LabelPct2.Font.Size:= 8;
    LabelPct2.Font.Color:=$FF0F0F;
    LabelPct2.Font.Style := [fsBold, fsItalic];

    WizardForm.ProgressGauge.SetBounds(ScaleX(2),PBTop+ScaleY(30),WizardForm.ClientWidth-ScaleX(4),ScaleY(20))
    #else
    WizardForm.ProgressGauge.SetBounds(ScaleX(2),PBTop,WizardForm.ClientWidth-ScaleX(4),ScaleY(48))
#endif

    LabelPct1 := TLabel.Create(WizardForm);
    LabelPct1.Parent    := WizardForm.ProgressGauge;
    LabelPct1.AutoSize  := False;
    LabelPct1.Alignment := taRightJustify;
    LabelPct1.SetBounds(WizardForm.ProgressGauge.Width-ScaleX(85),ScaleY(2),ScaleX(80),ScaleY(18));
    LabelPct1.Transparent:=True;
    LabelPct1.Font.Size:= 8;
    LabelPct1.Font.Color:=$FF0F0F;
    LabelPct1.Font.Style := [fsBold, fsItalic];

    LabelTime1 := TLabel.Create(WizardForm);
    LabelTime1.Parent    := WizardForm.ProgressGauge;
    LabelTime1.AutoSize  := False;
    LabelTime1.SetBounds(ScaleX(5),ScaleY(2),ScaleX(150),ScaleY(18));
    LabelTime1.Transparent:=True;
    LabelTime1.Font.Size:= 8;
    LabelTime1.Font.Color:=$FF0F0F;
    LabelTime1.Font.Style := [fsBold, fsItalic];

    LabelTime2 := TLabel.Create(WizardForm);
    LabelTime2.Parent    := WizardForm.ProgressGauge;
    LabelTime2.AutoSize  := False;
    LabelTime2.Alignment := taCenter;
    LabelTime2.SetBounds(ScaleX(200),ScaleY(2),ScaleX(300),ScaleY(18));
    LabelTime2.Transparent:=True;
    LabelTime2.Font.Size:= 8;
    LabelTime2.Font.Color:=$FF0F0F;
    LabelTime2.Font.Style := [fsBold, fsItalic];

    LabelTime3 := TLabel.Create(WizardForm);
    LabelTime3.Parent    := Pages[3];
    LabelTime3.AutoSize  := False;
    LabelTime3.Alignment := taCenter;
    LabelTime3.SetBounds(ScaleX(180),ScaleY(332),ScaleX(300),ScaleY(18));
    LabelTime3.Transparent:=True;
    LabelTime3.Font.Size:= 8;
    LabelTime3.Font.Color:=$00FFFF;
    LabelTime3.Font.Style := [fsUnderline, fsItalic];

    FinishedHeadingLabel := TLabel.Create(WizardForm);
    FinishedHeadingLabel.Parent    := Pages[3];
    FinishedHeadingLabel.AutoSize  := False;
    FinishedHeadingLabel.Alignment := taCenter;
    FinishedHeadingLabel.SetBounds(ScaleX(20),ScaleY(20),Pages[3].Width-ScaleX(40),ScaleY(60));
    FinishedHeadingLabel.Transparent:=True;
    FinishedHeadingLabel.Font.Size:= 16;
    FinishedHeadingLabel.Font.Color:=$FF0F0F;
    FinishedHeadingLabel.Font.Style := [fsBold, fsItalic];

    FinishedLabel := TLabel.Create(WizardForm);
    FinishedLabel.Parent    := Pages[3];
    FinishedLabel.AutoSize  := False;
    FinishedLabel.Alignment := taCenter;
    FinishedLabel.SetBounds(ScaleX(20),ScaleY(268),Pages[3].Width-ScaleX(40),ScaleY(160));
    FinishedLabel.Transparent:=True;
    FinishedLabel.Font.Size:= 11;
    FinishedLabel.Font.Color:=$00FFFF;
    FinishedLabel.Font.Style := [fsBold, fsItalic];

    InitializeShowImage;
    AddGlass;
end;

Procedure CurPageChanged(CurPageID: Integer);
  Begin
   DeinitializeSlideShow;
   KillTimer(0, TimerID);
    if (WizardForm.ComponentsList.ItemCount*ScaleY(18)< ScaleX(120)) then
      begin
    WizardForm.ComponentsList.Height := WizardForm.ComponentsList.ItemCount*ScaleY(18);
      end else
      begin
    WizardForm.ComponentsList.Height := ScaleY(120);
      end;
    WizardForm.ComponentsList.Top := ScaleY(260)-WizardForm.ComponentsList.Height;
    BorderWidth := (WizardForm.ComponentsList.Width-WizardForm.ComponentsList.ClientWidth) div 2;
    WizardForm.ComponentsList.LoadBGBmpFromFile(BGImgFile, WizardForm.ComponentsList.Left+BorderWidth, WizardForm.ComponentsList.Top+BorderWidth);
    WizardForm.TypesCombo.Top := WizardForm.ComponentsList.Top-WizardForm.TypesCombo.Height;

    if (WizardForm.TasksList.ItemCount*ScaleY(25)< ScaleX(120)) then
      begin
    WizardForm.TasksList.Height := WizardForm.TasksList.ItemCount*ScaleY(25);
      end else
      begin
    WizardForm.TasksList.Height := ScaleY(120);
      end;
    WizardForm.TasksList.Top := ScaleY(260)-WizardForm.TasksList.Height;
    BorderWidth := (WizardForm.TasksList.Width-WizardForm.TasksList.ClientWidth) div 2;
    WizardForm.TasksList.LoadBGBmpFromFile(BGImgFile, WizardForm.TasksList.Left+BorderWidth, WizardForm.TasksList.Top+BorderWidth);

  for Pag:=0 to getArrayLength(Pages)-1 do
    begin
      Pages[Pag].Hide;Pages[Pag].Refresh;
    end;

    WizardForm.BackButton.Hide;
    WizardForm.BackButton.Caption := 'Настроить';
    WizardForm.ProgressGauge.Hide;
  #ifdef SecondProgressBar
    SecondProgressBar.Hide;
  #endif

        case CurPageID of

   wpReady:    begin
                ComponentsListClick(nil);
                TasksListClick(nil);

                DirEditOnChange(nil);
                WizardForm.DirEdit.OnChange:=@DirEditOnChange;

                WizardForm.BackButton.Show;
                Pages[0].Show;
               end;

  wpInstalling:begin
                Pages[2].Show;
                WizardForm.ProgressGauge.Show;
                #ifdef SecondProgressBar
                  SecondProgressBar.Show;
                #endif
                InitializeSlideShow(Pages[2].Handle, 0, 0, Pages[1].Width, Pages[1].Height, true, 2);
                CurrentPicture:=1;
                ShowImage(piclist.strings[CurrentPicture-1], 2);
                TimerID:=SetTimer(0, 0, 3000, WrapTimerProc(@OnTimer, 4)); //задержка 3000 мс (3 секунды)
                WizardForm.CancelButton.Hide;
               end;

  wpFinished:  begin
    WizardForm.NextButton.Align := alBottom;
    WizardForm.NextButton.Height := ScaleY(48);
                Pages[3].Show;
                FinishedLabel.Caption := WizardForm.FinishedLabel.Caption;
                FinishedHeadingLabel.Caption := WizardForm.FinishedHeadingLabel.Caption;
                  if ISDoneError then
                  begin
                    LabelTime3.Hide;
                    WizardForm.Caption:= ExpandConstant('{cm:Error}');
                    FinishedLabel.Font.Color:= clRed;
                    FinishedLabel.Caption:= SetupMessage(msgSetupAborted) ;
                  end;
               end;
        end;
  end;

//---------------------- ISDone ----------------------\\
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
    WizardForm.OnClose:= @CancelOnClick;
    WizardForm.Caption:=ExpandConstant('{cm:Extracted}');
    ISDoneCancel:=0;

// Распаковка всех необходимых файлов в папку {tmp}.

ExtractTemporaryFile('unarc.dll');

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
      ExtractTemporaryFile('precomp038.exe');
      ExtractTemporaryFile('precomp040.exe');
      ExtractTemporaryFile('precomp041.exe');
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

    ExtractTemporaryFile('russian.ini');

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
        ChangeLanguage('Russian');
        if not SrepInit('',512,0) then break;
        if not PrecompInit(PCFVer) then break;
        if not FileSearchInit(false) then break;

        if not ISArcExtract ( 0, 0, ExpandConstant('{src}\*.arc'), ExpandConstant('{app}'), '', false, '', '', ExpandConstant('{app}'), notPCFonFLY {PCFonFLY}) then break;

//    далее находятся закомментированые примеры различных функций распаковки (чтобы каждый раз не лазить в справку за примерами)
(*
        if not ISArcExtract    ( 0, 0, ExpandConstant('{src}\arc.arc'), ExpandConstant('{app}\'), '', false, '', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\'), notPCFonFLY{PCFonFLY}) then break;
        if not IS7ZipExtract   ( 0, 0, ExpandConstant('{src}\CODMW2.7z'), ExpandConstant('{app}\data1'), false, '') then break;
        if not ISRarExtract    ( 0, 0, ExpandConstant('{src}\data_*.rar'), ExpandConstant('{app}'), false, '') then break;
        if not ISSRepExtract   ( 0, 0, ExpandConstant('{app}\data1024_1024.srep'),ExpandConstant('{app}\data1024.arc'), true) then break;
        if not ISPrecompExtract( 0, 0, ExpandConstant('{app}\data.pcf'),    ExpandConstant('{app}\data.7z'), true) then break;
        if not ISxDeltaExtract ( 0, 0, 0, 640, ExpandConstant('{app}\in.pcf'), ExpandConstant('{app}\*.diff'),   ExpandConstant('{app}\out.dat'), false) then break;
        if not ISPackZIP       ( 0, 0, ExpandConstant('{app}\1a1\*'), ExpandConstant('{app}\1a1.pak'), 2, false ) then break;
        if not ISExec          ( 0, 0, 0, ExpandConstant('{tmp}\Arc.exe'), ExpandConstant('x -o+ "{src}\001.arc" "{app}\"'), ExpandConstant('{tmp}'), '...',true) then break;
        if not ShowChangeDiskWindow ('Пожалуйста, вставьте второй диск и дождитесь его инициализации.', ExpandConstant('{src}'),'CODMW_2.arc') then break;

//    распаковка группы файлов посредством внешнего приложения

        FindHandle1:=ISFindFiles(0,ExpandConstant('{app}\*.ogg'),ColFiles1);
        ExecError:=false;
        while not ExecError and ISPickFilename(FindHandle1,ExpandConstant('{app}\'),CurIndex1,true) do begin
          InFilePath:=ISGetName(0);
          OutFilePath:=ISGetName(1);
          OutFileName:=ISGetName(2);
          ExecError:=not ISExec(0, 0, 0, ExpandConstant('{tmp}\oggdec.exe'), '"'+InFilePath+'" "'+OutFilePath+'"',ExpandConstant('{tmp}'),OutFileName,false);
        end;
        ISFindFree(FindHandle1);
        if ExecError then break;
*)

        ISDoneError:=false;
      until true;
      ISDoneStop;
    end;
  end;
  if (CurStep=ssPostInstall) and ISDoneError then begin
    Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', false);
  end;
end;
//---------------------- ISDone ----------------------\\

procedure DeinitializeSetup();
begin
  iswin7_free;
end;
