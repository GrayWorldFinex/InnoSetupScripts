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
Source: "fmt\btn\Btn_03.png"; Flags: "dontcopy";
Source: "fmt\btn\Btn_04.png"; Flags: "dontcopy";

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  bn: array of HWND;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

procedure ClickParent(Btn: HWND; Event: Word);
var
  i: Byte;
begin
  for i:= 1 to GetArrayLength(bn)-1 do spBtnSetChecked(bn[i], 1);
  spBtnSetChecked(bn[0], 2);
  spApplyChanges(spBtnGetParent(Btn));
end;

procedure ClickChild(Btn: HWND; Event: Word);
var
  i, ch: Byte;
begin
  if Btn <> bn[0] then begin
    ch:= 0;
    for i:= 1 to GetArrayLength(bn)-1 do begin
      if spBtnGetChecked(bn[i]) > 0 then Inc(ch);
    end;
    if ch > 0 then begin
      if ch < GetArrayLength(bn)-1 then spBtnSetChecked(bn[0], 1)
      else spBtnSetChecked(bn[0], 2);
    end else spBtnSetChecked(bn[0], ch);
  end;
  spApplyChanges(spBtnGetParent(Btn));
end;

procedure InitializeWizard;
var
  i: Byte;
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

    bn:= [0,0,0,0,0,0];
    bn[0]:=spBtnCreate(Handle, 'Btn_04.png', 30, 50, 60, 20, BTN_CHECKBOXEX, 0);
    spBtnSetEvent(bn[0], spMouseUp, @ClickParent);

    for i:=0 to 5 do begin
      if i <> 0 then bn[i]:=spBtnCreate(Handle, 'Btn_03.png', 50, 50+30*i, 60, 20, BTN_CHECKBOX, 0);
      if i <> 0 then spBtnSetText(bn[i], 'child') else spBtnSetText(bn[i], 'parent');
      spBtnSetFontColor(bn[i],$CCFF33, $999966, $FFFFFF, $444444);
      if i <> 0 then spBtnSetEvent(bn[i], spMouseClick, @ClickChild);
      spBtnSetFont(bn[i], Font.Handle);
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