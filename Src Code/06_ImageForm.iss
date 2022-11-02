[Setup]
AppName=ISSprite
AppVername=0.1
AppPublisher=Shegorat
OutputBaseFilename=Example
DefaultDirName={sd}\Example
DisableWelcomePage=False
OutputDir=.

[Files]
Source: "Files\*"; Flags: "dontcopy";
Source: "compiler:WizModernImage.bmp"; Flags: "dontcopy";


[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  w: LongWord;
  b: array of HWND;

procedure Clicks(Btn: HWND; Event: Word);
begin
  with WizardForm do
  case Btn of
    b[0]: BackButton.OnClick(BackButton);
    b[1]: NextButton.OnClick(NextButton);
    b[2]: CancelButton.OnClick(CancelButton);
    b[3]: DirBrowseButton.OnClick(DirBrowseButton);
    else Exit;
  end;
end;

procedure InitializeWizard;
var
  i, l: Byte;
  s: array of String;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Bevel.Hide;
    { ... }
    spInitialize(True, True);

    #ifndef CreateImageForm
      spImgLoad(Handle, '_bg.png', 0, 0, Width, Height, True, True);
      spImageFormCreate(Handle, 30);
      Color:=clNone; {!}
    #endif

    w:= spImgLoad(Handle, 'WizModernImage.bmp', 10, 10+30, 190, 340, True, True);

    with WelcomeLabel1 do begin
      Parent:=WizardForm;
      Font.Color:=$33FFCC;
      Left:= Left+5;
      Top:=Top+30;
    end;

    with WelcomeLabel2 do begin
      Parent:=WizardForm;
      Font.Color:=$33FFCC;
      Left:= Left+5;
      Top:=Top+30;
    end;

    with SelectDirLabel do begin
      Parent:=WizardForm;
      Font.Color:=$33FFCC;
      Left:= (WizardForm.Width-Width) div 2;
      Top:=Top+80;
    end;

    with SelectDirBrowseLabel do begin
      Parent:=WizardForm;
      Font.Color:=$33FFCC;
      Left:= SelectDirLabel.Left;
      Top:=Top+80;
    end;

    with DiskSpaceLabel do begin
      Parent:=WizardForm;
      Font.Color:=$33FFCC;
      Left:= SelectDirLabel.Left;
      Top:=Top+120;
    end;

    with DirEdit do begin
      Parent:=WizardForm;
      Font.Color:=$33FFCC;
      BorderStyle:=bsNone;
      Left:= (20+WizardForm.Width-Width-105) div 2;
      Top:=Top+100;
    end;

    b:= [0, 0, 0, 0];
    s:= ['Назад', 'Далее',  'Отмена', 'Обзор...'];
    for i:=0 to 3 do begin
      if i = 2 then l:= 10;
      b[i]:= spBtnCreate(Handle, 'btn.png', (250+105*i)+l, Height-40, 100, 20, BTN_BUTTON, 0);
      spBtnSetFontColor(b[i], $CCFF33, clWhite, clWhite, clWhite);
      spBtnSetEvent(b[i], spMouseClick, @Clicks);
      spBtnSetFont(b[i], Font.Handle);
      spBtnSetText(b[i], s[i]);
      if i = 3 then spBtnSetPosition(b[i], DirEdit.Left+DirEdit.Width+5, DirEdit.Top+1, 100, 20);
    end;
    spApplyChanges(Handle);
    { ... }
  end;
end;

procedure CurPageChanged(Page: Integer);
begin
  with WizardForm do begin
    BackButton.Visible:=False;
    NextButton.Visible:=False;
    PostMessage(CancelButton.Handle, $10, 0, 0);
    case Page of
      wpWelcome: begin
        spImgSetVisibility(w, True);
        WelcomeLabel1.Show;
        WelcomeLabel2.Show;
        SelectDirLabel.Hide;
        SelectDirBrowseLabel.Hide;
        DirEdit.Hide;
        DiskSpaceLabel.Hide;
        spBtnSetVisible(b[0], False);
        spBtnSetEnabled(b[1], True);
        spBtnSetVisible(b[3], False);
      end;
      wpSelectDir: begin
        spImgSetVisibility(w, False);
        WelcomeLabel1.Hide;
        WelcomeLabel2.Hide;
        SelectDirLabel.Show;
        SelectDirBrowseLabel.Show;
        DirEdit.Show;
        DiskSpaceLabel.Show;
        spBtnSetVisible(b[0], True);
        spBtnSetEnabled(b[1], False);
        spBtnSetVisible(b[3], True);
      end;
    end;
    spApplyChanges(Handle);
  end;
end;

procedure DeinitializeSetup;
begin
  spShutdown;
end;