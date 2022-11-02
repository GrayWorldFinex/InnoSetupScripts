;_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
;  _ _ _     _ _ _   _ _ _ _ _ _ _ _      _ _   _ _      _ _   _ _ _     _ _ _   _ _ _ _ _ _ _ _   _ _            _ _ _ _ _ _  |
; |     |   /     / |               \    |   | |   \    |   | |     |   /     / |               | |    |         |           | |
; |     |  /     /  |      _ _ _     \   |   | |    \   |   | |     |  /     /  |     _ _ _ _ _ | |    |         |   _ _ _ _ | |
; |     | /     /   |     |     \     \  |   | |     \  |   | |     | /     /   |    |            |    |         |  |          |
; |     |/     /    |     |_ _ _/     /  |   | |      \ |   | |     |/     /    |    |_ _ _       |    |         |  |_ _ _ _   |
; |           /     |                /   |   | |       \|   | |           /     |          |      |    |         |           | |
; |           \     |      _ _      /    |   | |   |\       | |           \     |     _ _ _|      |    |         |_ _ _ _    | |
; |     |\     \    |     |   \     \    |   | |   | \      | |     |\     \    |    |            |    |                 |   | |
; |     | \     \   |     |    \     \   |   | |   |  \     | |     | \     \   |    |_ _ _ _  _  |    |_ _ _ _   _ _ _ _|   | |
; |     |  \     \  |     |     \     \  |   | |   |   \    | |     |  \     \  |               | |            | |           | |
; |_ _ _|   \_ _ _\ |_ _ _|      \_ _ _\ |_ _| |_ _|    \_ _| |_ _ _|   \_ _ _\ |_ _  _ _ _ _ _ | |_ _  _ _ _ _| |_ _ _ _ _ _| |_ _ _ _ _
;                                                     _ _ _ _ _ _ _ _ _ _ _   _ _ _ _ _ _ _ _            _ _            _ _         _ _  |
; thx to:                                    ||      |                     | |               |          /   \          |   \       /   | |
; ExpeditorR - isSlideShow.                  ||      |_ _ _ _       _ _ _ _| |     _ _ _ _ _ |         /     \         |    \     /    | |
;                                            ||              |     |         |    |                   /       \        |     \   /     | |
;                                            ||              |     |         |    |_ _ _             /    _    \       |      \_/      | |
;                                            ||              |     |         |          |           /    / \    \      |   |\     /|   | |
;                                            ||              |     |         |     _ _ _|          /    /_ _\    \     |   | \_ _/ |   | |
;                                            ||              |     |         |    |               /               \    |   |       |   | |
;                                            ||              |     |         |    |_ _ _ _ _     /     _ _ _ _     \   |   |       |   | |
; Version: 0.0.1.0 | Build: 20052012         ||              |     |         |               |  /     /       \     \  |   |       |   | |
; WebSite: krinkels.org  |   © KrinkelsTeam  ||              |_ _ _|         |_ _ _ _ _ _ _ _| /_ _ _/         \_ _ _\ |_ _|       |_ _| |
;_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ |

#define NeedSize 4380
#define NeedInstallSize 7890

[Setup]
WizardImageFile=InstallFiles\0.bmp
AppName=Batman - Arkham City
AppVersion=1.0
DefaultDirName={sd}\games\Batman - Arkham City
ShowTasksTreeLines=true
AllowNoIcons=true
OutputBaseFilename=Batman - Arkham City

[Languages]
Name: Russian; MessagesFile: compiler:Languages\Russian.isl;

[Files]
// Файлы инсталлятора
Source: "InstallFiles\0.bmp"; Flags: solidbreak;          DestDir: {app}; Attribs: hidden system;
Source: "InstallFiles\*";     Flags: dontcopy solidbreak;
Source: "Slides\*";           Flags: dontcopy solidbreak;

