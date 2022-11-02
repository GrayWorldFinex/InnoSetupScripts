[Code]
var
  SP2, SP3: Longword;

procedure InitializeWizard;
var
  i: Byte;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Bevel.Hide;

    spInitialize(True, True);

    with DirEdit do begin
      Parent:= WizardForm;
      BorderStyle:= bsNone;
      SetBounds(137, 80, Width-25, Height);
    end;
    for i:=0 to 1 do
    with TLabel.Create(nil) do begin
      AutoSize:=False;
      Parent:=WizardForm;
      Transparent:=True;
      SetBounds(100-i, 26-i, WizardForm.ClientWidth-200, 25);
      with Font do begin
        if i = 0 then Color:=clBlack
        else Color:=clRed;
        Style:=[fsBold, fsItalic];
        Size:=15;
      end;
      Caption:='TEST Label';
    end;

    spImgLoad(Handle, '6766.bmp', 0, 0, ClientWidth, ClientHeight, True, True);
    Sp2:= spImgLoad(Handle, '1.gif', 10, 5, 99, 106, False, False);
    Sp3:= spImgLoad(Handle, '2.gif', 220, 100, 80, 98, False, False);

    spApplyChanges(Handle);
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  spShutdown;
end;