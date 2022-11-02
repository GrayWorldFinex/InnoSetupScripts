[Code]
//������ ��� ������ � ����������� botva2.dll ������  0.9.9
//Created by South.Tver 03.2015

const
  //�������������� ������� ��� ������ � ���������/�����������
  BtnClickEventID      = 1;
  BtnMouseEnterEventID = 2;
  BtnMouseLeaveEventID = 3;
  BtnMouseMoveEventID  = 4;
  BtnMouseDownEventID  = 5;
  BtnMouseUpEventID    = 6;

  //������������ ������ �� �������
  balLeft    = 0;  //������������ ������ �� ������ ����
  balCenter  = 1;  //�������������� ������������ ������ �� ������
  balRight   = 2;  //������������ ������ �� ������� ����
  balVCenter = 4;  //������������ ������������ ������ �� ������

type
  TBtnEventProc = procedure(h:HWND);

//��� ���������� ������� �� ������ ����� innocallback
function WrapBtnCallback(Callback: TBtnEventProc; ParamCount: Integer): Longword; external 'wrapcallbackaddr@{tmp}\CallbackCtrl.dll stdcall delayload';

function _ImgLoad(Wnd :HWND; FileName :PAnsiChar; Left, Top, Width, Height :integer; Stretch, IsBkg :boolean) :Longint; external 'ImgLoad@{tmp}\botva2.dll stdcall delayload';
//��������� ����������� � ������, ��������� ���������� ���������
//Wnd          - ����� ����, � ������� ����� �������� �����������
//FileName     - ���� �����������
//Left,Top     - ���������� �������� ������ ���� ������ ����������� (� ����������� ���������� ������� Wnd)
//Width,Height - ������, ������ �����������
//               ���� Stretch=True, �� ����������� ����� ���������/����� � ������������� �������
//               Rect.Left:=Left;
//               Rect.Top:=Top;
//               Rect.Right:=Left+Width;
//               Rect.Bottom:=Top+Height;
//               ���� Stretch=False, �� ��������� Width,Height ������������ � ����������� ����� ImgLoad, �.�. ����� �������� 0
//Stretch      - �������������� ����������� ��� ���
//IsBkg        - ���� IsBkg=True, ����������� ����� �������� �� ���� �����,
//               ������ ���� ����� ���������� ����������� ������� (TLabel, TBitmapImage � �.�.),
//               ����� ������ ����� ����� �������� ����������� � ������ IsBkg=False
//������������ �������� - ��������� �� ���������, �������� ����������� � ��� ��������, ����������� � ���� Longint
//����������� ����� �������� � ��� ������������������, � ������� ���������� ImgLoad

procedure ImgSetVisiblePart(img:Longint; NewLeft, NewTop, NewWidth, NewHeight : integer); external 'ImgSetVisiblePart@{tmp}\botva2.dll stdcall delayload';
//��������� ����� ���������� ������� ����� �����������, ����� ������ � ������. � ����������� ������������� �����������
//img                - �������� ���������� ��� ������ ImgLoad.
//NewLeft,NewTop     - ����� ����� ������� ���� ������� �������.
//NewWidth,NewHeight - ����� ������, ������ ������� �������.
//PS ���������� (��� ������ ImgLoad) ����������� ��������� ��������� �������.
//   ���� �������� ������������� ���������� ������ ����� ��������, �� ���������� ��� ���������

procedure ImgGetVisiblePart(img:Longint; var Left, Top, Width, Height : integer); external 'ImgGetVisiblePart@{tmp}\botva2.dll stdcall delayload';
//���������� ���������� ������� ����� �����������, ������ � ������
//img                - �������� ���������� ��� ������ ImgLoad
//NewLeft,NewTop     - ����� ������� ���� ������� �������
//NewWidth,NewHeight - ������, ������ ������� �������.

procedure ImgSetPosition(img :Longint; NewLeft, NewTop, NewWidth, NewHeight :integer); external 'ImgSetPosition@{tmp}\botva2.dll stdcall delayload';
//��������� ����� ���������� ��� ������ �����������, ����� ������ � ������. � ����������� ������������� ����
//img                - �������� ���������� ��� ������ ImgLoad
//NewLeft,NewTop     - ����� ����� ������� ����
//NewWidth,NewHeight - ����� ������, ������. ���� � ImgLoad ��� ������� Stretch=False, �� NewWidth,NewHeight ������������

