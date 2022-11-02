[Code]
var
  SP2, SP3, tmr: LongWord;
  n2, n3: Integer;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  MoveSpriteHor(SP2, 2, 28, WizardForm.ClientWidth-28);
  spImgSetSpriteIndex(SP2, n2);

  MoveSpriteHor(SP3, 2, 28, WizardForm.ClientWidth-28);
  spImgSetSpriteIndex(SP3, n2);

  n2:=n2+1; if n2=16 then n2:=1;
  n3:=n3+1; if n3=16 then n3:=1;
  spApplyChanges(h);
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

    with DirEdit do begin
      Parent:= WizardForm;
      BorderStyle:= bsNone;
      SetBounds(137, 80, Width-25, Height);
    end;
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

    Log(IntToStr(HInstance));
    spImgLoadFromLibrary(Handle, 'ResourceStub.dll', 'IMG1', 'RT_RCDATA', 0, 0, ClientWidth, ClientHeight, True, True);
    Sp2:= spImgLoadFromLibrary(Handle, 'ResourceStub.dll', 'IMG2', 'RT_RCDATA', 30, 6, 28, 40, True, False);
    Sp3:= spImgLoadFromLibrary(Handle, 'ResourceStub.dll', 'IMG3', 'RT_RCDATA', 120, -3, 48, 53, True, False);
    DeleteFile(ExpandConstant('{tmp}\ResourceStub.dll'));

    spImgSetBackgroundColor(SP2, $FF00FF);
    spImgSetBackgroundColor(SP3, $FF00FF);
    spImgSetSpriteCount(SP2, 15);
    spImgSetSpriteCount(SP3, 15);

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