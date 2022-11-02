;Created by South.Tver 02.2010
;����� ������ ������������� ����������� � ������

#include "Modules\botva2.iss"

[Setup]
AppName=botva2 by South.Tver
AppVerName=botva2 by South.Tver
DefaultDirName={pf}\botva2 by South.Tver
OutputBaseFilename=setup

[Files]
Source: Files\*; Flags: dontcopy

[Code]

const
  PanelWidth=158;

var
  img,img2:Longint;
  l,t:integer;
  hCancelBtn,hNextBtn:HWND;
  hTestBtn1,hTestBtn2,hGlassButton:HWND;
  Font:TFont;
  BtnEventLabel:TLabel;
  BkgImg: array of Longint;
  CurrentImage:integer;

function LoadCursorFromFile(FileName: AnsiString): Cardinal; external 'LoadCursorFromFileA@user32 stdcall';
function GetSystemMetrics(nIndex: Integer): Integer; external 'GetSystemMetrics@user32';

procedure WizardFormBtnClick(hBtn:HWND);
var
  Btn:TButton;
begin
  //��� ������ ����������� ���� ��������� ��� �������, ������� ����,
  //��������� ����� ������������ ������ ��� ���-���� ����� ���������
  case hBtn of
    hCancelBtn: Btn:=WizardForm.CancelButton;
    hNextBtn: Btn:=WizardForm.NextButton;
  end;
  Btn.OnClick(Btn); //��������� ������� �� ����������� ������
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
  //BtnRefresh(hTestBtn1);
end;

procedure TestBtn2Click(hBtn:HWND);
//����������� ��� ������� �� ������ � ������� hTestBtn2
var
  ErrorCode: Integer;
begin
  BtnEventLabel.Caption:='Mouse Click';
  BtnEventLabel.Refresh; //� �� ��� ������� �������� �� �������� ����������������
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
end;

procedure TestBtn2Leave(hBtn:HWND);
begin
  BtnEventLabel.Caption:='Mouse Leave';
  BtnEventLabel.Refresh; //� �� ��� ������� �������� �� �������� ����������������
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
  cr:Cardinal;
begin
  ExtractTemporaryFile('cursor.ani');

  //������� ������� �� MainForm
  //with MainForm do begin
  //  //MainForm.BorderStyle:=bsNone; //�������� �����, ������� �� �������
  //  SetWindowLong(Handle,-16,GetWindowLong(Handle,-16) and not $C40000);
  //  Left:=0;
  //  Top:=0;
  //  ClientWidth:=GetSystemMetrics(0);
  //  ClientHeight:=GetSystemMetrics(1);
  //  ImgLoad(Handle,ExpandConstant('{tmp}\nfs.jpg'),0,0,ClientWidth,ClientHeight,True,False);
  //  ImgApplyChanges(Handle);
  //  Visible:=True;
  //end;

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
  l1:=0;
  for i:=1 to 5 do begin
    with TLabel.Create(WizardForm) do begin
      AutoSize:=False;
      Parent:=WizardForm;
      Transparent:=True;
      SetBounds(l1,93,PanelWidth,20);
      Font.Color:=clRed;
      Font.Style:=Font.Style+[fsBold];
      Alignment:=taCenter;
      Caption:='�����'+IntToStr(i);
    end;
    l1:=l1+PanelWidth;
  end;

  with TLabel.Create(WizardForm) do begin
    AutoSize:=False;
    Parent:=WizardForm;
    Transparent:=True;
    SetBounds(0,200,WizardForm.ClientWidth,30);
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

  //��������� ������� ������� �� WizardForm
  h:=WizardForm.Handle;
  l:=0;
  t:=90;
  SetArrayLength(BkgImg,3); //������ ���������� ������� ��������
  BkgImg[0]:=ImgLoad(h,'nfs.jpg',0,0,WizardForm.ClientWidth,WizardForm.ClientHeight,True,True);
  BkgImg[1]:=ImgLoad(h,'l4d.jpg',0,0,WizardForm.ClientWidth,WizardForm.ClientHeight,True,True);
  BkgImg[2]:=ImgLoad(h,'hz.jpg',0,0,WizardForm.ClientWidth,WizardForm.ClientHeight,True,True);
  CurrentImage:=0;
  ImgSetVisibility(BkgImg[1],False);
  ImgSetVisibility(BkgImg[2],False);

  ImgLoad(h,'mspaint.png',280,365,0,0,False,True);
  ImgLoad(h,'glass2.png',40,180,WizardForm.ClientWidth-80,300,True,True);
  ImgLoad(h,'Panel1.png',0,t,WizardForm.ClientWidth,20,True,True);
  img:=ImgLoad(h,'Panel2.png',0,t,0,0,False,False);
  img2:=ImgLoad(h,'mspaint.png',0,0,0,0,False,False);

  //������� ����������� NextButton, CancelButton �� ����
  with WizardForm.CancelButton do begin
    hCancelBtn:=BtnCreate(WizardForm.Handle,Left-8,Top-8,Width+16,Height+16,'button.png',18,False);
    BtnSetEvent(hCancelBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetText(hCancelBtn,'Cancel');
    BtnSetFont(hCancelBtn,Font.Handle);
    BtnSetFontColor(hCancelBtn,$DAE369,$DAE369,$DAE369,$B6B6B6);
    Width:=0;
    Height:=0;
  end;
  with WizardForm.NextButton do begin
    hNextBtn:=BtnCreate(WizardForm.Handle,Left-8,Top-8,Width+16,Height+16,'button.png',18,False);
    BtnSetEvent(hNextBtn,BtnClickEventID,WrapBtnCallback(@WizardFormBtnClick,1));
    BtnSetText(hNextBtn,'Next');
    BtnSetFont(hNextBtn,Font.Handle);
    BtnSetFontColor(hNextBtn,$DAE369,$DAE369,$DAE369,$B6B6B6);
    Width:=0;
    Height:=0;
  end;

  //��, ��� ���� ������ ��� ������� Button.Enabled:=False / Button.Enabled:=True
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
  BtnSetCursor(hTestBtn2,LoadCursorFromFile(ExpandConstant('{tmp}\cursor.ani'))); //��������� ���� ������������� ������
  
  //��� �������� �� ����
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
  BtnSetEvent(hTestBtn2,BtnMouseEnterEventID,WrapBtnCallback(@TestBtn2Enter,1));
  BtnSetEvent(hTestBtn2,BtnMouseLeaveEventID,WrapBtnCallback(@TestBtn2Leave,1));

  ImgApplyChanges(WizardForm.Handle);
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  l:=l+PanelWidth;
  if l>=WizardForm.ClientWidth then l:=0;
  ImgSetPosition(img,l,t,0,0); //���������� ������ ��������
  ImgSetPosition(img2,l,0,0,0); //���������� ������ ��������

  //����� ������� ��������
  ImgSetVisibility(BkgImg[CurrentImage],False);
  CurrentImage:=CurrentImage+1;
  if CurrentImage>(GetArrayLength(BkgImg)-1) then CurrentImage:=0;
  ImgSetVisibility(BkgImg[CurrentImage],True);

  ImgApplyChanges(WizardForm.Handle); //��������� WizardForm
end;

procedure DeinitializeSetup();
begin
  gdipShutdown;
  Font.Free;  //������� ���� �����
end;