procedure ImgGetPosition(img:Longint; var Left, Top, Width, Height:integer); external 'ImgGetPosition@{tmp}\botva2.dll stdcall delayload';
//���������� ���������� ������ �����������, ������ � ������
//img          - �������� ���������� ��� ������ ImgLoad
//Left,Top     - ����� ������� ����
//Width,Height - ������, ������.

procedure ImgSetVisibility(img :Longint; Visible :boolean); external 'ImgSetVisibility@{tmp}\botva2.dll stdcall delayload';
//��������� �������� ��������� �����������
//img     - �������� ���������� ��� ������ ImgLoad
//Visible - ���������

function ImgGetVisibility(img:Longint):boolean; external 'ImgGetVisibility@{tmp}\botva2.dll stdcall delayload';
//img - �������� ���������� ��� ������ ImgLoad
//������������ �������� - ��������� �����������

procedure ImgSetTransparent(img:Longint; Value:integer); external 'ImgSetTransparent@{tmp}\botva2.dll stdcall delayload';
//������������� ������������ �����������
//img   - �������� ���������� ��� ������ ImgLoad
//Value - ������������ (0-255)

function ImgGetTransparent(img:Longint):integer; external 'ImgGetTransparent@{tmp}\botva2.dll stdcall delayload';
//�������� �������� ������������
//img   - �������� ���������� ��� ������ ImgLoad
//������������ �������� - ������� ������������ �����������

procedure ImgRelease(img :Longint); external 'ImgRelease@{tmp}\botva2.dll stdcall delayload';
//������� ����������� �� ������
//img - �������� ���������� ��� ������ ImgLoad

procedure ImgApplyChanges(h:HWND); external 'ImgApplyChanges@{tmp}\botva2.dll stdcall delayload';
//��������� ������������� ����������� ��� ������ �����,
//�������� ��� ��������� ��������� �������� ImgLoad, ImgSetPosition, ImgSetVisibility, ImgRelease � ��������� ����
//h - ����� ����, ��� �������� ���������� ������������ ����� �����������



function _BtnCreate(hParent :HWND; Left, Top, Width, Height :integer; FileName :PAnsiChar; ShadowWidth :integer; IsCheckBtn :boolean) :HWND; external 'BtnCreate@{tmp}\botva2.dll stdcall delayload';
//hParent           - ����� ����-��������, �� ������� ����� ������� ������
//Left,Top,
//Width,Height      - ��� ������������. �� �� ��� � ��� ������� ������
//FileName          - ���� � ������������ ��������� ������
//                    ��� ������� ������ ����� 4 ��������� ������ (�������������� 4 �����������)
//                    ��� ������ � IsCheckBtn=True ����� 8 ����������� (��� ��� ��������)
//                    ����������� ��������� ������ ������������� �����������
//ShadowWidth       - ���-�� �������� �� ���� ������� ������, �� �������� �� ������� �� �������.
//                    ����� ����� ��������� ������ � ������ �� ��� �������� ��� ��������
//IsCheckBtn        - ���� True, �� ����� ������� ������ (������ CheckBox) ������� ���������� � ����������� ���������
//                    ���� False, �� ��������� ������� ������
//������������ �������� - ����� ��������� ������

procedure BtnSetText(h :HWND; Text :PAnsiChar); external 'BtnSetText@{tmp}\botva2.dll stdcall delayload';
//������������� ����� �� ������ (������ Button.Caption:='bla-bla-bla')
//h    - ����� ������ (��������� ������������ BtnCreate)
//Text - �����, ������� �� ����� ������� �� ������

procedure BtnGetText_(h: HWND; Text: PAnsiChar; var NewSize: integer); external 'BtnGetText@{tmp}\botva2.dll stdcall delayload';
//�������� ����� ������
//h    - ����� ������ (��������� ������������ BtnCreate)
//Text - ����� ����������� ����� ������
//������������ �������� - ����� ������

procedure BtnSetTextAlignment(h :HWND; HorIndent, VertIndent :integer; Alignment :DWORD); external 'BtnSetTextAlignment@{tmp}\botva2.dll stdcall delayload';
//������������� ������������ ������ �� ������
//h          - ����� ������ (��������� ������������ BtnCreate)
//HorIndent  - �������������� ������ ������ �� ���� ������
//VertIndent - ������������ ������ ������ �� ���� ������
//Alignment  - ������������ ������. �������� ����������� balLeft, balCenter, balRight, balVCenter,
//             ��� ����������� balVCenter � ����������. ��������, balVCenter or balRight

