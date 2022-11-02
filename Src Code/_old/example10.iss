[Code]
var
  SP3, SP4, tmr, fnt, l: LongWord;
  n2, n3: integer;

procedure MouseDown(Obj: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(TForm(Obj).Handle, $0112, $F012, 0);
end;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  MoveSpriteHor(SP3, 2, 25, 472);
  spImgSetSpriteIndex(SP3, n2);

  MoveSpriteHor(SP4, 2, 25, 472);
  spImgSetSpriteIndex(SP4, n2);

  n2:=n2+1; if n2=16 then n2:=1;
  n3:=n3+1; if n3=16 then n3:=1;

  spApplyChanges(h);
  spImageFormUpdate(h);
end;

procedure InitializeWizard;
begin
  with WizardForm do begin
    #if !defined(IS_ENHANCED) && (VER < 0x06000000)
    ExtractTemporaryFile('CallbackCtrl.dll');
    #endif
    #if defined(IS_ENHANCED)
    OnMouseDown:= @MouseDown;
    #endif
    OuterNotebook.Hide;
    Color:= clNone;
    Bevel.Hide;

    spInitialize(True, True);

    spImgLoad(Handle, 'Krinkelsteam.png', 0, 0, 500, 258, True, True);
    spImgLoad(Handle, '5.png', 80, 260, 128, 128, True, False);

    Sp3:= spImgLoad(Handle, '7f77.bmp', 30, 6, 28, 40, True, False);
    Sp4:= spImgLoad(Handle, '7sf77.bmp', 120, -3, 48, 53, True, False);
    spImgSetBackgroundColor(SP3, $FF00FF);
    spImgSetBackgroundColor(SP4, $FF00FF);
    spImgSetSpriteCount(SP3, 15);
    spImgSetSpriteCount(SP4, 15);

    fnt:= spFntCreateFont(PAnsiChar(Font.Name), 100, False, False, False, 12);
    l:= spShdCreate(Handle, 0, 240, 425, 70, '¬аша игра будет установлена в [b][min=200][color=$FF0000]' + DirEdit.Text + '[/color][/b][/min] и дл€ установки потребуетс€ [i][color=$FF0000]9.98 √б[/color][/i] свободного дискового пространства.', $000000, fnt);
    spShdAddGradient(l, $0000FF, $FF00FF, $10);

    spImageFormCreate(Handle, 0);
    spApplyChanges(Handle);

    tmr:= SetTimer(Handle, 0, 60, {#SetCallBack('OnTimer')});
  end;
end;

procedure CurPageChanged(Page: Integer);
begin
  with WizardForm do
  if Page <> wpWelcome then begin
    spShdSetText(l, 'lalala');
    spShdFreeGradient(l);
    NextButton.Hide;
    BackButton.Hide;
    spApplyChanges(WizardForm.Handle);
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spFntFreeFont(fnt);
  spShutdown;
end;