[Setup]
AppName=IsSplash
AppVersion=1.5
DefaultDirName={pf}\IsSplash
[Files]
Source : IsSplash.dll; Flags : dontcopy;
Source : IsSplash.png; Flags : dontcopy;

[code]
procedure ShowSplashScreen(FileName: PAnsiChar; speed: Integer);
// speed - ����� �������� � ��������, � ������������ (5000 = 5 ������)
  external 'ShowSplashScreen@files:IsSplash.dll stdcall delayload';
procedure CloseSplashScreen();
  external 'CloseSplashScreen@files:IsSplash.dll stdcall delayload';

function InitializeSetup(): Boolean;
begin
  ExtractTemporaryFile('IsSplash.png');
  ShowSplashScreen(ExpandConstant('{tmp}\IsSplash.png'),5000);
  Result := MsgBox('�������� �� ����� �������, ���� �� �������� ��� ����.', mbInformation, MB_OK)=IDOK;
end;

procedure InitializeWizard();
begin
  CloseSplashScreen();
end;