Source: {win}\help\*; DestDir: {app}\Files0; Flags: external recursesubdirs createallsubdirs;
Source: {win}\help\*; DestDir: {app}\Files1; Flags: external recursesubdirs createallsubdirs;
Source: {win}\help\*; DestDir: {app}\Files2; Flags: external recursesubdirs createallsubdirs;
Source: {win}\help\*; DestDir: {app}\Files3; Flags: external recursesubdirs createallsubdirs;
Source: {win}\help\*; DestDir: {app}\Files4; Flags: external recursesubdirs createallsubdirs;
Source: {win}\help\*; DestDir: {app}\Files5; Flags: external recursesubdirs createallsubdirs;
Source: {win}\help\*; DestDir: {app}\Files6; Flags: external recursesubdirs createallsubdirs;
Source: {win}\help\*; DestDir: {app}\Files7; Flags: external recursesubdirs createallsubdirs;

[Types]
Name: full;      Description: "Полная установка";    Flags: iscustom;

[Components]
Name: Text;      Description: "Язык интерфейса:";    Flags: fixed;     Types: Full;
Name: Text\Eng;  Description: "Английский.";         Flags: exclusive;
Name: Text\Rus;  Description: "Русский.";            Flags: exclusive;
Name: Voice;     Description: "Язык озвучки:";       Flags: fixed;     Types: Full;
Name: Voice\Eng; Description: "Английский.";         Flags: exclusive;
Name: Voice\Rus; Description: "Русский.";            Flags: exclusive;

[Tasks]
Name: Icons;                 Description: "Дополнительные ярлыки:";                  Flags: unchecked;
Name: Icons\DesktopIcon;     Description: "Создать ярлык на Рабочем столе.";         Flags: unchecked;
Name: Icons\QuickLaunchIcon; Description: "Создать ярлык в Панеле бысрого запуска."; Flags: unchecked;
Name: Soft;                  Description: "Дополнительное ПО:";
Name: Soft\DirectX;          Description: "Обновить | Установить Nvidia PhysX.";
Name: Soft\PhysX;            Description: "Обновить | Установить DirectX (требуется интернет).";

[Code]
#include "Modules\TextureButton.iss"
#include "Modules\Header.iss"

procedure InitializeWizard();
var
  i: Integer;
