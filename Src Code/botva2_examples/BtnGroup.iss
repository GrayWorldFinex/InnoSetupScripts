;Created by South.Tver 02.2010

;������ ������ � �������� ���������� � ������ IsCheckBtn=True
;� ������������ ������, ����� ����� ���� �������� ������ ���� ������ �� ������
;BtnSetChecked, BtnGetChecked, BtnSetText, BtnGetText, BtnSetEvent

#include "Modules\botva2.iss"

[Setup]
AppName=GroupCheckButton by South.Tver
AppVerName=GroupCheckButton by South.Tver
DefaultDirName={pf}\GroupCheckButton
OutputBaseFilename=setup

[Files]
Source: Files\*; Flags: dontcopy

[Code]
type
  TGroupBtn = array of HWND;

var
  Group1Btn: TGroupBtn;
  Group2Btn: TGroupBtn;
  Btn:TButton;

procedure Group1BtnClick(hBtn:HWND);
var
  i:integer;
begin
  BtnSetChecked(hBtn,True);
  for i:=0 to GetArrayLength(Group1Btn)-1 do
    if Group1Btn[i]<>hBtn then BtnSetChecked(Group1Btn[i],False);
end;

procedure Group2BtnClick(hBtn:HWND);
var
  i:integer;
begin
  BtnSetChecked(hBtn,True);
  for i:=0 to GetArrayLength(Group2Btn)-1 do
    if Group2Btn[i]<>hBtn then BtnSetChecked(Group2Btn[i],False);
end;

function GetSelectedBtn(a:TGroupBtn):integer;
var
  i:integer;
begin
  for i:=0 to GetArrayLength(a)-1 do
    if BtnGetChecked(a[i]) then Break;
  Result:=i;
end;

procedure BtnClick(Sender:TObject);
var
  ind:integer;
  s:string;
begin
  ind:=GetSelectedBtn(Group1Btn);
  s:='������ ������, ������� ������ - '+#10#13+'������ = '+IntToStr(ind)+'; ����� = '+IntToStr(Group1Btn[ind])+'; ����� = '+BtnGetText(Group1Btn[ind]);
  ind:=GetSelectedBtn(Group2Btn);
  s:=s+#10#13+'������ ������, ������� ������ - '+#10#13+'������ = '+IntToStr(ind)+'; ����� = '+IntToStr(Group2Btn[ind])+'; ����� = '+BtnGetText(Group2Btn[ind]);
  MsgBox(s, mbInformation, MB_OK);
end;

function InitializeSetup:boolean;
begin
  if not FileExists(ExpandConstant('{tmp}\botva2.dll')) then ExtractTemporaryFile('botva2.dll');
  if not FileExists(ExpandConstant('{tmp}\innocallback.dll')) then ExtractTemporaryFile('CallbackCtrl.dll');
  Result:=True;
end;

procedure InitializeWizard;
var
  i:integer;
begin
  with WizardForm do begin
    InnerNotebook.Hide;
    OuterNotebook.Hide;
    Bevel.Hide;
  end;

  //������ ������
  SetArrayLength(Group1Btn,3)
  
  Group1Btn[0]:=BtnCreate(WizardForm.Handle,10,10,160,50,'button2.png',18,True);
  BtnSetEvent(Group1Btn[0],BtnClickEventID,WrapBtnCallback(@Group1BtnClick,1));
  BtnSetText(Group1Btn[0],'Group 1 Button 1');

  Group1Btn[1]:=BtnCreate(WizardForm.Handle,10,70,160,50,'button2.png',18,True);
  BtnSetEvent(Group1Btn[1],BtnClickEventID,WrapBtnCallback(@Group1BtnClick,1));
  BtnSetText(Group1Btn[1],'Group 1 Button 2');

  Group1Btn[2]:=BtnCreate(WizardForm.Handle,10,130,160,50,'button2.png',18,True);
  BtnSetEvent(Group1Btn[2],BtnClickEventID,WrapBtnCallback(@Group1BtnClick,1));
  BtnSetText(Group1Btn[2],'Group 1 Button 3');

  BtnSetChecked(Group1Btn[0],True);
  
  //������ ������
  SetArrayLength(Group2Btn,5)
  for i:=0 to GetArrayLength(Group2Btn)-1 do begin
    Group2Btn[i]:=BtnCreate(WizardForm.Handle,250,10+60*(i),160,50,'button2.png',18,True);
    BtnSetEvent(Group2Btn[i],BtnClickEventID,WrapBtnCallback(@Group2BtnClick,1));
    BtnSetText(Group2Btn[i],'Group 2 Button '+IntToStr(i+1));
  end;
  BtnSetChecked(Group2Btn[GetArrayLength(Group2Btn)-1],True);
  
  Btn:=TButton.Create(WizardForm);
  with Btn do begin
    Parent:=WizardForm;
    SetBounds(10,265,160,25);
    Caption:='���'
    OnClick:=@BtnClick;
  end;

end;

procedure DeinitializeSetup;
begin
  gdipShutdown;
end;

