//������ ��� ������ � ��������������
//����� South.Tver 03.2012
//��� ������ ��������� botva2.dll ������ �� ���� 0.9.8

//��������� ��� �������������
#define ScrollBarBkgImg     "sbbkg.png"
#define ScrollBarBtnImg     "sbbtn.png"
#define ScrollBarUpBtnImg   "sbupbtn.png"
#define ScrollBarDownBtnImg "sbdownbtn.png"
#define CheckBoxImg         "CheckBox.png"
#define RadioBtnImg         "RadioBtn.png"
#define ScrollBarFrameImg   "sbframe.png"
//�������� �������� �������� �� ����� ������������
#define FrameIndent         5
//������ ������ ���������� (��� �� ������ ����� ����������)
#define sbBtnWidth          18
//������ ������ ����������
#define sbBtnHeight         30
//������ ������ ��������� ����������
#define sbUpDownBtnHeight   18
//������ ������ � ������������
#define ItemHeight          20
//�������� ��� ������ �������
#define LevelIndent         15

//����� ���������� � ������� BGR, � �� RGB
#define NormalFontColor     "$000000"
#define FocusedFontColor    "$00FF00"
#define PressedFontColor    "$FF0000"
#define DisabledFontColor   "$CFCFCF"

//�������/��������� ��� ������ � ��������������
//function CheckListBoxCreate(Parent:TWinControl; Left,Top,Width,Height:integer):integer;
//function clbAddRadioBtnItem(clbind:integer; Name, Caption:PAnsiChar; Level:integer; Checked:boolean; GroupID:integer):integer;
//function clbAddChkBoxItem(clbind:integer; Name, Caption:PAnsiChar; Level:integer; Checked:boolean):integer;
//function clbFindItemByName(clbind:integer;Name:AnsiString):integer;
//procedure clbSetItemEnabled(clbind,itmind:integer; Value:boolean);
//procedure clbSetMouseItemEnterEvent(clbind:integer; proc:TclbInnerProc);
//procedure clbSetItemClickEvent(clbind:integer; proc:TclbInnerProc);
//function clbIsItemCheckedByIndex(clbind,itmind:integer):boolean;
//function clbIsItemCheckedByName(clbind:integer; Name:AnsiString):boolean;
//procedure clbSetVisibility(ci:integer; Value:boolean);
//function clbGetVisibility(ci:integer):boolean;
//procedure clbRefresh(ci:integer);

[Code]
type
  TclbItem = record
    Name    : AnsiString;
    Handle  : HWND;
    Level   : integer;
    Caption : AnsiString;
  end;

  TAclbItem = array of TclbItem;

  TScrollBarChangePos = procedure (mp,cp:TPanel;pos:integer);
  TclbInnerProc = procedure (clbind,itmind:integer);

  Tclb = record
    MainPanel        : TPanel;
    ChildPanel       : TPanel;
    ItemList         : TAclbItem;
    FrameImg         : Longint;
    ImgPanel         : TPanel;
    OnMouseItemEnter : TclbInnerProc;
    OnItemClick      : TclbInnerProc;
  end;

  TACLB = array of Tclb;

  TclbScrollBar = record
    bkgimg      : Longint;
    hbtn        : HWND;
    hUpBtn      : HWND;
    hDownBtn    : HWND;
    op          : Longint;
    PosMin,
    PosMax      : integer;
    IsMouseDown : boolean;
    CurStartPos : TPoint;
    Parent      : Tclb;
  end;

  TASB = array of TclbScrollBar;

  TPaintStruct = record
    hdc: LongWord;
    fErase: BOOL;
    rcPaint: TRect;
    fRestore: BOOL;
    fIncUpdate: BOOL;
    rgbReserved: array[0..31] of Byte;
  end;

  TNewWndProc = function(h:hWnd;Msg,wParam,lParam:Longint):Longint;

var
  ASB    : TASB;
  ACLB   : TACLB;
  CurCLB : integer;