procedure BtnSetFont(h :HWND; Font :Cardinal); external 'BtnSetFont@{tmp}\botva2.dll stdcall delayload';
//������������� ����� ��� ������
//h    - ����� ������ (��������� ������������ BtnCreate)
//Font - ���������� ���������������� ������
//       ����� �� �������� � WinAPI-����� ��������� ����� ������� ����� ������������ ���������� ���� � �������� ��� �����
//       ��������,
//       var
//         Font:TFont;
//         . . .
//       begin
//         . . .
//         Font:=TFont.Create;
//         ��� �������� ����� �� �������������, ��� �������� �������� ����������� ���������� �� ���������. ������ ������ �� ��� ��� �����
//         with Font do begin
//           Name:='Tahoma';
//           Size:=10;
//           . . .
//         end;
//         BtnSetFont(hBtn,Font.Handle);
//         . . .
//       end;
//       �� � ��� ������ �� ��������� (��� ����� �� ������ �� �����) �� �������� ���������� ���� ����� Font.Free;

procedure BtnSetFontColor(h :HWND; NormalFontColor, FocusedFontColor, PressedFontColor, DisabledFontColor :Cardinal); external 'BtnSetFontColor@{tmp}\botva2.dll stdcall delayload';
//������������� ���� ������ ��� ������ �� ���������� � ����������� ����������
//h                 - ����� ������ (��������� ������������ BtnCreate)
//NormalFontColor   - ���� ������ �� ����� � ���������� ���������
//FocusedFontColor  - ���� ������ �� ����� � ������������ ���������
//PressedFontColor  - ���� ������ �� ����� � ������� ���������
//DisabledFontColor - ���� ������ �� ����� � ����������� ���������

function BtnGetVisibility(h :HWND) :boolean; external 'BtnGetVisibility@{tmp}\botva2.dll stdcall delayload';
//�������� ��������� ������ (������ f:=Button.Visible)
//h - ����� ������ (��������� ������������ BtnCreate)
//������������ �������� - ��������� ������

procedure BtnSetVisibility(h :HWND; Value :boolean); external 'BtnSetVisibility@{tmp}\botva2.dll stdcall delayload';
//������������� ��������� ������ (������ Button.Visible:=True / Button.Visible:=False)
//h     - ����� ������ (��������� ������������ BtnCreate)
//Value - �������� ���������

function BtnGetEnabled(h :HWND) :boolean; external 'BtnGetEnabled@{tmp}\botva2.dll stdcall delayload';
//�������� ����������� ������ (������ f:=Button.Enabled)
//h - ����� ������ (��������� ������������ BtnCreate)
//������������ �������� - ����������� ������

procedure BtnSetEnabled(h :HWND; Value :boolean); external 'BtnSetEnabled@{tmp}\botva2.dll stdcall delayload';
//������������ ����������� ������ (������ Button.Enabled:=True / Button.Enabled:=False)
//h - ����� ������ (��������� ������������ BtnCreate)
//Value - �������� ����������� ������

function BtnGetChecked(h :HWND) :boolean; external 'BtnGetChecked@{tmp}\botva2.dll stdcall delayload';
//�������� ��������� (��������/���������) ������ (������ f:=Checkbox.Checked)
//h - ����� ������ (��������� ������������ BtnCreate)

procedure BtnSetChecked(h :HWND; Value :boolean); external 'BtnSetChecked@{tmp}\botva2.dll stdcall delayload';
//������������ ��������� (��������/���������) ������ (������ �heckbox.Checked:=True / �heckbox.Checked:=False)
//h - ����� ������ (��������� ������������ BtnCreate)
//Value - �������� ��������� ������

procedure BtnSetEvent(h :HWND; EventID :integer; Event :Longword); external 'BtnSetEvent@{tmp}\botva2.dll stdcall delayload';
//������������� ������� ��� ������
//h       - ����� ������ (��������� ������������ BtnCreate)
//EventID - ������������� �������, �������� �����������   BtnClickEventID, BtnMouseEnterEventID, BtnMouseLeaveEventID, BtnMouseMoveEventID
//Event   - ����� ��������� ����������� ��� ����������� ���������� �������
//������ ������������� - BtnSetEvent(hBtn, BtnClickEventID, WrapBtnCallback(@BtnClick,1));

