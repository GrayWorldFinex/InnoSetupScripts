;-------------------------------------------------------------------------------------------------------------------------------;
;******    ****                       **                         ****                                ****                       ;
;  **      **                         ***                          **                                  **                       ;
;  **    **                                                        **                                  **                       ;
;  **    **      ******  ****      ******        ****  ****        **    ****      **********          **          **********   ;
;  **  **            ****    **        **          ****    **      **    **      **          **        **        **          ** ;
;  ******            **                **          **      **      **  **        **************        **          ******       ;
;  **    **          **                **          **      **      ******        **                    **                ****   ;
;  **      **        **                **          **      **      **    **      **          **        **        **          ** ;
;******    ****  **********        **********    ******  ******  ****      ****    **********      **********      **********   ;
;                                **************                                                                                 ;
;                                **    **    **                                                                                 ;
;                                      **                                                                                       ;
;                                      **          **********      ********      ******  **                                     ;
;                                      **        **          **            **      **  **  **                                   ;
;                                      **        **************    **********      **  **  **                                   ;
;                                      **        **              **        **      **  **  **                                   ;
;                                      **        **          **  **        **      **  **  **                                   ;
;                                    ******        **********      ********  **  ****  **  ****                                 ;
;-------------------------------------------------------------------------------------------------------------------------------;
;                                                                                                               Date: 01.05.2012;
;                                                                                                           Script version: 1.01;
;                                                                                                                 © KrinkelsTeam;
;-------------------------------------------------------------------------------------------------------------------------------;

//===== [озу для распаковки] =====\\
#define NeedMem "128"

#define NeedSize "10000"
#define TNeedSize "15000"

;#define Components

;#define records

//===== [Дополнительные библиотеки (для ISDone)] =====\\
;#define PrecompInside
;#define SrepInside
#define facompress
;#define precomp "0.42"
;#define unrar
;#define XDelta
;#define PackZIP

//===== [название игры] =====\\
#define GameName "FIFA 12"
//===== [версия игры] =====\\
#define GameVersion "1.0.1"
//===== [имя экзешника игры] =====\\
#define ExeFile "Launcher.exe"
//===== [версия инсталла] =====\\
#define InstallVersion "1.01"
//===== [название группы] =====\\
#define Company "Krinkels Team"
//===== [ник репакера] =====\\
#define RePacker "Krinkels Team"

