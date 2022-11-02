[Setup]
AppName=IsRroc2
AppVersion=1.0
DefaultDirName={pf}\IsRroc2

[Files]
Source : IsProc2.dll; Flags : dontcopy;

[Code]
function IsProc(const Name: PAnsiChar; var res: Boolean):PAnsiChar;
  external 'IsProc@files:IsProc2.dll stdcall';
function IsKillProc(ExeFileName: PAnsiChar): integer;
  external 'IsKillProc@files:IsProc2.dll stdcall';

function InitializeSetup(): Boolean;
var
  res: Boolean;
  err : Integer;
  f_name : AnsiString; 
begin
  Result:=False;
  f_name := 'Compil32.exe';// ��� ��������� ���������, � �����������.
  IsProc(PAnsiChar(f_name), res);
  case res of
    True:
    case MsgBox('��������� Compil32 ������������. ������� � ���������� ���������?', mbInformation, MB_YESNO)of
    IDYES :
      begin
        err := IsKillProc(IsProc(PAnsiChar(f_name), res));
        //if err <> 0 then MsgBox(SysErrorMessage(err), mbError, MB_OK); // ��� ������ ������, ���� ����� �� ����������
        Result:= True;
      end;
      IDNO : Result := False;
    end;
    False : Result:= True;
  end;
end;
