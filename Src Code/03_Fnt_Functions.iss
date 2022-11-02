[TEST OPTIONS]
#define CreateImageForm

#define FntName "Crystalc"
#define FntFile "Font.otf"

[Setup]
AppName=ISSprite
AppVername=0.1
AppPublisher=Shegorat
OutputBaseFilename=Example
DefaultDirName={sd}\Example
DisableWelcomePage=False
OutputDir=.

[Files]
Source: "Files\*"; Flags: dontcopy;

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  CS: DWORD;
  CB: TComboBox;
  IL: TNewStaticText;
  Btn: array of HWND;
  Shd, FntMem: LongWord;
  Param: array of Boolean;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

function GetStatistic: String;
var
  s, sep: String;
begin
  sep:='________'
  s:=#13 + 'Shd ';
  if Shd > 0 then s:= s + '•';
  s:=s + #13 + sep + #13#13 + 'Reg ';
  if Param[0] then s:=s + '•';
  #ifdef IS_ENHANCED
    s:=s + #13 + 'RegMem ';
    if Param[1] then s:=s + '•';
  #endif
  s:=s + #13 + sep + #13#13 + 'CharSet:' + #13;
  if CS <> -1 then s:=s + CB.Text;
  Result:=s;
end;

procedure Click(nBtn: HWND; Enent: Word);
var
  i: Byte;
  Fnt: LongWord;
begin
  with WizardForm do
  case nBtn of
    Btn[0]: begin
      Fnt:=spFntCreateFont('{#FntName}', 500, False, False, False, 25);
      spFntChangeCharSet(Fnt, CS);
      Shd:=spShdCreate(Handle, 40, 40, 200, 180, '[font=Crystalc][align=tacenter]Test Caption. %nТестовая надпись.[/font][/align]', $FF8400, Fnt);
      spShdSetShadow(Shd, clBlack, 5, 30, SHD_STYLEGLOW);
      spBtnSetEnabled(Btn[0], False);
      spApplyChanges(Handle);
    end;
    Btn[1]: begin
      for i:=0 to 1 do spBtnSetEnabled(Btn[i], (i = 0));
      CB.Enabled:=False;
      case CB.ItemIndex of
        0: CS:=CS_ANSI_CHARSET;
        1: CS:=CS_DEFAULT_CHARSET;
        2: CS:=CS_SYMBOL_CHARSET;
        3: CS:=CS_MAC_CHARSET;
        4: CS:=CS_GREEK_CHARSET;
        5: CS:=CS_RUSSIAN_CHARSET;
        6: CS:=CS_EASTEUROPE_CHARSET;
        7: CS:=CS_OEM_CHARSET;
      end;
    end;
    Btn[2]: begin
      ExtractTemporaryFile('{#FntFile}');
      Param[0]:=spFntRegisterFont(ExpandConstant('{tmp}\{#FntFile}'));
      for i:=0 to 5 do spBtnSetEnabled(Btn[i], (i = 1) or (i = 4));
      CB.Enabled:=True;
    end;
    #ifdef IS_ENHANCED
    Btn[3]: begin
      FntMem:=spFntRegisterMemFont('{#FntFile}');
      for i:=0 to 5 do spBtnSetEnabled(Btn[i], (i = 1) or (i = 5));
      Param[1]:=FntMem > 0;
      CB.Enabled:=True;
    end;
    #endif
    Btn[4]: begin
      Param[0]:=not spFntUnregisterFont(ExpandConstant('{tmp}\{#FntFile}'));
      for i:=0 to 5 do spBtnSetEnabled(Btn[i], False);
    end;
    #ifdef IS_ENHANCED
    Btn[5]: begin
      Param[1]:=not spFntUnregisterMemFont(FntMem);
      for i:=0 to 5 do spBtnSetEnabled(Btn[i], False);
      FntMem:=0;
    end;
    #endif
    Btn[6]: Close;
  end;
  IL.Caption:=GetStatistic;
end;

procedure InitializeWizard;
var
  i: Byte;
  s: array of String;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Color:=$2C2C2C;
    Bevel.Hide;
    {...}
    spInitialize(False, True);

    IL:=TNewStaticText.Create(nil);
    with IL do begin
			Parent:=WizardForm;
      AutoSize:=False;
      WordWrap:=False;
      ParentColor:=True;
      Color:=$2C2C2C;
      Font.Color:=$33FFCC;
      SetBounds(400, 65, 148, 142);
    end;

    s:=['CS_ANSI_CHARSET', 'CS_DEFAULT_CHARSET', 'CS_SYMBOL_CHARSET', 'CS_MAC_CHARSET',
        'CS_GREEK_CHARSET', 'CS_RUSSIAN_CHARSET', 'CS_EASTEUROPE_CHARSET', 'CS_OEM_CHARSET'];

    CB:=TNewComboBox.Create(nil);
    with CB do begin
      Parent:=WizardForm;
      Style:=csDropDownList;
      Enabled:=False;
      TabStop:=False;
      Sorted:=False;
      SetBounds(390, 40, 160, 21);
      for i:=0 to 7 do Items.Add(s[i]);
      ItemIndex:=1;
      CS:=-1;
    end;

    SetArrayLength(Btn, 7);
    SetArrayLength(Param, 2);
    s:=['Create', 'CharSet', 'Reg', 'RegMem', 'UnReg', 'UnRegMem', 'Exit'];
    for i:=0 to GetArrayLength(Btn)-1 do begin
      Btn[i]:=spBtnCreate(Handle, 'btn.png', 290, 40+26*i, 80, 20, BTN_BUTTON, 0);
      spBtnSetFontColor(Btn[i], $CCFF33, $999966, $FFFFFF, $444444);
      spBtnSetFont(Btn[i], NextButton.Font.Handle);
      spBtnSetEvent(Btn[i], spMouseClick, @Click);
      spBtnSetText(Btn[i], s[i]);
      spBtnRefresh(Btn[i]);
      if (i <> 2) and (i <> 6) then spBtnSetEnabled(Btn[i], False);
      #if defined(IS_ENHANCED)
        spBtnSetEnabled(Btn[3], True);
      #else
        spBtnSetTransparent(Btn[3], 50);
        spBtnSetTransparent(Btn[5], 50);
      #endif
    end;
    Click(0, 0);

    {...}
    #ifdef CreateImageForm
      Color:=clNone;{!}
      spImgLoad(Handle, '_bg.png', 0, 0, Width, Height, True, True);
      spImageFormCreate(Handle, 30);
    #endif
    spApplyChanges(Handle);
    
    {!}
    PostMessage(NextButton.Handle, $10, 0, 0);
    PostMessage(CancelButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  if Param[0] then spFntUnregisterFont(ExpandConstant('{tmp}\{#FntFile}'));
  if Param[1] then spFntUnregisterMemFont(FntMem);
  spShutdown;
end;