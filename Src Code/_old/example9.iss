[Code]
var
  flag: Boolean;
  SP1, tmr, fnt: LongWord;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
var
  n: Integer;
begin
  n:= spImgGetTransparent(SP1);
  if Flag then begin
    n:= n+5;
    if n >= 255 then begin
      n:= 255;
      flag:= False;
    end;
  end else begin
    n:= n-5;
    if n <= 0 then begin
      n:= 0;
      flag:= True;
    end;
  end;
  Log(IntToStr(n));
  spImgSetTransparent(SP1, n);
  spApplyChanges(WizardForm.Handle);
end;

procedure MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(WizardForm.Handle, $0112, $F012, 0);
end;

procedure InitializeWizard;
var
  l: Longword;
begin
  with WizardForm do begin
    #if !defined(IS_ENHANCED) && (VER < 0x06000000)
    ExtractTemporaryFile('CallbackCtrl.dll');
    #endif
    #if defined(IS_ENHANCED)
    OnMouseDown:= @MouseDown;
    #endif
    OuterNotebook.Hide;
    Color:= $FFFF00;
    Bevel.Hide;

    spInitialize(True, True);

    SP1:= spImgLoad(Handle, 'Krinkelsteam.png', 0, 0, ClientWidth, ClientHeight, True, True);
    spImgLoad(Handle, '5.png', 80, 260, 100, 100, True, False);

    fnt:= spFntCreateFont(PAnsiChar(Font.Name), 0, False, False, False, 10);
    l:= spShdCreate(Handle, 100, 240, 400, 70, '¬аша игра будет установлена в [b][min=200][color=$FF0000]' + DirEdit.Text + '\Local\AppData\Server host[/color][/b][/min] и дл€ установки потребуетс€ [i][color=$FF0000]9.98 √б[/color][/i] свободного дискового пространства.', $EEEEEE, fnt);
    spShdSetShadow(l, 1, 2, $AAAAAA, SHD_STYLESHADOW);
    spShdAddGradient(l, $0000FF, $FF00FF, $10);

    spApplyChanges(Handle);
    tmr:= SetTimer(0, 0, 80, {#SetCallBack('OnTimer')});
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spFntFreeFont(fnt);
  spShutdown;
end;