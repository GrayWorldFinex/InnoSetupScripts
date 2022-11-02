;Created by South.Tver 02.2010
;������ �����-��� �� ���������

#include "Modules\botva2.iss"
#include "Modules\ProgressBar.iss"

[Setup]
AppName=SlideShow by South.Tver
AppVerName=SlideShow by South.Tver
DefaultDirName={pf}\SlideShow
OutputBaseFilename=setup

[Files]
Source: {win}\help\*; DestDir: {app}\Files; Flags: external recursesubdirs
Source: Files\*; Flags: dontcopy

[Code]

type
  TPBProc = function (h:hWnd;Msg,wParam,lParam:Longint):Longint;

const
  PanelWidth   = 158;
  ProgressStep = 5;

var
  TimeLeftLabel  : TLabel;
  eTime, sTime   : DWORD;
  NewPB          : TImgPB;
  PBOldProc      : Longint;
  WFCaption      : string;
  hCancelBtn,
  hNextBtn,
  hBackBtn       : HWND;
  AImg           : array of Longint;
  ALabel         : array of TLabel;
  CurrentImage,
  CurrentLabel,
  l,t,w,h        : integer;
  img,WFBkg      : Longint;
  Font           : TFont;
  hTestBtn1,
  hTestBtn2,
  hGlassButton   : HWND;
  BtnEventLabel  : TLabel;
  OldPosition    : integer;

function GetTickCount: DWORD; external 'GetTickCount@kernel32.dll stdcall';

function SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: Longint): Longint; external 'SetWindowLongA@user32.dll stdcall';
function CallBackProc(P:TPBProc;ParamCount:integer):LongWord; external 'wrapcallbackaddr@files:CallbackCtrl.dll stdcall';
function CallWindowProc(lpPrevWndFunc: Longint; hWnd: HWND; Msg: UINT; wParam, lParam: Longint): Longint; external 'CallWindowProcA@user32.dll stdcall';

function mciSendString(lpstrCommand, lpstrReturnString: PAnsiChar; uReturnLength: Cardinal; hWndCallback: HWND): Cardinal; external 'mciSendStringA@winmm.dll stdcall';
function LoadCursorFromFile(FileName: AnsiString): Cardinal; external 'LoadCursorFromFileA@user32 stdcall';


function LongintToStringTime(t:Longint):string;
var
  h,m,s:integer;
begin
  h:=t div 3600;
  t:=t-h*3600;
  m:=t div 60;
  s:=t-m*60;
  Result:='';
  if h>0 then Result:=Result+IntToStr(h)+' �. ';
  if (m>0) or (h>0) then Result:=Result+IntToStr(m)+' ���. ';
  if (m>0) or (h>0) or (s>0) then Result:=Result+IntToStr(s)+' ���.';
end;

function PBProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
  lt:Longint;
  dt,at,pr,i1,i2:Extended;
  p:string;
  tc:DWORD;
begin
  Result:=CallWindowProc(PBOldProc,h,Msg,wParam,lParam);
  if (Msg=$402) and (WizardForm.ProgressGauge.Position>WizardForm.ProgressGauge.Min) then begin
    i1:=WizardForm.ProgressGauge.Position-WizardForm.ProgressGauge.Min;
    i2:=WizardForm.ProgressGauge.Max-WizardForm.ProgressGauge.Min;

    tc:=GetTickCount;
    if (tc-eTime)>=1000 then begin //������������ ����� ���������� �� ����� ��������� �� ����, ��� ��� � 1 �������
      dt:=(tc-sTime)/1000;
      at:=i2*dt/i1;
      lt:=Round(at-dt)
      TimeLeftLabel.Caption:='�������� - '+LongintToStringTime(lt);
      eTime:=tc;
    end;

    pr:=i1*100/i2;
    p:=' - ['+Format('%f',[pr])+'%]';
    StringChange(p,',','.');
    WizardForm.Caption:=WFCaption+p;
    
    if pr-OldPosition>=ProgressStep then begin
      OldPosition:=OldPosition+ProgressStep;
      ImgSetVisibility(AImg[CurrentImage],False);
      CurrentImage:=CurrentImage+1;
      if CurrentImage>GetArrayLength(AImg)-1 then CurrentImage:=0;
      ImgSetVisibility(AImg[CurrentImage],True);
    end;

    ImgPBSetPosition(NewPB,pr);
    ImgApplyChanges(WizardForm.Handle);
  end;
end;

