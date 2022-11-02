#define Video "fon.avi"

[Setup]
AppName=My Application
AppVersion=1.5
DefaultDirName={pf}\My Application

[Files]
Source: "IsDXvideo.dll"; DestDir: "{app}"
Source: {#Video}; Flags: dontcopy

[Types]
Name: rus; Description: Полностью русский язык; Flags: iscustom
Name: eng; Description: Полностью английский язык язык;
Name: ruseng; Description: Русская озвучка, английские субтитры;
Name: engrus; Description: Английская озвучка, русские субтитры; 

[Components]
Name: text; Description: Язык субтитров; Types: rus eng ruseng engrus; Flags: fixed
Name: text\rus; Description: Русский; Flags: exclusive; Types: rus engrus;
Name: text\eng; Description: Английский; Flags: exclusive; Types: eng ruseng;
Name: voice; Description: Язык озвучки; Types: rus eng ruseng engrus; Flags: fixed
Name: voice\rus; Description: Русский; Flags: exclusive; Types: rus ruseng;
Name: voice\eng; Description: Английский; Flags: exclusive; Types: eng engrus;

[Tasks]
Name: VCCheck; Description: Установить Microsoft Visual C++ 2005 Redist
Name: PhysXCheck; Description: Установить Nvidia PhysX

[Code]
function DXvideoAdd(aHwnd:HWND;FileName:PAnsiChar;volume,aLeft,aTop,aWidth,aHeight:Integer;Time:Double):Integer;external 'DXvideoAdd@files:IsDXvideo.dll stdcall';
// aHwnd - Хендл окна, на котором воспроизводится видео
// aFile - Видеофайл
// aLeft,aTop,aWidth,aHeight - Координаты, ширина и высота
// volume - начальная громкость
// Time - время от начала ролика, в секундах, на котором он встанет на паузу, при инициализации
procedure DXvideoSetPosition(DXV,aLeft,aTop,aWidth,aHeight:Integer);external 'DXvideoSetPosition@files:IsDXvideo.dll stdcall';
// aLeft,aTop,aWidth,aHeight - Новые координаты, ширина и высота
procedure DXvideoFullScreen(DXV:Integer);external 'DXvideoFullScreen@files:IsDXvideo.dll stdcall';
// воспроизведение во весь экран хз, нужно-ли
procedure DXvideoSetVisible(DXV:Integer;Show:Boolean);external 'DXvideoSetVisible@files:IsDXvideo.dll stdcall';
// показ-скрытие видео-окна в зависимости от значения Show: True -показать, False - скрыть
procedure DXvideoRun(DXV:Integer);external 'DXvideoRun@files:IsDXvideo.dll stdcall';
// Пуск воспроизведения
procedure DXvideoPause(DXV:Integer);external 'DXvideoPause@files:IsDXvideo.dll stdcall';
// Пауза воспроизведения
procedure DXvideoFree;external 'DXvideoFree@files:IsDXvideo.dll stdcall';
// освобождение видео. После этого управление невозможно, необходима инициализация заново.ъ

function  DXvideoGetVisible(DXV:Integer):Boolean;external 'DXvideoGetVisible@files:IsDXvideo.dll stdcall';
// Получение востояния видимости видео
function  DXvideoGetFinishedTime(DXV:Integer):Double;external 'DXvideoGetFinishedTime@files:IsDXvideo.dll stdcall';
// Получение длииы видеопотока в секундах
function  DXvideoGetCurrentTime(DXV:Integer):Double;external 'DXvideoGetCurrentTime@files:IsDXvideo.dll stdcall';
// Получение текущей позиции видеопотока в секундах
function  DXvideoSetTime(DXV:Integer;time:Double):Double;external 'DXvideoSetTime@files:IsDXvideo.dll stdcall';
// позволяет перейти на нужную точку видеопотока в секундах

//-------- Управление громкостью - только видеопоток, громкость системы не трогается-------
procedure DXvideoVolumeUp(DXV:Integer);external 'DXvideoVolumeUp@files:IsDXvideo.dll stdcall';
// Увеличение громкости воспроизведение
procedure DXvideoVolumeDown(DXV:Integer);external 'DXvideoVolumeDown@files:IsDXvideo.dll stdcall';
// Уменьшение громкости воспроизведения
//---------------------------------------------------
procedure DXvideoInit;external 'DXvideoInit@files:IsDXvideo.dll stdcall';
// Инициализируем обслуживание видеороликов. без этой команды работать будет.но скорей всего криво
//---------------------------------------------------
procedure DXvideoSynch(DXV1,DXV2:Integer);external 'DXvideoSynch@files:IsDXvideo.dll stdcall';
// синхронизация двух роликов по времени
// DXV1 - эталон, с которого берется мерка времени
// DXV2 - видео, которое нужно подогнать под эталон
//---------------------------------------------------

var
  showvid,startdx,full:Boolean;
  showvid1,startdx1,full1:Boolean;
  DXbtn1,DXbtn:Array[0..4]of TNewButton;
  Portal,Portal2:Integer;

#ifdef IS_ENHANCED
function CutStr(D:Double):String;
var
  S:String;
begin
S:=FloatToStr(D);
  Delete(S,6,Length(S)-6);
  Result:=S;
end;

procedure VideoTmrTimer(Sender: TObject);
begin
  WizardForm.Caption:= CutStr(DXvideoGetCurrentTime(Portal))+#02#02+CutStr(DXvideoGetCurrentTime(Portal2));
end;
#endif

procedure DXbtnClick(Sender: TObject);
begin
  case Sender of
  DXbtn[0]:
      begin
      case startdx of
        True: begin
          DXvideoPause(Portal);
          DXbtn[0].Caption := '4';
        end;
        False:begin
          DXvideoRun(Portal);
          DXbtn[0].Caption := ';';
        end;
      end;
      startdx:= not startdx;
      DXbtn[1].Enabled:=startdx;
    end;
  DXbtn[1]:
      begin
      case full of
        True: begin
          DXvideoSetPosition(Portal,ScaleX(0),ScaleY(0),ScaleX(480),ScaleY(272));
          DXbtn[1].Font.Name:='Symbol';
          DXbtn[1].Caption := 'Ы';
        end;
        False:begin
          DXvideoSetPosition(Portal,ScaleX(-180),ScaleY(0),ScaleX(830),ScaleY(437));
          DXbtn[1].Font.Name:='MS Outlook';
          DXbtn[1].Caption := 'M';
        end;
      end;
      full:= not full;
    end;
  DXbtn[2]:
    begin
      showvid:= not DXvideoGetVisible(Portal);
      startdx:= showvid;
      DXbtn[1].Enabled:=startdx;
      DXvideoSetVisible(Portal,showvid);
    end;
  DXbtn[3]:DXvideoVolumeDown(Portal);
  DXbtn[4]:DXvideoVolumeUp(Portal);
  DXbtn1[0]:
      begin
      case startdx1 of
        True: begin
          DXvideoPause(Portal2);
          DXbtn1[0].Caption := '4';
        end;
        False:begin
          DXvideoRun(Portal2);
          DXbtn1[0].Caption := ';';
        end;
      end;
      startdx1:= not startdx1;
      DXbtn1[1].Enabled:=startdx1;
    end;
  DXbtn1[1]:
      begin
      case full1 of
        True: begin
          DXvideoSetPosition(Portal2,ScaleX(120),ScaleY(17),ScaleX(240),ScaleY(135));
          DXbtn1[1].Font.Name:='Symbol';
          DXbtn1[1].Caption := 'Ы';
        end;
        False:begin
          DXvideoSetPosition(Portal2,ScaleX(0),ScaleY(-50),ScaleX(480),ScaleY(272));
          DXbtn1[1].Font.Name:='MS Outlook';
          DXbtn1[1].Caption := 'M';
        end;
      end;
      full1:= not full1;
    end;
  DXbtn1[2]:
    begin
      showvid:= not DXvideoGetVisible(Portal2);
      startdx1:= showvid;
      DXbtn1[1].Enabled:=startdx1;
      DXvideoSetVisible(Portal2,showvid);
    end;
  DXbtn1[3]:DXvideoVolumeDown(Portal2);
  DXbtn1[4]:DXvideoVolumeUp(Portal2);
  end;
end;

procedure NewClick(Sender: TObject);
begin
  DXvideoSynch(Portal2,Portal);
end;

procedure InitializeWizard();
var
  i:Integer;
begin
  with WizardForm do
  begin
    AutoScroll := False;
    ClientHeight := ScaleY(480);
    ClientWidth := ScaleX(475);
    OuterNotebook.SetBounds(ScaleX(0),ScaleY(272),ScaleX(480),ScaleY(170));
    InnerNotebook.SetBounds(ScaleX(25),ScaleY(1),ScaleX(425),ScaleY(169));
    InnerPage.Color:=clWhite;

    WizardBitmapImage.Hide;
    WizardBitmapImage2.Hide;
    MainPanel.Hide;

    Bevel.SetBounds(ScaleX(0),ScaleY(442),ScaleX(470),ScaleY(1));
    Bevel1.SetBounds(ScaleX(0),ScaleY(0),ScaleX(470),ScaleY(1));

    BackButton.SetBounds(ScaleX(227),ScaleY(447),ScaleX(80),ScaleY(25));
    NextButton.SetBounds(ScaleX(307),ScaleY(447),ScaleX(80),ScaleY(25));
    CancelButton.SetBounds(ScaleX(387),ScaleY(447),ScaleX(80),ScaleY(25));

    for i:=0 to 4 do
    begin
      DXbtn[i]:=TNewButton.Create(WizardForm);
      with DXbtn[i] do
      begin
        Parent := WizardForm;
        SetBounds(ScaleX(3+i*30),ScaleY(443),ScaleX(25),ScaleY(17));
            Font.Size:=10;
        case i of
        0:begin
            Font.Name:='Webdings';
            Caption := '4';
          end;
        1:begin
            Font.Name:='Symbol';
            Caption := 'Ы';
            Enabled:=False;
          end;
        2:begin
            Caption := '^';
          end;
        3:begin
            Caption := '-';
          end;
        4:begin
            Caption := '+';
          end;
        end;
        OnClick := @DXbtnClick;
      end;
    end;

    for i:=0 to 4 do
    begin
      DXbtn1[i]:=TNewButton.Create(WizardForm);
      with DXbtn1[i] do
      begin
        Parent := WizardForm;
        SetBounds(ScaleX(3+i*30),ScaleY(463),ScaleX(25),ScaleY(17));
            Font.Size:=10;
        case i of
        0:begin
            Font.Name:='Webdings';
            Caption := '4';
          end;
        1:begin
            Font.Name:='Symbol';
            Caption := 'Ы';
            Enabled:=False;
          end;
        2:begin
            Caption := '^';
          end;
        3:begin
            Caption := '-';
          end;
        4:begin
            Caption := '+';
          end;
        end;
        OnClick := @DXbtnClick;
      end;
    end;

  with TNewButton.Create(WizardForm) do
  begin
    Parent := WizardForm;
    SetBounds(ScaleX(160),ScaleY(447),ScaleX(50),ScaleY(25));
    Caption := 'Synch';
    OnClick := @NewClick;
  end;

    WelcomeLabel1.Hide;
    WelcomeLabel2.Hide;

    DiskSpaceLabel.Top := ScaleY(150);

    SelectComponentsLabel.SetBounds(ScaleX(0),ScaleY(1),ScaleX(425),ScaleY(40));
    TypesCombo.SetBounds(ScaleX(0),ScaleY(50),ScaleX(425),ScaleY(21));
    ComponentsList.SetBounds(ScaleX(0),ScaleY(75),ScaleX(425),ScaleY(90));

    NoIconsCheck.Top := ScaleY(150);

    TasksList.SetBounds(ScaleX(0),ScaleY(75),ScaleX(425),ScaleY(90));
    TasksList.Color:=clWhite;
    TasksList.BorderStyle:=bsSingle;
    SelectTasksLabel.Width := ScaleX(465);

    ReadyMemo.SetBounds(ScaleX(0),ScaleY(50),ScaleX(425),ScaleY(115));
    ReadyMemo.Color:=clWhite;
    ReadyMemo.BorderStyle:=bsSingle;
    ReadyLabel.Width := ScaleX(465);

    FilenameLabel.SetBounds(ScaleX(0),ScaleY(110),ScaleX(425),ScaleY(14));
    StatusLabel.SetBounds(ScaleX(0),ScaleY(90),ScaleX(425),ScaleY(14));
    ProgressGauge.SetBounds(ScaleX(0),ScaleY(130),ScaleX(425),ScaleY(20));

    FinishedHeadingLabel.SetBounds(ScaleX(25),ScaleY(5),ScaleX(425),ScaleY(14));
    FinishedLabel.SetBounds(ScaleX(25),ScaleY(65),ScaleX(425),ScaleY(14));

    ExtractTemporaryFile('{#Video}');
    Portal := DXvideoAdd(Handle,ExpandConstant('{tmp}\{#Video}'),-2000,ScaleX(0),ScaleY(0),ScaleX(480),ScaleY(272),73);
    Portal2:= DXvideoAdd(WelcomePage.Handle,ExpandConstant('{tmp}\{#Video}'),-2000,ScaleX(120),ScaleY(17),ScaleX(240),ScaleY(135),73);
  end;
  showvid:= True;
  showvid1:= True;
  DXvideoInit;
#ifdef IS_ENHANCED
  with TTimer.Create(WizardForm) do
  begin
    Interval := 10;
    OnTimer := @VideoTmrTimer;
  end;
#endif
end;

procedure DeinitializeSetup();
begin
  DXvideoFree;
end;
