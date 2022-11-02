[Setup]
AppName=ISSprite
AppVername=0.1
AppPublisher=Shegorat
OutputBaseFilename=Example
CreateAppDir=no
DisableWelcomePage=False
OutputDir=.

[Files]
Source: "_old\Files\*"; Flags: "dontcopy";
Source: "Files\ISSprite.dll"; Flags: "dontcopy";
#if !defined(IS_ENHANCED) && (VER < 0x06000000)
Source: "CallbackCtrl.dll"; Flags: "dontcopy";
#endif

[Modules]
#include "Modules\ISSprite.iss"

[Code]
{ . . . }
#include "_old\_header.iss"

{ Старые примеры }
  //#include "_old\example1.iss";  {BtnEvent, ImageForm, Shd}
  //#include "_old\example2.iss";  {SpriteIndex, ListScroll}
    #include "_old\example3.iss";  {SpriteIndex, ListScroll}
  //#include "_old\example4.iss";  {SpriteIndex, Animate}
  //#include "_old\example5.iss";  {SpriteIndex, Animate, Formats}
  //#include "_old\example6.iss";  {SpriteIndex, Animate, ImageForm}
  //#include "_old\example7.iss";  {ImageForm}
  //#include "_old\example8.iss";  {Shd, Shd Style, Animate}
  //#include "_old\example9.iss";  {Shd, Shd Style, Alpha}
  //#include "_old\example10.iss"; {SpriteIndex, Animate, ImageForm+Aplha}
  //#include "_old\example11.iss"; {Shd, Shd Style+FormAlpha}
  //#include "_old\example12.iss"; {SpriteIndex, Animate, ImageSetPos}
  //#include "_old\example13.iss"; {Animate, Button SetPos}
  //#include "_old\example14.iss"; {Animate, Button SetPos}
  //#include "_old\example15.iss"; {BtnEvent, ImageForm, Shd, BtnShow}
  //#include "_old\example16.iss"; {Gif Image}
  //#include "_old\example17.iss"; {Image Load From Dll}