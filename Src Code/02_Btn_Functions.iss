[TEST OPTIONS]
#define CreateImageForm

[Setup]
AppName=ISSprite
AppVername=0.1
AppPublisher=Shegorat
OutputBaseFilename=Example
DefaultDirName={sd}\Example
DisableWelcomePage=False
OutputDir=.
#if defined(IS_ENHANCED)
  #if VER < 0x06000000
    //Inno by RESTOOLS
    //RawDataResource=BTN:Files\Btn_03.png
  #else
    //Inno by Leserg
    //RawDataResource=BTN>Files\Btn_03.png
  #endif
#endif

[Files]
Source: "Files\*"; Flags: "dontcopy";
Source: "fmt\btn\*"; Flags: "dontcopy";

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  a, b, intd, fv: Byte;
  IL: TNewStaticText;
  btn, mBtn: array of HWND;
  hCur: Cardinal;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

procedure GetStatistic;
var
  i, x, y, w, h: Integer;
  al: array of String;
  s: String;
begin
  i:= 10;
  al:= ['', 'DEFAULT', 'TOPLEFT', 'BOTTOMLEFT', 'TOPRIGHT',
        'BOTTOMRIGHT', 'TOPCENTER ', 'BOTTOMCENTER', 'CENTER'];
  spBtnGetPosition(mBtn[i], x, y, w, h);

  s:=#13 + 'mBtn[' + IntToStr(i) + ']' + #13;
  s:=s + #13 + 'HWND: ';
    s:=s + IntToStr(mBtn[i]);
  s:=s + #13 + 'Parent: ';
    s:=s + IntToStr(spBtnGetParent(mBtn[i]));
  s:=s + #13#13 + 'Pos: ';
    s:=s + IntToStr(x) + ', ' + IntToStr(y) +', '+ IntToStr(w) + ', ' + IntToStr(h);
  
  s:=s + #13#13 + 'Checked: ';
    if i > 9 then
      if spBtnGetChecked(mBtn[i]) > 0 then s:=s + 'True' else  s:=s + 'False'
    else s:=s + 'PANEL|BUTTON';
  s:=s + #13 + 'Enabled: ';
    if spBtnGetEnabled(mBtn[i]) then s:=s + 'True' else  s:=s + 'False';
  s:=s + #13 + 'Visible: ';
    if spBtnGetVisible(mBtn[i]) then s:=s + 'True' else  s:=s + 'False';
  s:=s + #13 + 'Transparent: ';
   s:=s + IntToStr(spBtnGetTransparent(mBtn[i]));
  s:=s + #13#13 + 'Alignment: ';
    s:= s + al[a];
  IL.Caption:=s;
end;

procedure Clicks(Obj: HWND; Event: Word);
var
  af, c, i, x, y, w, h, null: Integer;