[Setup]
AppName={#GameName}
DefaultDirName={pf}\{#Company}\{#GameName}
DefaultGroupName={#Company}\{#GameName}
AppVerName={#GameName} v{#GameVersion} / RePack by {#RePacker}
VersionInfoDescription={#GameName} / RePack by {#RePacker}
VersionInfoTextVersion={#InstallVersion}
VersionInfoVersion={#InstallVersion}
VersionInfoCompany={#Company}
AppCopyright=© {#Company}
InfoBeforeFile=Info.rtf
ShowTasksTreeLines=Yes
DisableProgramGroupPage=True
BitmapResource=FonL:Files\FonL.bmp|FonL1:Files\FonL1.bmp|WizImg:Files\WizImg.bmp|FonR:Files\FonR.bmp|Cat:Files\Cat.bmp|Btn1:Files\Btn1.bmp|Btn2:Files\Btn2.bmp

[CustomMessages]
ru.Extracted=Распаковка архивов...
ru.Error=Ошибка распаковки!
ru.ElapsedTime=Прошло:
ru.RemainingTime=Осталось:
ru.ExtractedFile=Извлекается файл:

ru.Run=Запустить {#GameName}
ru.Uninstall=Удалить {#GameName}
ru.Text=Язык интерфейса:
ru.Voice=Язык озвучки:
ru.Russian=Русский.
ru.English=Английский.
ru.CreateDesktopIcon=Создать ярлык на Рабочем столе.
ru.FreeSpace=Свободно места на выбранном диске...
ru.TNeedSpace=Для распаковки требуется................
ru.Redist=Дополнительное ПО:
ru.DirectX=Обновить / Установить DirectX.
ru.VCRedist=Обновить / Установить VCRedist.
ru.StWelcome=Приветствие
ru.StCats=Каталоги
ru.StTasks=Задачи
ru.StInfo=Информация
ru.StReady=Подготовка
ru.StInstalling=Установка
ru.StFinished=Завершение
ru.TB=Тб
ru.GB=Гб
ru.MB=Мб

[Languages]
Name: ru; MessagesFile: Lang\Russian.isl

//===== [компоненты] =====\\:
[Types]
Name: full; Description: Полная установка; Flags: iscustom

[Components]
Name: CompGame; Description: {#GameName}:; Types: full; Flags: fixed
Name: CompGame\Text; Description: {cm:Text}; Flags: fixed collapsed; Types: Full
Name: CompGame\Text\Eng; Description: {cm:English}; Flags: exclusive; ExtraDiskSpaceRequired: 50000000
Name: CompGame\Text\Rus; Description: {cm:Russian}; Flags: exclusive; ExtraDiskSpaceRequired: 60000000
Name: CompGame\Voice; Description: {cm:Voice}; Flags: fixed collapsed; Types: Full
Name: CompGame\Voice\Eng; Description: {cm:English}; Flags: exclusive; ExtraDiskSpaceRequired: 500000000
Name: CompGame\Voice\Rus; Description: {cm:Russian}; Flags: exclusive; ExtraDiskSpaceRequired: 600000000

Name: Redist; Description: {cm:Redist}; Types: full; Flags: collapsed
Name: Redist\DirectX; Description: {cm:DirectX}; Types: full;
Name: Redist\VCRedist; Description: {cm:VCRedist}; Types: full;

Name: CreateDesktopIcon; Description: {cm:CreateDesktopIcon}; Types: full; Flags: collapsed

[Run]
Filename: {src}\Redist\DXSETUP.exe; Parameters: /q; Flags: skipifdoesntexist; Components: Redist\DirectX; Check: CheckError;
Filename: {src}\Redist\vcredist_x86.exe; Parameters: /q; Flags: skipifdoesntexist; Components: Redist\VCRedist; Check: Not IsWin64 and CheckError;
Filename: {src}\Redist\vcredist_x64.exe; Parameters: /q; Flags: skipifdoesntexist; Components: Redist\VCRedist; Check: IsWin64 and CheckError;

//===== [иконки] =====\\:
[Icons]
Name: {group}\{cm:Run}; Filename: {app}\{#ExeFile}; Check: CheckError and NoIconsCheck;
Name: {group}\{cm:Uninstall}; Filename: {uninstallexe}; Check: CheckError and NoIconsCheck;
Name: {commondesktop}\{#GameName}; Filename: {app}\{#ExeFile}; Workingdir: {app}; Components: CreateDesktopIcon; Check: CheckError;

[UninstallDelete]
Type: FilesAndOrDirs; Name: {app}

[Code]

#include "Modules\Header.iss"
#include "Modules\ISDoneHeader.iss"

procedure InitializeWizard();
begin
  with WizardForm do begin
    AutoScroll := False;
    ClientHeight := ScaleY(400);
    ClientWidth := ScaleX(800);
    Font.Color:= clWhite;
    OuterNotebook.SetBounds(ScaleX(0), ScaleY(0), ScaleX(579), ScaleY(400));
    InnerNotebook.SetBounds(ScaleX(10), ScaleY(10), ScaleX(560), ScaleY(380));
    Position:= poScreenCenter;
    OnMouseMove:= @WizardLabelMove;
    
    for n := 0 to OuterNotebook.PageCount-1 do begin
      with TBitmapImage.Create(WizardForm) do begin
        Parent := OuterNotebook.Pages[n];
        SetBounds(0, 0, OuterNotebook.Pages[n].ClientWidth, OuterNotebook.Pages[n].ClientHeight);
        Bitmap.LoadFromResourceName(HInstance, '_IS_FonL');
      end;
      with TBitmapImage.Create(WizardForm) do begin
        Parent := OuterNotebook.Pages[n];
        SetBounds(ScaleX(40), ScaleY(79), ScaleX(520), ScaleY(190));
        Bitmap.LoadFromResourceName(HInstance, '_IS_WizImg');
      end;
    end;

    for n := 0 to InnerNotebook.PageCount-1 do begin
      with TBitmapImage.Create(WizardForm) do begin
        Parent := InnerNotebook.Pages[n];
        SetBounds(-InnerNotebook.Left, -InnerNotebook.Top, InnerNotebook.Pages[n].ClientWidth + InnerNotebook.Left, InnerNotebook.Pages[n].ClientHeight + InnerNotebook.Top);
        Bitmap.LoadFromResourceName(HInstance, '_IS_FonL1');
        Name := 'Bgnd_' + InnerNotebook.Pages[n].Name;
        OnMouseMove:= @WizardLabelMove;
      end;
    end;
    
    InnerPage.Color:= $272525;
    MainPanel.Color:= $585858;
    MainPanel.SetBounds(ScaleX(85), ScaleY(25), ScaleX(470), ScaleY(40));
    PageNameLabel.Font:= WizardForm.Font;
    PageNameLabel.SetBounds(ScaleX(0), ScaleY(3), ScaleX(470), ScaleY(14));
    PageDescriptionLabel.SetBounds(ScaleX(10), ScaleY(15), ScaleX(470), ScaleY(26));

    with WelcomeLabel1 do begin
      SetBounds(ScaleX(85), ScaleY(35), ScaleX(470), ScaleY(30));
      Font.Size:= 9;
      Font.Color:= clWhite;
      Color:= $585858;
    end;
    
    with WelcomeLabel2 do begin
      SetBounds(ScaleX(50), ScaleY(285), ScaleX(500), ScaleY(75));
      Font.Size:= 9;
      Font.Color:= clWhite;
      Color:= $585858;
    end;
    
    InfoBeforeClickLabel.SetBounds(ScaleX(40), ScaleY(80), ScaleX(500), ScaleY(20));
    InfoBeforeMemo.SetBounds(ScaleX(40), ScaleY(110), ScaleX(497), ScaleY(230));
    InfoBeforeMemo.Color:= $272525;
    InfoBeforeMemo.TabStop:= False;
    
    SelectDirBrowseLabel.SetBounds(ScaleX(40), ScaleY(80), ScaleX(500), ScaleY(40));
    SelectDirLabel.SetBounds(ScaleX(50), ScaleY(129), ScaleX(250), ScaleY(20));
    DirEdit.SetBounds(ScaleX(50), ScaleY(155), ScaleX(370), ScaleY(21));
    DirEdit.Color:= $272525;
    DirEdit.TabStop:=False;
    DirEdit.OnChange:= @GetFreeSpaceCaption;
    DirBrowseButton.SetBounds(ScaleX(430), ScaleY(155), ScaleX(80), ScaleY(23));
    DirBrowseButton.Font.Color:= clBlack;
    
    FreeSpaceLbl:= Tlabel.Create(WizardForm);
    FreeSpaceLbl.Parent:= SelectDirPage;
    FreeSpaceLbl.SetBounds(ScaleX(50), ScaleY(180), ScaleX(450), ScaleY(20));

    DiskSpaceLabel.SetBounds(ScaleX(50), ScaleY(200), ScaleX(450), ScaleY(20));
    
    TNeedSizeLbl:= Tlabel.Create(WizardForm);
    TNeedSizeLbl.Parent:= SelectDirPage;
    TNeedSizeLbl.SetBounds(ScaleX(50), ScaleY(220), ScaleX(450), ScaleY(20));
    
    SelectStartMenuFolderLabel.Parent:= SelectDirPage;
    SelectStartMenuFolderLabel.SetBounds(ScaleX(50), ScaleY(260), ScaleX(320), ScaleY(20));
    GroupEdit.Parent:= SelectDirPage;
    GroupEdit.SetBounds(ScaleX(50), ScaleY(285), ScaleX(370), ScaleY(21));
    GroupEdit.Color:= $272525;
    GroupBrowseButton.Parent:= SelectDirPage;
    GroupBrowseButton.SetBounds(ScaleX(430), ScaleY(285), ScaleX(80), ScaleY(23));
    GroupBrowseButton.Font.Color:= clBlack;

    NoIconsCb:= TNewCheckBox.Create(WizardForm);
    NoIconsCb.Parent:= WizardForm.SelectDirPage;
    NoIconsCb.SetBounds(ScaleX(50), ScaleY(310), ScaleX(20), ScaleY(20));
    NoIconsCb.OnClick:= @CheckNoIcons;

    SelectComponentsLabel.SetBounds(ScaleX(40), ScaleY(80), ScaleX(470), ScaleY(50));
    ComponentsList.SetBounds(ScaleX(40), ScaleY(130), ScaleX(497), ScaleY(170));
    ComponentsList.Color:= $272525;
    ComponentsList.TreeViewStyle := True;
    ComponentsDiskSpaceLabel.SetBounds(ScaleX(40), ScaleY(310), ScaleX(497), ScaleY(20));
    
    ReadyLabel.SetBounds(ScaleX(40), ScaleY(80), ScaleX(470), ScaleY(50));
    ReadyMemo.SetBounds(ScaleX(40), ScaleY(140), ScaleX(497), ScaleY(210));
    ReadyMemo.Color:= $272525;
    ReadyMemo.ScrollBars:= ssVertical;
    
    StatusLabel.SetBounds(ScaleX(50), ScaleY(100), ScaleX(417), ScaleY(20));
    FilenameLabel.SetBounds(ScaleX(50), ScaleY(125), ScaleX(417), ScaleY(20));
    ProgressGauge.SetBounds(ScaleX(50), ScaleY(150), ScaleX(480), ScaleY(21));
    
    LabelPct:= TLabel.Create(WizardForm);
    with LabelPct do begin
      Parent:= WizardForm.InstallingPage;
      Transparent:= True;
      SetBounds(ScaleX(230), ScaleY(200), ScaleX(460), ScaleY(41));
      Font.Size:= 20;
      Alignment:= taCenter;
      Font.Name:= 'Verdana';
    end;
    
    LabelTime:= TLabel.Create(WizardForm);
    with LabelTime do begin
      Parent:= WizardForm.InstallingPage;
      Transparent:= True;
      SetBounds(ScaleX(30), ScaleY(180), ScaleX(460), ScaleY(21));
      AutoSize:= False;
      Alignment:= taCenter;
    end;
    
    Bevel.Parent:= SelectDirPage;
    Bevel.SetBounds(ScaleX(40), ScaleY(135), ScaleX(497), ScaleY(110));
    Bevel.Shape:= bsFrame;
    
    Bevel1.Parent:= SelectDirPage;
    Bevel1.SetBounds(ScaleX(40), ScaleY(265), ScaleX(497), ScaleY(70));
    Bevel1.Shape:= bsFrame;
    
    with TLabel.Create(WizardForm) do begin
      Parent:= WizardForm.SelectDirPage;
      SetBounds(ScaleX(70), ScaleY(313), ScaleX(200), ScaleY(20));
      Caption:= NoIconsCheck.Caption;
      Cursor:= crHand;
      OnClick:= @NoIconsLblClick;
    end;

    with FinishedHeadingLabel do begin
      SetBounds(ScaleX(85), ScaleY(35), ScaleX(470), ScaleY(30));
      Font.Size:= 9;
      Font.Color:= clWhite;
      Color:= $585858;
    end;
    
    with FinishedLabel do begin
      SetBounds(ScaleX(50), ScaleY(283), ScaleX(500), ScaleY(83));
      Font.Size:= 9;
      Font.Color:= clWhite;
      Color:= $585858;
    end;

    with TBitmapImage.Create(WizardForm) do begin
      Parent := WizardForm;
      Left := ScaleX(579);
      Top := ScaleY(0);
      Width := ScaleX(221);
      Height := ScaleY(400);
      Bitmap.LoadFromResourceName(HInstance, '_IS_FonR');
    end;
    
    with WizardSmallBitmapImage do begin
      Parent := WizardForm;
      Left := ScaleX(592);
      Width := ScaleX(199);
      Height := ScaleY(39);
      Bitmap.LoadFromResourceName(HInstance, '_IS_Cat');
    end;
    
    NextButton.SetBounds(ScaleX(697), ScaleY(335), ScaleX(80), ScaleY(30));
    BackButton.SetBounds(ScaleX(605), ScaleY(335), ScaleX(80), ScaleY(30));
    CancelButton.SetBounds(0,0,0,0);

    WizardLabel:= TLabel.Create(WizardForm)
    WizardLabel.SetBounds(ScaleX(0), ScaleY(0), ScaleX(WizardForm.Width), ScaleY(WizardForm.Height))
    WizardLabel.Transparent:= True;
    WizardLabel.AutoSize:=false;
    WizardLabel.OnMouseMove:=@WizardLabelMove
    WizardLabel.Parent:= WizardForm;
    
    LoadButtonImage('_IS_Btn1', BackButton);
    LoadButtonImage('_IS_Btn1', NextButton);
    LoadButtonImage('_IS_Btn2', DirBrowseButton);
    LoadButtonImage('_IS_Btn2', GroupBrowseButton);
  end;
  
  for n:=0 to 6 do begin
    with TLabel.Create(WizardForm) do begin
      Parent:= WizardForm;
      Transparent:= True;
      SetBounds(ScaleX(615), 0, ScaleX(110), ScaleY(20));
      AutoSize:= True;
      Font.Size:= 12;
      Font.Style:= [fsBold];
      Font.Color:= clBlack;
      case n of
        0: begin
            Top:= ScaleY(20);
            Caption:= ExpandConstant('{cm:StWelcome}');
        end;
        1: begin
            Top:= ScaleY(62);
            Caption:= ExpandConstant('{cm:StInfo}');
        end;
        2: begin
            Top:= ScaleY(105);
            Caption:= ExpandConstant('{cm:StCats}');
        end;
        3: begin
            Top:= ScaleY(147);
            Caption:= ExpandConstant('{cm:StTasks}');
        end;
        4: begin
            Top:= ScaleY(192);
            Caption:= ExpandConstant('{cm:StReady}');
        end;
        5: begin
            Top:= ScaleY(235);
            Caption:= ExpandConstant('{cm:StInstalling}');
        end;
        6: begin
            Top:= ScaleY(277);
            Caption:= ExpandConstant('{cm:StFinished}');
        end;
      end;
    end;
  end;
  SetWindowLong(WizardForm.Handle, (-20), GetWindowLong(WizardForm.Handle, (-20)) or $2000000);
end;

Procedure CurPageChanged(CurPageID: Integer);
Begin
 case CurPageID of
  wpWelcome: WizardForm.WizardSmallBitmapImage.Top:= ScaleY(9);
  wpInfoBefore: WizardForm.WizardSmallBitmapImage.Top:= ScaleY(51);
  wpSelectDir:
  begin
    WizardForm.WizardSmallBitmapImage.Top:= ScaleY(94);
    GetFreeSpaceCaption(nil);
  end;
  wpSelectComponents: WizardForm.WizardSmallBitmapImage.Top:= ScaleY(138);
  wpReady: WizardForm.WizardSmallBitmapImage.Top:= ScaleY(182);
  wpInstalling:
  begin
    WizardForm.CancelButton.SetBounds(ScaleX(697),ScaleY(335),ScaleX(80),ScaleY(30));
    LoadButtonImage('_IS_BTN1', WizardForm.CancelButton);
    WizardForm.WizardSmallBitmapImage.Top:= ScaleY(226);
  end;
  wpFinished:
  begin
    WizardForm.WizardSmallBitmapImage.Top:= ScaleY(269);
    if ISDoneError then begin
      WizardForm.Caption:= ExpandConstant('{cm:Error}');
      WizardForm.FinishedLabel.Caption:= SetupMessage(msgSetupAborted);
    end;
  end;
 end;
 UpdateButtons();
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  Comps1,Comps2,Comps3:cardinal;
  PCFVer: Double;
  #ifdef Components
    TmpValue: Cardinal;
  #endif
//  переменные для примеров
//  FindHandle1,ColFiles1,CurIndex1,tmp:integer;
//  ExecError:boolean;
//  InFilePath,OutFilePath,OutFileName:PAnsiChar;
begin
  if CurStep = ssInstall then begin
    WizardForm.CancelButton.OnClick := @CancelButtonOnClick;
    WizardForm.StatusLabel.Caption:=ExpandConstant('{cm:Extracted}');
    ISDoneCancel:=0;

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
      ExtractTemporaryFile('facompress.dll');
    #endif
    #ifdef records
      ExtractTemporaryFile('records.inf');
    #endif
    #ifdef precomp
      PCFVer:={#precomp};
      #if "0.38" == precomp
        ExtractTemporaryFile('precomp038.exe');
      #else
        #if "0.4" == precomp
          ExtractTemporaryFile('precomp040.exe');
        #else
          #if "0.41" == precomp
            ExtractTemporaryFile('precomp041.exe');
          #else
            #if "0.42" == precomp
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
    #else
      PCFVer:=0;
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
//    ExtractTemporaryFile('English.ini');

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
  end;
  if (CurStep=ssPostInstall) and ISDoneError then begin
    Exec2(ExpandConstant('{uninstallexe}'), '/VERYSILENT', false);
  end;
end;

