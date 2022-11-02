[Setup]
AppName=IsSplash
AppVersion=1.5
DefaultDirName={pf}\IsSplash
[Files]
Source : IsSplash.dll; Flags : dontcopy;
Source : IsSplash.png; Flags : dontcopy;

[code]
procedure ShowSplashScreen(FileName: PAnsiChar; speed: Integer);
// speed - время открытия и закрытия, в милисекундах (5000 = 5 секунд)
  external 'ShowSplashScreen@files:IsSplash.dll stdcall delayload';
procedure CloseSplashScreen();
  external 'CloseSplashScreen@files:IsSplash.dll stdcall delayload';

function InitializeSetup(): Boolean;
begin
  ExtractTemporaryFile('IsSplash.png');
  ShowSplashScreen(ExpandConstant('{tmp}\IsSplash.png'),5000);
  Result := MsgBox('Заставка не будет закрыта, пока не закроете это окно.', mbInformation, MB_OK)=IDOK;
end;

procedure InitializeWizard();
begin
  CloseSplashScreen();
end;