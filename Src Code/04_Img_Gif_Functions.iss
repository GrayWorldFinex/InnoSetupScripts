[TEST OPTIONS]
#define CreateImageForm

#define Stretch "True"
;#define Stretch "False"

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
    RawDataResource=BMP:fmt\img\img.BMP
  #else
    //Inno by Leserg
    RawDataResource=BMP>fmt\img\img.BMP
  #endif
#endif

[Files]
Source: "Files\*"; Flags: "dontcopy";
Source: "fmt\img\*"; Flags: "dontcopy";

[Modules]
#include "Modules\ISSprite.iss"

[Code]
var
  b: Byte;
  cl: Boolean;
  Angle: Integer;
  IL: TNewStaticText;
  btn: array of HWND;
  img: LongWord;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

function GetStatistic: String;
var
  i, x, y, w, h, x1, y1, w1, h1, wi, hi: Integer;
  s: String;
begin
  i:= 0;
  spImgGetDimensions(img, wi, hi);
  spImgGetPosition(img, x, y, w, h);
  spImgGetVisiblePart(img, x1, y1, w1, h1);

  s:=#13 + 'img[' + IntToStr(i) + ']' + #13;
  s:=s + #13 + 'HWND: ';
    s:=s + IntToStr(spImgGetParent(img));
  s:=s + #13#13 + 'Dimensions: ';
    s:=s + IntToStr(wi) + 'x' + IntToStr(hi);
  s:=s + #13 + 'Pos: ';
    s:=s + IntToStr(x) + ',' + IntToStr(y) +','+ IntToStr(w) + ',' + IntToStr(h);
  s:=s + #13 + 'VisibilePart: ';
    s:=s + IntToStr(x1) + ',' + IntToStr(y1) +','+ IntToStr(w1) + ',' + IntToStr(h1);
  s:=s + #13#13 + 'RotateAngle: ';
    s:=s + IntToStr(spImgGetRotateAngle(img));
  s:=s + #13 + 'Sprite: ';
    s:=s + 'c = ' + IntToStr(spImgGetSpriteCount(img)) + ' | ' + 'id: ' + IntToStr(spImgGetSpriteIndex(img));
  s:=s + #13 + 'Transparent: ';
    s:=s + IntToStr(spImgGetTransparent(img));
  s:=s + #13 + 'Visibile: ';
    if spImgGetVisibility(img) then s:=s + 'True' else  s:=s + 'False';
  s:=s + #13 + 'VisibilePie: ';
    s:=s + IntToStr(spImgGetVisiblePie(img));
  IL.Caption:=s;
end;

procedure Clicks(Obj: HWND; Event: Word);
var
  i: Byte;
  x, y, w, h, null, w1, h1: Integer;
