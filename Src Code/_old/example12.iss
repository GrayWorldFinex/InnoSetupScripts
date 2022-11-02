[Code]
var
  SP1, SP2, SP3: Longword;
  n2, n3: integer; tmr: Longword;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  MoveSpriteHor(SP2, 2, 25, 472);
  spImgSetSpriteIndex(SP2, n2);

  MoveSpriteHor(SP3, 2, 25, 472);
  spImgSetSpriteIndex(SP3, n2);
  
  n2:=n2+1; if n2=16 then n2:=1;
  n3:=n3+1; if n3=16 then n3:=1;
  spApplyChanges(h);
end;

function NextButtonClick(Page: Integer): Boolean;
var
  X, Y, X2, Y2, i: integer;
begin
  for i:=0 to 133 do begin
    spImgGetPosition(SP1, X,Y,X2,Y2);
    spImgSetPosition(SP1, x+2,Y,X2,Y2);
    spApplyChanges(WizardForm.Handle);
    AppProcessMessages;
    WizardForm.NextButton.Hide;
    WizardForm.BackButton.Show;
    Result:= False;
  end;
end;

function BackButtonClick(Page: Integer): Boolean;
var
  X, Y, X2, Y2, i:integer;
begin
  for i:=0 to 133 do begin
    spImgGetPosition(SP1, X, Y, X2, Y2);
    spImgSetPosition(SP1, x-2, Y, X2, Y2);
    spApplyChanges(WizardForm.Handle);
    AppProcessMessages;
    WizardForm.NextButton.Show;
    WizardForm.BackButton.Hide;
    Result:= False;
  end;
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

    SP1:= spImgLoad(Handle, '6766.bmp', 0, 0, ClientWidth, ClientHeight, True, True);
    SP2:= spImgLoad(Handle, '7f77.bmp', 30, 6, 28, 40, True, False);
    SP3:= spImgLoad(Handle, '7sf77.bmp', 120, -3, 48, 53, True, False);
    spImgSetBackgroundColor(SP2, $FF00FF);
    spImgSetBackgroundColor(SP3, $FF00FF);
    spImgSetSpriteCount(SP2, 15);
    spImgSetSpriteCount(SP3, 15);

    spApplyChanges(Handle);
    tmr:= SetTimer(Handle, 0, 60, {#SetCallBack('OnTimer')});
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spShutdown;
end;