procedure AllCancel;
begin
  SetWindowLong(WizardForm.ProgressGauge.Handle,-4,PBOldProc);
  ImgSetVisibility(AImg[CurrentImage],False);
  ImgSetVisibility(WFBkg,True);
  TimeLeftLabel.Free;
  ImgPBDelete(NewPB);
  ImgApplyChanges(WizardForm.Handle);
  WizardForm.Caption:=WFCaption;
end;

procedure SetStateNewButtons;
begin
  //������������� ���� ������ � ���� ���������, ��� � �� ���������
  with WizardForm.BackButton do begin
    BtnSetText(hBackBtn,PAnsiChar(Caption));
    BtnSetVisibility(hBackBtn,Visible);
    BtnSetEnabled(hBackBtn,Enabled);
  end;
  with WizardForm.NextButton do begin
    BtnSetText(hNextBtn,PAnsiChar(Caption));
    BtnSetVisibility(hNextBtn,Visible);
    BtnSetEnabled(hNextBtn,Enabled);
  end;
  with WizardForm.CancelButton do begin
    BtnSetText(hCancelBtn,PAnsiChar(Caption));
    BtnSetVisibility(hCancelBtn,Visible);
    BtnSetEnabled(hCancelBtn,Enabled);
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  case CurStep of
    ssInstall: begin
      WizardForm.ProgressGauge.Visible:=False;

      OldPosition:=0;
      CurrentImage:=0;
      ImgSetVisibility(WFBkg,False);
      ImgSetVisibility(AImg[0],True);
      SetStateNewButtons;
      
      NewPB:=ImgPBCreate(WizardForm.Handle, 'pbbkg.png', 'pb.png',10,10,WizardForm.ClientWidth-20,25);
      ImgApplyChanges(WizardForm.Handle);

      WFCaption:=WizardForm.Caption;

      TimeLeftLabel:=TLabel.Create(nil);
      with TimeLeftLabel do begin
        Parent:=WizardForm;
        AutoSize:=False;
        SetBounds(20,40,WizardForm.ClientWidth-40,21);
        Font.Color:=clRed;
        Transparent:=True;
      end;

      sTime:=GetTickCount;
      eTime:=sTime;

      PBOldProc:=SetWindowLong(WizardForm.ProgressGauge.Handle,-4,CallBackProc(@PBProc,4));
    end;
    ssPostInstall: begin
      ALabel[CurrentLabel].Font.Color:=clGray;
      ALabel[CurrentLabel].Top:=ALabel[CurrentLabel].Top-1;
      CurrentLabel:=CurrentLabel+1;
      ALabel[CurrentLabel].Font.Color:=clRed;
      ALabel[CurrentLabel].Top:=ALabel[CurrentLabel].Top+1;
      l:=l+PanelWidth;
      ImgSetPosition(img,l,t,w,h);
      AllCancel;
    end;
  end;
end;

procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
  if CurPageID=wpInstalling then begin
    Confirm:=False;
    Cancel:=ExitSetupMsgBox;
    if Cancel then begin
      AllCancel;
      WizardForm.CancelButton.Enabled:=False;
    end;
  end;
end;

procedure WizardFormShow(Sender: TObject);
begin
  //������������� �����, ��������� � �.�. �� ������� ���������� NextButton,CancelButton,BackButton
  SetStateNewButtons; //�.�. � InitializeWizard �� ���������� ������� �� ������� NextButton,CancelButton,BackButton ������ ��� ��� ������ �����
end;

procedure WizardFormBtnClick(hBtn:HWND);
var
  Btn:TButton;
begin
  //��� ���� ���� ������ ����������� ���� ��������� ��� �������, ������� ����,
  //��������� ����� ������������ ������ ��� ���-���� ����� ���������
  case hBtn of
    hCancelBtn: Btn:=WizardForm.CancelButton;
    hNextBtn: Btn:=WizardForm.NextButton;
    hBackBtn: Btn:=WizardForm.BackButton;
  end;
  Btn.OnClick(Btn); //��������� ������� �� ����������� ������
  SetStateNewButtons; //������������� �����, ��������� � �.�. �� ������� ���������� NextButton,CancelButton,BackButton
  BtnRefresh(hBtn);
end;

procedure TestBtn1Click(hBtn:HWND);
//����������� ��� ������� �� ������ � ������� hTestBtn1
var
  s:string;
