[Code]
var
  SP1, SP2, SP3: LongWord;
  n2, n3: Integer;
  tmr: LongWord;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  MoveSpriteHor(SP2, 2, 30, 610);
  spImgSetSpriteIndex(SP2, n2);

  MoveSpriteHor(SP3, 2, 30, 610);
  spImgSetSpriteIndex(SP3, n2);

  n2:=n2+1; if n2=16 then n2:=1;
  n3:=n3+1; if n3=16 then n3:=1;
  spApplyChanges(WizardForm.Handle);
  spImageFormUpdate(WizardForm.Handle);
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
    ClientWidth:= 640;
    ClientHeight:= 480;
    Color:= clNone;
    { ... }
    spInitialize(True, True);

    with DirEdit do begin
      Parent:= WizardForm;
      BorderStyle:= bsNone;
      SetBounds(137, 100, Width-25, Height);
    end;

    spImgLoad(Handle, '1.jpg', 0, 0, ClientWidth, ClientHeight, True, True);
    spImgLoad(Handle, '5.png', 35, 20, 100, 100, True, True);

    Sp2:= spImgLoad(Handle, '7f77.bmp', 30, 16, 28, 40, True, False);
    Sp3:= spImgLoad(Handle, '7sf77.bmp', 120, 5, 48, 53, True, False);
    spImgSetBackgroundColor(SP2, $FF00FF);
    spImgSetBackgroundColor(SP3, $FF00FF);
    spImgSetSpriteCount(SP2, 15);
    spImgSetSpriteCount(SP3, 15);

    spImageFormCreate(Handle, 0);
    spApplyChanges(Handle);

		tmr:= SetTimer(0, 0, 60, {#SetCallBack("OnTimer")});
    {!}
		PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;
procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spShutdown;
end;