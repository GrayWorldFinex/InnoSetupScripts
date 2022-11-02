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

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  btn: HWND;
  shd: LongWord;
  Isbtn: array [0..3] of TButton;
  Ismemo: array [0..3] of TMemo;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

procedure TagProc(Obj: TObject);
begin
  case Obj of
    Isbtn[0]: spBtnSetTag(btn, Ismemo[0].Text);
    Isbtn[1]: Ismemo[1].Text:= spBtnGetTag(btn);
    Isbtn[2]: spShdSetTag(shd, Ismemo[2].Text);
    Isbtn[3]: Ismemo[3].Text:= spShdGetTag(shd);
  end;
end;

procedure InitializeWizard;
var
  s: array of String;
  i, py, px: Integer;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Color:=$2C2C2C;
    Bevel.Hide;
    { ... }
    spInitialize(True, False);

    btn:=spBtnCreate(Handle, 'btn.png', 80, 40, 100, 20, BTN_BUTTON, 0);
    spBtnSetFontColor(btn, $999966, $CCFF33, $FFFFFF, $444444);
    spBtnSetFont(btn, Font.Handle);
    spBtnSetText(btn, 'Tag');

    shd:= spShdCreate(Handle,  343, 40, 217, 20, '[Align=taCenter]Tag[/align]', $CCFF33, Font.Handle);
    spShdSetShadow(shd, clBlack, 2, 6, SHD_STYLESHADOW);

    s:= ['Tag Data for Btn', '-', 'Tag Data for Shd', '-'];
    for i:=0 to 3 do begin
      if (i = 2) then px:=323;
      if (i = 1) or (i = 3) then py:=154 else py:=0;
      Ismemo[i]:=TMemo.Create(nil);
      with Ismemo[i] do begin
        Parent:=WizardForm;
        SetBounds(20+px, 80+py, 217, 100);
        Text:= s[i]
      end;
    end;

    for i:=0 to 3 do begin
    Isbtn[i]:=TButton.Create(nil);
    with Isbtn[i] do begin
      Parent:=WizardForm;
      SetBounds(30+i*114, 195, 80, 24);
      if i > 1 then Isbtn[i].Left:=Isbtn[i].Left+96;
      if (i = 0) or (i = 2) then Caption:='Read ↑'
      else Caption:='Write ↓';
      OnClick:=@TagProc;
      if (i = 0) or ( i = 2) then TagProc(Isbtn[i]);
     end;
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