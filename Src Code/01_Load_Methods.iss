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
procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

procedure InitializeWizard;
var
  i: Byte;
  b: array of HWND;
  s: array of String;
  g: array of LongWord;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Color:=$2C2C2C;
    Bevel.Hide;
    { ... }
    spInitialize(False, False);

    #ifdef CreateImageForm
      spImgLoad(Handle, '_bg.png', 0, 0, Width, Height, True, True);
      spImageFormCreate(Handle, 30);
      Color:=clNone; {!}
    #endif

    s:=['tmp', 'res', 'dll'];
    b:=[0,0,0]; g:=[0,0,0];

    b[0]:=spBtnCreate(Handle, 'btn.png', 25, 40, 100, 20, BTN_BUTTON, 0);
    b[1]:=spBtnCreateFromResource(Handle, 'BTN', 25, 65, 100, 20, BTN_BUTTON, 0);
    b[2]:=spBtnCreateFromLibrary(Handle, 'lib.dll', 'BTN', 'RC_DATA', 25, 90, 100, 20, BTN_BUTTON, 0);

    g[0]:= spImgLoad(Handle, 'btn.png', 135, 40, 100, 20, True, True);
    g[1]:= spImgLoadFromResource(Handle, 'BTN', 135, 65, 100, 20, True, True);
    g[2]:= spImgLoadFromLibrary(Handle, 'lib.dll', 'BTN', 'RC_DATA', 135, 90, 100, 20, True, True);

    for i:=0 to 2 do begin
      spBtnSetFontColor(b[i], clWhite, clWhite, clWhite, clWhite);
      spBtnSetFont(b[i], NextButton.Font.Handle);
      spBtnSetText(b[i], 'btn_' + s[i]);
      spImgSetSpriteCount(g[i], 4);
      spImgSetSpriteIndex(g[i], 4);
      if g[i] <> 0 then
        spShdCreate(Handle, 135, 41+25*i, 100, 18, '[align=taCenter]'+'img_' + s[i], clWhite, 0);
    end;
    spApplyChanges(Handle);
    { ... }
    PostMessage(NextButton.Handle, $10, 0, 0); {!}
  end;
end;

procedure DeinitializeSetup;
begin
  spShutdown;
end;