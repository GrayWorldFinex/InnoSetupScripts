[TEST OPTIONS]
#define CreateImageForm

#define TextColor1  "$986800"
#define TextColor2  "$52A600"

#define ShadColor1  "$000000"
#define ShadColor2  "$692500"

#define Gradient1  "$E10019"
#define Gradient2  "$00601B"

[Setup]
AppName=ISSprite
AppVername=0.1
AppPublisher=Shegorat
OutputBaseFilename=Example
DefaultDirName={sd}\Example
DisableWelcomePage=False
OutputDir=.

[Files]
Source: "Files\*"; Flags: "dontcopy";

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  fnt: LongWord;
  shd: array of LongWord;
  btn, btn2: array of HWND;
  info, event: TNewStaticText;
  CharExtr: array [0..1] of Integer;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

procedure EventHook(Shd: LongWord; EventId: Word);
var
  s: String;
begin
  s:= ' EventId = ';
  case EventId of
    spMouseClick: s:= s+'MouseClick';
    spMouseEnter: s:= s+'MouseEnter';
    spMouseLeave: s:= s+'MouseLeave';
    spMouseMove: s:= s+'MouseMove';
    spMouseDown: s:= s+'MouseDown';
    spMouseUp: s:= s+'MouseUp';
  end;
  event.Caption:= s;
end;

procedure Clicks2(Obj: HWND; Event: Word);
var
  i: Byte;
  s, rs: String;
begin
  for i:=0 to 1 do begin
    if i = 0 then s:='Fnt Glow' else s:='Fnt Shadow';
    case Obj of
      btn2[0]: rs:= '[align=taLeft]'+s+'[/align]';
      btn2[1]: rs:= '[align=taCenter]'+s+'[/align]';
      btn2[2]: rs:= '[align=taRight]'+s+'[/align]';
      btn2[3]: rs:= '[align=taCenter][b]'+s+'[/b][/align]';
      btn2[4]: rs:= '[align=taCenter][i]'+s+'[/i][/align]';
      btn2[5]: rs:= '[align=taCenter][u]'+s+'[/u][/align]';
      btn2[6]: rs:= '[align=taCenter][s]'+s+'[/s][/align]';
      btn2[7]: rs:= '[align=taCenter][min=1]'+s+'[/min][/align]';
      btn2[8]: rs:= '[align=taCenter][size=18]'+s+'[/size][/align]';
      btn2[9]: rs:= '[align=taCenter][font=Georgia]'+s+'[/font][/align]';
      btn2[10]:rs:= '[align=taCenter][color=$FF00FF]'+s+'[/color][/align]';
    end;
    spShdSetText(shd[i], rs);
  end;
  spApplyChanges(WizardForm.Handle);
end;

function GetStatistic: String;
var
  s, tab: String;
  i, x, y, w, h, null: Integer;
begin
  tab:=' ';
  if (shd[0] <> 0) and (shd[1] <> 0) then begin
  s:=#13#13;
  for  i:=0 to 1 do begin
    spShdGetPosition(shd[i], x, y, w, h);
    s:=s+tab+'------ Shd '+IntToStr(i+1)+' ------'+#13;
    s:=s+tab+'Parent HWND = '+IntToStr(HWND(spShdGetParent(shd[i])))+#13;
    s:=s+tab+'POS = '+'('+IntToStr(x)+','+IntToStr(y)+','+IntToStr(w)+','+IntToStr(h)+')'+#13;
    s:=s+tab+'Visible = '; if spShdGetVisible(shd[i]) then s:=s+'True'+#13 else s:=s+'False'+#13;
    s:=s+tab+'Character Extra = '+IntToStr(CharExtr[i])+#13;
    s:=s+tab+'TextColor = '+IntToStr(spShdGetTextColor(shd[i]))+#13;
    s:=s+tab+'ShadowColor = '+IntToStr(spShdGetShadowColor(shd[i]))+#13;
    s:=s+tab+'Rotate Angle = '+IntToStr(spShdGetRotateAngle(shd[i]))+#13#13;
   end;
  end;
  Result:=s;
end;

procedure Clicks(Obj: HWND; Event: Word);
var
  i: Byte;
  x, y, w, h, null: Integer;