begin
  //������ ���������/����������� ������ � ������� hTestBtn2
  //������ Button.Enabled:=not Button.Enabled
  BtnSetEnabled(hTestBtn2, not BtnGetEnabled(hTestBtn2));
  //������ ����� ������ � ������� hTestBtn1 � ����������� �� ����������� ������ hTestBtn2
  if BtnGetEnabled(hTestBtn2) then begin
    s:='Disable';
    BtnSetFontColor(hTestBtn1,$22A4CA,$22A4CA,$22A4CA,$B6B6B6);
  end else begin
    s:='Enable';
    BtnSetFontColor(hTestBtn1,$C86442,$C86442,$C86442,$B6B6B6);
  end;
  BtnSetText(hTestBtn1,PAnsiChar(s));
  BtnRefresh(hTestBtn1);
end;

procedure TestBtn2Click(hBtn:HWND);
//����������� ��� ������� �� ������ � ������� hTestBtn2
//var
//  ErrorCode: Integer;
begin
  BtnEventLabel.Caption:='Mouse Click';
  BtnEventLabel.Refresh; //��� ������� �������� �� �������� ����������������
  mciSendString('stop '+ExpandConstant('{tmp}\click.wav'), 'NULL', 0, 0);
  mciSendString('play '+ExpandConstant('{tmp}\click.wav'), 'NULL', 0, 0);
  //ShellExec('open', 'www.csmania.ru', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode)
  MsgBox('��� �� �������� ���� csmania.ru', mbInformation, MB_OK);
end;

procedure GlassBtnClick(hBtn:HWND);
begin
  MsgBox('Click', mbInformation, MB_OK);
end;

procedure TestBtn2Enter(hBtn:HWND);
begin
  BtnEventLabel.Caption:='Mouse Enter';
  BtnEventLabel.Refresh; //��� ������� �������� �� �������� ����������������
  mciSendString('stop '+ExpandConstant('{tmp}\enter.wav'), 'NULL', 0, 0);
  mciSendString('play '+ExpandConstant('{tmp}\enter.wav'), 'NULL', 0, 0);
end;

procedure TestBtn2Leave(hBtn:HWND);
begin
  BtnEventLabel.Caption:='Mouse Leave';
  BtnEventLabel.Refresh; //��� ������� �������� �� �������� ����������������
  mciSendString('stop '+ExpandConstant('{tmp}\leave.wav'), 'NULL', 0, 0);
  mciSendString('play '+ExpandConstant('{tmp}\leave.wav'), 'NULL', 0, 0);
end;

function InitializeSetup:boolean;
begin
  if not FileExists(ExpandConstant('{tmp}\botva2.dll')) then ExtractTemporaryFile('botva2.dll');
  if not FileExists(ExpandConstant('{tmp}\CallbackCtrl.dll')) then ExtractTemporaryFile('CallbackCtrl.dll');
  Result:=True;
end;

procedure InitializeWizard;
var
  h:HWND;
  i,l1:integer;
