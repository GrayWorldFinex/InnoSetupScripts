;Created by South.Tver 09.2010
;������ ������������� ����������� ���������

#include "Modules\botva2.iss"
#include "Modules\TrackBar.iss"
#include "Modules\ProgressBar.iss"

[Setup]
AppName=TrackBar by South.Tver
AppVerName=TrackBar by South.Tver
DefaultDirName={pf}\TrackBar
OutputBaseFilename=setup

[Files]
Source: Files\*; Flags: dontcopy

[Code]

var
  TB,TB2 : integer;
  L,L2   : TLabel;
  PB1    : TImgPB;

function InitializeSetup:boolean;
begin
  if not FileExists(ExpandConstant('{tmp}\botva2.dll')) then ExtractTemporaryFile('botva2.dll');
  if not FileExists(ExpandConstant('{tmp}\CallbackCtrl.dll')) then ExtractTemporaryFile('CallbackCtrl.dll');
  Result:=True;
end;

procedure TBChangePos(pos:integer);
begin
  L.Caption:=IntToStr(pos);
  ImgPBSetPosition(PB1,pos);
  //ImgApplyChanges(WizardForm.Handle);
end;

procedure TBChangePos2(pos:integer);
begin
  L2.Caption:='������� ������� = '+IntToStr(pos);
end;

procedure InitializeWizard;
var
  i:integer;
begin
  //�������� �������� �����
  with WizardForm do begin
    InnerNotebook.Hide;
    OuterNotebook.Hide;
    Bevel.Hide;
  end;
  //������ ��� ����������� ����
  L:=TLabel.Create(WizardForm);
  with L do begin
    SetBounds(80,140,150,21);
    AutoSize:=True;
    Font.Color:=clWhite;
    Font.Style:=[fsBold];
    Parent:=WizardForm;
    Transparent:=True;
  end;
  L2:=TLabel.Create(WizardForm);
  with L2 do begin
    SetBounds(200,140,150,21);
    AutoSize:=True;
    Font.Color:=clWhite;
    Font.Style:=[fsBold];
    Caption:='������� ������� = 0';
    Parent:=WizardForm;
    Transparent:=True;
  end;
  
  //������� ��������
  ImgLoad(WizardForm.Handle,'nfs.jpg',0,0,WizardForm.ClientWidth,WizardForm.ClientHeight,True,True);
  //�����������
  PB1:=ImgPBCreate(WizardForm.Handle, 'pbbkg.png', 'pb.png', 10, 250, WizardForm.ClientWidth-20, 25);
  //������ �������
  TB:=ImgTBCreate(WizardForm.Handle,'trackbar_bkg.png','trackbar_btn.png',10,170,150,10,7,163,160,18,33,2);
  ImgTBSetChangePosEvent(TB,@TBChangePos); //��� ����������� ������� �������� TB ����� ����������� ��������� TBChangePos
  ImgTBSetPosition(TB,50);
  //������ �������
  TB2:=ImgTBCreate(WizardForm.Handle,'trackbar_bkg.png','trackbar_btn.png',200,170,150,10,197,353,160,18,33,2);
  ImgTBSetChangePosEvent(TB2,@TBChangePos2); //��� ����������� ������� �������� TB2 ����� ����������� ��������� TBChangePos2

  ImgApplyChanges(WizardForm.Handle);
end;

procedure DeinitializeSetup;
begin
  gdipShutdown;
end;