begin
  case Obj of
    btn[0]: begin
      fnt:=spFntCreateFont('Tahoma', 0, False, False, False, 25);
      for i:=0 to 1 do begin
        if i = 0 then begin
          shd[0]:=spShdCreate(WizardForm.Handle, 180, 60, 250, 84, '[align=tacenter]Fnt Glow[/align]', {#TextColor1}, fnt);
          spShdSetShadow(shd[i], {#ShadColor1}, 4, 6, SHD_STYLEGLOW);
        end else begin
          shd[1]:=spShdCreate(WizardForm.Handle, 180, 172, 250, 84, '[align=tacenter]Fnt Shadow[/align]', {#TextColor1}, fnt);
          spShdSetShadow(shd[i], {#ShadColor1}, 4, 10, SHD_STYLESHADOW);
        end;
      end;
      for i:=1 to 6 do spShdSetEvent(shd[0], i, @EventHook);
      for i:=1 to 6 do spShdSetEvent(shd[1], i, @EventHook);
      for i:=0 to 10 do spBtnSetEnabled(btn2[i], True);
      for i:=1 to 9 do spBtnSetEnabled(btn[i], (i <> 5) and (i <> 7));
      spBtnSetEnabled(Obj, False);
    end;
    btn[1]:
      for i:=0 to 1 do begin
        spShdGetPosition(shd[i], x, y, w, h);
        if x <> 180 then null:=-10 else null:=10;
        spShdSetPosition(shd[i], x + null, y + null, w - null, h - null);
    end;
    btn[2]: for i:=0 to 1 do begin
      if spShdGetRotateAngle(shd[i]) <> 0 then spShdSetRotateAngle(shd[i], 0)
      else spShdSetRotateAngle(shd[i], 20);
    end;
    btn[3]: for i:=0 to 1 do spShdSetVisible(shd[i], not spShdGetVisible(shd[i]));
    btn[4]: for i:=0 to 1 do begin
      if  CharExtr[i] = 0 then CharExtr[i]:=Random(200) else  CharExtr[i]:=0;
      spShdSetCharacterExtra(shd[i], CharExtr[i]);
    end; 
    btn[5]: begin
      for i:=0 to 1 do spShdSetTextColor(shd[i], {#TextColor1});
      spBtnSetEnabled(btn[6], True);
      spBtnSetEnabled(Obj, False);
    end;
    btn[6]: begin
      for i:=0 to 1 do spShdSetTextColor(shd[i], {#TextColor2});
      spBtnSetEnabled(btn[5], True);
      spBtnSetEnabled(Obj, False);
    end;
    btn[7]: begin
      for i:=0 to 1 do spShdSetShadowColor(shd[i], {#ShadColor1});
      spBtnSetEnabled(btn[8], True);
      spBtnSetEnabled(Obj, False);
    end;
    btn[8]: begin
      for i:=0 to 1 do spShdSetShadowColor(shd[i], {#ShadColor2});
      spBtnSetEnabled(btn[7], True);
      spBtnSetEnabled(Obj, False);
    end;
    btn[9]: for i:=0 to 1 do begin
      if i = 0 then spShdAddGradient(shd[i], {#Gradient1}, {#Gradient2}, SHD_GRADIENTVER)
      else spShdAddGradient(shd[i], {#Gradient1}, {#Gradient2}, SHD_GRADIENTHOR);
      spBtnSetEnabled(btn[10], True);
      spBtnSetEnabled(Obj, False);
    end;
    btn[10]: begin
      for i:=0 to 1 do spShdFreeGradient(shd[i]);
      spBtnSetEnabled(btn[9], True);
      spBtnSetEnabled(Obj, False);
    end;
    else WizardForm.Close;
  end;
  spApplyChanges(WizardForm.Handle);
  info.Caption:=GetStatistic;
end;

procedure InitializeWizard;
var
  i, py, pc, b: Byte;
  s: array of String;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Bevel.Hide;
    ClientWidth:= 640;
    ClientHeight:= 480;
    Color:=$2C2C2C;
    { ... }

    spInitialize(False, False);

    #ifdef CreateImageForm
      spImgLoad(Handle, '_bg.png', 0, 0, Width, Height, True, True);
      spImageFormCreate(Handle, 75);
      Color:=clNone; {!}
      b:=10;
    #endif

    event:=TNewStaticText.Create(nil);
    with event do begin
      Parent:=WizardForm;
      AutoSize:=False;
      WordWrap:=False;
      ParentColor:=True;
      Transparent:=False;
      Color:=$2C2C2C;
      Font.Color:=$33FFCC;
      SetBounds(WizardForm.ClientWidth-167, 360+b, 165, 18);
    end;
    //
    info:=TNewStaticText.Create(nil);
    with info do begin
      Parent:=WizardForm;
      AutoSize:=False;
      WordWrap:=False;
      ParentColor:=True;
      Transparent:=False;
      Color:=$2C2C2C;
      Font.Color:=$33FFCC;
      SetBounds(event.Left, 32+b, 165, 303);
    end;
    {}
    SetArrayLength(shd, 2);
    SetArrayLength(btn, 12);
    s:=['Add','Set Pos','Rotate','Visible','Char Extra','Color №1',
        'Color №2','Shadow №1','Shadow №2','+ Gradient','- Gradient','Exit'];

    for i:=0 to 11 do begin
      btn[i]:=spBtnCreate(Handle, 'btn.png', 20, 60+32*i+b, 100, 20, BTN_BUTTON, 0);
      spBtnSetFontColor(btn[i], $CCFF33, clWhite, clWhite, clWhite);
      spBtnSetEnabled(btn[i], (i = 0) or (i = 11));
      spBtnSetFont(btn[i], NextButton.Font.Handle);
      spBtnSetEvent(btn[i], spMouseClick, @Clicks);
      spBtnSetText(btn[i], s[i]);
    end;
    {}
    SetArrayLength(btn2, 11);
    s:=['[align=taLeft]','[align=taCenter]','[align=taRight]','[b]','[i]',
        '[u]', '[s]','[min= * ]','[size= * ]','[name= * ]', '[color]'];
    
    for i:=0 to 10 do begin
      if i = 3 then py:=32; if i = 3 then pc:=3;
      if i = 6 then py:=32*2; if i = 6 then pc:=6;
      if i = 9 then py:=32*3; if i = 9 then pc:=9;

      btn2[i]:=spBtnCreate(Handle, 'btn.png', 150+105*(i-pc), 316+py+b, 100, 20, BTN_BUTTON, 0);
      spBtnSetFontColor(btn2[i], clWhite, $CCFF33, clWhite, $2C2C2C);
      spBtnSetFont(btn2[i], NextButton.Font.Handle);
      spBtnSetEvent(btn2[i], spMouseClick, @Clicks2);
      spBtnSetEnabled(btn2[i], False);
      spBtnSetText(btn2[i], s[i]);
    end;
    info.Caption:=GetStatistic;
    spApplyChanges(Handle);
    { ... }
    PostMessage(NextButton.Handle, $10, 0, 0); {!}
    PostMessage(CancelButton.Handle, $10, 0, 0); {!}
  end;
end;

procedure DeinitializeSetup;
begin
  spShutdown;
end;