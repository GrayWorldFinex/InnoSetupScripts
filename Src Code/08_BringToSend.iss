[TEST OPTIONS]
#define CreateImageForm

[Setup]
AppName=ISSprite
AppVername=0.1
AppPublisher=Shegorat
OutputBaseFilename=Example
DefaultDirName={sd}\Example
DisableWelcomePage=False
OutputDir=.
#if defined(IS_ENHANCED)
  #if VER < 0x06000000
    //Inno by RESTOOLS
    RawDataResource=BTN:Files\btn.png
  #else
    //Inno by Leserg
    RawDataResource=BTN>Files\btn.png
  #endif
#endif

[Files]
Source: "Files\*"; Flags: "dontcopy";

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  b: HWND;
  NewID: Byte;
  bg: LongWord;
  g: array of LongWord;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

procedure BringToSend(Btn: HWND; Event: Word);
begin
#ifdef CreateImageForm
  case NewID of
    0: begin
      spBtnSetText(b, 'SendToBack');
      spImgBringToFront(g[0]);
      NewID:=1;
  end;
    1: begin
      spBtnSetText(b, 'BringToFront');
      spImgSendToBack(g[1]);
      spImgSendToBack(g[0]);
      NewID:=0;
    end;
  end;
#else
  case NewID of
    0: begin
      spBtnSetText(b, 'SendToBack');
      spImgBringToFront(g[0]);
      NewID:=1;
  end;
    1: begin
      spBtnSetText(b, 'BringToFront');
      spImgSendToBack(g[1]);
      NewID:=0;
    end;
  end;
#endif
  spApplyChanges(WizardForm.Handle);
end;

procedure InitializeWizard;
var
  i: Byte;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Color:=$2C2C2C;
    Bevel.Hide;
    { ... }
    spInitialize(False, False);

    #ifdef CreateImageForm
      bg:= spImgLoad(Handle, '_bg.png', 0, 0, Width, Height, True, True);
      spImageFormCreate(Handle, 30);
      Color:=clNone; {!}
    #endif

    g:=[0,0];
    for i:=0 to 1 do g[i]:= spImgLoad(Handle, 'btn.png', 235+35*i, 80+35*i, 0, 0, False, True);

    b:=spBtnCreate(Handle, 'btn.png', 100, 80, 100, 20, BTN_BUTTON, 0);
    spBtnSetFontColor(b, clWhite, clWhite, clWhite, clWhite);
    spBtnSetEvent(b, spMouseClick, @BringToSend);
    spBtnSetFont(b, NextButton.Font.Handle);
    spBtnSetText(b, 'BringToFront');

    spApplyChanges(Handle);
    { ... }
    PostMessage(NextButton.Handle, $10, 0, 0); {!}
  end;
end;

procedure DeinitializeSetup;
begin
  spShutdown;
end;