procedure BtnGetPosition(h:HWND; var Left, Top, Width, Height: integer);  external 'BtnGetPosition@{tmp}\botva2.dll stdcall delayload';
//�������� ���������� ������ �������� ���� � ������ ������
//h             - ����� ������ (��������� ������������ BtnCreate)
//Left, Top     - ���������� �������� ������ ���� (� ����������� ������������� ����)
//Width, Height - ������, ������ ������

procedure BtnSetPosition(h:HWND; NewLeft, NewTop, NewWidth, NewHeight: integer);  external 'BtnSetPosition@{tmp}\botva2.dll stdcall delayload';
//������������� ���������� ������ �������� ���� � ������ ������
//h                   - ����� ������ (��������� ������������ BtnCreate)
//NewLeft, NewTop     - ����� ���������� �������� ������ ���� (� ����������� ������������� ����)
//NewWidth, NewHeight - ����� ������, ������ ������

procedure BtnRefresh(h :HWND); external 'BtnRefresh@{tmp}\botva2.dll stdcall delayload';
//���������� �������������� ������, � ����� ������� ���������. ��������, ���� ������ �� �������� ����������������
//h - ����� ������ (��������� ������������ BtnCreate)

procedure BtnSetCursor(h:HWND; hCur:Cardinal); external 'BtnSetCursor@{tmp}\botva2.dll stdcall delayload';
//������������� ������ ��� ������
//h    - ����� ������ (��������� ������������ BtnCreate)
//hCur - ���������� ���������������� �������
//DestroyCursor �������� �� �����������, �� ����� ��������� ��� ������ gdipShutDown;

function GetSysCursorHandle(id:integer):Cardinal; external 'GetSysCursorHandle@{tmp}\botva2.dll stdcall delayload';
//��������� ����������� ������ �� ��� ��������������
//id - ������������� ������������ �������. �������������� ����������� �������� �������� ����������� OCR_... , �������� ������� ���� � �����
//������������ ��������  - ���������� ������������ �������

procedure gdipShutdown; external 'gdipShutdown@{tmp}\botva2.dll stdcall delayload';
//����������� ������� ��� ���������� ����������



procedure _CreateFormFromImage(h:HWND; FileName:PAnsiChar); external 'CreateFormFromImage@{tmp}\botva2.dll stdcall delayload';
//������� ����� �� PNG-������� (� �������� ����� ������������ ������ ������� �����������)
//h        - ����� ����
//FileName - ���� � ����� �����������
//�� ����� ����� �� ����� ����� �������� (������, ��������, ����� � �.�.) !!!

function CreateBitmapRgn(DC: LongWord; Bitmap: HBITMAP; TransClr: DWORD; dX:integer; dY:integer): LongWord; external 'CreateBitmapRgn@{tmp}\botva2.dll stdcall delayload';
//������� ������ �� �������
//DC       - �������� �����
//Bitmap   - ������ �� �������� ����� ������� ������
//TransClr - ���� ��������, ������� �� ����� �������� � ������ (���������� ����)
//dX,dY    - �������� ������� �� �����

procedure SetMinimizeAnimation(Value: Boolean); external 'SetMinimizeAnimation@{tmp}\botva2.dll stdcall delayload';
//��������/��������� �������� ��� ������������ ����

function GetMinimizeAnimation: Boolean; external 'GetMinimizeAnimation@{tmp}\botva2.dll stdcall delayload';
//�������� ������� ��������� �������� ������������ ����


function _CheckBoxCreate(hParent:HWND; Left,Top,Width,Height:integer; FileName:PAnsiChar; GroupID, TextIndent:integer) :HWND; external 'CheckBoxCreate@{tmp}\botva2.dll stdcall delayload';
//hParent,Left,Top,Width,Height,FileName ��� � ������
//GroupID - ��� ������������. � ����� ������ ����� ���� ������ ������ 1 ���������. 
//GroupID=0 - ��� ������. ��� ����� �������. ��������� �����������
//TextIndent - ������ ������ �� �������� ��������/����������� (� ��������)

