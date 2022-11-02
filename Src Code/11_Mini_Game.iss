[Setup]
AppName=ISSprite
AppVername=0.1
AppPublisher=Shegorat
OutputBaseFilename=Example
DefaultDirName={sd}\Example
DisableWelcomePage=False
OutputDir=.

[Files]
Source: "Files\*"; Flags: "dontcopy";
#if !defined(IS_ENHANCED) && (VER < 0x06000000)
  Source: "CallbackCtrl.dll"; Flags: "dontcopy";
#endif

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  GameForm: TForm;
  GameExit: HWND;
  Score: LongInt;
  GameTimer: LongInt;
  ScoreLabel: LongWord;
  Layer: array [0..3] of HWND;
  Ghost: array [0..3] of LongWord;
  posX: array [0..3] of Integer;
  x, y, w, h: Integer;

function SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc: LongWord): LongWord; external 'SetTimer@user32.dll stdcall';
function KillTimer(hWnd, nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall';
function sndPlaySound(lpszSoundName: string; uFlags: cardinal):integer; external 'sndPlaySoundW@winmm.dll stdcall';

function OnTimer(Handle: HWND; Msg, wParam, lParam: LongInt): LongInt;
var
  i: Byte;
begin
  for i:=0 to 3 do if posX[i] >= 370 then begin
    posX[i]:=(-Random(370));
    Dec(Score);
    spShdSetText(ScoreLabel, 'Score: '+IntToStr(Score));
     sndPlaySound(ExpandConstant('{tmp}\Fail.wav'), $0001);
  end else begin
    spBtnSetPosition(Layer[i], posX[i], 20+i*45, 45, 45);
    spImgSetPosition(Ghost[i], posX[i], 20+i*45, 45, 45);
    posX[i]:=posX[i]+3;
    spBtnRefresh(Layer[i]);
  end;
  spApplyChanges(Handle);
  spImageFormUpdate(Handle);
end;

procedure CkickOnGhost(Btn: HWND; Event: Word);
var
  i: Byte;
begin
  case Btn  of
    Layer[0]: i:=0;
    Layer[1]: i:=1;
    Layer[2]: i:=2;
    Layer[3]: i:=3;
    Layer[4]: i:=4;
  end;
  Inc(Score);
  posX[i]:=400-Random(400)-400;
  spShdSetText(ScoreLabel, 'Score: '+IntToStr(Score));
  sndPlaySound(ExpandConstant('{tmp}\Sound.wav'), $0001);
end;

procedure ExitGame(Btn: HWND; Event: Word);
begin
  GameForm.Close;
end;

function InitializeSetup: Boolean;
var
  i: Byte;
begin                                    
  ExtractTemporaryFile('Sound.wav');
  ExtractTemporaryFile('Fail.wav');
  #if !defined(IS_ENHANCED) && (VER < 0x06000000)
    ExtractTemporaryFile('CallbackCtrl.dll');
  #endif

  spInitialize(False, False);

  GameForm:=TForm.Create(nil);
  with GameForm do begin
    BorderStyle:=bsNone;
    Color:=clNone;
    Width:=400;
    Height:=240;
    Position:=poScreenCenter;

    ScoreLabel:=spShdCreate(Handle, 10, 210, 100, 20, 'Score: 0', $FF22FF, 0);
    spShdSetShadow(ScoreLabel, clBlack, 3, 4, SHD_STYLEGLOW);

    spImgLoad(Handle, '_bg.png', 0, -13, 400, 252, True, True);

    GameExit:=spBtnCreate(Handle, 'btn.png', (Width - 110), 210, 100, 20, BTN_BUTTON, 0);
    spBtnSetFontColor(GameExit, $FF22FF, $87FF87, $FF22FF, $87FF87);
    spBtnSetEvent(GameExit, spMouseClick, @ExitGame);
    spBtnSetFont(GameExit, GameForm.Font.Handle);
    spBtnSetText(GameExit, 'Exit');

    for i:=0 to 3 do begin
      posX[i]:=Random(400);
      Ghost[i]:=spImgLoad(Handle, '_ghost.png', posX[i], 20+i*45, 0, 0, True, True);
      Layer[i]:=spBtnCreate(Handle, 'btn.png', posX[i], 0, 0, 0, BTN_PANEL, 0);
      spBtnSetEvent(Layer[i], spMouseClick, @CkickOnGhost);
      spBtnSetTransparent(Layer[i], 0);
    end;

    GameTimer:=SetTimer(Handle, 0, 1, {#SetCallBack("OnTimer")});
    spImageFormCreate(Handle, 0);
    spApplyChanges(Handle);

    ShowModal;
    KillTimer(0, GameTimer);
    spShutdown;
    Free;
  end;
end;