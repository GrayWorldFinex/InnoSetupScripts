[Code]
var
  fnt, tmr: LongWord;

function OnTimer(h: hWnd; Msg, wParam, lParam: LongInt): LongInt;
begin
  spImageFormUpdate(h);
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
    spImgLoad(Handle, '5.png', 80, 260, 100, 100, True, False);

    fnt:= spFntCreateFont(PAnsiChar(Font.Name), 0, False, False, False, 10);
    l:= spShdCreate(Handle, ScaleX(0), ScaleY(35), ScaleX(500), ScaleY(70), '[min=50][align=taleft][u][i]Вас приветствует мастер[/min] [font=Georgia]установки[/font] игры[color=$0000ff][size=15] «[Prototype]»[/size][/u][/i][/color][/align]', $000000, fnt);
    spShdAddGradient(l, $0000FF, $FF00FF, 2);

    spImageFormCreate(Handle, 0);
    spApplyChanges(Handle);

    tmr:= SetTimer(Handle, 0, 80, {#SetCallBack('OnTimer')});
    PostMessage(NextButton.Handle, $10, 0, 0); {!}
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spFntFreeFont(fnt);
  spShutdown;
end;