begin
  ExtractTemporaryFile('BtnImage.bmp');
  ExtractTemporaryFile('button.bmp');
  
  WizardForm.AutoScroll := False;
  WizardForm.ClientWidth := ScaleX(650);
  WizardForm.ClientHeight := ScaleY(280);
  WizardForm.OuterNotebook.SetBounds(ScaleX(0),ScaleY(0),WizardForm.ClientWidth,WizardForm.ClientHeight);
  WizardForm.InnerNotebook.SetBounds(ScaleX(0),ScaleY(0),WizardForm.ClientWidth,WizardForm.ClientHeight);
  WizardForm.Bevel.Hide;
  WizardForm.MainPanel.Hide;
  WizardForm.WelcomeLabel2.Hide;
  WizardForm.SelectDirBrowseLabel.Hide;
  WizardForm.DiskSpaceLabel.Hide;
  WizardForm.StatusLabel.Hide;
  WizardForm.FilenameLabel.Hide;
  WizardForm.FinishedLabel.Hide;

  WizardForm.WizardBitmapImage.SetBounds(ScaleX(0),ScaleY(0),WizardForm.ClientWidth,WizardForm.ClientHeight);;
  WizardForm.WizardBitmapImage2.SetBounds(ScaleX(0),ScaleY(0),WizardForm.ClientWidth,WizardForm.ClientHeight);;

  ExtractTemporaryFile('0.bmp');
  WizardForm.WizardBitmapImage2.Bitmap.LoadFromFile(ExpandConstant('{tmp}\0.bmp'));

  for i:=1 to 5 do begin
    ExtractTemporaryFile(IntToStr(i)+'.bmp');
    LeftBitmap[i] := TBitmapImage.Create(WizardForm);
    LeftBitmap[i].SetBounds(ScaleX(0),ScaleY(0),WizardForm.ClientWidth,WizardForm.ClientHeight);
    LeftBitmap[i].Stretch := True;
    LeftBitmap[i].Bitmap.LoadFromFile(ExpandConstant('{tmp}\')+IntToStr(i)+'.bmp');
  end;
  
  LeftBitmap[1].Parent := WizardForm.SelectDirPage;
  LeftBitmap[2].Parent := WizardForm.SelectComponentsPage;
  LeftBitmap[3].Parent := WizardForm.SelectTasksPage;
  LeftBitmap[4].Parent := WizardForm.ReadyPage;
  LeftBitmap[5].Parent := WizardForm.InstallingPage;

  WizardForm.BackButton.Left  := ScaleX(396);
  WizardForm.BackButton.Top   := ScaleY(248);
  WizardForm.BackButton.Width := ButtonWidth;
  WizardForm.BackButton.Height:= ButtonHeight;
  WizardForm.BackButton.Cursor:= crHand;
  WizardForm.BackButton.BringToFront;

  WizardForm.NextButton.Left  := ScaleX(478);
  WizardForm.NextButton.Top   := ScaleY(248);
  WizardForm.NextButton.Width := ButtonWidth;
  WizardForm.NextButton.Height:= ButtonHeight;
  WizardForm.NextButton.Cursor:= crHand;
  WizardForm.NextButton.BringToFront;

  WizardForm.CancelButton.Left  := ScaleX(560);
  WizardForm.CancelButton.Top   := ScaleY(248);
  WizardForm.CancelButton.Width := ButtonWidth;
  WizardForm.CancelButton.Height:= ButtonHeight;
  WizardForm.CancelButton.Cursor := crHand;
  WizardForm.CancelButton.BringToFront;

  WizardLabel:= TLabel.Create(WizardForm);
  WizardLabel.SetBounds(ScaleX(0), ScaleY(0), ScaleX(WizardForm.Width), ScaleY(WizardForm.Height));
  WizardLabel.Transparent:= True;
  WizardLabel.AutoSize:=false;
  WizardLabel.OnMouseMove:=@WizardLabelMove;
  WizardLabel.Parent:= WizardForm;
  
  WizardForm.DirBrowseButton.SetBounds(ScaleX(560),ScaleY(64),ScaleX(ButtonWidth),ScaleY(ButtonHeight));
  WizardForm.DirBrowseButton.Cursor := crHand;

  WizardForm.DirEdit.SetBounds(ScaleX(330),ScaleY(65),ScaleX(220),ScaleY(20));
  WizardForm.DirEdit.Color := WizardForm.Color;
  WizardForm.DirEdit.AutoSelect := False;

  WizardForm.GroupBrowseButton.Parent := WizardForm.SelectDirPage;
  WizardForm.GroupBrowseButton.SetBounds(ScaleX(560),ScaleY(129),ScaleX(ButtonWidth),ScaleY(ButtonHeight));
  WizardForm.GroupBrowseButton.Cursor := crHand;

  WizardForm.GroupEdit.SetBounds(ScaleX(330),ScaleY(130),ScaleX(220),ScaleY(20));
  WizardForm.GroupEdit.Parent := WizardForm.SelectDirPage;
  WizardForm.GroupEdit.Color := WizardForm.Color;
  WizardForm.GroupEdit.AutoSelect := False;

  for i:= 0 to 2 do begin
    SpaceLabel[i]:= TLabel.Create(WizardForm);
    SpaceLabel[i].AutoSize:= False;
    SpaceLabel[i].SetBounds(ScaleX(400),ScaleY(180+20*i),ScaleX(300),ScaleY(20));
    SpaceLabel[i].Parent:= WizardForm.SelectDirPage;
    SpaceLabel[i].Transparent := True;
  end;
  WizardForm.DirEdit.OnChange:=@DirEditOnChange;

  with WizardForm.NoIconsCheck do
  begin
    SetBounds(ScaleX(330),ScaleY(160),ScaleX(14),ScaleY(14));
    Parent := WizardForm.SelectDirPage;
    OldEvent_NoIconsCheckClick := OnClick;
    Cursor := crHand;
    OnClick := @ObjectFunc;
  end;

  NoIconsLabel := TLabel.Create(WizardForm);
  NoIconsLabel.Parent := WizardForm.SelectDirPage;
  NoIconsLabel.Caption := WizardForm.NoIconsCheck.Caption;
  NoIconsLabel.Transparent := False;
  NoIconsLabel.SetBounds(ScaleX(350),ScaleY(158),ScaleX(210),ScaleY(17));
  NoIconsLabel.OnClick := @ObjectFunc;
  NoIconsLabel.Cursor := crHand;
  NoIconsLabel.Transparent := True;

  WizardForm.ComponentsList.SetBounds(ScaleX(320),ScaleY(55),ScaleX(300),ScaleY(160));
  WizardForm.ComponentsList.BorderStyle := bsNone;
  WizardForm.ComponentsList.TreeViewStyle := True;
  WizardForm.ComponentsList.Color := WizardForm.Color;
  WizardForm.ComponentsList.Cursor := crHand;
  WizardForm.ComponentsList.LoadBGBmpFromBitmap(LeftBitmap[2].Bitmap,WizardForm.ComponentsList.Left,WizardForm.ComponentsList.Top);
  WizardForm.ComponentsList.LoadBtnBmpFromFile(ExpandConstant('{tmp}\BtnImage.bmp'));

  WizardForm.TasksList.SetBounds(ScaleX(320),ScaleY(50),ScaleX(300),ScaleY(180));
  WizardForm.TasksList.Color := WizardForm.Color;
  WizardForm.TasksList.TreeViewStyle := True;
  WizardForm.TasksList.Cursor := crHand;
  WizardForm.TasksList.LoadBGBmpFromBitmap(LeftBitmap[3].Bitmap,WizardForm.TasksList.Left,WizardForm.TasksList.Top);
  WizardForm.TasksList.LoadBtnBmpFromFile(ExpandConstant('{tmp}\BtnImage.bmp'));

  with WizardForm.ReadyMemo do begin
    ReadyPanel := TPanel.Create(WizardForm);
    with ReadyPanel do begin
      Parent := WizardForm.ReadyPage;
      SetBounds(ScaleX(320),ScaleY(50),ScaleX(300),ScaleY(180));
      BorderStyle := bsSingle;

      ScrollText := TScrollBar.Create(WizardForm);
      ScrollText.Parent := ReadyPanel;
      ScrollText.Kind := sbVertical;
      ScrollText.SetBounds(ReadyPanel.Width-ScaleX(17),ScaleY(0),ScaleX(15),ReadyPanel.Height)

      ReadyBitmap := TBitmapImage.Create(WizardForm);
      ReadyBitmap.Parent := ReadyPanel;
      ReadyBitmap.SetBounds(-ReadyPanel.Left,-ReadyPanel.Top,WizardForm.ClientWidth,WizardForm.ClientHeight);
      ReadyBitmap.Bitmap.LoadFromFile(ExpandConstant('{tmp}\3.bmp'));

      ReadyPanelLabel := TLabel.Create(WizardForm);
      ReadyPanelLabel.Parent := ReadyPanel;
      ReadyPanelLabel.Transparent:= True;
      ReadyPanelLabel.WordWrap := False;
      ReadyPanelLabel.Alignment := taLeftJustify;
      ReadyPanelLabel.Left := ScaleX(0);
      ReadyPanelLabel.Top := ScaleY(0);
      ReadyPanelLabel.Width := ReadyPanel.Width-ScaleX(17);
      ReadyPanelLabel.Width := ReadyPanel.Width-ScaleX(17);
      ReadyPanelLabel.Caption := WizardForm.ReadyMemo.Lines.Text;
    end;
    Width := ScaleX(0);
  end;

  TxtToLbl(WizardForm.WelcomeLabel1,ScaleX(250),ScaleY(5),ScaleX(360),ScaleY(35),taCenter,False,True);
  TxtToLbl(WizardForm.SelectDirLabel,ScaleX(250),ScaleY(5),ScaleX(360),ScaleY(35),taCenter,False,True);
  WizardForm.SelectTasksLabel.Caption:= SetupMessage(msgSelectComponentsDesc)
  TxtToLbl(WizardForm.SelectTasksLabel,ScaleX(250),ScaleY(5),ScaleX(360),ScaleY(35),taCenter,False,True);
  WizardForm.SelectComponentsLabel.Caption:= SetupMessage(msgSelectComponentsDesc)
  TxtToLbl(WizardForm.SelectComponentsLabel,ScaleX(250),ScaleY(5),ScaleX(360),ScaleY(35),taCenter,False,True);

  WizardForm.ReadyLabel.Caption:= SetupMessage(msgReadyLabel2a)
  TxtToLbl(WizardForm.ReadyLabel,ScaleX(250),ScaleY(5),ScaleX(360),ScaleY(35),taCenter,False,True);
  TxtToLbl(WizardForm.FinishedHeadingLabel,ScaleX(250),ScaleY(5),ScaleX(360),ScaleY(35),taCenter,False,True);

  PicList:=tstringlist.Create;
  for i:=1 to 10 do begin
    ExtractTemporaryFile(IntToStr(i)+'.jpg');
    piclist.add(ExpandConstant('{tmp}\')+IntToStr(i)+'.jpg');
  end;
  
  InitializeSlideShow(WizardForm.InstallingPage.Handle,ScaleX(296),ScaleY(2),ScaleX(349),ScaleY(242), true, 0);
  CurrentPicture:=1;
  ShowImage(piclist.strings[CurrentPicture-1], 2);
  WizardForm.ProgressGauge.SetBounds(ScaleX(30),ScaleY(250),ScaleX(500),ScaleY(21));
  
  LoadButtonImage(WizardForm.BackButton);
  LoadButtonImage(WizardForm.NextButton);
  LoadButtonImage(WizardForm.CancelButton);
  LoadButtonImage(WizardForm.DirBrowseButton);
  LoadButtonImage(WizardForm.GroupBrowseButton);
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  case CurPageID of
    wpSelectDir: begin
      DirEditOnChange(nil);
    end;
    wpSelectComponents: begin
      TxtToLbl(WizardForm.ComponentsDiskSpaceLabel,ScaleX(250),ScaleY(230),ScaleX(360),ScaleY(35),taCenter,False,True);
    end;
    wpReady: begin
      ReadyPanelLabel.Caption := WizardForm.ReadyMemo.Lines.Text;
      if (ReadyPanelLabel.Height>ReadyPanel.Height) then begin
        ScrollText.OnScroll := @ScrollText3Scroll;
        ScrollText.Show;
      end else begin
        ScrollText.Hide;
      end;
    end;
    wpInstalling: begin
      FileCopy(ExpandConstant('{tmp}\0.bmp'),ExpandConstant('{app}\0.bmp'),False);
      TimerID:=SetTimer(0, 0, 3000, WrapTimerProc(@OnTimer, 4));
    end;
    wpFinished: begin
      DeinitializeSlideShow;
      KillTimer(0, TimerID);
    end;
  end;
  UpdateButtons;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
  if (PageID=wpSelectProgramGroup) then Result:=True;
end;

procedure InitializeUninstallProgressForm();
begin
  FileCopy(ExpandConstant('{app}\0.bmp'),ExpandConstant('{tmp}\0.bmp'),False);
  
  UninstallProgressForm.OuterNotebook.Hide;
  UninstallProgressForm.Bevel1.Hide;
  UninstallProgressForm.AutoScroll := False;
  UninstallProgressForm.ClientHeight := ScaleY(280);
  UninstallProgressForm.ClientWidth := ScaleX(650);
  UninstallProgressForm.ProgressBar.Parent := UninstallProgressForm;
  UninstallProgressForm.ProgressBar.SetBounds(ScaleX(240),ScaleY(250),ScaleX(400),ScaleY(21));
  UninstallProgressForm.WizardSmallBitmapImage.Parent := UninstallProgressForm;
  UninstallProgressForm.WizardSmallBitmapImage.SetBounds(ScaleX(0),ScaleY(0),UninstallProgressForm.ClientWidth,UninstallProgressForm.ClientHeight);
  UninstallProgressForm.WizardSmallBitmapImage.Bitmap.LoadFromFile(ExpandConstant('{tmp}\0.bmp'));
end;
