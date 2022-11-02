[Code]
const
  SB_VERT       = 1;
  SIF_POS       = 4;
  WM_HSCROLL    = $0114;
  WM_VSCROLL    = $0115;
  WM_MOUSEWHEEL = $020A;

type
  #if !defined(IS_ENHANCED)
  TMsg = record
    hwnd: HWND;
    message: UINT;
    wParam: LongInt;
    lParam: LongInt;
    time: DWORD;
    pt: TPoint;
  end;
  #endif

  TScrollInfo = record
    cbSize      : UINT;
    fMask       : UINT;
    nMin        : Integer;
    nMax        : Integer;
    nPage       : UINT;
    nPos        : Integer;
    nTrackPos   : Integer;
  end;

function PeekMessage(var lpMsg: TMsg; hWnd: HWND; wMsgFilterMin, wMsgFilterMax, wRemoveMsg: UINT): BOOL; external 'PeekMessageA@user32.dll stdcall';
function TranslateMessage(const lpMsg: TMsg): BOOL; external 'TranslateMessage@user32.dll stdcall';
function DispatchMessage(const lpMsg: TMsg): LongInt; external 'DispatchMessageA@user32.dll stdcall';

function CallWindowProc(lpPrevWndFunc: LongInt; hWnd: HWND; Msg: UINT; wParam, lParam: LongInt): LongInt; external 'CallWindowProcA@user32.dll stdcall';
function SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: LongInt): LongInt; external 'SetWindowLongA@user32.dll stdcall';
function GetScrollInfo(hwnd: HWND; fnBar: Integer; var lpsi: TScrollInfo): Boolean; external 'GetScrollInfo@user32.dll stdcall';

function SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc: LongWord): LongWord; external 'SetTimer@user32.dll stdcall';
function KillTimer(hWnd, nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall';
function ReleaseCapture: LongInt; external 'ReleaseCapture@user32.dll stdcall';
procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

procedure AppProcessMessages;
var
  Msg: TMsg;
begin
  while PeekMessage(Msg, WizardForm.Handle,0,0,1) do begin
    TranslateMessage(Msg);
    DispatchMessage(Msg);
  end;
end;

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