begin
  case Obj of
    btn[0]: begin
      spBtnGetPosition(mBtn[0], x, null, null, null);
      if x <> 25 then null:=-2 else null:=2;
        for i:=0 to 29 do begin
        spBtnGetPosition(mBtn[i], x, y, w, h);
        spBtnSetPosition(mBtn[i], x+null, y+null, w-null*2, h-null*2);
      end;
    end;
    btn[1]: for i:=0 to 29 do spBtnSetVisible(mBtn[i], not spBtnGetVisible(mBtn[i]));
    btn[2]: for i:=0 to 29 do spBtnSetEnabled(mBtn[i], not spBtnGetEnabled(mBtn[i]));
    btn[3]: begin
      if spBtnGetTransparent(mBtn[i]) <> 255 then af:=255 else af:=100;
      for i:=0 to 29 do spBtnSetTransparent(mBtn[i], af);
    end;
    btn[4]: for i:=10 to 29 do begin
      if spBtnGetChecked(mBtn[i]) > 0 then c:=0 else c:=1;
       spBtnSetChecked(mBtn[i], c);
    end;
    btn[5]: for i:=0 to 29 do spBtnSetText(mBtn[i], '№ ' + IntToStr(i));
    btn[6]: begin
      if a < 8 then Inc(a) else a:= 1;
      for i:=0 to 29 do spBtnSetTextAlignment(mBtn[i], a);
    end;
    btn[7]: begin
      if intd <> 10 then intd:=10 else intd:=0;
      for i:=0 to 29 do spBtnSetTextIndent(mBtn[i], intd, 0);
    end;
    btn[8]: begin
      if fv > 0 then begin
        for i:=0 to 29 do spBtnSetFont(mBtn[i], WizardForm.Font.Handle);
        fv:=0;
      end else begin
        for i:=0 to 29 do spBtnSetFont(mBtn[i], WizardForm.WelcomeLabel1.Font.Handle);
        Inc(fv);
      end;
    end;
    btn[9]: for i:=0 to 29 do spBtnSetCursor(mBtn[i], spBtnGetSysCursor(crHand));
    btn[10]: for i:=0 to 29 do spBtnRefresh(mBtn[i]);
    btn[11]: WizardForm.Close;
  end;
  spApplyChanges(WizardForm.Handle);
  GetStatistic;
end;

procedure InitializeWizard;
var
  i, t, l, p: Byte;
  d: array of DWORD;
  s: array of String;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Color:=$2C2C2C;
    Bevel.Hide;
    {...}
    spInitialize(True, False);

    #ifdef CreateImageForm
      spImgLoad(Handle, '_bg.png', 0, 0, Width, Height, True, True);
      spImageFormCreate(Handle, 30);
      Color:=clNone; {!}
    #endif

    WizardForm.WelcomeLabel1.Font.Name:='Calibri';
    if Height = ClientHeight then b:=24;
    s:=['bmp', 'jpg', 'png', 'tif', 'gif'];
    d:=[$10, $20, $40, $80, $100];

    SetArrayLength(mBtn, 30);
    for t:=0 to 4 do
    for i:=0 to 4 do begin
      mBtn[p]:=spBtnCreate(Handle, 'Btn_0' + IntToStr(t+1) + '.' + s[i], 25+110*t, 40+25*i, 100, 20, d[t], 0);
      spBtnSetFontColor(mBtn[p], clWhite, clOlive, clWhite, clGreen);
      spBtnSetEvent(mBtn[p], spMouseClick, @Clicks);
      spBtnSetFont(mBtn[p], NextButton.Font.Handle);
      spBtnSetText(mBtn[p], Uppercase(s[i]) + ' (' + IntToStr(p) +')');
      Inc(p);
    end;

    SetArrayLength(btn, 12);
    s:=['Position', 'Visible', 'Enable', 'Transparent', 'Checked', 'Set Text',
        'Align', 'Indent', 'SetFont', 'Set Sursor', 'Refresh', 'Exit'];
    for i:=0 to 11 do begin
      if i > 5 then l:=1;
      if l > 0 then t:=i-6 else t:=i;
      btn[i]:=spBtnCreate(Handle, 'btn.png', 25+120*l, (220+25*(t))+b, 100, 20, BTN_BUTTON, 0);
      spBtnSetFontColor(btn[i], $CCFF33, $999966, $FFFFFF, $444444);
      spBtnSetFont(btn[i], NextButton.Font.Handle);
      spBtnSetEvent(btn[i], spMouseClick, @Clicks);
      spBtnSetText(btn[i], s[i]); a:=1;
    end;

    IL:=TNewStaticText.Create(nil);
    with IL do begin
			Parent:=WizardForm;
      SetBounds(365, 180, 150, 200);
      AutoSize:=False;
      WordWrap:=False;
      Color:=$2C2C2C;
      Font.Color:=$33FFCC;
      GetStatistic; 
    end;

    spApplyChanges(Handle);
    {...}
    PostMessage(NextButton.Handle, $10, 0, 0)
    PostMessage(CancelButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  spShutdown;
end;