//��� ��������� ��������/������� �� �������� � ��������
procedure CheckBoxSetText(h :HWND; Text :PAnsiChar); external 'CheckBoxSetText@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxGetText_(h: HWND; Text: PAnsiChar; var NewSize: integer); external 'CheckBoxGetText@{tmp}\botva2.dll stdcall delayload'; //������ ����� �������� �����
procedure CheckBoxSetFont(h:HWND; Font:LongWord); external 'CheckBoxSetFont@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetEvent(h:HWND; EventID:integer; Event:Longword); external 'CheckBoxSetEvent@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetFontColor(h:HWND; NormalFontColor, FocusedFontColor, PressedFontColor, DisabledFontColor: Cardinal); external 'CheckBoxSetFontColor@{tmp}\botva2.dll stdcall delayload';
function CheckBoxGetEnabled(h:HWND):boolean; external 'CheckBoxGetEnabled@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetEnabled(h:HWND; Value:boolean); external 'CheckBoxSetEnabled@{tmp}\botva2.dll stdcall delayload';
function CheckBoxGetVisibility(h:HWND):boolean; external 'CheckBoxGetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetVisibility(h:HWND; Value:boolean); external 'CheckBoxSetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetCursor(h:HWND; hCur:LongWord); external 'CheckBoxSetCursor@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetChecked(h:HWND; Value:boolean); external 'CheckBoxSetChecked@{tmp}\botva2.dll stdcall delayload';
function CheckBoxGetChecked(h:HWND):boolean; external 'CheckBoxGetChecked@{tmp}\botva2.dll stdcall delayload';  
procedure CheckBoxRefresh(h:HWND); external 'CheckBoxRefresh@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetPosition(h:HWND; NewLeft, NewTop, NewWidth, NewHeight: integer); external 'CheckBoxSetPosition@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxGetPosition(h:HWND; var Left, Top, Width, Height: integer); external 'CheckBoxGetPosition@{tmp}\botva2.dll stdcall delayload';

function BtnGetText(hBtn: HWND): string;
var
  buf: AnsiString;
  NewSize: integer;
begin
  buf:='';
  NewSize:=0;
  BtnGetText_(hBtn, PAnsiChar(buf), NewSize);
  if NewSize > 0 then begin
    SetLength(buf, NewSize);
    BtnGetText_(hBtn, PAnsiChar(buf), NewSize);
  end;
  Result := string(buf);
end;

function CheckBoxGetText(hBtn: HWND): string;
var
  buf: AnsiString;
  NewSize: integer;
begin
  buf:='';
  NewSize:=0;
  CheckBoxGetText_(hBtn, PAnsiChar(buf), NewSize);
  if NewSize > 0 then begin
    SetLength(buf, NewSize);
    CheckBoxGetText_(hBtn, PAnsiChar(buf), NewSize);
  end;
  Result := string(buf);
end;

function ImgLoad(Wnd :HWND; FileName :PAnsiChar; Left, Top, Width, Height :integer; Stretch, IsBkg :boolean) :Longint;
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    Result:=_ImgLoad(Wnd,ExpandConstant('{tmp}\')+FileName,Left,Top,Width,Height,Stretch,IsBkg);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else Result:=_ImgLoad(Wnd,FileName,Left,Top,Width,Height,Stretch,IsBkg);
end;

function BtnCreate(hParent :HWND; Left, Top, Width, Height :integer; FileName :PAnsiChar; ShadowWidth :integer; IsCheckBtn :boolean) :HWND; 
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    Result:=_BtnCreate(hParent,Left,Top,Width,Height,ExpandConstant('{tmp}\')+FileName,ShadowWidth,IsCheckBtn);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else Result:=_BtnCreate(hParent,Left,Top,Width,Height,FileName,ShadowWidth,IsCheckBtn);
end;

function CheckBoxCreate(hParent:HWND; Left,Top,Width,Height:integer; FileName:PAnsiChar; GroupID, TextIndent:integer):HWND;
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    Result:=_CheckBoxCreate(hParent,Left,Top,Width,Height,ExpandConstant('{tmp}\')+FileName,GroupID,TextIndent);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else Result:=_CheckBoxCreate(hParent,Left,Top,Width,Height,FileName,GroupID,TextIndent);
end;

procedure CreateFormFromImage(h:HWND; FileName:PAnsiChar);
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    _CreateFormFromImage(h, ExpandConstant('{tmp}\')+FileName);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else _CreateFormFromImage(h, FileName);
end;
