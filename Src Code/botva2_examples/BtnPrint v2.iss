;Created by South.Tver 02.2010

;�.�. BtnGetText �� ������� ������� (��� � ������� BtnPrint.iss) ����� �������� ���������,
;������ �� ��������, �� ������ �������, ��� �������
;�� ��� ����������� ������ ��� BtnGetText

#include "Modules\botva2.iss"

[Setup]
AppName=BtnPrint by South.Tver
AppVerName=BtnPrint by South.Tver
DefaultDirName={pf}\BtnPrint
OutputBaseFilename=setup

[Files]
Source: Files\*; Flags: dontcopy

[Code]
type
  TTimerProc = procedure(HandleW, msg, idEvent, TimeSys: LongWord);

var
  hBtn:HWND;
  CurSimbol:integer;
  TimerID:Longword;
  TestText:ansistring;

function SetTimer(hWnd, nIDEvent, uElapse, lpTimerFunc: LongWord): LongWord; external 'SetTimer@user32.dll stdcall';
function KillTimer(hWnd, nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall';
function WrapTimerProc(callback:TTimerProc; paramcount:integer):LongWord; external 'wrapcallbackaddr@files:CallbackCtrl.dll stdcall';

procedure OnTimer(HandleW, msg, idEvent, TimeSys: LongWord);
begin
  CurSimbol:=CurSimbol+1;
  if CurSimbol>Length(TestText) then begin
    KillTimer(0, TimerID);
    Exit;
  end;
  BtnSetText(hBtn,PAnsiChar(Copy(TestText,1,CurSimbol)));
end;

procedure BtnClick(hBtn:HWND);
begin
  if not BtnGetChecked(hBtn) then begin
    KillTimer(0, TimerID);
    BtnSetText(hBtn,'');
    CurSimbol:=0;
  end else TimerID:=SetTimer(0, 0, 100, WrapTimerProc(@OnTimer, 4));
end;

function InitializeSetup:boolean;
begin
  if not FileExists(ExpandConstant('{tmp}\botva2.dll')) then ExtractTemporaryFile('botva2.dll');
  if not FileExists(ExpandConstant('{tmp}\CallbackCtrl.dll')) then ExtractTemporaryFile('CallbackCtrl.dll');
  Result:=True;
end;

procedure InitializeWizard;
begin
  with WizardForm do begin
    InnerNotebook.Hide;
    OuterNotebook.Hide;
    Bevel.Hide;
    Width:=700;
    Height:=700;
    NextButton.Top:=ClientHeight-50;
    CancelButton.Top:=ClientHeight-50;
  end;

  hBtn:=BtnCreate(WizardForm.Handle,-50,-50,WizardForm.ClientWidth+100,WizardForm.ClientHeight+100,'button2.png',18,True);
  CurSimbol:=0;

  TestText:='������������ ���������� '+
            '��� �������� ������������� ������ ��� ������� ����� ������� ����. '+
            '�������� ������ ����� ������� ������������ shareware-������� '+
            '���������, ������� ����� ��������� ������� � ����� '+
            'http://www.ice-graphics.com/ICEReader '+
            '��������� ICE Book Reader Professional Russian Edition '+
            '���������������� ��� freeware. '+
            '��� ��������� ����� �� ��������� ICE Book Reader Professional Russian '+
            'Edition ����������� ICE Graphics. '+
            '�������� ����� ������� ���� ����� ����� ������������ ������ ������ '+
            '��������� ICE Book Reader Professional Russian Edition � '+
            '�������������� ����� ���������. '+
            '���� ������� ������ �������� �� ���������� ���������� ��� �� �������� '+
            '���, ��� ����� ����� ��������������� �� ����� ���������� ���������, '+
            '����������� � ����� License.txt. ��� ������������� ������������� '+
            '���������� ICE Book Reader Professional Russian Edition ���������� '+
            '�������� ���������� ���������� ICE Graphics (support@ice-graphics.com). '+
            'ICE Graphics �� ����������� ����������� ����������� ���������. '+
            'ICE Graphics ��������� �� ����� ����� �������� �������� ������ '+
            '�������� ��� ����� �� ��������� ������ ��������� ICE Book Reader '+
            'Professional Russian Edition. '+
            '��������� ICE Book Reader Professional Russian Edition '+
            '���������������� ��������, ��� ������� ����, ��� ��������� ����������� '+
            '�� �������. �� ���� ������� ���� ��� ����������� �� ����� ����� ����� '+
            '�� ��������������� ICE Book Reader Professional Russian Edition ��� '+
            '����������� ���������� ICE Graphics. '+
            '��������� ICE Book Reader Professional Russian Edition ������������ �� '+
            '�������� "��� ����" ("AS IS"). ������� �������� �� ����������� � �� '+
            '�����������������. �� ����������� ��� ����������� ����������� �� ���� '+
            '����. ICE Graphics �� ����� �������� �� �� ����� ������ ��� ��������� '+
            '������, ����� ��������� ������ � �������� ������������� ��� '+
            '������������� ������������� ����� ������������ �����������. ';

  BtnSetTextAlignment(hBtn,40,30,balLeft);
  BtnSetFontColor(hBtn,$DAE369,$FF0000,$00FF00,$0000FF);
  BtnSetEvent(hBtn,BtnClickEventID,WrapBtnCallback(@BtnClick,1));
end;

procedure DeinitializeSetup();
begin
  KillTimer(0, TimerID);
  gdipShutdown;
end;

