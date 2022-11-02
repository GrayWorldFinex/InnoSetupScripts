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
    RawDataResource=BMP:fmt\img\img.BMP|JPG:fmt\img\img.JPG|PNG:fmt\img\img.PNG| \
										TIF:fmt\img\img.TIF|GIF:fmt\img\img.GIF|ICO:fmt\img\img.ICO
  #else
    //Inno by Leserg
    RawDataResource=BMP>fmt\img\img.BMP,JPG>fmt\img\img.JPG,PNG>fmt\img\img.PNG, \
										TIF>fmt\img\img.TIF,GIF>fmt\img\img.GIF,ICO>fmt\img\img.ICO
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
  img: array of LongWord;

procedure CancelButtonClick(p:Integer;var a,b:Boolean);begin b:=False;end;

function GetStatistic: String;
var
  i, x, y, w, h, x1, y1, w1, h1, wi, hi: Integer;
  s: String;
begin
  i:= 0;
  spImgGetDimensions(img[i], wi, hi);
  spImgGetPosition(img[i], x, y, w, h);
  spImgGetVisiblePart(img[i], x1, y1, w1, h1);

  s:=#13 + 'img[' + IntToStr(i) + ']' + #13;
  s:=s + #13 + 'HWND: ';
    s:=s + IntToStr(spImgGetParent(img[i]));
  s:=s + #13#13 + 'Dimensions: ';
    s:=s + IntToStr(wi) + 'x' + IntToStr(hi);
  s:=s + #13 + 'Pos: ';
    s:=s + IntToStr(x) + ',' + IntToStr(y) +','+ IntToStr(w) + ',' + IntToStr(h);
  s:=s + #13 + 'VisibilePart: ';
    s:=s + IntToStr(x1) + ',' + IntToStr(y1) +','+ IntToStr(w1) + ',' + IntToStr(h1);
  s:=s + #13#13 + 'RotateAngle: ';
    s:=s + IntToStr(spImgGetRotateAngle(img[i]));
  s:=s + #13 + 'Sprite: ';
    s:=s + 'c = ' + IntToStr(spImgGetSpriteCount(img[i])) + ' | ' + 'id: ' + IntToStr(spImgGetSpriteIndex(img[i]));
  s:=s + #13 + 'Transparent: ';
    s:=s + IntToStr(spImgGetTransparent(img[i]));
  s:=s + #13 + 'Visibile: ';
    if spImgGetVisibility(img[i]) then s:=s + 'True' else  s:=s + 'False';
  s:=s + #13 + 'VisibilePie: ';
    s:=s + IntToStr(spImgGetVisiblePie(img[i]));
  IL.Caption:=s;
end;

procedure Clicks(Obj: HWND; Event: Word);
var
  i: Byte;
  ap, x, y, w, h: Integer;
begin
  case Obj of
    btn[0]: begin
      spImgGetPosition(img[0], x, y, w, h);
      if x <> 20 then x:=20 else x:=18;
      if x <> 20 then w:=58 else w:=50;
      for i:=0 to 17 do begin
        if (i > 5) and (i < 12) then ap:=6;
        if (i > 11) then ap:=12;
      spImgSetPosition(img[i], x+ap*10, (x+60*(i-ap))+b, w, w);
      end;
    end;
    btn[1]: begin
      #if Stretch == "True"
        spImgGetVisiblePart(img[0], x, y, w, h);
        if x <> 0 then x:=0 else x:=25; y:=x;
        for i:=0 to 17 do spImgSetVisiblePart(img[i], x, y, w, h);
      #else
        spImgGetDimensions(img[0], w, h);
        spImgGetVisiblePart(img[0], x, y, w, h);
        if x <> 0 then for i:=0 to 17 do spImgSetVisiblePart(img[i], 0, 0, 0, 0)
        else for i:=0 to 17 do spImgSetVisiblePart(img[i], w div 4,  h div 4, 0, 0);
      #endif
    end;
    btn[2]: begin
      for i:=0 to 17 do spImgSetVisibility(img[i], not spImgGetVisibility(img[i]));
    end;
    btn[3]: for i:=0 to 17 do begin
      if spImgGetTransparent(img[i]) <> 255 then spImgSetTransparent(img[i], 255)
      else spImgSetTransparent(img[i], 100);
    end;
    btn[4]: begin
      for i:=0 to 17 do
      if not cl then spImgSetBackgroundColor(img[i], $000000)
      else spImgSetBackgroundColor(img[i], -1);
      cl:=not cl;
    end;
    btn[5]: for i:=0 to 17 do begin
      if spImgGetSpriteCount(img[i]) < 2 then spImgSetSpriteCount(img[i], 2) else spImgSetSpriteCount(img[i], 0);
      spImgSetSpriteIndex(img[i], 1);
    end;
    btn[6]: for i:=0 to 17 do begin
      if spImgGetSpriteCount(img[i]) = 2 then
      if spImgGetSpriteIndex(img[i]) < 2 then spImgSetSpriteIndex(img[i], 2)
      else spImgSetSpriteIndex(img[i], 1);
    end;
    btn[7]: begin
      Angle:=Angle+36;
      for i:=0 to 17 do spImgSetRotateAngle(img[i], Angle);
      spBtnSetEnabled(btn[9], True);
    end;
    btn[8]: for i:=0 to 17 do begin
      if spImgGetVisiblePie(img[i]) > -1 then spImgSetVisiblePie(img[i], spImgGetVisiblePie(img[i]) + 36)
      else spImgSetVisiblePie(img[i], 36);
      spBtnSetEnabled(btn[9], True);
    end;
    btn[9]: begin
      for i:=0 to 17 do begin
        Angle:=0;
        spImgSetVisiblePie(img[i], -1);
        spImgSetRotateAngle(img[i], 0);
      end;
      spBtnSetEnabled(btn[9], False);
    end;
    btn[10]: begin
      for i:=0 to 10 do spBtnSetEnabled(btn[i], False);
      for i:=0 to 17 do begin
        //spImgSetVisibility(img[i], False);
        //spApplyChanges(WizardForm.Handle);
        spImgRelease(img[i]);
      end;
      IL.Caption:= #13+'Пока не реализовано!';
    end;
    else WizardForm.Close;
  end;
  if Obj <> btn[10] then GetStatistic;
  spBtnSetEnabled(btn[6], spImgGetSpriteCount(img[0]) > 1);
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
    spInitialize(False, True);

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

    f:=['bmp', 'jpg', 'png', 'tif', 'gif', 'ico'];
    for i:=0 to 5 do begin
      SetArrayLength(img, GetArrayLength(f)*3);
      {tmp} img[i]:=spImgLoad(Handle, 'img.' + f[i], 20, (20+60*i)+b, 50, 50, {#Stretch}, True);
      {res} img[i+6]:=spImgLoadFromResource(Handle, f[i], 80, (20+60*i)+b, 50, 50, {#Stretch}, True);
      {dll} img[i+12]:=spImgLoadFromLibrary(Handle, 'lib.dll', f[i], 'RC_DATA', 140, (20+60*i)+b, 50, 50, {#Stretch}, True);
    end;
      
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