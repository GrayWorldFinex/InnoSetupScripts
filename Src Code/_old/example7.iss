[Code]
var
  SP1, SP2: LongWord;
  tmr: LongWord;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  spImageFormUpdate(h);
end;

procedure MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(WizardForm.Handle,$0112,$F012,0);
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
  
    Sp1:= spImgLoad(WizardForm.Handle, 'Krinkelsteam.png', 0, 0, 500, 258, True, True);
    Sp2:= spImgLoad(WizardForm.Handle, '5.png', 80, 260, 100, 100, True, False);
  
    spImageFormCreate(Handle, 0);
    spApplyChanges(Handle);

    tmr:= SetTimer(Handle, 0, 80, {#SetCallBack('OnTimer')});
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spShutdown;
end;