function Addr(P:TNewWndProc;ParamCount:integer):LongWord; external 'wrapcallbackaddr@{tmp}\CallbackCtrl.dll stdcall delayload';
function pGetWindowLong(hWnd: HWND; nIndex: Integer): Longint;  external 'GetWindowLongA@user32.dll stdcall';
function pInvalidateRect(hWnd: HWND; lpRect: Longint; bErase: BOOL): BOOL; external 'InvalidateRect@user32.dll stdcall';
function pGetAncestor(hwnd: HWND; gaFlags: UINT): HWND; external 'GetAncestor@user32.dll stdcall';
function pGetClienTRect(hWnd: HWND; var lpRect: TRect): BOOL; external 'GetClientRect@user32.dll stdcall';
function pGetDC(hWnd: HWND): LongWord; external 'GetDC@user32.dll stdcall'; 
function pCreateCompatibleDC(DC: LongWord): LongWord; external 'CreateCompatibleDC@gdi32.dll stdcall';
function pCreateCompatibleBitmap(DC: LongWord; Width, Height: Integer): HBITMAP; external 'CreateCompatibleBitmap@gdi32.dll stdcall';
function pReleaseDC(hWnd: HWND; hDC: LongWord): Integer; external 'ReleaseDC@user32.dll stdcall';
function pSelectObject(DC: LongWord; p2: LongWord): LongWord; external 'SelectObject@gdi32.dll stdcall';
function pGetWindowRect(hWnd: HWND; var lpRect: TRect): BOOL; external 'GetWindowRect@user32.dll stdcall';
function pScreenToClient(hWnd: HWND; var lpPoint: TPoint): BOOL; external 'ScreenToClient@user32.dll stdcall';
function pCallWindowProc(lpPrevWndFunc: Longint; hWnd: HWND; Msg: UINT; wParam: Longint; lParam: Longint): Longint; external 'CallWindowProcA@user32.dll stdcall';
function pBitBlt(DestDC: LongWord; X, Y, Width, Height: Integer; SrcDC: LongWord; XSrc, YSrc: Integer; Rop: DWORD): BOOL; external 'BitBlt@gdi32.dll stdcall';
function pDeleteObject(p1: LongWord): BOOL; external 'DeleteObject@gdi32.dll stdcall';
function pBeginPaint(hWnd: HWND; var lpPaint: TPaintStruct): LongWord; external 'BeginPaint@user32.dll stdcall';
function pEndPaint(hWnd: HWND; const lpPaint: TPaintStruct): BOOL; external 'EndPaint@user32.dll stdcall';
function pSetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: Longint): Longint; external 'SetWindowLongA@user32.dll stdcall';
function pGetCursorPos(var lpPoint: TPoint): BOOL; external 'GetCursorPos@user32.dll stdcall';
function pDeleteDC(DC: LongWord): BOOL; external 'DeleteDC@gdi32.dll stdcall';
function pIntersectRect(var lprcDst: TRect; const lprcSrc1, lprcSrc2: TRect): BOOL; external 'IntersectRect@user32.dll stdcall';

procedure ItemCheck(ci,ii:integer;f:boolean); forward;
function sbGetIndByParent(Parent:Tclb):integer; forward;
procedure sbSetBtnPosition(sb:TclbScrollBar); forward;

function iif(f:boolean;p1,p2:integer):integer;
begin
  if f then Result:=p1 else Result:=p2;
end;

//*********************************************************************************************************
//*********************************************************************************************************
//*********************************************************************************************************
//��������� WM_MOUSEWHEEL
var
  msw:boolean;

procedure clbPerformMouseWheel(ind:integer;wParam,lParam:Longint);
var
  dY,kf,wp,sbind:integer;