begin
  case Obj of
    btn[0]: begin
      spImgGetDimensions(img, w, h);
      spImgGetPosition(img, x, y, null, null);
      if y <> 20+b then y:=20+b else y:=100;
      spImgSetPosition(img, x, y, w, h);
    end;
    btn[1]: begin
      #if Stretch == "True"
        spImgGetDimensions(img, w, h);
        spImgGetVisiblePart(img, x, y, w1, h1);
        if h1 <> h then h1:=h else h1:=h div 2;
        if w1 <> w then w1:=w else w1:=w div 2;
        spImgSetVisiblePart(img, x, y, w1, h1);
      #else
        spImgGetDimensions(img, w, h);
        spImgGetVisiblePart(img, x, y, w, h);
        if x <> 0 then spImgSetVisiblePart(img, 0, 0, 0, 0)
        else spImgSetVisiblePart(img, w div 4,  h div 4, 0, 0);
      #endif
    end;
    btn[2]: begin
      spImgSetVisibility(img, not spImgGetVisibility(img));
    end;
    btn[3]: begin
      if spImgGetTransparent(img) <> 255 then spImgSetTransparent(img, 255)
      else spImgSetTransparent(img, 100);
    end;
    btn[4]: begin
      if not cl then spImgSetBackgroundColor(img, $144B8A)
      else spImgSetBackgroundColor(img, -1);
      cl:=not cl;
    end;
    btn[5]: begin
      if spImgGetSpriteCount(img) < 2 then spImgSetSpriteCount(img, 2) else spImgSetSpriteCount(img, 0);
      spImgSetSpriteIndex(img, 1);
    end;
    btn[6]: begin
      if spImgGetSpriteCount(img) = 2 then
      if spImgGetSpriteIndex(img) < 2 then spImgSetSpriteIndex(img, 2)
      else spImgSetSpriteIndex(img, 1);
    end;
    btn[7]: begin
      Angle:=Angle+36;
      spImgSetRotateAngle(img, Angle);
      spBtnSetEnabled(btn[9], True);
    end;
    btn[8]: begin
      if spImgGetVisiblePie(img) > -1 then spImgSetVisiblePie(img, spImgGetVisiblePie(img) + 36)
      else spImgSetVisiblePie(img, 36);
      spBtnSetEnabled(btn[9], True);
    end;
    btn[9]: begin
      Angle:=0;
      spImgSetVisiblePie(img, -1);
      spImgSetRotateAngle(img, 0);
      spBtnSetEnabled(btn[9], False);
    end;
    btn[10]: begin
      for i:=0 to 10 do spBtnSetEnabled(btn[i], False);
      spImgRelease(img);
      IL.Caption:='';
    end;
    else WizardForm.Close;
  end;
  if Obj <> btn[10] then begin
    spBtnSetEnabled(btn[1], spImgGetSpriteCount(img) <> 2);
    GetStatistic;
  end;
  spBtnSetEnabled(btn[6], spImgGetSpriteCount(img) > 1);
  spApplyChanges(WizardForm.Handle);
end;

procedure InitializeWizard;
var
  i, l, t: Byte;
  f: array of String;
begin
  with WizardForm do begin
    OuterNotebook.Hide;
    Color:=$2C2C2C;
    Bevel.Hide;
    { ... }
    spInitialize(False, False);

    #ifdef CreateImageForm
      spImgLoad(Handle, '_bg.png', 0, 0, Width, Height, True, True);
      spImageFormCreate(Handle, 30);
      Color:=clNone; {!}
      b:=24;
    #endif

    SetArrayLength(btn, 12);
    f:=['Position', 'Visible Part', 'Visible', 'Transparent', 'Set BG Color', 'Sprite Count',
        'Sprite Index', 'Rotate Angle', 'Set Pie', 'Reset', 'Release', 'Exit'];
    for i:=0 to 11 do begin
      if i > 5 then l:=1;
      if l > 0 then t:=i-6 else t:=i;
      btn[i]:=spBtnCreate(Handle, 'btn.png', 360+110*l, (20+25*(t))+b, 100, 20, BTN_BUTTON, 0);
      spBtnSetFontColor(btn[i], $CCFF33, $999966, $FFFFFF, $444444);
      spBtnSetFont(btn[i], NextButton.Font.Handle);
      spBtnSetEvent(btn[i], spMouseClick, @Clicks);
      spBtnSetText(btn[i], f[i]);
      if (i = 6) or ( i = 9) then spBtnSetEnabled(btn[i], False);
    end;

    img:=spImgLoad(Handle, '_batf.gif', 10, 20+b, 300, 120, {#Stretch}, True);
      
    IL:=TNewStaticText.Create(nil);
    with IL do begin
			Parent:=WizardForm;
      SetBounds(365, 200, 150, 210);
      AutoSize:=False;
      WordWrap:=False;
      Color:=$2C2C2C;
      Font.Color:=$33FFCC;
      GetStatistic;
    end;
    { ... }
    spApplyChanges(Handle);
    {!}
    PostMessage(NextButton.Handle, $10, 0, 0);
    PostMessage(CancelButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  spShutdown;
end;