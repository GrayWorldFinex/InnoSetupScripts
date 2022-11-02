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
Source: "_old\Files\7f77.bmp"; Flags: "dontcopy";
Source: "_old\Files\7sf77.bmp"; Flags: "dontcopy";
Source: "_old\Files\6766.bmp"; Flags: "dontcopy";
#if !defined(IS_ENHANCED) && (VER < 0x06000000)
Source: "CallbackCtrl.dll"; Flags: "dontcopy";
#endif

[Modules]
#include "Modules\ISSprite.iss"

[code]
var
  SP1, SP2, SP3: LongWord;
  n2, n3: integer; tmr: LongWord;

function SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc: LongWord): longWord; external 'SetTimer@user32.dll stdcall';
function KillTimer(hWnd, nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall';

procedure MoveSpriteHor(Img: LongWord; Step, MinLeft, MaxLeft: Integer);
var
  x, y, x2, y2, ox, oy, px, py, px2, py2: Integer;
begin
  spImgGetPosition(Img, x, y, x2, y2);
  spImgGetDimensions(Img, ox, oy);
  spImgGetVisiblePart(Img, px, py, px2, py2);

  x:= x+Step;
  if x2 = 0 then
    if Step < 0 then x:= MaxLeft else x:= MinLeft;

  if Step > 0 then begin
    if ((x+x2) > MaxLeft) and (x2 > 0) then begin
      px2:= px2-Step;
    end;
    if (x = MinLeft) and (x2 < ox) then begin
      px2:=px2+Step;
      px:=ox-px2;
      x:=x-Step
    end;
  end else begin
    if (x < MinLeft) and (x2 > 0) then begin
      px2:= px2+Step;
      px:= ox-px2;
      x:= x-Step;
    end;
    if (x+ox >= MaxLeft) and (x2 < ox) then begin
      px:= 0;
      px2:= px2-Step;
    end;
  end;
  x2:= px2;
  spImgSetVisiblepart(Img, px, py, px2, py2);
  spImgSetPosition(Img, x, y, x2, y2);
end;

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

#if !defined(IS_ENHANCED) && (VER < 0x06000000)
function InitializeSetup: Boolean;
begin
  ExtractTemporaryFile('CallbackCtrl.dll');
  Result:= True;
end;
#endif

procedure InitializeWizard;
var
  i: Byte;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Bevel.Hide;
    ClientWidth:= 640;
    ClientHeight:= 480;
    { ... }
    spInitialize(True, True);

    with DirEdit do begin
      Parent:= WizardForm;
      BorderStyle:= bsNone;
      SetBounds(137, 100, Width-25, Height);
    end;
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
		
		SP1:= spImgLoad(Handle, '6766.bmp', 0, 0, ClientWidth, ClientHeight, True, True);
    SP2:= spImgLoad(Handle, '7f77.bmp', 30, 16, 28, 40, True, False);
    SP3:= spImgLoad(Handle, '7sf77.bmp', 120, 5, 48, 53, True, False);

    spImgSetBackgroundColor(SP2, $FF00FF);
    spImgSetBackgroundColor(SP3, $FF00FF);
    spImgSetSpriteCount(SP2, 15);
    spImgSetSpriteCount(SP3, 15);
		
    spApplyChanges(Handle);

		tmr:= SetTimer(0, 0, 60, {#SetCallBack("OnTimer")});
    {!}
		PostMessage(NextButton.Handle, $10, 0, 0);
		PostMessage(CancelButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  KillTimer(0, Tmr);
  spShutdown;
end;