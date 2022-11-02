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
;                                                                                                        Script version: 0.1.8.0;
;                                                                                                                 © KrinkelsTeam;
;-------------------------------------------------------------------------------------------------------------------------------;

#define NeedSize "8192"
#define NeedInstallSize "8192" 

#define NeedMem "128"

#define Components
#define Tasks

;#define records
;#define PrecompInside
#define SrepInside
#define facompress
;#define precomp "0.42"
;#define unrar
;#define XDelta
;#define PackZIP

#define GameName "Batman Arkham City"
#define GameVersion "1.0"
#define ExeFile "Batman Arkham City.exe"               
#define InstallVersion "0.1.8.0"
#define Company "Акелла"
#define RePacker "Edison007"

[Setup]
AppId={{E3F46DB5-EA45-47A5-958C-068E588C8248}
AppName={#GameName}
DefaultDirName={pf}\{#Company}\{#GameName}
DefaultGroupName={#Company}\{#GameName}
InternalCompressLevel=ultra64
SolidCompression=true
Compression=lzma/ultra64
;DisableReadyPage=yes
AppVerName={#GameName} v{#GameVersion} / RePack by {#RePacker}
VersionInfoDescription={#GameName} / RePack by {#RePacker}
VersionInfoTextVersion={#InstallVersion}
VersionInfoVersion={#InstallVersion}
VersionInfoCompany={#Company}
AppCopyright=© {#Company} / KrinkelsTeam
ShowTasksTreeLines=Yes

[Files] 
Source: InstallFiles\*; Flags: dontcopy
Source: InstallFiles\botva2.dll; DestDir: {app}\Unistall; Attribs: hidden system;
Source: InstallFiles\CallbackCtrl.dll; DestDir: {app}\Unistall; Attribs: hidden system;
Source: InstallFiles\pbbkg.png; DestDir: {app}\Unistall; Attribs: hidden system;
Source: InstallFiles\pb.png; DestDir: {app}\Unistall; Attribs: hidden system;
Source: InstallFiles\Image.png; DestDir: {app}\Unistall; Attribs: hidden system;
Source: InstallFiles\CancelBtn.png; DestDir: {app}\Unistall; Attribs: hidden system;

[Icons]
Name: {group}\{cm:Run}; Filename: "{app}\My.exe"; Check: NoIcons
Name: {group}\{cm:Uninstall}; Filename: "{uninstallexe}"; Check: NoIcons     

#ifdef Components
[Types]
Name: full; Description: Полная установка; Flags: iscustom

[Components]
Name: Text; Description: {cm:Text}; Flags: fixed; Types: Full;                
Name: Text\Eng; Description: {cm:English}; Flags: exclusive; ExtraDiskSpaceRequired: 50000000;
Name: Text\Rus; Description: {cm:Russian}; Flags: exclusive; ExtraDiskSpaceRequired: 60000000;
Name: Voice; Description: {cm:Voice}; Flags: fixed; Types: Full;
Name: Voice\Eng; Description: {cm:English}; Flags: exclusive; ExtraDiskSpaceRequired: 500000000;
Name: Voice\Rus; Description: {cm:Russian}; Flags: exclusive; ExtraDiskSpaceRequired: 600000000;
#endif

#ifdef Tasks
[Tasks]
Name: Icons; Description: {cm:Icons}; Flags: unchecked;
Name: Icons\DesktopIcon; Description: {cm:CreateDesktopIcon};     Flags: unchecked
Name: Icons\QuickLaunchIcon; Description: {cm:CreateQuickLaunchIcon}; Flags: unchecked;
Name: Soft; Description: {cm:Soft};           
Name: Soft\DirectX; Description: {cm:DirectX};             
Name: Soft\PhysX; Description: {cm:PhysX};                
#endif

[UninstallDelete]
Type: "FilesAndOrDirs"; Name: "{app}";

[Code] 
#include "Modules\Messages.iss"
#include "Modules\Botva2.iss"
#include "Modules\PB.iss"
#include "Modules\botva2u.iss"
#include "Modules\Header.iss"
#include "Modules\IsDone.iss"

procedure CreateWizardForm;
var
  n: Integer;
begin
  with WizardForm do begin
    InnerNotebook.Hide;
    OuterNotebook.Hide;
    Bevel.Hide;
    ClientWidth:=ScaleX(700);
    ClientHeight:=ScaleY(400);
    DirEdit.OnChange:=@ObjectFunc;
    GroupEdit.OnChange:= @ObjectFunc
    OnMouseDown:=@LabelOnMouseDown;
    Center;
  end;

  WFButtonFont:=TFont.Create;
  with WFButtonFont do begin
    Style:=[fsBold];
    Size:=10;
    Name:='Tahoma';
  end;

  Application.OnMessage:= @AppOnMessage;

  BGImageStream := TMemoryStream.Create;
  ExtractTemporaryFileToStream('BGImage.bmp', BGImageStream);
  BGImageStream.Position := 0;

  BTNImageStream := TMemoryStream.Create;
  ExtractTemporaryFileToStream('btnimage.bmp', BTNImageStream);
  BTNImageStream.Position := 0;

  BGImage := TBitmapImage.Create(WizardForm);
  BGImage.Bitmap.LoadFromStream(BGImageStream);

  BTNImage := TBitmapImage.Create(WizardForm);
  BTNImage.Bitmap.LoadFromStream(BTNImageStream);

  ImgLoad(WizardForm.Handle,ExpandConstant('Image.png'),0,0,0,0,False,True);
  //=============== [Начало - WelcomePage] ===============\\
  WelcomeLabel1:= CreateLabel(WizardForm, ScaleX(176), ScaleY(95), ScaleX(522), ScaleY(80), ExpandConstant('{cm:WelcomeLabel1}'), False);
  LabelSetFont(WelcomeLabel1, 12, 'Tahoma', $FFFFFF, [fsBold]);
  WelcomeLabel1.Alignment := taCenter;

  WelcomeLabel2:= CreateLabel(WizardForm, ScaleX(176), ScaleY(160), ScaleX(522), ScaleY(150), ExpandConstant('{cm:WelcomeLabel2}'), False);
  LabelSetFont(WelcomeLabel2, 10, 'Tahoma', $FFFFFF, [fsBold]);
  WelcomeLabel2.Alignment := taCenter;
  //=============== [Конец - WelcomePage] ===============\\

  //=============== [Начало - SelectDirPage] ===============\\
  DirFolder:=ImgLoad(WizardForm.Handle,ExpandConstant('DirFolder.png'),ScaleX(200),ScaleY(75),ScaleX(36),ScaleY(31),True,True);
  DirEditImg:=ImgLoad(WizardForm.Handle,ExpandConstant('DirEditImg.png'),ScaleX(200),ScaleY(178),ScaleX(0),ScaleY(0),False,True);
  HDD:=ImgLoad(WizardForm.Handle,ExpandConstant('HDD.png'),ScaleX(200),ScaleY(235),ScaleX(62),ScaleY(60),True,True);
 
  SelectDirLabel:= CreateLabel(WizardForm, ScaleX(250), ScaleY(80), ScaleX(0), ScaleY(0), ExpandConstant('{cm:SelectDirLabel}'), true);
  LabelSetFont(SelectDirLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);
  
  SelectDirBrowseLabel:= CreateLabel(WizardForm, ScaleX(200), ScaleY(115), ScaleX(0), ScaleY(0), ExpandConstant('{cm:SelectDirBrowseLabel}'), true);
  LabelSetFont(SelectDirBrowseLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);

  DirEditLabel:= CreateLabel(WizardForm, ScaleX(207), ScaleY(180), ScaleX(322), ScaleY(20), '', false);
  LabelSetFont(DirEditLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);
  DirEditLabel.Caption := MinimizePathName(WizardForm.DirEdit.Text, DirEditLabel.Font, DirEditLabel.Width);
  
  TotalSpaceLabel:= CreateLabel(WizardForm, ScaleX(270), ScaleY(230), ScaleX(0), ScaleY(0), ExpandConstant('{cm:TotalSpaceLabel}'), true);
  LabelSetFont(TotalSpaceLabel, 8, 'Tahoma', $FFFFFF, [fsBold]);

  FreeSpaceLabel:= CreateLabel(WizardForm, ScaleX(270), ScaleY(245), ScaleX(0), ScaleY(0), ExpandConstant('{cm:FreeSpaceLabel}'), true);
  LabelSetFont(FreeSpaceLabel, 8, 'Tahoma', $FFFFFF, [fsBold]);

  InstallSpacelabel:= CreateLabel(WizardForm, ScaleX(270), ScaleY(260), ScaleX(0), ScaleY(0), ExpandConstant('{cm:InstallSpacelabel}'), true);
  LabelSetFont(InstallSpacelabel, 8, 'Tahoma', $FFFFFF, [fsBold]);

  NeedSpaceLabel:= CreateLabel(WizardForm, ScaleX(270), ScaleY(275), ScaleX(0), ScaleY(0), ExpandConstant('{cm:NeedSpaceLabel}'), true);
  LabelSetFont(NeedSpaceLabel, 8, 'Tahoma', $FFFFFF, [fsBold]);

  TotalSpaceLabel2:= CreateLabel(WizardForm, ScaleX(570), ScaleY(230), ScaleX(0), ScaleY(0), '', true);
  LabelSetFont(TotalSpaceLabel2, 8, 'Tahoma', $FFFFFF, [fsBold]);
  TotalSpaceLabel2.Alignment := taRightJustify;

  FreeSpaceLabel2:= CreateLabel(WizardForm, ScaleX(570), ScaleY(245), ScaleX(0), ScaleY(0), '', true);
  LabelSetFont(FreeSpaceLabel2, 8, 'Tahoma', $FFFFFF, [fsBold]);
  FreeSpaceLabel2.Alignment := taRightJustify;

  InstallSpacelabel2:= CreateLabel(WizardForm, ScaleX(570), ScaleY(260), ScaleX(0), ScaleY(0), '', true);
  LabelSetFont(InstallSpacelabel2, 8, 'Tahoma', $FFFFFF, [fsBold]);
  InstallSpacelabel2.Alignment := taRightJustify;

  NeedSpaceLabel2:= CreateLabel(WizardForm, ScaleX(570), ScaleY(275), ScaleX(0), ScaleY(0), '', true);
  LabelSetFont(NeedSpaceLabel2, 8, 'Tahoma', $FFFFFF, [fsBold]);
  NeedSpaceLabel2.Alignment := taRightJustify;
  //=============== [Конец - SelectDirPage] ===============\\

  #ifdef Components
  //=============== [Начало - SelectComponentsPage] ===============\
    SelectComponentsLabel:= CreateLabel(WizardForm, ScaleX(200), ScaleY(80), ScaleX(0), ScaleY(0), ExpandConstant('{cm:SelectComponentsLabel}'), true);
    LabelSetFont(SelectComponentsLabel, 9, 'Tahoma', $FFFFFF, [fsBold]);

    with WizardForm.ComponentsList do begin
      Parent:= WizardForm;
      SetBounds(ScaleX(200), ScaleY(150), ScaleX(350), ScaleY(110));
      Color:=$000000;
      Font.Name:='Tahoma';
      Font.Size:= 8;
      Font.Color:=$FFFFFF;
      for n:=0 to ItemCount-1 do begin
        ItemFontStyle[n]:= [fsBold];
        SubItemFontStyle[n]:= [fsBold];
      end;
      //TreeViewStyle := True;
      BorderWidth := (WizardForm.ComponentsList.Width-WizardForm.ComponentsList.ClientWidth) div 2;
      LoadBGBmpFromBitmap(BGImage.Bitmap,  WizardForm.ComponentsList.Left+BorderWidth, WizardForm.ComponentsList.Top+BorderWidth);
      LoadBtnBmpFromBitmap(btnimage.Bitmap);
    end;
  //=============== [Конец - SelectComponentsPage] ===============\\
  #endif

  //=============== [Начало - SelectProgramGroupPage] ===============\\
  GroupFolder:=ImgLoad(WizardForm.Handle,ExpandConstant('GroupFolder.png'),ScaleX(200),ScaleY(75),ScaleX(36),ScaleY(31),True,True);

  SelectStartMenuFolderLabel:= CreateLabel(WizardForm, ScaleX(250), ScaleY(80), ScaleX(0), ScaleY(0), ExpandConstant('{cm:SelectStartMenuFolderLabel}'), true);
  LabelSetFont(SelectStartMenuFolderLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);

  SelectStartMenuFolderBrowseLabel:= CreateLabel(WizardForm, ScaleX(200), ScaleY(115), ScaleX(0), ScaleY(0), ExpandConstant('{cm:SelectDirBrowseLabel}'), true);
  LabelSetFont(SelectStartMenuFolderBrowseLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);

  GroupEditLabel:= CreateLabel(WizardForm, ScaleX(207), ScaleY(180), ScaleX(322), ScaleY(20), WizardForm.GroupEdit.Text, false);
  LabelSetFont(GroupEditLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);
  
  NoIconsCheck:=BtnCreate(WizardForm.Handle,ScaleX(200),ScaleY(210),ScaleX(13),ScaleY(13),ExpandConstant('CheckBox.png'),1,True);
  BtnSetEvent(NoIconsCheck,BtnClickEventID,WrapBtnCallback(@NoIconsClick,1));
  BtnSetCursor(NoIconsCheck,GetSysCursorHandle(32649));

  NoIconsLabel:= CreateLabel(WizardForm, ScaleX(216), ScaleY(210), ScaleX(0), ScaleY(0), ExpandConstant('{cm:NoIconsCheck}'), true);
  LabelSetFont(NoIconsLabel, 8, 'Tahoma', $FFFFFF, [fsBold]);
  with NoIconsLabel do begin
    Cursor := crHand;
    OnClick:= @ObjectFunc;
  end;
  //=============== [Конец - SelectProgramGroupPage] ===============\\

  #ifdef Tasks
  //=============== [Начало - SelectTasksPage] ===============\\
    SelectTasksLabel:= CreateLabel(WizardForm, ScaleX(200), ScaleY(80), ScaleX(0), ScaleY(0), ExpandConstant('{cm:SelectTasksLabel}'), true);
    LabelSetFont(SelectTasksLabel, 9, 'Tahoma', $FFFFFF, [fsBold]);

    with WizardForm.TasksList do begin
      Parent:= WizardForm;
      SetBounds(ScaleX(200), ScaleY(150), ScaleX(350), ScaleY(140));
      Color:=$000000;
      Font.Name:='Tahoma';
      Font.Size:= 8;
      Font.Color:=$FFFFFF;
      BorderStyle := bsSingle;
      //TreeViewStyle := True;
      BorderWidth := (WizardForm.TasksList.Width-WizardForm.TasksList.ClientWidth) div 2;
      LoadBGBmpFromBitmap(BGImage.Bitmap,  WizardForm.TasksList.Left+BorderWidth, WizardForm.TasksList.Top+BorderWidth);
      LoadBtnBmpFromBitmap(btnimage.Bitmap);
    end;
  //=============== [Конец - SelectTasksPage] ===============\\
  #endif

  //=============== [Начало - ReadyPage] ===============\\
  BGImageStream.position:=0;

  ReadyLabel:= CreateLabel(WizardForm, ScaleX(200), ScaleY(80), ScaleX(0), ScaleY(0), ExpandConstant('{cm:ReadyLabel}'), true);
  LabelSetFont(ReadyLabel, 9, 'Tahoma', $FFFFFF, [fsBold]);

  ReadyPanel := TPanel.Create(WizardForm);
  with ReadyPanel do begin
    Parent := WizardForm;
    SetBounds(ScaleX(200), ScaleY(150), ScaleX(350), ScaleY(140));
    BorderStyle := bsSingle;
  end;

  ReadyBitmap := TBitmapImage.Create(WizardForm);
  with ReadyBitmap do begin
    Parent := ReadyPanel;
    SetBounds(ScaleX(-202), ScaleY(-152), ScaleX(700), ScaleY(400));
    Bitmap.LoadFromStream(BGImageStream);
  end;

  ReadyScrollBar := TScrollBar.Create(WizardForm);
  with ReadyScrollBar do begin
    Parent := ReadyPanel;
    SetBounds(ScaleX(330), ScaleY(0), ScaleX(136), ScaleY(15));
    Kind := sbVertical;
    OnScroll:=@ScrollText3Scroll;
  end;

  ReadyPanelLabel := TLabel.Create(WizardForm);
  with ReadyPanelLabel do begin
    Parent := ReadyPanel;
    WordWrap := true;
    Transparent:=true;
    Font.Name:='Tahoma';
    Font.Size:= 8;
    Font.Color:=$FFFFFF;
    Font.Style:=[fsBold];
    SetBounds(ScaleX(5), ScaleY(5), ScaleX(325), ScaleY(130));
    Caption := WizardForm.ReadyMemo.Lines.Text;
  end;
  //=============== [Конец - ReadyPage] ===============\\

  //=============== [Начало - InstallingPage] ===============\\           .

  IsDoneAddComponents

  InstallingLabel:= CreateLabel(WizardForm, ScaleX(203), ScaleY(80), ScaleX(0), ScaleY(0), ExpandConstant('{cm:InstallingLabel}'), true);
  LabelSetFont(InstallingLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);

  StatusLabel:= CreateLabel(WizardForm, ScaleX(203), ScaleY(105), ScaleX(0), ScaleY(0), ExpandConstant('{cm:Extracted}'), true);
  LabelSetFont(StatusLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);

  //=============== [Конец - InstallingPage] ===============\\

  //=============== [Начало - FinishedPage] ===============\\

  FinishedHeadingLabel:= CreateLabel(WizardForm, ScaleX(176), ScaleY(95), ScaleX(522), ScaleY(80), ExpandConstant('{cm:FinishedHeadingLabel}'), false);
  LabelSetFont(FinishedHeadingLabel, 12, 'Tahoma', $FFFFFF, [fsBold]);
  FinishedHeadingLabel.Alignment := taCenter;

  FinishedLabel:= CreateLabel(WizardForm, ScaleX(176), ScaleY(160), ScaleX(522), ScaleY(150), ExpandConstant('{cm:FinishedLabel}'), false);
  LabelSetFont(FinishedLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);
  FinishedLabel.Alignment := taCenter;
  //=============== [Конец - FinishedPage] ===============\\
end;

//************************************************ [Начало - Текстуры кнопок] ***************************************************//
procedure SetStateNewButtons;
begin
  with WizardForm.BackButton do begin
    BtnSetText(hBackBtn,PAnsiChar(Caption));
    BtnSetVisibility(hBackBtn,Visible);
    BtnSetEnabled(hBackBtn,Enabled);
  end;
  with WizardForm.NextButton do begin
    BtnSetText(hNextBtn,PAnsiChar(Caption));
    BtnSetVisibility(hNextBtn,Visible);
    BtnSetEnabled(hNextBtn,Enabled);
  end;
  with WizardForm.CancelButton do begin
    BtnSetText(hCancelBtn,PAnsiChar(Caption));
    BtnSetVisibility(hCancelBtn,Visible);
    BtnSetEnabled(hCancelBtn,Enabled);
  end;
  BtnSetText(hDirBrowseBtn,PAnsiChar(WizardForm.DirBrowseButton.Caption));
  BtnSetText(hGroupBrowseBtn,PAnsiChar(WizardForm.GroupBrowseButton.Caption));
end;              
 
procedure WizardFormBtnClick(hBtn:HWND);
var
  Btn:TButton;
begin
  sndPlaySound(ExpandConstant('{tmp}\Click.wav'),$0001);
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
  sndPlaySound(ExpandConstant('{tmp}\WFEnter.wav'),$0001);
end;
 
procedure ButtonsTextures;
begin 
  with WizardForm.BackButton do begin
    hBackBtn:=BtnCreate(WizardForm.Handle,293,338,88,34,ExpandConstant('BackBtn.png'),0,False);
    BtnSetEvent(hBackBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
    BtnSetEvent(hBackBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hBackBtn,WFButtonFont.Handle);
    BtnSetFontColor(hBackBtn,$FFFFFF,$4f4f86,$000000,$B6B6B6);
    BtnSetCursor(hBackBtn,GetSysCursorHandle(32649));
    Width:=0;
    Height:=0;
  end;
 
  with WizardForm.NextButton do begin
    hNextBtn:=BtnCreate(WizardForm.Handle,495,338,88,34,ExpandConstant('NextBtn.png'),1,False);
    BtnSetEvent(hNextBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
    BtnSetEvent(hNextBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hNextBtn,WFButtonFont.Handle);
    BtnSetFontColor(hNextBtn,$FFFFFF,$4f4f86,$000000,$B6B6B6);
    BtnSetCursor(hNextBtn,GetSysCursorHandle(32649));
    Width:=0;
    Height:=0;
  end;
 
  with WizardForm.CancelButton do begin
    hCancelBtn:=BtnCreate(WizardForm.Handle,382,338,112,34,ExpandConstant('CancelBtn.png'),1,False);
    BtnSetEvent(hCancelBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
    BtnSetEvent(hCancelBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hCancelBtn,WFButtonFont.Handle);
    BtnSetFontColor(hCancelBtn,$FFFFFF,$4f4f86,$000000,$B6B6B6);
    BtnSetCursor(hCancelBtn,GetSysCursorHandle(32649));
    Width:=0;
    Height:=0;
  end;

  with WizardForm.DirBrowseButton do begin
    hDirBrowseBtn:=BtnCreate(WizardForm.Handle,520,177,86,23,ExpandConstant('browse.png'),1,False);
    BtnSetEvent(hDirBrowseBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
    BtnSetEvent(hDirBrowseBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hDirBrowseBtn,WFButtonFont.Handle);
    BtnSetFontColor(hDirBrowseBtn,$FFFFFF,$4f4f86,$000000,$B6B6B6);
    BtnSetCursor(hDirBrowseBtn,GetSysCursorHandle(32649));
    Width:=0;
    Height:=0;
  end;
 
  with WizardForm.GroupBrowseButton do begin
    hGroupBrowseBtn:=BtnCreate(WizardForm.Handle,520,177,86,23,ExpandConstant('browse.png'),1,False);
    BtnSetEvent(hGroupBrowseBtn,BtnMouseEnterEventID,WrapBtnCallback(@WFBtnEnter,1));
    BtnSetEvent(hGroupBrowseBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hGroupBrowseBtn,WFButtonFont.Handle);
    BtnSetFontColor(hGroupBrowseBtn,$FFFFFF,$4f4f86,$000000,$B6B6B6);
    BtnSetCursor(hGroupBrowseBtn,GetSysCursorHandle(32649));
    Width:=0;
    Height:=0;
  end;
end;
//************************************************ [Конец - Текстуры кнопок] ***************************************************//
 
procedure HideComponents;
begin; 
  WelcomeLabel1.Hide;
  WelcomeLabel2.Hide;
  SelectDirLabel.Hide;
  SelectDirBrowseLabel.Hide;
  #ifdef Components
    SelectComponentsLabel.Hide;
    WizardForm.ComponentsList.Hide;
  #endif
  #ifdef Tasks
    SelectTasksLabel.Hide;
    WizardForm.TasksList.Hide;
  #endif
  SelectStartMenuFolderLabel.Hide;
  SelectStartMenuFolderBrowseLabel.Hide;
  DirEditLabel.Hide;
  TotalSpaceLabel.Hide;
  FreeSpaceLabel.Hide;
  InstallSpacelabel.Hide;
  NeedSpaceLabel.Hide;
  TotalSpaceLabel2.Hide;
  FreeSpaceLabel2.Hide;
  InstallSpacelabel2.Hide;
  NeedSpaceLabel2.Hide;
  GroupEditLabel.Hide;
  NoIconsLabel.Hide;
  InstallingLabel.Hide;
  StatusLabel.Hide;
  FinishedHeadingLabel.Hide;
  FinishedLabel.Hide;
  IMGSetVisibility(DirFolder,False);
  IMGSetVisibility(DirEditImg,False);
  IMGSetVisibility(HDD,False);
  IMGSetVisibility(GroupFolder,False);
  BtnSetVisibility(hDirBrowseBtn,False);
  BtnSetVisibility(hGroupBrowseBtn,False);
  BtnSetVisibility(NoIconsCheck,False);
  ReadyPanel.Hide;
  ReadyBitmap.Hide;
  ReadyScrollBar.Hide;
  ReadyPanelLabel.Hide;
  ReadyLabel.Hide;
  IsDoneHide;
end;

procedure ShowComponents(CurPageID: Integer);
begin
  case CurPageID of
    wpWelcome: begin
      WelcomeLabel1.Show;
      WelcomeLabel2.Show;
    end;

    wpSelectDir: begin
      SelectDirLabel.Show;
      SelectDirBrowseLabel.Show;
      DirEditLabel.Show;
      TotalSpaceLabel.Show;
      FreeSpaceLabel.Show;
      InstallSpacelabel.Show;
      NeedSpaceLabel.Show
      TotalSpaceLabel2.Show;
      FreeSpaceLabel2.Show;
      InstallSpacelabel2.Show;
      NeedSpaceLabel2.Show;
      IMGSetVisibility(DirFolder,True);
      IMGSetVisibility(DirEditImg,True);
      IMGSetVisibility(HDD,True);
      BtnSetVisibility(hDirBrowseBtn,True);
    end;

    #ifdef Components
      wpSelectComponents: begin
        SelectComponentsLabel.Show;
        WizardForm.ComponentsList.Show;
      end;
    #endif

    wpSelectProgramGroup: begin
      SelectStartMenuFolderLabel.Show;
      SelectStartMenuFolderBrowseLabel.Show;
      GroupEditLabel.Show;
      NoIconsLabel.Show;
      IMGSetVisibility(DirEditImg,True);
      IMGSetVisibility(GroupFolder,True);
      BtnSetVisibility(NoIconsCheck,True);
      BtnSetVisibility(hGroupBrowseBtn,True);
    end;

    #ifdef Tasks
      wpSelectTasks: begin
        SelectTasksLabel.Show;
        WizardForm.TasksList.Show;
      end;
    #endif

    wpReady: begin
      ReadyBitmap.Show;
      ReadyScrollBar.Show;
      ReadyPanelLabel.Show;
      ReadyPanel.Show;
      ReadyLabel.Show;
      ReadyPanelLabel.Caption := WizardForm.ReadyMemo.Lines.Text;
    end;

    wpInstalling: begin
      InstallingLabel.Show;
      StatusLabel.Show;
      IsDoneShow();
    end;
                             
    wpFinished: begin
      FinishedHeadingLabel.Show;
      FinishedLabel.Show;
      LabelTime3.Show;
    end;
  end;
end;

function UninstPBProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
  pr,i1,i2:Extended;
  p:string;
begin
if Msg=$2 then SetWindowLong(h,-4,UninstPBOldProc);
  Result:=CallWindowProc(UninstPBOldProc,h,Msg,wParam,lParam);
  if (Msg=$402) and (UninstallProgressForm.ProgressBar.Position>UninstallProgressForm.ProgressBar.Min) then begin
    i1:=UninstallProgressForm.ProgressBar.Position-UninstallProgressForm.ProgressBar.Min;
    i2:=UninstallProgressForm.ProgressBar.Max-UninstallProgressForm.ProgressBar.Min;
    pr:=(i1*100)/i2;
    p:=+Format('%f',[pr])+'%';
    UnLabelPct.Caption:=p;
    StringChange(p,',','.');
    ImgPBSetPositionUn(UninstPB,pr);
    ImgApplyChangesBotvaU(UninstallProgressForm.Handle);
  end;
end;

function InitializeSetup: Boolean;
begin
  ExtractTemporaryFile('botva2.dll');
  ExtractTemporaryFile('b2p.dll');
  ExtractTemporaryFile('CallbackCtrl.dll');
  ExtractTemporaryFile('Click.wav');
  ExtractTemporaryFile('WFEnter.wav');
  ExtractTemporaryFile('Check.wav');
  Result:=True;
end;

procedure InitializeWizard;
begin
  CreateWizardForm;
  ButtonsTextures;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  HideComponents;
  ShowComponents(CurPageID);
  WizardForm.NextButton.Enabled:= True;
  if CurPageID = wpSelectDir then
    ObjectFunc(WizardForm.DirEdit);
  if (CurPageID = wpFinished) and ISDoneError then begin
    LabelTime3.Hide;
    WizardForm.Caption:= ExpandConstant('{cm:Error}');
    FinishedLabel.Font.Color:= $0000FF;
    FinishedHeadingLabel.Caption:= ExpandConstant('{cm:ErrorFinishedHeadingLabel}');
    FinishedLabel.Caption:= ExpandConstant('{cm:ErrorFinishedLabel}');
    DelTree(ExpandConstant('{app}'), True, True, True);
  end;
  SetStateNewButtons;
  ImgApplyChanges(WizardForm.Handle);
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  IsDoneUnpack(CurStep);
end;

procedure DeinitializeSetup; 
begin 
  BGImageStream.Free;
  BTNImageStream.Free;
  WFButtonFont.Free;
  gdipShutdown; 
end;

function InitializeUninstall(): Boolean;
begin
  FileCopy(ExpandConstant('{app}\Unistall\botva2.dll'), ExpandConstant('{tmp}\botva2.dll'), False);
  FileCopy(ExpandConstant('{app}\Unistall\CallbackCtrl.dll'), ExpandConstant('{tmp}\CallbackCtrl.dll'), False);
  FileCopy(ExpandConstant('{app}\Unistall\CancelBtn.png'), ExpandConstant('{tmp}\CancelBtn.png'), False);
  FileCopy(ExpandConstant('{app}\Unistall\Image.png'), ExpandConstant('{tmp}\Image.png'), False);
  FileCopy(ExpandConstant('{app}\Unistall\pbbkg.png'), ExpandConstant('{tmp}\pbbkg.png'), False);
  FileCopy(ExpandConstant('{app}\Unistall\pb.png'), ExpandConstant('{tmp}\pb.png'), False);
  Result:=True;
end;

procedure InitializeUninstallProgressForm();
begin
  with UninstallProgressForm do begin
    Bevel.Hide;
    InnerNotebook.Hide;
    OuterNotebook.Hide;
    ClientWidth:= ScaleX(700);
    ClientHeight:= ScaleY(400);
  end;

  UnInstallingLabel:= CreateLabel(UninstallProgressForm, ScaleX(203), ScaleY(80), ScaleX(0), ScaleY(0), ExpandConstant('{cm:UninstDescript}'), true);
  LabelSetFont(UnInstallingLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);
  
  UnStatusLabel:= CreateLabel(UninstallProgressForm, ScaleX(203), ScaleY(125), ScaleX(0), ScaleY(0), ExpandConstant('{cm:StatusUninst}'), true);
  LabelSetFont(UnStatusLabel, 10, 'Tahoma', $FFFFFF, [fsBold]);

  UnLabelPct:= CreateLabel(UninstallProgressForm, ScaleX(572), ScaleY(153), ScaleX(0), ScaleY(0), '', true);
  LabelSetFont(UnLabelPct, 8, 'Tahoma', $FFFFFF, [fsBold]);

  UninstallProgressForm.CancelButton.Visible:=False;
  with UninstallProgressForm.CancelButton do begin
    hCancelUninstBtn:=BtnCreateBotvaU(UninstallProgressForm.Handle,382,338,112,34,ExpandConstant('{tmp}\CancelBtn.png'),1,False);
    BtnSetTextBotvaU(hCancelUninstBtn, UninstallProgressForm.CancelButton.Caption);
    BtnSetFontColorBotvaU(hCancelUninstBtn,$FFFFFF,$4f4f86,$000000,$B6B6B6);
    BtnSetEnabledBotvaU(hCancelUninstBtn,False);
  end;

  ImgLoadBotvaU(UninstallProgressForm.Handle,ExpandConstant('{tmp}\Image.png'),0,0,0,0,False,True);
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep=usUninstall then begin
    UninstPB:=ImgPBCreateUn(UninstallProgressForm.Handle, ExpandConstant('{tmp}\pbbkg.png'),ExpandConstant('{tmp}\pb.png'),ScaleX(200), ScaleY(150), ScaleX(365), ScaleY(22));
    UninstPBOldProc:=SetWindowLong(UninstallProgressForm.ProgressBar.Handle,-4,CallBackProc(@UninstPBProc,4));
    ImgApplyChangesBotvaU(UninstallProgressForm.Handle);
  end;
end;

procedure DeinitializeUninstall;
begin
  gdipShutdownBotvaU;
end;