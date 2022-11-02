[Code]
var
  h1, h2, h3: HWND;
  fnt: Longword;

procedure btnOnClick(hBtn: HWND; nEventID: Word);
begin
  spBtnSetVisible(h3, not spBtnGetVisible(h3));
end;

procedure MouseDown(Obj: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(TForm(Obj).Handle, $0112, $F012, 0);
end;

procedure InitializeWizard;
var
  l: Longword;
begin
  with WizardForm do begin
    #if defined(IS_ENHANCED)
    OnMouseDown:= @MouseDown;
    #endif
    OuterNotebook.Hide;
    Color:= clNone;
    Bevel.Hide;

    spInitialize(True, True);

    spImgLoad(Handle, 'Krinkelsteam.png', 0, 0, 500, 258, True, True);

    fnt:= spFntCreateFont(PAnsiChar(Font.Name), 0, False, False, False, 10);
    l:= spShdCreate(Handle, 0, 240, 425, 70, '¬аша игра будет установлена в [b][min=200][color=$FF0000]' + DirEdit.Text + '\Local\AppData\Server host[/color][/b][/min] и дл€ установки потребуетс€ [i][color=$FF0000]9.98 √б[/color][/i] свободного дискового пространства.', $EEEEEE, fnt);
    spShdAddGradient(l, $0000FF, $FF00FF, $10);

    h1:= spBtnCreate(Handle, 'button.png', 20, 200, 120, 32, $20, 12);
    spBtnSetFontColor(h1, $FFFFFF, $FF6666, $6666FF, $888888);
    spBtnSetCursor(h1, spBtnGetSysCursor(32649));
    spBtnSetEvent(h1, spMouseClick, @btnOnClick);
    spBtnSetText(h1, 'TestButton');

    h2:= spBtnCreate(Handle, 'box.png', 150, 210, 16, 16, $80, 0);
    spBtnSetChecked(h2, 1);

    h3:= spBtnCreate(Handle, '5.png', 350, 180, 128, 128, BTN_PANEL, 0);
    spBtnSetVisible(h3, false);
    spBtnSetTransparent(h3, 200);

    spImageFormCreate(Handle, 60);
    spApplyChanges(Handle);
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  spFntFreeFont(fnt);
  spShutdown;
end;