begin
  WizardForm.OnShow:=@WizardFormShow;
  with WizardForm do begin
    Position:=poScreenCenter;
    InnerNotebook.Hide;
    OuterNotebook.Hide;
    Bevel.Hide;
    ClientWidth:=790;
    ClientHeight:=533;

    NextButton.Top:=500;
    NextButton.Left:=580;
    CancelButton.Top:=500;
    CancelButton.Left:=670;
    BackButton.Top:=500;
    BackButton.Left:=490;
  end;
  //������ ������ ��� ��������
  CurrentLabel:=0;
  SetArrayLength(ALabel,5);
  l1:=0;
  for i:=0 to 4 do begin
    ALabel[i]:=TLabel.Create(WizardForm);
    with ALabel[i] do begin
      AutoSize:=False;
      Parent:=WizardForm;
      Transparent:=True;
      if i=0 then begin
        SetBounds(l1,93,PanelWidth,20);
        Font.Color:=clRed;
      end else begin
        SetBounds(l1,92,PanelWidth,20);
        Font.Color:=clGray;
      end;
      Font.Style:=Font.Style+[fsBold];
      Alignment:=taCenter;
      Caption:='�����'+IntToStr(i+1);
    end;
    l1:=l1+PanelWidth;
  end;

  //��������� ������ - ��� �� ������ ������ ����
  for i:=1 to 4 do
    with TLabel.Create(WizardForm) do begin
      AutoSize:=False;
      Parent:=WizardForm;
      Transparent:=True;
      Left:=0;
      Top:=200;
      case i of
        1: Left:=Left-1;
        2: Left:=Left+1;
        3: Top:=Top-1;
        4: Top:=Top+1;
      end;
      Width:=WizardForm.ClientWidth;
      Height:=30;
      with Font do begin
        Name:='Times New Roman';
        Size:=16;
        Font.Color:=clWhite;
        Font.Style:=Font.Style+[fsBold];
      end;
      Alignment:=taCenter;
      Caption:='��� ������������ ������ ��������� "botva2.dll"';
    end;

  with TLabel.Create(WizardForm) do begin
    AutoSize:=False;
    Parent:=WizardForm;
    Transparent:=True;
    SetBounds(0,200,WizardForm.ClientWidth,30);
    with Font do begin
      Name:='Times New Roman';
      Size:=16;
      Font.Color:=clBlack;
      Font.Style:=Font.Style+[fsBold];
    end;
    Alignment:=taCenter;
    Caption:='��� ������������ ������ ��������� "botva2.dll"';
  end;

  with TLabel.Create(WizardForm) do begin
    AutoSize:=False;
    Parent:=WizardForm;
    Transparent:=True;
    SetBounds(50,300,WizardForm.ClientWidth-100,200);
    WordWrap:=True;
    with Font do begin
      Name:='Times New Roman';
      Size:=13;
      Font.Color:=clWhite;
      Font.Style:=Font.Style+[fsBold];
    end;
    Alignment:=taCenter;
    Caption:='��������� ��������� botva2.dll �� ��� ��������'#13#13'������������� ������� ��� ������ ���������� ����� ��� ��� ����������'#13#13+
             '������� "�����", ����� ����������, ��� "������", ����� ����� �� ��������� ���������';    //� ������� ���� ���
  end;

  //������� ������� �� MainForm
  //with MainForm do begin
  //  //MainForm.BorderStyle:=bsNone; //�������� ����� - ��������� ������� � ��������� WizardForm, ������� �� �������
  //  SetWindowLong(Handle,-16,GetWindowLong(Handle,-16) and not $C40000);
  //  Left:=0;
  //  Top:=0;
  //  ClientWidth:=GetSystemMetrics(0);
  //  ClientHeight:=GetSystemMetrics(1);
  //  ImgLoad(Handle,ExpandConstant('{tmp}\nfs.jpg'),0,0,ClientWidth,ClientHeight,True,False);
  //  ImgApplyChanges(Handle);
  //  Visible:=True;
  //end;

  //��������� ������� ������� �� WizardForm
  h:=WizardForm.Handle;
  WFBkg:=ImgLoad(h,'nfs.jpg',0,0,WizardForm.ClientWidth,WizardForm.ClientHeight,True,True);
  //��������� ������ ��� �����-���
  SetArrayLength(AImg,8);
  for i:=0 to GetArrayLength(AImg)-1 do begin
    AImg[i]:=ImgLoad(h,IntToStr(i+1)+'.jpg',0,0,WizardForm.ClientWidth,WizardForm.ClientHeight,True,True);
    ImgSetVisibility(AImg[i],False);
  end;

  l:=0;
  t:=90;
  ImgLoad(h,'mspaint.png',280,365,0,0,False,True);
  ImgLoad(h,'glass2.png',40,180,WizardForm.ClientWidth-80,300,True,True);
  ImgLoad(h,'Panel1.png',0,t,WizardForm.ClientWidth,20,True,False);
  img:=ImgLoad(h,'Panel2.png',0,t,0,0,False,False);

  //������� ����������� NextButton,CancelButton,BackButton �� ������������� ������
  //�������� ����������� ������ ������, ������� ������ �������� �� ������ � ������ 0

  with WizardForm.CancelButton do begin
    hCancelBtn:=BtnCreate(WizardForm.Handle,Left-8,Top-8,Width+16,Height+16,'button.png',18,False);
    BtnSetEvent(hCancelBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hCancelBtn,Font.Handle);
    BtnSetFontColor(hCancelBtn,$DAE369,$DAE369,$DAE369,$B6B6B6);
    Width:=0;
    Height:=0;
  end;
  with WizardForm.NextButton do begin
    hNextBtn:=BtnCreate(WizardForm.Handle,Left-8,Top-8,Width+16,Height+16,'button.png',18,False);
    BtnSetEvent(hNextBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hNextBtn,Font.Handle);
    BtnSetFontColor(hNextBtn,$DAE369,$DAE369,$DAE369,$B6B6B6);
    Width:=0;
    Height:=0;
  end;
  with WizardForm.BackButton do begin
    hBackBtn:=BtnCreate(WizardForm.Handle,Left-8,Top-8,Width+16,Height+16,'button.png',18,False);
    BtnSetEvent(hBackBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetFont(hBackBtn,Font.Handle);
    BtnSetFontColor(hBackBtn,$DAE369,$DAE369,$DAE369,$B6B6B6);
    Width:=0;
    Height:=0;
  end;

  //��, ��� ���� ������ ��� ������� Button.Enabled:=False / Button.Enabled:=True
  ExtractTemporaryFile('click.wav');
  ExtractTemporaryFile('enter.wav');
  ExtractTemporaryFile('leave.wav');

  Font:=TFont.Create; //���������� ��� ���� ������ ���� �����
  with Font do begin
    Name:='Georgia';
    Style:=[fsBold];
  end;
  //������ ������
  hTestBtn1:=BtnCreate(WizardForm.Handle,200,485,100,44,'button2.png',18,True);
  BtnSetEvent(hTestBtn1,BtnClickEventID,WrapBtnCallback(@TestBtn1Click,1));
  BtnSetFont(hTestBtn1,Font.Handle);
  BtnSetFontColor(hTestBtn1,$22A4CA,$22A4CA,$22A4CA,$B6B6B6);
  BtnSetText(hTestBtn1,'Disable');
  BtnSetCursor(hTestBtn1,GetSysCursorHandle(32649)); //��������� ����������� ������ OCR_HAND=32649, ��������� OCR_... ���� � �����
  //������ ������
  hTestBtn2:=BtnCreate(WizardForm.Handle,80,485,120,44,'button.png',18,False);
  BtnSetEvent(hTestBtn2,BtnClickEventID,WrapBtnCallback(@TestBtn2Click,1));
  BtnSetFont(hTestBtn2,Font.Handle);
  BtnSetFontColor(hTestBtn2,$DAE369,$DAE369,$DAE369,$B6B6B6);
  BtnSetText(hTestBtn2,'CSmania.ru');
  ExtractTemporaryFile('cursor.ani');
  BtnSetCursor(hTestBtn2,LoadCursorFromFile(ExpandConstant('{tmp}\cursor.ani'))); //��������� ���� ������������� ������

  //� ��� ������, ������� �� ������
  ImgLoad(WizardForm.Handle,'mspaint.png',90,330,123,123,True,False);
  hGlassButton:=BtnCreate(WizardForm.Handle,80,320,143,143,'glassbutton.png',0,False);
  BtnSetEvent(hGlassButton,BtnClickEventID,WrapBtnCallback(@GlassBtnClick,1));

  //��������� ��� ������� ��� hTestBtn2 � ������� �� � BtnEventLabel
  BtnEventLabel:=TLabel.Create(WizardForm);
  with BtnEventLabel do begin
    Parent:=WizardForm;
    Transparent:=True;
    Left:=10;
    Top:=500;
    Font.Color:=clWhite;
    Caption:='';
  end;
  //BtnSetEvent(hTestBtn2,BtnMouseMoveEventID,WrapBtnCallback(@TestBtn2Move,1)); //������������� ����� MouseEnter ���� �����
  BtnSetEvent(hTestBtn2,BtnMouseEnterEventID,WrapBtnCallback(@TestBtn2Enter,1));
  BtnSetEvent(hTestBtn2,BtnMouseLeaveEventID,WrapBtnCallback(@TestBtn2Leave,1));

  ImgApplyChanges(WizardForm.Handle);

end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID<>wpFinished then begin
    ALabel[CurrentLabel].Font.Color:=clGray;
    ALabel[CurrentLabel].Top:=ALabel[CurrentLabel].Top-1;
    CurrentLabel:=CurrentLabel+1;
    ALabel[CurrentLabel].Font.Color:=clRed;
    ALabel[CurrentLabel].Top:=ALabel[CurrentLabel].Top+1;
  end;

  l:=l+PanelWidth;
  ImgSetPosition(img,l,t,w,h);
  ImgApplyChanges(WizardForm.Handle);
  
  Result:=True;
end;

function BackButtonClick(CurPageID: Integer): Boolean;
begin
  ALabel[CurrentLabel].Font.Color:=clGray;
  ALabel[CurrentLabel].Top:=ALabel[CurrentLabel].Top-1;
  CurrentLabel:=CurrentLabel-1;
  ALabel[CurrentLabel].Font.Color:=clRed;
  ALabel[CurrentLabel].Top:=ALabel[CurrentLabel].Top+1;

  l:=l-PanelWidth;
  ImgSetPosition(img,l,t,w,h);
  ImgApplyChanges(WizardForm.Handle);
  
  Result:=True;
end;

procedure DeinitializeSetup;
begin
  gdipShutdown;
  Font.Free;
  SetArrayLength(AImg,0);
  SetArrayLength(ALabel,0);
end;




