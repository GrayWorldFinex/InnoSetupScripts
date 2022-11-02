[code]
var
  h1: HWND;
  tmr: LongWord;
  SP2, SP3: LongWord;
  
function OnTimer(hWnd: HWND; Msg, wParam, lParam: LongInt): LongInt;
var
  x, y, w, h: Integer;
begin
  spBtnGetPosition(h1, x, y, w, h);
  if x > WizardForm.ClientWidth-w-20 then x:= 20;
  spBtnSetPosition(h1, x+2, y, w, h);
  spBtnRefresh(h1);
end;

procedure InitializeWizard;
var
  i: Byte;
begin
  with WizardForm do begin
    #if !defined(IS_ENHANCED) && (VER < 0x06000000)
    ExtractTemporaryFile('CallbackCtrl.dll');
    #endif
    OuterNotebook.Hide;
    Bevel.Hide;

    spInitialize(True, True);

    for i:=0 to 1 do
    with TLabel.Create(nil) do begin
      AutoSize:=False;
      Parent:=WizardForm;
      Transparent:=True;
      SetBounds(100-i, 26-i, WizardForm.ClientWidth-200, 25);
      with Font do begin
        if i = 0 then Color:=clBlack
        else Color:=clRed;
        Style:=[fsBold, fsItalic];
        Size:=15;
      end;
      Caption:='TEST Label';
    end;

    spImgLoad(Handle, '6766.bmp', 0, 0, ClientWidth, ClientHeight, True, True);

    Sp2:= spImgLoad(Handle, '7f77.bmp', 30, 6, 28, 40, False, False);
    Sp3:= spImgLoad(Handle, '7sf77.bmp', 120, -3, 48, 53, False, False);
    spImgSetBackgroundColor(SP2, $FF00FF);
    spImgSetBackgroundColor(SP3, $FF00FF);
    spImgSetSpriteCount(SP2, 15);
    spImgSetSpriteCount(SP3, 15);

    spBtnCreate(Handle, 'KrinkelsTeam.png', (ClientWidth-300) div 2, (ClientHeight- 100) div 2, 300, 160, BTN_PANEL, 0);

    h1:= spBtnCreate(Handle, 'button.png', 20, 110, 120, 32, BTN_BUTTON, 12);
    spBtnSetFontColor(h1, $FFFFFF, $FF6666, $6666FF, $888888);
    spBtnSetText(h1, 'TestButton');

    spApplyChanges(Handle);
    tmr:= SetTimer(Handle, 0, 60, {#SetCallBack('OnTimer')});
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spShutdown;
end;