[Code]
var
  Sp1, sp2, sp3, fnt: LongWord;
  n2, n3: integer; tmr: LongWord;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  MoveSpriteHor(SP2, 2, 30, 610);
  spImgSetSpriteIndex(SP2, n2);

  MoveSpriteHor(SP3, 2, 30, 610);
  spImgSetSpriteIndex(SP3, n2);

  n2:=n2+1; if n2=16 then n2:=1;
  n3:=n3+1; if n3=16 then n3:=1;
  spApplyChanges(WizardForm.Handle);
end;

procedure InitializeWizard;
var
  i: Byte;
  l: Longword;
begin
  with WizardForm do begin
    #if !defined(IS_ENHANCED) && (VER < 0x06000000)
    ExtractTemporaryFile('CallbackCtrl.dll');
    #endif
    OuterNotebook.Hide;
    Bevel.Hide;
    ClientWidth:= 640;
    ClientHeight:= 480;

    spInitialize(True, True);

    for i:=0 to 1 do
    with TLabel.Create(nil) do begin
      AutoSize:=False;
      Parent:=WizardForm;
      Transparent:=True;
      SetBounds(100-i, 36-i, WizardForm.ClientWidth-200, 25);
      with Font do begin
        if i = 0 then Color:=clBlack
        else Color:=clRed;
        Style:=[fsBold, fsItalic];
        Size:=15;
      end;
      Caption:='TEST Label';
    end;

    spImgLoad(Handle, '6766.bmp', 0, 0, ClientWidth, ClientHeight, True, True);
    Sp2:= spImgLoad(Handle, '7f77.bmp', 30, 16, 28, 40, True, False);
    Sp3:= spImgLoad(Handle, '7sf77.bmp', 120, 5, 48, 53, True, False);
    spImgSetBackgroundColor(SP2, $FF00FF);
    spImgSetBackgroundColor(SP3, $FF00FF);
    spImgSetSpriteCount(SP2, 15);
    spImgSetSpriteCount(SP3, 15);

    fnt:= spFntCreateFont(PAnsiChar(Font.Name), 0, False, False, False, 10);
    l:= spShdCreate(Handle, 100, 240, 400, 70, '¬аша игра будет установлена в [b][min=200][color=$FF0000]' + DirEdit.Text + '\Local\AppData\Server host[/color][/b][/min] и дл€ установки потребуетс€ [i][color=$FF0000]9.98 √б[/color][/i] свободного дискового пространства.', $333333, fnt);
    spShdAddGradient(l, $0000FF, $FF00FF, $10);
    spApplyChanges(Handle);

    tmr:= SetTimer(0, 0, 60, {#SetCallBack("OnTimer")});
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spFntFreeFont(fnt);
  spShutdown;
end;