begin
  if wParam>0 then kf:=1 else kf:=-1;
  wp:=(DWORD(wParam*kf) shr 16)*kf;    //��������
  dY:={#ItemHeight}*(wp div 120); 
  if (wp>0) and (ACLB[ind].ChildPanel.Top<0) then begin //������� ������ ���� (������ ������� ������)
    if ACLB[ind].ChildPanel.Top+dY>0 then dY:=-ACLB[ind].ChildPanel.Top;
    ACLB[ind].ChildPanel.Top:=ACLB[ind].ChildPanel.Top+dY;
  end;
  if (wp<0) and ((ACLB[ind].ChildPanel.Top+ACLB[ind].ChildPanel.Height)>ACLB[ind].MainPanel.Height) then begin //������� ������ ����� (������ ������� �����)
    if (ACLB[ind].ChildPanel.Top+ACLB[ind].ChildPanel.Height+dY)<ACLB[ind].MainPanel.Height then 
      dY:=ACLB[ind].MainPanel.Height-(ACLB[ind].ChildPanel.Top+ACLB[ind].ChildPanel.Height);
    ACLB[ind].ChildPanel.Top:=ACLB[ind].ChildPanel.Top+dY;
  end;
  if wp<>0 then begin
    ind:=sbGetIndByParent(ACLB[ind]);
    sbSetBtnPosition(ASB[ind]);
  end;
end;

function CursorInCLB(ind:integer;p:TPoint):boolean;
var
  rc:TRect;
begin
  pScreenToClient(ACLB[ind].MainPanel.Handle,p);
  pGetClientRect(ACLB[ind].MainPanel.Handle,rc);
  Result:=False;
  if (p.X>=rc.Left) and (p.X<=rc.Right) and (p.Y>=rc.Top) and (p.Y<=rc.Bottom) then Result:=True;
end;

function NewWFProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
  Pt : TPoint;
begin
  case Msg of
    $2: begin
      pSetWindowLong(h,-4,pGetWindowLong(h,-21));
      msw:=False;
      Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
    end;
    $20A: begin
      if (CurCLB>=0) then begin
        pGetCursorPos(Pt);
        if ACLB[CurCLB].ImgPanel.Visible and CursorInCLB(CurCLB,Pt) then begin
          Result:=0;
          clbPerformMouseWheel(CurCLB,wParam,lParam);
        end else Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
      end else Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
    end else Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
  end;
end;

procedure SetNewWFProc;
begin
  CurCLB:=-1;
  pSetWindowLong(WizardForm.Handle,-21,pGetWindowLong(WizardForm.Handle,-4));
  pSetWindowLong(WizardForm.Handle,-4,Addr(@NewWFProc,4));
  msw:=True;
end;

//*********************************************************************************************************
//*********************************************************************************************************
//*********************************************************************************************************
//���������
function sbGetInd(h:HWND):integer;
var
  i:integer;
begin
  Result:=-1;
  for i:=0 to GetArrayLength(ASB)-1 do
    if (ASB[i].hBtn=h) or (ASB[i].hUpBtn=h) or (ASB[i].hDownBtn=h) then begin
      Result:=i;
      Break;
    end;
end;

function sbGetIndByParent(Parent:Tclb):integer;
var
  i:integer;
begin
  Result:=-1;
  for i:=0 to GetArrayLength(ASB)-1 do
    if ASB[i].Parent.ImgPanel.Handle=Parent.ImgPanel.Handle then begin
      Result:=i;
      Break;
    end;
end;

procedure sbBtnMouseDown(h:HWND);
var
  Left,Top,Width,Height:integer;
  ind : integer;
begin
  ind:=sbGetInd(h);
  if ind=-1 then Exit;
  pGetCursorPos(ASB[ind].CurStartPos);
  pScreenToClient(h,ASB[ind].CurStartPos);
  ASB[ind].IsMouseDown:=True;
end;

procedure sbBtnMouseUp(h:HWND);
var
  ind : integer;
begin
  ind:=sbGetInd(h);
  if ind=-1 then Exit;
  ASB[ind].IsMouseDown:=False;
end;

procedure sbSetBtnPosition(sb:TclbScrollBar);
var
  Left,Top,Width,Height:integer;
  pos:Single;
begin
  BtnGetPosition(sb.hbtn,Left,Top,Width,Height);
  pos:=sb.Parent.ChildPanel.Top*100/(sb.Parent.MainPanel.Height-sb.Parent.ChildPanel.Height)
  Top:=Round(sb.PosMin+pos*(sb.PosMax-sb.PosMin)/100);
  BtnSetPosition(sb.hbtn,Left,Top,Width,Height);
  BtnRefresh(sb.hbtn);
  sb.Parent.MainPanel.Refresh;
end;

procedure sbSetChildPanelPosition(sb:TclbScrollBar);
var
  NewTop, k1, k2, k3:Extended;
  k4, NewTop2,Left,Top,Width,Height:integer;
begin
  //Extended ��� ���. ��� ������������� ���������� �� �������� :(
  BtnGetPosition(sb.hbtn,Left,Top,Width,Height);
  k1 := Top-sb.PosMin;
  k2 := sb.PosMax-sb.PosMin;
  k3 := sb.Parent.MainPanel.Height-sb.Parent.ChildPanel.Height;
  NewTop:=(k1/k2)*k3;
  //NewTop:=(Top-sb.PosMin)/(sb.PosMax-sb.PosMin)*(sb.Parent.MainPanel.Height-sb.Parent.ChildPanel.Height);
  k1 := {#ItemHeight};
  k2 := NewTop/k1;
  k4 := Round(k2); 
  NewTop2:=k4*{#ItemHeight};
  //NewTop2:=Round(NewTop/{#ItemHeight})*{#ItemHeight};
  if sb.Parent.ChildPanel.Top<>NewTop2 then sb.Parent.ChildPanel.Top:=NewTop2;
end;

function sbBtnProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
  Left,Top,Width,Height:integer;
  ind : integer;
  p     : TPoint;
  Parent: HWND;
begin
  ind:=sbGetInd(h);
  if ind=-1 then begin
    Result:=0;
    Exit;
  end;
  if Msg=$2 then pSetWindowLong(h,-4,ASB[ind].op);
  Result:=pCallWindowProc(ASB[ind].op,h,Msg,wParam,lParam);
  case Msg of
    $47: sbSetChildPanelPosition(ASB[ind]);
    $200: if ASB[ind].IsMouseDown then begin
      Parent:=pGetAncestor(h,1);
      pGetCursorPos(p);
      pScreenToClient(Parent,p);
      BtnGetPosition(h,Left,Top,Width,Height);
      Top:=p.y-ASB[ind].CurStartPos.Y;
      if Top<ASB[ind].PosMin then Top:=ASB[ind].PosMin;
      if Top>ASB[ind].PosMax then Top:=ASB[ind].PosMax;
      BtnSetPosition(h,Left,Top,Width,Height);
      BtnRefresh(h);
      ASB[ind].Parent.MainPanel.Refresh;
      ASB[ind].Parent.ChildPanel.Refresh;
    end;
  end;
end;

procedure sbDownBtnClick(h:HWND);
var
  ind:integer;
begin
  ind:=sbGetInd(h);
  if ind=-1 then Exit;
  if ASB[ind].Parent.ChildPanel.Top>(ASB[ind].Parent.MainPanel.Height-ASB[ind].Parent.ChildPanel.Height) then begin
    ASB[ind].Parent.ChildPanel.Top:=ASB[ind].Parent.ChildPanel.Top-{#ItemHeight};  
    sbSetBtnPosition(ASB[ind]);
  end;
end;

procedure sbUpBtnClick(h:HWND);
var
  ind:integer;
begin
  ind:=sbGetInd(h);
  if ind=-1 then Exit;
  if ASB[ind].Parent.ChildPanel.Top<0 then begin
    ASB[ind].Parent.ChildPanel.Top:=ASB[ind].Parent.ChildPanel.Top+{#ItemHeight};
    sbSetBtnPosition(ASB[ind]);
  end;
end;

procedure sbSetVisibility(sbind:integer;Value:boolean);
begin                   
  ImgSetVisibility(ASB[sbind].bkgimg,Value);
  ImgApplyChanges(ASB[sbind].Parent.ImgPanel.Handle);
  BtnSetVisibility(ASB[sbind].hbtn,Value);
  BtnSetVisibility(ASB[sbind].hUpBtn,Value);
  BtnSetVisibility(ASB[sbind].hDownBtn,Value);
end;

function sbCreate(Parent: Tclb):TclbScrollBar;
var
  bl:integer;
begin
  Result.Parent:=Parent;
  Result.PosMin:={#sbUpDownBtnHeight};
  Result.PosMax:=Parent.MainPanel.Height-{#sbBtnHeight}-{#sbUpDownBtnHeight};
  Result.IsMouseDown:=False; 
  bl:=Parent.MainPanel.Width-{#sbBtnWidth}+(({#sbBtnWidth} div 2)-({#sbBtnWidth} div 2));
  Result.hbtn:=BtnCreate(Parent.MainPanel.Handle,bl,Result.PosMin,{#sbBtnWidth},{#sbBtnHeight},'{#ScrollBarBtnImg}',0,False);
  BtnSetEvent(Result.hbtn,BtnMouseDownEventID,WrapBtnCallback(@sbBtnMouseDown,1));
  BtnSetEvent(Result.hbtn,BtnMouseUpEventID,WrapBtnCallback(@sbBtnMouseUp,1));
  Result.op:=pSetWindowLong(Result.hbtn,-4,Addr(@sbBtnProc,4));
  BtnRefresh(Result.hbtn);
  Result.hUpBtn:=BtnCreate(Parent.MainPanel.Handle,bl,0,{#sbBtnWidth},{#sbUpDownBtnHeight},'{#ScrollBarUpBtnImg}',0,False);
  BtnSetEvent(Result.hUpBtn,BtnClickEventID,WrapBtnCallback(@sbUpBtnClick,1));
  Result.hDownBtn:=BtnCreate(Parent.MainPanel.Handle,bl,Parent.MainPanel.Height-{#sbUpDownBtnHeight},{#sbBtnWidth},{#sbUpDownBtnHeight},'{#ScrollBarDownBtnImg}',0,False);
  BtnSetEvent(Result.hDownBtn,BtnClickEventID,WrapBtnCallback(@sbDownBtnClick,1));
end;

//*********************************************************************************************************
//*********************************************************************************************************
//*********************************************************************************************************
//�����������
function GetClbByPanel(h:HWND):integer;
var
  i:integer;
begin
  Result:=-1;
  for i:=0 to GetArrayLength(ACLB)-1 do 
    if ACLB[i].ChildPanel.Handle=h then begin
      Result:=i;
      Break;
    end;
end; 

function NewPanelProc(h:HWND;Msg,wParam,lParam:Longint):Longint; 
var
  MemDC,DC:LongWord;
  hParent:HWND;
  rp,r,rs,ir:TRect;
  hBMP:HBITMAP;
  ps:TPaintStruct;
  p:TPoint;
begin
  case Msg of
    $200: begin
      if (CurCLB=-1) or (ACLB[CurCLB].ChildPanel.Handle<>h) then CurCLB:=GetClbByPanel(h);
      Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
    end;
    $2: begin
      pSetWindowLong(h,-4,pGetWindowLong(h,-21));
      Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
    end;
    $3,$5,$47,$46: begin
      Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
      pInvalidateRect(h,0,False);
    end;
    $14: Result:=1;
    $F: begin
      Result:=0;
      hParent:=pGetAncestor(h,1);
      pGetClientRect(hParent,rp);
      DC:=pGetDC(hParent);
      MemDC:=pCreateCompatibleDC(DC);
      hBmp:=pCreateCompatibleBitmap(DC,rp.Right,rp.Bottom);
      pReleaseDC(hParent,DC);
      pSelectObject(MemDC,hBmp);
      SendMessage(hParent,$14,Longint(MemDC),0);
      pCallWindowProc(pGetWindowLong(hParent,-4),hParent,$F,Longint(MemDC),0);
      pGetWindowRect(h,rs);
      p.X:=rs.Left;
      p.Y:=rs.Top;
      pScreenToClient(hParent,p);
      rs.Left:=p.X;
      rs.Top:=p.Y;
      p.X:=rs.Right;
      p.Y:=rs.Bottom;
      pScreenToClient(hParent,p);
      rs.Right:=p.X;
      rs.Bottom:=p.Y;
      if wParam=0 then begin  
        DC:=pBeginPaint(h,ps);
        pBitBlt(Longint(DC),ps.rcPaint.Left,ps.rcPaint.Top,ps.rcPaint.Right-ps.rcPaint.Left,ps.rcPaint.Bottom-ps.rcPaint.Top, MemDC,rs.Left+ps.rcPaint.Left,rs.Top+ps.rcPaint.Top,$CC0020);
        pEndPaint(h,ps);
      end else begin
        pIntersectRect(ir,rp,rs);
        pBitBlt(LongWord(wParam),iif(rs.Left>0,0,-rs.Left),iif(rs.Top>0,0,-rs.Top),ir.Right-ir.Left,ir.Bottom-ir.Top,MemDC,ir.Left,ir.Top,$CC0020);
      end;
      pDeleteObject(hBmp);
      pDeleteDC(MemDC);
    end; 
    else Result:=pCallWindowProc(pGetWindowLong(h,-21),h,Msg,wParam,lParam);
  end;
end;

function CheckListBoxCreate(Parent:TWinControl; Left,Top,Width,Height:integer):integer;
var
  l:integer;
  mpVertIndent:integer;
begin
  if not msw then SetNewWFProc; 

  l:=GetArrayLength(ACLB);
  SetArrayLength(ACLB,l+1);
  Result:=l;

  ACLB[l].ImgPanel:=TPanel.Create(Parent);
  ACLB[l].ImgPanel.BevelOuter:=bsNone;
  ACLB[l].ImgPanel.Parent:=Parent;
  ACLB[l].ImgPanel.SetBounds(Left,Top,Width,Height);
  pSetWindowLong(ACLB[l].ImgPanel.Handle,-21,pGetWindowLong(ACLB[l].ImgPanel.Handle,-4));
  pSetWindowLong(ACLB[l].ImgPanel.Handle,-4,Addr(@NewPanelProc,4));
  ACLB[l].FrameImg:=ImgLoad(ACLB[l].ImgPanel.Handle,'{#ScrollBarFrameImg}',0,0,Width,Height,True,False);

  ACLB[l].MainPanel:=TPanel.Create(ACLB[l].ImgPanel);
  ACLB[l].MainPanel.BevelOuter:=bsNone;
  ACLB[l].MainPanel.Parent:=ACLB[l].ImgPanel;
  mpVertIndent:=(Height-(((Height-{#FrameIndent}*2) div {#ItemHeight})*{#ItemHeight})) div 2;
  ACLB[l].MainPanel.SetBounds({#FrameIndent},mpVertIndent,Width-{#FrameIndent}*2,Height-mpVertIndent*2);
  pSetWindowLong(ACLB[l].MainPanel.Handle,-21,pGetWindowLong(ACLB[l].MainPanel.Handle,-4));
  pSetWindowLong(ACLB[l].MainPanel.Handle,-4,Addr(@NewPanelProc,4));

  ACLB[l].ChildPanel:=TPanel.Create(ACLB[l].MainPanel);
  ACLB[l].ChildPanel.BevelOuter:=bsNone;
  ACLB[l].ChildPanel.Parent:=ACLB[l].MainPanel;
  ACLB[l].ChildPanel.SetBounds(0,0,Width-{#FrameIndent}*2-{#sbBtnWidth}-5,0);  
  pSetWindowLong(ACLB[l].ChildPanel.Handle,-21,pGetWindowLong(ACLB[l].ChildPanel.Handle,-4));
  pSetWindowLong(ACLB[l].ChildPanel.Handle,-4,Addr(@NewPanelProc,4));
 
  SetArrayLength(ACLB[l].ItemList,0);

  l:=GetArrayLength(ASB)
  SetArrayLength(ASB,l+1);
  ASB[l]:=sbCreate(ACLB[l]);
  ASB[l].bkgimg:=ImgLoad(ACLB[l].ImgPanel.Handle,'{#ScrollBarBkgImg}',Width-{#FrameIndent}-{#sbBtnWidth},mpVertIndent,{#sbBtnWidth},Height-mpVertIndent*2,True,False);
  sbSetVisibility(l,False);
end;

function GetClb(ItemHandle:HWND):integer;
var
  hParent:HWND;
  i:integer;
begin
  Result:=-1;
  hParent:=pGetAncestor(ItemHandle,1);
  for i:=0 to GetArrayLength(ACLB)-1 do 
    if ACLB[i].ChildPanel.Handle=hParent then begin
      Result:=i;
      Break;
    end;
end; 

function GetItem(clbind:integer;h:HWND):integer;
var
  i:integer;
begin
  Result:=-1;
  for i:=0 to GetArrayLength(ACLB[clbind].ItemList)-1 do 
    if ACLB[clbind].ItemList[i].Handle=h then begin
      Result:=i;
      Break;
    end;
end;

function ItemGetParent(ci,ii:integer):integer;
var
  i,lvl:integer;
begin
  lvl:=ACLB[ci].ItemList[ii].Level;
  i:=ii-1;
  while (i>=0) and (ACLB[ci].ItemList[i].Level>=lvl) do i:=i-1;
  Result:=i;
end;

function GetLastSubItemInGroup(ci,ii:integer):integer;
var
  i,lvl:integer;
begin
  lvl:=ACLB[ci].ItemList[ii].Level;
  i:=ii+1;
  while (i<=(GetArrayLength(ACLB[ci].ItemList)-1)) and (ACLB[ci].ItemList[i].Level>=lvl) do i:=i+1;
  Result:=i-1;
end;

function AllSubItemsUnChecked(ci,fii,lii:integer):boolean;
var
  i:integer;
begin
  Result:=True;
  for i:=fii to lii do
    if CheckBoxGetChecked(ACLB[ci].ItemList[i].Handle) then begin
      Result:=False;
      Break;
    end;
end;

procedure CheckParentToChild(ci,ii:integer);
var
  i,pii,fii,lii:integer;
  f:boolean;
begin
  //��������� ��������� �������� � ��������
  if ((ii+1)<=(GetArrayLength(ACLB[ci].ItemList)-1)) then begin
    if ACLB[ci].ItemList[ii].Level<ACLB[ci].ItemList[ii+1].Level then begin
      f:=CheckBoxGetChecked(ACLB[ci].ItemList[ii].Handle);
      fii:=ii+1;
      lii:=GetLastSubItemInGroup(ci,fii);
      for i:=fii to lii do
        if CheckBoxGetChecked(ACLB[ci].ItemList[i].Handle)<>f then begin
          CheckBoxSetChecked(ACLB[ci].ItemList[i].Handle,f);
          ItemCheck(ci,i,True);
        end;
    end;
  end;
end;

procedure ItemCheck(ci,ii:integer;f:boolean);
var
  i,pii,fii,lii:integer;
begin
  //��������� ��������� �������� � ��������
  if ACLB[ci].ItemList[ii].Level>0 then begin
    pii:=ItemGetParent(ci,ii);
    if pii>=0 then begin
      if CheckBoxGetChecked(ACLB[ci].ItemList[ii].Handle) then begin
        //���� �������� ��������, �� ����� �������� ��������
        if not CheckBoxGetChecked(ACLB[ci].ItemList[pii].Handle) then begin
          CheckBoxSetChecked(ACLB[ci].ItemList[pii].Handle,True);
          ItemCheck(ci,pii,False);
        end;
      end else begin
        //���� ��������� ��������, �� ����� ��������� ��������� "�����". ���� ��� ���������, �� ��������� ��������
        fii:=pii+1;
        lii:=GetLastSubItemInGroup(ci,ii);
        CheckParentToChild(ci,ii);
        f:=False;
        if AllSubItemsUnChecked(ci,fii,lii) and CheckBoxGetChecked(ACLB[ci].ItemList[pii].Handle) then begin
          CheckBoxSetChecked(ACLB[ci].ItemList[pii].Handle,False);
          ItemCheck(ci,pii,False);
        end;
      end;
    end;
  end;
  if f then CheckParentToChild(ci,ii);
end;

procedure ItemClick(h:HWND);
var
  ii,ci:integer;
begin
  ci:=GetClb(h);
  if ci=-1 then Exit;
  ii:=GetItem(ci,h);
  if ii=-1 then Exit;
  ItemCheck(ci,ii,True);
  if ACLB[ci].OnItemClick<>nil then ACLB[ci].OnItemClick(ci,ii);
end;

procedure ItemEnter(h:HWND);
var
  ii,ci:integer;
begin
  ci:=GetClb(h);
  if ci=-1 then Exit;
  CurCLB:=ci;
  if ACLB[ci].OnMouseItemEnter<>nil then begin
    ii:=GetItem(ci,h);
    if ii=-1 then Exit;
    ACLB[ci].OnMouseItemEnter(ci,ii);
  end;
end;

procedure clbSetItemEnabled(clbind,itmind:integer; Value:boolean);
begin
  CheckBoxSetEnabled(ACLB[clbind].ItemList[itmind].Handle,Value);
end;

function clbAddRadioBtnItem(clbind:integer; Name, Caption:PAnsiChar; Level:integer; Checked:boolean; GroupID:integer):integer;
var
  pi,sbind,CurInd:integer;
begin
  CurInd:=GetArrayLength(ACLB[clbind].ItemList);
  SetArrayLength(ACLB[clbind].ItemList,CurInd+1);
  ACLB[clbind].ItemList[CurInd].Caption:=Caption;
  ACLB[clbind].ItemList[CurInd].Level:=Level;
  ACLB[clbind].ItemList[CurInd].Name:=Name;
  ACLB[clbind].ChildPanel.Height:=ACLB[clbind].ChildPanel.Height+{#ItemHeight};
  sbind:=sbGetIndByParent(ACLB[clbind]);
  if sbind<>-1 then sbSetVisibility(sbind,ACLB[clbind].ChildPanel.Height>ACLB[clbind].MainPanel.Height);
  ACLB[clbind].ItemList[CurInd].Handle:=CheckBoxCreate(ACLB[clbind].ChildPanel.Handle,Level*{#LevelIndent},{#ItemHeight}*CurInd,ACLB[clbind].ChildPanel.Width-Level*{#LevelIndent},{#ItemHeight},'{#RadioBtnImg}',GroupID,0);
  CheckBoxSetText(ACLB[clbind].ItemList[CurInd].Handle,Caption);
  CheckBoxSetEvent(ACLB[clbind].ItemList[CurInd].Handle, BtnClickEventID, WrapBtnCallback(@ItemClick,1));
  CheckBoxSetChecked(ACLB[clbind].ItemList[CurInd].Handle,Checked);
  if Checked then begin
    pi:=ItemGetParent(clbind,CurInd);
    while pi>=0 do begin
      clbSetItemEnabled(clbind,pi,False);
      pi:=ItemGetParent(clbind,pi);
    end;
  end; 
  ItemCheck(clbind,CurInd,True);
  CheckBoxSetEvent(ACLB[clbind].ItemList[CurInd].Handle, BtnMouseEnterEventID, WrapBtnCallback(@ItemEnter,1));
  CheckBoxSetFontColor(ACLB[clbind].ItemList[CurInd].Handle,StrToInt('{#NormalFontColor}'),StrToInt('{#FocusedFontColor}'),StrToInt('{#PressedFontColor}'),StrToInt('{#DisabledFontColor}'));
  Result:=CurInd;
end;

function clbAddChkBoxItem(clbind:integer; Name, Caption:PAnsiChar; Level:integer; Checked:boolean):integer;
var
  sbind,CurInd:integer;
begin
  CurInd:=GetArrayLength(ACLB[clbind].ItemList);
  SetArrayLength(ACLB[clbind].ItemList,CurInd+1);
  ACLB[clbind].ItemList[CurInd].Caption:=Caption;
  ACLB[clbind].ItemList[CurInd].Level:=Level;
  ACLB[clbind].ItemList[CurInd].Name:=Name;
  ACLB[clbind].ChildPanel.Height:=ACLB[clbind].ChildPanel.Height+{#ItemHeight};
  sbind:=sbGetIndByParent(ACLB[clbind]);
  if sbind<>-1 then sbSetVisibility(sbind,ACLB[clbind].ChildPanel.Height>ACLB[clbind].MainPanel.Height);
  ACLB[clbind].ItemList[CurInd].Handle:=CheckBoxCreate(ACLB[clbind].ChildPanel.Handle,Level*{#LevelIndent},{#ItemHeight}*CurInd,ACLB[clbind].ChildPanel.Width-Level*{#LevelIndent},{#ItemHeight},'{#CheckBoxImg}',0,0);
  CheckBoxSetText(ACLB[clbind].ItemList[CurInd].Handle,Caption);
  CheckBoxSetEvent(ACLB[clbind].ItemList[CurInd].Handle, BtnClickEventID, WrapBtnCallback(@ItemClick,1));
  CheckBoxSetChecked(ACLB[clbind].ItemList[CurInd].Handle,Checked);
  ItemCheck(clbind,CurInd,True);
  CheckBoxSetEvent(ACLB[clbind].ItemList[CurInd].Handle, BtnMouseEnterEventID, WrapBtnCallback(@ItemEnter,1));
  CheckBoxSetFontColor(ACLB[clbind].ItemList[CurInd].Handle,StrToInt('{#NormalFontColor}'),StrToInt('{#FocusedFontColor}'),StrToInt('{#PressedFontColor}'),StrToInt('{#DisabledFontColor}'));
  Result:=CurInd;
end;

function clbFindItemByName(clbind:integer;Name:AnsiString):integer;
var
  i:integer;
begin
  Result:=-1;
  for i:=0 to GetArrayLength(ACLB[clbind].ItemList)-1 do
    if ACLB[clbind].ItemList[i].Name=Name then begin
      Result:=i;
      Break;
    end;
end;

procedure clbSetMouseItemEnterEvent(clbind:integer; proc:TclbInnerProc);
begin
  ACLB[clbind].OnMouseItemEnter:=proc;
end;

procedure clbSetItemClickEvent(clbind:integer; proc:TclbInnerProc);
begin
  ACLB[clbind].OnItemClick:=proc;
end;

function clbIsItemCheckedByIndex(clbind,itmind:integer):boolean;
begin
  Result:=CheckBoxGetChecked(ACLB[clbind].ItemList[itmind].Handle);
end;

function clbIsItemCheckedByName(clbind:integer; Name:AnsiString):boolean;
var
  ii:integer;
begin
  ii:=clbFindItemByName(clbind,Name);
  Result:=CheckBoxGetChecked(ACLB[clbind].ItemList[ii].Handle);
end;

procedure clbRefresh(ci:integer);
var
  ii,sbind:integer;
begin
  ACLB[ci].ImgPanel.Parent.Refresh;
  ACLB[ci].ImgPanel.Refresh;
  ACLB[ci].MainPanel.Refresh;
  sbind:=sbGetIndByParent(ACLB[ci]);
  if sbind<>-1 then begin
    BtnRefresh(ASB[sbind].hbtn);
    BtnRefresh(ASB[sbind].hUpBtn);
    BtnRefresh(ASB[sbind].hDownBtn);
  end;
  ACLB[ci].ChildPanel.Refresh;
  for ii:=0 to GetArrayLength(ACLB[ci].ItemList)-1 do
    CheckBoxRefresh(ACLB[ci].ItemList[ii].Handle);
end;

procedure clbSetVisibility(ci:integer; Value:boolean);
begin
  if ACLB[ci].ImgPanel.Visible=Value then Exit;
  ACLB[ci].ImgPanel.Visible:=Value;
end;

function clbGetVisibility(ci:integer):boolean;
begin
  Result:=ACLB[ci].ImgPanel.Visible;
end;