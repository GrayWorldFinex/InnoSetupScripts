[Code]
var
  LogMemo: TMemo;
  tmr, fnt: LongWord;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  spImageFormUpdate(WizardForm.Handle);
end;

procedure btnOnClick(hWnd: HWND; nEventID: Word);
begin
  MsgBox('Button Clicked', mbConfirmation, MB_OK);
end;

procedure TextOnEvent(Shd: Longword; Event: Word);
begin
  case Event of
    spMouseEnter: LogMemo.Lines.Add('MouseEnter');
    spMouseLeave: LogMemo.Lines.Add('MouseLeave');
    spMouseClick: LogMemo.Lines.Add('MouseClick');
  end;
end;

procedure MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(WizardForm.Handle,$0112,$F012,0);
end;

procedure InitializeWizard;
var
  l: LongWord;
  b1, b2: HWND;
begin
  with WizardForm do begin
    #if !defined(IS_ENHANCED) && (VER < 0x06000000)
    ExtractTemporaryFile('CallbackCtrl.dll');
    #endif
    #if defined(IS_ENHANCED)
    OnMouseDown:= @MouseDown;
    #endif
    OuterNotebook.Hide;
    Color:= crNone;

    spInitialize(True, False);
    
    LogMemo:= Tmemo.Create(WizardForm)
    LogMemo.SetBounds(230, 25, 210, 200);
    LogMemo.ScrollBars:= ssVertical;
    LogMemo.Parent:= WizardForm;

    spImgLoad(Handle, 'Krinkelsteam.png', 0, 0, 500, 258, True, True);
    spImgLoad(Handle, '5.png', 80, 260, 100, 100, True, False);

    fnt:= spFntCreateFont(PAnsiChar(Font.Name), 0, False, False, False, 10);
    l:= spShdCreate(Handle, 0, 240, 425, 70, '¬аша игра будет установлена в [b][min=200][color=$FF0000]' + DirEdit.Text + '\Local\AppData\Server host[/color][/b][/min] и дл€ установки потребуетс€ [i][color=$FF0000]9.98 √б[/color][/i] свободного дискового пространства.', $333333, fnt);
    spShdSetShadow(l, $00AA00, 4, 0, SHD_STYLEGLOW);
    spShdAddGradient(l, $0000FF, $FF00FF, $10);

    spShdSetEvent(l, spMouseEnter, @TextOnEvent);
    spShdSetEvent(l, spMouseLeave, @TextOnEvent);
    spShdSetEvent(l, spMouseClick, @TextOnEvent);

    b1:= spBtnCreate(Handle, 'button.png', 20, 200, 120, 32, $20, 12);
    spBtnSetEvent(b1, spMouseClick, @btnOnClick);
    spBtnSetFontColor(b1, $FFFFFF, $FF6666, $6666FF, $888888);
    spBtnSetText(b1, 'TestButton');

    spBtnSetCursor(b1, crHand);

    b2:= spBtnCreate(Handle, 'box.png', 160, 100, 16, 16, BTN_CHECKBOXEX, 0);
    spBtnSetChecked(b2, 1);
  //spBtnRefresh(b1);

    tmr:= SetTimer(0, 0, 80, {#SetCallBack('OnTimer')});

    spImageFormCreate(Handle, 0);
    spApplyChanges(Handle);
    {!}
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spFntFreeFont(fnt);
  spShutdown;
end;