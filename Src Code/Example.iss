[Setup]
AppName=test
AppVerName=test
DefaultDirName={tmp}
Uninstallable=no
CreateUninstallRegKey=no
OutputDir=.

[Languages]
Name: eng; MessagesFile: compiler:Default.isl

[Files]
Source: ISExtract.dll; DestDir: {tmp}; Flags: ignoreversion; Attribs: hidden system

[Code]
var
  NewProgressBar1: TNewProgressBar;
  Label1: TLabel;
  Label2: TLabel;
  NewEdit1: TNewEdit;
  NewEdit2: TNewEdit;
  NewMemo1: TNewMemo;

procedure RedesignWizardForm;
begin
  Label1 := TLabel.Create(WizardForm);
  with Label1 do
  begin
    Parent := WizardForm;
    Caption := 'FileName';
    Left := ScaleX(16);
    Top := ScaleY(164);
    Width := ScaleX(100);
    Height := ScaleY(13);
  end;
//
  Label2 := TLabel.Create(WizardForm);
  with Label2 do
  begin
    Parent := WizardForm;
    Caption := 'CmdParams';
    Left := ScaleX(16);
    Top := ScaleY(228);
    Width := ScaleX(100);
    Height := ScaleY(13);
  end;
//
  NewEdit1 := TNewEdit.Create(WizardForm);
  with NewEdit1 do
  begin
    Parent := WizardForm;
    Left := ScaleX(16);
    Top := ScaleY(188);
    Width := WizardForm.ClientWidth-ScaleX(32);
    Height := ScaleY(21);
    Text := ExpandConstant(AddBackslash('{src}'))+'arc.exe';
  end;
//
  NewEdit2 := TNewEdit.Create(WizardForm);
  with NewEdit2 do
  begin
    Parent := WizardForm;
    Left := ScaleX(16);
    Top := ScaleY(252);
    Width := WizardForm.ClientWidth-ScaleX(32);
    Height := ScaleY(21);
    Text := 'x -o+  -w.\ -dp_TEST data.arc';
  end;
//
  NewMemo1 := TNewMemo.Create(WizardForm);
  with NewMemo1 do
  begin
    Parent := WizardForm;
    Left := ScaleX(16);
    Top := ScaleY(16);
    Width := WizardForm.ClientWidth-ScaleX(32);
    Height := ScaleY(127);
  end;
//
  NewProgressBar1 := TNewProgressBar.Create(WizardForm);
  with NewProgressBar1 do
  begin
    Parent := WizardForm;
    Left := ScaleX(16);
    Top := ScaleY(284);
    Width := WizardForm.ClientWidth-ScaleX(32);
    Height := ScaleY(17);
    Max:= 1000;
  end;
end;

procedure ISExtract(FileName, CmdParams: string; CmdPipe, ShowCmd: boolean; Priority: integer); external 'ISExtract@{tmp}\ISExtract.dll stdcall delayload';
function ISProcessStatus(): Dword; external 'ISProcessStatus@{tmp}\ISExtract.dll stdcall delayload';
procedure ISProcessClose(); external 'ISProcessClose@{tmp}\ISExtract.dll stdcall delayload';
function progressFullLineStr(l: integer): ansistring; external 'progressFullLineStr@{tmp}\ISExtract.dll stdcall delayload';
function progressFullLineCount(): integer; external 'progressFullLineCount@{tmp}\ISExtract.dll stdcall delayload';

function InitializeSetup(): Boolean;
begin
  ExtractTemporaryFile('ISExtract.dll');
  Result:= true;
end;

const
  NORMAL_PRIORITY_CLASS           = $00000020;
  IDLE_PRIORITY_CLASS             = $00000040;
  HIGH_PRIORITY_CLASS             = $00000080;
  REALTIME_PRIORITY_CLASS         = $00000100;

var
  Timer: TTimer;

// 0 - no running  \ -1 - closed
// Count = 0  to n
procedure ISTimer(Sender: TObject);
begin
if (ISProcessStatus<>-1) and (ISProcessStatus<>0) then
  NewMemo1.Lines.Add(progressFullLineStr(progressFullLineCount-1));
if ISProcessStatus=-1 then
begin
  Timer.Enabled:= False;
if pos('All OK',progressFullLineStr(progressFullLineCount-1))>0 then
  NewProgressBar1.Position:= 1000
else
  MsgBox('Error!', mbError, MB_OK);
end;
end;

procedure _NextButtonClick(Sender: TObject);
begin
  ISExtract(NewEdit1.Text, NewEdit2.Text, True, True, NORMAL_PRIORITY_CLASS);
end;

procedure CancelOnCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if (ISProcessStatus<>-1) and (ISProcessStatus<>0) then
begin
if MsgBox('Close process?', mbConfirmation, MB_YESNO) = IDYES then
  ISProcessClose();
  CanClose:= False;
end else
  CanClose:= True;
end;

procedure InitializeWizard;
begin
  RedesignWizardForm;
  WizardForm.InnerNotebook.Hide;
  WizardForm.OuterNotebook.Hide;
    Timer:=TTimer.Create(nil);
  with Timer do begin
    Interval:=1000;
    OnTimer:=@ISTimer;
  end;
  with WizardForm.NextButton do
    OnClick := @_NextButtonClick;
  WizardForm.OnCloseQuery:= @CancelOnCloseQuery;
end;

procedure DeinitializeSetup();
begin
  UnloadDLL('ISExtract.dll');
end;
