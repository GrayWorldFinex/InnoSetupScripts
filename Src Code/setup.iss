;▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
;   «The Sims™ 4» SCRIPT BY INNO SETUP COMPILER 5.5.1.ее2(u)

;  ▄█▀█▄   ▀██▀█▄          ▀█▓          ▀█▓
;  █▓ █▓    █▓ █▓           █▓           █▓                 ®
;  █▓       █▓ █▓    ▄▀█▄   █▓  ▀█▓ ██▀  █▓ ▄▀  ▄▀▄  ▀█▓ ██▀
;  ▀█▄▄     ██▄█▄      █▓   █▓   █▓ █▓   █▓ █  █▓ █▓  █▓ █▓
;     █▓    █▓  █▓  ▄█▀█▓   █▓   █▓ █▓   █▓█   █▓ █▓  █▓ █▓
;  █▓ █▓    █▓  █▓  █▓ █▓   █▓   █▓ █▓   █▓ █  █▓ █▓  █▓ █▓
;  ▀█▄█▀ ▄ ▄██▄▄█▀  ▀█▄██▄ ▄██▄   ▀▄▀   ▄█▓ ▀▄  ▀▄▀    ▀▄▀
;                                  █
;                                 ▄█▄

;▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
#ifndef IS_ENHANCED
  #error Enhanced edition of Inno Setup (restools) is required to compile this script
#endif
// Подключение компонентов контроля и установки
//=============================================================
//#define xtool
#define Controler
#define Components
//#define records
// Размер исполняемого файла установки
//=============================================================
#ifdef records      
#ifdef Components
  #define SizeFile "9643173"
#else
  #define SizeFile "9676345"
#endif
// Расстановка процентов распаковки архивов  
//=============================================================
#define Game1 "1000000 664785 0 0"
#define Game2 "570146 762868 0 0'+#13#10+'429854 664785 0 0"
#define Game7 "122322 400377 0 0'+#13#10+'141988 464743 0 0'+#13#10+'219871 719664 0 0'+#13#10+'164622 538827 0 0'+#13#10+'154208 504741 0 0'+#13#10+'178682 584848 0 0'+#13#10+'18307 59920 0 0"
#define Game8 "194972 828989 0 0'+#13#10+'109304 464743 0 0'+#13#10+'169259 719664 0 0'+#13#10+'126728 538827 0 0'+#13#10+'118712 504741 0 0'+#13#10+'137552 584848 0 0'+#13#10+'129380 550106 0 0'+#13#10+'14093 59920 0 0"
// Расположение файла расстановки процентов распаковки архивов
//=============================================================
#else
 	#define ToDir "d:\Projects\The Sims 4\isdone\inf\"
#endif
// Количество изображений и время их показа в Слайдшоу
//=============================================================
#define password   "password"
#define SLIDE      "40"
#define SlideSpeed "10000"
// Дополнительная информация установки                    
//=============================================================
#define GameSize   "$03a0b98a"
#define GameSize64 "$031482bf"
#define GameSizeLE "$038aaf98"
#define Needed     "59748"
#define NeedUp     "10294"
#define NeedUpLE   "1810"
#define Priority
// Версии файлов установки игры
//=============================================================
#define MINOR        "$00000056"
#define PreVersion   "1.82.99.1030 | 1.83.24.1030 | 1.84.171.1030 | 1.84.197.1030 | 1.85.203.1030 | 1.86.157.1030"
#define PreVersionLE "1.82.99.1530 | 1.83.24.1530 | 1.84.171.1530 | 1.84.197.1530 | 1.85.203.1530 | 1.86.157.1530"
#define VERSION      "1.86.166.1030"
#define VERSIONLE    "1.86.166.1530"
// Версии компонентоов среды выполнения приложений C++
//=============================================================
#define DIRECT   "4.09.00.0904"
#define VISUAL10 "v10.0.40219.0"
#define VISUAL13 "v12.0.21005.0"
#define VISUAL19 "v14.0.24123.0"
// Параметры системных требований
//=============================================================
#define System
#ifdef System                
  #define PROCESSOR "2000"
  #define RAM       "3072"
  #define RAM1      "2048"
  #define VIDEO     "128"
#endif
// Стиль и прозрачность формы установки
//=============================================================
#define Cursor    "LoadCursorFromFile(ExpandConstant('{tmp}\ani.ani'))"
#define FontName  "Century Schoolbook"
#define Styles    "isskin.skin"
#define Glass                          
#ifdef Glass
	#define percent "88"
#endif
// Сообщения установки
//=============================================================
#define Autor     "RePack by S.Balykov®"
#define Copyright "© 2014 Electronic Arts Inc."
#define NAME      "The Sims™ 4"
#define NAME_DE   "Die Sims™ 4"
#define NAME_ES   "Los Sims™ 4"
#define NAME_FR   "Les Sims™ 4"
#define NAME_NL   "De Sims™ 4"
#define Publisher "Electronic Arts Inc."
#define URL       "https://www.ea.com/games/the-sims/the-sims-4/pc/"
// Изменение языка файлов установки
//=============================================================
#define Content      "{userdocs}\Electronic Arts\The Sims 4\content\1.content.beta.pc.4.0.3"
#define Delete       "{code:GetDelete}"
#define Delete64     "{code:GetDelete64}"
#define Desktop      "{code:GetDesktop}"
#define Desktop64    "{code:GetDesktop64}"
#define DesktopLang  "{code:GetDesktopLanguage}"
#define Dir          "{code:GetInstallDir}"
#define Display      "{code:GetDisplay}"
#define Group        "{code:GetGroup}"
#define Group64      "{code:GetGroup64}"
#define DefGr        "{code:GetDefGroup}"
#define HelpName     "{code:GetHelpName}"
#define HelpText     "{code:GetHelpText}"
#define IniLang      "{code:GetIniLang}"
#define Internet     "{code:GetInternet}"
#define Language     "{code:GetLanguage}"
#define LicenseName  "{code:GetLicenseName}"
#define LicenseText  "{code:GetLicenseText}"
#define Locale       "{code:GetLocaleLang}"
#define LocaleName   "{code:GetLocale}"
#define LocaleName64 "{code:GetLocale64}"
#define PlayGame     "{code:GetPlay}"
#define PlayGame64   "{code:GetPlay64}"
#define ReadmeLang   "{code:GetReadmeLang}"
#define ReadmeName   "{code:GetReadmeName}"
#define ReadmeText   "{code:GetReadmeText}"
#define ScreenShot   "{code:GetScreensName}"
#define VideoName    "{code:GetVideoName}"
// Подключение файлов игры
//=============================================================
#define AppEXE    "Game\Bin_LE\TS4.exe"
#define AppEXE64  "Game\Bin\TS4_x64.exe"
#define AppLang   "{app}\Support\The Sims™ 4 Language Changer.exe"
#define DLCs      "{app}\__Installer\DLC"
#define SAVES     "{userdocs}\Electronic Arts"
#define Support   "{app}\Support"
#define UninsEXE  "__Installer\Cleanup.exe"
#define UNINSTALL "{app}\__Installer"
// Значения записей реестра                                    
//=============================================================
#define Control    "System\CurrentControlSet\Control"
#define CurrentVer "Software\Microsoft\Windows\CurrentVersion"
#define Direct3D   "Software\Microsoft\Direct3D\MostRecentApplication"
#define Farewall   "System\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\FirewallRules"
#define GameUX     "SOFTWARE\Microsoft\Windows\CurrentVersion\GameUX\Games\{0AFF5EB4-1246-427A-8DCC-B2379B36A709}"
#define GameUX64   "SOFTWARE\Microsoft\Windows\CurrentVersion\GameUX\Games\{6EBD5E28-BB54-4791-9934-AEC780E7247D}"
#define Games      "SOFTWARE\Microsoft\Windows\CurrentVersion\GameUX\Games\{{0AFF5EB4-1246-427A-8DCC-B2379B36A709}"
#define Games64    "SOFTWARE\Microsoft\Windows\CurrentVersion\GameUX\Games\{{6EBD5E28-BB54-4791-9934-AEC780E7247D}"
#define Maxis      "Software\Maxis"
#define MuiCache   "Local Settings\Software\Microsoft\Windows\Shell\MuiCache"
#define Origin     "Software\Origin Games"
#define UserCore   "Software\Electronic Arts\EA Core\Staging"
#define WindowsNT  "Software\Microsoft\Windows NT\CurrentVersion"
// Подключение дополнительных параметров
//=============================================================
#define BtnClick      "1, CallbackAddr('ClickBtn')"
#define BtnEnter      "2, CallbackAddr('sndEnter')"
#define BtnLang       "1, CallbackAddr('SelectLang')"
#define BtnFontColor1 "$A09E9E, $FFFFFF, $A09E9E, $808080"
#define BtnFontColor2 "$A09E9E, $0030ff, $A09E9E, $808080"
#define BtnFontColor3 "$A09E9E, $00FF00, $A09E9E, $808080"
#define DATE          "GetDateTimeString('yyyy.mm.dd hh.nn', '.', '.')"
#define Splash        "2000, 2000, 2000, 0, 255"
//                ГЛОБАЛЬНЫЕ ПАРАМЕТРЫ УСТАНОВКИ
//▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
// СЕКЦИЯ ДИРЕКТИВ УСТАНОВКИ
//=============================================================
[Setup]
AppComments             ={#Autor}
AppCopyright            ={#Copyright}
AppMutex                ={#NAME} Setup
AppName                 ={#NAME}
AppPublisher            ={#Publisher}
AppPublisherURL         ={#URL}
AppVersion              ={#VERSION}
ChangesAssociations     =yes
ChangesEnvironment      =yes
CreateUninstallRegKey   =no
DefaultDirName          ={#Dir}
DefaultGroupName        ={#DefGr}
DirExistsWarning        =no
DisableProgramGroupPage =yes
DisableReadyPage        =yes
IconResource            =ICON1:source\ico1.ico|ICON2:source\ico2.ico|ICON3:source\ico3.ico|ICON4:source\ico4.ico
#ifdef Controler
#ifdef Components
OutputDir               =output\#proba\components
#else
OutputDir               =output\#proba\game
#endif
#else
#ifdef Components
OutputDir               =output\components
#else
OutputDir               =output\game
#endif
#endif
OutputBaseFilename      =setup
RawDataResource         =FONE:files\form\fone.jpg|PAGE:files\form\page.png|PAGE1:files\form\page1.png|ANI:source\ani.ani|BOTVA:source\botva2.dll|BUTTON:files\form\button.png|CHECK:files\form\check.png|FONT:source\font.ttf|GSG:source\isgsg.dll|LOGO:source\logo.png|SKIN:source\isskin.dll|STYLE:source\isskin.skin|MP3:source\music.mp3|WAVE1:source\Check.wav|WAVE2:source\Enter.wav|GDF:source\GDFBinary.dll
RestartIfNeededByRun    =no
SetupIconFile           =source\ico.ico
ShowLanguageDialog      =no
SolidCompression        =yes
UninstallFilesDir       ={#UNINSTALL}
UninstallIconFile       =source\ico0.ico
VersionInfoVersion      ={#VERSION}
// СЕКЦИЯ ВЫБОРА ТИПА УСТАНОВКИ
//=============================================================
#ifdef Components
[Types]
Name: full; Description: Full installation
Name: custom; Description: Custom installation; Flags: iscustom
// СЕКЦИЯ ВЫБОРА КОМПОНЕНТОВ УСТАНОВКИ
//=============================================================
[Components]
// Выбор Базовой Игры The Sims™ 4 и Legacy Edition   custom; Flags: fixed
//=============================================================
Name: base; Description: base; Types: full custom; Check: CheckError and IsWin64 and GameUpdate; ExtraDiskSpaceRequired: 14596499736;
Name: base; Description: base; Types: full custom; Check: CheckError and IsWin64 and not GameUpdate; ExtraDiskSpaceRequired: 15955130286;
Name: base; Description: base; Types: full custom; Check: CheckError and not IsWin64 and GameUpdate; ExtraDiskSpaceRequired: 6796601685;
Name: base; Description: base; Types: full custom; Check: CheckError and not IsWin64 and not GameUpdate; ExtraDiskSpaceRequired: 15973390878;
// Выбор Дополнений The Sims™ 4 
//=============================================================
Name: addon;    Description: addon; Types: full custom; Flags: collapsed
Name: addon\1;  Description: addon; Types: full custom; ExtraDiskSpaceRequired: 1992289619;
Name: addon\2;  Description: addon; Types: full custom; ExtraDiskSpaceRequired: 2045698896;
Name: addon\3;  Description: addon; Types: full custom; ExtraDiskSpaceRequired: 2963922147;
Name: addon\4;  Description: addon; Types: full custom; ExtraDiskSpaceRequired: 2319801243;
Name: addon\5;  Description: addon; Types: full custom; ExtraDiskSpaceRequired: 1513512887;
Name: addon\6;  Description: addon; Types: full custom; ExtraDiskSpaceRequired: 3043982269;
Name: addon\7;  Description: addon; Types: full custom; ExtraDiskSpaceRequired: 1549632993;
Name: addon\8;  Description: addon; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 1800305461;
Name: addon\9;  Description: addon; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 1601277446;
Name: addon\10; Description: addon; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 1773460895;
Name: addon\11; Description: addon; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 1773460895;
// Выбор Игровых наборов The Sims™ 4
//=============================================================
Name: pack;    Description: pack; Types: full custom; Flags: collapsed
Name: pack\1;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 843680591;
Name: pack\2;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 617456969;
Name: pack\3;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 534844232;
Name: pack\4;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 798880066;
Name: pack\5;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 521874250;
Name: pack\6;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 1043484542;
Name: pack\7;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 779901050;
Name: pack\8;  Description: pack; Types: full custom; ExtraDiskSpaceRequired: 971918868;
Name: pack\9;  Description: pack; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 1537522105;
Name: pack\10; Description: pack; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 1237522105;
Name: pack\11; Description: pack; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 1237522105;
// Выбор Каталогов The Sims™ 4
//=============================================================
Name: stuff;    Description: stuff; Types: full custom; Flags: collapsed
Name: stuff\1;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 155664748;
Name: stuff\2;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 124657386;
Name: stuff\3;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 200027593;
Name: stuff\4;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 208795460;
Name: stuff\5;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 264782456;
Name: stuff\6;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 256901742;
Name: stuff\7;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 182636709;
Name: stuff\8;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 219955371;
Name: stuff\9;  Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 207510758;
Name: stuff\10; Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 223466073;
Name: stuff\11; Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 197657419;
Name: stuff\12; Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 186634384;
Name: stuff\13; Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 178506642;
Name: stuff\14; Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 177567951;
Name: stuff\15; Description: stuff; Types: full custom; ExtraDiskSpaceRequired: 142204728;
Name: stuff\16; Description: stuff; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 228396445;
Name: stuff\17; Description: stuff; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 268203896;
Name: stuff\18; Description: stuff; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 247943674;
// Выбор Комплектов The Sims™ 4
//=============================================================
Name: kits;    Description: kits; Types: full custom; Check: CheckError and IsWin64; Flags: collapsed
Name: kits\1;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 59857107;
Name: kits\2;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 58355889;
Name: kits\3;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 76712729;
Name: kits\4;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 67484210;
Name: kits\5;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 68348665;
Name: kits\6;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 46405870;
Name: kits\7;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 73997467;
Name: kits\8;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 45749526;
Name: kits\9;  Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 63997467;
Name: kits\10; Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 58394091;
Name: kits\11; Description: kits; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 36894209;
// Экспресс-доставка The Sims™ 4
//=============================================================
Name: cont; Description: cont; Types: full custom; Check: CheckError and IsWin64; ExtraDiskSpaceRequired: 74282658;
; Flags: collapsed
#endif
// СЕКЦИЯ ДИРЕКТОРИИ УСТАНОВКИ
//=============================================================
[Dirs]
Name: {app}; Attribs: readonly; Check: CheckError
Name: {group}; Attribs: readonly; Check: CheckError and NoIcons
Name: {#SAVES}; Attribs: readonly; Check: CheckError
Name: {#SAVES}\{#Group}; Attribs: readonly; Check: CheckError and Legacy
Name: {#SAVES}\{#Group}_Backup; Attribs: readonly; Check: CheckError and Backup and Legacy
Name: {#SAVES}\{#Group64}; Attribs: readonly; Check: CheckError and IsWin64
Name: {#SAVES}\{#Group64}_Backup; Attribs: readonly; Check: CheckError and Backup and IsWin64
// СЕКЦИЯ ФАЙЛОВ УСТАНОВКИ
//=============================================================
[Files]
// Файлы формы установки и распаковки архивов
//=============================================================
Source: files\*; Flags: recursesubdirs dontcopy
Source: isdone\unpack\*; Attribs: hidden; Flags: dontcopy
#ifdef xtool
Source: isdone\unxtool\*; Attribs: hidden; Flags: dontcopy
#else
Source: isdone\unprsb\*; Attribs: hidden; Flags: dontcopy
#endif
// Файлы процента распаковки компонентов
//=============================================================
#ifdef records
#ifdef Components
Source: isdone\inf\data*.inf; Attribs: hidden; Flags: dontcopy
#endif
#endif
// СЕКЦИЯ ЯРЛЫКОВ НА РАБОЧИЙ СТОЛ И МЕНЮ ПУСК
//=============================================================
[Icons]
// Ярлыки на рабочий стол и Меню Быстрого запуска
//=============================================================
Name: {commondesktop}\{#Desktop}; Filename: {app}\{#AppEXE}; Parameters: --no_tutorial; Check: CheckError and Desktop and Legacy; Flags: createonlyiffileexists
Name: {commondesktop}\{#Desktop64}; Filename: {app}\{#AppEXE64}; Parameters: -alwaysoffline --no_tutorial; Check: CheckError and Desktop and IsWin64; Flags: createonlyiffileexists
Name: {commondesktop}\{#DesktopLang}; Filename: {#AppLang}; Check: CheckError and Desktop; Flags: createonlyiffileexists
// Ярлыки в Меню Пуск
//=============================================================
Name: {group}\{#DesktopLang}; Filename: {#AppLang}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#DesktopLang}; Filename: {#Support}\Language\{#ReadmeLang}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\Коды к игре {#NAME}; Filename: {#Support}\Cheats.chm; Languages: rus; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\How to cheat in {#NAME}; Filename: https://www.ea.com/games/the-sims/the-sims-4/pc/how-to-cheat/; Languages: not rus; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\Руководство игрока {#NAME}; Filename: {#Support}\PlayersGuide\PlayersGuide_RUS.pdf; Languages: rus; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\Player's Guide The Sims™ 4; Filename: {#Support}\PlayersGuide\PlayersGuide_ENG.pdf; Languages: not rus; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#ReadmeName}; Filename: {#Support}\readme\{#ReadmeText}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#LicenseName}; Filename: {#Support}\Game EULA\{#LicenseText}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#HelpName}; Filename: {#Support}\EA Help\{#HelpText}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Internet}; Filename: {#URL}; Check: CheckError and NoIcons
Name: {group}\{#Delete}; Filename: {app}\{#UninsEXE}; Parameters: /SILENT; Check: CheckError and NoIcons and not IsWin64
Name: {group}\{#Delete64}; Filename: {app}\{#UninsEXE}; Parameters: /SILENT; Check: CheckError and NoIcons and IsWin64
Name: {group}\{#Desktop}; Filename: {app}\{#AppEXE}; Parameters: --no_tutorial; Comment: {#PlayGame}; Check: CheckError and NoIcons and Legacy; Flags: createonlyiffileexists
Name: {group}\{#Desktop64}; Filename: {app}\{#AppEXE64}; Parameters: -alwaysoffline --no_tutorial; Comment: {#PlayGame64}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
// Ярлык в папку установки
//=============================================================
Name: {#Support}\{#DesktopLang}; Filename: {#Support}\Language\{#ReadmeLang}; Check: CheckError; Flags: createonlyiffileexists
Name: {#Support}\readme; Filename: {#Support}\readme\{#ReadmeText}; Check: CheckError; Flags: createonlyiffileexists
// Ярлыки Удаления Игр в Меню Пуск
//=============================================================
#ifdef Components
Name: {group}\{#Delete64} DLCs\{#Delete64} Get to Work; Filename: {#DLCs}\EP01\{#UninsEXE}; Components: addon\1; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Get Together; Filename: {#DLCs}\EP02\{#UninsEXE}; Components: addon\2; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} City Living; Filename: {#DLCs}\EP03\{#UninsEXE}; Components: addon\3; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Cats & Dogs; Filename: {#DLCs}\EP04\{#UninsEXE}; Components: addon\4; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Seasons; Filename: {#DLCs}\EP05\{#UninsEXE}; Components: addon\5; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Get Famous; Filename: {#DLCs}\EP06\{#UninsEXE}; Components: addon\6; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Island Living; Filename: {#DLCs}\EP07\{#UninsEXE}; Components: addon\7; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Discover University; Filename: {#DLCs}\EP08\{#UninsEXE}; Components: addon\8; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Eco Lifestyle; Filename: {#DLCs}\EP09\{#UninsEXE}; Components: addon\9; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Snowy Escape; Filename: {#DLCs}\EP10\{#UninsEXE}; Components: addon\10; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Cottage Living; Filename: {#DLCs}\EP11\{#UninsEXE}; Components: addon\11; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
//=============================================================
Name: {group}\{#Delete64} DLCs\{#Delete64} Great Outdoors; Filename: {#DLCs}\GP01\{#UninsEXE}; Components: pack\1; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Spa Day; Filename: {#DLCs}\GP02\{#UninsEXE}; Components: pack\2; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Dine Out; Filename: {#DLCs}\GP03\{#UninsEXE}; Components: pack\3; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Vampires; Filename: {#DLCs}\GP04\{#UninsEXE}; Components: pack\4; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Parenthood; Filename: {#DLCs}\GP05\{#UninsEXE}; Components: pack\5; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Jungle Adventure; Filename: {#DLCs}\GP06\{#UninsEXE}; Components: pack\6; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} StrangerVille; Filename: {#DLCs}\GP07\{#UninsEXE}; Components: pack\7; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Realm of Magic; Filename: {#DLCs}\GP08\{#UninsEXE}; Components: pack\8; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Star Wars™ Journey to Batuu; Filename: {#DLCs}\GP09\{#UninsEXE}; Components: pack\9; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Dream Home Decorator; Filename: {#DLCs}\GP10\{#UninsEXE}; Components: pack\10; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} My Wedding Stories; Filename: {#DLCs}\GP11\{#UninsEXE}; Components: pack\11; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
//=============================================================
Name: {group}\{#Delete64} DLCs\{#Delete64} Luxury Party Stuff; Filename: {#DLCs}\SP01\{#UninsEXE}; Components: stuff\1; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Perfect Patio Stuff; Filename: {#DLCs}\SP02\{#UninsEXE}; Components: stuff\2; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Cool Kitchen Stuff; Filename: {#DLCs}\SP03\{#UninsEXE}; Components: stuff\3; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Spooky Stuff; Filename: {#DLCs}\SP04\{#UninsEXE}; Components: stuff\4; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Movie Hangout Stuff; Filename: {#DLCs}\SP05\{#UninsEXE}; Components: stuff\5; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Romantic Garden Stuff; Filename: {#DLCs}\SP06\{#UninsEXE}; Components: stuff\6; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Kids Room Stuff; Filename: {#DLCs}\SP07\{#UninsEXE}; Components: stuff\7; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Backyard Stuff; Filename: {#DLCs}\SP08\{#UninsEXE}; Components: stuff\8; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Vintage Glamour Stuff; Filename: {#DLCs}\SP09\{#UninsEXE}; Components: stuff\9; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Bowling Night Stuff; Filename: {#DLCs}\SP10\{#UninsEXE}; Components: stuff\10; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Fitness Stuff; Filename: {#DLCs}\SP11\{#UninsEXE}; Components: stuff\11; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Toddler Stuff; Filename: {#DLCs}\SP12\{#UninsEXE}; Components: stuff\12; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Laundry Day Stuff; Filename: {#DLCs}\SP13\{#UninsEXE}; Components: stuff\13; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} My First Pet Stuff; Filename: {#DLCs}\SP14\{#UninsEXE}; Components: stuff\14; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Moschino Stuff; Filename: {#DLCs}\SP15\{#UninsEXE}; Components: stuff\15; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Tiny Living Stuff; Filename: {#DLCs}\SP16\{#UninsEXE}; Components: stuff\16; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Nifty Knitting Stuff; Filename: {#DLCs}\SP17\{#UninsEXE}; Components: stuff\17; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Paranormal Stuff; Filename: {#DLCs}\SP18\{#UninsEXE}; Components: stuff\18; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
//=============================================================
Name: {group}\{#Delete64} DLCs\{#Delete64} Throwback Fit Kit; Filename: {#DLCs}\SP20\{#UninsEXE}; Components: kits\1; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Country Kitchen Kit; Filename: {#DLCs}\SP21\{#UninsEXE}; Components: kits\2; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Bust the Dust Kit; Filename: {#DLCs}\SP22\{#UninsEXE}; Components: kits\3; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Courtyard Oasis Kit; Filename: {#DLCs}\SP23\{#UninsEXE}; Components: kits\4; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Fashion Street Kit; Filename: {#DLCs}\SP24\{#UninsEXE}; Components: kits\5; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Industrial Loft Kit; Filename: {#DLCs}\SP25\{#UninsEXE}; Components: kits\6; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Incheon Arrivals Kit; Filename: {#DLCs}\SP26\{#UninsEXE}; Components: kits\7; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Modern Menswear Kit; Filename: {#DLCs}\SP28\{#UninsEXE}; Components: kits\8; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Blooming Rooms Kit; Filename: {#DLCs}\SP29\{#UninsEXE}; Components: kits\9; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Carnival Streetwear Kit; Filename: {#DLCs}\SP30\{#UninsEXE}; Components: kits\10; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Décor to the Max Kit; Filename: {#DLCs}\SP31\{#UninsEXE}; Components: kits\11; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
#else
Name: {group}\{#Delete64} DLCs\{#Delete64} Get to Work; Filename: {#DLCs}\EP01\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Get Together; Filename: {#DLCs}\EP02\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} City Living; Filename: {#DLCs}\EP03\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Cats & Dogs; Filename: {#DLCs}\EP04\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Seasons; Filename: {#DLCs}\EP05\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Get Famous; Filename: {#DLCs}\EP06\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Island Living; Filename: {#DLCs}\EP07\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Discover University; Filename: {#DLCs}\EP08\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Eco Lifestyle; Filename: {#DLCs}\EP09\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Snowy Escape; Filename: {#DLCs}\EP10\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Cottage Living; Filename: {#DLCs}\EP11\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
//=============================================================
Name: {group}\{#Delete64} DLCs\{#Delete64} Great Outdoors; Filename: {#DLCs}\GP01\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Spa Day; Filename: {#DLCs}\GP02\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Dine Out; Filename: {#DLCs}\GP03\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Vampires; Filename: {#DLCs}\GP04\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Parenthood; Filename: {#DLCs}\GP05\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Jungle Adventure; Filename: {#DLCs}\GP06\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} StrangerVille; Filename: {#DLCs}\GP07\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Realm of Magic; Filename: {#DLCs}\GP08\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Star Wars™ Journey to Batuu; Filename: {#DLCs}\GP09\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Dream Home Decorator; Filename: {#DLCs}\GP10\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} My Wedding Stories; Filename: {#DLCs}\GP11\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
//=============================================================
Name: {group}\{#Delete64} DLCs\{#Delete64} Luxury Party Stuff; Filename: {#DLCs}\SP01\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Perfect Patio Stuff; Filename: {#DLCs}\SP02\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Cool Kitchen Stuff; Filename: {#DLCs}\SP03\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Spooky Stuff; Filename: {#DLCs}\SP04\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Movie Hangout Stuff; Filename: {#DLCs}\SP05\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Romantic Garden Stuff; Filename: {#DLCs}\SP06\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Kids Room Stuff; Filename: {#DLCs}\SP07\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Backyard Stuff; Filename: {#DLCs}\SP08\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Vintage Glamour Stuff; Filename: {#DLCs}\SP09\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Bowling Night Stuff; Filename: {#DLCs}\SP10\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Fitness Stuff; Filename: {#DLCs}\SP11\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Toddler Stuff; Filename: {#DLCs}\SP12\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Laundry Day Stuff; Filename: {#DLCs}\SP13\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} My First Pet Stuff; Filename: {#DLCs}\SP14\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Moschino Stuff; Filename: {#DLCs}\SP15\{#UninsEXE}; Check: CheckError and NoIcons; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Tiny Living Stuff; Filename: {#DLCs}\SP16\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Nifty Knitting Stuff; Filename: {#DLCs}\SP17\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Paranormal Stuff; Filename: {#DLCs}\SP18\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
//=============================================================
Name: {group}\{#Delete64} DLCs\{#Delete64} Throwback Fit Kit; Filename: {#DLCs}\SP20\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Country Kitchen Kit; Filename: {#DLCs}\SP21\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Bust the Dust Kit; Filename: {#DLCs}\SP22\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Courtyard Oasis Kit; Filename: {#DLCs}\SP23\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Fashion Street Kit; Filename: {#DLCs}\SP24\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Industrial Loft Kit; Filename: {#DLCs}\SP25\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Incheon Arrivals Kit; Filename: {#DLCs}\SP26\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Modern Menswear Kit; Filename: {#DLCs}\SP28\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Blooming Rooms Kit; Filename: {#DLCs}\SP29\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Carnival Streetwear Kit; Filename: {#DLCs}\SP30\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
Name: {group}\{#Delete64} DLCs\{#Delete64} Décor to the Max Kit; Filename: {#DLCs}\SP31\{#UninsEXE}; Check: CheckError and NoIcons and IsWin64; Flags: createonlyiffileexists
#endif
// СЕКЦИЯ ЯЗЫКОВ УСТАНОВКИ                    
//=============================================================
[Languages]
// Подключение файлов языков установки
//=============================================================
Name: che; MessagesFile: compiler:Languages\Chinese.isl
Name: cze; MessagesFile: compiler:Languages\Czech.isl
Name: dan; MessagesFile: compiler:Languages\Danish.isl
Name: deu; MessagesFile: compiler:Languages\German.isl
Name: eng; MessagesFile: compiler:Languages\English.isl
Name: fin; MessagesFile: compiler:Languages\Finnish.isl
Name: fre; MessagesFile: compiler:Languages\French.isl
Name: ita; MessagesFile: compiler:Languages\Italian.isl
Name: jap; MessagesFile: compiler:Languages\Japanese.isl
Name: kor; MessagesFile: compiler:Languages\Korean.isl
Name: ned; MessagesFile: compiler:Languages\Dutch.isl
Name: nor; MessagesFile: compiler:Languages\Norwegian.isl
Name: pol; MessagesFile: compiler:Languages\Polish.isl
Name: por; MessagesFile: compiler:Languages\Brazilian.isl
Name: rus; MessagesFile: compiler:Default.isl
Name: spa; MessagesFile: compiler:Languages\Spanish.isl
Name: swe; MessagesFile: compiler:Languages\Swedish.isl
//=============================================================
// СЕКЦИЯ ДОПОЛНИТЕЛЬНЫХ СООБЩЕНИЙ УСТАНОВКИ
//=============================================================
[CustomMessages]
// Китайский язык установки
//=============================================================
#ifdef Components
che_base                 = 《模拟人生™4》
che_addon                = 扩展包:
che_addon1               = 《模拟人生™4 工作》
che_addon2               = 《模拟人生™4 一起玩乐》
che_addon3               = 《模拟人生™4 生活在城市》
che_addon4               = 《模拟人生™4 貓和狗》
che_addon5               = 《模拟人生™4 季節》
che_addon6               = 《模拟人生™4 星夢起飛》
che_addon7               = 《模拟人生™4 島嶼生活》
che_addon8               = 《模拟人生™4 发现大学》
che_addon9               = 《模拟人生™4 生态生活方式》
che_addon10              = 《模拟人生™4 雪逃生》
che_addon11              = 《模拟人生™4 乡间生活》
che_pack                 = 玩具套装:
che_pack1                = 《模拟人生™4 工作》
che_pack2                = 《模拟人生™4 一起玩乐》
che_pack3                = 《模拟人生™4 餐厅》
che_pack4                = 《模拟人生™4 吸血鬼》
che_pack5                = 《模拟人生™4 父母》
che_pack6                = 《模拟人生™4 在丛林历险记》
che_pack7                = 《模拟人生™4 詭奇小鎮》
che_pack8                = 《模拟人生™4 魔法世界》
che_pack9                = 《模拟人生™4 星球大战™：巴图之旅》   
che_pack10               = 《模拟人生™4 夢幻居家改造王》   
che_pack11               = 《模拟人生™4 我的婚礼故事》
che_stuff                = 目录:
che_stuff1               = 《模拟人生™4 豪华派对》
che_stuff2               = 《模拟人生™4 天井》
che_stuff3               = 《模拟人生™4 很酷的厨房》
che_stuff4               = 《模拟人生™4 可怕的事情》
che_stuff5               = 《模拟人生™4 家庭影院》
che_stuff6               = 《模拟人生™4 浪漫的花园》
che_stuff7               = 《模拟人生™4 孩子们的房间》
che_stuff8               = 《模拟人生™4 在后院》
che_stuff9               = 《模拟人生™4 复古迷人ж》
che_stuff10              = 《模拟人生™4一个保龄球之夜》
che_stuff11              = 《模拟人生™4 健身》
che_stuff12              = 《模拟人生™4 宝宝的事情》
che_stuff13              = 《模拟人生™4 洗衣日》
che_stuff14              = 《模拟人生™4 我的第一只宠物》
che_stuff15              = 《模拟人生™4 Moschino》
che_stuff16              = 《模拟人生™4 紧凑的使用命》
che_stuff17              = 《模拟人生™4 漂亮的针织》
che_stuff18              = 《模拟人生™4 灵异追击组合》
che_kits                 = 套件包:
che_kits1                = 《模拟人生™4 复古风潮》
che_kits2                = 《模拟人生™4 乡村厨房》
che_kits3                = 《模拟人生™4 灰尘大作战》
che_kits4                = 《模拟人生™4 庭園綠洲》
che_kits5                = 《模拟人生™4 時尚街區》
che_kits6                = 《模拟人生™4 都會工業風》
che_kits7                = 《模拟人生™4 仁川直送》
che_kits8                = 《模拟人生™4 摩登男裝》
che_kits9                = 《模拟人生™4 郁郁葱葱的绿》
che_kits10               = 《模拟人生™4 繽紛嘉年華》
che_kits11               = 《模拟人生™4 極繁美學套件包》
che_cont                 = 特快专递服务
che_ComponentsTitle      =選擇要安裝的遊戲
che_ComponentsLabel      =選擇要安裝的遊戲。%n取消選中不需要安裝的遊戲的複選框。
che_ComponentsLabel1     =%n为更新选择以下游戏:
che_Message13            =没有游戏选择安装
che_Message14            =%n你还没有选择任何游戏！%n%n 你必须选择一个游戏继续安装！
che_Message15            =%n单击"是"以选择要安装的游戏
#endif
che_About                =《模拟人生™4》%n《模拟人生™4假日慶祝包》%n《模拟人生™4》數位配樂%n《地精在行动》数字内容
che_AboutLE              =《模拟人生™4 传统版》%n《模拟人生™4假日慶祝包》%n《模拟人生™4》數位配樂。
che_AboutAdd             =演员：%n%n《模拟人生™4工作》%n《模拟人生™4一起玩乐》%n《模拟人生™4生活在城市》%n《模拟人生™4貓和狗》%n《模拟人生™4季節》%n《模拟人生™4星夢起飛》%n《模拟人生™4島嶼生活》%n《模拟人生™4发现大学》%n《模拟人生™4生态生活方式》%n《模拟人生™4雪逃生》%n《模拟人生™4乡间生活》
che_AboutAddle           =演员：%n%n《模拟人生™4工作》%n《模拟人生™4一起玩乐》%n《模拟人生™4生活在城市》%n《模拟人生™4貓和狗》%n《模拟人生™4季節》%n《模拟人生™4星夢起飛》%n《模拟人生™4島嶼生活》
che_AboutPack            =玩具套装:%n%n《模拟人生™4徒步旅行》%n《模拟人生™4天Spa》%n《模拟人生™4餐厅》%n《模拟人生™4吸血鬼》%n《模拟人生™4父母》%n《模拟人生™4在丛林历险记》%n《模拟人生™4詭奇小鎮》%n《模拟人生™4魔法世界》%n《模拟人生™4星球大战™：巴图之旅》%n《模拟人生™4夢幻居家改造王》%n《模拟人生™4 我的婚礼故事》
che_AboutPackle          =玩具套装:%n%n《模拟人生™4徒步旅行》%n《模拟人生™4天Spa》%n《模拟人生™4餐厅》%n《模拟人生™4吸血鬼》%n《模拟人生™4父母》%n《模拟人生™4在丛林历险记》%n《模拟人生™4詭奇小鎮》%n《模拟人生™4魔法世界》
che_AboutStuf            =目录：%n%n《模拟人生™4豪华派对》%n《模拟人生™4天井》%n《模拟人生™4很酷的厨房》%n《模拟人生™4可怕的事情》%n《模拟人生™4家庭影院》%n《模拟人生™4浪漫的花园》%n《模拟人生™4孩子们的房间》%n《模拟人生™4在后院》%n《模拟人生™4复古迷人ж》%n《模拟人生™4一个保龄球之夜》%n《模拟人生™4健身》%n《模拟人生™4宝宝的事情》%n《模拟人生™4洗衣日》%n《模拟人生™4我的第一只宠物》%n《模拟人生™4Moschino》%n《模拟人生™4溫馨小居》組合》%n《模拟人生™4漂亮的针织》%n《模拟人生™4灵异追击组合》
che_AboutStufle          =目录：%n%n《模拟人生™4豪华派对》%n《模拟人生™4天井》%n《模拟人生™4很酷的厨房》%n《模拟人生™4可怕的事情》%n《模拟人生™4家庭影院》%n《模拟人生™4浪漫的花园》%n《模拟人生™4孩子们的房间》%n《模拟人生™4在后院》%n《模拟人生™4复古迷人ж》%n《模拟人生™4一个保龄球之夜》%n《模拟人生™4健身》%n《模拟人生™4宝宝的事情》%n《模拟人生™4洗衣日》%n《模拟人生™4我的第一只宠物》%n《模拟人生™4Moschino》
che_AboutKits            =套件包:%n%n《模拟人生™4复古风潮》%n《模拟人生™4乡村厨房套件包》%n《模拟人生™4灰尘大作战》%n《模拟人生™4庭園綠洲套件包》%n《模拟人生™4都會工業風套件包》%n《模拟人生™4 仁川直送》%n《模拟人生™4 時尚街區》%n《模拟人生™4 摩登男裝套件包》%n《模拟人生™4 郁郁葱葱的绿》%n《模拟人生™4 繽紛嘉年華》%n《模拟人生™4 極繁美學套件包》
che_AboutCont            =特快专递服务
che_AboutCopy            ={#Copyright}%n%n从游戏的32位版本中删除文件！%n%n{#Autor}
che_AboutCopyle          ={#Copyright}%n%n删除文件的64位版本的游戏！%n%n{#Autor}
che_AboutBuy             =如果你喜欢这个游戏的，买它！
che_AboutTnk             =感谢您对该项目的支持
che_AboutSetup           =关于安装程序
che_AllEllipsedTime      =安裝時間:
che_AllProgress          =安裝進度：
che_BrowseDialogLabel    =從列表中選擇一個文件夾，%n然後單擊《是》
che_ButtonBack		       =< 回去吧
che_ButtonBrowse         =概觀 ...
che_ButtonCancel         =取消
che_ButtonFinish         =退出安裝
che_ButtonInstall	       =安裝
che_ButtonNext           =下一步 >
che_ButtonNo             =否
che_ButtonWizardBrowse   =瀏覽文件夾
che_ButtonYes            =是
che_CancelTitle          =安裝錯誤
che_Clean                =點擊《HDD》圖標啟動磁盤清理
che_Clean1               =在安裝之前，必須卸載遊戲！
che_Close                =關閉
che_Cancel               =單擊《取消》退出安裝。
che_Delete               =刪除
che_DeleteName           =卸载模拟人生™4
che_DeleteNameLE         =卸载模拟人生™4 版遗产
che_Desktop              =圖標《模拟人生™4》在桌面上
che_DesktopLang          =模拟人生™4语言转换器
che_DesktopName          =模拟人生™4
che_DesktopLEName        =模拟人生™4經典版
che_DirDesc              =安裝文件夾
che_DirectX              =安裝DirectX
che_DirectX1             =的DirectX：安裝
che_Display              =模拟人生4:珍藏版
che_EllipsedTime         =經過時間:
che_ExitSetupTitle       =退出安裝《模拟人生™4》
che_ExitSetupMessage     =安裝《模拟人生™4》不完整！%n%n如果退出，《模拟人生™4》將不會安裝。%n您可以通過後運行安裝程序完成安裝。%n退出安裝程序《模拟人生™4》？
che_FinishedLabel        =《模拟人生™4》已成功安裝在您的計算機上
che_FinishedLabel1       =你可以跑《模拟人生™4》现在或以后%n通过选择适当的快捷方式在开始菜单或在桌面上。
che_FinishedLabel2       =%n點擊《退出安裝》，要退出安裝程序
che_FinishedTitle        =末端配件《模拟人生™4》
che_FreeSpace            =可用磁盤空間：
che_Gb                   = Gb
che_GroupLE              =The Sims 4 經典版
che_Hour                 = 小時
che_Internet             =模拟人生™4：在线
che_Lang                 =中文 （繁體）
che_Language             =選擇遊戲界面的語言:
che_License              =模拟人生4使用者授權協議 
che_LocaleLEName         ={#NAME} 經典版
che_Mb                   = Mb
che_Message              =發現運行遊戲《模拟人生™4》！
che_Message1             =點擊《是》完成比賽，並繼續安裝%n或者《否》取消安裝並從遊戲中退出正確.
che_Message2             =%n要繼續安裝，您必須關閉遊戲!%n所有未保存遊戲數據可能丟失!
che_Message3             =%n點擊《是》退出程序，或《否》來繼續安裝。
che_Message4             =安裝在系統文件夾！
che_Message5             =安裝遊戲到Windows文件夾！%n%n這是不可接受的建立《模拟人生™4》系統文件夾！%n請重新輸入.
che_Message6             =%n點擊《是》來改變安裝路徑
che_Message7             =發現運行安裝《模拟人生™4》
che_Message8             =發現安裝的運行實例《模拟人生™4》%n%n不可接受的運行安裝的多個實例！%n要繼續安裝，必須關閉正在運行的進程.
che_Message9             =%n點擊《是》退出安裝
che_Message10            =发现了一个正在运行的游戏
che_Message11            =%n%n如果您继续安装，游戏将自动关闭，%n游戏数据可能会丢失！
che_Message12            =单击《下一步》继续或《取消》退出安装
che_Mhz                  = 兆赫
che_Min                  = 分
che_Msgbox               =發現安裝遊戲%n《模拟人生™4》
che_Msgbox1              =%n點擊《播放》即可開始遊戲。%n《刪除》退出程序刪除，然後全新安裝的遊戲。%n%n%n%n%n%n%n%n《下一步》更新遊戲
che_Msgbox2              =遊戲數據丟失!%n%n點擊《刪除》以刪除遊戲%n%n%n%n%n%n%n%n点击《下一步》，嘗試將遊戲安裝到檢測到的註冊表文件夾
che_Msgbox3              =您有當前版本的遊戲%n《模拟人生™4》 v。
che_NeedSpace            =安装所需:
che_NeedUpdate           =更新所需:
che_NextDisk             =失踪盘：
che_NextDisk1            =%n请插入磁盘，并等待其初始化了。
che_NextLbl              =點擊《下一步》繼續
che_NoProgramGroupCheck2 =不要在《開始菜單》創建一個文件夾
che_Play                 =開始遊戲《模拟人生™4》
che_PlayName             =玩模拟人生™4
che_PlayLEName           =玩模拟人生™4传统版
che_Readme               =讀我
che_Redist               =附加軟件：
che_RedistDirectX        =安裝的DirectX ...
che_RedistProgress       =是安裝額外的軟件
che_RedistTitle          =安裝附加軟件
che_RedistVisual10       =更新VISUALC++ 2010 ...
che_RedistVisual13       =安裝VISUALC++ 2013 ...
che_RedistVisual19       =安裝VISUALC++ 2015-2019 ...
che_RedistWait           =请等待，直到终点！
che_RemainingTime        =左：
che_Remains              =剩餘時間：
che_IconsTitle           =准备启动游戏
che_ReqLabel             =安装游戏快捷方式和注册表项。..
che_Screenshots          =遊戲截圖   
che_Sec                  = 小號
che_SelectDirLabel       =你需要清除或選擇另一個驅動器！
che_SelectDirLabel1      =游戏的安装文件夹《模拟人生™4》：
che_SelectDirLabel2      =對於升級沒有足夠的空間《模拟人生™4》
che_SelectDirLabel3      =程序将更新游戏《模拟人生™4》：
che_SelectStartMenu      =程序将更新《开始》菜单中的快捷方式：
che_SelectStartMenuLbl3  =该文件夹的快捷方式在《开始菜单》：
che_SelectTasksEditLabel =%n选择件你想要的安装和单击《安装》
che_SelectTasksLabel     =選擇將安裝《模拟人生™4》之後執行的額外任務
che_SetupAborted         =安裝中止 ...
che_SetupAppTitle        =安裝《模拟人生™4》
che_SetupAppTitle1       =更新《模拟人生™4》
che_Start                =播放
che_StatusRollback       =撤消更改 ...
che_Support              =技術支持
che_Taskbar              =任務欄中的《模拟人生™4》圖標
che_TasksName            =其他任務
che_Tb                   = Tb
che_Thanks               =感谢项目%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprograger®%nRazor12911®%nSouth.Tver®%n%n* * *%n特别感谢%n数据压缩社区的所有朋友%nkrinkels.org
che_TotalSpace           =硬盤大小：
che_UninstalMsg          =點擊《刪除》，以繼續刪除，或《取消》退出卸載程序。
che_UninstalMsg1         = 刪除《模拟人生™4》
che_UninstalMsg2         = 刪除《模拟人生™4》+保存遊戲
che_UninstalMsg3         = 刪除《模拟人生™4》+遊戲存檔備份
che_UninstallStatusLabel =選擇移除《模拟人生™4》的方法
che_UninstallStatusLbl   =請等待拆除《模拟人生™4》
che_Videos               =已錄製的影片
che_VisualC              =安裝VISUALC++ 2013
che_VisualC1             =VISUALC++ 2013：安裝
che_VisualC19            =安裝VISUALC++ 2015-2019
che_VisualC119           =VISUALC++ 2015-2019：安裝
che_VisualCU             =更新的VISUALC++ 2010
che_VisualCU1            =VISUALC++ 2010sp1：更新
che_WizardUninstalling   =刪除狀態
che_WelcomeLabel1        =歡迎使用安裝程序《模拟人生™4》
che_WelcomeLabel3        =在安裝之前，建議禁用防病毒軟件，%n並關閉所有正在運行的應用程序！
che_WelcomeTitle         =歡迎您！
che_Backup               =創建保存遊戲的副本
che_Backup1              = 複製：
che_Backup2              = 來自：
che_Backup3              =複製狀態：
#ifdef System
che_DeviceDriver         =設備驅動程序未找到
che_NextLbl1             =繼續之前有必要思考！ 遊戲的穩定性無法保證！
che_NextLbl2             =安裝是不可能的！點擊《取消》退出安裝！
che_NextLbl3             =您的系统不再受支持！
che_NotSystem            =無法確定系統的版本！
che_OperationSystem      =操作系统
che_Processor            =處理器
che_RAM                  =內存細節
che_RAM1                 =RAM:
che_RAM2                 =可用：
che_RAM3                 =忙碌：
che_RAM4                 =交換文件：
che_Req2                 =您的計算機的所有部件滿足遊戲的最低要求
che_Req3                 =! 警告 !%n計算機不能滿足遊戲的最低要求！
che_Req4                 =! 系統錯誤 !%n也許安裝的系統不是Windows操作系統！
che_SoundCard            =聲卡
che_System               =系統要求
che_VideoCard            =視頻適配器
#endif
// Чешский язык установки
//=============================================================
#ifdef Components
cze_base                 = {#NAME}
cze_addon                = Expanzní Balíčky:
cze_addon1               = {#NAME}: Hurá do práce 
cze_addon2               = {#NAME}: Společná zábava 
cze_addon3               = {#NAME}: Život ve městě 
cze_addon4               = {#NAME}: Kočky a psi 
cze_addon5               = {#NAME}: Roční období 
cze_addon6               = {#NAME}: Cesta ke slávě 
cze_addon7               = {#NAME}: Život na ostrově 
cze_addon8               = {#NAME}: Objevte univerzitu 
cze_addon9               = {#NAME}: Ekologický Životní Styl
cze_addon10              = {#NAME}: Snowy Escape
cze_addon11              = {#NAME}: Život na venkově
cze_pack                 = Herní balíček:
cze_pack1                = {#NAME}: Únik do přírody 
cze_pack2                = {#NAME}: Návštěva v lázních 
cze_pack3                = {#NAME}: Jdeme se najíst 
cze_pack4                = {#NAME}: Upíři 
cze_pack5                = {#NAME}: Rodičovství 
cze_pack6                = {#NAME}: Dobrodružství v džungli 
cze_pack7                = {#NAME}: StrangerVille 
cze_pack8                = {#NAME}: Svět magie 
cze_pack9                = {#NAME} Star Wars™: Journey to Batuu 
cze_pack10               = {#NAME} Interiér snů  
cze_pack11               = {#NAME} Moje Svatební Příběhy
cze_stuff                = Kolekce:
cze_stuff1               = {#NAME}: Přepychový večírek 
cze_stuff2               = {#NAME}: Perfektní patio 
cze_stuff3               = {#NAME}: Báječná kuchyně 
cze_stuff4               = {#NAME}: Strašidelné věcičky 
cze_stuff5               = {#NAME}: Domácí kino 
cze_stuff6               = {#NAME}: Romantická zahrada 
cze_stuff7               = {#NAME}: Dětský pokoj 
cze_stuff8               = {#NAME}: Zahrada za domem 
cze_stuff9               = {#NAME}: Staré časy 
cze_stuff10              = {#NAME}: Bowlingový večer 
cze_stuff11              = {#NAME}: Fitness 
cze_stuff12              = {#NAME}: Batolata 
cze_stuff13              = {#NAME}: Den umývání 
cze_stuff14              = {#NAME}: Můj první mazlíček
cze_stuff15              = {#NAME}: Moschino
cze_stuff16              = {#NAME}: kompaktní život
cze_stuff17              = {#NAME}: Šikovné Pletení
cze_stuff18              = {#NAME}: Paranormal
cze_kits                 = Výbava:
cze_kits1                = {#NAME}: Retro styl
cze_kits2                = {#NAME}: Venkovská kuchyně
cze_kits3                = {#NAME}: Velký úklid
cze_kits4                = {#NAME}: Nádvoří Oázy
cze_kits5                = {#NAME}: Pouliční móda
cze_kits6                = {#NAME}: Industrilofts
cze_kits7                = {#NAME}: Přilétavá móda
cze_kits8                = {#NAME}: Moderní pánská móda
cze_kits9                = {#NAME}: Svěží zelená
cze_kits10               = {#NAME}: Styl karnevalu
cze_kits11               = {#NAME}: Čím víc, tím líp
cze_cont                 = Expresní doručení
cze_ComponentsTitle      =Výběr her k instalaci
cze_ComponentsLabel      =Vyberte hry, které chcete nainstalovat.%nZrušte zaškrtnutí políček u her, které nemusíte instalovat.
cze_ComponentsLabel1     =%nPro aktualizaci jsou vybrány následující hry:
cze_Message13            =Nebyly vybrány žádné hry k instalaci
cze_Message14            =%nNevybrali jste žádnou hru!%n%nChcete-li pokračovat v instalaci, musíte vybrat libovolnou hru!
cze_Message15            =%nKlepnutím na tlačítko «Ano» vyberte hry, které chcete nainstalovat
#endif
cze_About                =«{#NAME}»%n«{#NAME} Balíček Vánoční svátky»%nDigitální soundtrack «The Sims 4»%nDigitální obsah «Trpasličí jízda»
cze_AboutLE              =«{#NAME} Starší vydání»%n«{#NAME} Balíček Vánoční svátky»%nDigitální soundtrack «The Sims 4»
cze_AboutAdd             =Přírůstky:%n%n«{#NAME} Hurá do práce»%n«{#NAME} Společná zábava»%n«{#NAME} Život ve městě»%n«{#NAME} Kočky a psi»%n«{#NAME} Roční období»%n«{#NAME} Cesta ke slávě»%n«{#NAME} Život na ostrově»%n«{#NAME} Objevte univerzitu»%n«{#NAME} Ekologický Životní Styl»%n«{#NAME} Snowy Escape»%n«{#NAME} Život na venkově»
cze_AboutAddle           =Přírůstky:%n%n«{#NAME} Hurá do práce»%n«{#NAME} Společná zábava»%n«{#NAME} Život ve městě»%n«{#NAME} Kočky a psi»%n«{#NAME} Roční období»%n«{#NAME} Cesta ke slávě»%n«{#NAME} Život na ostrově»
cze_AboutPack            =Hrací sady:%n%n«{#NAME} Únik do přírody»%n«{#NAME} Návštěva v lázních»%n«{#NAME} Jdeme se najíst»%n«{#NAME} Upíři»%n«{#NAME} Rodičovství»%n«{#NAME} Dobrodružství v džungli»%n«{#NAME} StrangerVille»%n«{#NAME} Svět magie»%n«{#NAME} Star Wars™: Journey to Batuu»%n«{#NAME} Interiér snů»%n«{#NAME} Moje Svatební Příběhy»
cze_AboutPackle          =Hrací sady:%n%n«{#NAME} Únik do přírody»%n«{#NAME} Návštěva v lázních»%n«{#NAME} Jdeme se najíst»%n«{#NAME} Upíři»%n«{#NAME} Rodičovství»%n«{#NAME} Dobrodružství v džungli»%n«{#NAME} StrangerVille»%n«{#NAME} Svět magie»
cze_AboutStuf            =Kolekce:%n%n«{#NAME} Přepychový večírek»%n«{#NAME} Perfektní patio»%n«{#NAME} Báječná kuchyně»%n«{#NAME} Strašidelné věcičky»%n«{#NAME} Domácí kino»%n«{#NAME} Romantická zahrada»%n«{#NAME} Dětský pokoj»%n«{#NAME} Zahrada za domem»%n«{#NAME} Staré časy»%n«{#NAME} Bowlingový večer»%n«{#NAME} Fitness»%n«{#NAME} Batolata»%n«{#NAME} Den umývání»%n«{#NAME} Můj první mazlíček»%n«{#NAME} Moshino»%n«{#NAME} kompaktní život»%n«{#NAME} Šikovné Pletení»%n«{#NAME} Paranormal»
cze_AboutStufle          =Kolekce:%n%n«{#NAME} Přepychový večírek»%n«{#NAME} Perfektní patio»%n«{#NAME} Báječná kuchyně»%n«{#NAME} Strašidelné věcičky»%n«{#NAME} Domácí kino»%n«{#NAME} Romantická zahrada»%n«{#NAME} Dětský pokoj»%n«{#NAME} Zahrada za domem»%n«{#NAME} Staré časy»%n«{#NAME} Bowlingový večer»%n«{#NAME} Fitness»%n«{#NAME} Batolata»%n«{#NAME} Den umývání»%n«{#NAME} Můj první mazlíček»%n«{#NAME} Moshino»
cze_AboutKits            =Výbava:%n%n«{#NAME} Retro styl»%n«{#NAME} Venkovská kuchyně»%n«{#NAME} Velký úklid»%n«{#NAME} Nádvoří Oázy»%n«{#NAME} Industrilofts»%n«{#NAME} Přilétavá móda»%n«{#NAME} Pouliční móda»%n«{#NAME} Moderní pánská móda»%n«{#NAME} Svěží zelená»%n«{#NAME} Styl karnevalu»%n«{#NAME} Čím víc, tím líp»
cze_AboutCont            =Expresní doručení
cze_AboutCopy            ={#Copyright}%n%nOdstraněny soubory 32-bitové verze hry!%n%n{#Autor}
cze_AboutCopyle          ={#Copyright}%n%nOdstraněny soubory 64-bitové verze hry!%n%n{#Autor}
cze_AboutBuy             =Pokud se Vám líbil tuto hru, KUPTE si JI!
cze_AboutTnk             =Děkujeme za podporu projektu
cze_AboutSetup           =O instalačním programu
cze_AllEllipsedTime      =Čas instalace:
cze_AllProgress          =Postup instalace:
cze_BrowseDialogLabel    =Vyberte složku ze seznamu%na klikněte na «Ano»
cze_ButtonBack					 =< Zpět
cze_ButtonBrowse         =Zkontrolovat ...
cze_ButtonCancel         =Zrušit
cze_ButtonFinish         =Dokončit
cze_ButtonInstall				 =Instalovat
cze_ButtonNext           =Další >
cze_ButtonNo             =Ne
cze_ButtonWizardBrowse   =Procházet složky
cze_ButtonYes            =Ano
cze_CancelTitle          =Chyba při instalaci
cze_Clean                =Klikněte na ikonu «HDD» pro spuštění čištění disku
cze_Clean1               =Před instalací je potřeba odinstalovat hru!
cze_Close                =Zavřít
cze_Delete               =Smazat
cze_Desktop              =Ikona «{#NAME}» na ploše
cze_DesktopLang          ={#NAME} Jazyk Měnič
cze_DirDesc              =Instalační složky
cze_DirectX              =Nainstalujte rozhraní DirectX
cze_DirectX1             =DirectX: Nainstalováno
cze_EllipsedTime         =Čas uběhl:
cze_ExitSetupTitle       =Ukončení instalačního programu «{#NAME}»
cze_ExitSetupMessage     =Instalace «{#NAME}» je neúplná!%nPokud ukončíte instalaci, nebude «{#NAME}» nainstalováno!%n%nUkončete instalační program «{#NAME}»?
cze_FinishedLabel        =«{#NAME}» byla úspěšně nainstalována v počítači
cze_FinishedLabel1       =Můžete spustit «{#NAME}» nyní nebo později výběrem%npříslušné zkratky v nabídce «Start» nebo na pracovní ploše.
cze_FinishedLabel2       =Kliknutím na tlačítko «Dokončit»%nukončete instalační program
cze_FinishedTitle        =Dokončení instalace programu «{#NAME}»
cze_FreeSpace            =Dostupné místo na disku:
cze_Gb                   = Gb
cze_GroupLE              =The Sims 4 Tradiční edice
cze_Hour                 = hodinu
cze_Lang                 =Český
cze_Language             =Zvolte jazyk rozhraní pro hru:
cze_License              =The Sims 4 Licenční smlouva s koncovým uživatelem 
cze_LocaleLEName         ={#NAME} Tradiční edice
cze_Mb                   = Mb
cze_Message1             =Chcete-li pokračovat v instalaci, klepněte na «Ano»%npro ukončení instalačního programu nebo «Ne».
cze_Message2             =Instalace do složky systému!
cze_Message3             =%n%nNení přípustné instalovat «{#NAME}» do složky Systémy!%nZkuste to prosím znovu.
cze_Message4             =%nKliknutím na tlačítko «Ano» změníte instalační cestu
cze_Message5             =Byla zjištěna spuštěná instalace «{#NAME}»
cze_Message6             =Byla zjištěna spuštěná instance instalace «{#NAME}»%n%nJe nepřijatelné spouštět více instancí instalace!%nChcete-li pokračovat v instalaci, musíte ukončit spuštěný proces.
cze_Message7             =%nKlepnutím na tlačítko «Ano» ukončíte instalaci
cze_Message8             =Váš počítač je v nebezpečí!
cze_Message9             =Instalační soubor prošel změnou!%n%nSoubor nemusí být úplně stažen, nebo může být poškozen!%nJe třeba aktualizovat hash souborů v torrentu klienta,%nnebo stahujte hru z jiného zdroje!
cze_Message10            =Objevena běžící hra
cze_Message11            =%n%nPokud Budete pokračovat v instalaci,%nhra se automaticky zavře a herní data mohou být ztracena!
cze_Message12            =Klepněte na tlačítko «Další» pro pokračování,%nnebo «Zrušit» pro ukončení instalace
cze_Mhz                  = MHz
cze_Min                  = doly
cze_Msgbox               =Našel nainstalovanou hru%n«{#NAME}»
cze_Msgbox1              =Klepnutím na tlačítko Přehrát» spustíte hru.%n«Smazat» ukončí program pro odstranění%na následnou čistou instalaci hry.%n%n%n%n%n%n%n%nKlikněte na tlačítko «Další» pro aktualizaci hry
cze_Msgbox2              =Herní data jsou ztracena!%n%nKliknutím na tlačítko «Smazat» hru odstraníte.%n%n%n%n%n%n%n«Další» krokem je instalace hry%ndo zjištěné složky
cze_Msgbox3              =Máte nejnovější verzi hry%n«{#NAME}» v.
cze_NeedSpace            =Vyžaduje instalaci:
cze_NeedUpdate           =Nutná aktualizace:
cze_NextLbl              =Klepnutím na tlačítko «Další» pokračujte.
cze_NoProgramGroupCheck2 =Nevytvářejte složku v nabídce «Start»
cze_Play                 =Spusťte hru «{#NAME}»
cze_PlayName             =Hrát {#NAME}
cze_PlayLEName           =Hrát {#NAME} Starší vydání
cze_Readme               =Přečtěte
cze_Redist               =Další software:
cze_RedistDirectX        =Instalace rozhraní DirectX ...
cze_RedistProgress       =K dispozici je instalace dalšího softwaru
cze_RedistTitle          =Instalace dalšího softwaru
cze_RedistVisual10       =Aktualizace aplikace VisualC ++ 2010 ...
cze_RedistVisual13       =Instalace aplikace VisualC ++ 2013 ...
cze_RedistVisual19       =Instalace aplikace VisualC ++ 2015-2019 ...
cze_RedistWait           =Počkejte až do konce!
cze_RemainingTime        =Zbývající:
cze_Remains              =Zbývající čas:
cze_IconsTitle           =Příprava na zahájení hry
cze_ReqLabel             =Instalace herních zkratek a položek registru...
cze_Screenshots          =Obrázky
cze_Sec                  = sek
cze_SelectDirLabel       =Potřebujete vyčistit nebo vybrat jinou jednotku!
cze_SelectDirLabel1      =Instalační složka hry «{#NAME}»:
cze_SelectDirLabel2      =Není dostatek místa pro aktualizaci položky «{#NAME}»
cze_SelectDirLabel3      =Program aktualizuje hru «{#NAME}»:
cze_SelectStartMenu      =Program aktualizuje zkratky v nabídce «Start»:
cze_SelectStartMenuLbl3  =Složka se zkratkami v nabídce «Start»:
cze_SelectTasksEditLabel =Zrušte zaškrtnutí položek, které chcete nainstalovat%nnení nutné, klikněte na tlačítko «Instalovat»
cze_SelectTasksLabel     =Vyberte další úkoly, které chcete provést po instalaci «{#NAME}»
cze_SetupAborted         =Instalace «{#NAME}» byla přerušena!%n%nVyřešíte problém a pokuste se znovu spustit instalaci ...
cze_SetupAppTitle        =Instalace «{#NAME}»
cze_SetupAppTitle1       =Aktualizace «{#NAME}»
cze_Start                =Přehrát
cze_StatusRollback       =Změny vrácení.%nSmazání instalačních souborů ...
cze_Support              =Technická podpora
cze_Taskbar              =Ikona «{#NAME}» na hlavním panelu
cze_TasksName            =Další úkoly
cze_Tb                   = Tb
cze_Thanks               =díky za projekt%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nzvláštní poděkování%nvšichni přátelé komunity komprese dat%nkrinkels.org
cze_TotalSpace           =Velikost pevného disku:
cze_UninstalMsg          =Kliknutím na tlačítko «Smazat» pokračujte v mazání,%nnebo «Storno» ukončete program odinstalace.
cze_UninstalMsg1         = Odstranit «{#NAME}»
cze_UninstalMsg2         = Odstranit «{#NAME}» + smazat hry
cze_UninstalMsg3         = Odstranit «{#NAME}» + smazat hry + zálohování
cze_UninstallStatusLabel =Vyberte způsob mazání «{#NAME}»
cze_UninstallStatusLbl   =Čekejte, prosím, odstranění položky «{#NAME}»
cze_Videos               =Nahraná videa
cze_VisualC              =Nainstalujte aplikaci VisualC++ 2013
cze_VisualC1             =VisualC++ 2013: Nainstalováno
cze_VisualC19            =Nainstalujte aplikaci VisualC++ 2015-2019
cze_VisualC119           =VisualC++ 2015-2019: Nainstalováno
cze_VisualCU             =Aktualizovat VisualC++ 2010
cze_VisualCU1            =VisualC++ 2010sp1: Aktualizováno
cze_Cancel               =Klepnutím na tlačítko «Storno» ukončete instalaci.
cze_NextDisk             =Chybí jednotka:
cze_NextDisk1            =%nVložte disk a počkejte na jeho inicializaci!
cze_WelcomeLabel1        =Vítejte v instalačním programu%n«{#NAME}»
cze_WelcomeLabel3        =Před instalací,%ndoporučujeme zakázat antivirový program%na zavřete všechny běžící aplikace!
cze_WelcomeTitle         =Vítejte!
cze_WizardUninstalling   =Stav mazání
cze_Backup               =Vytvořte kopii hry pro ukládání
cze_Backup1              = Kopírováno:
cze_Backup2              = od:
cze_Backup3              =Stav kopírování:
#ifdef System
cze_DeviceDriver         =Ovladač zařízení nebyl nalezen
cze_NextLbl1             =Přemýšlejte, než budete pokračovat! Stabilita hry není zaručena!
cze_NextLbl2             =Instalace není možná! Kliknutím na tlačítko «Zrušit» ukončete instalaci!
cze_NextLbl3             =Váš systém již není podporován!
cze_NotSystem            =NELZE URČIT VERZE SYSTÉMU!
cze_OperationSystem      =Systém
cze_Processor            =Procesor
cze_RAM                  =Paměť
cze_RAM1                 =RAM:
cze_RAM2                 =volně:
cze_RAM3                 =obsazeno:
cze_RAM4                 =Vyměnit soubor:
cze_Req2                 =Všechny součásti vašeho počítače%nsplnit minimální požadavky hry
cze_Req3                 =! POZOR !%nPočítač nesplňuje minimální požadavky hry!
cze_Req4                 =! SYSTÉMOVÁ CHYBA !%nMožná, že nainstalovaný systém není Windows!
cze_SoundCard            =Zvuková karta
cze_System               =Systémové požadavky
cze_VideoCard            =Video adaptér
#endif
// Датский язык установки
//=============================================================
#ifdef Components
dan_base                 = {#NAME}
dan_addon                = Udvidelsespakke:
dan_addon1               = {#NAME}: Arbejdstid 
dan_addon2               = {#NAME}: Nye venner 
dan_addon3               = {#NAME}: Byliv 
dan_addon4               = {#NAME}: Katte og hunde 
dan_addon5               = {#NAME}: Sæsoner 
dan_addon6               = {#NAME}: Bliv berømt 
dan_addon7               = {#NAME}: Tropeliv 
dan_addon8               = {#NAME}: Oplev universitetet 
dan_addon9               = {#NAME}: Grønt er skønt
dan_addon10              = {#NAME}: Snedækket Flugt
dan_addon11              = {#NAME}: Hytteliv
dan_pack                 = Afspilning af sæt:
dan_pack1                = {#NAME}: Outdoor-Leben 
dan_pack2                = {#NAME}: Spa-Dag 
dan_pack3                = {#NAME}: Ud at spise 
dan_pack4                = {#NAME}: Vampyrer 
dan_pack5                = {#NAME}: Forældre 
dan_pack6                = {#NAME}: Eventyr i junglen 
dan_pack7                = {#NAME}: StrangerVille 
dan_pack8                = {#NAME}: Magiens rige 
dan_pack9                = {#NAME}: Star Wars™: Rejsen til Batuu 
dan_pack10               = {#NAME}: Drømmehjem 
dan_pack11               = {#NAME}: Mine Bryllupshistorier
dan_stuff                = Kataloger:
dan_stuff1               = {#NAME}: Luksusfest 
dan_stuff2               = {#NAME}: Tjekket terrasse 
dan_stuff3               = {#NAME}: Cool køkkenindhold 
dan_stuff4               = {#NAME}: Hjemsøgt indhold 
dan_stuff5               = {#NAME}: Filmelskerindhold 
dan_stuff6               = {#NAME}: Romantisk haveindhold 
dan_stuff7               = {#NAME}: Børneværelse-indhold 
dan_stuff8               = {#NAME}: Baghaveindhold 
dan_stuff9               = {#NAME}: Vintage glamourindhold 
dan_stuff10              = {#NAME}: Bowlingindhold 
dan_stuff11              = {#NAME}: Fitnessindhold 
dan_stuff12              = {#NAME}: Tumlingeindhold 
dan_stuff13              = {#NAME}: Vaskedag 
dan_stuff14              = {#NAME}: Mit første kæledyr
dan_stuff15              = {#NAME}: Moschino
dan_stuff16              = {#NAME}: Småt og smart
dan_stuff17              = {#NAME}: Smart Strikketøj
dan_stuff18              = {#NAME}: Paranormal
dan_kits                 = Kits:
dan_kits1                = {#NAME}: Tilbage i tiden
dan_kits2                = {#NAME}: Gårdkøkken
dan_kits3                = {#NAME}: Skrub og gnub
dan_kits4                = {#NAME}: Hjemlig oase
dan_kits5                = {#NAME}: Gademode
dan_kits6                = {#NAME}: Industridesign
dan_kits7                = {#NAME}: Velkommen til Incheon
dan_kits8                = {#NAME}: Trendy herremode
dan_kits9                = {#NAME}: Frodige grønne
dan_kits10               = {#NAME}: Gadefest i karnevalstil
dan_kits11               = {#NAME}: Vilde dekorationer
dan_cont                 = Ekspreslevering
dan_ComponentsTitle      =Udvælgelse af spil at installere
dan_ComponentsLabel      =Vælg de spil, du vil installere.%nFjern markeringen af afkrydsningsfelter til spil, som du ikke behøver at installere.
dan_ComponentsLabel1     =%nFølgende spil vælges til opdateringen:
dan_Message13            =Ingen spil, der er valgt for installation
dan_Message14            =%nDu har ikke valgt nogen spil!%n%nDu skal vælge et spil, for at fortsætte installationen!
dan_Message15            =%nKlik på «Ja» for at vælge det spil, for at installere
#endif
dan_About                =«{#NAME}»%n«{#NAME} Julefest-pakke»%nDigitalt soundtrack fra «{#NAME}»%nDigitale indhold «Havenissen flytter med»
dan_AboutLE              =«{#NAME} Arven Edition»%n«{#NAME} Julefest-pakke»%nDigitalt soundtrack fra «{#NAME}»
dan_AboutAdd             =Tilføjelser:%n%n«{#NAME} Arbejdstid»%n«{#NAME} Nye venner»%n«{#NAME} Byliv»%n«{#NAME} Katte og hunde»%n«{#NAME} Sæsoner»%n«{#NAME} Bliv berømt»%n«{#NAME} Tropeliv»%n«{#NAME} Oplev universitetet»%n«{#NAME} Grønt er skønt»%n«{#NAME} Snedækket Flugt»%n«{#NAME} Hytteliv»
dan_AboutAddle           =Tilføjelser:%n%n«{#NAME} Arbejdstid»%n«{#NAME} Nye venner»%n«{#NAME} Byliv»%n«{#NAME} Katte og hunde»%n«{#NAME} Sæsoner»%n«{#NAME} Bliv berømt»%n«{#NAME} Tropeliv»
dan_AboutPack            =Afspilning af sæt:%n%n«{#NAME} Outdoor-Leben»%n«{#NAME} Spa-Dag»%n«{#NAME} Ud at spise»%n«{#NAME} Vampyrer»%n«{#NAME} Forældre»%n«{#NAME} Eventyr i junglen»%n«{#NAME} StrangerVille»%n«{#NAME} Magiens rige»%n«{#NAME} Star Wars™: Rejsen til Batuu»%n«{#NAME} Drømmehjem»%n«{#NAME} Mine Bryllupshistorier»
dan_AboutPackle          =Afspilning af sæt:%n%n«{#NAME} Outdoor-Leben»%n«{#NAME} Spa-Dag»%n«{#NAME} Ud at spise»%n«{#NAME} Vampyrer»%n«{#NAME} Forældre»%n«{#NAME} Eventyr i junglen»%n«{#NAME} StrangerVille»%n«{#NAME} Magiens rige»
dan_AboutStuf            =Kataloger:%n%n«{#NAME} Luksusfest»%n«{#NAME} Tjekket terrasse»%n«{#NAME} Cool køkkenindhold»%n«{#NAME} Hjemsøgt indhold»%n«{#NAME} Filmelskerindhold»%n«{#NAME} Romantisk haveindhold»%n«{#NAME} Børneværelse-indhold»%n«{#NAME} Baghaveindhold»%n«{#NAME} Vintage glamourindhold»%n«{#NAME} Bowlingindhold»%n«{#NAME} Fitnessindhold»%n«{#NAME} Tumlingeindhold»%n«{#NAME} Vaskedag»%n«{#NAME} Mit første kæledyr»%n«{#NAME} Moshino»%n«{#NAME} Småt og smart»%n«{#NAME} Smart Strikketøj»%n«{#NAME} Paranormal»
dan_AboutStufle          =Kataloger:%n%n«{#NAME} Luksusfest»%n«{#NAME} Tjekket terrasse»%n«{#NAME} Cool køkkenindhold»%n«{#NAME} Hjemsøgt indhold»%n«{#NAME} Filmelskerindhold»%n«{#NAME} Romantisk haveindhold»%n«{#NAME} Børneværelse-indhold»%n«{#NAME} Baghaveindhold»%n«{#NAME} Vintage glamourindhold»%n«{#NAME} Bowlingindhold»%n«{#NAME} Fitnessindhold»%n«{#NAME} Tumlingeindhold»%n«{#NAME} Vaskedag»%n«{#NAME} Mit første kæledyr»%n«{#NAME} Moshino»
dan_AboutKits            =Kits:%n%n«{#NAME} Tilbage i tiden»%n«{#NAME} Gårdkøkken»%n«{#NAME} Skrub og gnub»%n«{#NAME} Hjemlig oase»%n«{#NAME} Industridesign»%n«{#NAME} Velkommen til Incheon»%n«{#NAME} Gademode»%n«{#NAME} Trendy herremode»%n«{#NAME} Frodige grønne»%n«{#NAME} Gadefest i karnevalstil»%n«{#NAME} Vilde dekorationer»
dan_AboutCont            =Ekspreslevering
dan_AboutCopy            ={#Copyright}%n%nFjernede filer fra den 32-bit version af spillet!%n%n{#Autor}
dan_AboutCopyle          ={#Copyright}%n%nFjernede filer fra den 64-bit version af spillet!%n%n{#Autor}
dan_AboutBuy             =Hvis Du kan lide dette spil, KØB DET!
dan_AboutTnk             =Tak for støtten til projektet
dan_AboutSetup           =Om installationsprogrammet
dan_AllEllipsedTime      =Installation gang:
dan_AllProgress          =Installation fremskridt:
dan_BrowseDialogLabel    =Vælg en mappe fra listen%nog klik på «Ja»
dan_ButtonBack					 =< Tilbage
dan_ButtonBrowse         =Gennemgå ...
dan_ButtonCancel         =Cancel
dan_ButtonFinish         =Udfør
dan_ButtonInstall				 =Installer
dan_ButtonNext           =Næste >
dan_ButtonNo             =Nej
dan_ButtonWizardBrowse   =Gennemse mapper
dan_ButtonYes            =Ja
dan_CancelTitle          =Installation for fejl
dan_Clean                =Klik på «HDD» ikonet for at starte diskoprydning
dan_Clean1               =Før du installerer, skal du fjerne spil!
dan_Close                =Lukket
dan_Delete               =Slet
dan_Desktop              =Ikon «{#NAME}» til dit skrivebord
dan_DirDesc              =Installationsmapper
dan_DirectX              =Installer DirectX
dan_DirectX1             =DirectX: Installeret
dan_EllipsedTime         =Tid gik:
dan_ExitSetupTitle       =Exiting installer «{#NAME}»
dan_ExitSetupMessage     =Installationen af «{#NAME}» er ufuldstændig!%nHvis du afslutter, vil  «{#NAME}» ikke blive installeret!%n%nAfslut «{#NAME}» installationsprogrammet?
dan_FinishedLabel        =«{#NAME}» blev installeret korrekt på din computer
dan_FinishedLabel1       =Du kan starte «{#NAME}» nu eller senere ved at vælge%nden relevante genvej i startmenuen eller på skrivebordet.
dan_FinishedLabel2       =Klik på «Udfør» for at afslutte installationsprogrammet
dan_FinishedTitle        =Afslutning af installationen af «{#NAME}»
dan_FreeSpace            =Ledigt diskplads:
dan_Gb                   = Gb
dan_Hour                 = time
dan_Internet             ={#NAME} på internettet
dan_Lang                 =Dansk
dan_Language             =Vælg grænsefladesprog for spillet:
dan_Mb                   = Mb
dan_Message1             =Klik på «Ja» for at afslutte installationsprogrammet,%neller «Nej» for at fortsætte installationen.
dan_Message2             =Installation i systemmappen!
dan_Message3             =%n%nDet er ikke tilladt at installere «{#NAME}» i systemmapperne!%nPrøv igen..
dan_Message4             =%nKlik på «Ja» for at ændre installationsbanen
dan_Message5             =En kørende installation af «{#NAME}» blev registreret
dan_Message6             =En kørende installationseksempel af «{#NAME}» blev registreret%n%nDet er uacceptabelt at køre flere forekomster af installationen!%nFor at fortsætte installationen skal du lukke løbeprocessen.
dan_Message7             =%nKlik på «Ja» for at afslutte installationen
dan_Message8             =Din computer er i fare!
dan_Message9             =Installationsfilen er blevet ændret!%n%nFilen kan muligvis ikke hentes helt, eller det kan være foruroliget!%nDet er nødvendigt at opdatere hash af filer i torrent klienten,%neller download spillet fra en anden kilde!
dan_Message10            =Opdaget en kører spillet
dan_Message11            =%n%nHvis du fortsætter med installationen, spillet vil lukke automatisk,%nog spillet kan data gå tabt!
dan_Message12            =Klik på «Næste» for at fortsætte%neller «Annuller» for at afslutte installationen
dan_Mhz                  = MHz
dan_Min                  = min
dan_Msgbox               =Fundet et installeret spil%n«{#NAME}»
dan_Msgbox1              =Klik på «Afspil» for at starte spillet.%n«Slet» for at afslutte programmet til sletning%nog den efterfølgende rene installation af spillet.%n%n%n%n%n%n%n%nKlik på «Næste» for at opdatere spillet
dan_Msgbox2              =Gaming data går tabt!%n%nKlik på «Slet» for at slette spillet.%n%n%n%n%n%n%n«Næste» for at installere spillet%ni den registrerede mappe
dan_Msgbox3              =Du har den nyeste version af spillet%n«{#NAME}» v.
dan_NeedSpace            =Kræves til installation:
dan_NeedUpdate           =Kræves til opdatering:
dan_NextLbl              =Klik på «Næste» for at fortsætte.
dan_NoProgramGroupCheck2 =Opret ikke en mappe i «Start Menu»
dan_Play                 =Start spillet «{#NAME}»
dan_Readme               =Læsmig
dan_Redist               =Yderligere software:
dan_RedistDirectX        =Installation af DirectX ...
dan_RedistProgress       =Der er installeret yderligere software
dan_RedistTitle          =Installation af ekstra software
dan_RedistVisual10       =Opdatering af VisualC ++ 2010 ...
dan_RedistVisual13       =Installation af VisualC ++ 2013 ...
dan_RedistVisual19       =Installation af VisualC ++ 2015-2019 ...
dan_RedistWait           =Vent venligst til slutningen!
dan_RemainingTime        =venstre:
dan_Remains              =Tid tilbage:
dan_IconsTitle           =Gør klar til at starte spillet
dan_ReqLabel             =Installerer spilgenveje og registrerings indgange...
dan_Screenshots          =Skærmbilleder
dan_Sec                  = s
dan_SelectDirLabel       =Skal rydde op, eller vælg et andet drev!
dan_SelectDirLabel1      =Installationsmappen for spillet «{#NAME}»:
dan_SelectDirLabel2      =Der er ikke nok plads til at opdatere «{#NAME}»
dan_SelectDirLabel3      =Programmet opdaterer spillet «{#NAME}»:
dan_SelectStartMenu      =Programmet opdaterer genveje i «Startmenu»:
dan_SelectStartMenuLbl3  =Mappen med genveje i «Startmenu»:
dan_SelectTasksEditLabel =Fjern markeringen af de komponenter, du vil installere%ner ikke påkrævet, og klik derefter på «Installer»
dan_SelectTasksLabel     =Vælg yderligere opgaver, der skal udføres efter installationen af «{#NAME}»
dan_SetupAborted         =Installationen af «{#NAME}» er blevet afbrudt!%n%nLøs problemet og prøv at starte installationen igen ...
dan_SetupAppTitle        =Installation af «{#NAME}»
dan_SetupAppTitle1       =Opdatering «{#NAME}»
dan_Start                =Afspil
dan_StatusRollback       =Tilbagekaldelsesændringer.%nSletning af installationsfiler ...
dan_Support              =Hjælp
dan_Taskbar              =Ikonet «{#NAME}» på proceslinjen
dan_TasksName            =Yderligere opgaver
dan_Tb                   = Tb
dan_Thanks               =tak for projektet%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nsærlig tak%nalle venner af datakomprimering samfund%nkrinkels.org
dan_TotalSpace           =Harddiskstørrelse:
dan_UninstalMsg          =Klik på «Slet» for at fortsætte sletningen,%neller «Cancel» for at afslutte afinstallationsprogrammet.
dan_UninstalMsg1         = Fjerne «{#NAME}»
dan_UninstalMsg2         = Fjerne «{#NAME}» + gemme spil
dan_UninstalMsg3         = Fjerne «{#NAME}» + gemme spil + sikkerhedskopier
dan_UninstallStatusLabel =Vælg metoden til at slette «{#NAME}»
dan_UninstallStatusLbl   =Vent venligst, fjernelsen af «{#NAME}»
dan_VisualC              =Installer VisualC++ 2013
dan_VisualC1             =VisualC++ 2013: Installeret
dan_VisualC19            =Installer VisualC++ 2015-2019
dan_VisualC119           =VisualC++ 2015-2019: Installeret
dan_VisualCU             =Opdater VisualC++ 2010
dan_VisualCU1            =VisualC++ 2010sp1: Opdateret
dan_Cancel               =Klik på «Annuller» for at afslutte installationen.
dan_NextDisk             =Manglende drev:
dan_NextDisk1            =%nIndsæt disken og vente på, at den initialiseres!
dan_WelcomeLabel1        =Velkommen til installationsprogrammet%n«{#NAME}»
dan_WelcomeLabel3        =Før installationen%nDet anbefales at deaktivere antivirusprogrammet%nog luk alle løbende applikationer!
dan_WelcomeTitle         =Velkommen!
dan_WizardUninstalling   =Sletning status
dan_Backup               =Opret en kopi af gemme spillet
dan_Backup1              = kopieret:
dan_Backup2              = fra:
dan_Backup3              =Kopier Status:
#ifdef System
dan_DeviceDriver         =Enhedsdriveren blev ikke fundet
dan_NextLbl1             =Tænk før du fortsætter! Stabiliteten af spillet er ikke garanteret!
dan_NextLbl2             =Installation er ikke mulig! Klik på «Cancel» for at afslutte installationen!
dan_NextLbl3             =Dit system understøttes ikke længere!
dan_NotSystem            =MULIGHED FOR AT BESTEMME SYSTEMETS VERSION!
dan_OperationSystem      =Systemet
dan_Processor            =Processor
dan_RAM                  =Hukommelse
dan_RAM1                 =RAM:
dan_RAM2                 =gratis:
dan_RAM3                 =optaget:
dan_RAM4                 =Byt fil:
dan_Req2                 =Alle komponenter på din computer%nopfylde mindstekravene i spillet
dan_Req3                 =! ADVARSEL !%nComputeren opfylder ikke minimumskravene i spillet!
dan_Req4                 =! SYSTEM FEJL !%nMåske er det installerede system ikke Windows!
dan_SoundCard            =Lydkort
dan_System               =Systemkrav
dan_VideoCard            =Videoadapter
#endif
// Немецкий язык установки
//=============================================================
#ifdef Components
deu_base                 = {#NAME_DE}
deu_addon                = Erweiterungspaket:
deu_addon1               = {#NAME_DE}: An die Arbeit
deu_addon2               = {#NAME_DE}: Zeit für Freunde
deu_addon3               = {#NAME_DE}: Großstadtleben
deu_addon4               = {#NAME_DE}: Hunde & Katzen
deu_addon5               = {#NAME_DE}: Jahreszeiten
deu_addon6               = {#NAME_DE}: Werde berühmt
deu_addon7               = {#NAME_DE}: Inselleben
deu_addon8               = {#NAME_DE}: An die Uni
deu_addon9               = {#NAME_DE}: Nachhaltig leben
deu_addon10              = {#NAME_DE}: Snowy Flucht
deu_addon11              = {#NAME_DE}: Landhaus-Leben
deu_pack                 = Gameplay-Packs:
deu_pack1                = {#NAME_DE}: Outdoor-Leben
deu_pack2                = {#NAME_DE}: Wellness-Tag
deu_pack3                = {#NAME_DE}: Gaumenfreuden
deu_pack4                = {#NAME_DE}: Vampire»
deu_pack5                = {#NAME_DE}: Elternfreuden
deu_pack6                = {#NAME_DE}: Dschungel-Abenteuer
deu_pack7                = {#NAME_DE}: StrangerVille
deu_pack8                = {#NAME_DE}: Reich der Magie
deu_pack9                = {#NAME_DE}: Star Wars™: Reise nach Batuu 
deu_pack10               = {#NAME_DE}: Traumhaftes Innendesign 
deu_pack11               = {#NAME_DE}: Meine Hochzeitsgeschichten
deu_stuff                = Accessoires:
deu_stuff1               = {#NAME_DE}: Luxus-Party
deu_stuff2               = {#NAME_DE}: Sonnenterrassen
deu_stuff3               = {#NAME_DE}: Coole Küche
deu_stuff4               = {#NAME_DE}: Gruselige Sachen
deu_stuff5               = {#NAME_DE}: Heimkino
deu_stuff6               = {#NAME_DE}: Romantische Garten
deu_stuff7               = {#NAME_DE}: Kinderzimmer
deu_stuff8               = {#NAME_DE}: Gartenspaß
deu_stuff9               = {#NAME_DE}: Vintage-Glamour
deu_stuff10              = {#NAME_DE}: Bowling-Abend
deu_stuff11              = {#NAME_DE}: Fitness
deu_stuff12              = {#NAME_DE}: Kleinkind
deu_stuff13              = {#NAME_DE}: Waschtag
deu_stuff14              = {#NAME_DE}: Mein erstes Haustier
deu_stuff15              = {#NAME_DE}: Moschino
deu_stuff16              = {#NAME_DE}: Tiny Houses
deu_stuff17              = {#NAME_DE}: Raffiniertes Stricken
deu_stuff18              = {#NAME_DE}: Paranormale Phänomene
deu_kits                 = Set:
deu_kits1                = {#NAME}: Retro Fit & Chic
deu_kits2                = {#NAME}: Landhausküche
deu_kits3                = {#NAME}: Hausputz
deu_kits4                = {#NAME}: Innenhof-Oase
deu_kits5                = {#NAME}: Fashion Street
deu_kits6                = {#NAME}: Industrie-Loft
deu_kits7                = {#NAME}: Incheon Style
deu_kits8                = {#NAME}: Moderne Männermode
deu_kits9                = {#NAME}: Üppiges Grün
deu_kits10               = {#NAME}: Karnevals-Streetwear
deu_kits11               = {#NAME}: Maximalistischer Wohnstil
deu_cont                 = Expressversand
deu_ComponentsTitle      =Auswahl der zu installierenden Spiele
deu_ComponentsLabel      =Wählen Sie die Spiele aus, die Sie installieren möchten.%nDeaktivieren Sie die Kontrollkästchen für Spiele, die Sie nicht installieren müssen.
deu_ComponentsLabel1     =Die folgenden Spiele sind für%ndie Aktualisierung ausgewählt:
deu_Message13            =Keine Spiele für die Installation ausgewählt
deu_Message14            =%nSie haben kein Spiel gewählt!%n%nUm die Installation fortzusetzen, müssen Sie ein Spiel wählen!
deu_Message15            =%nKlicken Sie auf «Ja», um die zu installierenden Spiele auszuwählen
#endif
deu_About                =«{#NAME_DE}»%n«{#NAME_DE} Fröhliche Feiertage-Pack»%nDigitaler {#NAME_DE}-Soundtrack%nDigitalen Inhalt «Eifriger Gartenzwerg»
deu_AboutLE              =«{#NAME_DE} Legacy Edition»%n«{#NAME_DE} Fröhliche Feiertage-Pack»%nDigitaler «{#NAME_DE}»-Soundtrack
deu_AboutAdd             =Zugange:%n%n«{#NAME_DE} An die Arbeit»%n«{#NAME_DE} Zeit für Freunde»%n«{#NAME_DE} Großstadtleben»%n«{#NAME_DE} Hunde & Katzen»%n«{#NAME_DE} Jahreszeiten»%n«{#NAME_DE} Werde berühmt»%n«{#NAME_DE} Inselleben»%n«{#NAME_DE} Entdecke die Universität»%n«{#NAME_DE} Nachhaltig leben»%n«{#NAME_DE} Snowy Flucht»%n«{#NAME_DE} Landhaus-Leben»
deu_AboutAddle           =Zugange:%n%n«{#NAME_DE} An die Arbeit»%n«{#NAME_DE} Zeit für Freunde»%n«{#NAME_DE} Großstadtleben»%n«{#NAME_DE} Hunde & Katzen»%n«{#NAME_DE} Jahreszeiten»%n«{#NAME_DE} Werde berühmt»%n«{#NAME_DE} Inselleben»
deu_AboutPack            =Gameplay-Packs:%n%n«{#NAME_DE} Outdoor-Leben»%n«{#NAME_DE} Wellness-Tag»%n«{#NAME_DE} Gaumenfreuden»%n«{#NAME_DE} Vampire»%n«{#NAME_DE} Elternfreuden»%n«{#NAME_DE} Dschungel-Abenteuer»%n«{#NAME} StrangerVille»%n«{#NAME} Reich der Magie»%n«{#NAME_DE} Star Wars™: Reise nach Batuu»%n«{#NAME_DE} Traumhaftes Innendesign»%n«{#NAME_DE} Meine Hochzeitsgeschichten»
deu_AboutPackle          =Gameplay-Packs:%n%n«{#NAME_DE} Outdoor-Leben»%n«{#NAME_DE} Wellness-Tag»%n«{#NAME_DE} Gaumenfreuden»%n«{#NAME_DE} Vampire»%n«{#NAME_DE} Elternfreuden»%n«{#NAME_DE} Dschungel-Abenteuer»%n«{#NAME} StrangerVille»%n«{#NAME} Reich der Magie»
deu_AboutStuf            =Accessoires:%n%n«{#NAME_DE} Luxus-Party»%n«{#NAME_DE} Sonnenterrassen»%n«{#NAME_DE} Coole Küche»%n«{#NAME_DE} Gruselige Sachen»%n«{#NAME_DE} Heimkino»%n«{#NAME_DE} Romantische Garten»%n«{#NAME_DE} Kinderzimmer»%n«{#NAME_DE} Gartenspaß»%n«{#NAME_DE} Vintage-Glamour»%n«{#NAME_DE} Bowling-Abend»%n«{#NAME_DE} Fitness»%n«{#NAME_DE} Kleinkind»%n«{#NAME_DE} Waschtag»%n«{#NAME_DE} Mein erstes Haustier»%n«{#NAME_DE} Moshino»%n«{#NAME_DE} Tiny Houses»%n«{#NAME_DE} Raffiniertes Stricken»%n«{#NAME_DE} Paranormale Phänomene»
deu_AboutStufle          =Accessoires:%n%n«{#NAME_DE} Luxus-Party»%n«{#NAME_DE} Sonnenterrassen»%n«{#NAME_DE} Coole Küche»%n«{#NAME_DE} Gruselige Sachen»%n«{#NAME_DE} Heimkino»%n«{#NAME_DE} Romantische Garten»%n«{#NAME_DE} Kinderzimmer»%n«{#NAME_DE} Gartenspaß»%n«{#NAME_DE} Vintage-Glamour»%n«{#NAME_DE} Bowling-Abend»%n«{#NAME_DE} Fitness»%n«{#NAME_DE} Kleinkind»%n«{#NAME_DE} Waschtag»%n«{#NAME_DE} Mein erstes Haustier»%n«{#NAME_DE} Moshino»
deu_AboutKits            =Set:%n%n«{#NAME_DE} Retro Fit & Chic»%n«{#NAME_DE} Landhausküche»%n«{#NAME_DE} Hausputz»%n«{#NAME_DE} »%n«{#NAME_DE} Innenhof-Oase»%n«{#NAME_DE} Industrie-Loft»%n«{#NAME} Incheon Style»%n«{#NAME} Fashion Street»%n«{#NAME} Moderne Männermode»%n«{#NAME} Üppiges Grün»%n«{#NAME} Karnevals-Streetwear»%n«{#NAME} Maximalistischer Wohnstil»
deu_AboutCont            =Expressversand
deu_AboutCopy            ={#Copyright}%n%nGelöschte Dateien der 32-bit-Version des Spiels!%n%n{#Autor}
deu_AboutCopyle          ={#Copyright}%n%nGelöschte Dateien der 64-bit-Version des Spiels!%n%n{#Autor}
deu_AboutBuy             =Wenn Sie dieses Spiel mogen, KAUFEN SIE ES!
deu_AboutTnk             =Vielen Dank für die Unterstützung des Projekts
deu_AboutSetup           =Informationen zum Installationsprogramm
deu_AllEllipsedTime      =Installationszeit:
deu_AllProgress          =Fortschritte Position:
deu_ButtonBack           =< Zurück
deu_ButtonCancel         =Abbrechen
deu_ButtonFinish         =Abschluss
deu_ButtonInstall        =Installieren
deu_ButtonNext           =Weiter >
deu_ButtonBrowse         =Übersicht
deu_ButtonWizardBrowse   =Übersicht Ordner
deu_BrowseDialogLabel    =Wählen Sie einen Ordner aus,%nund klicken Sie danach auf «Ja»
deu_ButtonNo             =Nein
deu_ButtonYes            =Ja
deu_CancelTitle          =Installationsfehler
deu_Clean                =Klicken Sie auf das Symbol «HDD», um die Festplatte zu reinigen
deu_Clean1               =Vor der Installation müssen Sie das Spiel zu entfernen!
deu_Close                =Schluss
deu_Delete               =Entfernen
deu_Desktop              =Das Etikett «{#NAME_DE}» auf dem Desktop-Spiel
deu_DirDesc              =Die Ordner installiert Spiele
deu_DirectX              =Set DirectX
deu_DirectX1             =DirectX:  Installiert
deu_EllipsedTime         =Abgelaufene Zeit:
deu_ExitSetupTitle       =Beenden Sie das Installationsprogramm «{#NAME_DE}»
deu_ExitSetupMessage     =Die Installation «{#NAME_DE}» ist nicht abgeschlossen!%nWenn Sie zu verlassen, wird das «{#NAME_DE}» nicht installiert werden!%n%nBeenden Sie das Installations «{#NAME_DE}»?
deu_FinishedLabel        =Das Spiel «{#NAME_DE}» erfolgreich auf Ihrem Computer installiert
deu_FinishedLabel1       =Sie können das Programm mit der entsprechenden Verknüpfung auf dem Desktop oder im Startmenü ausführen.
deu_FinishedLabel2       =Klicken Sie auf «Abschluss»,%num das Installationsprogramm zu beenden
deu_FinishedTitle        =Installation «{#NAME_DE}» abschließen!
deu_FreeSpace            =Freier Festplattenspeicher:
deu_Gb                   = Gb
deu_Hour                 = stun
deu_Lang                 =Deutsch (DE)
deu_Language             =Wählen Sie die Schnittstellen Sprache Spiele:
deu_Mb                   = Mb
deu_Mhz                  = Mhz
deu_Min                  = min
deu_MsgBox               =Ist gefunden Installierte Spiel%n«{#NAME_DE}»
deu_MsgBox1              =Klicken Sie auf «Spielen», um das Spiel zu starten.%nAuf «Entfernen»,%num das Entfernen Programm zu beenden.%n%n%n%n%n%n%n%nKlicken Sie auf «Weiter», um das Spiel zu updaten
deu_Msgbox2              =Spieldaten  ist verloren!%n%nKlicken Sie auf «Entfernen», um die Spiele zu entfernen.%n%n%n%n%n%n%nAuf «Weiter», das Spiel zu dem%nerfassten Ordner zu installieren
deu_Msgbox3              =Du hast die aktuelle Version des Spiels%n«{#NAME_DE}» v.
deu_Message1             =Klicken Sie auf «Ja», um das Installationsprogramm  zu verlassen,%noder «Nein» um die Installation fortzusetzen.
deu_Message2             =Die Installation im Systemordner!
deu_Message3             =%n%nEs ist nicht hinnehmbar Systemordner zu installieren!%nBitte versuchen Sie es erneut.
deu_Message4             =%nKlicken Sie auf «Ja», um den Installationspfad  ändern
deu_Message5             =Erkannt laufenden Installation «{#NAME_DE}»
deu_Message6             =Entdeckt ausgeführte Instanz der Installation «{#NAME_DE}»%nUngültige Lauf mehrere Instanzen eines Setup!%nUm die Installation fortzusetzen,%nmüssen Sie den laufenden Prozess heruntergefahren .
deu_Message7             =Klicken Sie auf «Ja», um zu beenden,%nund schließen Sie das Gerät gestartet früher
deu_Message8             =Der Computer ist in Gefahr!
deu_Message9             =Die Installationsdatei  hat Änderungen erfahren!%n%nDie Datei wird geladen vollständig oder INFECTED!%nSie müssen den Hash von Dateien im torrent-Client aktualisieren,%noder laden Sie ein Spiel aus einer anderen Quelle!
deu_Message10            =Ein laufendes Spiel gefunden
deu_Message11            =%n%nWenn Sie die Installation fortsetzen, wird das Spiel automatisch geschlossen und die Spieldaten können verloren gehen!
deu_Message12            =Klicken Sie auf «Weiter», um fortzufahren,%noder «Abbrechen», um die Installation zu beenden.
deu_NextLbl              =Um fortzufahren, klicken Sie auf «Weiter».
deu_NeedSpace            =Erforderlich für die Installation:
deu_NeedUpdate           =Erforderlich für die Aktualisierung:
deu_NoProgramGroupCheck2 =Einen Ordner im «Startmenü» erstellen Sie nicht
deu_Play                 =Starten Sie das «{#NAME_DE}»
deu_Redist               =Zusätzliche Software:
deu_RedistTitle          =Installation zusätzlicher Software
deu_RedistProgress       =Es gibt zusätzliche Software
deu_RedistWait           =Bitte warten Sie
deu_RedistDirectX        =Installation DirectX ...
deu_RedistVisual10       =Aktualisieren von VisualC++ 2010 ...
deu_RedistVisual13       =Installation VisualC++ 2013 ...
deu_RedistVisual19       =Installation VisualC++ 2015-2019 ...
deu_RemainingTime        =Links:
deu_Remains              =Verbleibende Zeit:
deu_IconsTitle           =Vorbereitung auf den Start des Spiels
deu_ReqLabel             =Installieren Sie spielverknüpfungen und Registrierungseinträge...
deu_Sec                  = sek
deu_SelectDirLabel1      =Installationsordner für «{#NAME_DE}»:
deu_SelectStartMenuLbl3  =Ordner mit Verknüpfungen im «Startmenü»:
deu_SelectDirLabel       =Zu installieren, wählen Sie eine andere Festplatte!
deu_SelectDirLabel2      =Nicht genug Platz für ein «{#NAME_DE}» Spiel-Update
deu_SelectDirLabel3      =Das Programm aktualisiert das Spiel «{#NAME_DE}»:
deu_SelectStartMenu      =Das Programm aktualisiert die Verknüpfungen im «Startmenü»:
deu_SelectTasksEditLabel =Deaktivieren Sie die Programme, die Sie nicht wollen,%num zu installieren. Klicken Sie dann auf «Installieren»
deu_SelectTasksLabel     =Wählen Sie zusätzliche Aufgaben, die während der Installation durchgeführt werden soll «{#NAME_DE}»
deu_SetupAppTitle        =Setup «{#NAME_DE}»
deu_SetupAppTitle1       =Aktualisieren «{#NAME_DE}»
deu_SetupAborted         =Installation «{#NAME_DE}» abgebrochen!%n%nBeheben Sie das Problem und versuchen Sie, die Installation neu zu starten. ...
deu_StatusRollback       =Rollback  Änderungen ...
deu_Start                =Spielen
deu_Taskbar              =Das Symbol «{#NAME_DE}» in der Taskleiste
deu_TasksName            =Auswahl weiterer Aufgaben
deu_Tb                   = Tb
deu_Thanks               =danke für das Projekt%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nbesonderer Dank%nalle Freunde der Datenkomprimierungs-Community%nkrinkels.org
deu_TotalSpace           =Festplatte Große:
deu_UninstalMsg          =Klicken Sie auf «Entfernen», um weiterhin mit der Entfernung,%noder «Abbrechen», um das Deinstallationsprogramm  zu beenden.
deu_UninstalMsg1         = Entfernen «{#NAME_DE}»
deu_UninstalMsg2         = Entfernen «{#NAME_DE}» + speichern Spiele
deu_UninstalMsg3         = Entfernen «{#NAME_DE}» + speichern Spiele und Backups
deu_UninstallStatusLabel =Die Wahl der Methode löschen «{#NAME_DE}»
deu_UninstallStatusLbl   =Bitte warten Sie, Löschen «{#NAME_DE}»
deu_VisualC              =Installation VisualC++ 2013
deu_VisualC1             =VisualC++ 2013:  Installiert
deu_VisualC19            =Installation VisualC++ 2015-2019
deu_VisualC119           =VisualC++ 2015-2019:  Installiert
deu_VisualCU             =Updaten VisualC++ 2010
deu_VisualCU1            =VisualC++ 2010sp1:  Installiert
deu_WizardUninstalling   =Löschstatus
deu_WelcomeTitle         =Willkommen!
deu_WelcomeLabel1        =Willkommen bei Setup%n«{#NAME_DE}»
deu_WelcomeLabel3        =Es wird empfohlen,%ndass Sie alle anderen Anwendungen,%nbevor Sie fortfahren zu schließen!
deu_Cancel               =Klicken Sie auf «Abbrechen», um die Installation zu beenden
deu_NextDisk             =Keine Disc:
deu_NextDisk1            =%nBitte legen Sie die Disc ein und warten Sie, bis Sie initialisiert ist!
deu_Backup               =Eine Kopie speichern Spiele
deu_Backup1              = Kopiert:
deu_Backup2              = von:
deu_Backup3              =Kopieren Status:
#ifdef System
deu_DeviceDriver         =Nicht erkannten Gerätetreiber
deu_NextLbl1             =Denken Sie, bevor Sie fortfahren!
deu_NextLbl2             =Die Installation ist nicht möglich! Klicken Sie auf «Abbrechen», um die Installation zu beenden!
deu_NextLbl3             =Ihr System wird nicht mehr unterstützt!
deu_NotSystem            =Kann nicht die Version des Windows zu bestimmen!
deu_OperationSystem      =Betriebssystem
deu_Processor            =Zentralprozessor
deu_RAM                  =Speicher
deu_RAM1                 =RAM:
deu_RAM2                 =frei:
deu_RAM3                 =beschäftigt:
deu_RAM4                 =Pagefile:
deu_Req2                 =Alle Komponenten mit den Anforderungen%ndes Spiels entsprechen
deu_Req3                 =! WARNUNG !%nDer Computer erfüllt nicht die Mindestanforderungen des Spiels!
deu_Req4                 =! SYSTEMFEHLER !%nHaben Sie nicht installiert System Windows!
deu_SoundCard            =Soundkarte
deu_System               =Systemanforderungen
deu_VideoCard            =Grafikkarte
#endif
// Английский язык установки
//=============================================================
#ifdef Components
eng_base                 = {#NAME}
eng_addon                = Expansion Packs:
eng_addon1               = {#NAME}: Get to Work
eng_addon2               = {#NAME}: Get Together
eng_addon3               = {#NAME}: City Living
eng_addon4               = {#NAME}: Cats & Dogs
eng_addon5               = {#NAME}: Seasons
eng_addon6               = {#NAME}: Get Famous
eng_addon7               = {#NAME}: Island Living
eng_addon8               = {#NAME}: Discover University
eng_addon9               = {#NAME}: Eco Lifestyle
eng_addon10              = {#NAME}: Snowy Escape
eng_addon11              = {#NAME}: Cottage Living
eng_pack                 = Game Packs:
eng_pack1                = {#NAME}: Outdoor Retreat
eng_pack2                = {#NAME}: Spa Day
eng_pack3                = {#NAME}: Dine Out
eng_pack4                = {#NAME}: Vampires
eng_pack5                = {#NAME}: Parenthood
eng_pack6                = {#NAME}: Jungle Adventure
eng_pack7                = {#NAME}: StrangerVille
eng_pack8                = {#NAME}: Realm of Magic
eng_pack9                = {#NAME}: Star Wars™: Journey to Batuu
eng_pack10               = {#NAME}: Dream Home Decorator
eng_pack11               = {#NAME}: My Wedding Stories
eng_stuff                = Stuff Packs:
eng_stuff1               = {#NAME}: Luxury Party
eng_stuff2               = {#NAME}: Perfect Patio
eng_stuff3               = {#NAME}: Cool Kitchen
eng_stuff4               = {#NAME}: Spooky
eng_stuff5               = {#NAME}: Movie Hangout
eng_stuff6               = {#NAME}: Romantic Garden
eng_stuff7               = {#NAME}: Kids Room
eng_stuff8               = {#NAME}: Backyard
eng_stuff9               = {#NAME}: Vintage Glamour
eng_stuff10              = {#NAME}: Bowling Night
eng_stuff11              = {#NAME}: Fitness
eng_stuff12              = {#NAME}: Toddler
eng_stuff13              = {#NAME}: Laundry Day
eng_stuff14              = {#NAME}: My First Pet
eng_stuff15              = {#NAME}: Moschino
eng_stuff16              = {#NAME}: Tiny Living
eng_stuff17              = {#NAME}: Nifty Knitting
eng_stuff18              = {#NAME}: Paranormal
eng_kits                 = Kits:
eng_kits1                = {#NAME}: Throwback Fit
eng_kits2                = {#NAME}: Country Kitchen
eng_kits3                = {#NAME}: Bust the Dust
eng_kits4                = {#NAME}: Courtyard Oasis
eng_kits5                = {#NAME}: Fashion Street
eng_kits6                = {#NAME}: Industrial Loft
eng_kits7                = {#NAME}: Incheon Arrivals
eng_kits8                = {#NAME}: Modern Menswear
eng_kits9                = {#NAME}: Blooming Rooms
eng_kits10               = {#NAME}: Carnival Streetwear
eng_kits11               = {#NAME}: Décor to the Max Kit
eng_cont                 =  Express delivery
eng_ComponentsTitle      =Selection of games to install
eng_ComponentsLabel      =Select the games you want to install.%nDeselect checkboxes for games that you do not need to install.
eng_ComponentsLabel1     =%nThe following games are selected for the update:
eng_Message13            =No games selected for installation
eng_Message14            =%nYou have not chosen any game!%n%nYou must select a game to continue the installation!
eng_Message15            =%nClick «Yes» to select the games to install
#endif
eng_About                =«{#NAME}»%n«{#NAME} Holiday Celebration Pack»%n{#NAME} Digital Soundtrack%n«Gnome on the Go» Digital Content
eng_AboutLE              =«{#NAME} Legacy Edition»%n«{#NAME} Holiday Celebration Pack»%n{#NAME} Digital Soundtrack
eng_AboutAdd             =Additions:%n%n«{#NAME} Get to Work»%n«{#NAME} Get Together»%n«{#NAME} City Living»%n«{#NAME} Cats & Dogs»%n«{#NAME} Seasons»%n«{#NAME} Get Famous»%n«{#NAME} Island Living»%n«{#NAME} Discover University»%n«{#NAME} Eco Lifestyle»%n«{#NAME} Snowy Escape»%n«{#NAME} Cottage Living»
eng_AboutAddle           =Additions:%n%n«{#NAME} Get to Work»%n«{#NAME} Get Together»%n«{#NAME} City Living»%n«{#NAME} Cats & Dogs»%n«{#NAME} Seasons»%n«{#NAME} Get Famous»%n«{#NAME} Island Living»
eng_AboutPack            =Game Packs:%n%n«{#NAME} Outdoor Retreat»%n«{#NAME} Spa Day»%n«{#NAME} Dine Out»%n«{#NAME} Vampires»%n«{#NAME} Parenthood»%n«{#NAME} Jungle Adventure»%n«{#NAME} StrangerVille»%n«{#NAME} Realm of Magic»%n«{#NAME} Star Wars™: Journey to Batuu»%n«{#NAME} Dream Home Decorator»%n«{#NAME} My Wedding Stories»
eng_AboutPackle          =Game Packs:%n%n«{#NAME} Outdoor Retreat»%n«{#NAME} Spa Day»%n«{#NAME} Dine Out»%n«{#NAME} Vampires»%n«{#NAME} Parenthood»%n«{#NAME} Jungle Adventure»%n«{#NAME} StrangerVille»%n«{#NAME} Realm of Magic»
eng_AboutStuf            =Stuffs:%n%n«{#NAME} Luxury Party»%n«{#NAME} Perfect Patio»%n«{#NAME} Cool Kitchen»%n«{#NAME} Spooky»%n«{#NAME} Movie Hangout»%n«{#NAME} Romantic Garden»%n«{#NAME} Kids Room»%n«{#NAME} Backyard»%n«{#NAME} Vintage Glamour»%n«{#NAME} Bowling Night»%n«{#NAME} Fitness»%n«{#NAME} Toddler»%n«{#NAME} Laundry Day»%n«{#NAME} My First Pet»%n«{#NAME} Moshino»%n«{#NAME} Tiny Living»%n«{#NAME} Nifty Knitting»%n«{#NAME} Paranormal»
eng_AboutStufle          =Stuffs:%n%n«{#NAME} Luxury Party»%n«{#NAME} Perfect Patio»%n«{#NAME} Cool Kitchen»%n«{#NAME} Spooky»%n«{#NAME} Movie Hangout»%n«{#NAME} Romantic Garden»%n«{#NAME} Kids Room»%n«{#NAME} Backyard»%n«{#NAME} Vintage Glamour»%n«{#NAME} Bowling Night»%n«{#NAME} Fitness»%n«{#NAME} Toddler»%n«{#NAME} Laundry Day»%n«{#NAME} My First Pet»%n«{#NAME} Moshino»
eng_AboutKits            =Kits:%n%n«{#NAME} Throwback Fit»%n«{#NAME} Country Kitchen»%n«{#NAME} Bust the Dust»%n«{#NAME} Courtyard Oasis»%n«{#NAME} Indastrial Loft»%n«{#NAME} Incheon Arrivals»%n«{#NAME} Fashion Street»%n«{#NAME} Modern Menswear»%n«{#NAME} Blooming Rooms»%n«{#NAME} Carnival Streetwear»%n«{#NAME} Décor to the Max»
eng_AboutCont            =Express delivery
eng_AboutCopy            ={#Copyright}%n%nRemoved files of the 32-bit version of the game!%n%n{#Autor}
eng_AboutCopyle          ={#Copyright}%n%nRemoved files of the 64-bit version of the game!%n%n{#Autor}
eng_AboutBuy             =If you like this game, BUY IT!
eng_AboutTnk             =Thank you for supporting this project
eng_AboutSetup           =About the installation program
eng_AllEllipsedTime      =Installation time:
eng_AllProgress          =Installation Progress:
eng_ButtonBack           =< Back
eng_ButtonCancel         =Cancel
eng_ButtonFinish         =Finish
eng_ButtonInstall        =Install
eng_ButtonNext           =Next >
eng_ButtonBrowse         =Browse ...
eng_ButtonWizardBrowse   =Browse folders
eng_BrowseDialogLabel    =Select a folder in the list below,%nthen click «Yes»
eng_ButtonNo             =No
eng_ButtonYes            =Yes
eng_CancelTitle          =Installation error
eng_Clean                =Click on the icon «HDD» to start the Disk Cleanup
eng_Clean1               =Before installing, you must remove the game!
eng_Close                =Close
eng_Delete               =Remove
eng_Desktop              =Create «{#NAME}» desktop icon
eng_DirDesc              =Installation Folder
eng_DirectX              =Set DirectX
eng_DirectX1             =DirectX:  Installed
eng_EllipsedTime         =Elapsed time:
eng_ExitSetupTitle       =Exit the installation program «{#NAME}»
eng_ExitSetupMessage     =Installation «{#NAME}» is not complete!%nIf you exit, «{#NAME}» will not be installed!%n%nExit the installation «{#NAME}»?
eng_FinishedLabel        =Setup has finished installing «{#NAME}» on your computer
eng_FinishedLabel1       =The application may be launched by selecting the installed icons.
eng_FinishedLabel2       =Click «Finish» to exit Setup
eng_FinishedTitle        =Completing «{#NAME}» Setup Wizard!
eng_FreeSpace            =Free space on a disk:
eng_Gb                   = Gb
eng_Hour                 = hour
eng_Lang                 =English (US)
eng_Language             =Select interface language game:
eng_Mb                   = Mb
eng_Mhz                  = Mhz
eng_Min                  = min
eng_Message1             =Click «Yes» to exit the installation program,%nor «No» to continue the installation.
eng_Message2             =Installation in the system folder!
eng_Message3             =%n%nIt is unacceptable to install System folder!%nPlease try again.
eng_Message4             =%nClick «Yes» to change the installation path
eng_Message5             =Detected running installation «{#NAME}»
eng_Message6             =Discovered running instance of the installation «{#NAME}»%n%nInvalid run multiple instances of a setup!%nTo continue the installation, you must shut down the running process.
eng_Message7             =Click «Yes» to exit%nand close the unit launched earlier
eng_Message8             =Your computer is in danger!
eng_Message9             =The installation file has undergone modifications!%n%nThe file is loaded completely or INFECTED!%nYou need to update the hash of files in the torrent client,%nor download a game from another source!
eng_Message10            =Discovered a running game
eng_Message11            =%n%nIf you continue with the installation, the game will close automatically%nand game data may be lost!
eng_Message12            =Click «Next» to continue%nor «Cancel» to exit the installation
eng_MsgBox               =Found installed game%n«{#NAME}»
eng_MsgBox1              =Click «Play» to Lanch The Game.%n«Remove», to quit and remove it before.%n%n%n%n%n%n%n%n%nClick «Next» to continue for update the Game
eng_Msgbox2              =Game data is lost!%n%nClick «Remove» to remove the games.%n%n%n%n%n%n%nClick «Next» to install the game%nto the detected folder
eng_Msgbox3              =You have the current version of the game%n«{#NAME}» v.
eng_NeedSpace            =Required for installation:
eng_NeedUpdate           =Required for updating:
eng_NextLbl              =Click «Next» to continue
eng_NoProgramGroupCheck2 =Don't create «Start Menu Folder»
eng_Play                 =Launch game «{#NAME}»
eng_Redist               =Additional Software:
eng_RedistTitle          =Installing additional software
eng_RedistProgress       =There is additional software
eng_RedistWait           =Please wait
eng_RedistDirectX        =Installing DirectX ...
eng_RedistVisual10       =Upgrading VisualC++ 2010 ...
eng_RedistVisual13       =Installing VisualC++ 2013 ...
eng_RedistVisual19       =Installing VisualC++ 2015-2019 ...
eng_Remains              =Remains to time:
eng_RemainingTime        =Left:
eng_IconsTitle           =Preparing to launch the game
eng_ReqLabel             =Installing game shortcuts and registry entries...
eng_SelectDirLabel1      =The installation folder of the game «{#NAME}»:
eng_SelectStartMenuLbl3  =The folder with the shortcuts in «Start Menu»:
eng_Sec                  = sec
eng_SelectDirLabel       =It should be clear or select another HDD!
eng_SelectDirLabel2      =Not enough space for «{#NAME}» update
eng_SelectDirLabel3      =Setup will update the game «{#NAME}»:
eng_SelectStartMenu      =Setup will update the shortcuts in the «Start Menu»:
eng_SelectTasksEditLabel =Unselect the additional tasks you do not Setup to perform,%nthen click «Install»
eng_SelectTasksLabel     =Select the additional tasks you would like Setup to perform while installing «{#NAME}»
eng_SetupAppTitle        =Setup «{#NAME}»
eng_SetupAppTitle1       =Update «{#NAME}»
eng_SetupAborted         =Installation «{#NAME}» aborted!%n%nResolve the problem and try restarting the installation ...
eng_Start                =Play
eng_StatusRollback       =Rollback changes ...
eng_Taskbar              =«{#NAME}» icon in the taskbar
eng_TasksName            =Additional Tasks
eng_Tb                   = Tb
eng_Thanks               =thanks for project%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nspecial thanks%nall the friends of the data compression community%nkrinkels.org
eng_TotalSpace           =The size of a hard disk:
eng_UninstalMsg          =Click «Remove» to continue with the removal,%nor «Cancel» to exit the uninstall program.
eng_UninstalMsg1         = Remove «{#NAME}»
eng_UninstalMsg2         = Remove «{#NAME}» + saved game
eng_UninstalMsg3         = Remove «{#NAME}» + saved game and backups
eng_UninstallStatusLabel =The choice of method delete «{#NAME}»
eng_UninstallStatusLbl   =Please wait, deleting «{#NAME}»
eng_VisualC              =Install VisualC++ 2013
eng_VisualC1             =VisualC++ 2013:  Installed
eng_VisualC19            =Install VisualC++ 2015-2019
eng_VisualC119           =VisualC++ 2015-2019:  Installed
eng_VisualCU             =Update VisualC++ 2010
eng_VisualCU1            =VisualC++ 2010sp1:  Updated
eng_WizardUninstalling   =Deletion status
eng_WelcomeTitle         =Welcome!
eng_WelcomeLabel1        =Welcome to the Program Setup%n«{#NAME}»
eng_WelcomeLabel3        =It is recommended that your close antivirus %nand all other applications before continuing!
eng_Cancel               =Click «Cancel» to exit the installation
eng_NextDisk             =There is no disc:
eng_NextDisk1            =%nPlease insert the disc and wait for it to initialize!
eng_Backup               =Create Backup your Saves
eng_Backup1              = Copied:
eng_Backup2              = from:
eng_Backup3              =Copy Status:
#ifdef System
eng_DeviceDriver         =The device driver isn't found out
eng_NextLbl1             =To think, before to continue!
eng_NextLbl2             =Installation is not possible! Click «Cancel» to exit the installation!
eng_NextLbl3             =Your system is no longer supported!
eng_NotSystem            =Unable to determine the version of the Windows!
eng_OperationSystem      =System
eng_Processor            =Processor
eng_RAM                  =Memory
eng_RAM1                 =RAM:
eng_RAM2                 =free:
eng_RAM3                 =busy:
eng_RAM4                 =Pagefile:
eng_Req2                 =All computer components,%nmeet game requirements.
eng_Req3                 =! ATTENTION !%nThe Selected Components, don't meet minimal game requirements!
eng_Req4                 =! SYSTEM ERROR !%nDid not installed system is Windows!
eng_SoundCard            =Sound Card
eng_System               =System requirements
eng_VideoCard            =Videoadapter
#endif
// Финнский язык установки
//=============================================================
#ifdef Components
fin_base                 = {#NAME}
fin_addon                = Laajennuspakkaukset:
fin_addon1               = {#NAME}: Duunipäivä
fin_addon2               = {#NAME}: Kimppapuuhaa
fin_addon3               = {#NAME}: Kaupunkielämää
fin_addon4               = {#NAME}: Kissat ja koirat
fin_addon5               = {#NAME}: Vuodenaikaa
fin_addon6               = {#NAME}: Kohti kuuluisuutta
fin_addon7               = {#NAME}: Island Living
fin_addon8               = {#NAME}: Löydä yliopisto
fin_addon9               = {#NAME}: Ekoelämää
fin_addon10              = {#NAME}: Snowy Escape
fin_addon11              = {#NAME}: Maalaiselämää
fin_pack                 = Toistosarjat:
fin_pack1                = {#NAME}: Ulkoilma
fin_pack2                = {#NAME}: Détente au Spa
fin_pack3                = {#NAME}: Ulos syömään
fin_pack4                = {#NAME}: Vampyyrit
fin_pack5                = {#NAME}: Vanhemmuus
fin_pack6                = {#NAME}: Adventures viidakossa
fin_pack7                = {#NAME}: StrangerVille
fin_pack8                = {#NAME}: Noituuksia
fin_pack9                = {#NAME}: Star Wars™: Matka Batuulle 
fin_pack10               = {#NAME}: Unelmakoti 
fin_pack11               = {#NAME}: Häätarinani
fin_stuff                = luettelot:
fin_stuff1               = {#NAME}: Ylelliset bileet
fin_stuff2               = {#NAME}: Täydellinen terassi
fin_stuff3               = {#NAME}: Kuumaa keittiökamaa
fin_stuff4               = {#NAME}: Kammokamaa
fin_stuff5               = {#NAME}: Leffailtakamaa
fin_stuff6               = {#NAME}: Romanttista puutarhakamaa
fin_stuff7               = {#NAME}: Lastenhuonekamaa
fin_stuff8               = {#NAME}: Divertimento in Cortile
fin_stuff9               = {#NAME}: Klassista luksuskamaa
fin_stuff10              = {#NAME}: Keilailukamaa
fin_stuff11              = {#NAME}: Fitnesskamaa
fin_stuff12              = {#NAME}: Taaperokamaa
fin_stuff13              = {#NAME}: Pesupäivä
fin_stuff14              = {#NAME}: Ensimmäinen lemmikkini
fin_stuff15              = {#NAME}: Moschino
fin_stuff16              = {#NAME}: Pikkukotikamaa
fin_stuff17              = {#NAME}: Näppärä Neulonta
fin_stuff18              = {#NAME}: Yliluonnollista kamaa
fin_kits                 = Kitins:
fin_kits1                = {#NAME}: Takavuosien muotia
fin_kits2                = {#NAME}: Maalaiskeittiö
fin_kits3                = {#NAME}: Pölypallot pois
fin_kits4                = {#NAME}: Kotikeidas
fin_kits5                = {#NAME}: Fashion Street
fin_kits6                = {#NAME}: Rouheaa loft-tyyliä
fin_kits7                = {#NAME}: Laskeudumme Incheoniin
fin_kits8                = {#NAME}: Modernia miestenmuotia
fin_kits9                = {#NAME}: Rehevänvihreä
fin_kits10               = {#NAME}: Karnevaalivetimiä
fin_kits11               = {#NAME}: Maksimalistista sisustusta
fin_cont                 = Pikatoimitus
fin_ComponentsTitle      =Asennettavien pelien valinta
fin_ComponentsLabel      =Valitse pelit, jotka haluat asentaa.%nPoista valintaruudut peleistä, joita ei tarvitse asentaa.
fin_ComponentsLabel1     =%nPäivitykseen valitaan seuraavat pelit:
fin_Message13            =Ei pelit valittu asennettavaksi
fin_Message14            =%nEt ole valinnut mitään peliä!%n%nSinun on valitse peli, jotta voit jatkaa asennusta!
fin_Message15            =%nValitse «Kyllä», jos haluat valita pelejä asentaa
#endif
fin_About                =«{#NAME}»%n«{#NAME} Juhlatunnelmaa-paketti»%n«{#NAME}»-digitaalista musiikkia%n«Menevä tonttu»-digitaalisisältöä
fin_AboutLE              =«{#NAME} Perinnejulkaisu»%n«{#NAME} Juhlatunnelmaa-paketti»%n«{#NAME}»-digitaalista musiikkia
fin_AboutAdd             =lisäyksiä:%n%n«{#NAME} Duunipäivä»%n«{#NAME} Kimppapuuhaa»%n«{#NAME} Kaupunkielämää»%n«{#NAME} Kissat ja koirat»%n«{#NAME} Vuodenaikaa»%n«{#NAME} Kohti kuuluisuutta»%n«{#NAME} Unelmasaari»%n«{#NAME} Löydä yliopisto»%n«{#NAME} Ekoelämää»%n«{#NAME} Snowy Escape»%n«{#NAME} Maalaiselämää»
fin_AboutAddle           =lisäyksiä:%n%n«{#NAME} Duunipäivä»%n«{#NAME} Kimppapuuhaa»%n«{#NAME} Kaupunkielämää»%n«{#NAME} Kissat ja koirat»%n«{#NAME} Vuodenaikaa»%n«{#NAME} Kohti kuuluisuutta»%n«{#NAME} Unelmasaari»
fin_AboutPack            =Toistosarjat:%n%n«{#NAME} Ulkoilma»%n«{#NAME} Détente au Spa»%n«{#NAME} Ulos syömään»%n«{#NAME} Vampyyrit»%n«{#NAME} Vanhemmuus»%n«{#NAME} Adventures viidakossa»%n«{#NAME} StrangerVille»%n«{#NAME} Noituuksia»%n«{#NAME} Star Wars™: Matka Batuulle»%n«{#NAME} Unelmakoti»%n«{#NAME} Häätarinani»
fin_AboutPackle          =Toistosarjat:%n%n«{#NAME} Ulkoilma»%n«{#NAME} Détente au Spa»%n«{#NAME} Ulos syömään»%n«{#NAME} Vampyyrit»%n«{#NAME} Vanhemmuus»%n«{#NAME} Adventures viidakossa»%n«{#NAME} StrangerVille»%n«{#NAME} Noituuksia»
fin_AboutStuf            =luettelot:%n%n«{#NAME} Ylelliset bileet»%n«{#NAME} Täydellinen terassi»%n«{#NAME} Kuumaa keittiökamaa»%n«{#NAME} Kammokamaa»%n«{#NAME} Leffailtakamaa»%n«{#NAME} Romanttista puutarhakamaa»%n«{#NAME} Lastenhuonekamaa»%n«{#NAME} Divertimento in Cortile»%n«{#NAME} Klassista luksuskamaa»%n«{#NAME} Keilailukamaa»%n«{#NAME} Fitnesskamaa»%n«{#NAME} Taaperokamaa»%n«{#NAME} Pesupäivä»%n«{#NAME} Ensimmäinen lemmikkini»%n«{#NAME} Moshino»%n«{#NAME} Pikkukotikamaa»%n«{#NAME} Näppärä Neulonta»%n«{#NAME} Yliluonnollista kamaa»
fin_AboutStufle          =luettelot:%n%n«{#NAME} Ylelliset bileet»%n«{#NAME} Täydellinen terassi»%n«{#NAME} Kuumaa keittiökamaa»%n«{#NAME} Kammokamaa»%n«{#NAME} Leffailtakamaa»%n«{#NAME} Romanttista puutarhakamaa»%n«{#NAME} Lastenhuonekamaa»%n«{#NAME} Divertimento in Cortile»%n«{#NAME} Klassista luksuskamaa»%n«{#NAME} Keilailukamaa»%n«{#NAME} Fitnesskamaa»%n«{#NAME} Taaperokamaa»%n«{#NAME} Pesupäivä»%n«{#NAME} Ensimmäinen lemmikkini»%n«{#NAME} Moshino»
fin_AboutKits            =Kits:%n%n«{#NAME} Takavuosien muotia»%n«{#NAME} Maalaiskeittiö»%n«{#NAME} Pölypallot pois»%n«{#NAME} Kotikeidas»%n«{#NAME} Rouheaa loft-tyyliä»%n«{#NAME} Laskeudumme Incheoniin»%n«{#NAME} Fashion Street»%n«{#NAME} Modernia miestenmuotia»%n«{#NAME} Rehevänvihreä»%n«{#NAME} Karnevaalivetimiä»%n«{#NAME} Maksimalistista sisustusta»
fin_AboutCont            =Pikatoimitus
fin_AboutCopy            ={#Copyright}%n%noistin tiedostot pelin 32-bittisestä versiosta!%n%n{#Autor}
fin_AboutCopyle          ={#Copyright}%n%nPoistettiin pelin 64-bittisen version tiedostot!%n%n{#Autor}
fin_AboutBuy             =Jos pidät tästä pelistä, OSTAA SEN!
fin_AboutTnk             =Kiitos, että tuitte hanketta
fin_AboutSetup           =Tietoja asennusohjelmasta
fin_AllEllipsedTime      =Asennusaika:
fin_AllProgress          =Asennuksen edistyminen:
fin_BrowseDialogLabel    =Valitse kansio luettelosta%nja napsauta «Kyllä»
fin_ButtonBack					 =< Takaisin
fin_ButtonBrowse         =Tarkista ...
fin_ButtonCancel         =Peruuta
fin_ButtonFinish         =Valmis
fin_ButtonInstall				 =Perustaa
fin_ButtonNext           =Seuraava >
fin_ButtonNo             =Ei
fin_ButtonWizardBrowse   =Selaa kansioita
fin_ButtonYes            =Kyllä
fin_CancelTitle          =Asennus virhe
fin_Clean                =Klikkaa «HDD» kuvaketta voit käynnistää levyn uudelleenjärjestäminen
fin_Clean1               =Ennen asennusta, sinun täytyy poistaa peli!
fin_Close                =Kiinni
fin_Delete               =Poista
fin_Desktop              =Kuvake «{#NAME}» työpöydällesi
fin_DirDesc              =Asennuskansio
fin_DirectX              =Asenna DirectX
fin_DirectX1             =DirectX: asennettu
fin_EllipsedTime         =Aika kului:
fin_ExitSetupTitle       =Poistu asentajalta «{#NAME}»
fin_ExitSetupMessage     =Asennus «{#NAME}» on epätäydellinen!%nJos poistut, «{#NAME}» ei ole asennettu!%n%nSulje «{#NAME}» asennusohjelma?
fin_FinishedLabel        =«{#NAME}» on asennettu tietokoneellesi
fin_FinishedLabel1       =Voit aloittaa «{#NAME}» nyt tai uudestaan valitsemalla haluamasi%npikakuvakkeen Käynnistä-valikosta tai työpöydältä.
fin_FinishedLabel2       =Sulje asennusohjelma valitsemalla «Valmis»
fin_FinishedTitle        =Asennuksen «{#NAME}»
fin_FreeSpace            =Käytettävissä oleva levytila:
fin_Gb                   = Gb
fin_Hour                 = tunti
fin_Lang                 =Suomi
fin_Language             =Valitse pelin käyttöliittymän kieli:
fin_License              =The Sims 4 Loppukäyttäjän käyttöoikeussopimus
fin_Mb                   = Mb
fin_Message1             =Sulje asennusohjelma valitsemalla «Kyllä»,%njos haluat jatkaa asennusta, tai «Ei».
fin_Message2             =Asennus System-kansioon!
fin_Message3             =%n%nAsennus «{#NAME}» ei ole sallittua System-kansioissa!%nYritä uudelleen.
fin_Message4             =%nVaihda asennuspolku napsauttamalla «Kyllä»
fin_Message5             =Käynnissä olevan «{#NAME}» asennuksen havaittiin
fin_Message6             =Käynnissä olevan «{#NAME}» asennusesimerkin havaittiin%n%nEi ole hyväksyttävää suorittaa useita asennuksen vaiheita!%nJos haluat jatkaa asennusta, sinun on suljettava käynnissä oleva prosessi.
fin_Message7             =%nSulje asennus valitsemalla «Kyllä»
fin_Message8             =Tietokoneesi on vaarassa!
fin_Message9             =Asennustiedosto on muutettu!%n%nTiedostoa ei ehkä ole ladattu kokonaan tai se voi olla Väärin!%nOn tarpeen päivittää torrent-asiakkaan tiedostojen hajautus,%ntai lataa peli toisesta lähteestä!
fin_Message10            =Löysi käynnissä peli
fin_Message11            =%nJos jatkat asennusta, peli sulkeutuu automaattisesti%nja pelin tietoja voi kadota!
fin_Message12            =Klikkaa «Seuraava» jatkaaksesi%ntai «Peruuta» poistuaksesi asennuksesta
fin_Mhz                  = MHz
fin_Min                  = min
fin_Msgbox               =Löytyi asennettu peli%n«{#NAME}»
fin_Msgbox1              =Aloita peli napsauttamalla «Pelaa».%n«Poistu ohjelmasta poistamalla «Poista»%nja seuraavan pelin puhtaan asennuksen.%n%n%n%n%n%n%n%nPäivitä peli napsauttamalla «Seuraava»
fin_Msgbox2              =Pelitiedot menetetään!%n%nPoista peli napsauttamalla «Poista».%n%n%n%n%n%n%n«Seuraava» asentaa peli havaittuun kansioon
fin_Msgbox3              =Sinulla on pelin uusin versio%n«{#NAME}» v.
fin_NeedSpace            =Asennettavaksi vaadittu:
fin_NeedUpdate           =Vaaditaan päivitettäväksi:
fin_NextLbl              =Jatka valitsemalla «Seuraava».
fin_NoProgramGroupCheck2 =Älä luo kansiota «Käynnistä-valikosta»
fin_Play                 =Käynnistä «{#NAME}» peli
fin_Redist               =Lisäohjelmisto:
fin_RedistDirectX        =DirectX: n asentaminen ...
fin_RedistProgress       =Lisäohjelmistoja asennetaan
fin_RedistTitle          =Lisäohjelmiston asentaminen
fin_RedistVisual10       =VisualC++ 2010: päivittäminen ...
fin_RedistVisual13       =VisualC++ 2013: asentaminen ...
fin_RedistVisual19       =VisualC++ 2015-2019: asentaminen ...
fin_RedistWait           =Odota loppua!
fin_RemainingTime        =vasen:
fin_Remains              =Jäljellä oleva aika:
fin_IconsTitle           =Valmistellaan pelin käynnistämistä
fin_ReqLabel             =Asennetaan pelin pikanäppäimiä ja rekisterimerkintöjä...
fin_Sec                  = s
fin_SelectDirLabel       =Tarvitse puhdistaa tai valita toinen asema!
fin_SelectDirLabel1      =Pelin «{#NAME}» asennuskansio:
fin_SelectDirLabel2      =Ei ole tarpeeksi tilaa päivittää «{#NAME}»
fin_SelectDirLabel3      =ohjelma päivittää pelin «{#NAME}»:
fin_SelectStartMenu      =ohjelman päivitykset valikon pikanäppäimet «käynnistys»:
fin_SelectStartMenuLbl3  =Kansio, jossa pikanäppäimet ovat «käynnistysvalikossa»:
fin_SelectTasksEditLabel =Poista osat, jotka haluat asentaa ei tarvita,%nja napsauta sitten «Perustaa»
fin_SelectTasksLabel     =Valitse muita suoritettavia tehtäviä asennuksen jälkeen «{#NAME}»
fin_SetupAborted         =Asennuksen «{#NAME}» on keskeytetty!%n%nRatkaise ongelma ja yritä käynnistää asennus uudelleen ...
fin_SetupAppTitle        =Asennetaan «{#NAME}»
fin_SetupAppTitle1       =Päivitä «{#NAME}»
fin_Start                =Pelaa
fin_StatusRollback       =Takaisinmuokkaus muuttuu.%nAsennustiedostojen poistaminen ...
fin_Taskbar              =«{#NAME}» -kuvake tehtäväpalkissa
fin_TasksName            =Lisätehtävät
fin_Tb                   = Tb
fin_Thanks               =kiitos projektista%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nerityiskiitokset%nkaikki ystävät tietojen pakkaus yhteisön%nkrinkels.org
fin_TotalSpace           =Kiintolevyn koko:
fin_UninstalMsg          =Napsauta «Poista» jatkaaksesi poistamista,%ntai «Peruuta» poistuaksesi asennuksen poistamisohjelmasta.
fin_UninstalMsg1         = Poistaa «{#NAME}»
fin_UninstalMsg2         = Poistaa «{#NAME}» + pelit
fin_UninstalMsg3         = Poistaa «{#NAME}» + pelit + varmuuskopiot
fin_UninstallStatusLabel =Valitse tapa, jolla poistetaan «{#NAME}»
fin_UninstallStatusLbl   =Odota, poistetaanko «{#NAME}»
fin_VisualC              =Asenna VisualC++ 2013
fin_VisualC1             =VisualC++ 2013: asennettu
fin_VisualC19            =Asenna VisualC++ 2015-2019
fin_VisualC119           =VisualC++ 2015-2019: asennettu
fin_VisualCU             =Päivitä VisualC++ 2010
fin_VisualCU1            =VisualC++ 2010sp1: päivitetty
fin_Cancel               =Sulje asennus valitsemalla «Peruuta».
fin_NextDisk             =Puuttuva asema:
fin_NextDisk1            =%nAseta levy ja odota, että se alustetaan!
fin_WelcomeLabel1        =Tervetuloa asentimeen%n«{#NAME}»
fin_WelcomeLabel3        =Ennen asennusta,%non suositeltavaa poistaa virustentorjunta käytöstä%nja sulje kaikki käynnissä olevat sovellukset!
fin_WelcomeTitle         =Tervetuloa!
fin_WizardUninstalling   =Poiston tila
fin_Backup               =Luo kopio pelipelistä
fin_Backup1              = kopioida:
fin_Backup2              = alkaen:
fin_Backup3              =Kopiointitila:
#ifdef System
fin_DeviceDriver         =Laiteohjainta ei löytynyt
fin_NextLbl1             =Ajattele ennen kuin jatkat! Pelin vakaus ei ole taattu!
fin_NextLbl2             =Asennus ei ole mahdollista! Sulje asennus valitsemalla «Peruuta».
fin_NextLbl3             =Järjestelmääsi ei enää tueta!
fin_NotSystem            =JÄRJESTELMÄN JÄRJESTELMÄN MÄÄRITTÄMINEN EI SOVELLETA!
fin_OperationSystem      =Järjestelmä
fin_Processor            =Suoritin
fin_RAM                  =Muisti
fin_RAM1                 =RAM:
fin_RAM2                 =ilmaiseksi:
fin_RAM3                 =kiireinen:
fin_RAM4                 =Vaihda tiedosto:
fin_Req2                 =Kaikki tietokoneen osat%ntäyttävät pelin vähimmäisvaatimukset
fin_Req3                 =! VAROITUS !%nTietokone ei täytä pelin vähimmäisvaatimuksia!
fin_Req4                 =! SYSTEM ERROR !%nEhkä asennettu järjestelmä ei ole Windows!
fin_SoundCard            =Äänikortti
fin_System               =Järjestelmävaatimukset
fin_VideoCard            =Videoadapteri
#endif
// Французский язык установки
//=============================================================
#ifdef Components
fre_base                 = {#NAME_FR}
fre_addon                = Des Packs D'Extension:
fre_addon1               = {#NAME_FR}: Au Travail
fre_addon2               = {#NAME_FR}: Vivre Ensemble
fre_addon3               = {#NAME_FR}: Vie Citadine
fre_addon4               = {#NAME_FR}: Chiens et Chats
fre_addon5               = {#NAME_FR}: Saisons
fre_addon6               = {#NAME_FR}: Heure de gloire
fre_addon7               = {#NAME_FR}: Iles paradisiaques
fre_addon8               = {#NAME_FR}: Université à découvrir
fre_addon9               = {#NAME_FR}: Écologie
fre_addon10              = {#NAME_FR}: Snowy Escape
fre_addon11              = {#NAME_FR}: Vie à la campagne
fre_pack                 = Du pack de jeu:
fre_pack1                = {#NAME_FR}: Destination Nature
fre_pack2                = {#NAME_FR}: Detente au Spa
fre_pack3                = {#NAME_FR}: Au Restaurant
fre_pack4                = {#NAME_FR}: Vampires
fre_pack5                = {#NAME_FR}: Être parents
fre_pack6                = {#NAME_FR}: Dans la jungle
fre_pack7                = {#NAME_FR}: StrangerVille
fre_pack8                = {#NAME_FR}: Monde magique
fre_pack9                = {#NAME_FR}: Star Wars™ : Voyage sur Batuu
fre_pack10               = {#NAME_FR}: Décoration d'intérieur 
fre_pack11               = {#NAME_FR}: Mes Histoires De Mariage
fre_stuff                = Kit d'Objets:
fre_stuff1               = {#NAME_FR}: Soirees de Luxe
fre_stuff2               = {#NAME_FR}: Ambiance Patio
fre_stuff3               = {#NAME_FR}: En Cuisine
fre_stuff4               = {#NAME_FR}: Accessoires Effrayants
fre_stuff5               = {#NAME_FR}: Comme au cinéma
fre_stuff6               = {#NAME_FR}: Jardin romantique
fre_stuff7               = {#NAME_FR}: Chambre d'enfants
fre_stuff8               = {#NAME_FR}: En plein air
fre_stuff9               = {#NAME_FR}: Accessoires Vintage
fre_stuff10              = {#NAME_FR}: Soirée Bowling
fre_stuff11              = {#NAME_FR}: Fitness
fre_stuff12              = {#NAME_FR}: Bambins
fre_stuff13              = {#NAME_FR}: Jour de lessive
fre_stuff14              = {#NAME_FR}: Premier animal de compagnie
fre_stuff15              = {#NAME_FR}: Moschino
fre_stuff16              = {#NAME_FR}: Mini-maisons
fre_stuff17              = {#NAME_FR}: Chouette À Tricoter
fre_stuff18              = {#NAME_FR}: Paranormal
fre_kits                 = Kits:
fre_kits1                = {#NAME}: Look rétro
fre_kits2                = {#NAME}: Uisine rustique
fre_kits3                = {#NAME}: Nettoyage de printemps
fre_kits4                = {#NAME}: Riad de rêve
fre_kits5                = {#NAME}: Rue de la mode
fre_kits6                = {#NAME}: Loft industriel
fre_kits7                = {#NAME}: Incheon Style
fre_kits8                = {#NAME}: Nouveaux styles masculins
fre_kits9                = {#NAME}: Vert luxuriant
fre_kits10               = {#NAME}: Tenues de carnaval
fre_kits11               = {#NAME}: Déco Maximaliste
fre_cont                 = Livraison express
fre_ComponentsTitle      =Sélection de jeux à installer
fre_ComponentsLabel      =Sélectionnez les jeux que vous souhaitez installer.%nDécochez les cases pour les jeux que vous n'avez pas besoin d'installer.
fre_ComponentsLabel1     =Les jeux suivants sont sélectionnés%npour la mise à jour:
fre_Message13            =Jeux non sélectionnés pour l'installation
fre_Message14            =%nVous n'avez pas choisi un seul jeu!%n%nPour continuer l'installation, vous devez choisir un jeu!
fre_Message15            =%nCliquez sur «Oui» pour sélectionner les jeux à installer
#endif
fre_About                =«{#NAME_FR}»%n«{#NAME_FR} Pack Fêtes de fin d’année»%nBande-sonore numérique «{#NAME_FR}»%nContenu numérique «Gnomes à gogo»
fre_AboutLE              =«{#NAME_FR} Legacy Edition»%n«{#NAME_FR} Pack Fêtes de fin d’année»%nBande-sonore numérique «{#NAME_FR}»
fre_AboutAdd             =Ajouts:%n%n«{#NAME_FR} Au Travail»%n«{#NAME_FR} Vivre Ensemble»%n«{#NAME_FR} Vie Citadine»%n«{#NAME_FR} Chiens et Chats»%n«{#NAME_FR} Saisons»%n«{#NAME_FR} Heure de gloire»%n«{#NAME_FR} Iles paradisiaques»%n«{#NAME_FR} Université à découvrir»%n«{#NAME_FR} Écologie»%n«{#NAME_FR} Snowy Escape»%n«{#NAME_FR} Vie à la campagne»%n«{#NAME_FR} Vie à la campagne»
fre_AboutAddle           =Ajouts:%n%n«{#NAME_FR} Au Travail»%n«{#NAME_FR} Vivre Ensemble»%n«{#NAME_FR} Vie Citadine»%n«{#NAME_FR} Chiens et Chats»%n«{#NAME_FR} Saisons»%n«{#NAME_FR} Heure de gloire»%n«{#NAME_FR} Iles paradisiaques»
fre_AboutPack            =Du pack de jeu:%n%n«{#NAME_FR} Destination Nature»%n«{#NAME_FR} Detente au Spa»%n«{#NAME_FR} Au Restaurant»%n«{#NAME_FR} Vampires»%n«{#NAME_FR} Être parents»%n«{#NAME_FR} Dans la jungle»%n«{#NAME} StrangerVille»%n«{#NAME} Monde magique»%n«{#NAME_FR} Star Wars™: Voyage sur Batuu»%n«{#NAME_FR} Décoration d'intérieur»%n«{#NAME_FR} Mes Histoires De Mariage»
fre_AboutPackle          =Du pack de jeu:%n%n«{#NAME_FR} Destination Nature»%n«{#NAME_FR} Detente au Spa»%n«{#NAME_FR} Au Restaurant»%n«{#NAME_FR} Vampires»%n«{#NAME_FR} Être parents»%n«{#NAME_FR} Dans la jungle»%n«{#NAME} StrangerVille»%n«{#NAME} Monde magique»
fre_AboutStuf            =Kit d'Objets:%n%n«{#NAME_FR} Soirees de Luxe»%n«{#NAME_FR} Ambiance Patio»%n«{#NAME_FR} En Cuisine»%n«{#NAME_FR} Accessoires Effrayants»%n«{#NAME_FR} Comme au cinéma»%n«{#NAME_FR} Jardin romantique»%n«{#NAME_FR} Chambre d'enfants»%n«{#NAME_FR} En plein air»%n«{#NAME_FR} Accessoires Vintage»%n«{#NAME_FR} Soirée Bowling»%n«{#NAME_FR} Fitness»%n«{#NAME_FR} Bambins»%n«{#NAME_FR} Jour de lessive»%n«{#NAME_FR} Premier animal de compagnie»%n«{#NAME_FR} Moshino»%n«{#NAME_FR} Mini-maisons»%n«{#NAME_FR} Chouette À Tricoter»%n«{#NAME_FR} Paranormal»
fre_AboutStufle          =Kit d'Objets:%n%n«{#NAME_FR} Soirees de Luxe»%n«{#NAME_FR} Ambiance Patio»%n«{#NAME_FR} En Cuisine»%n«{#NAME_FR} Accessoires Effrayants»%n«{#NAME_FR} Comme au cinéma»%n«{#NAME_FR} Jardin romantique»%n«{#NAME_FR} Chambre d'enfants»%n«{#NAME_FR} En plein air»%n«{#NAME_FR} Accessoires Vintage»%n«{#NAME_FR} Soirée Bowling»%n«{#NAME_FR} Fitness»%n«{#NAME_FR} Bambins»%n«{#NAME_FR} Jour de lessive»%n«{#NAME_FR} Premier animal de compagnie»%n«{#NAME_FR} Moshino»
fre_AboutKits            =Kits:%n%n«{#NAME_FR} Look rétro»%n«{#NAME_FR} Cuisine rustique»%n«{#NAME_FR} Nettoyage de printemps»%n«{#NAME_FR} Riad de rêve»%n«{#NAME_FR} Loft industriel»%n«{#NAME} Incheon Style»%n«{#NAME} Rue de la mode»%n«{#NAME} Nouveaux styles masculins»%n«{#NAME} Vert luxuriant»%n«{#NAME} Tenues de carnaval»%n«{#NAME} Déco Maximaliste»
fre_AboutCont            =Livraison express
fre_AboutCopy            ={#Copyright}%n%nSuppression des fichiers de la version 32 bits du jeu!%n%n{#Autor}
fre_AboutCopyle          ={#Copyright}%n%nSuppression des fichiers de la version 64 bits du jeu!%n%n{#Autor}
fre_AboutBuy             =Si vous aimez ce jeu, VOUS POUVEZ ACHETER!
fre_AboutTnk             =Merci de soutenir le projet
fre_AboutSetup           =À propos du programme d'installation
fre_AllEllipsedTime      =Temps d'installation:
fre_AllProgress          =Progres Position:
fre_ButtonBack					 =< Arriere
fre_ButtonCancel         =Annuler
fre_ButtonFinish         =Complete
fre_ButtonInstall				 =Installer
fre_ButtonNext           =Suivant >
fre_ButtonBrowse         =Parcourir...
fre_ButtonWizardBrowse   =Parcourir le dossier
fre_BrowseDialogLabel    =Veuillez choisir un dossier de destination, %npuis cliquez sur «Oui»
fre_ButtonNo             =Non
fre_ButtonYes            =Oui
fre_ExitSetupTitle       =Quittez le programme d'installation «{#NAME_FR}»
fre_ExitSetupMessage     =L'installation «{#NAME_FR}» est pas complète!%nSi vous quittez, «{#NAME_FR}» ne sera pas installé!%n%nQuittez «{#NAME_FR}» d'installation?
fre_NoProgramGroupCheck2 =Ne pas creer un dossier dans le «Menu Demarrer»
fre_CancelTitle          =Erreur d'installation
fre_Clean                =Cliquez sur l'icône «HDD» pour démarrer le nettoyage de disque
fre_Clean1               =Avant l'installation, vous devez supprimer le jeu!
fre_Close                =Fermer
fre_Delete               =Supprimer
fre_Desktop              =Icône «{#NAME_FR}» sur le bureau
fre_DirDesc              =Dossier d'installation
fre_DirectX              =Installez DirectX
fre_DirectX1             =DirectX: Installe
fre_FinishedLabel        =«{#NAME_FR}» A été installé avec succès sur votre ordinateur
fre_FinishedLabel1       =Vous pouvez exécuter «{#NAME_FR}» maintenant ou plus tard en sélectionnant le raccourci correspondant dans le menu «Démarrer» ou sur le bureau.
fre_FinishedLabel2       =Cliquez sur «Complete»%npour quitter le programme d'installation
fre_FinishedTitle        =Fin de l'installation «{#NAME_FR}»
fre_FreeSpace            =Espace disque disponible:
fre_Hour                 = h
fre_Lang                 =Français (FR)
fre_Language             =Sélectionnez les jeux de langage d'interface:
fre_Mb                   = Mb
fre_Mhz                  = MHz
fre_Gb                   = Gb
fre_Min                  = min
fre_Message1             =Cliquez sur «Oui» pour quitter le programme d'installation,%nou «Non» pour continuer l'installation.
fre_Message2             =Installation dans le dossier du système!
fre_Message3             =%n%nIl est inacceptable de dossier d'installation du système!%nS'il vous plaît essayer à nouveau.
fre_Message4             =%nCliquez sur «Oui» pour modifier le chemin d'installation
fre_Message5             =Détecté exécutant l'installation «{#NAME_FR}»
fre_Message6             =Découvert en cours d'exécution par exemple de l'installation «{#NAME_FR}».%nRun Invalid multiples instances d'une configuration!%nPour poursuivre l'installation,%nvous devez arrêter le processus en cours d'exécution.
fre_Message7             =Cliquez sur «Oui» pour quitter%net fermer l'unité lancé plus tôt
fre_Message8             =Votre ordinateur est en danger!
fre_Message9             =Le fichier d'installation a subi des modifications!%n%nLe fichier est chargé complètement ou INFECTÉ!%nVous devez mettre à jour le hash des fichiers dans le client torrent,%nou télécharger un jeu d'une autre source!
fre_Message10            =Un jeu en cours d'exécution a été découvert%n
fre_Message11            =%nSi vous continuez l'installation, le jeu se ferme automatiquement%net les données de jeu peuvent être perdues!
fre_Message12            =Cliquez sur «Suivant» pour continuer%nou «Annuler» pour quitter l'installation.
fre_Msgbox               =Détecté installé le jeu%n«{#NAME_FR}»
fre_Msgbox1              =Cliquez sur «Play» pour démarrer le jeu.%nSur «Supprimer» pour quitter le programme%na supprimer, puis installer le jeu.%n%n%n%n%n%n%n%nCliquez sur «Suivant» pour mettre a jour le jeu
fre_Msgbox2              =Les données du jeu est perdu!%n%nCliquez sur «Supprimer» pour supprimer les jeux.%n%n%n%n%n%n%n«Suivant» pour d'installer le jeu%ndans le dossier détecté
fre_Msgbox3              =Vous avez la version actuelle du jeu%n«{#NAME_FR}» v.
fre_NeedSpace            =Requis pour l'installation:
fre_NeedUpdate           =Requis pour la mise à niveau:
fre_NextLbl              =Cliquez sur «Suivant» pour continuer
fre_Play                 =Démarrez le jeu «{#NAME_FR}»
fre_Redist               =Logiciel supplémentaire:
fre_RedistTitle          =Installation de logiciels supplémentaires
fre_RedistProgress       =Il existe des logiciels supplémentaires
fre_RedistWait           =S'il vous plaît attendre
fre_RedistDirectX        =Installation de DirectX ...
fre_RedistVisual10       =Mise à niveau de VisualC++ 2010 ...
fre_RedistVisual13       =Installation de VisualC++ 2013 ...
fre_RedistVisual19       =Installation de VisualC++ 2015-2019 ...
fre_Remains              =Temps restant:
fre_IconsTitle           =Préparation au lancement du jeu
fre_ReqLabel             =Définir les raccourcis de jeu et les entrées de registre...
fre_Screenshots          =Captures d'écran
fre_Sec                  = s
fre_SelectDirLabel       =Nettoyer ou sélectionner un autre disque dur
fre_SelectDirLabel1      =Dossier d'installation du jeu «{#NAME_FR}»:
fre_SelectDirLabel2      =Pas assez d'espace pour la mise an «{#NAME_FR}»
fre_SelectDirLabel3      =le Programme met à jour le jeu «{#NAME_FR}»:
fre_SetupAppTitle        =Installation «{#NAME_FR}»
fre_SetupAppTitle1       =Mise à jour «{#NAME_FR}»
fre_SetupAborted         =Installation «{#NAME_FR}» interrompue!%n%nRésolvez le problème et essayez de redémarrer l'installation ...
fre_SelectStartMenu      =le Programme met à jour les raccourcis dans le menu «Démarrer»:
fre_SelectStartMenuLbl3  =Dossier de raccourcis dans le menu «Démarrer»:
fre_SelectTasksEditLabel =Décocher les composants que vous ne souhaitez pas installer,%npuis cliquez sur «Installer»
fre_SelectTasksLabel     =Sélectionnez les tâches supplémentaires qui seront effectuées après l'installation de «{#NAME_FR}»
fre_Start                =Play
fre_StatusRollback       =Annulation des modifications ...
fre_Taskbar              =L'icône «{#NAME_FR}» dans la barre des tâches
fre_TasksName            =Des tâches supplémentaires
fre_Tb                   = Tb
fre_Thanks               =merci pour le projet%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nremerciements spéciaux%ntous les amis de la communauté de la compression de données%nkrinkels.org
fre_TotalSpace           =Taille du disque dur:
fre_Videos               =Vidéos enregistrées
fre_VisualC              =Installez VisualC++ 2013
fre_VisualC1             =VisualC++ 2013: Installe
fre_VisualC19            =Installez VisualC++ 2015-2019
fre_VisualC119           =VisualC++ 2015-2019: Installe
fre_VisualCU             =Mettre a jour VisualC++ 2010
fre_VisualCU1            =VisualC++ 2010sp1: Installe
fre_UninstalMsg          =Cliquez sur «Supprimer» pour continuer avec la suppression,%nou «Annuler» pour quitter le programme de désinstallation.
fre_UninstalMsg1         = Supprimer «{#NAME_FR}»
fre_UninstalMsg2         = Supprimer «{#NAME_FR}» + sauve des jeux
fre_UninstalMsg3         = Supprimer «{#NAME_FR}» + sauve des jeux et sauvegardes
fre_UninstallStatusLabel =Le choix de la méthode supprimer «{#NAME_FR}»
fre_UninstallStatusLbl   =S'il vous plaît attendre, la suppression «{#NAME_FR}»
fre_EllipsedTime         =Le temps écoulé:
fre_RemainingTime        =Gauche:
fre_Cancel               =Cliquez sur «Annuler» pour quitter l'installation
fre_NextDisk             =Pas de disque:
fre_NextDisk1            =%nVeuillez insérer le disque et attendez l'initialisation!
fre_WizardUninstalling   =Statut de suppression
fre_WelcomeTitle         =Bienvenue!
fre_WelcomeLabel1        =Bienvenue a Installation%n«{#NAME_FR}»
fre_WelcomeLabel3        =Avant l'installation, il est recommandé%nde desactiver l'antivirus et de fermer%ntoutes les applications en cours d'exécution!
fre_Backup               =Faire une copie de sauvegarde des jeux
fre_Backup1              = Copié:
fre_Backup2              = de:
fre_Backup3              =Copie Statut:
#ifdef System
fre_DeviceDriver         =Le pilote de périphérique est pas détecté
fre_NextLbl1             =Réfléchissez avant de vous continuez!
fre_NextLbl2             =L'installation est pas possible! Cliquez sur «Annuler» pour quitter l'installation!
fre_NextLbl3             =Votre système n'est plus supporté!
fre_NotSystem            =Impossible de déterminer la version du Windows!
fre_OperationSystem      =Systeme
fre_Processor            =Processeur
fre_RAM                  =Mémoire
fre_RAM1                 =RAM:
fre_RAM2                 =libre:
fre_RAM3                 =occupé:
fre_RAM4                 =Fichier d'echange:
fre_Req2                 =Tous les composants de votre ordinateur%nrépond aux exigences minimales du jeu
fre_Req3                 =! ATTENTION !%nL'ordinateur ne répond pas aux exigences minimales du jeu!
fre_Req4                 =! SYSTEM ERROR !%nLe système n'a pas installé est Windows!
fre_SoundCard            =Carte son
fre_System               =Configuration requise
fre_VideoCard            =Adaptateur vidéo
#endif
// Итальянский язык установки
//=============================================================
#ifdef Components
ita_base                 = {#NAME}
ita_addon                = Pacchetti Di Espansione:
ita_addon1               = {#NAME}: Al Lavoro!
ita_addon2               = {#NAME}: Usciamo Insieme!
ita_addon3               = {#NAME}: Vita in Città
ita_addon4               = {#NAME}: Cani & Gatti
ita_addon5               = {#NAME}: Stagioni
ita_addon6               = {#NAME}: Nuove Stelle
ita_addon7               = {#NAME}: Vita sull'Isola
ita_addon8               = {#NAME}: Scopri l'università
ita_addon9               = {#NAME}: Eco Lifestyle
ita_addon10              = {#NAME}: Fuga Innevata
ita_addon11              = {#NAME}: Vita in Campagna
ita_pack                 = Game Pack:
ita_pack1                = {#NAME}: Gita All'Aria Aperta
ita_pack2                = {#NAME}: Un giorno alla Spa
ita_pack3                = {#NAME}: Mangiamo Fuori
ita_pack4                = {#NAME}: Vampiri
ita_pack5                = {#NAME}: Vita da Genitori
ita_pack6                = {#NAME}: Avventura nella Giungla
ita_pack7                = {#NAME}: StrangerVille
ita_pack8                = {#NAME}: Regno della Magia
ita_pack9                = {#NAME}: Star Wars™: Viaggio a Batuu 
ita_pack10               = {#NAME}: Arredi da Sogno  
ita_pack11               = {#NAME}: Le mie storie di nozze
ita_stuff                = Pacchetti di roba:
ita_stuff1               = {#NAME}: Feste di lusso
ita_stuff2               = {#NAME}: Esterni da Sogno
ita_stuff3               = {#NAME}: Cucina Perfetta
ita_stuff4               = {#NAME}: Accessori da Brivido
ita_stuff5               = {#NAME}: Serata Cinema
ita_stuff6               = {#NAME}: Giardini Romantici
ita_stuff7               = {#NAME}: Stanza dei Bimbi
ita_stuff8               = {#NAME}: Divertimento in Cortile
ita_stuff9               = {#NAME}: Vintage Glamour
ita_stuff10              = {#NAME}: Serata Bowling
ita_stuff11              = {#NAME}: Fitness
ita_stuff12              = {#NAME}: Bebè
ita_stuff13              = {#NAME}: Giorno di Bucato
ita_stuff14              = {#NAME}: Il Mio Primo Animale
ita_stuff15              = {#NAME}: Moschino
ita_stuff16              = {#NAME}: Mini Case
ita_stuff17              = {#NAME}: Portento del Punto
ita_stuff18              = {#NAME}: Fenomeni Paranormali
ita_kits                 = Kits:
ita_kits1                = {#NAME}: Moda Rétro
ita_kits2                = {#NAME}: Cucina di Campagna
ita_kits3                = {#NAME}: Pulizie di Primavera
ita_kits4                = {#NAME}: Oasi in Giardino
ita_kits5                = {#NAME}: Fashion Street
ita_kits6                = {#NAME}: Loft Industriale
ita_kits7                = {#NAME}: Viaggio a Incheon
ita_kits8                = {#NAME}: Modern Menswear
ita_kits9                = {#NAME}: Blooming Rooms
ita_kits10               = {#NAME}: Colori di Carnevale
ita_kits11               = {#NAME}: Arredamento Massimalista
ita_cont                 = Consegna espressa
ita_ComponentsTitle      =Selezione di giochi da installare
ita_ComponentsLabel      =Seleziona i giochi che vuoi installare.%nDeseleziona le caselle di controllo per i giochi che non è necessario installare.
ita_ComponentsLabel1     =Per l'aggiornamento sono stati selezionati%ni seguenti giochi:
ita_Message13            =Non sono selezionati i giochi da installare
ita_Message14            =%nNon hai scelto nessun gioco!%n%nPer continuare, è necessario scegliere qualsiasi gioco!
ita_Message15            =%nFare clic su «Sì» per selezionare i giochi da installare
#endif
ita_About                =«{#NAME}»%n«{#NAME} Pacchetto Celebrazione delle Festività»%nColonna sonora digitale di «{#NAME}»%ncontenuto digitale «Gnomo al Galoppo»
ita_AboutLE              =«{#NAME} Edizione Legacy»%n«{#NAME} Pacchetto Celebrazione delle Festività»%nColonna sonora digitale di «{#NAME}»
ita_AboutAdd             =Aggiunte:%n%n«{#NAME} Al Lavoro!»%n«{#NAME} Usciamo Insieme!»%n«{#NAME} Vita in Città»%n«{#NAME} Cani & Gatti»%n«{#NAME} Stagioni»%n«{#NAME} Nuove Stelle»%n«{#NAME} Vita sull'Isola»%n«{#NAME} Scopri l'università»%n«{#NAME} Eco Lifestyle»%n«{#NAME} Fuga Innevata»%n«{#NAME} Vita in Campagna»
ita_AboutAddle           =Aggiunte:%n%n«{#NAME} Al Lavoro!»%n«{#NAME} Usciamo Insieme!»%n«{#NAME} Vita in Città»%n«{#NAME} Cani & Gatti»%n«{#NAME} Stagioni»%n«{#NAME} Nuove Stelle»%n«{#NAME} Vita sull'Isola»
ita_AboutPack            =Game Pack:%n%n«{#NAME} Gita All'Aria Aperta»%n«{#NAME} Un giorno alla Spa»%n«{#NAME} Mangiamo Fuori»%n«{#NAME} Vampiri»%n«{#NAME} Vita da Genitori»%n«{#NAME} Avventura nella Giungla»%n«{#NAME} StrangerVille»%n«{#NAME} Regno della Magia»%n«{#NAME} Star Wars™: Viaggio a Batuu»%n«{#NAME} Arredi da Sogno»%n«{#NAME} Le mie storie di nozze»
ita_AboutPackle          =Game Pack:%n%n«{#NAME} Gita All'Aria Aperta»%n«{#NAME} Un giorno alla Spa»%n«{#NAME} Mangiamo Fuori»%n«{#NAME} Vampiri»%n«{#NAME} Vita da Genitori»%n«{#NAME} Avventura nella Giungla»%n«{#NAME} StrangerVille»%n«{#NAME} Regno della Magia»
ita_AboutStuf            =Cataloghi di gioco:%n%n«{#NAME} Feste di lusso»%n«{#NAME} Esterni da Sogno»%n«{#NAME} Cucina Perfetta»%n«{#NAME} Accessori da Brivido»%n«{#NAME} Serata Cinema»%n«{#NAME} Giardini Romantici»%n«{#NAME} Stanza dei Bimbi»%n«{#NAME} Divertimento in Cortile»%n«{#NAME} Vintage Glamour»%n«{#NAME} Serata Bowling»%n«{#NAME} Fitness»%n«{#NAME} Bebè»%n«{#NAME} Giorno di Bucato»%n«{#NAME} Il Mio Primo Animale»%n«{#NAME} Moshino»%n«{#NAME} Mini Case»%n«{#NAME} Portento del Punto»%n«{#NAME} Fenomeni Paranormali»
ita_AboutStufle          =Cataloghi di gioco:%n%n«{#NAME} Feste di lusso»%n«{#NAME} Esterni da Sogno»%n«{#NAME} Cucina Perfetta»%n«{#NAME} Accessori da Brivido»%n«{#NAME} Serata Cinema»%n«{#NAME} Giardini Romantici»%n«{#NAME} Stanza dei Bimbi»%n«{#NAME} Divertimento in Cortile»%n«{#NAME} Vintage Glamour»%n«{#NAME} Serata Bowling»%n«{#NAME} Fitness»%n«{#NAME} Bebè»%n«{#NAME} Giorno di Bucato»%n«{#NAME} Il Mio Primo Animale»%n«{#NAME} Moshino»
ita_AboutKits            =Kits%n%n«{#NAME} Moda Rétro»%n«{#NAME} Cucina di Campagna»%n«{#NAME} Pulizie di Primavera»%n«{#NAME} Oasi in Giardino»%n«{#NAME} Loft Industriale»%n«{#NAME} Viaggio a Incheon»%n«{#NAME} Fashion Street»%n«{#NAME} Modern Menswear»%n«{#NAME} Blooming Rooms»%n«{#NAME} Colori di Carnevale»%n«{#NAME} Arredamento Massimalista»
ita_AboutCont            =Consegna espressa
ita_AboutCopy            ={#Copyright}%n%nRimosso i file della versione a 32 bit del gioco!%n%n{#Autor}
ita_AboutCopyle          ={#Copyright}%n%nRimosso i file della versione a 64 bit del gioco!%n%n{#Autor}
ita_AboutBuy             =Se ti piace questo gioco, ACQUISTARLO!
ita_AboutTnk             =Grazie per il supporto del progetto
ita_AboutSetup           =Informazioni sul programma di installazione
ita_AllEllipsedTime      =I tempi di installazione:
ita_AllProgress          =Progress Posizione:
ita_ButtonBack					 =< Indietro
ita_ButtonCancel         =Annulla
ita_ButtonFinish         =Fine
ita_ButtonInstall				 =Installa
ita_ButtonNext           =Avanti >
ita_ButtonBrowse         =Sfoglia ...
ita_ButtonWizardBrowse   =Sfoglia cartella
ita_BrowseDialogLabel    =Selezionare una cartella dalla lista, %npoi premere «Si»
ita_ButtonNo             =No
ita_ButtonYes            =Si
ita_ExitSetupTitle       =Uscire dal programma di installazione «{#NAME}»
ita_ExitSetupMessage     =L'installazione «{#NAME}» non è completa!%nSe si esce, non sarà installato il «{#NAME}»!%n%nUscire dal «{#NAME}» di installazione?
ita_NoProgramGroupCheck2 =Non creare una cartella nel «Menu Start»
ita_CancelTitle          =Errore di installazione
ita_Clean                =Clicca sull'icona «HDD» per eseguire Pulitura disco
ita_Clean1               =Prima di installare, e necessario rimuovere il gioco!
ita_Close                =Chiudere
ita_Delete               =Rimuovi
ita_Desktop              =Crea un'icona «{#NAME}» sul desktop
ita_DirDesc              =Cartella di installazione
ita_DirectX              =Set DirectX
ita_DirectX1             =DirectX:  Installato
ita_FinishedLabel        =«{#NAME}» e stato installato correttamente sul vostro computer
ita_FinishedLabel1       =E possibile eseguire «{#NAME}» subito o piu tardi selezionando %nil relativo collegamento nel menu Start o sul desktop.
ita_FinishedLabel2       =Fare clic su «Fine»%nper uscire dal programma di installazione
ita_FinishedTitle        =Completamento dell'installazione «{#NAME}»
ita_FreeSpace            =Spazio su disco disponibile:
ita_Hour                 = h
ita_Lang                 =Italiano
ita_Language             =Giochi linguistici Seleziona interfaccia:
ita_License              =Accordo di licenza con l'utente finale
ita_Mb                   = Mb
ita_Mhz                  = MHz
ita_Gb                   = Gb
ita_Min                  = min
ita_Message1             =Fai clic su «Sì» per uscire dal programma di installazione,%no «No» per continuare l'installazione.
ita_Message2             =L'installazione nella cartella di sistema!
ita_Message3             =%n%nE 'inaccettabile cartella di installazione del sistema!%nRiprova.
ita_Message4             =%nFai clic su «Sì» per cambiare il percorso di installazione
ita_Message5             =Rilevato installazione che è «{#NAME}»
ita_Message6             =Scoperto in esecuzione esempio dell'installazione «{#NAME}».%nSeduta invalida più istanze di una messa a punto!%nPer continuare l'installazione,%nè necessario arrestare il processo in esecuzione.
ita_Message7             =Fai clic su «Sì» per uscire%ne chiudere l'unità lanciato all'inizio
ita_Message8             =Il computer è in pericolo!
ita_Message9             =Il file di installazione è stato sottoposto a modifiche%n%nIl file viene caricato completamente o infetti!%nÈ necessario aggiornare l'hash di file nel client torrent,%no scaricare un gioco da un'altra fonte!
ita_Message10            =Rilevato lanciata gioco
ita_Message11            =%n%nSe Si continua l'installazione, il gioco si chiude automaticamente%ne i dati possono essere persi!
ita_Message12            =Fare clic su «Avanti» per continuare%no «Annulla» per uscire dall'installazione
ita_Msgbox               =Rilevato gioco installato%n«{#NAME}»
ita_Msgbox1              =Fare clic su «Riproduci» per avviare il gioco.%nSu «Rimuovi» per rimuovere%ne quindi installare il gioco.%n%n%n%n%n%n%n%nFare clic su «Avanti» per aggiornare il gioco
ita_Msgbox2              =Dati partita è persa!%n%nFai clic su «Rimuovi» per rimuovere i giochi.%n%n%n%n%n%n%n«Avanti» per di installare il gioco%nnella cartella rilevata
ita_Msgbox3              =Hai la versione corrente del gioco%n«{#NAME}» v.
ita_NeedSpace            =Richiesto per l'installazione:
ita_NeedUpdate           =Richiesto per l'aggiornamento:
ita_NextLbl              =Per continuare, premere «Avanti»
ita_Play                 =Inizia il gioco «{#NAME}»
ita_Redist               =Software aggiuntivo:
ita_RedistTitle          =Installazione di software aggiuntivo
ita_RedistProgress       =Vi è un software aggiuntivo
ita_RedistWait           =Attendere
ita_RedistDirectX        =Installazione di DirectX ...
ita_RedistVisual10       =Aggiornamento di VisualC++ 2010 ...
ita_RedistVisual13       =Installazione di VisualC++ 2013 ...
ita_RedistVisual19       =Installazione di VisualC++ 2015-2019 ...
ita_Remains              =Tempo rimanente:
ita_IconsTitle           =Preparazione per il lancio del gioco
ita_ReqLabel             =Impostare i tasti di scelta rapida del gioco e le voci di registro...
ita_Sec                  = sec
ita_SelectDirLabel       =Dovrebbe essere chiaro o selezionare un altro disco!
ita_SelectDirLabel1      =Cartella di installazione di «{#NAME}»:
ita_SelectDirLabel2      =Non abbastanza spazio per l'aggiornamento «{#NAME}»
ita_SelectDirLabel3      =il programma aggiornerà «{#NAME}»:
ita_SelectStartMenu      =il programma aggiornerà i collegamenti nel menu «Start»:
ita_SelectStartMenuLbl3  =Cartella dei collegamenti nel menu «Start»:
ita_SelectTasksEditLabel =Deselezionare i componenti che non si desidera installare,%ne quindi fare clic su «Installa»
ita_SelectTasksLabel     =Selezionare le attivita aggiuntive che verranno eseguite dopo l'installazione «{#NAME}»
ita_SetupAppTitle        =Installazione «{#NAME}»
ita_SetupAppTitle1       =Aggiornamento «{#NAME}»
ita_SetupAborted         =Installazione «{#NAME}» interrotta!%n%nRisolvere il problema e provare a riavviare l'installazione ...
ita_Start                =Riproduci
ita_StatusRollback       =Recupero delle modifiche ...
ita_Taskbar              =L'icona «{#NAME}» nella barra delle applicazioni
ita_TasksName            =Compiti supplementari
ita_Tb                   = Tb
ita_Thanks               =grazie per il progetto%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkel®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nun ringraziamento speciale%ntutti gli amici della comunità di compressione dei dati%nkrinkels.org
ita_TotalSpace           =Dimensioni del disco rigido:
ita_VisualC              =Set VisualC++ 2013
ita_VisualC1             =VisualC++ 2013:  Installato
ita_VisualC19            =Set VisualC++ 2015-2019
ita_VisualC119           =VisualC++ 2015-2019:  Installato
ita_VisualCU             =Aggiornare il VisualC++ 2010
ita_VisualCU1            =VisualC++ 2010sp1:  Installato
ita_UninstalMsg          =Fai clic su «Rimuovere» per continuare con la rimozione,%no «Annula» per uscire dal programma di disinstallazione.
ita_UninstalMsg1         = Rimuovere «{#NAME}»
ita_UninstalMsg2         = Rimuovere «{#NAME}» + salvare giocho
ita_UninstalMsg3         = Rimuovere «{#NAME}» + salvare i backup di giochi
ita_UninstallStatusLabel =La scelta del metodo delete «{#NAME}»
ita_UninstallStatusLbl   =Attendere, eliminazione «{#NAME}»
ita_EllipsedTime         =Tempo trascorso:
ita_RemainingTime        =A sinistra:
ita_Cancel               =Fare clic su «Annulla» per uscire dall'installazione
ita_NextDisk             =Manca il disco:
ita_NextDisk1            =%nSi Prega di inserire il disco e attendere l'inizializzazione!
ita_WelcomeTitle         =Benvenuto!
ita_WelcomeLabel1        =Benvenuti nell'installazione%n«{#NAME}»
ita_WelcomeLabel3        =Prima di procedere all'installazione,%nsi consiglia di disattivare antivirus%ne chiudere i programmi in esecuzione!
ita_WizardUninstalling   =Stato di cancellazione
ita_Backup               =Fare una copia di salvataggio giochi
ita_Backup1              = Copiato:
ita_Backup2              = di:
ita_Backup3              =Stato copia:
#ifdef System
ita_DeviceDriver         =Il driver di periferica non viene rilevato
ita_NextLbl1             =Pensare prima di procedere!
ita_NextLbl2             =L'installazione non è possibile! Fai clic su «Annula» per uscire dall'installazione!
ita_NextLbl3             =Il sistema non è più supportato!
ita_NotSystem            =Impossible de déterminer la version du Windows!
ita_OperationSystem      =Sistema
ita_Processor            =Processore
ita_RAM                  =Memoria
ita_RAM1                 =RAM:
ita_RAM2                 =libera:
ita_RAM3                 =occupato:
ita_RAM4                 =File di paging:
ita_Req2                 =Tutti i componenti del computer%nsoddisfa i requisiti minimi per il gioco
ita_Req3                 =! ATTENZIONE  !%nIl computer non soddisfa i requisiti per il gioco!
ita_Req4                 =! ERRORE DI SISTEMA !%nSistema non ha installato è Windows!
ita_SoundCard            =Scheda audio
ita_System               =Requisiti di sistema
ita_VideoCard            =Scheda video
#endif
// Японский язык установки  シムズ™4
//=============================================================
#ifdef Components
jap_base                 = シムズ™4
jap_addon                = 拡張パック:
jap_addon1               = シムズ™4 仕事に取り掛かる
jap_addon2               = シムズ™4 同歡共樂
jap_addon3               = シムズ™4 都會生活
jap_addon4               = シムズ™4 猫&犬
jap_addon5               = シムズ™4 4季節
jap_addon6               = シムズ™4 有名な取得
jap_addon7               = シムズ™4 島での生活
jap_addon8               = シムズ™4 大学を発見する
jap_addon9               = シムズ™4 エコライフ
jap_addon10              = シムズ™4 雪のエスケープ
jap_addon11              = シムズ™4 コテージリビング
jap_pack                 = ゲームパック:
jap_pack1                = シムズ™4 屋外の隠れ家
jap_pack2                = シムズ™4 スパの日
jap_pack3                = シムズ™4 外食
jap_pack4                = シムズ™4 吸血鬼
jap_pack5                = シムズ™4 親子関係
jap_pack6                = シムズ™4 ジャングルの冒険
jap_pack7                = シムズ™4 StrangerVille
jap_pack8                = シムズ™4 魔法の世界
jap_pack9                = シムズ™4 スター-ウォーズ™ :バトゥーへの旅
jap_pack10               = シムズ™4 ドリーム・ホーム・デコレーター
jap_pack11               = シムズ™4 私の結婚式の物語
jap_stuff                = 追加の材料:
jap_stuff1               = シムズ™4 高級パーティー
jap_stuff2               = シムズ™4 パーフェクトパティオ
jap_stuff3               = シムズ™4 クールキッチン
jap_stuff4               = シムズ™4 不気味な
jap_stuff5               = シムズ™4 映画ハングアウト
jap_stuff6               = シムズ™4 ロマンチックな庭園
jap_stuff7               = シムズ™4 子供部屋
jap_stuff8               = シムズ™4 裏庭
jap_stuff9               = シムズ™4 ビンテージグラマー
jap_stuff10              = シムズ™4 ボウリングナイト
jap_stuff11              = シムズ™4 フィットネス
jap_stuff12              = シムズ™4 幼児
jap_stuff13              = シムズ™4 洗濯日
jap_stuff14              = シムズ™4 私の最初のペット
jap_stuff15              = シムズ™4 Moschino
jap_stuff16              = シムズ™4 小さな生活
jap_stuff17              = シムズ™4 ニフティニット
jap_stuff18              = シムズ™4 超常現象
jap_kits                 = チン:
jap_kits1                = シムズ™4 先祖返りフィット
jap_kits2                = シムズ™4 カントリーキッ
jap_kits3                = シムズ™4 バスト-ザ-ダスト
jap_kits4                = シムズ™4 中庭のオアシス
jap_kits5                = シムズ™4 ファッションストリート
jap_kits6                = シムズ™4 工业阁楼套件
jap_kits7                = シムズ™4 仁川到着
jap_kits8                = シムズ™4 モダンメンズ
jap_kits9                = シムズ™4 青々とした緑
jap_kits10               = シムズ™4 カーニバルストリートウェア
jap_kits11               = シムズ™4 マックスキットの装飾
jap_cont                 = 速達便
jap_ComponentsTitle      =インストールするゲームの選択
jap_ComponentsLabel      =インストールしたいゲームを選択してください。%n不要なゲームのチェックボックスをオフにします
jap_ComponentsLabel1     =%n次のゲームは、更新のために選択されています:
jap_Message13            =なゲームをインストール
jap_Message14            =%n%nあな を選択してくださいゲームにインストールを続けるよ！
jap_Message15            =%n[はい]をクリックし選択しゲームのイ
#endif
jap_About                =「シムズ™4」%n「シムズ™4ホリデーシーズンパック」%n「シムズ™4」 デジタルサウンドトラック%n「ノームのお出かけ」デジタルコンテンツ
jap_AboutLE              =「シムズ™4 レガシー版」%n「シムズ™4ホリデーシーズンパック」%n「シムズ™4」 デジタルサウンドトラック
jap_AboutAdd             =追加事項:%n%n「シムズ™4仕事に取り掛かる」%n「シムズ™4 同歡共樂」%n「シムズ™4 都會生活」%n「シムズ™4猫&犬」%n「シムズ™4季節」%n「シムズ™4有名な取得」%n「シムズ™4島での生活」%n「シムズ™4 大学を発見する」%n「シムズ™4 エコライフ」%n「シムズ™4 雪のエスケープ」%n「シムズ™4 コテージリビング」
jap_AboutAddle           =追加事項:%n%n「シムズ™4仕事に取り掛かる」%n「シムズ™4 同歡共樂」%n「シムズ™4 都會生活」%n「シムズ™4猫&犬」%n「シムズ™4季節」%n「シムズ™4有名な取得」%n「シムズ™4島での生活」
jap_AboutPack            =ゲームパック:%n%n「シムズ™4屋外の隠れ家」%n「シムズ™4スパの日」%n「シムズ™4外食」%n「シムズ™4吸血鬼」%n「シムズ™4親子関係」%n「シムズ™4ジャングルの冒険」%n「シムズ™4 StrangerVille」%n「シムズ™4 魔法の世界」%n「シムズ™4 Star Wars™: Journey to Batuu」%n「シムズ™4 ドリーム・ホーム・デコレーター」%n「シムズ™4 私の結婚式の物語」
jap_AboutPackle          =ゲームパック:%n%n「シムズ™4屋外の隠れ家」%n「シムズ™4スパの日」%n「シムズ™4外食」%n「シムズ™4吸血鬼」%n「シムズ™4親子関係」%n「シムズ™4ジャングルの冒険」%n「シムズ™4 StrangerVille」%n「シムズ™4 魔法の世界」
jap_AboutStuf            =追加の材料:%n%n「シムズ™4高級パーティー」%n「シムズ™4パーフェクトパティオ」%n「シムズ™4クールキッチン」%n「シムズ™4不気味な」%n「シムズ™4映画ハングアウト」%n「シムズ™4ロマンチックな庭園」%n「シムズ™4子供部屋」%n「シムズ™4裏庭」%n「シムズ™4ビンテージグラマー」%n「シムズ™4ボウリングナイト」%n「シムズ™4フィットネス」%n「シムズ™4幼児」%n「シムズ™4洗濯日」%n「シムズ™4私の最初のペット」%n「シムズ™4 Moshino」%n「シムズ™4 小さな生活」%n「シムズ™4 ニフティニット」%n「シムズ™4 超常現象」
jap_AboutStufle          =追加の材料:%n%n「シムズ™4高級パーティー」%n「シムズ™4パーフェクトパティオ」%n「シムズ™4クールキッチン」%n「シムズ™4不気味な」%n「シムズ™4映画ハングアウト」%n「シムズ™4ロマンチックな庭園」%n「シムズ™4子供部屋」%n「シムズ™4裏庭」%n「シムズ™4ビンテージグラマー」%n「シムズ™4ボウリングナイト」%n「シムズ™4フィットネス」%n「シムズ™4幼児」%n「シムズ™4洗濯日」%n「シムズ™4私の最初のペット」%n「シムズ™4 Moshino」
jap_AboutKits            =チン:%n%n「シムズ™4 先祖返りフィット」%n「シムズ™4 カントリーキッ」%n「シムズ™4 バスト-ザ-ダスト」%n「シムズ™4 中庭のオアシス」%n「シムズ™4 工业阁楼套件」%n「シムズ™4: 仁川到着」%n「シムズ™4: ファッションストリート」%n「シムズ™4: モダンメンズ」%n「シムズ™4: 青々とした緑」%n「シムズ™4: カーニバルストリートウェア」%n「シムズ™4: マックスキットの装飾」
jap_AboutCont            =速達便
jap_AboutCopy            ={#Copyright}%n%nゲームの32ビット版からファイルを削除！%n%n{#Autor}
jap_AboutCopyle          ={#Copyright}%n%nゲームの64ビット版のファイルを削除！%n%n{#Autor}
jap_AboutBuy             =あなたがこのゲームが好きなら、それを購入してください！
jap_AboutTnk             =のご支援、誠にありがとうございます
jap_AboutSetup           =インストールプログラムについて
jap_AllEllipsedTime      =インストール時間:
jap_AllProgress          =インストールの進捗状況：
jap_BrowseDialogLabel    =リストからフォルダを選択し、%n[はい]をクリックします。
jap_ButtonBack					 =< 戻る
jap_ButtonBrowse         =ブラウズ---
jap_ButtonCancel         =キャンセル
jap_ButtonFinish         =閉める
jap_ButtonInstall				 =インストール
jap_ButtonNext           =次へ>
jap_ButtonNo             =いいえ
jap_ButtonWizardBrowse   =閲覧フォルダ
jap_ButtonYes            =あり
jap_CancelTitle          =設置エラー
jap_Clean                =をクリックし「HDD」ディスクの清掃活動
jap_Clean1               =を「インストール」する前に、必ずアン「インストール」のゲームです！
jap_Close                =閉める
jap_Delete               =削除する
jap_DeleteName           =削除シムズ™4
jap_DeleteNameLE         =削除シムズ™4 レガシー版
jap_Desktop              =アイコン「シムズ™4」を自分のデスクトップ
jap_DesktopLang          =シムズ™4言語チェンジャー
jap_DesktopName          =シムズ™4
jap_DesktopLEName        =シムズ™4 レガシー版
jap_DirDesc              =インストールフォルダ
jap_DirectX              =DirectXイ
jap_DirectX1             =DirectX: 設置
jap_Display              =ザ-シムズ4:コレクター版
jap_EllipsedTime         =時間の経過:
jap_ExitSetupTitle       =出口からのインストーラ「シムズ™4」
jap_ExitSetupMessage     =「シムズ™4」のインストールが不完全です！%n終了すると、「シムズ™4」はインストールされません！%n%nインストーラ「シムズ™4」を終了しますか？
jap_FinishedLabel        =「シムズ™4」%nはあなたのコンピュータに正常にインストールされました
jap_FinishedLabel1       =今すぐ 「シムズ™4」を開始できます。%nまたは、[スタート]メニューまたはデスクト%nップのショートカットを選択します
jap_FinishedLabel2       =「閉める」をクリックしてインストールプログラムを終了します。
jap_FinishedTitle        =仕上がり、インスタレーション「シムズ™4」
jap_FreeSpace            =ご利用ディスクスペース：
jap_Gb                   = Gb
jap_Hour                 = hour
jap_Internet             =ザ-シムズ4:オンライン
jap_Lang                 =日本語
jap_Language             =を選択し、インターフェイスの言語のゲーム：
jap_License              =シムズ4エンドユーザー使用承諾契約書
jap_Mb                   = Mb
jap_Message1             =「はい」をクリックしてセットアッププログラムを終了するか、%n「いいえ」をクリックしてインストールを続行します。
jap_Message2             =あなたはシステムフォルダにインストールします！
jap_Message3             =%n%n「シムズ™4」をシステムフォルダにインストールすることはできません！%nもう一度お試しください。
jap_Message4             =%n[はい]をクリックしてインストールパスを変更します
jap_Message5             =「シムズ™4」の実行中のインストールが検出されました
jap_Message6             =「シムズ™4」の実行中のインストールインスタンスが検出されました%n%nインストールの複数のインスタンスを実行することは容認できません！%nインストールを続行するには、実行中のプロセスを終了する必要があります。
jap_Message7             =%n[はい]をクリックしてインストールを終了します。
jap_Message8             =あなたのコンピュータは危険です！
jap_Message9             =インストールファイルが変更されました！%n%nファイルがいっぱいであるか、または不当であるとは限りません。%nTorrentクライアントのファイルのハッシュを更新するか、%n別のソースからゲームをダウンロードする必要があります。
jap_Message10            =実行中のゲームを発見
jap_Message11            =%n%nインストールを続行すると、ゲームは自動的に終了し、%nゲームデータが失われる可能性があります！
jap_Message12            ="次へ"をクリックして続けるか%n"キャンセル"口を設置します
jap_Mhz                  = MHz
jap_Min                  = min
jap_Msgbox               =発見されたのゲームを設置%n「シムズ™4」
jap_Msgbox1              =をクリックし「遊び」のゲームです。%n「削除」ボタンを終了するには、%nプログラムの除去とその後のクリーン設置のゲームです%n%n%n%n%n%n%n%n「次へ」をクリックし更新のゲーム
jap_Msgbox2              =ゲームデータが失われました！%n%nゲームを削除するには、[削除]をクリックします。%n%n%n%n%n%n%n「次へ>」をクリックしインストール%nゲームに検出されたフォルダ
jap_Msgbox3              =現在のバージョンのゲーム%n「シムズ™4」v。
jap_NeedSpace            =インストールに必要:
jap_NeedUpdate           =更新に必要:
jap_NextLbl              =「次へ」をクリックして続け
jap_NoProgramGroupCheck2 =なフォルダの作成「でスタートメニュー」
jap_Play                 =のゲーム「シムズ™4」
jap_PlayName             =シムズ™4をプレイ
jap_PlayLEName           =シムズ™4 レガシー版 をプレイ
jap_Readme               =私を読んで
jap_Redist               =追加のソフトウェア:
jap_RedistDirectX        =のDirectX設置---
jap_RedistProgress       =追加インストールソフトウェア
jap_RedistTitle          =設置の追加ソフトウェア
jap_RedistVisual10       =更新VisualC++ 2010の---
jap_RedistVisual13        =イVisualC++ 2013年...
jap_RedistVisual19        =イVisualC++ 2015-2019年...
jap_RedistWait           =までしばらくお待ちください。
jap_RemainingTime        =は:
jap_Remains              =残り時間:
jap_IconsTitle           =ゲームを起動する準備
jap_ReqLabel             =トゲームショートカット登録簿の作品の応募がありました。..
jap_Screenshots          =スクリーンショット
jap_Sec                  = sec
jap_SelectDirLabel       =が必要でクリーンにディスクにインストールで！
jap_SelectDirLabel1      =ゲーム「シムズ™4」のインストールフォルダ:
jap_SelectDirLabel2      =ゲームを更新するための十分なスペースがありません「シムズ™4」
jap_SelectDirLabel3      =プログラム更新「シムズ™4」：
jap_SelectStartMenu      =プログラムは、メニューのショートカット「開始」を更新：
jap_SelectStartMenuLbl3  =フォルダのショートカット「をスタートメニュー」：
jap_SelectTasksEditLabel =インストールしたくないコンポーネントのチェックボックスをオフにして、%n[インストール]をクリックします。
jap_SelectTasksLabel     =「シムズ™4」のインストール後に実行される追加のタスクを選択します。
jap_SetupAborted         =「シムズ™4」のインストールが中断されました。%n%n問題を解決し、インストールを再試行してください ...
jap_SetupAppTitle        =「シムズ™4」のインストール
jap_SetupAppTitle1       =「シムズ™4」を更新します
jap_Start                =遊ぶ
jap_StatusRollback       =変更を元に戻します。%nインストールファイルを削除しています...
jap_Support              =テクニカルサポート
jap_Taskbar              =タスクバーの「シムズ™4」アイコン
jap_TasksName            =その他のタスク
jap_Tb                   = Tb
jap_Thanks               =プロジェクトに感謝%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkel®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%n特別な感謝%nデータ圧縮コミュニティのすべての友人%nkrinkels.org
jap_TotalSpace           =ハードドライブのサイズ：
jap_UninstalMsg          =「削除」をクリックして削除を続行するか、%n「キャンセル」をクリックしてアンインストールプログラムを終了します。
jap_UninstalMsg1         = 「シムズ™4」を削除
jap_UninstalMsg2         = 「シムズ™4」を削除して保存ゲームを削除する
jap_UninstalMsg3         = 「シムズ™4」を削除し、保存ゲームを削除してバックアップを削除してください
jap_UninstallStatusLabel =削除方法を選択してください「シムズ™4」
jap_UninstallStatusLbl   =「シムズ™4」の削除をお待ちください
jap_Videos               =録画したビデオ
jap_VisualC              =VisualC++ 2013をインストールします。
jap_VisualC1             =VisualC++ 2013：インストール済み
jap_VisualC19            =VisualC++ 2015-2019をインストールします。
jap_VisualC119           =VisualC++ 2015-2019：インストール済み
jap_VisualCU             =VisualC++ 2010を更新する
jap_VisualCU1            =VisualC++ 2010sp1：更新されました
jap_Cancel               =「キャンセル」をクリックして口の設置
jap_NextDisk             =ドライブが見つかりません：
jap_NextDisk1            =%nディスクを挿入して、ディスクが初期化されるまで待ってください！
jap_WelcomeLabel1        =歓迎のセットアッププログラム%n「シムズ™4」
jap_WelcomeLabel3        =インストールする前に、ウイルス対策を無効にして、%n実行中のアプリケーションをすべて終了することをお勧めします。
jap_WelcomeTitle         =大歓迎です！
jap_WizardUninstalling   =削除ステータス
jap_Backup               =セーブゲームのコピーを作成する
jap_Backup1              = コピー：
jap_Backup2              = 合計の：
jap_Backup3              =コピーステータス：
#ifdef System
jap_DeviceDriver         =デバイスドライバが見つかりませんでした
jap_NextLbl1             =あなたが続ける前に考える！ ゲームの安定性は保証されません！
jap_NextLbl2             =インストールはできません！ インストールを終了するには、[キャンセル]をクリックしてください。
jap_NextLbl3             =お使いのシステムは、もはやサポートされていません！
jap_NotSystem            =システムのバージョンを決定することは不可能です！
jap_OperationSystem      =システム
jap_Processor            =プロセッサー
jap_RAM                  =メモリ
jap_RAM1                 =RAM：
jap_RAM2                 =自由に：
jap_RAM3                 =ビジー：
jap_RAM4                 =スワップファイル：
jap_Req2                 =コンピュータのすべてのコンポーネントがゲームの最小要件を満たしている
jap_Req3                 =! 注意！%nコンピュータがゲームの最小要件を満たしていない！
jap_Req4                 =! システムエラー！%nおそらく、インストールされたシステムはWindowsではありません！
jap_SoundCard            =サウンドカード
jap_System               =システム要件
jap_VideoCard            =ビデオアダプタ
#endif
// Корейский язык установки
//=============================================================
#ifdef Components
kor_base                 = 심™4
kor_addon                = 확장 팩:
kor_addon1               = 심™4 일하러 가다
kor_addon2               = 심™4 모두 함께 놀아요
kor_addon3               = 심™4 시끌벅적 도시 생활
kor_addon4               = 심™4 고양이와 개들
kor_addon5               = 심™4 시즌
kor_addon6               = 심™4 스타 탄생
kor_addon7               = 심™4 아일랜드 라이프
kor_addon8               = 심™4 디스 커버 대학교
kor_addon9               = 심™4 에코 라이프 확장팩
kor_addon10              = 심™4 눈 탈출
kor_addon11              = 심™4 코티지 라이프
kor_pack                 = 재생 세트:
kor_pack1                = 심™4 캠핑을 떠나요
kor_pack2                = 심™4 스파 데이
kor_pack3                = 심™4 외식하기 좋은날
kor_pack4                = 심™4 뱀파이어"%n"심
kor_pack5                = 심™4 육아 일기
kor_pack6                = 심™4 정글의 모험
kor_pack7                = 심™4 스트레인저빌
kor_pack8                = 심™4 마법의 나라*가
kor_pack9                = 심™4 스타워즈: 바투 행성의 모험
kor_pack10               = 심™4 나의 드림하우스 게임팩은
kor_pack11               = 심™4 내 결혼식 이야기
kor_stuff                = 카탈로그:
kor_stuff1               = 심™4 럭셔리 파티
kor_stuff2               = 심™4 완벽한 테라스 아이템팩
kor_stuff3               = 심™4 즐거운 주방 아이템팩
kor_stuff4               = 심™4 오싹오싹 아이템팩
kor_stuff5               = 심™4 영화보는 날 아이템팩
kor_stuff6               = 심™4 로맨틱 가든 아이템팩
kor_stuff7               = 심™4 키즈룸 아이템팩
kor_stuff8               = 심™4 마당 꾸미기 아이템팩
kor_stuff9               = 심™4 빈티지 홈 아이템팩
kor_stuff10              = 심™4 즐거운 볼링 아이템팩
kor_stuff11              = 심™4 피트니스 아이템팩
kor_stuff12              = 심™4 토들러 아이템팩
kor_stuff13              = 심™4 세탁의 날
kor_stuff14              = 심™4 첫 번째 애완 동물
kor_stuff15              = 심™4 Moschino
kor_stuff16              = 심™4 미니멀 라이프
kor_stuff17              = 심™4 뚝딱뚝딱 뜨개질
kor_stuff18              = 심™4 파라노멀
kor_kits                 = 키트:
kor_kits1                = 심™4 레트로 패션ト
kor_kits2                = 심™4 컨트리 키친
kor_kits3                = 심™4 대청소의 날
kor_kits4                = 심™4 코트야드 오아시스
kor_kits5                = 심™4 패션 거리
kor_kits6                = 심™4 인더스트리얼 스타일
kor_kits7                = 심™4 인천 도착
kor_kits8                = 심™4 모던 맨즈웨어
kor_kits9                = 심™4 무성한 녹색
kor_kits10               = 심™4 카니발 스트리트웨어
kor_kits11               = 심™4 맥시멀 데코
kor_cont                 = 급행 납품
kor_ComponentsTitle      =설치할 게임 선택
kor_ComponentsLabel      =설치할 게임을 선택하십시오.%n설치할 필요가없는 게임의 확인란을 선택 취소하십시오.
kor_ComponentsLabel1     =%n업데이트를 위해 다음 게임이 선택됩니다:
kor_Message13            =아 게임을 선택한 설치
kor_Message14            =%n당신이 선택하지 않은 모든 게임!%n%n을 선택해야 합니다 게임을 설치를 계속합니다!
kor_Message15            =%n"예"를 클릭하여 선택한 게임을 설치
#endif
kor_About                ="심™4"%n"심™4 즐거운 연휴 팩"%n"심™4" 디지털 사운드트랙%n난쟁이 요정 특전 디지털 콘텐츠
kor_AboutLE              ="심™4 레거시 에디션"%n"심™4 즐거운 연휴 팩"%n"심™4" 디지털 사운드트랙
kor_AboutAdd             =추가 사항:%n%n"심™4 일하러 가다"%n"심™4 모두 함께 놀아요"%n"심™4 시끌벅적 도시 생활"%n"심™4 고양이와 개들"%n"심™4 시즌"%n"심™4 스타 탄생"%n"심™4 아일랜드 라이프"%n"심™4 디스 커버 대학교"%n"심™4 에코 라이프 확장팩"%n"심™4 눈 탈출"%n"심™4 코티지 라이프"
kor_AboutAddle           =추가 사항:%n%n"심™4 일하러 가다"%n"심™4 모두 함께 놀아요"%n"심™4 시끌벅적 도시 생활"%n"심™4 고양이와 개들"%n"심™4 시즌"%n"심™4 스타 탄생"%n"심™4 아일랜드 라이프"
kor_AboutPack            =재생 세트:%n%n"심™4 캠핑을 떠나요"%n"심™4 스파 데이"%n"심™4 외식하기 좋은날"%n"심™4 뱀파이어"%n"심™4 육아 일기"%n"심™4 정글의 모험"%n"심™4 스트레인저빌"%n"심™4 마법의 나라*가"%n"심™4 스타워즈: 바투 행성의 모험"%n"심™4 나의 드림하우스 게임팩은"%n"심™4 내 결혼식 이야기"
kor_AboutPackle          =재생 세트:%n%n"심™4 캠핑을 떠나요"%n"심™4 스파 데이"%n"심™4 외식하기 좋은날"%n"심™4 뱀파이어"%n"심™4 육아 일기"%n"심™4 정글의 모험"%n"심™4 스트레인저빌"%n"심™4 마법의 나라*가"
kor_AboutStuf            =카탈로그:%n%n"심™4 럭셔리 파티"%n"심™4 완벽한 테라스 아이템팩"%n"심™4 즐거운 주방 아이템팩"%n"심™4 오싹오싹 아이템팩"%n"심™4 영화보는 날 아이템팩"%n"심™4 로맨틱 가든 아이템팩"%n"심™4 키즈룸 아이템팩"%n"심™4 마당 꾸미기 아이템팩"%n"심™4 빈티지 홈 아이템팩"%n"심™4 즐거운 볼링 아이템팩"%n"심™4 피트니스 아이템팩"%n"심™4 토들러 아이템팩"%n"심™4 세탁의 날"%n"심™4 첫 번째 애완 동물"%n"심™4 Moshino"%n"심™4 미니멀 라이프"%n"심™4 뚝딱뚝딱 뜨개질"%n"심™4 파라노멀"
kor_AboutStufle          =카탈로그:%n%n"심™4 럭셔리 파티"%n"심™4 완벽한 테라스 아이템팩"%n"심™4 즐거운 주방 아이템팩"%n"심™4 오싹오싹 아이템팩"%n"심™4 영화보는 날 아이템팩"%n"심™4 로맨틱 가든 아이템팩"%n"심™4 키즈룸 아이템팩"%n"심™4 마당 꾸미기 아이템팩"%n"심™4 빈티지 홈 아이템팩"%n"심™4 즐거운 볼링 아이템팩"%n"심™4 피트니스 아이템팩"%n"심™4 토들러 아이템팩"%n"심™4 세탁의 날"%n"심™4 첫 번째 애완 동물"%n"심™4 Moshino"
kor_AboutKits            =키트:%n%n"심™4 레트로 패션"%n"심™4 컨트리 키친"%n"심™4 대청소의 날"%n"심™4 코트야드 오아시스"%n"심™4 인더스트리얼 스타일"%n"심™4: 인천 도착"%n"심™4: 패션 거리"%n"심™4: 모던 맨즈웨어"%n"심™4: 무성한 녹색"%n"심™4: 카니발 스트리트웨어"%n"심™4: 맥시멀 데코"
kor_AboutCont            =급행 납품
kor_AboutCopy            ={#Copyright}%n%n게임의 32 비트 버전에서 제거 된 파일!%n%n{#Autor}
kor_AboutCopyle          ={#Copyright}%n%n게임의 64 비트 버전의 파일을 제거!%n%n{#Autor}
kor_AboutBuy             =이 게임이 마음에 드시면 구매하십시오!
kor_AboutTnk             =프로젝트 지원에 감사드립니다
kor_AboutSetup           =설치 프로그램 정보
kor_AllEllipsedTime      =설치 시간:
kor_AllProgress          =설치 진행:
kor_BrowseDialogLabel    =목록에서 폴더를 선택하고%n"예"를 클릭하십시오.
kor_ButtonBack					 =< 뒤로
kor_ButtonBrowse         =리뷰 ...
kor_ButtonCancel         =취소
kor_ButtonFinish         =마침
kor_ButtonInstall				 =설치
kor_ButtonNext           =다음 >
kor_ButtonNo             =아니요
kor_ButtonWizardBrowse   =폴더 찾아보기
kor_ButtonYes            =예
kor_CancelTitle          =설치 오류
kor_Clean                =클릭"HDD"아이콘을 시작하는 디스크 정리
kor_Clean1               =설치하기 전에 제거해야 합니다!
kor_Close                =종료
kor_Delete               =삭제
kor_DeleteName           =을 제거 심™4
kor_DeleteNameLE         =을 제거 심™4 판 유산을 제거하려면
kor_Desktop              =바탕 화면에 "심™4" 아이콘
kor_DesktopLang          =심™4 언어 체인저
kor_DesktopName          =심™4
kor_DesktopLEName        =심™4 레거시 에디션
kor_DirDesc              =설치 폴더
kor_DirectX              =DirectX 설치
kor_DirectX1             =DirectX : 설치됨
kor_Display              =심™4:수집가의 판
kor_EllipsedTime         =시간이 지났습니다:
kor_ExitSetupTitle       ="심™4" 설치 프로그램을 종료합니다
kor_ExitSetupMessage     ="심™4" 의 설치가 완료되지 않았습니다!%n종료하면 "심™4" 이 (가) 설치되지 않습니다!%n%n"심™4"설치 프로그램을 종료 하시겠습니까??
kor_FinishedLabel        ="심™4" 이 (가) 컴퓨터에 설치되었습니다.
kor_FinishedLabel1       =시작 메뉴 또는 바탕 화면에서 적절한 바로 가기를 선택하여 "심™4"%n을 지금 또는 나중에 시작할 수 있습니다.
kor_FinishedLabel2       ="마침"을 클릭하여 설치 프로그램을 종료하십시오
kor_FinishedTitle        ="심™4" 설치 완료
kor_FreeSpace            =사용 가능한 디스크 공간:
kor_Gb                   = Gb
kor_GroupLE              =The Sims 4 레거시 에디션
kor_Hour                 = 시간
kor_Internet             =심™4:온라인
kor_Lang                 =한국어 
kor_Language             =게임의 인터페이스 언어를 선택하십시오:
kor_LocaleLEName         ={#NAME} 레거시 에디션
kor_License              =심4 소프트웨어 최종사용자 라이선스 계약
kor_Mb                   = Mb
kor_Message1             ="예"를 클릭하여 설치 프로그램을 종료하거나%n"아니오"를 클릭하여 설치를 계속하십시오.
kor_Message2             =시스템 폴더에 설치!
kor_Message3             =%n%n"심™4" 을 (를) 시스템 폴더에 설치할 수 없습니다!%n다시 시도하십시오..
kor_Message4             =%n설치 경로를 변경하려면 "예"를 클릭하십시오.
kor_Message5             ="심™4" 의 실행중인 설치가 감지되었습니다.
kor_Message6             ="심™4" 의 실행중인 설치 인스턴스가 감지되었습니다.%n%n여러 설치 인스턴스를 실행하는 것은 용납 될 수 없습니다!%n설치를 계속하려면 실행중인 프로세스를 닫아야합니다.
kor_Message7             =%n"예"를 클릭하여 설치를 종료하십시오.
kor_Message8             =컴퓨터가 위험합니다!
kor_Message9             =설치 파일이 수정되었습니다!%n%n파일이 완전히 다운로드되지 않았거나 손상되었을 수 있습니다!%n토렌트 클라이언트의 파일 해시를 업데이트해야합니다%n또는 다른 출처에서 게임을 다운로드하십시오!
kor_Message10            =발견한 게임을 실행합니다
kor_Message11            =%n%n계속할 경우 설치,게임이 자동으로 닫고 게임 데이터가%n손실될 수 있습니다!
kor_Message12            ="다음"을 클릭하여 계속%n또는"취소"설치 프로그램을 종료 합니다
kor_Mhz                  = MHz
kor_Min                  = 광산
kor_Msgbox               =설치된 게임을 찾았습니다%n"심™4"
kor_Msgbox1              =게임을 시작하려면 "재생"을 클릭하십시오.%n삭제를 위해 프로그램을 종료하려면 "삭제"를 누르십시오.%n그 다음에 게임을 새로 설치합니다.%n%n%n%n%n%n%n%n"다음"을 클릭하여 게임을 업데이트하십시오.
kor_Msgbox2              =게임 데이터가 손실됩니다!%n%n게임을 삭제하려면 "삭제"를 클릭하십시오.%n%n%n%n%n%n%n탐지 된 폴더에 게임을%n설치하는 "다음"
kor_Msgbox3              =최신 버전의 게임이 있습니다%n"심™4" v.
kor_NeedSpace            =임명을 위해 요구되는:
kor_NeedUpdate           =업데이트 필수:
kor_NextLbl              =계속하려면 "다음"을 클릭하십시오
kor_NoProgramGroupCheck2 ="시작 메뉴"에서 폴더를 만들지 마십시오
kor_Play                 ="심™4" 게임 시작
kor_PlayName             =심즈 게임을 플레이하™4
kor_PlayLEName           =심즈 게임을 플레이하™4 레거시 에디션
kor_Readme               =추가정보
kor_Redist               =추가 소프트웨어 :
kor_RedistDirectX        =DirectX 설치 중 ...
kor_RedistProgress       =추가 소프트웨어 설치가 있습니다
kor_RedistTitle          =추가 소프트웨어 설치
kor_RedistVisual10       =VisualC++ 2010 업데이트 중 ...
kor_RedistVisual13       =VisualC++ 2013 설치 중 ...
kor_RedistVisual19       =VisualC++ 2015-2019 설치 중 ...
kor_RedistWait           =끝날 때까지 기다려주세요!
kor_RemainingTime        =남아 있습니다 :
kor_Remains              =남은 시간 :
kor_IconsTitle           =게임 시작 준비
kor_ReqLabel             =게임 바로 가기 및 레지스트리 항목을 설치합니다...
kor_Sec                  = 초
kor_SelectDirLabel       =정리가 필요하거나 다른 드라이브를 선택하십시오!
kor_SelectDirLabel1      =설치 폴더의 게임 "심™4":
kor_SelectDirLabel2      ="심™4" 을 (를) 업데이트 할 공간이 부족합니다
kor_SelectDirLabel3      =프로그램으로 업데이트 "심™4":
kor_SelectStartMenu      =프로그램 업데이트 메뉴 바로가기"시작":
kor_SelectStartMenuLbl3  =폴더를 바로 가기에서"시작 메뉴":
kor_SelectTasksEditLabel =설치할 구성 요소의 선택을 취소하십시오%n필요하지 않은 다음 "설치"를 클릭하십시오
kor_SelectTasksLabel     =수행 할 추가 작업 선택%n"심™4" 설치 후
kor_SetupAborted         ="심™4" 의 설치가 중단되었습니다!%n%n문제를 해결하고 설치를 다시 시작하십시오 ...
kor_SetupAppTitle        ="심™4" 설치 중
kor_SetupAppTitle1       =업데이트 "심™4"
kor_Start                =재생
kor_StatusRollback       =롤백 변경.%n설치 파일 삭제 중 ...
kor_Support              =기술 지원
kor_Taskbar              =작업 표시 줄의 "심™4" 아이콘
kor_TasksName            =추가 작업
kor_Tb                   = Tb
kor_Thanks               =프로젝트 주셔서 감사합니다%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkel®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%n특별 감사%n데이터 압축 커뮤니티의 모든 친구들%nkrinkels.org
kor_TotalSpace           =하드 드라이브 크기:
kor_UninstalMsg          =삭제를 계속하려면 "삭제"를 클릭하고,%n또는 "취소"를 클릭하여 제거 프로그램을 종료하십시오
kor_UninstalMsg1         = 제거하다 "심™4"
kor_UninstalMsg2         = 제거하다 "심™4" + 게임을 저장하다
kor_UninstalMsg3         = 제거하다 "심™4" + 게임 + 백업 저장
kor_UninstallStatusLabel ="심™4"삭제 방법을 선택하십시오
kor_UninstallStatusLbl   ="심™4"삭제가 완료 될 때까지 기다려주세요.
kor_VisualC              =VisualC++ 2013 설치
kor_VisualC1             =VisualC++ 2013: 설치됨
kor_VisualC19            =VisualC++ 2015-2019 설치
kor_VisualC119           =VisualC++ 2015-2019: 설치됨
kor_VisualCU             =VisualC++ 2010 업데이트
kor_VisualCU1            =VisualC++ 2010sp1 : 업데이트 됨
kor_Cancel               ="취소"를 클릭하여 설치를 종료하십시오.
kor_NextDisk             =누락 된 드라이브:
kor_NextDisk1            =%n디스크를 넣고 디스크가 초기화 될 때까지 기다리십시오!
kor_WelcomeLabel1        =설치 프로그램에 오신 것을 환영합니다%n"심™4"
kor_WelcomeLabel3        =설치하기 전에,%n바이러스 백신을 사용하지 않도록 설정하는 것이%n좋습니다 실행중인 모든 응용 프로그램을 닫습니다!
kor_WelcomeTitle         =환영합니다!
kor_WizardUninstalling   =삭제 상태
kor_Backup               =저장 게임의 복사본 만들기
kor_Backup1              = 복사 됨:
kor_Backup2              = ~에서:
kor_Backup3              =상태 복사:
#ifdef System
kor_DeviceDriver         =장치 드라이버를 찾을 수 없습니다.
kor_NextLbl1             =계속하기 전에 생각 해봐! 게임의 안정성은 보장되지 않습니다!
kor_NextLbl2             =설치가 불가능합니다! 설치를 종료하려면 "취소"를 클릭하십시오!
kor_NextLbl3             =시스템이 더 이상 지원되지 않습니다!
kor_NotSystem            =시스템의 버전을 결정하는 것은 불가능합니다!
kor_OperationSystem      =시스템
kor_Processor            =프로세서
kor_RAM                  =메모리
kor_RAM1                 =RAM :
kor_RAM2                 =자유롭게:
kor_RAM3                 =사용 중:
kor_RAM4                 =스왑 파일:
kor_Req2                 =컴퓨터의 모든 구성 요소%n게임의 최소 요구 사항을 충족시킨다.
kor_Req3                 =! 주의 !%n컴퓨터가 게임의 최소 요구 사항을 충족하지 못합니다!
kor_Req4                 =! 시스템 오류 !%n아마도 설치된 시스템이 Windows가 아닙니다!
kor_SoundCard            =사운드 카드
kor_System               =시스템 요구 사항
kor_VideoCard            =비디오 어댑터
#endif
// Нидерландский язык установки
//=============================================================
#ifdef Components
ned_base                 = {#NAME_NL}
ned_addon                = Uitbreidingspakket:
ned_addon1               = {#NAME_NL}: Aan het Werk
ned_addon2               = {#NAME_NL}: Beleef het Samen
ned_addon3               = {#NAME_NL}: Stedelijk Leven
ned_addon4               = {#NAME_NL}: Honden en Katten
ned_addon5               = {#NAME_NL}: Jaargetijden
ned_addon6               = {#NAME_NL}: Word Beroemd
ned_addon7               = {#NAME_NL}: Eiland Leven
ned_addon8               = {#NAME_NL}: Ontdek de universiteit
ned_addon9               = {#NAME_NL}: Ecologisch leven
ned_addon10              = {#NAME_NL}: Snowy Escape
ned_addon11              = {#NAME_NL}: Landelijk Leven
ned_pack                 = Game Packs:
ned_pack1                = {#NAME_NL}: In de Natuur
ned_pack2                = {#NAME_NL}: Wellnessdag
ned_pack3                = {#NAME_NL}: Uit Eten
ned_pack4                = {#NAME_NL}: Vampieren
ned_pack5                = {#NAME_NL}: Ouderschap
ned_pack6                = {#NAME_NL}: Jungle Avonturen
ned_pack7                = {#NAME_NL}: StrangerVille
ned_pack8                = {#NAME_NL}: Magisch Rijk
ned_pack9                = {#NAME_NL}: Star Wars™: Journey to Batuu 
ned_pack10               = {#NAME_NL}: Interieurdesigner 
ned_pack11               = {#NAME_NL}: Mijn Trouwverhalen
ned_stuff                = Accessoirespakkets:
ned_stuff1               = {#NAME_NL}: Luxe Feest
ned_stuff2               = {#NAME_NL}: Perfecte Patio
ned_stuff3               = {#NAME_NL}: Coole Keuken
ned_stuff4               = {#NAME_NL}: Griezelige
ned_stuff5               = {#NAME_NL}: Filmavond
ned_stuff6               = {#NAME_NL}: Romantische
ned_stuff7               = {#NAME_NL}: Kinderkamer
ned_stuff8               = {#NAME_NL}: Achtertuin
ned_stuff9               = {#NAME_NL}: Vintage Glamour
ned_stuff10              = {#NAME_NL}: Bowlingavond
ned_stuff11              = {#NAME_NL}: Fitness
ned_stuff12              = {#NAME_NL}: Peuter
ned_stuff13              = {#NAME_NL}: Wasgoed
ned_stuff14              = {#NAME_NL}: Mijn Eerste Huisdieren
ned_stuff15              = {#NAME_NL}: Moschino
ned_stuff16              = {#NAME_NL}: Klein Wonen
ned_stuff17              = {#NAME_NL}: Uitgebreid Breien
ned_stuff18              = {#NAME_NL}: Paranormaal
ned_kits                 = Kits:
ned_kits1                = {#NAME_NL}: Retro Outfit
ned_kits2                = {#NAME_NL}: Landelijke Keuken
ned_kits3                = {#NAME_NL}: Alles Aan Kant
ned_kits4                = {#NAME_NL}: Binnenplaats Oase
ned_kits5                = {#NAME_NL}: Fashion Street
ned_kits6                = {#NAME_NL}: Industriële Loft
ned_kits7                = {#NAME_NL}: Incheon Style
ned_kits8                = {#NAME_NL}: Moderne Mannenmode
ned_kits9                = {#NAME_NL}: Weelderig groen
ned_kits10               = {#NAME_NL}: Zomerse Carnavalsmode
ned_kits11               = {#NAME_NL}: Maximalistisch Interieur
ned_cont                 = Expreslevering
ned_ComponentsTitle      =Selectie van games om te installeren
ned_ComponentsLabel      =Selecteer de games die u wilt installeren.%nSchakel selectievakjes uit voor games die u niet hoeft te installeren.
ned_ComponentsLabel1     =De volgende spellen zijn geselecteerd%nvoor de update:
ned_Message13            =Geen spellen geselecteerd voor installatie
ned_Message14            =%nJe hebt geen spel gekozen!%n%nU moet een spel selecteren om de installatie voort te zetten!
ned_Message15            =%nKlik op «Ja» om de te installeren spellen te selecteren
#endif
ned_About                =«{#NAME_NL}»%n«{#NAME_NL} Feestdagenpakket»%nDigitale soundtrack van «{#NAME_NL}»%nDigitale content «Kabouterrit»
ned_AboutLE              =«{#NAME_NL} Legacy Uitgave»%n«{#NAME_NL} Feestdagenpakket»%nDigitale soundtrack van «{#NAME_NL}»
ned_AboutAdd             =Toevoegingen:%n%n«{#NAME_NL} Aan het Werk»%n«{#NAME_NL} Beleef het Samen»%n«{#NAME_NL} Stedelijk Leven»%n«{#NAME_NL} Honden en Katten»%n«{#NAME_NL} Jaargetijden»%n«{#NAME_NL} Word Beroemd»%n«{#NAME_NL} Eiland Leven»%n«{#NAME_NL} Ontdek de universiteit»%n«{#NAME_NL} Ecologisch leven»%n«{#NAME_NL} Snowy Escape»%n«{#NAME_NL} Landelijk Leven»
ned_AboutAddle           =Toevoegingen:%n%n«{#NAME_NL} Aan het Werk»%n«{#NAME_NL} Beleef het Samen»%n«{#NAME_NL} Stedelijk Leven»%n«{#NAME_NL} Honden en Katten»%n«{#NAME_NL} Jaargetijden»%n«{#NAME_NL} Word Beroemd»%n«{#NAME_NL} Eiland Leven»
ned_AboutPack            =Game Pack:%n%n«{#NAME_NL} In de Natuur»%n«{#NAME_NL} Wellnessdag»%n«{#NAME_NL} Uit Eten»%n«{#NAME_NL} Vampieren»%n«{#NAME_NL} Ouderschap»%n«{#NAME_NL} Jungle Avonturen»%n«{#NAME} StrangerVille»%n«{#NAME} Magisch Rijk»%n«{#NAME_NL} Star Wars™: Journey to Batuu»%n«{#NAME_NL} Interieurdesigner»%n«{#NAME_NL} Mijn Trouwverhalen»
ned_AboutPackle          =Game Pack:%n%n«{#NAME_NL} In de Natuur»%n«{#NAME_NL} Wellnessdag»%n«{#NAME_NL} Uit Eten»%n«{#NAME_NL} Vampieren»%n«{#NAME_NL} Ouderschap»%n«{#NAME_NL} Jungle Avonturen»%n«{#NAME} StrangerVille»%n«{#NAME} Magisch Rijk»
ned_AboutStuf            =Accessoirespakkets:%n%n«{#NAME_NL} Luxe Feest»%n«{#NAME_NL} Perfecte Patio»%n«{#NAME_NL} Coole Keuken»%n«{#NAME_NL} Griezelige»%n«{#NAME_NL} Filmavond»%n«{#NAME_NL} Romantische»%n«{#NAME_NL} Kinderkamer»%n«{#NAME_NL} Achtertuin»%n«{#NAME_NL} Vintage Glamour»%n«{#NAME_NL} Bowlingavond»%n«{#NAME_NL} Fitness»%n«{#NAME_NL} Peuter»%n«{#NAME_NL} Wasgoed»%n«{#NAME_NL} Mijn Eerste Huisdieren»%n«{#NAME_NL} Moshino»%n«{#NAME_NL} Klein Wonen»%n«{#NAME_NL} Uitgebreid Breien»%n«{#NAME_NL} Paranormaal»
ned_AboutStufle          =Accessoirespakkets:%n%n«{#NAME_NL} Luxe Feest»%n«{#NAME_NL} Perfecte Patio»%n«{#NAME_NL} Coole Keuken»%n«{#NAME_NL} Griezelige»%n«{#NAME_NL} Filmavond»%n«{#NAME_NL} Romantische»%n«{#NAME_NL} Kinderkamer»%n«{#NAME_NL} Achtertuin»%n«{#NAME_NL} Vintage Glamour»%n«{#NAME_NL} Bowlingavond»%n«{#NAME_NL} Fitness»%n«{#NAME_NL} Peuter»%n«{#NAME_NL} Wasgoed»%n«{#NAME_NL} Mijn Eerste Huisdieren»%n«{#NAME_NL} Moshino»
ned_AboutKits            =Kits:%n%n«{#NAME_NL} Retro Outfit»%n«{#NAME_NL} Landelijke Keuken»%n«{#NAME_NL} Alles Aan Kant»%n«{#NAME_NL} Binnenplaats Oase»%n«{#NAME_NL} Industriële Loft»%n«{#NAME_NL} Incheon Style»%n«{#NAME_NL} Fashion Street»%n«{#NAME_NL} Moderne Mannenmode»%n«{#NAME_NL} Weelderig groen»%n«{#NAME_NL} Zomerse Carnavalsmode»%n«{#NAME_NL} Maximalistisch Interieur»
ned_AboutCont            =Expreslevering
ned_AboutCopy            ={#Copyright}%n%nBestanden verwijderd van de 32-bit versie van het spel!%n%n{#Autor}
ned_AboutCopyle          ={#Copyright}%n%nBestanden verwijderd uit de 64-bit versie van het spel!%n%n{#Autor}
ned_AboutBuy             =Als je dit spel, KOPEN!
ned_AboutTnk             =Dank u voor uw steun aan het project
ned_AboutSetup           =Over het installatieprogramma
ned_AllEllipsedTime      =Installatietijd:
ned_AllProgress          =Setup vooruitgang:
ned_ButtonBack					 =< Back
ned_ButtonCancel         =Annuleren
ned_ButtonFinish         =Finish
ned_ButtonInstall				 =Install
ned_ButtonNext           =Volgende >
ned_ButtonBrowse         =Bladeren ...
ned_ButtonWizardBrowse   =Bladeren map
ned_BrowseDialogLabel    =Selecteer een map in de lijst %nen klik op «Ja»
ned_ButtonNo             =Geen
ned_ButtonYes            =Yes
ned_ExitSetupTitle       =Verlaat het installatieprogramma «{#NAME_NL}»
ned_ExitSetupMessage     =Installatie «{#NAME_NL}» is voltooid!%nAls u afrit «{#NAME_NL}» wordt niet geïnstalleerd!%n%nVerlaat het installatieprogramma «{#NAME_NL}»?
ned_NoProgramGroupCheck2 =Vergeet niet een map «Menu Start» niet aanmaken
ned_CancelTitle          =Fouten in de installatie
ned_Clean                =Klik op «HDD» icoon om de Schijfopruiming te starten
ned_Clean1               =Voor het installeren, moet je het spel te verwijderen!
ned_Close                =Dicht
ned_Delete               =Verwijderen
ned_Desktop              =Icoon «{#NAME_NL}» op het bureaublad
ned_DirDesc              =Installatiemap
ned_DirectX              =Installeer DirectX
ned_DirectX1             =DirectX: Geïnstalleerd
ned_FinishedLabel        =Het «{#NAME_NL}» is met succes geïnstalleerd op uw computer
ned_FinishedLabel1       =U kunt «{#NAME}» nu of later beginnen met het selecteren van de overeenkomstige snelkoppeling in het menu «Start» of op het bureaublad.
ned_FinishedLabel2       =Klik op «Finish»%nom de installatie af te sluiten
ned_FinishedTitle        =De installatie voltooien «{#NAME_NL}»
ned_FreeSpace            =Beschikbare schijfruimte:
ned_Hour                 = uur
ned_Lang                 =Nederlands
ned_Language             =Selecteer de taal van het spel interface:
ned_Mb                   = Mb
ned_Mhz                  = МHz
ned_Gb                   = Gb
ned_Min                  = min
ned_Message1             =Klik op «Yes» om de installatie programma,%nof «Nee» om de installatie voort te verlaten.
ned_Message2             =Installatie in de systeemmap!
ned_Message3             =Het spel te installeren op de Windows-map!%n%nHet is onaanvaardbaar om systeemmap te installeren!%nProbeer het opnieuw.
ned_Message4             =%nKlik op «Yes» om de installatie pad te veranderen
ned_Message5             =Gedetecteerd running installatie «{#NAME_NL}»
ned_Message6             =Ontdekt actieve instance van de installatie «{#NAME_NL}».%nOngeldige run meerdere exemplaren van een setup!%nOm de installatie voort te zetten,%nmoet u het afsluiten van de lopende proces.
ned_Message7             =Klik op «Yes» om af te sluiten%nen sluit het apparaat eerder gelanceerd
ned_Message8             =Uw computer is in gevaar!
ned_Message9             =Het installatiebestand heeft ondergaan wijzigingen!%n%nHet bestand is volledig geladen of geïnfecteerd!%nU moet de hash van bestanden bijwerken in de torrent-client,%nof download een spel van een andere bron!
ned_Message10            =Ontdekt een lopend spel
ned_Message11            =%n%nAls u doorgaat met de installatie, zal het spel automatisch te laten sluiten%nen de game data kan verloren gaan!
ned_Message12            =Klik op «Volgende» om verder te gaan%nof «Annuleren» om de installatie heeft verlaten
ned_Msgbox               =Gedetecteerd geïnstalleerd spel%n«{#NAME_NL}»
ned_Msgbox1              =Klik op «Play» om het spel te beginnen met de.%nOp «Verwijderen» om het programma te verwijderen%nen installeer het spel te verlaten.%n%n%n%n%n%n%n%nKlik op «Volgende» om het spel te werken
ned_Msgbox2              =Game gegevens verloren gaan!%n%nKlik op «Verwijderen» om de games te verwijderen.%n%n%n%n%n%n%n«Volgende» om het spel te installeren%nom de gedetecteerde map
ned_Msgbox3              =Je hebt de huidige versie van het spel%n«{#NAME_NL}» v.
ned_NeedSpace            =Vereist voor installatie:
ned_NeedUpdate           =Vereist voor bijwerking:
ned_NextLbl              =Klik op «Volgende» om verder te gaan
ned_Play                 =Start het spel «{#NAME_NL}»
ned_Redist               =Aanvullende software:
ned_RedistTitle          =Extra software installeren
ned_RedistProgress       =Er is extra software
ned_RedistWait           =Even geduld aub
ned_RedistDirectX        =Installeren DirectX ...
ned_RedistVisual10       =Het upgraden van VisualC++ 2010 ...
ned_RedistVisual13       =Installeren VisualC++ 2013 ...
ned_RedistVisual19       =Installeren VisualC++ 2015-2019 ...
ned_Remains              =Resterende tijd:
ned_IconsTitle           =Voorbereiden om het spel te starten
ned_ReqLabel             =Het installeren van snelkoppelingen en registerinzendingen...
ned_Sec                  = s
ned_SelectDirLabel       =Het moge duidelijk zijn, of selecteer een ander station!
ned_SelectDirLabel1      =De installatiemap van het spel «{#NAME_NL}»:
ned_SelectDirLabel2      =Niet genoeg ruimte voor de upgrade «{#NAME_NL}»
ned_SelectDirLabel3      =programma update «{#NAME_NL}»:
ned_SelectStartMenu      =programma updates de menu snelkoppelingen «start»:
ned_SelectStartMenuLbl3  =De map met de sneltoetsen in «startmenu»:
ned_SelectTasksEditLabel =Verwijder het vinkje bij de onderdelen die worden geïnstalleerd%nis niet vereist, en klik op «Install»
ned_SelectTasksLabel     =Selecteer de extra taken die zal worden uitgevoerd na de installatie van «{#NAME_NL}»
ned_SetupAppTitle        =Setup «{#NAME_NL}»
ned_SetupAppTitle1       =Update «{#NAME_NL}»
ned_SetupAborted         =Installatie «{#NAME_NL}» afgebroken!%n%nLos het probleem op en probeer het opnieuw te starten ...
ned_Start                =Play
ned_StatusRollback       =Rolling veranderingen terug ...
ned_Taskbar              =Het Pictogram «{#NAME_NL}» op de taakbalk
ned_TasksName            =Extra taken
ned_Tb                   = Тb
ned_Thanks               =bedankt voor het project%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkel®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nspeciale dank%nalle vrienden van de datacompressie gemeenschap%nkrinkels.org
ned_TotalSpace           =Harde schijf, omvang:
ned_Videos               =Opgenomen video's
ned_VisualC              =Installeer VisualC++ 2013
ned_VisualC1             =VisualC++ 2013: Geïnstalleerd
ned_VisualC19            =Installeer VisualC++ 2015-2019
ned_VisualC119           =VisualC++ 2015-2019: Geïnstalleerd
ned_VisualCU             =Updaten VisualC++ 2010
ned_VisualCU1            =VisualC++ 2010sp1: geactualiseerd
ned_UninstalMsg          =Klik op «Verwijderen» om door te gaan met de verwijdering, of «Annuleren»%nom het verwijderen af te sluiten.
ned_UninstalMsg1         = Verwijder «{#NAME_NL}»
ned_UninstalMsg2         = Verwijder «{#NAME_NL}» + opslaan spelletjes
ned_UninstalMsg3         = Verwijder «{#NAME_NL}» + opslaan spelletjes en back-ups
ned_UninstallStatusLabel =De keuze van de methode verwijderen «{#NAME_NL}»
ned_UninstallStatusLbl   =Een ogenblik geduld, verwijderen «{#NAME_NL}»
ned_EllipsedTime         =Verstreken tijd:
ned_RemainingTime        =Links:
ned_Cancel               =Klik op «Annuleren» om de installatie heeft verlaten
ned_NextDisk             =Er is geen disc:
ned_NextDisk1            =%nPlaats de cd en wacht totdat het initialiseren!
ned_WelcomeTitle         =Welkom!
ned_WelcomeLabel1        =Welkom bij Setup «{#NAME_NL}»
ned_WelcomeLabel3        =Voor het installeren, is het raadzaam om antivirus %nuit te schakelen en sluit alle actieve toepassingen!
ned_WizardUninstalling   =Verwijderingsstatus
ned_Backup               =Kopiëren opgeslagen spellen
ned_Backup1              = Gekopieerd:
ned_Backup2              = uit:
ned_Backup3              =Copy Status:
#ifdef System
ned_DeviceDriver         =Een stuurprogramma is niet gevonden
ned_NextLbl1             =Denk na voordat je verder!
ned_NextLbl2             =De installatie is niet mogelijk! Klik op «Annuleren» om de installatie af te sluiten!
ned_NextLbl3             =Uw systeem wordt niet langer ondersteund!
ned_NotSystem            =Niet in staat om de versie van het Windows te bepalen!
ned_OperationSystem      =Systeem
ned_Processor            =Bewerker
ned_RAM                  =Memory
ned_RAM1                 =RAM:
ned_RAM2                 =gratis:
ned_RAM3                 =druk:
ned_RAM4                 =Swap-bestand:
ned_Req2                 =Alle onderdelen van de computer%nvoldoen aan de minimumeisen van het spel
ned_Req3                 =! LET OP !%nDe computer voldoet niet aan de minimumeisen van het spel!
ned_Req4                 =! SYSTEEMFOUT !%nWist niet geïnstalleerd met Windows!
ned_SoundCard            =Geluidskaart
ned_System               =Systeemvereisten
ned_VideoCard            =Video adapter
#endif
// Норвежский язык установки
//=============================================================
#ifdef Components
nor_base                 = {#NAME}
nor_addon                = Utvidelsespakke:
nor_addon1               = {#NAME}: På jobben
nor_addon2               = {#NAME}: Gøy med gjengen
nor_addon3               = {#NAME}: Livet i byen
nor_addon4               = {#NAME}: Katter og hunder
nor_addon5               = {#NAME}: årstider
nor_addon6               = {#NAME}: Kjendisfaktor
nor_addon7               = {#NAME}: Livet i tropene
nor_addon8               = {#NAME}: Oppdag universitetet
nor_addon9               = {#NAME}: Bærekraftig liv
nor_addon10              = {#NAME}: Escape Snowy
nor_addon11              = {#NAME}: Hytteliv
nor_pack                 = Spille sett:
nor_pack1                = {#NAME}: Ut i naturen
nor_pack2                = {#NAME}: En dag på spa
nor_pack3                = {#NAME}: Ut og spise
nor_pack4                = {#NAME}: Vampyrer
nor_pack5                = {#NAME}: Foreldre og barn
nor_pack6                = {#NAME}: Eventyr i jungelen
nor_pack7                = {#NAME}: StrangerVille
nor_pack8                = {#NAME}: Magiens rike
nor_pack9                = {#NAME}: Star Wars™: Reisen til Batuu
nor_pack10               = {#NAME}: Drømmeoppussing
nor_pack11               = {#NAME}: Mine Bryllupshistorier
nor_stuff                = Stæsjpakke:
nor_stuff1               = {#NAME}: Luksusparty
nor_stuff2               = {#NAME}: Vidunderlig veranda
nor_stuff3               = {#NAME}: Kult kjøkkenstæsj
nor_stuff4               = {#NAME}: Skrekkstæsj
nor_stuff5               = {#NAME}: Filmstæsj
nor_stuff6               = {#NAME}: Romantisk hagestæsj
nor_stuff7               = {#NAME}: Stæsj til barnerommet
nor_stuff8               = {#NAME}: Stæsj til uteplassen
nor_stuff9               = {#NAME}: Retroglamstæsj
nor_stuff10              = {#NAME}: Bowlingstæsj
nor_stuff11              = {#NAME}: Treningsstæsj
nor_stuff12              = {#NAME}: Småbarnsstæsj
nor_stuff13              = {#NAME}: Vaskedag
nor_stuff14              = {#NAME}: Mitt første kjæledyr
nor_stuff15              = {#NAME}: Moschino
nor_stuff16              = {#NAME}: Smått og Smart
nor_stuff17              = {#NAME}: Kreativt Strikketøy
nor_stuff18              = {#NAME}: Paranormal
nor_kits                 = Settets:
nor_kits1                = {#NAME}: Throwback
nor_kits2                = {#NAME}: Landlig kjøkken
nor_kits3                = {#NAME}: Støv på hjernen
nor_kits4                = {#NAME}: Hageoase
nor_kits5                = {#NAME}: Gatemote
nor_kits6                = {#NAME}: Industriloft
nor_kits7                = {#NAME}: Destinasjon Incheon
nor_kits8                = {#NAME}: Moderne herreklær
nor_kits9                = {#NAME}: Frodig grønn
nor_kits10               = {#NAME}: Karnevalmote
nor_kits11               = {#NAME}: Maksimalistisk dekor
nor_cont                 = Ekspresslevering
nor_ComponentsTitle      =Utvalg av spill å installere
nor_ComponentsLabel      =Velg spillene du vil installere.%nFjern merket i avkrysningsboksene for spill som du ikke trenger å installere.
nor_ComponentsLabel1     =%nFølgende spill er valgt for oppdatering:
nor_Message13            =Ingen spill er valgt for installasjon
nor_Message14            =%nDu har ikke valgt noen spill!%n%nDu må velge et spill for å fortsette installasjonen!
nor_Message15            =%nKlikk «Ja» for å velge spill å installere
#endif
nor_About                =«{#NAME}»%n«{#NAME} Julefeiring»%nMusikken til «{#NAME}»%nDigitalt «Nisse på farten»-innhold
nor_AboutLE              =«{#NAME} Legacy Edition»%n«{#NAME} Julefeiring»%nMusikken til «{#NAME}»
nor_AboutAdd             =Tillegg:%n%n«{#NAME} På jobben»%n«{#NAME} Gøy med gjengen»%n«{#NAME} Livet i byen»%n«{#NAME} Katter og hunder»%n«{#NAME} årstider»%n«{#NAME} Kjendisfaktor»%n«{#NAME} Livet i tropene»%n«{#NAME} Oppdag universitetet»%n«{#NAME} Bærekraftig liv»%n«{#NAME} Escape Snowy»%n«{#NAME} Hytteliv»
nor_AboutAddle           =Tillegg:%n%n«{#NAME} På jobben»%n«{#NAME} Gøy med gjengen»%n«{#NAME} Livet i byen»%n«{#NAME} Katter og hunder»%n«{#NAME} årstider»%n«{#NAME} Kjendisfaktor»%n«{#NAME} Livet i tropene»
nor_AboutPack            =Spille sett:%n%n«{#NAME} Ut i naturen»%n«{#NAME} En dag på spa»%n«{#NAME} Ut og spise»%n«{#NAME} Vampyrer»%n«{#NAME} Foreldre og barn»%n«{#NAME} Eventyr i jungelen»%n«{#NAME} StrangerVille»%n«{#NAME} Magiens rike»%n«{#NAME} Star Wars™: Reisen til Batuu»%n«{#NAME} Drømmeoppussing»%n«{#NAME} Mine Bryllupshistorier»
nor_AboutPackle          =Spille sett:%n%n«{#NAME} Ut i naturen»%n«{#NAME} En dag på spa»%n«{#NAME} Ut og spise»%n«{#NAME} Vampyrer»%n«{#NAME} Foreldre og barn»%n«{#NAME} Eventyr i jungelen»%n«{#NAME} StrangerVille»%n«{#NAME} Magiens rike»
nor_AboutStuf            =Kataloger:%n%n«{#NAME} Luksusparty»%n«{#NAME} Vidunderlig veranda»%n«{#NAME} Kult kjøkkenstæsj»%n«{#NAME} Skrekkstæsj»%n«{#NAME} Filmstæsj»%n«{#NAME} Romantisk hagestæsj»%n«{#NAME} Stæsj til barnerommet»%n«{#NAME} Stæsj til uteplassen»%n«{#NAME} Retroglamstæsj»%n«{#NAME} Bowlingstæsj»%n«{#NAME} Treningsstæsj»%n«{#NAME} Småbarnsstæsj»%n«{#NAME} Vaskedag»%n«{#NAME} Mitt første kjæledyr»%n«{#NAME} Moshino»%n«{#NAME} Smått og Smart»%n«{#NAME} Kreativt Strikketøy»%n«{#NAME} Paranormal»
nor_AboutStufle          =Kataloger:%n%n«{#NAME} Luksusparty»%n«{#NAME} Vidunderlig veranda»%n«{#NAME} Kult kjøkkenstæsj»%n«{#NAME} Skrekkstæsj»%n«{#NAME} Filmstæsj»%n«{#NAME} Romantisk hagestæsj»%n«{#NAME} Stæsj til barnerommet»%n«{#NAME} Stæsj til uteplassen»%n«{#NAME} Retroglamstæsj»%n«{#NAME} Bowlingstæsj»%n«{#NAME} Treningsstæsj»%n«{#NAME} Småbarnsstæsj»%n«{#NAME} Vaskedag»%n«{#NAME} Mitt første kjæledyr»%n«{#NAME} Moshino»
nor_AboutKits            =Setts:%n%n«{#NAME} Throwback»%n«{#NAME} Landlig kjøkken»%n«{#NAME} Støv på hjernen»%n«{#NAME} Hageoase»%n«{#NAME} Industriloft»%n«{#NAME} Destinasjon Incheon»%n«{#NAME} Gatemote»%n«{#NAME} Moderne herreklær»%n«{#NAME} Frodig grønn»%n«{#NAME} Karnevalmote»%n«{#NAME} Maksimalistisk dekor»
nor_AboutCont            =Ekspresslevering
nor_AboutCopy            ={#Copyright}%n%nFjernet filer av den 32-biters versjonen av spillet!%n%n{#Autor}
nor_AboutCopyle          ={#Copyright}%n%nFjernet filer av den 64-biters versjonen av spillet!%n%n{#Autor}
nor_AboutBuy             =Hvis Du liker dette spillet, KJØPE DET!
nor_AboutTnk             =Takk for at du støtter prosjektet
nor_AboutSetup           =Om installasjonsprogrammet
nor_AllEllipsedTime      =Installasjon:
nor_AllProgress          =Installasjonsfremgang:
nor_BrowseDialogLabel    =Velg en mappe fra listen%nog klikk «Ja»
nor_ButtonBack					 =< Tilbake
nor_ButtonBrowse         =Gjennomgå ...
nor_ButtonCancel         =Avbryt
nor_ButtonFinish         =Fullfør
nor_ButtonInstall				 =Etablere
nor_ButtonNext           =Neste >
nor_ButtonNo             =Nei
nor_ButtonWizardBrowse   =Bla gjennom mapper
nor_ButtonYes            =Ja
nor_CancelTitle          =Installasjon feil
nor_Clean                =Klikk på «HDD» - ikonet for å starte diskopprydding
nor_Clean1               =Før du installerer, må du fjerne spillet!
nor_Close                =Stengt
nor_Delete               =Slett
nor_Desktop              =Ikon «{#NAME}» på skrivebordet
nor_DesktopLang          ={#NAME} Språk-Veksler
nor_DirDesc              =Installasjonsmapper
nor_DirectX              =Installer DirectX
nor_DirectX1             =DirectX: Installert
nor_EllipsedTime         =Tid gikk:
nor_ExitSetupTitle       =Exiting installer «{#NAME}»
nor_ExitSetupMessage     =Installasjonen av «{#NAME}» er ufullstendig!%nHvis du avslutter, vil «{#NAME}» ikke bli installert!%n%nAvslutt «{#NAME}» installasjonsprogrammet?
nor_FinishedLabel        =«{#NAME}» ble installert på datamaskinen din
nor_FinishedLabel1       =Du kan starte «{#NAME}» nå eller senere ved å velge riktig snarvei%npå Start-menyen eller på skrivebordet.
nor_FinishedLabel2       =Klikk på «Fullfør» for å gå ut av installasjonsprogrammet
nor_FinishedTitle        =Fullføring av installasjonen av «{#NAME}»
nor_FreeSpace            =Tilgjengelig diskplass:
nor_Gb                   = Gb
nor_Hour                 = time
nor_Internet             ={#NAME} på Internett
nor_Lang                 =Norsk
nor_Language             =Velg grensesnittspråk for spillet:
nor_Mb                   = Mb
nor_Message1             =Klikk «Ja» for å avslutte installasjonsprogrammet,%neller «Nei» for å fortsette installasjonen.
nor_Message2             =Installere i systemmappen!
nor_Message3             =%n%nDet er ikke tillatt å installere «{#NAME}» i systemmappene!%nVennligst prøv igjen.
nor_Message4             =%nKlikk på «Ja» for å endre installasjonsb
nor_Message5             =En løpende installasjon av «{#NAME}» ble oppdaget
nor_Message6             =En kjørende installasjonseksempel av «{#NAME}» ble oppdaget%n%nDet er uakseptabelt å kjøre flere forekomster av installasjonen!%nFor å fortsette installasjonen må du lukke kjøringsprosessen.
nor_Message7             =%nKlikk på «Ja» for å avslutte installasjonen
nor_Message8             =Datamaskinen din er i fare!
nor_Message9             =Installasjonsfilen har blitt endret!%n%nFilen kan ikke lastes ned helt, eller det kan være skadet!%nDet er nødvendig å oppdatere hash av filer i torrentklienten,%neller last ned spillet fra en annen kilde!
nor_Message10            =Oppdaget en kjører spillet
nor_Message11            =%n%nHvis du fortsetter med installasjonen, spillet automatisk%nlukkes og spill data kan gå tapt!
nor_Message12            =Klikk «Neste» for å fortsette%neller «Avbryt» for å avslutte installasjonen
nor_Mhz                  = MHz
nor_Min                  = min
nor_Msgbox               =Fant et installert spill%n«{#NAME}»
nor_Msgbox1              =Klikk på «Spill» for å starte spillet.%n«Slett» for å avslutte programmet for sletting%nog den etterfølgende rene installasjonen av spillet.%n%n%n%n%n%n%n%nKlikk på «Neste» for å oppdatere spillet
nor_Msgbox2              =Gaming data går tapt!%n%nKlikk på «Slett» for å slette spillet.%n%n%n%n%n%n%n«Neste» for å installere spillet%ni den oppdagede mappen
nor_Msgbox3              =Du har den nyeste versjonen av spillet%n«{#NAME}» v.
nor_NeedSpace            =Kreves for installasjon:
nor_NeedUpdate           =Nødvendig for oppdatering:
nor_NextLbl              =Klikk på «Neste» for å fortsette
nor_NoProgramGroupCheck2 =Ikke opprett en mappe i «Start-menyen»
nor_Play                 =Start spillet «{#NAME}»
nor_Redist               =Ekstra programvare:
nor_RedistDirectX        =Installere DirectX ...
nor_RedistProgress       =Det er installert tilleggsprogramvare
nor_RedistTitle          =Installere tilleggsprogramvare
nor_RedistVisual10       =Oppdaterer VisualC++ 2010 ...
nor_RedistVisual13       =Installerer VisualC++ 2013 ...
nor_RedistVisual19       =Installerer VisualC++ 2015-2019 ...
nor_RedistWait           =Vennligst vent til slutten!
nor_RemainingTime        =igjen:
nor_Remains              =Resterende tid:
nor_IconsTitle           =Forbereder å lansere spillet
nor_ReqLabel             =Installere spillet snarveier og registeroppføringer...
nor_Sec                  = s
nor_SelectDirLabel       =Trenger å rydde opp, eller velg en annen stasjon!
nor_SelectDirLabel1      =Installasjonsmappen av spillet «{#NAME}»:
nor_SelectDirLabel2      =Det er ikke nok plass til å oppdatere «{#NAME}»
nor_SelectDirLabel3      =Program update «{#NAME}»:
nor_SelectStartMenu      =Program oppdateringer menyen snarveier «start»:
nor_SelectStartMenuLbl3  =Mappen med snarveier i «start-meny»:
nor_SelectTasksEditLabel =Fjern merket for komponentene du vil installere er ikke%nnødvendig, klikk deretter «Etablere»
nor_SelectTasksLabel     =Velg flere oppgaver som skal utføres etter installasjonen av «{#NAME}»
nor_SetupAborted         =Installasjonen av «{#NAME}» ble avbrutt!%n%nLøs problemet og prøv å starte installasjonen igjen ...
nor_SetupAppTitle        =Installerer «{#NAME}»
nor_SetupAppTitle1       =Oppdatering «{#NAME}»
nor_Start                =Spill
nor_StatusRollback       =Tilbakestilling endringer.%nSletter installasjonsfiler ...
nor_Support              =Kundestøtte
nor_Taskbar              =«{#NAME}» -ikonet på oppgavelinjen
nor_TasksName            =Ytterligere oppgaver
nor_Tb                   = Tb
nor_Thanks               =takk for prosjektet%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nen spesiell takk%nalle venner av data komprimering samfunnet%nkrinkels.org
nor_TotalSpace           =Harddiskstørrelse:
nor_UninstalMsg          =Klikk på «Slett» for å fortsette slettingen,%neller «Avbryt» for å avslutte avinstalleringsprogrammet.
nor_UninstalMsg1         = Fjerne «{#NAME}»
nor_UninstalMsg2         = Fjerne «{#NAME}» + lagre spillet
nor_UninstalMsg3         = Fjerne «{#NAME}» + lagre spillet + sikkerhetskopier
nor_UninstallStatusLabel =Velg fjerningsmetoden «{#NAME}»
nor_UninstallStatusLbl   =Vennligst vent, fjernelsen av «{#NAME}»
nor_VisualC              =Installer VisualC++ 2013
nor_VisualC1             =VisualC++ 2013: Installert
nor_VisualC19            =Installer VisualC++ 2015-2019
nor_VisualC119           =VisualC++ 2015-2019: Installert
nor_VisualCU             =Oppdater VisualC++ 2010
nor_VisualCU1            =VisualC++ 2010sp1: Oppdatert
nor_Cancel               =Klikk på «Avbryt» for å avslutte installasjonen.
nor_NextDisk             =Manglende stasjon:
nor_NextDisk1            =%nSett inn disken og vent på at den skal initialiseres!
nor_WelcomeLabel1        =Velkommen til %n«{#NAME}» installasjonsprogrammet
nor_WelcomeLabel3        =Før installasjon,%ndet anbefales å deaktivere antivirusprogrammet%nog lukk alle løpende applikasjoner!
nor_WelcomeTitle         =Velkommen!
nor_WizardUninstalling   =Slettingsstatus
nor_Backup               =Lag en kopi av lagre spillet
nor_Backup1              = kopiert:
nor_Backup2              = fra:
nor_Backup3              =Kopier Status:
#ifdef System
nor_DeviceDriver         =Enhetsdriveren ble ikke funnet
nor_NextLbl1             =Tenk før du fortsetter! Stabiliteten i spillet er ikke garantert!
nor_NextLbl2             =Installasjon er ikke mulig! Klikk på «Avbryt» for å avslutte installasjonen!
nor_NextLbl3             =Systemet er ikke lenger støttet!
nor_NotSystem            =UANSET FOR Å BESTEMME SYSTEMETS VERSION!
nor_OperationSystem      =Systemet
nor_Processor            =Prosessor
nor_RAM                  =Minne
nor_RAM1                 =RAM:
nor_RAM2                 =gratis:
nor_RAM3                 =opptatt:
nor_RAM4                 =Bytt fil:
nor_Req2                 =Alle komponenter på datamaskinen din%noppfyll minimumskravene til spillet
nor_Req3                 =! ADVARSEL !%nDatamaskinen oppfyller ikke minimumskravene til spillet!
nor_Req4                 =! SYSTEMFEL !%nKanskje det installerte systemet ikke er Windows!
nor_SoundCard            =Lydkort
nor_System               =Systemkrav
nor_VideoCard            =Videoadapter
#endif
// Польский язык установки
//=============================================================
#ifdef Components
pol_base                 = {#NAME}
pol_addon                = Pakiety Rozszerzające:
pol_addon1               = {#NAME}: Witaj w Pracy
pol_addon2               = {#NAME}: Spotkajmy się
pol_addon3               = {#NAME}: Miejskie życie
pol_addon4               = {#NAME}: Koty i psy
pol_addon5               = {#NAME}: Pory roku
pol_addon6               = {#NAME}: Zostań gwiazdą
pol_addon7               = {#NAME}: Wyspiarskie życie
pol_addon8               = {#NAME}: Odkryj uniwersytet
pol_addon9               = {#NAME}: Eco Lifestyle
pol_addon10              = {#NAME}: Snowy Escape
pol_addon11              = {#NAME}: Wiejska sielanka
pol_pack                 = Pakiet rozgrywki:
pol_pack1                = {#NAME}: Ucieczka w Plener
pol_pack2                = {#NAME}: Dzień w Spa
pol_pack3                = {#NAME}: Zjedzmy na mieście
pol_pack4                = {#NAME}: Wampiry
pol_pack5                = {#NAME}: Być rodzicem
pol_pack6                = {#NAME}: Przygody w dżungli
pol_pack7                = {#NAME}: StrangerVille
pol_pack8                = {#NAME}: Kraina magii
pol_pack9                = {#NAME}: Star Wars™: Wyprawa na Batuu 
pol_pack10               = {#NAME}: Wystrój marzeń
pol_pack11               = {#NAME}: Moje Historie Ślubne
pol_stuff                = Akcesorii:
pol_stuff1               = {#NAME}: Wytworne Przyjęcie
pol_stuff2               = {#NAME}: Perfekcyjne Patio
pol_stuff3               = {#NAME}: Kuchnia na Wypasie
pol_stuff4               = {#NAME}: Upiorności
pol_stuff5               = {#NAME}: Kino Domowe
pol_stuff6               = {#NAME}: Romantyczny ogród
pol_stuff7               = {#NAME}: Pokój dzieciaków
pol_stuff8               = {#NAME}: Zabawa na podwórku
pol_stuff9               = {#NAME}: Styl dawnych lat
pol_stuff10              = {#NAME}: Wieczór na kręgielni
pol_stuff11              = {#NAME}: Fitness
pol_stuff12              = {#NAME}: Małe dzieci
pol_stuff13              = {#NAME}: Dzień prania
pol_stuff14              = {#NAME}: Moje pierwsze zwierzak
pol_stuff15              = {#NAME}: Moschino
pol_stuff16              = {#NAME}: Kompaktowe wnętrza
pol_stuff17              = {#NAME}: Włóczkowe historie
pol_stuff18              = {#NAME}: Zjawiska paranormalne
pol_kits                 = Kolekcja:
pol_kits1                = {#NAME}: To były czasy
pol_kits2                = {#NAME}: Wiejska kuchnia
pol_kits3                = {#NAME}: Wielkie porządki
pol_kits4                = {#NAME}: Oaza na patio
pol_kits5                = {#NAME}: Dzielnica mody
pol_kits6                = {#NAME}: Industrialny loft
pol_kits7                = {#NAME}: Lotniskowy szyk
pol_kits8                = {#NAME}: Nowoczesna moda męska
pol_kits9                = {#NAME}: Bujna zieleń
pol_kits10               = {#NAME}: Karnawałowa moda
pol_kits11               = {#NAME}: Wnętrza z przepychem
pol_cont                 = Ekspresowa dostawa
pol_ComponentsTitle      =Wybór gier do zainstalowania
pol_ComponentsLabel      =Wybierz gry, które chcesz zainstalować.%nOdznacz pola wyboru dla gier, których nie musisz instalować.
pol_ComponentsLabel1     =%nDo aktualizacji wybrano następujące gry:
pol_Message13            =Nie wybrane gry dla zabudowy
pol_Message14            =%nNie wybrałeś żadnej gry!%n%nAby kontynuować instalację, należy wybrać jakąś grę!
pol_Message15            =%nKliknij «Tak», aby wybrać gry dla zabudowy
#endif
pol_About                =«{#NAME}»%n«{#NAME} Zestaw Świąteczny»%nŚcieżka dźwiękowa «{#NAME}» do pobrania%nZestaw «Zajęty gnom» do pobrania
pol_AboutLE              =«{#NAME} Edycja Legacy»%n«{#NAME} Zestaw Świąteczny»%nŚcieżka dźwiękowa «{#NAME}» do pobrania
pol_AboutAdd             =Dodatki:%n%n«{#NAME} Witaj w Pracy»%n«{#NAME} Spotkajmy się»%n«{#NAME} Miejskie życie»%n«{#NAME} Koty i psy»%n«{#NAME} Pory roku»%n«{#NAME} Zostań gwiazdą»%n«{#NAME} Wyspiarskie życie»%n«{#NAME} Odkryj uniwersytet»%n«{#NAME} Eco Lifestyle»%n«{#NAME} Snowy Escape»%n«{#NAME} Wiejska sielanka»
pol_AboutAddle           =Dodatki:%n%n«{#NAME} Witaj w Pracy»%n«{#NAME} Spotkajmy się»%n«{#NAME} Miejskie życie»%n«{#NAME} Koty i psy»%n«{#NAME} Pory roku»%n«{#NAME} Zostań gwiazdą»%n«{#NAME} Wyspiarskie życie»
pol_AboutPack            =Zestawy do gry:%n%n«{#NAME} Ucieczka w Plener»%n«{#NAME} Dzień w Spa»%n«{#NAME} Zjedzmy na mieście»%n«{#NAME} Wampiry»%n«{#NAME} Być rodzicem»%n«{#NAME} Przygody w dżungli»%n«{#NAME} StrangerVille»%n«{#NAME} Kraina magii»%n«{#NAME} Star Wars™: Wyprawa na Batuu»%n«{#NAME} Wystrój marzeń»%n«{#NAME} Moje Historie Ślubne»
pol_AboutPackle          =Zestawy do gry:%n%n«{#NAME} Ucieczka w Plener»%n«{#NAME} Dzień w Spa»%n«{#NAME} Zjedzmy na mieście»%n«{#NAME} Wampiry»%n«{#NAME} Być rodzicem»%n«{#NAME} Przygody w dżungli»%n«{#NAME} StrangerVille»%n«{#NAME} Kraina magii»
pol_AboutStuf            =Akcesorii:%n%n«{#NAME} Wytworne Przyjęcie»%n«{#NAME} Perfekcyjne Patio»%n«{#NAME} Kuchnia na Wypasie»%n«{#NAME} Upiorności»%n«{#NAME} Kino Domowe»%n«{#NAME} Romantyczny ogród»%n«{#NAME} Pokój dzieciaków»%n«{#NAME} Zabawa na podwórku»%n«{#NAME} Styl dawnych lat»%n«{#NAME} Wieczór na kręgielni»%n«{#NAME} Fitness»%n«{#NAME} Małe dzieci»%n«{#NAME} Dzień prania»%n«{#NAME} Moje pierwsze zwierzak»%n«{#NAME} Moshino»%n«{#NAME} Kompaktowe wnętrza»%n«{#NAME} Włóczkowe historie»%n«{#NAME} Zjawiska paranormalne»
pol_AboutStufle          =Akcesorii:%n%n«{#NAME} Wytworne Przyjęcie»%n«{#NAME} Perfekcyjne Patio»%n«{#NAME} Kuchnia na Wypasie»%n«{#NAME} Upiorności»%n«{#NAME} Kino Domowe»%n«{#NAME} Romantyczny ogród»%n«{#NAME} Pokój dzieciaków»%n«{#NAME} Zabawa na podwórku»%n«{#NAME} Styl dawnych lat»%n«{#NAME} Wieczór na kręgielni»%n«{#NAME} Fitness»%n«{#NAME} Małe dzieci»%n«{#NAME} Dzień prania»%n«{#NAME} Moje pierwsze zwierzak»%n«{#NAME} Moshino»
pol_AboutKits            =Kolekcja:%n%n«{#NAME} To były czasy»%n«{#NAME} Wiejska kuchnia»%n«{#NAME} Wielkie porządki»%n«{#NAME} Oaza na patio»%n«{#NAME} Industrialny loft»%n«{#NAME} Lotniskowy szyk»%n«{#NAME} Dzielnica mody»%n«{#NAME} Nowoczesna moda męska»%n«{#NAME} Bujna zieleń»%n«{#NAME} Karnawałowa moda»%n«{#NAME} Wnętrza z przepychem»
pol_AboutCont            =Ekspresowa dostawa
pol_AboutCopy            ={#Copyright}%n%nUsunięto pliki 32-bitowej wersji gry!%n%n{#Autor}
pol_AboutCopyle          ={#Copyright}%n%nUsunięto pliki 64-bitowej wersji gry!%n%n{#Autor}
pol_AboutBuy             =Jeśli podoba Ci się ta gra, KUP JĄ!
pol_AboutTnk             =Dziękuję za wsparcie projektu
pol_AboutSetup           =Informacje o programie instalacyjnym
pol_AllEllipsedTime      =Czas instalacji:
pol_AllProgress          =Postęp instalacji:
pol_BrowseDialogLabel    =Wybierz folder z listy%ni kliknij «Tak»
pol_ButtonBack					 =< Powrót
pol_ButtonBrowse         =Recenzja ...
pol_ButtonCancel         =Anuluj
pol_ButtonFinish         =Zakończ
pol_ButtonInstall				 =Zainstaluj
pol_ButtonNext           =Dalej >
pol_ButtonNo             =Nie
pol_ButtonWizardBrowse   =Przeglądaj foldery
pol_ButtonYes            =Tak
pol_CancelTitle          =Błąd instalacji
pol_Clean                =Kliknij na ikonę «HDD», aby uruchomić oczyszczanie dysku
pol_Clean1               =Przed instalacją, należy usunąć grę!
pol_Close                =Zamknij
pol_Delete               =Usuń {#NAME}
pol_DeleteNameLE         =Usuń {#NAME} Legacy Edition
pol_Desktop              =Ikona «{#NAME}» na pulpicie
pol_DesktopLang          =Zmiana języka w {#NAME}
pol_DirDesc              =Foldery instalacyjne
pol_DirectX              =Zainstaluj DirectX
pol_DirectX1             =DirectX: Zainstalowany
pol_EllipsedTime         =Czas minął:
pol_ExitSetupTitle       =Zamykanie instalatora «{#NAME}»
pol_ExitSetupMessage     =Instalacja «{#NAME}» jest niekompletna!%nJeśli zamkniesz, «{#NAME}» nie zostanie zainstalowane!%n%nZamknij instalator «{#NAME}»?
pol_FinishedLabel        =«{#NAME}» zostało pomyślnie zainstalowane%nna twoim komputerze
pol_FinishedLabel1       =Możesz rozpocząć «{#NAME}» teraz lub później, wybierając odpowiedni skrót%nw menu Start lub na pulpicie.
pol_FinishedLabel2       =Kliknij «Zakończ», aby opuścić program instalacyjny.
pol_FinishedTitle        =Ukończenie instalacji «{#NAME}»
pol_FreeSpace            =Dostępne miejsce na dysku:
pol_Gb                   = Gb
pol_GroupLE              =The Sims 4 Edycja Tradycyjna
pol_Hour                 = godzinę
pol_Lang                 =Polski
pol_Language             =Wybierz język interfejsu gry:
pol_License              =The Sims 4 Umowa licencyjna użytkownika końcowego
pol_LocaleLEName         ={#NAME} Edycja Tradycyjna
pol_Mb                   = Mb
pol_Message1             =Kliknij «Tak», aby opuścić program instalacyjny,%nlub «Nie», aby kontynuować instalację.
pol_Message2             =Instalowanie w folderze System!
pol_Message3             =%n%nNiedozwolone jest instalowanie «{#NAME}» w folderach systemowych!%nSpróbuj ponownie.
pol_Message4             =%nKliknij «Tak», aby zmienić ścieżkę instalacji
pol_Message5             =Wykryto działającą instalację «{#NAME}»
pol_Message6             =Wykryto działającą instancję instalacji «{#NAME}»%n%nNiedopuszczalne jest uruchamianie wielu instancji instalacji!%nAby kontynuować instalację, musisz zamknąć uruchomiony proces.
pol_Message7             =%nKliknij «Tak», aby zakończyć instalację
pol_Message8             =Twój komputer jest w niebezpieczeństwie!
pol_Message9             =Plik instalacyjny przeszedł modyfikację!%n%nPlik może nie zostać w pełni pobrany lub może być UMYŚLONY!%nKonieczna jest aktualizacja hasza plików w kliencie torrenta,%nlub pobierz grę z innego źródła!
pol_Message10            =Wykryto uruchomiona gra
pol_Message11            =%n%nJeśli Będziesz kontynuować instalację, gra zostanie automatycznie%nzamknięte i gier dane mogą zostać utracone!
pol_Message12            =Kliknij «Dalej», aby kontynuować,%nlub «Anuluj», aby zakończyć instalację
pol_Mhz                  = MHz
pol_Min                  = kopalnie
pol_Msgbox               =Znaleziono zainstalowaną grę%n«{#NAME}»
pol_Msgbox1              =Kliknij «Graj», aby rozpocząć grę.%n«Usuń», aby opuścić program do usunięcia%ni późniejsza czysta instalacja gry.%n%n%n%n%n%n%n%nKliknij «Dalej», aby zaktualizować grę
pol_Msgbox2              =Dane o grach zostały utracone!%n%nKliknij «Usuń«, aby usunąć grę.%n%n%n%n%n%n%n«Dalej», aby zainstalować grę%nw wykrytym folderze
pol_Msgbox3              =Masz najnowszą wersję gry%n«{#NAME}» v.
pol_NeedSpace            =Wymagane do instalacji:
pol_NeedUpdate           =Wymagane do aktualizacji:
pol_NextLbl              =Kliknij «Dalej», aby kontynuować
pol_NoProgramGroupCheck2 =Nie twórz folderów w «Menu Start»
pol_Play                 =Uruchom grę «{#NAME}»
pol_PlayLEName           =Zagraj {#NAME} Edycja Legacy
pol_Redist               =Dodatkowe oprogramowanie:
pol_RedistDirectX        =Instalowanie DirectX ...
pol_RedistProgress       =Jest instalacja dodatkowego oprogramowania
pol_RedistTitle          =Instalowanie dodatkowego oprogramowania
pol_RedistVisual10       =Aktualizuję VisualC++ 2010 ...
pol_RedistVisual13       =Instalowanie VisualC++ 2013 ...
pol_RedistVisual19       =Instalowanie VisualC++ 2015-2019 ...
pol_RedistWait           =Proszę poczekać do końca!
pol_RemainingTime        =Pozostałe:
pol_Remains              =Pozostały czas:
pol_IconsTitle           =Przygotowanie do uruchomienia gry
pol_ReqLabel             =Instalowanie skrótów gry i wpisów rejestru...
pol_Sec                  = sec
pol_SelectDirLabel       =Musisz wyczyścić lub wybrać inny dysk!
pol_SelectDirLabel1      =Folder instalacji gry «{#NAME}»:
pol_SelectDirLabel2      =Brak miejsca do aktualizacji «{#NAME}»
pol_SelectDirLabel3      =Program zaktualizuje «{#NAME}»:
pol_SelectStartMenu      =Program zaktualizuje skróty w menu «Start»:
pol_SelectStartMenuLbl3  =Folder ze skrótami w menu «Start»:
pol_SelectTasksEditLabel =Usuń zaznaczenie składników, które chcesz zainstalować%nnie jest wymagany, a następnie kliknij «Zainstaluj»
pol_SelectTasksLabel     =Wybierz dodatkowe zadania do wykonania po instalacji «{#NAME}»
pol_SetupAborted         =Instalacja «{#NAME}» została przerwana!%n%nRozwiąż problem i spróbuj ponownie uruchomić instalację ...
pol_SetupAppTitle        =Instaluję «{#NAME}»
pol_SetupAppTitle1       =Aktualizacja «{#NAME}»
pol_Start                =Graj
pol_StatusRollback       =Zmiany cofnięcia.%nUsuwam pliki instalacyjne ...
pol_Taskbar              =Ikona «{#NAME}» na pasku zadań
pol_TasksName            =Dodatkowe zadania
pol_Tb                   = Tb
pol_Thanks               =dzięki za projekt%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pawłow®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nspecjalne podziękowania%nwszyscy przyjaciele społeczności kompresji danych%nkrinkels.org
pol_TotalSpace           =Rozmiar dysku twardego:
pol_UninstalMsg          =Kliknij «Usuń», aby kontynuować usuwanie,%nlub «Anuluj», aby wyjść z programu deinstalacyjnego.
pol_UninstalMsg1         = Usunąć «{#NAME}»
pol_UninstalMsg2         = Usunąć «{#NAME}» + zapisz grę
pol_UninstalMsg3         = Usunąć «{#NAME}» + zapisz grę + kopie zapasowe
pol_UninstallStatusLabel =Wybierz metodę usuwania «{#NAME}»
pol_UninstallStatusLbl   =Zaczekaj, usunięcie «{#NAME}»
pol_VisualC              =Zainstaluj program VisualC++ 2013
pol_VisualC1             =VisualC++ 2013: Zainstalowany
pol_VisualC19            =Zainstaluj program VisualC++ 2015-2019
pol_VisualC119           =VisualC++ 2015-2019: Zainstalowany
pol_VisualCU             =Zaktualizuj VisualC++ 2010
pol_VisualCU1            =VisualC++ 2010sp1: Zaktualizowano
pol_Cancel               =Kliknij «Anuluj», aby opuścić instalację.
pol_NextDisk             =Brak napędu:
pol_NextDisk1            =%nWłóż płytę i poczekaj na jej zainicjowanie!
pol_WelcomeLabel1        =Witamy w instalatorze%n«{#NAME}»
pol_WelcomeLabel3        =Przed instalacją%nzaleca się wyłączenie programu antywirusowego%ni zamknij wszystkie uruchomione aplikacje!
pol_WelcomeTitle         =Witaj!
pol_WizardUninstalling   =Status usunięcia
pol_Backup               =Utwórz kopię gry zapisywania
pol_Backup1              = Skopiowano:
pol_Backup2              = z:
pol_Backup3              =Status kopiowania:
#ifdef System
pol_DeviceDriver         =Nie znaleziono sterownika urządzenia
pol_NextLbl1             =Pomyśl, zanim przejdziesz dalej! Stabilność gry nie jest gwarantowana!
pol_NextLbl2             =Instalacja nie jest możliwa! Kliknij «Anuluj», aby opuścić instalację!
pol_NextLbl3             =Twój system nie jest już obsługiwany!
pol_NotSystem            =NIEMOŻLIWE DO OKREŚLENIA WERSJI SYSTEMU!
pol_OperationSystem      =System
pol_Processor            =Procesor
pol_RAM                  =Pamięć
pol_RAM1                 =RAM:
pol_RAM2                 =swobodnie:
pol_RAM3                 =zajęty:
pol_RAM4                 =Plik wymiany:
pol_Req2                 =Wszystkie składniki Twojego komputera%nspełniają minimalne wymagania gry
pol_Req3                 =! UWAGA !%nKomputer nie spełnia minimalnych wymagań gry!
pol_Req4                 =! BŁĄD SYSTEMU !%nByć może zainstalowany system nie jest Windows!
pol_SoundCard            =Karta dźwiękowa
pol_System               =Wymagania systemowe
pol_VideoCard            =Adapter wideo
#endif
// Бразильский (Португальский) язык установки
//=============================================================
#ifdef Components
por_base                 = {#NAME}
por_addon                = Expansao:
por_addon1               = {#NAME}: Ao Trabalho
por_addon2               = {#NAME}: Junte-se à Galera
por_addon3               = {#NAME}: Vida na Cidade
por_addon4               = {#NAME}: Gatos e Cães
por_addon5               = {#NAME}: Temporadas
por_addon6               = {#NAME}: Get Famous
por_addon7               = {#NAME}: Ilhas Tropicais
por_addon8               = {#NAME}: Discover University
por_addon9               = {#NAME}: Vida Sustentável
por_addon10              = {#NAME}: Snowy Escape
por_addon11              = {#NAME}: Vida Campestre
por_pack                 = Pacote de Jogo :
por_pack1                = {#NAME}: Retiro ao Ar Livre
por_pack2                = {#NAME}: Dia de Spa
por_pack3                = {#NAME}: Escapada Gourmet
por_pack4                = {#NAME}: Vampiros
por_pack5                = {#NAME}: Vida em Família
por_pack6                = {#NAME}: Aventuras na selva
por_pack7                = {#NAME}: StrangerVille
por_pack8                = {#NAME}: Reino da Magia
por_pack9                = {#NAME}: Star Wars™: Jornada para Batuu 
por_pack10               = {#NAME}: Decoração dos Sonhos
por_pack11               = {#NAME}: As Minhas Histórias De Casamento
por_stuff                = Coleção de Objetos:
por_stuff1               = {#NAME}: Festa Luxuosa
por_stuff2               = {#NAME}: Terraço Perfeito
por_stuff3               = {#NAME}: Cozinha Maneira
por_stuff4               = {#NAME}: Assombroso
por_stuff5               = {#NAME}: Noite de Cinema
por_stuff6               = {#NAME}: Jardim Romântico
por_stuff7               = {#NAME}: Quarto das Crianças
por_stuff8               = {#NAME}: Diversão no Quintal
por_stuff9               = {#NAME}: Glamour Vintage
por_stuff10              = {#NAME}: Noite de Boliche
por_stuff11              = {#NAME}: Fitness
por_stuff12              = {#NAME}: Bebês
por_stuff13              = {#NAME}: Dia de lavagem
por_stuff14              = {#NAME}: Meu primeiro animal de estimação
por_stuff15              = {#NAME}: Moschino
por_stuff16              = {#NAME}: Vida Compacta
por_stuff17              = {#NAME}: Truques de Tricô
por_stuff18              = {#NAME}: Sobrenatural
por_kits                 = Conjunto:
por_kits1                = {#NAME}: Moda Retrô
por_kits2                = {#NAME}: Cozinha Campestre
por_kits3                = {#NAME}: Faxina Fantástica
por_kits4                = {#NAME}: Oásis no Quintal
por_kits5                = {#NAME}: Fashion Street
por_kits6                = {#NAME}: Loft Industrial
por_kits7                = {#NAME}: Incheon Arrivals
por_kits8                = {#NAME}: Moda Masculina Moderna
por_kits9                = {#NAME}: Verde exuberante
por_kits10               = {#NAME}: Carnaval Streetwear
por_kits11               = {#NAME}: Decoração Exuberante
por_cont                 = Entrega expressa
por_ComponentsTitle      =Seleção de jogos para instalar
por_ComponentsLabel      =Selecione os jogos que você deseja instalar.%nCancele a seleção de caixas de seleção para jogos que você não precisa instalar.
por_ComponentsLabel1     =%nPara atualizar selecionados os seguintes jogos:
por_Message13            =Não selecionados jogos para a instalação
por_Message14            =%nVocê não escolheu nenhum jogo!%n%nPara continuar a instalação, você deve escolher qualquer jogo!
por_Message15            =%nClique em «Sim» para escolher os jogos para a instalação
#endif
por_About                =«{#NAME}»%n«{#NAME} Pacote de Festas de Fim de Ano»%nTrilha Sonora Digital «{#NAME}»%nConteúdo Digital «Gnomo Viajante»
por_AboutLE              =«{#NAME} Edição herdada»%n«{#NAME} Pacote de Festas de Fim de Ano»%nTrilha Sonora Digital «{#NAME}»
por_AboutAdd             =Adições:%n%n«{#NAME} Ao Trabalho»%n«{#NAME} Junte-se à Galera»%n«{#NAME} Vida na Cidade»%n«{#NAME} Gatos e Cães»%n«{#NAME} Temporadas»%n«{#NAME} Get Famous»%n«{#NAME} Ilhas Tropicais»%n«{#NAME} Discover University»%n«{#NAME} Vida Sustentável»%n«{#NAME} Snowy Escape»%n«{#NAME} Vida Campestre»
por_AboutAddle           =Adições:%n%n«{#NAME} Ao Trabalho»%n«{#NAME} Junte-se à Galera»%n«{#NAME} Vida na Cidade»%n«{#NAME} Gatos e Cães»%n«{#NAME} Temporadas»%n«{#NAME} Get Famous»%n«{#NAME} Ilhas Tropicais»
por_AboutPack            =Jogando jogos:%n%n«{#NAME} Retiro ao Ar Livre»%n«{#NAME} Dia de Spa»%n«{#NAME} Escapada Gourmet»%n«{#NAME} Vampiros»%n«{#NAME} Vida em Família»%n«{#NAME} Aventuras na selva»%n«{#NAME} StrangerVille»%n«{#NAME} Reino da Magia»%n«{#NAME} Star Wars™: Jornada para Batuu»%n«{#NAME} Decoração dos Sonhos»%n«{#NAME} As Minhas Histórias De Casamento»
por_AboutPackle          =Jogando jogos:%n%n«{#NAME} Retiro ao Ar Livre»%n«{#NAME} Dia de Spa»%n«{#NAME} Escapada Gourmet»%n«{#NAME} Vampiros»%n«{#NAME} Vida em Família»%n«{#NAME} Aventuras na selva»%n«{#NAME} StrangerVille»%n«{#NAME} Reino da Magia»
por_AboutStuf            =Coleção de Objetos:%n%n«{#NAME} Festa Luxuosa»%n«{#NAME} Terraço Perfeito»%n«{#NAME} Cozinha Maneira»%n«{#NAME} Assombroso»%n«{#NAME} Noite de Cinema»%n«{#NAME} Jardim Romântico»%n«{#NAME} Quarto das Crianças»%n«{#NAME} Diversão no Quintal»%n«{#NAME} Glamour Vintage»%n«{#NAME} Noite de Boliche»%n«{#NAME} Fitness»%n«{#NAME} Bebês»%n«{#NAME} Dia de lavagem»%n«{#NAME} Meu primeiro animal de estimação»%n«{#NAME} Moshino»%n«{#NAME} Vida Compacta»%n«{#NAME} Truques de Tricô»%n«{#NAME} Sobrenatural»
por_AboutStufle          =Coleção de Objetos:%n%n«{#NAME} Festa Luxuosa»%n«{#NAME} Terraço Perfeito»%n«{#NAME} Cozinha Maneira»%n«{#NAME} Assombroso»%n«{#NAME} Noite de Cinema»%n«{#NAME} Jardim Romântico»%n«{#NAME} Quarto das Crianças»%n«{#NAME} Diversão no Quintal»%n«{#NAME} Glamour Vintage»%n«{#NAME} Noite de Boliche»%n«{#NAME} Fitness»%n«{#NAME} Bebês»%n«{#NAME} Dia de lavagem»%n«{#NAME} Meu primeiro animal de estimação»%n«{#NAME} Moshino»
por_AboutKits            =Conjunto:%n%n«{#NAME} Moda Retrô»%n«{#NAME} Cozinha Campestre»%n«{#NAME} Faxina Fantástica»%n«{#NAME} Oásis no Quintal»%n«{#NAME} Loft Industrial»%n«{#NAME} Incheon Arrivals»%n«{#NAME} Fashion Street»%n«{#NAME} Moda Masculina Moderna»%n«{#NAME} Verde exuberante»%n«{#NAME} Carnaval Streetwear»%n«{#NAME} Decoração Exuberante»
por_AboutCont            =Entrega expressa
por_AboutCopy            ={#Copyright}%n%nRemovidos os ficheiros 32-bit versão do jogo!%n%n{#Autor}
por_AboutCopyle          ={#Copyright}%n%nRemovidos os ficheiros 64-bit versão do jogo!%n%n{#Autor}
por_AboutBuy             =Se Você gostou deste jogo, COMPRE o SEU!
por_AboutTnk             =Obrigado por apoiar o projeto
por_AboutSetup           =Sobre o instalador
por_AllEllipsedTime      =Tempo de instalação:
por_AllProgress          =Progresso da instalação:
por_BrowseDialogLabel    =Selecione uma pasta da lista%ne clique em «Sim»
por_ButtonBack					 =< Voltar
por_ButtonBrowse         =Revise ...
por_ButtonCancel         =Cancelar
por_ButtonFinish         =Finish
por_ButtonInstall				 =Instalar
por_ButtonNext           =Próximo >
por_ButtonNo             =Não
por_ButtonWizardBrowse   =Procure pastas
por_ButtonYes            =Sim
por_CancelTitle          =Erro de instalação
por_Clean                =Clique no ícone «HDD», para iniciar a limpeza do disco
por_Clean1               =Antes de instalar, você deve desinstalar o jogo!
por_Close                =Fechar
por_Delete               =Excluir
por_Desktop              =Ícone «{#NAME}» para o seu desktop
por_DesktopLang          ={#NAME} A Mudança De Linguagem
por_DesktopLEName        ={#NAME} Edição Legacy
por_DirDesc              =Pastas de instalação
por_DirectX              =Instale o DirectX
por_DirectX1             =DirectX: instalado
por_Display              ={#NAME}: Edição de colecionador
por_EllipsedTime         =O tempo passou:
por_ExitSetupTitle       =A sair do instalador «{#NAME}»
por_ExitSetupMessage     =A instalação de «{#NAME}» está incompleta!%nSe você sair, «{#NAME}» não será instalado!%n%nSair do instalador «{#NAME}»?
por_FinishedLabel        =«{#NAME}» foi instalado com sucesso%nno seu computador
por_FinishedLabel1       =Você pode iniciar «{#NAME}» agora ou mais tarde, selecionando%no atalho apropriado no menu Iniciar ou na área de trabalho.
por_FinishedLabel2       =Clique em «Finish» para sair do programa de instalação
por_FinishedTitle        =Conclusão da instalação de «{#NAME}»
por_FreeSpace            =Espaço em disco disponível:
por_Gb                   = Gb
por_GroupLE              =The Sims 4 Edição Legacy
por_Hour                 = hora
por_Lang                 =Português (BR)
por_Language             =Escolha o idioma da interface do jogo:
por_License              =The Sims 4 Contrato de Licença de Usuário Final
por_Mb                   = Mb
por_Message1             =Clique em «Sim» para sair do programa de instalação%nou em «Não» para continuar a instalação.
por_Message2             =Instalando na pasta do sistema!
por_Message3             =%n%nNão é permitido instalar «{#NAME}» nas pastas do sistema!%nPor favor, tente novamente.
por_Message4             =%nClique em «Sim» para mudar o caminho da instalação
por_Message5             =Uma instalação em execução de «{#NAME}» foi detectada
por_Message6             =Uma instância de instalação em execução de «{#NAME}» foi detectada%n%nÉ inaceitável executar várias instâncias da instalação!%nPara continuar a instalação, você deve fechar o processo em execução.
por_Message7             =%nClique em «Sim» para sair da instalação
por_Message8             =Seu computador está em perigo!
por_Message9             =O arquivo de instalação sofreu uma modificação!%n%nO arquivo pode não estar totalmente baixado, ou pode ser FERIDO!%nÉ necessário atualizar o hash de arquivos no cliente de torrent,%nou baixe o jogo de outra fonte!
por_Message10            =Detectado o jogo que pretende jogar
por_Message11            =%n%nSe Você continuar com a instalação, o jogo fecha automaticamente%ne de jogos, os dados podem ser perdidos!
por_Message12            =Clique em «Próximo» para prosseguir,%nou «Cancelar» para sair do programa de configuração
por_Mhz                  = MHz
por_Min                  = minas
por_Msgbox               =Encontrou um jogo instalado%n«{#NAME}»
por_Msgbox1              =Clique em «Play» para iniciar o jogo.%n«Excluir» para sair do programa para exclusão%nea subsequente instalação limpa do jogo.%n%n%n%n%n%n%n%nClique em «Próximo» para atualizar o jogo
por_Msgbox2              =Os dados de jogos são perdidos!%n%nClique em «Excluir» para excluir o jogo.%n%n%n%n%n%n%n«Próximo» para instalar o jogo%nna pasta detectada
por_Msgbox3              =Você tem a versão mais recente do jogo%n«{#NAME}» v.
por_NeedSpace            =É necessário para a instalação:
por_NeedUpdate           =É necessário para a atualização:
por_NextLbl              =Clique em «Next» para continuar
por_NoProgramGroupCheck2 =Não crie uma pasta no «Menu Iniciar»
por_Play                 =Inicie o jogo «{#NAME}»
por_PlayLEName           =Jogar {#NAME} Edição herdada
por_Redist               =Software adicional:
por_RedistDirectX        =Instalando o DirectX ...
por_RedistProgress       =Há instalação de software adicional
por_RedistTitle          =Instalando o software adicional
por_RedistVisual10       =Atualizando o VisualC++ 2010 ...
por_RedistVisual13       =Instalando o VisualC++ 2013 ...
por_RedistVisual19       =Instalando o VisualC++ 2015-2019 ...
por_RedistWait           =Por favor espere até o final!
por_RemainingTime        =Restante:
por_Remains              =Tempo restante:
por_IconsTitle           =Os preparativos para o lançamento do jogo
por_ReqLabel             =Adicionar atalhos para jogos e entradas de registo...
por_Sec                  = sec
por_SelectDirLabel       =Precisa limpar ou escolher outra unidade!
por_SelectDirLabel1      =A pasta de instalação do jogo «{#NAME}»:
por_SelectDirLabel2      =Não há espaço suficiente para atualizar «{#NAME}»
por_SelectDirLabel3      =Programa atualizará «{#NAME}»:
por_SelectStartMenu      =Programa atualizará atalhos no menu «Iniciar»:
por_SelectStartMenuLbl3  =A pasta de atalhos no menu «Iniciar»:
por_SelectTasksEditLabel =Desmarque os componentes que você deseja instalar%nnão é necessário, clique em «Instalar»
por_SelectTasksLabel     =Selecione tarefas adicionais a serem executadas após a instalação de «{#NAME}»
por_SetupAborted         =A instalação de «{#NAME}» foi interrompida!%n%nResolva o problema e tente iniciar a instalação novamente ...
por_SetupAppTitle        =Instalando «{#NAME}»
por_SetupAppTitle1       =A atualização «{#NAME}»
por_Start                =Play
por_StatusRollback       =Alterações de reversão.%nExcluindo arquivos de instalação ... 
por_Support              =Suporte Técnico
por_Taskbar              =O ícone «{#NAME}» na barra de tarefas
por_TasksName            =Tarefas Adicionais
por_Tb                   = Tb
por_Thanks               =obrigado pelo projecto%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nagradecimentos especiais%ntodos os amigos da comunidade de compressão de dados%nkrinkels.org
por_TotalSpace           =Tamanho do Disco Rígido:
por_UninstalMsg          =Clique em "Excluir" para continuar a exclusão.%nou "Cancelar" para sair do programa de desinstalação.
por_UninstalMsg1         = Remova «{#NAME}»
por_UninstalMsg2         = Remova «{#NAME}» + salve o jogo
por_UninstalMsg3         = Remova «{#NAME}» + salve o jogo + backups
por_UninstallStatusLabel =Selecione o método de remoção «{#NAME}»
por_UninstallStatusLbl   =Por favor, aguarde, a remoção de «{#NAME}»
por_Videos               =Vídeos Gravados
por_VisualC              =Instalar o VisualC++ 2013
por_VisualC115           =VisualC++ 2015: instalado
por_VisualC19            =Instalar o VisualC++ 2015-2019
por_VisualC119           =VisualC++ 2015-2019: instalado
por_VisualCU             =Atualizar o VisualC++ 2010
por_VisualCU1            =VisualC++ 2010sp1: Atualizado
por_Cancel               =Clique em «Cancelar» para sair da instalação.
por_NextDisk             =Unidade ausente:
por_NextDisk1            =%nPor favor, insira o disco e espere que ele seja inicializado!
por_WelcomeLabel1        =Bem-vindo ao instalador do%n«{#NAME}»
por_WelcomeLabel3        =Antes da instalação,%nrecomenda-se desativar o antivírus%ne feche todos os aplicativos em execução!
por_WelcomeTitle         =Bem-vindo!
por_WizardUninstalling   =Status de exclusão
por_Backup               =Crie uma cópia do jogo salvo
por_Backup1              = Copiado:
por_Backup2              = do:
por_Backup3              =Status da cópia:
#ifdef System
por_DeviceDriver         =O driver de dispositivo não foi encontrado
por_NextLbl1             =Pense antes de continuar! A estabilidade do jogo não é garantida!
por_NextLbl2             =Instalação não é possível! Clique em «Cancelar» para sair da instalação!
por_NextLbl3             =Seu sistema não é mais suportado!
por_NotSystem            =Impossível determinar a versão do sistema!
por_OperationSystem      =Sistema
por_Processor            =Processador
por_RAM                  =Memória
por_RAM1                 =RAM:
por_RAM2                 =livremente:
por_RAM3                 =ocupado:
por_RAM4                 =Arquivo de swap:
por_Req2                 =Todos os componentes do seu computador%ncumprir os requisitos mínimos do jogo
por_Req3                 =! ATENÇÃO !%nO computador não atende aos requisitos mínimos do jogo!
por_Req4                 =! ERRO DE SISTEMA !%nTalvez o sistema instalado não seja o Windows!
por_SoundCard            =Placa de som
por_System               =Requisitos do sistema
por_VideoCard            =Adaptador de vídeo
#endif
// Русский язык установки
//=============================================================
#ifdef Components
rus_base                 = {#NAME}
rus_addon                = Дополнения:
rus_addon1               = {#NAME}: На работу
rus_addon2               = {#NAME}: Веселимся вместе
rus_addon3               = {#NAME}: Жизнь в городе
rus_addon4               = {#NAME}: Кошки и собаки
rus_addon5               = {#NAME}: Времена года
rus_addon6               = {#NAME}: Путь к славе
rus_addon7               = {#NAME}: Жизнь на острове
rus_addon8               = {#NAME}: В университете
rus_addon9               = {#NAME}: Экологичная жизнь
rus_addon10              = {#NAME}: Снежные просторы
rus_addon11              = {#NAME}: Загородная жизнь
rus_pack                 = Игровые наборы:
rus_pack1                = {#NAME}: В поход
rus_pack2                = {#NAME}: День cпа
rus_pack3                = {#NAME}: В ресторане
rus_pack4                = {#NAME}: Вампиры
rus_pack5                = {#NAME}: Родители
rus_pack6                = {#NAME}: Приключения в джунглях
rus_pack7                = {#NAME}: Стрейнджервиль
rus_pack8                = {#NAME}: Мир магии
rus_pack9                = {#NAME}: Звездные войны™:%n  Путешествие на Батуу 
rus_pack10               = {#NAME}: Интерьер мечты
rus_pack11               = {#NAME}: Свадебные истории
rus_stuff                = Каталоги:
rus_stuff1               = {#NAME}: Роскошная вечеринка
rus_stuff2               = {#NAME}: Внутренний дворик
rus_stuff3               = {#NAME}: Классная кухня
rus_stuff4               = {#NAME}: Жуткие вещи
rus_stuff5               = {#NAME}: Домашний кинотеатр
rus_stuff6               = {#NAME}: Романтический сад
rus_stuff7               = {#NAME}: Детская комната
rus_stuff8               = {#NAME}: На заднем дворе
rus_stuff9               = {#NAME}: Гламурный винтаж
rus_stuff10              = {#NAME}: Вечер боулинга
rus_stuff11              = {#NAME}: Фитнес
rus_stuff12              = {#NAME}: Детские вещи
rus_stuff13              = {#NAME}: День стирки
rus_stuff14              = {#NAME}: Мой первый питомец
rus_stuff15              = {#NAME}: Moschino
rus_stuff16              = {#NAME}: Компактная жизнь
rus_stuff17              = {#NAME}: Нарядные Нитки
rus_stuff18              = {#NAME}: Паранормальное
rus_kits                 = Комплекты:
rus_kits1                = {#NAME}: Наряды из прошлого
rus_kits2                = {#NAME}: Сельская кухня
rus_kits3                = {#NAME}: Ни пылинки
rus_kits4                = {#NAME}: Личный оазис
rus_kits5                = {#NAME}: Фэшн-Стрит
rus_kits6                = {#NAME}: Лофт
rus_kits7                = {#NAME}: Стиль Инчхона
rus_kits8                = {#NAME}: Мужская мода
rus_kits9                = {#NAME}: Комнатные растения
rus_kits10               = {#NAME}: Карнавал
rus_kits11               = {#NAME}: Максимализм в интерьере
rus_cont                 = Экспресс-доставка
rus_ComponentsTitle      =Выбор игр для установки
rus_ComponentsLabel      =Выберите игры, которые требуется установить%nCнимите флажки с игр, устанавливать которые не требуется.
rus_ComponentsLabel1     =%nДля обновления выбраны следующие игры:
rus_Message13            =Не выбраны игры для установки
rus_Message14            =%nВы не выбрали ни одной игры!%n%nДля продолжения установки необходимо выбрать какую-либо игру!
rus_Message15            =%nНажмите «Да», чтобы выбрать игры для установки
#endif
rus_About                =«{#NAME}»%nНабор «Праздничный»%nЦифровой саундтрек «{#NAME}»%nЦифровой контент «Гномы»
rus_AboutLE              =«{#NAME} Издание Legacy»%nНабор «Праздничный»%nЦифровой саундтрек «{#NAME}»
rus_AboutAdd             =Дополнения:%n%n«{#NAME} На работу»%n«{#NAME} Веселимся вместе»%n«{#NAME} Жизнь в городе»%n«{#NAME} Кошки и собаки»%n«{#NAME} Времена года»%n«{#NAME} Путь к славе»%n«{#NAME} Жизнь на острове»%n«{#NAME} В университете»%n«{#NAME} Экологичная жизнь»%n«{#NAME} Снежные просторы»%n«{#NAME} Загородная жизнь»
rus_AboutAddle           =Дополнения:%n%n«{#NAME} На работу»%n«{#NAME} Веселимся вместе»%n«{#NAME} Жизнь в городе»%n«{#NAME} Кошки и собаки»%n«{#NAME} Времена года»%n«{#NAME} Путь к славе»%n«{#NAME} Жизнь на острове»
rus_AboutPack            =Игровые наборы:%n%n«{#NAME} В поход»%n«{#NAME} День cпа»%n«{#NAME} В ресторане»%n«{#NAME} Вампиры»%n«{#NAME} Родители»%n«{#NAME} Приключения в джунглях»%n«{#NAME} Стрейнджервиль»%n«{#NAME} Мир магии»%n«{#NAME} Star Wars™: Путешествие на Батуу»%n«{#NAME} Интерьер мечты»%n«{#NAME} Свадебные истории»
rus_AboutPackle          =Игровые наборы:%n%n«{#NAME} В поход»%n«{#NAME} День cпа»%n«{#NAME} В ресторане»%n«{#NAME} Вампиры»%n«{#NAME} Родители»%n«{#NAME} Приключения в джунглях»%n«{#NAME} Стрейнджервиль»%n«{#NAME} Мир магии»
rus_AboutStuf            =Каталоги:%n%n«{#NAME} Роскошная вечеринка»%n«{#NAME} Внутренний дворик»%n«{#NAME} Классная кухня»%n«{#NAME} Жуткие вещи»%n«{#NAME} Домашний кинотеатр»%n«{#NAME} Романтический сад»%n«{#NAME} Детская комната»%n«{#NAME} На заднем дворе»%n«{#NAME} Гламурный винтаж»%n«{#NAME} Вечер боулинга»%n«{#NAME} Фитнес»%n«{#NAME} Детские вещи»%n«{#NAME} День стирки»%n«{#NAME} Мой первый питомец»%n«{#NAME} Moshino»%n«{#NAME} Компактная жизнь»%n«{#NAME} Нарядные Нитки»%n«{#NAME} Паранормальное»
rus_AboutStufle          =Каталоги:%n%n«{#NAME} Роскошная вечеринка»%n«{#NAME} Внутренний дворик»%n«{#NAME} Классная кухня»%n«{#NAME} Жуткие вещи»%n«{#NAME} Домашний кинотеатр»%n«{#NAME} Романтический сад»%n«{#NAME} Детская комната»%n«{#NAME} На заднем дворе»%n«{#NAME} Гламурный винтаж»%n«{#NAME} Вечер боулинга»%n«{#NAME} Фитнес»%n«{#NAME} Детские вещи»%n«{#NAME} День стирки»%n«{#NAME} Мой первый питомец»%n«{#NAME} Moshino»
rus_AboutKits            =Комплекты:%n%n«{#NAME} Наряды из прошлого»%n«{#NAME} Сельская кухня»%n«{#NAME} Ни пылинки»%n«{#NAME} Личный оазис»%n«{#NAME} Лофт»%n«{#NAME} Стиль Инчхона»%n«{#NAME} Фэшн-Стрит»%n«{#NAME} Мужская мода»%n«{#NAME} Комнатные растения»%n«{#NAME} Карнавал»%n«{#NAME} Максимализм в интерьере»
rus_AboutCont            =Экспресс-доставка
rus_AboutCopy            ={#Copyright}%n%nПри отсутствии установленной игры%n«{#NAME} Издание Legacy», удаляются%nзаписи реестра и файлы 32-битной версии игры!%n%n{#Autor}
rus_AboutCopyle          ={#Copyright}%n%nУдаляются файлы 64-битной версии игры!%n%n{#Autor}
rus_AboutBuy             =Если Вам понравилась эта игра, КУПИТЕ ЕЁ!
rus_AboutTnk             =Спасибо за поддержку проекта
rus_AboutSetup           =О программе установки
rus_AllEllipsedTime      =Время установки:
rus_AllProgress          =Прогресс установки:
rus_BrowseDialogLabel    =Выберите папку из списка%nи нажмите «Да»
rus_ButtonBack					 =< Назад
rus_ButtonBrowse         =Обзор ...
rus_ButtonCancel         =Отменить
rus_ButtonFinish         =Завершить
rus_ButtonInstall				 =Установить
rus_ButtonNext           =Далее >
rus_ButtonNo             =Нет
rus_ButtonWizardBrowse   =Обзор папок
rus_ButtonYes            =Да
rus_Cancel               =Нажмите «Отменить» для выхода из установки
rus_CancelTitle          =Ошибка установки
rus_Clean                =Нажмите на значок «HDD» для запуска очистки диска
rus_Clean1               =Перед установкой необходимо удалить игру!
rus_Close                =Закрыть
rus_Delete               =Удалить
rus_Desktop              =Значок «{#NAME}» на рабочий стол
rus_DirDesc              =Папки установки
rus_DirectX              =Установить DirectX
rus_DirectX1             =DirectX:  Установлен
rus_EllipsedTime         =Прошло времени:
rus_ExitSetupTitle       =Выход из программы установки «{#NAME}»
rus_ExitSetupMessage     =Установка «{#NAME}» не завершена!%nЕсли Вы выйдете, «{#NAME}» не будет установлена!%n%nВыйти из программы установки «{#NAME}»?
rus_FinishedLabel        =«{#NAME}» была успешно установлена%nна Ваш компьютер
rus_FinishedLabel1       =Вы можете запустить «{#NAME}» сейчас или позже,%nвыбрав соответствующий ярлык в меню «Пуск»%nили на Рабочем столе.
rus_FinishedLabel2       =Нажмите «Завершить»,%nчтобы выйти из программы установки
rus_FinishedTitle        =Завершение установки «{#NAME}»
rus_FreeSpace            =Доступно места на диске:
rus_Gb                   = Гб
rus_Hour                 = час
rus_IconsTitle           =Подготовка к запуску игры
rus_ReqLabel             =Установка ярлыков игры и записей реестра...
rus_Lang                 =Русский
rus_Language             =Выберите язык интерфейса игры:
rus_License              =The Sims 4 Лицензионное соглашение с конечным пользователем
rus_Mb                   = Mб
rus_Message1             =Нажмите «Да», для выхода из программы установки,%nили «Нет», чтобы продолжить установку.
rus_Message2             =Установка игры в Системную папку!
rus_Message3             =%n%nНедопустимо устанавливать «{#NAME}» в Системные папки!%nПожалуйста, повторите ввод.
rus_Message4             =%nНажмите «Да», чтобы изменить путь установки
rus_Message5             =Повторный запуск установки «{#NAME}»
rus_Message6             =Обнаружен запущенный экземпляр установки «{#NAME}»%n%nНедопустим запуск нескольких экземпляров установки!%nДля продолжения установки, необходимо закрыть запущенный процесс.
rus_Message7             =%nНажмите «Да», чтобы выйти из установки
rus_Message8             =Ваш компьютер подвергается опасности!
rus_Message9             =Файл установки подвергся модификации!%n%nВозможно, файл загружен не полностью, либо ЗАРАЖЕН!%nНеобходимо обновить хеш файлов в торрент-клиенте,%nлибо загрузить игру из другого источника!
rus_Message10            =Вы не вышли из игры
rus_Message11            =%n%nЕсли Вы продолжите установку, игра закроется автоматически%nи игровые данные могут быть потеряны!
rus_Message12            =Нажмите «Далее», чтобы продолжить,%nили «Отменить», для выхода из установки
rus_Mhz                  = МГц
rus_Min                  = мин
rus_Msgbox               =У Вас установлена игра%n«{#NAME}»
rus_Msgbox1              =Нажмите «Играть», чтобы запустить игру.%n«Удалить», чтобы выйти из программы для удаления%nи последующей чистой установки игры.%n%n%n%n%n%n%n%nНажмите «Далее», для обновления игры
rus_Msgbox2              =Игровые данные потеряны!%n%nНажмите «Удалить», для удаления игры;%n%n%n%n%n%n%nНажмите «Далее», чтобы установить игру%nв обнаруженную в реестре папку
rus_Msgbox3              =У Вас установлена актуальная версия игры%n«{#NAME}» v.
rus_NeedSpace            =Требуется для установки:
rus_NeedUpdate           =Требуется для обновления:
rus_NextLbl              =Нажмите «Далее», чтобы продолжить
rus_NoProgramGroupCheck2 =Не создавать папку в «Mеню Пуск»
rus_Play                 =Запустить игру «{#NAME}»
rus_Redist               =Дополнительное программное обеспечение:
rus_RedistDirectX        =Установка DirectX ...
rus_RedistProgress       =Идет установка дополнительного ПО
rus_RedistTitle          =Установка дополнительного ПО
rus_RedistVisual10       =Обновление VisualC++ 2010 ...
rus_RedistVisual13       =Установка VisualC++ 2013 ...
rus_RedistVisual19       =Установка VisualC++ 2015-2019 ...
rus_RedistWait           =Пожалуйста, дождитесь окончания!
rus_RemainingTime        =Осталось:
rus_Remains              =Осталось времени:
rus_Sec                  = сек
rus_SelectDirLabel       =Необходимо очистить, либо выбрать другой диск!
rus_SelectDirLabel1      =Папка установки «{#NAME}»:
rus_SelectDirLabel2      =Недостаточно места для обновления «{#NAME}»
rus_SelectDirLabel3      =Программа обновит «{#NAME}»:
rus_SelectStartMenu      =Программа обновит ярлыки в меню «Пуск»:
rus_SelectStartMenuLbl3  =Папка с ярлыками в «Меню Пуск»:
rus_SelectTasksEditLabel =Снимите флажки с компонентов, устанавливать которые%nне требуется, затем нажмите «Установить»
rus_SelectTasksLabel     =Выберите дополнительные задачи, которые будут выполнены после установки «{#NAME}»
rus_SetupAborted         =Установка «{#NAME}» прервана!%n%nУстраните проблему и попробуйте запустить установку повторно ...
rus_SetupAppTitle        =Установка «{#NAME}»
rus_SetupAppTitle1       =Обновление «{#NAME}»
rus_Start                =Играть
rus_StatusRollback       =Откат изменений.%nУдаление файлов установки, очистка реестра ...
rus_Taskbar              =Значок «{#NAME}» в Панель задач
rus_TasksName            =Дополнительные задачи
rus_Tb                   = Тб
rus_Thanks               =Спасибо за проект%nCodejock Software®%nFragSoft®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%nБулат Зиганшин®%nИгорь Павлов®%n%n* * *%nОсобая благодарность%nвсем друзьям сообщества сжатия данных%nkrinkels.org
rus_TotalSpace           =Размер жесткого диска:
rus_UninstallStatusLabel =Выберите метод удаления «{#NAME}»
rus_UninstallStatusLbl   =Подождите, идет удаление «{#NAME}»
rus_UninstalMsg          =Нажмите «Удалить», чтобы продолжить удаление,%nили «Отменить», чтобы выйти из программы удаления.
rus_UninstalMsg1         = Удалить «{#NAME}»
rus_UninstalMsg2         = Удалить «{#NAME}» + сохранения игры
rus_UninstalMsg3         = Удалить «{#NAME}» + сохранения игры + резервные копии
rus_VisualC              =Установить VisualC++ 2013
rus_VisualC1             =VisualC++ 2013:  Установлен
rus_VisualC19            =Установить VisualC++ 2015-2019
rus_VisualC119           =VisualC++ 2015-2019:  Установлен
rus_VisualCU             =Обновить VisualC++ 2010
rus_VisualCU1            =VisualC++ 2010sp1:  Обновлен
rus_NextDisk             =Отсутствует диск:
rus_NextDisk1            =%nПожалуйста, вставьте диск и дождитесь его инициализации!
rus_WelcomeLabel1        =Вас приветствует программа установки%n«{#NAME}»
rus_WelcomeLabel3        =Перед установкой,%nрекомендуется отключить антивирус%nи закрыть все запущенные приложения!
rus_WelcomeTitle         =Добро пожаловать!
rus_WizardUninstalling   =Состояние удаления
rus_Backup               =Создание копии сохранений игры
rus_Backup1              = Скопировано:
rus_Backup2              = из:
rus_Backup3              =Состояние копирования:
#ifdef System
rus_DeviceDriver         =Драйвер устройства не обнаружен
rus_NextLbl1             =Подумайте, прежде чем продолжить! Стабильность игры не гарантирована!
rus_NextLbl2             =Установка не возможна! Нажмите «Отменить» для выхода из установки!
rus_NextLbl3             =Ваша система больше не поддерживается!
rus_NotSystem            =НЕВОЗМОЖНО ОПРЕДЕЛИТЬ ВЕРСИЮ СИСТЕМЫ!
rus_OperationSystem      =Cистема
rus_Processor            =Процессор
rus_RAM                  =Память
rus_RAM1                 =ОЗУ:
rus_RAM2                 =свободно:
rus_RAM3                 =занято:
rus_RAM4                 =Файл подкачки:
rus_Req2                 =Все компоненты Вашего компьютера%nудовлетворяют минимальным требованиям игры
rus_Req3                 =! ВНИМАНИЕ !%nКомпьютер не удовлетворяет минимальным требованиям игры!
rus_Req4                 =! СИСТЕМНАЯ ОШИБКА !%nВозможно, установленная система не является Windows!
rus_SoundCard            =Звуковая карта
rus_System               =Системные требования
rus_VideoCard            =Видеоадаптер
#endif
// Испанский язык установки
//=============================================================
#ifdef Components
spa_base                 = {#NAME_ES}
spa_addon                = Paquetes de expansión:
spa_addon1               = {#NAME_ES}: ¡A trabajar!
spa_addon2               = {#NAME_ES}: ¿Quedamos?
spa_addon3               = {#NAME_ES}: Urbanitas
spa_addon4               = {#NAME_ES}: Perros y Gatos
spa_addon5               = {#NAME_ES}: Y Las Cuatro Estaciones
spa_addon6               = {#NAME_ES}: ¡Rumbo a la Fama!
spa_addon7               = {#NAME_ES}: Vida Isleña
spa_addon8               = {#NAME_ES}: Descubre la universidad
spa_addon9               = {#NAME_ES}: Vida Ecológica
spa_addon10              = {#NAME_ES}: Escapar de Nieve
spa_addon11              = {#NAME_ES}: Vida en el Pueblo
spa_pack                 = Pack de Contenido:
spa_pack1                = {#NAME_ES}: De Acampada
spa_pack2                = {#NAME_ES}: Dia de Spa
spa_pack3                = {#NAME_ES}: Escapada Gourmet
spa_pack4                = {#NAME_ES}: Vampiros
spa_pack5                = {#NAME_ES}: Papás y Mamás
spa_pack6                = {#NAME_ES}: Aventura en la Selva
spa_pack7                = {#NAME_ES}: StrangerVille
spa_pack8                = {#NAME_ES}: Y El Reino de la Magia
spa_pack9                = {#NAME_ES}: Star Wars™: Viaje a Batuu
spa_pack10               = {#NAME_ES}: Interiorismo
spa_pack11               = {#NAME_ES}: Mis Historias de Boda
spa_stuff                = Pack de Accesorios:
spa_stuff1               = {#NAME_ES}: Fiesta Glamurosa
spa_stuff2               = {#NAME_ES}: Patio de Ensueno
spa_stuff3               = {#NAME_ES}: Cocina Divina
spa_stuff4               = {#NAME_ES}: Escalofriante
spa_stuff5               = {#NAME_ES}: Noche de Cine
spa_stuff6               = {#NAME_ES}: Jardín Romántico
spa_stuff7               = {#NAME_ES}: Cuarto de Niños
spa_stuff8               = {#NAME_ES}: Diversión en el Patio
spa_stuff9               = {#NAME_ES}: Glamour Vintage
spa_stuff10              = {#NAME_ES}: Noche de Bolos
spa_stuff11              = {#NAME_ES}: Fitness
spa_stuff12              = {#NAME_ES}: Infantes
spa_stuff13              = {#NAME_ES}: Día de Colada
spa_stuff14              = {#NAME_ES}: Mi Primera Mascota
spa_stuff15              = {#NAME_ES}: Moschino
spa_stuff16              = {#NAME_ES}: Minicasas
spa_stuff17              = {#NAME_ES}: Portentos del Punto
spa_stuff18              = {#NAME_ES}: Fenómenos Paranormales
spa_kits                 = Kits:
spa_kits1                = {#NAME_ES}: Moda Retro
spa_kits2                = {#NAME_ES}: Cocina Campestre
spa_kits3                = {#NAME_ES}: Zafarrancho de Limpieza
spa_kits4                = {#NAME_ES}: Oasis en el Patio
spa_kits5                = {#NAME_ES}: Fashion Street
spa_kits6                = {#NAME_ES}: Loft Industrial
spa_kits7                = {#NAME_ES}: Moda de Aeropuerto
spa_kits8                = {#NAME_ES}: Moda Masculina Moderna
spa_kits9                = {#NAME_ES}: Verde exuberante
spa_kits10               = {#NAME_ES}: Colores de Carnaval
spa_kits11               = {#NAME_ES}: Decoración Maximalista
spa_cont                 = Entrega Express
spa_ComponentsTitle      =Selección de juegos para instalar.
spa_ComponentsLabel      =Selecciona los juegos que quieres instalar.%nDesmarque las casillas de verificación de los juegos que no necesita instalar.
spa_ComponentsLabel1     =Para la actualización, se seleccionan%nlos siguientes juegos:
spa_Message13            =Juegos no seleccionados para la instalación
spa_Message14            =%nUsted no ha elegido ningún juego!%n%nPara continuar la instalación es necesario elegir cualquier juego!
spa_Message15            =%nHaga clic en «Sí» para seleccionar los juegos para instalar
#endif
spa_About                =«{#NAME_ES}»%n«{#NAME_ES} Pack Felices Fiestas»%nBanda sonora digital de «{#NAME_ES}»%nContenido digital «Gnomos a Gogó»
spa_AboutLE              =«{#NAME_ES} Edición legado»%n«{#NAME_ES} Pack Felices Fiestas»%nBanda sonora digital de «{#NAME_ES}»
spa_AboutAdd             =Add-ons:%n%n«{#NAME_ES} ¡A trabajar!»%n«{#NAME_ES} ¿Quedamos?»%n«{#NAME_ES} Urbanitas»%n«{#NAME_ES} Perros y Gatos»%n«{#NAME_ES} Y Las Cuatro Estaciones»%n«{#NAME_ES} ¡Rumbo a la Fama!»%n«{#NAME_ES} Vida Isleña»%n«{#NAME_ES} Descubre la universidad»%n«{#NAME_ES} Vida Ecológica»%n«{#NAME_ES} Escapar de Nieve»%n«{#NAME_ES} Vida en el Pueblo»
spa_AboutAddle           =Add-ons:%n%n«{#NAME_ES} ¡A trabajar!»%n«{#NAME_ES} ¿Quedamos?»%n«{#NAME_ES} Urbanitas»%n«{#NAME_ES} Perros y Gatos»%n«{#NAME_ES} Y Las Cuatro Estaciones»%n«{#NAME_ES} ¡Rumbo a la Fama!»%n«{#NAME_ES} Vida Isleña»
spa_AboutPack            =Pack de Contenido:%n%n«{#NAME_ES} De Acampada»%n«{#NAME_ES} Dia de Spa»%n«{#NAME_ES} Escapada Gourmet»%n«{#NAME_ES} Vampiros»%n«{#NAME_ES} Papás y Mamás»%n«{#NAME_ES} Aventura en la Selva»%n«{#NAME} StrangerVille»%n«{#NAME} Y El Reino de la Magia»%n«{#NAME_ES} Star Wars™: Viaje a Batuu»%n«{#NAME_ES} Interiorismo»%n«{#NAME_ES} Mis Historias de Boda»
spa_AboutPackle          =Pack de Contenido:%n%n«{#NAME_ES} De Acampada»%n«{#NAME_ES} Dia de Spa»%n«{#NAME_ES} Escapada Gourmet»%n«{#NAME_ES} Vampiros»%n«{#NAME_ES} Papás y Mamás»%n«{#NAME_ES} Aventura en la Selva»%n«{#NAME} StrangerVille»%n«{#NAME} Y El Reino de la Magia»
spa_AboutStuf            =Pack de Accesorios:%n%n«{#NAME_ES} Fiesta Glamurosa»%n«{#NAME_ES} Patio de Ensueno»%n«{#NAME_ES} Cocina Divina»%n«{#NAME_ES} Escalofriante»%n«{#NAME_ES} Noche de Cine»%n«{#NAME_ES} Jardín Romántico»%n«{#NAME_ES} Cuarto de Niños»%n«{#NAME_ES} Diversión en el Patio»%n«{#NAME_ES} Glamour Vintage»%n«{#NAME_ES} Noche de Bolos»%n«{#NAME_ES} Fitness»%n«{#NAME_ES} Infantes»%n«{#NAME_ES} Día de Colada»%n«{#NAME_ES} Mi Primera Mascota»%n«{#NAME_ES} Moshino»%n«{#NAME_ES} Minicasas»%n«{#NAME_ES} Portentos del Punto»%n«{#NAME_ES} Fenómenos Paranormales»
spa_AboutStufle          =Pack de Accesorios:%n%n«{#NAME_ES} Fiesta Glamurosa»%n«{#NAME_ES} Patio de Ensueno»%n«{#NAME_ES} Cocina Divina»%n«{#NAME_ES} Escalofriante»%n«{#NAME_ES} Noche de Cine»%n«{#NAME_ES} Jardín Romántico»%n«{#NAME_ES} Cuarto de Niños»%n«{#NAME_ES} Diversión en el Patio»%n«{#NAME_ES} Glamour Vintage»%n«{#NAME_ES} Noche de Bolos»%n«{#NAME_ES} Fitness»%n«{#NAME_ES} Infantes»%n«{#NAME_ES} Día de Colada»%n«{#NAME_ES} Mi Primera Mascota»%n«{#NAME_ES} Moshino»
spa_AboutKits            =Kits:%n%n«{#NAME_ES} Moda Retro»%n«{#NAME_ES} Cocina Campestre»%n«{#NAME_ES} Zafarrancho de Limpieza»%n«{#NAME_ES} Oasis en el Patio»%n«{#NAME_ES}  Loft Industrial»%n«{#NAME_ES} Moda de Aeropuerto»%n«{#NAME_ES} Fashion Street»%n«{#NAME_ES} Moda Masculina Moderna»%n«{#NAME_ES} Verde exuberante»%n«{#NAME_ES} Colores de Carnaval»%n«{#NAME_ES} Decoración Maximalista»
spa_AboutCont            =Entrega Express
spa_AboutCopy            ={#Copyright}%n%n¡Se eliminaron los archivos de la versión de 32 bits del juego!%n%n{#Autor}
spa_AboutCopyle          ={#Copyright}%n%n¡Se eliminaron los archivos de la versión de 64 bits del juego!%n%n{#Autor}
spa_AboutBuy             =Si te gusta este juego, COMPRALO!
spa_AboutTnk             =Gracias por apoyar el proyecto
spa_AboutSetup           =Acerca del instalador
spa_AllEllipsedTime      =El tiempo de instalación:
spa_AllProgress          =Progreso Posicion:
spa_ButtonBack					 =< Atras
spa_ButtonCancel         =Cancelar
spa_ButtonFinish         =Finalizar
spa_ButtonInstall				 =Instalar
spa_ButtonNext           =Siguiente >
spa_ButtonBrowse         =Examinar ...
spa_ButtonWizardBrowse   =Examinar carpeta
spa_BrowseDialogLabel    =Seleccione una carpeta %ny luego haga clic en «Si»
spa_ButtonNo             =No
spa_ButtonYes            =Si
spa_ExitSetupTitle       =Salga del programa de instalación «{#NAME_ES}»
spa_ExitSetupMessage     =¡La instalación «{#NAME_ES}» no es completa!%nSi sale, no se instalará el «{#NAME_ES}»!%n%n¿Salga del «{#NAME_ES}» de instalación?
spa_NoProgramGroupCheck2 =No crear una carpeta en el «Menu Inicio»
spa_CancelTitle          =Error de instalación
spa_Clean                =Haga clic en el icono de «HDD» para limpiar el disco
spa_Clean1               =¡Antes de instalar, debe quitar el juego!
spa_Close                =Cerrar
spa_Delete               =Eliminar
spa_Desktop              =Icono «{#NAME_ES}» en el escritorio
spa_DirDesc              =Carpeta de instalación
spa_DirectX              =Instale DirectX
spa_DirectX1             =DirectX: Equipada
spa_FinishedLabel        =«{#NAME_ES}» Se ha stalado correctamente%nen su computadora
spa_FinishedLabel1       =Puede ejecutar «{#NAME_ES}» ahora%no más tarde seleccionando el acceso directo correspondiente en el menú «Inicio» o en el escritorio.
spa_FinishedLabel2       =Haga clic en «Finalizar»%npara salir del programa de instalación
spa_FinishedTitle        =Finalización de la instalación «{#NAME_ES}»
spa_FreeSpace            =Espacio disponible en disco:
spa_Hour                 = h
spa_Lang                 =Español (ES)
spa_Language             =Seleccione los juegos de lenguaje de interfaz:
spa_Mb                   = Mb
spa_Mhz                  = MHz
spa_Gb                   = Gb
spa_GroupLE              =Los Sims 4 Edición Legacy
spa_LocaleLEName         ={#NAME_ES} Edición Legacy
spa_Min                  = m
spa_Message1             =Haga clic en «Sí» para salir del programa de instalación,%no «No» para continuar la instalación.
spa_Message2             =La instalación en la carpeta del sistema!
spa_Message3             =%n%nEs inaceptable para instalar la carpeta del sistema!%nPor favor, inténtelo de nuevo.
spa_Message4             =%nHaga clic en «Sí» para cambiar la ruta de instalación
spa_Message5             =Detectado instalación se ejecuta «{#NAME_ES}»
spa_Message6             =Descubierto instancia en ejecución de la instalación «{#NAME_ES}».%n%nPlazo no válido varias instancias de una configuración!%nPara continuar con la instalación, debe cerrar el proceso en ejecución.
spa_Message7             =Haga clic en «Sí» para salir%ny cerrar la unidad lanzado a principios de
spa_Message8             =¡El ordenador está en peligro!
spa_Message9             =¡El archivo de instalación ha sido objeto de modificaciones!%n%n¡El archivo se carga por completo o infectados!%nNecesitas actualizar el hash de archivos en el cliente torrent,%no descargar un juego de otra fuente!
spa_Message10            =Se ha detectado un juego en ejecución
spa_Message11            =%n%nSi continúa con la instalación, el juego se cerrará automáticamente%ny los datos del juego se pueden perder!
spa_Message12            =Haga clic en «Siguiente» para continuar%no «Cancelar» para salir de la instalación
spa_Msgbox               =Detectado juego instalado%n«{#NAME_ES}»
spa_Msgbox1              =Haga clic en «Play» para iniciar el juego.%nEn «Eliminar» para salir del programa para eliminar%ny luego instalar el juego.%n%n%n%n%n%n%n%nHaga clic en «Siguiente» para actualizar el juego
spa_Msgbox2              =¡Los datos del juego se pierde!%n%nHaga clic en «Eliminar» para eliminar los juegos.%n%n%n%n%n%n%n«Siguiente» para de instalar el juego%nen la carpeta detectado
spa_Msgbox3              =Tienes la versión actual del juego%n«{#NAME_ES}» v.
spa_NeedSpace            =Necesario para la instalación:
spa_NeedUpdate           =Necesario para actualizar:
spa_NextLbl              =Haga clic en «Siguiente» para continuar
spa_Play                 =Inicia el juego «{#NAME_ES}»
spa_PlayLEName           =Jugar {#NAME_ES} Edición Legacy
spa_Readme               =Léeme
spa_Redist               =Software adicional:
spa_RedistTitle          =Instalación de software adicional
spa_RedistProgress       =Existe software adicional
spa_RedistWait           =Por favor espere
spa_RedistDirectX        =Instalación de DirectX ...
spa_RedistVisual10       =Actualización de VisualC++ 2010 ...
spa_RedistVisual13       =Instalación de VisualC++ 2013 ...
spa_RedistVisual19       =Instalación de VisualC++ 2015-2019 ...
spa_Remains              =Tiempo restante:
spa_IconsTitle           =Preparación para el lanzamiento del juego
spa_ReqLabel             =Instalar accesos directos del juego y entradas de registro...
spa_Sec                  = seg
spa_SelectDirLabel       =¡Limpie el disco duro o seleccionar otro!
spa_SelectDirLabel2      =No hay suficiente espacio para la actualización «{#NAME_ES}»
spa_SelectDirLabel1      =Carpeta de instalación de «{#NAME_ES}»:
spa_SelectDirLabel3      =el Programa actualizará «{#NAME_ES}»:
spa_SelectStartMenu      =el Programa actualizará los accesos directos en el menú «Inicio»:
spa_SelectStartMenuLbl3  =Carpeta de accesos directos en el menú «Inicio»:
spa_SelectTasksEditLabel =Desactive los componentes no desea que instalar%ncontinuación, y haga clic en «Instalar»
spa_SelectTasksLabel     =Seleccione las tareas adicionales que se realizan después de la instalacion de «{#NAME_ES}»
spa_SetupAppTitle        =Instalar «{#NAME_ES}»
spa_SetupAppTitle1       =Actualización «{#NAME_ES}»
spa_SetupAborted         =¡Instalación «{#NAME_ES}» abortada!%n%nResuelva el problema e intente reiniciar la instalación ...
spa_Start                =Play
spa_StatusRollback       =Revertir los cambios ...
spa_Support              =Servicio ténico
spa_Taskbar              =El icono «{#NAME_ES}» en la barra de tareas
spa_TasksName            =Tareas adicionales
spa_Tb                   = Tb
spa_Thanks               =gracias por el proyecto%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%ngracias especiales%ntodos los amigos de la comunidad de compresión de datos%nkrinkels.org
spa_TotalSpace           =Tamaño del disco duro:
spa_Videos               =Vídeos grabados
spa_VisualC              =Instalar VisualC++ 2013
spa_VisualC1             =VisualC++ 2013: Equipada
spa_VisualC19            =Instalar VisualC++ 2015-2019
spa_VisualC119           =VisualC++ 2015-2019: Equipada
spa_VisualCU             =Actualizar el VisualC++ 2010
spa_VisualCU1            =VisualC++ 2010sp1: Actualiz
spa_WelcomeTitle         =Bienvenido!
spa_WelcomeLabel1        =Instalación de la programa%nde «{#NAME_ES}»
spa_WelcomeLabel3        =¡Antes de instalar,%nse recomienda desactivar antivirus%ny cierre todas las aplicaciones que se ejecutan!
spa_UninstalMsg          =Haga clic en «Eliminar» para continuar con la eliminación,%no «Cancelar» para salir del programa de desinstalación.
spa_UninstalMsg1         = Retire «{#NAME_ES}»
spa_UninstalMsg2         = Retire «{#NAME_ES}» + guardar juegos
spa_UninstalMsg3         = Retire «{#NAME_ES}» + guardar juegos y copias de seguridad
spa_UninstallStatusLabel =La elección del método de borrar «{#NAME_ES}»
spa_UninstallStatusLbl   =Por favor espere, suprimiendo «{#NAME_ES}»
spa_EllipsedTime         =El tiempo transcurrido:
spa_RemainingTime        =Izquierda:
spa_Cancel               =Haga clic en «Cancelar» para salir de la instalación
spa_NextDisk             =No hay disco:
spa_NextDisk1            =%nPor favor, inserte el disco y espere a que la inicialización!
spa_WizardUninstalling   =Estado de eliminación
spa_Backup               =Hacer una copia partidas guardadas
spa_Backup1              = Copiada:
spa_Backup2              = de:
spa_Backup3              =Ejemplares:
#ifdef System
spa_DeviceDriver         =No se detecta el controlador de dispositivo
spa_NextLbl1             =¡Piensa antes de continuar!
spa_NextLbl2             =¡La instalación no es posible! Haga clic en «Cancelar» para salir de la instalación!
spa_NextLbl3             =¡Su sistema ya no es compatible!
spa_NotSystem            =¡No se puede determinar la versión del Windows!
spa_OperationSystem      =Sistema
spa_Processor            =Procesador
spa_RAM                  =Memoria
spa_RAM1                 =RAM:
spa_RAM2                 =libre:
spa_RAM3                 =ocupado:
spa_RAM4                 =Archivo de intercambio:
spa_Req2                 =Todos los componentes de su equipo cumple%nlos requisitos mínimos del juego
spa_Req3                 =¡ PRECAUCION !%n¡El equipo no cumple los requisitos mínimos del juego!
spa_Req4                 =¡ ERROR DE SISTEMA !%n¡El sistema no ha instalado es Windows!
spa_SoundCard            =Tarjeta de sonido
spa_System               =Requisitos del sistema
spa_VideoCard            =Adaptador de video
#endif
// Шведский язык установки
//=============================================================
#ifdef Components
swe_base                 = {#NAME}
swe_addon                = Expansionspaket:
swe_addon1               = {#NAME}: Dags att jobba
swe_addon2               = {#NAME}: Trevligt tillsammans
swe_addon3               = {#NAME}: Stadsliv
swe_addon4               = {#NAME}: Katter och hundar
swe_addon5               = {#NAME}: årstiderna
swe_addon6               = {#NAME}: Kändisliv
swe_addon7               = {#NAME}: Paradisö Kliver Iland
swe_addon8               = {#NAME}: Upptäck universitetet
swe_addon9               = {#NAME}: Eko-liv
swe_addon10              = {#NAME}: Snöiga Fly
swe_addon11              = {#NAME}: Lantliv
swe_pack                 = Spelar uppsättningar:
swe_pack1                = {#NAME}: Vildmarken
swe_pack2                = {#NAME}: Spadag
swe_pack3                = {#NAME}: Äta ute
swe_pack4                = {#NAME}: Вампиры
swe_pack5                = {#NAME}: Föräldraliv
swe_pack6                = {#NAME}: äventyr i djungeln
swe_pack7                = {#NAME}: StrangerVille
swe_pack8                = {#NAME}: Magins rike
swe_pack9                = {#NAME}: Star Wars™: Resan till Batuu
swe_pack10               = {#NAME}: Styla ditt drömhus
swe_pack11               = {#NAME}: Mina Bröllopshistorier
swe_stuff                = Stuff förpackningar:
swe_stuff1               = {#NAME}: Lyxigt & Festligt
swe_stuff2               = {#NAME}: Utomordentlig Uteplats
swe_stuff3               = {#NAME}: Coola köksprylar
swe_stuff4               = {#NAME}: Läskiga prylar
swe_stuff5               = {#NAME}: Filmkvällsprylar
swe_stuff6               = {#NAME}: Romantiska trädgårdsprylar
swe_stuff7               = {#NAME}: Barnrumsprylar
swe_stuff8               = {#NAME}: Soliga trädgårdsprylar
swe_stuff9               = {#NAME}: Klassiska glamourprylar
swe_stuff10              = {#NAME}: Bowlingprylar
swe_stuff11              = {#NAME}: Träningsprylar
swe_stuff12              = {#NAME}: Småbarnsprylar
swe_stuff13              = {#NAME}: Tvättdag
swe_stuff14              = {#NAME}: Mitt första husdjur
swe_stuff15              = {#NAME}: Moschino
swe_stuff16              = {#NAME}: Smått och smart
swe_stuff17              = {#NAME}: Skickligt stickat
swe_stuff18              = {#NAME}: Paranormalt
swe_kits                 = Kits:
swe_kits1                = {#NAME}: Retro
swe_kits2                = {#NAME}: Lantköks
swe_kits3                = {#NAME}: Dammråtte
swe_kits4                = {#NAME}: Innergårdsoas
swe_kits5                = {#NAME}: Fashion Street
swe_kits6                = {#NAME}: Industrilofts
swe_kits7                = {#NAME}: Välkommen till Incheon
swe_kits8                = {#NAME}: Modernt herrmode
swe_kits9                = {#NAME}: Frodig grön
swe_kits10               = {#NAME}: Karnevalmode
swe_kits11               = {#NAME}: Maxad inredning
swe_cont                 = Expressleverans
swe_ComponentsTitle      =Urval av spel att installera
swe_ComponentsLabel      =Välj de spel du vill installera.%nAvmarkera kryssrutor för spel som du inte behöver installera.
swe_ComponentsLabel1     =%nFöljande spel väljs för uppdateringen:
swe_Message13            =Inga spel som valts för installation
swe_Message14            =%nDu har inte valt något spel!%n%nDu måste välja ett spel för att fortsätta installationen!
swe_Message15            =%nKlicka på «Ja» för att välja spel att installera
#endif
swe_About                =«{#NAME}»%n«{#NAME} Julhelgspaket»%n«{#NAME}» digitalt ljudspår%nDigitalt innehåll «Tomte i farten»
swe_AboutLE              =«{#NAME} Äldre Utgåva»%n«{#NAME} Julhelgspaket»%n«{#NAME}» digitalt ljudspår
swe_AboutAdd             =Tillägg:%n%n«{#NAME} Dags att jobba»%n«{#NAME} Trevligt tillsammans»%n«{#NAME} Stadsliv»%n«{#NAME} Katter och hundar»%n«{#NAME} årstiderna»%n«{#NAME} Kändisliv»%n«{#NAME} Paradisö Kliver Iland»%n«{#NAME} Upptäck universitetet»%n«{#NAME} Eko-liv»%n«{#NAME} Snöiga Fly»%n«{#NAME} Lantliv»
swe_AboutAddle           =Tillägg:%n%n«{#NAME} Dags att jobba»%n«{#NAME} Trevligt tillsammans»%n«{#NAME} Stadsliv»%n«{#NAME} Katter och hundar»%n«{#NAME} årstiderna»%n«{#NAME} Kändisliv»%n«{#NAME} Paradisö Kliver Iland»
swe_AboutPack            =Spelar uppsättningar:%n%n«{#NAME} Vildmarken»%n«{#NAME} Spadag»%n«{#NAME} Äta ute»%n«{#NAME} Äta ute»%n«{#NAME} Föräldraliv»%n«{#NAME} äventyr i djungeln»%n«{#NAME} StrangerVille»%n«{#NAME} Magins rike»%n«{#NAME} Star Wars™: Resan till Batuu»%n«{#NAME} Styla ditt drömhus»%n«{#NAME} Mina Bröllopshistorier»
swe_AboutPackle          =Spelar uppsättningar:%n%n«{#NAME} Vildmarken»%n«{#NAME} Spadag»%n«{#NAME} Äta ute»%n«{#NAME} Äta ute»%n«{#NAME} Föräldraliv»%n«{#NAME} äventyr i djungeln»%n«{#NAME} StrangerVille»%n«{#NAME} Magins rike»
swe_AboutStuf            =Kataloger:%n%n«{#NAME} Lyxigt & Festligt»%n«{#NAME} Utomordentlig Uteplats»%n«{#NAME} Coola köksprylar»%n«{#NAME} Läskiga prylar»%n«{#NAME} Filmkvällsprylar»%n«{#NAME} Romantiska trädgårdsprylar»%n«{#NAME} Barnrumsprylar»%n«{#NAME} Soliga trädgårdsprylar»%n«{#NAME} Klassiska glamourprylar»%n«{#NAME} Bowlingprylar»%n«{#NAME} Träningsprylar»%n«{#NAME} Småbarnsprylar»%n«{#NAME} Tvättdag»%n«{#NAME} Mitt första husdjur»%n«{#NAME} Moshino»%n«{#NAME} Smått och smart»%n«{#NAME} Skickligt stickat»%n«{#NAME} Paranormalt»
swe_AboutStufle          =Kataloger:%n%n«{#NAME} Lyxigt & Festligt»%n«{#NAME} Utomordentlig Uteplats»%n«{#NAME} Coola köksprylar»%n«{#NAME} Läskiga prylar»%n«{#NAME} Filmkvällsprylar»%n«{#NAME} Romantiska trädgårdsprylar»%n«{#NAME} Barnrumsprylar»%n«{#NAME} Soliga trädgårdsprylar»%n«{#NAME} Klassiska glamourprylar»%n«{#NAME} Bowlingprylar»%n«{#NAME} Träningsprylar»%n«{#NAME} Småbarnsprylar»%n«{#NAME} Tvättdag»%n«{#NAME} Mitt första husdjur»%n«{#NAME} Moshino»
swe_AboutKits            =Kits:%n%n«{#NAME} Retro»%n«{#NAME} Lantköks»%n«{#NAME} Dammråtte»%n«{#NAME} Innergårdsoas»%n«{#NAME} Industrilofts»%n«{#NAME} Välkommen till Incheon»%n«{#NAME} Fashion Street»%n«{#NAME} Modernt herrmode»%n«{#NAME} Frodig grön»%n«{#NAME} Karnevalmode»%n«{#NAME} Maxad inredning»
swe_AboutCont            =Expressleverans
swe_AboutCopy            ={#Copyright}%n%nBorttagna filer från 32-bitarsversionen av spelet!%n%n{#Autor}
swe_AboutCopyle          ={#Copyright}%n%nBorttagna filer från 64-bitarsversionen av spelet!%n%n{#Autor}
swe_AboutBuy             =om du gillar det här spelet, köp det!
swe_AboutTnk             =Tack för att ni stödde projektet
swe_AboutSetup           =Om installationsprogrammet
swe_AllEllipsedTime      =Installationstid:
swe_AllProgress          =Installation framsteg:
swe_BrowseDialogLabel    =Välj en mapp från listan%noch klicka på «Ja»
swe_ButtonBack					 =< Tillbaka
swe_ButtonBrowse         =Granska ...
swe_ButtonCancel         =Avbryt
swe_ButtonFinish         =Slutför
swe_ButtonInstall				 =Installera
swe_ButtonNext           =Nästa >
swe_ButtonNo             =Nej
swe_ButtonWizardBrowse   =Bläddra i mappar
swe_ButtonYes            =Ja
swe_CancelTitle          =Installationsfel
swe_Clean                =Klicka på ikonen «HDD» för att starta diskrensning
swe_Clean1               =Innan du installerar måste du ta bort spelet!
swe_Close                =Stänga
swe_Delete               =Bort
swe_Desktop              =Ikonen «{#NAME}» på skrivbordet
swe_DesktopLang          ={#NAME} Språk Växlare
swe_DirDesc              =Installationsmappar
swe_DirectX              =Installera DirectX
swe_DirectX1             =DirectX: Installerad
swe_EllipsedTime         =Tiden gick:
swe_ExitSetupTitle       =Avslutande installatör «{#NAME}»
swe_ExitSetupMessage     =Installationen av «{#NAME}» är ofullständig!%nOm du avslutar kommer  «{#NAME}» inte att installeras!%n%nAvsluta installatören «{#NAME}»?
swe_FinishedLabel        =«{#NAME}» har installerats på din dator
swe_FinishedLabel1       =Du kan starta «{#NAME}» nu eller%nsenare genom att välja lämplig genväg%npå Start-menyn eller på skrivbordet.
swe_FinishedLabel2       =Klicka på «Slutför» för att lämna installationsprogrammet
swe_FinishedTitle        =Slutför installationen av «{#NAME}»
swe_FreeSpace            =Tillgängligt diskutrymme:
swe_Gb                   = Gb
swe_Hour                 = timme
swe_Internet             ={#NAME} på Internet
swe_Lang                 =Svenska
swe_Language             =Välj gränssnittsspråket för spelet:
swe_License              =The Sims 4 Slutanvändarlicensavtal
swe_Mb                   = Mb
swe_Message1             =Klicka på «Ja» för att avsluta installationsprogrammet,%neller «Nej» för att fortsätta installationen.
swe_Message2             =Installera i systemmappen!
swe_Message3             =%n%nDet är inte tillåtet att installera «{#NAME}» i systemmapparna!%nVänligen försök igen.
swe_Message4             =%nKlicka på «Ja» för att ändra installationsvägen
swe_Message5             =En körinstallation av «{#NAME}» upptäcktes
swe_Message6             =En kör installationsinstans av «{#NAME}» upptäcktes%n%nDet är oacceptabelt att köra flera instanser av installationen!%nFör att fortsätta installationen måste du stänga körprocessen.
swe_Message7             =%nKlicka på «Ja» för att avsluta installationen
swe_Message8             =Din dator är i fara!
swe_Message9             =Installationsfilen har genomgått en ändring!%n%nFilen kanske inte är helt nedladdad, eller det kan vara skadad!%nDet är nödvändigt att uppdatera hash av filer i torrent-klienten,%neller ladda ner spelet från en annan källa!
swe_Message10            =Upptäckte en kör spelet
swe_Message11            =%n%nom du fortsätter med installationen kommer spelet att stängas automatiskt%noch speldata kan gå förlorade!
swe_Message12            =klicka på «Nästa» för att fortsätta%neller «Avbryt» för att avsluta installationen
swe_Mhz                  = MHz
swe_Min                  = min
swe_Msgbox               =Hittade ett installerat spel%n«{#NAME}»
swe_Msgbox1              =Klicka på «Spela» för att starta spelet.%n«Bort» för att avsluta programmet för radering%noch den efterföljande rena installationen av spelet.%n%n%n%n%n%n%n%nKlicka på «Nästa» för att uppdatera spelet
swe_Msgbox2              =Speldata går förlorad!%n%nKlicka på «Bort» för att radera spelet.%n%n%n%n%n%n%n«Nästa» för att installera spelet%ni den upptäckta mappen
swe_Msgbox3              =Du har den senaste versionen av spelet%n«{#NAME}» v.
swe_NeedSpace            =Krävs för installation:
swe_NeedUpdate           =Krävs för uppdatering:
swe_NextLbl              =Klicka på «Nästa» för att fortsätta
swe_NoProgramGroupCheck2 =Skapa inte en mapp i «Start-menyn»
swe_Play                 =Starta spelet «{#NAME}»
swe_Readme               =Läsmig
swe_Redist               =Ytterligare programvara:
swe_RedistDirectX        =Installera DirectX ...
swe_RedistProgress       =Det finns installation av ytterligare programvara
swe_RedistTitle          =Installera ytterligare programvara
swe_RedistVisual10       =Uppdatering av VisualC++ 2010 ...
swe_RedistVisual13       =Installera VisualC++ 2013 ...
swe_RedistVisual19       =Installera VisualC++ 2015-2019 ...
swe_RedistWait           =Vänta tills slutet!
swe_RemainingTime        =vänster:
swe_Remains              =Återstående tid:
swe_IconsTitle           =Förberedelser för att starta spelet
swe_ReqLabel             =Installera spelgenvägar och registerposter...
swe_Screenshots          =Skärmbilder
swe_Sec                  = s
swe_SelectDirLabel       =Behöver du rengöra, eller välj en annan enhet!
swe_SelectDirLabel1      =Installationsmappen för spelet «{#NAME}»:
swe_SelectDirLabel2      =Det finns inte tillräckligt med utrymme för att uppdatera «{#NAME}»
swe_SelectDirLabel3      =Programuppdatering «{#NAME}»:
swe_SelectStartMenu      =Programuppdateringar «start-menyn»:
swe_SelectStartMenuLbl3  =Mappen med genvägarna i «start-menyn»:
swe_SelectTasksEditLabel =Avmarkera de komponenter som du vill installera krävs inte,%nklicka sedan på «Installera»
swe_SelectTasksLabel     =Välj ytterligare uppgifter som ska utföras efter installationen av «{#NAME}»
swe_SetupAborted         =Installationen av «{#NAME}» avbröts!%n%nLös problemet och försök att starta installationen igen ...
swe_SetupAppTitle        =Installera «{#NAME}»
swe_SetupAppTitle1       =Uppdatering «{#NAME}»
swe_Start                =Spela
swe_StatusRollback       =Återställningsändringar.%nRadera installationsfiler ...
swe_Taskbar              =Ikonen «{#NAME}» i aktivitetsfältet
swe_TasksName            =Ytterligare uppgifter
swe_Tb                   = Tb
swe_Thanks               =tack för projektet%nBulat Ziganshin®%nCodejock Software®%nFragSoft®%nIgor Pavlov®%nKrinkels®%nprofrager®%nRazor12911®%nSouth.Tver®%n%n* * *%nsärskilt tack%nalla vänner i datakomprimeringsgruppen%nkrinkels.org
swe_TotalSpace           =Hårddiskstorlek:
swe_UninstalMsg          =Klicka på «Bort» för att fortsätta radera,%neller «Avbryt» för att avsluta avinstallationsprogrammet
swe_UninstalMsg1         = Ta bort «{#NAME}»
swe_UninstalMsg2         = Ta bort «{#NAME}» + spara spelet
swe_UninstalMsg3         = Ta bort «{#NAME}» + spara spelet + säkerhetskopior
swe_UninstallStatusLabel =Välj borttagningsmetoden «{#NAME}»
swe_UninstallStatusLbl   =Vänligen vänta, borttagningen av «{#NAME}»
swe_VisualC              =Installera VisualC++ 2013
swe_VisualC1             =VisualC++ 2013: Installerad
swe_VisualC19            =Installera VisualC++ 2015-2019
swe_VisualC119           =VisualC++ 2015-2019: Installerad
swe_VisualCU             =Uppdatera VisualC++ 2010
swe_VisualCU1            =VisualC++ 2010sp1: Uppdaterad
swe_Cancel               =Klicka på «Avbryt» för att avsluta installationen.
swe_NextDisk             =Saknad enhet:
swe_NextDisk1            =%nVänligen sätt in skivan och vänta tills den initialiseras!
swe_WelcomeLabel1        =Välkommen till%n«{#NAME}» installatören
swe_WelcomeLabel3        =Före installationen,%ndet rekommenderas att inaktivera antivirusprogrammet%noch stäng alla körprogram!
swe_WelcomeTitle         =Välkommen!
swe_WizardUninstalling   =Radera status
swe_Backup               =Skapa en kopia av spara spel
swe_Backup1              = kopierade:
swe_Backup2              = från:
swe_Backup3              =Kopiera status:
#ifdef System
swe_DeviceDriver         =Enhetsdrivrutinen kunde inte hittas
swe_NextLbl1             =Tänk innan du fortsätter! Stabiliteten i spelet är inte garanterat!
swe_NextLbl2             =Installation är inte möjlig! Klicka på «Avbryt» för att avsluta installationen!
swe_NextLbl3             =Ditt system stöds inte längre!
swe_NotSystem            =OMSÄTTIGT ATT BESTÄMMAS SYSTEMETS VERSION!
swe_OperationSystem      =Systemet
swe_Processor            =Processor
swe_RAM                  =Minne
swe_RAM1                 =RAM:
swe_RAM2                 =gratis:
swe_RAM3                 =upptagen:
swe_RAM4                 =Byt fil:
swe_Req2                 =Alla komponenter på din dator%nuppfylla minimikraven i spelet
swe_Req3                 =! VARNING !%nDatorn uppfyller inte minimikraven för spelet!
swe_Req4                 =! SYSTEMFEL !%nKanske är det installerade systemet inte Windows!
swe_SoundCard            =Ljudkort
swe_System               =Systemkrav
swe_VideoCard            =Videokort
#endif
// СЕКЦИЯ ЗАПИСЕЙ В РЕЕСТР ПРОГРАММЫ УСТАНОВКИ
//=============================================================
[Registry]
// HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache
//===========================================================================
Root: HKCR; SubKey: {#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE64}; ValueData: {#Desktop64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCR; SubKey: {#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE}; ValueData: {#Desktop}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache
//============================================================================================
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE}; ValueData: The Sims™ 4 Legacy Edition; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE64}; ValueData: The Sims™ 4; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE}.FriendlyAppName; ValueData: The Sims™ 4 Legacy Edition; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE}.ApplicationCompany; ValueData: Electronic Arts Inc.; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE}.FriendlyAppName; ValueData: The Sims™ 4 Legacy Edition; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE}.ApplicationCompany; ValueData: Electronic Arts Inc.; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE64}.FriendlyAppName; ValueData: The Sims™ 4; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: Software\Classes\{#MuiCache}; ValueType: string; ValueName: {app}\{#AppEXE64}.ApplicationCompany; ValueData: Electronic Arts Inc.; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_CURRENT_USER\Software\Microsoft\Direct3D\MostRecentApplication
//====================================================================
Root: HKCU; SubKey: {#Direct3D}; ValueType: string; ValueName: Name; ValueData: TS4_x64.exe; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#Direct3D}; ValueType: string; ValueName: Name; ValueData: TS4.exe; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_CURRENT_USER\Software\Electronic Arts\EA Core\Staging                            
//===========================================================
Root: HKCU; SubKey: {#UserCore}\1011164; Flags: uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\1011164; ValueType: string; ValueName: Display; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\1011164; ValueType: string; ValueName: Display; ValueData: {#LocaleName}; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\1011164; ValueType: string; ValueName: Locale;  ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\1011164\ergc; ValueType: string; ValueData: EHPX66SPAUN7CQQGARD2; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\1011164\MemberName; ValueType: string; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\eadm\eadm\online_content\1011164; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\eadm\eadm\online_content\1011164; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\eadm\eadm\online_content\1011164; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\eadm\eadm\online_content\1011164; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#UserCore}\Staging\eadm\eadm\online_content\1011164\ergc; ValueType: string; ValueData: EHPX66SPAUN7CQQGARD2; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion
//===============================================================
Root: HKCU; SubKey: {#WindowsNT}\AppCompatFlags\Compatibility Assistant\Persisted; ValueType: dword; ValueName: SIGN.MEDIA=C14C5911 Sims4.exe; ValueData: $00000001; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE64}; ValueData: RUNASADMIN; Check: CheckError and IsWin64 and IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE64}; ValueData: WIN7RTM RUNASADMIN; Check: CheckError and IsWin64 and not IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE}; ValueData: RUNASADMIN; Check: CheckError and Legacy and IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE}; ValueData: WIN7RTM RUNASADMIN; Check: CheckError and Legacy and IsWin6 and not IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#UninsEXE}; ValueData: RUNASADMIN; Check: CheckError and IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKCU; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#UninsEXE}; ValueData: WIN7RTM RUNASADMIN; Check: CheckError and IsWin6 and not IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Maxis
//==================================
Root: HKLM; SubKey: {#Maxis}; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: Alternative Install Dir; ValueData: {app}; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: GameExplorer; ValueData: {{0AFF5EB4-1246-427A-8DCC-B2379B36A709}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: GameExplorer; ValueData: {{6EBD5E28-BB54-4791-9934-AEC780E7247D}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: GDFBinary; ValueData: {#UNINSTALL}\GDFBinary.dll; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: Install Dir; ValueData: {app}\; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: Product GUID; ValueData: {{48EBEBBF-B9F8-4520-A3CF-89A730721917}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\InstallOptSelect; ValueType: string; ValueData: 1; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Maxis\The Sims 4\DLCs
//==================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Digital Soundtrack; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Digital Soundtrack; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\Soundtrack\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Holiday Celebration Pack; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Holiday Celebration Pack; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\FP01\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Legacy Edition Data; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\LE\{#UninsEXE}"""; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Legacy Edition Data; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Maxis Х64
//======================================
Root: HKLM64; SubKey: {#Maxis}; Check: CheckError and IsWin64; Flags: uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; Check: CheckError and IsWin64; Flags: uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: GameExplorer; ValueData: {{0AFF5EB4-1246-427A-8DCC-B2379B36A709}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: GameExplorer; ValueData: {{6EBD5E28-BB54-4791-9934-AEC780E7247D}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: GDFBinary; ValueData: {#UNINSTALL}\GDFBinary.dll; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: Install Dir; ValueData: {app}\; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4; ValueType: string; ValueName: Product GUID; ValueData: {{48EBEBBF-B9F8-4520-A3CF-89A730721917}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\InstallOptSelect; ValueType: string; ValueData: 1; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Maxis\The Sims 4\DLCs Х64
//==================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Digital Soundtrack; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Digital Soundtrack; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\Soundtrack\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Holiday Celebration Pack; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Holiday Celebration Pack; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\FP01\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Legacy Edition Data; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\LE\{#UninsEXE}"""; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Legacy Edition Data; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
#ifdef Components
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP01\{#UninsEXE}"""; Check: CheckError; Components: addon\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: addon\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP02\{#UninsEXE}"""; Check: CheckError; Components: addon\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: addon\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP03\{#UninsEXE}"""; Check: CheckError; Components: addon\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: addon\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP04\{#UninsEXE}"""; Check: CheckError; Components: addon\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: addon\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP05\{#UninsEXE}"""; Check: CheckError; Components: addon\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: addon\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP06\{#UninsEXE}"""; Check: CheckError; Components: addon\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: addon\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP07\{#UninsEXE}"""; Check: CheckError; Components: addon\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: addon\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP08\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP09\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP10\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP11\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\11; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP01\{#UninsEXE}"""; Check: CheckError; Components: pack\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP02\{#UninsEXE}"""; Check: CheckError; Components: pack\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP03\{#UninsEXE}"""; Check: CheckError; Components: pack\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP04\{#UninsEXE}"""; Check: CheckError; Components: pack\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP05\{#UninsEXE}"""; Check: CheckError; Components: pack\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP06\{#UninsEXE}"""; Check: CheckError; Components: pack\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP07\{#UninsEXE}"""; Check: CheckError; Components: pack\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP08\{#UninsEXE}"""; Check: CheckError; Components: pack\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: pack\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP09\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP10\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP11\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\11; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP01\{#UninsEXE}"""; Check: CheckError; Components: stuff\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP02\{#UninsEXE}"""; Check: CheckError; Components: stuff\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP03\{#UninsEXE}"""; Check: CheckError; Components: stuff\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP04\{#UninsEXE}"""; Check: CheckError; Components: stuff\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP05\{#UninsEXE}"""; Check: CheckError; Components: stuff\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP06\{#UninsEXE}"""; Check: CheckError; Components: stuff\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP07\{#UninsEXE}"""; Check: CheckError; Components: stuff\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP08\{#UninsEXE}"""; Check: CheckError; Components: stuff\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP09\{#UninsEXE}"""; Check: CheckError; Components: stuff\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP10\{#UninsEXE}"""; Check: CheckError; Components: stuff\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP11\{#UninsEXE}"""; Check: CheckError; Components: stuff\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\11; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP12\{#UninsEXE}"""; Check: CheckError; Components: stuff\12; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\12; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP13\{#UninsEXE}"""; Check: CheckError; Components: stuff\13; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\13; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP14\{#UninsEXE}"""; Check: CheckError; Components: stuff\14; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\14; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP15\{#UninsEXE}"""; Check: CheckError; Components: stuff\15; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Components: stuff\15; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP16\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\16; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\16; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP17\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\17; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\17; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP18\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\18; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\18; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP20\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP21\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP22\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP23\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP24\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Industrial Loft Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP25\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Industrial Loft Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP26\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP28\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP29\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP30\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP31\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\11; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP01\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP02\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP03\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP04\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP05\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP06\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP07\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: addon\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: addon\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP08\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: addon\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: addon\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP09\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: addon\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: addon\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP10\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: addon\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: addon\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP11\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: addon\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: addon\11; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP01\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP02\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP03\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP04\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP05\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP06\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP07\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP08\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: pack\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: pack\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP09\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: pack\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: pack\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP10\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: pack\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: pack\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP11\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: pack\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: pack\11; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP01\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP02\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP03\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP04\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP05\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP06\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP07\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP08\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP09\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP10\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP11\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\11; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP12\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\12; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\12; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP13\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\13; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\13; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP14\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\14; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\14; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP15\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: stuff\15; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: stuff\15; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP16\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: stuff\16; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: stuff\16; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP17\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: stuff\17; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: stuff\17; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP18\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: stuff\18; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: stuff\18; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP20\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\1; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\1; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP21\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\2; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\2; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP22\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\3; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\3; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP23\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\4; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\4; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP24\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\5; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\5; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Industrial Loft Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP25\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\6; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Industrial Loft Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\6; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP26\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\7; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\7; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP28\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\8; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\8; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP29\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Components: kits\9; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Components: kits\9; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP30\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\10; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP31\{#UninsEXE}"""; Check: CheckError and IsWin64; Components: kits\11; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Components: kits\11; Flags: uninsdeletevalue uninsdeletekeyifempty
#else
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP01\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP02\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP03\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP04\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP05\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP06\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP07\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP08\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP09\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP10\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP11\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP01\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP02\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP03\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP04\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP05\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP06\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP07\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP08\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP09\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP10\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP11\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP01\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP02\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP03\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP04\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP05\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP06\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP07\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP08\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP09\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP10\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP11\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP12\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP13\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP14\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP15\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP16\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP17\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP18\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP20\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP21\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP22\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP23\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP24\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Indastrial Loft Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP25\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Indastrial Loft Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP26\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP28\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP29\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP30\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP31\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP01\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get to Work; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP02\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Together; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP03\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 City Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP04\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cats & Dogs; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP05\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Seasons; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP06\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Get Famous; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP07\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Island Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP08\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Discover University; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP09\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Eco Lifestyle; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP10\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Snowy Escape; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\EP11\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cottage Living; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP01\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Great Outdoors; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP02\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spa Day; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP03\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dine Out; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP04\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vampires; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP05\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Parenthood; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP06\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Jungle Adventure; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP07\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 StrangerVille; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP08\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Realm of Magic; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP09\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Star Wars: Journey to Batuu; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP10\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Dream Home Decorator; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\GP11\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My Wedding Stories; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP01\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Luxury Party Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP02\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Perfect Patio Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP03\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Cool Kitchen Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP04\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Spooky Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP05\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Movie Hangout Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP06\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Romantic Garden Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP07\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Kids Room Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP08\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Backyard Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP09\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Vintage Glamour Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP10\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bowling Night Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP11\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fitness Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP12\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Toddler Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP13\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Laundry Day Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP14\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 My First Pet Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP15\{#UninsEXE}"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Moschino Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP16\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Tiny Living Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP17\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Nifty Knitting Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP18\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Paranormal Stuff; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP20\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Throwback Fit Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP21\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Country Kitchen Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP22\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Bust the Dust Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP23\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Courtyard Oasis Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP24\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Fashion Street Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Indastrial Loft Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP25\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Indastrial Loft Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP26\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Incheon Arrivals Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP28\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Modern Menswear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP29\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Blooming Rooms Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP30\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Carnival Streetwear Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
//=============================================================
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerPath; ValueData: """{#DLCs}\SP31\{#UninsEXE}"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Maxis}\The Sims 4\DLCs\The Sims 4 Décor to the Max Kit; ValueType: string; ValueName: UninstallerArgs; ValueData: uninstall_pdlc -autologging; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
#endif
// HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\GameUX\Games\{{0AFF5EB4-1246-427A-8DCC-B2379B36A709} -x 86
//========================================================================================================================
Root: HKLM; SubKey: {#Games}; Check: CheckError and not IsWin64; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: AppExePath; ValueData: {app}\{#AppEXE}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: ApplicationId; ValueData: {{48EBEBBF-B9F8-4520-A3CF-89A730721917}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: ConfigInstallType; ValueData: 2; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: ConfigApplicationPath; ValueData: {app}\; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: ConfigGDFBinaryPath; ValueData: {app}\__Installer\GDFBinary.dll; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: dword;  ValueName: GDFVersion; ValueData: $00000002; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: Description; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: dword;  ValueName: IsSigned; ValueData: $00000001; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: RatingsInfo; ValueData: "<Ratings xmlns=""urn:schemas-microsoft-com:GameDescription.v1"""; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games}; ValueType: string; ValueName: Title; ValueData: {#Display}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\GameUX\Games\{{6EBD5E28-BB54-4791-9934-AEC780E7247D}
//==================================================================================================================
Root: HKLM; SubKey: {#Games64}; Check: CheckError and IsWin64; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: AppExePath; ValueData: {app}\{#AppEXE64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: ApplicationId; ValueData: {{48EBEBBF-B9F8-4520-A3CF-89A730721917}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: ConfigInstallType; ValueData: 2; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: ConfigApplicationPath; ValueData: {app}\; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: Description; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: dword;  ValueName: IsSigned; ValueData: $00000001; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: RatingsInfo; ValueData: "<Ratings xmlns=""urn:schemas-microsoft-com:GameDescription.v1"""; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Games64}; ValueType: string; ValueName: Title; ValueData: {#Display}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\GameUX\Games\{{0AFF5EB4-1246-427A-8DCC-B2379B36A709} -x 64
//========================================================================================================================
Root: HKLM64; SubKey: {#Games}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: AppExePath; ValueData: {app}\{#AppEXE}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: ApplicationId; ValueData: {{48EBEBBF-B9F8-4520-A3CF-89A730721917}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: ConfigInstallType; ValueData: 2; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: ConfigApplicationPath; ValueData: {app}\; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: ConfigGDFBinaryPath; ValueData: {app}\__Installer\GDFBinary.dll; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: dword;  ValueName: GDFVersion; ValueData: $00000002; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: Description; ValueData: {#LocaleName}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: dword;  ValueName: IsSigned; ValueData: $00000001; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: RatingsInfo; ValueData: "<Ratings xmlns=""urn:schemas-microsoft-com:GameDescription.v1"""; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games}; ValueType: string; ValueName: Title; ValueData: {#Display}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\GameUX\Games\{{6EBD5E28-BB54-4791-9934-AEC780E7247D} - x64
//========================================================================================================================
Root: HKLM64; SubKey: {#Games64}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: AppExePath; ValueData: {app}\{#AppEXE64}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: ApplicationId; ValueData: {{48EBEBBF-B9F8-4520-A3CF-89A730721917}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: ConfigInstallType; ValueData: 2; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: ConfigApplicationPath; ValueData: {app}\; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: Description; ValueData: {#LocaleName64}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: dword;  ValueName: IsSigned; ValueData: $00000001; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: RatingsInfo; ValueData: "<Ratings xmlns=""urn:schemas-microsoft-com:GameDescription.v1"""; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM64; SubKey: {#Games64}; ValueType: string; ValueName: Title; ValueData: {#Display}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}
//===============================================================================================================
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: AppPath; ValueData: {app}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: Comments; ValueData: {#Autor}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: DisplayIcon; ValueData: {app}\{#AppEXE64}, 0; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: DisplayIcon; ValueData: {app}\{#AppEXE}, 0; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: DisplayVersion; ValueData: {#VERSION}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: DisplayVersion; ValueData: {#VERSIONLE}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: dword;  ValueName: EstimatedSize; ValueData: {#GameSize}; Check: CheckError and IsWin64 and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: dword;  ValueName: EstimatedSize; ValueData: {#GameSize64}; Check: CheckError and IsWin64 and not Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: dword;  ValueName: EstimatedSize; ValueData: {#GameSizeLE}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: HelpLink; ValueData: {#Support}\EA Help\{#HelpText}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: Icon Group; ValueData: {group}; Check: CheckError and NoIcons; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: InstallLocation; ValueData: {app}\; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: InstallSource; ValueData: {src}\; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: Language; ValueData: {#Language}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: dword;  ValueName: MajorVersion; ValueData: $00000001; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: dword;  ValueName: MinorVersion; ValueData: {#MINOR}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: dword;  ValueName: NoModify; ValueData: $00000001; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: dword;  ValueName: NoRepair; ValueData: $00000001; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: Publisher; ValueData: {#Publisher}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: Readme; ValueData: {#Support}\readme.lnk; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: QuietUninstallString; ValueData: """{app}\{#UninsEXE}"" /SILENT"; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: UninstallString; ValueData: """{app}\{#UninsEXE}"""; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: URLInfoAbout; ValueData: {#URL}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}; ValueType: string; ValueName: User; ValueData: {username}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Origin Games
//=========================================
Root: HKLM; SubKey: {#Origin}; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1011164; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1011164; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1011164; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1011164; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1011164\ergc; ValueType: string; ValueData: EHPX66SPAUN7CQQGARD2; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015224; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015224; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015224; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015224; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015235; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015235; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015235; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015235; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015236; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015236; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015236; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015236; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015793; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015793; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015793; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015793; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015794; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015794; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015794; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015794; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015795; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015795; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015795; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015795; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015806; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015806; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015806; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015806; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015807; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015807; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015807; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015807; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015808; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015808; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015808; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015808; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015875; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015875; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015875; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015875; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015876; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015876; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015876; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1015876; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018023; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018023; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018023; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018023; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018025; Check: CheckError; Flags: uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018025; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName64}; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018025; ValueType: string; ValueName: DisplayName; ValueData: {#LocaleName}; Check: CheckError and not IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Origin}\1018025; ValueType: string; ValueName: Locale; ValueData: {#Locale}; Check: CheckError; Flags: uninsdeletevalue uninsdeletekeyifempty
// HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion
//================================================================
Root: HKLM; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE64}; ValueData: RUNASADMIN; Check: CheckError and IsWin64 and IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE64}; ValueData: WIN7RTM RUNASADMIN; Check: CheckError and IsWin64 and not IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE}; ValueData: RUNASADMIN; Check: CheckError and Legacy and IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#AppEXE}; ValueData: WIN7RTM RUNASADMIN; Check: CheckError and Legacy and IsWin6 and not IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#UninsEXE}; ValueData: RUNASADMIN; Check: CheckError and IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#WindowsNT}\AppCompatFlags\Layers; ValueType: string; ValueName: {app}\{#UninsEXE}; ValueData: WIN7RTM RUNASADMIN; Check: CheckError and IsWin6 and not IsWin10; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#WindowsNT}\drivers.desc; ValueType: string; ValueName: vp6vfw.dll; ValueData: EA VP6 Codec; Check: CheckError; Flags: createvalueifdoesntexist noerror
Root: HKLM; SubKey: {#WindowsNT}\Drivers32; ValueType: string; ValueName: vidc.VP60; ValueData: vp6vfw.dll; Check: CheckError; Flags: createvalueifdoesntexist noerror
Root: HKLM; SubKey: {#WindowsNT}\Drivers32; ValueType: string; ValueName: vidc.VP61; ValueData: vp6vfw.dll; Check: CheckError; Flags: createvalueifdoesntexist noerror
// HKEY_LOCAL_MACHINE\System\ControlSet001\services\SharedAccess\Parameters\FirewallPolicy\FirewallRules
//======================================================================================================
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: {{56785011-ED84-45D8-A48A-A8C2BD223E3C}; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=6|Profile=Private|App={app}\game\Bin\TS4_x64.exe|Name=The Sims™ 4 64 Bit|; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: {{8FE846FF-C802-4693-9CB8-B67DC0AA8DEA}; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=17|Profile=Private|App={app}\game\Bin\TS4_x64.exe|Name=The Sims™ 4 64 Bit|; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: TCP Query User{{F83C11F5-0A84-4065-B1F4-F28D3EA4ACF2}{app}\game\Bin\TS4_x64.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=6|Profile=Private|App={app}\game\Bin\TS4_x64.exe|Name=The Sims™ 4|Desc=The Sims™ 4|Defer=User|; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: UDP Query User{{99974C0B-1F4E-42CB-A9B8-F433ED5D77B5}{app}\game\Bin\TS4_x64.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=17|Profile=Private|App={app}\game\Bin\TS4_x64.exe|Name=The Sims™ 4|Desc=The Sims™ 4|Defer=User|; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: TCP Query User{{437658E2-F001-4D6A-91A8-162682E29713}{app}\game\Bin\TS4_x64.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=6|Profile=Private|App={app}\game\Bin\TS4_x64.exe|Name=The Sims™ 4|Desc=The Sims™ 4|Defer=User|; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: UDP Query User{{5037F24C-D285-4EEA-908B-8E4E823EE7DE}{app}\game\Bin\TS4_x64.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=17|Profile=Private|App={app}\game\Bin\TS4_x64.exe|Name=The Sims™ 4|Desc=The Sims™ 4|Defer=User|; Check: CheckError and IsWin64; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: {{10D51D33-185B-4930-B38A-7FE99F7787A4}; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=6|Profile=Private|App={app}\game\Bin_LE\TS4.exe|Name=The Sims™ 4 32 Bit Legacy Edition|; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: {{EE8FC59F-C448-4AEF-B18D-F219A9E4E376}; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=17|Profile=Private|App={app}\game\Bin_LE\TS4.exe|Name=The Sims™ 4 32 Bit Legacy Edition|; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: TCP Query User{{0FE41290-ECF0-4AA8-B3B4-A9917AD9720C}{app}\game\Bin_LE\TS4.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=6|Profile=Private|App={app}\game\Bin_LE\TS4.exe|Name=The Sims™ 4 Legacy Edition|Desc=The Sims™ 4 Legacy Edition|Defer=User|; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: UDP Query User{{B7BCE996-53BA-4E17-93DC-C88C7D49BF2A}{app}\game\Bin_LE\TS4.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=17|Profile=Private|App={app}\game\Bin_LE\TS4.exe|Name=The Sims™ 4 Legacy Edition|Desc=The Sims™ 4 Legacy Edition|Defer=User|; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: TCP Query User{{FCFFCB9A-1A33-4E48-ACD0-54FCA3ABFB7C}{app}\game\bin_le\ts4.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=6|Profile=Private|App={app}\game\bin_le\ts4.exe|Name=The Sims™ 4 Legacy Edition|Desc=The Sims™ 4 Legacy Edition|Defer=User|; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
Root: HKLM; SubKey: {#Farewall}; ValueType: string; ValueName: UDP Query User{{DDBB17C2-BE8E-48AA-B9AC-6F54071EED2D}{app}\game\bin_le\ts4.exe; ValueData: v2.10|Action=Allow|Active=TRUE|Dir=In|Protocol=17|Profile=Private|App={app}\game\bin_le\ts4.exe|Name=The Sims™ 4 Legacy Edition|Desc=The Sims™ 4 Legacy Edition|Defer=User|; Check: CheckError and Legacy; Flags: uninsdeletevalue uninsdeletekeyifempty
// СЕКЦИЯ УДАЛЕНИЯ
//=============================================================
[UninstallDelete]
Type: filesandordirs; Name: "{app}"
Type: filesandordirs; Name: "{group}"
//                       СКРИПТ НА PASCAL
//▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
[Code]
// Константы секции Pascal 
//=============================================================
#define A = (Defined UNICODE) ? "W" : "A"
const
#ifdef Priority
  HIGH_PRIORITY_CLASS = $00000080;
  LOW_PRIORITY_CLASS = $00000010;
  NORMAL_PRIORITY_CLASS = $00000020;
#endif
  DRIVE_FIXED = 3;
  FO_MOVE = $0001;
  FO_COPY = $0002;
  FO_DELETE = $0003;
  FO_RENAME = $0004;
  FOF_SILENT = $0004;
  FOF_NOCONFIRMATION = $0010;
  FOF_ALLOWUNDO = $0040;
  FOF_FILESONLY = $0080;
  FOF_NOCONFIRMMKDIR = $0200;
  GWL_EXSTYLE = -20;
  GWL_WNDPROC = -4;
  WM_USER = $0400;
  PBM_SETPOS = WM_USER+2;
  MyCursor = 101;
  oneMB = 1048576;
  RT_RCDATA = 10;
#ifdef Glass
  TransparentPercent = {#percent};
	WS_EX_APPWINDOW = $40000;
	WS_EX_LAYERED = $80000;
	WS_EX_TRANSPARENT = $20;
	LWA_ALPHA = 2;
#endif
  ArrayLength = 64;
  BTN_MAX_PATH = 1024;
  FR_PRIVATE = $10;
  CLSID_TaskbandPin = '{90AA3A4E-1CBA-4233-B8BB-535773D48449}';
  IID_IPinnedList = '{0DD79AE2-D156-45D4-9EEB-3B549769E940}';
  CLSCTX_INPROC_SERVER = 1;
  PLMC_EXPLORER = 4;
  PCFonFLY = True;
  notPCFonFLY = False;
  S_OK = 0;
// Тип записей секции Pascal
//=============================================================
type
#ifdef System
  PDisplay_Device = record
  cb: DWord;
  DeviceName: array [0..31] of Char;
  DeviceString: array [0..127] of Char;
  StateFlags: DWord;
  DeviceID: array [0..127] of Char;
  DeviceKey: array [0..127] of Char;
	end;
  THardwareRequirementSnapShot = record
  WinName, WinBits, SPack: String;
  WinVer: TWindowsVersion;
	end;
  TMemoryStatusEx = record
  dwLength, dwMemoryLoad: DWord;
  LoTotalPhys, HiTotalPhys, LoAvailPhys, HiAvailPhys, LoTotalPageFile, HiTotalPageFile, LoAvailPageFile, HiAvailPageFile, LoTotalVirtual, HiTotalVirtual, LoAvailVirtual, HiAvailVirtual, LoAvailExtendedVirtual, HiAvailExtendedVirtual: Integer;
	end;
#endif
  TCallback = function(OveralPct, CurrentPct: Integer; CurrentFile, TimeStr1, TimeStr2, TimeStr3: PAnsiChar): longWord;
  TSHFileOpStruct = record
  Wnd: HWND;
  wFunc: UINT;
  pFrom: String;
  pTo: String;
  fFlags: Word;
  fAnyOperationsAborted: BOOL;
  hNameMappings: HWND;
  lpszProgressTitle: String;
	end;
  TALabel = array of TLabel;
  LPARAM = Integer;
  LRESULT = Integer;
  WPARAM = Integer;
  TTextBuf = array [0..BTN_MAX_PATH-1] of AnsiChar;
  PItemIDList = LongWord;
  IPinnedList = interface(IUnknown)
	'{0DD79AE2-D156-45D4-9EEB-3B549769E940}'
  procedure EnumObjects;
  procedure GetPinnableInfo; 
  procedure IsPinnable; 
  procedure Resolve;
  procedure LegacyModify; 
  procedure GetChangeCount; 
  function IsPinned(pidl: PItemIDList): HRESULT;
  procedure GetPinnedItem; 
  procedure GetAppIDForPinnedItem;
  procedure ItemChangeNotify;
  procedure UpdateForRemovedItemsAsNecessary; 
  procedure PinShellLink;
  procedure GetPinnedItemForAppID; 
  function Modify(unpin, pin: PItemIDList; ModifyCaller: LongWord): HRESULT;
  end;
// Определение типа переменной 
//=============================================================
var
  AImg: array of Longint;
  Button, LangBtn, RemoveBtn: array [0..18] of HWND;
  ALabel: array [0..4] of TALabel;
  Bevell: array [0..2] of TBevel;
  Images: array [0..3] of Longint;
  ResStream: array [0..15] of TResourceStream;
  ButtonImages: array [1..ArrayLength] of HWND;
  Descriptions: array [1..ArrayLength] of TLabel;
  ButtonEnable: array [1..ArrayLength] of Boolean;
  Clr1, Clr2, Clr3, Clr4: array [1..ArrayLength] of TColor;
  LeftBtn, TopBtn, WidthBtn, HeightBtn: array [1..ArrayLength] of Integer;
  OutLbl, UninstLbl: array [0..2] of TLabel;
	Installbl, Finishlbl: array [0..3] of TLabel; 
	Welcomelbl, Infolbl, RemoveLbl: array [0..6] of TLabel;
	ISDoneLbl: array [0..5] of TLabel;
	Selectlbl, Taskslbl: array [0..9] of TLabel; 
  InfoBtn, wnd: HWND; 
  Flash: TALabel;
  Mutex: THandle;
  FSR, DSR: TFindRec;
  FontInstalled, FindResult, Check, ISDoneError, Taskbar_Init: Boolean;
  hcur, tp, FreeMb, TotalMb, GameSize: Cardinal;
  CurrentImage, CountButtons, x, bit, i, h, m, s, w, Last, ISDoneCancel, iLineCounter, AllSize: Integer;           
  _dir, _fromDir, _toDir, APath, sd, FontName, CurDisk, OldDisk, Dir, Folder, uninst, Unins, Lang, Locale, Direct, Visual, DefInsPath, DefGrPath, p, TimeRight, TimeLeft, FileVersion: String;
  BFont: TFont;
  MsgStr, MsgStr0, MsgStr1, lbl, CopyInfoLabel, FileInfoLabel: TLabel;
  fos: TSHFileOpStruct;
  MessageForm, InfoForm, ExitForm, RedistForm, UninstForm, SlideShowForm, BackForm: TSetupForm;
  OldProc, OldProgressBarProc: Longint;
  DirBrowseForm, GroupBrowseForm: TForm;
  LangPanel: TNewCheckListBox;
  DirTreeView: TFolderTreeView;
  GroupTreeView: TStartMenuFolderTreeView;
  DirEdit: TEdit;
  GroupEdit: TNewEdit;
  OuterPanel, InfoPanel: TPanel;
  Timer: TTimer;
  Origin: TNewIconImage;
  ISDonePB, ProgressBar: TNewProgressBar;
  tc, sTime, eTime: DWORD;
  dt, at, pr, pp, pm: Extended;
	Taskbar_Timer, FormDC, DC, ShowTimer, callback: LongWord;
	ISDoneBvl: TBevel;
  strTextfile: TArrayOfString;
  HWREQ: THardwareRequirementSnapShot;  
#ifndef Controler
#ifdef records
  SizeFile: Integer;
#endif
#endif
#ifdef System
  Panel: array [0..4] of TBevel;
  Systemslbl: array [0..11] of TLabel;
  ProcessorValue, DeviceValue: Cardinal;
  NeedRam: Integer;
  Keys: TArrayOfString;
  wpSystem: TWizardPage;
  lpDisplayDevice: PDisplay_Device;
  DeviceName, DeviceKey, FreePhis, MemPhys, PageFile, SoundName, SystemName, TakePhis: String;
  MemoryEx: TMemoryStatusEx;
#endif
#ifdef Components
  k: Array [0..99] of Boolean;
  Comps1, Comps2, Comps3, TmpValue: Cardinal;  
  SpaceComponentsLabel, ComponentsNextLabel, ComponentLabel: TLabel;
  OldCompListOnClickCheckProc: TNotifyEvent;
  wpComponents: TWizardPage;
#else
  wpTasks: TWizardPage;  
#endif
  LPIDL: PItemIDList;
  LUnk: IUnknown;
  LPinnedList: IPinnedList;
  LShellApp: Variant;
  LVerb: string;
// Подключение системных библиотек 
//=============================================================
function AddFontResource(lpszFilename: String; fl, pdv: DWORD): Integer; external 'AddFontResourceEx{#A}@gdi32.dll stdcall delayload';
function BitBlt(DestDC: LongWord; X, Y, Width, Height: Integer; SrcDC: LongWord; XSrc, YSrc: Integer; Rop: DWORD): BOOL; external 'BitBlt@gdi32 stdcall delayload';
function RemoveFontResource(lpFileName: String; fl, pdv: DWORD): BOOL; external 'RemoveFontResourceEx{#A}@gdi32.dll stdcall delayload';
#ifdef Priority
function GetCurrentProcess: THandle; external 'GetCurrentProcess@kernel32.dll stdcall delayload';
function SetPriorityClass(hProcess: THandle; dwPriorityClass: DWORD): BOOL; external 'SetPriorityClass@kernel32.dll stdcall delayload';
#endif
#ifdef System
function GlobalMemoryStatusEx(var lpBuffer: TMemoryStatusEx): Boolean; external 'GlobalMemoryStatusEx@kernel32.dll stdcall delayload';
function EnumDisplayDevices(lpDevice, iDevNum: DWord; var lpDisplayDevice: PDisplay_Device; dwFlags: DWord): Boolean; external 'EnumDisplayDevices{#A}@user32.dll stdcall delayload';
#endif
function CloseHandle(hObject: THandle): BOOL; external 'CloseHandle@kernel32.dll stdcall delayload';
function CreateMutex(lpMutexAttributes: Longint; bInitialOwner: BOOL; lpName: AnsiString): THandle; external 'CreateMutexA@kernel32.dll stdcall delayload';
function GetLogicalDrives: DWORD; external 'GetLogicalDrives@kernel32.dll stdcall delayload';
function GetDriveType(lpRootPathName: PAnsiChar): Cardinal; external 'GetDriveTypeA@kernel32.dll stdcall delayload';
function GetTickCount: DWord; external 'GetTickCount@kernel32 stdcall delayload';
function SetFileAttributes(lpFileName: PAnsiChar; dwFileAttributes: DWORD): BOOL; external 'SetFileAttributesA@kernel32.dll stdcall delayload';
function SetEnvironmentVariable(lpName: string; lpValue: string): BOOL; external 'SetEnvironmentVariableA@kernel32.dll stdcall delayload';
function SHFileOperation(var lpFileOp: TSHFileOpStruct): Integer; external 'SHFileOperation{#A}@shell32.dll stdcall delayload';
#ifdef Glass
function SetLayeredWindowAttributes(hwnd: HWND; crKey: TColor; bAlpha: BYTE; dwFlags: DWORD): Boolean; external 'SetLayeredWindowAttributes@user32.dll stdcall delayload';
#endif
function CallWindowProc(lpPrevWndFunc: Longint; hWnd: HWND; Msg: UINT; wParam: Longint; lParam: Longint): Longint; external 'CallWindowProc{#A}@user32.dll stdcall delayload';
function GetDC(hWnd: HWND): LongWord; external 'GetDC@user32 stdcall delayload';
function GetSystemMetrics(nIndex: Integer): Integer; external 'GetSystemMetrics@user32.dll stdcall delayload';
function GetWindowLong(hWnd, nIndex: Integer): Longint; external 'GetWindowLongA@user32.dll stdcall delayload';
function SetTimer(hWnd: LongWord; nIDEvent, uElapse: LongWord; lpTimerFunc: LongWord): LongWord; external 'SetTimer@user32.dll stdcall delayload';
function KillTimer(hWnd: LongWord; nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall delayload';
function LoadCursorFromFile(FileName: String): Cardinal; external 'LoadCursorFromFile{#A}@user32 stdcall delayload';
function ReleaseCapture: Longint; external 'ReleaseCapture@user32.dll stdcall delayload';
function ReleaseDC(hWnd: HWND; hDC: LongWord): Integer; external 'ReleaseDC@user32.dll stdcall delayload';
function SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: Longint): Longint; external 'SetWindowLongA@user32.dll stdcall delayload';
function SetWindowText(hWnd: HWND; lpString: String): BOOL; external 'SetWindowText{#A}@user32.dll stdcall delayload';
function ShowWindow(hWnd: HWND; nCmdShow: Integer): Longint; external 'ShowWindow@user32.dll stdcall delayload';
function mciSendString(lpstrCommand: String; lpstrReturnString: String; uReturnLength: Integer; hwndCallback: Integer): Integer; external 'mciSendString{#A}@winmm.dll stdcall delayload';
function sndPlaySound(lpszSoundName: String; uFlags: Cardinal): Integer; external 'sndPlaySound{#A}@winmm.dll stdcall delayload';
// Подключение библиотек программы установки 
//=============================================================
#ifdef Styles
procedure LoadSkin(lpszPath: String; lpszIniFileName: String); external 'LoadSkin@{tmp}\isskin.dll stdcall delayload';
procedure UnloadSkin; external 'UnloadSkin@{tmp}\isskin.dll stdcall delayload';
#endif
function _ImgLoad(Wnd: HWND; FileName: PAnsiChar; Left, Top, Width, Height: Integer; Stretch, IsBkg: Boolean): Longint; external 'ImgLoad@{tmp}\botva2.dll stdcall delayload';
function _BtnCreate(hParent: HWND; Left, Top, Width, Height: Integer; FileName: PAnsiChar; ShadowWidth: Integer; IsCheckBtn: Boolean): HWND; external 'BtnCreate@{tmp}\botva2.dll stdcall delayload';
function BtnGetEnabled(h: HWND): Boolean; external 'BtnGetEnabled@{tmp}\botva2.dll stdcall delayload';
function BtnGetChecked(h: HWND): Boolean; external 'BtnGetChecked@{tmp}\botva2.dll stdcall delayload';
function BtnGetText_(h: HWND; var Text: TTextBuf):integer; external 'BtnGetText@{tmp}\botva2.dll stdcall delayload';
procedure BtnRefresh(h: HWND); external 'BtnRefresh@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetFont(h: HWND; Font: Cardinal); external 'BtnSetFont@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetFontColor(h: HWND; NormalFontColor, FocusedFontColor, PressedFontColor, DisabledFontColor: Cardinal); external 'BtnSetFontColor@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetText(h: HWND; Text: PAnsiChar); external 'BtnSetText@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetEnabled(h: HWND; Value: Boolean); external 'BtnSetEnabled@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetChecked(h: HWND; Value: Boolean); external 'BtnSetChecked@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetEvent(h: HWND; EventID: Integer; Event :LongWord); external 'BtnSetEvent@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetPosition(h: HWND; NewLeft, NewTop, NewWidth, NewHeight: Integer);  external 'BtnSetPosition@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetVisibility(h: HWND; Value: Boolean); external 'BtnSetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetCursor(h: HWND; hCur:Cardinal); external 'BtnSetCursor@{tmp}\botva2.dll stdcall delayload';
procedure gdipShutdown; external 'gdipShutdown@{tmp}\botva2.dll stdcall delayload';
procedure ImgApplyChanges(h: HWND); external 'ImgApplyChanges@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetPosition(img: Longint; NewLeft, NewTop, NewWidth, NewHeight: Integer); external 'ImgSetPosition@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetVisiblePart(img: Longint; NewLeft, NewTop, NewWidth, NewHeight: Integer); external 'ImgSetVisiblePart@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetVisibility(img: Longint; Visible: Boolean); external 'ImgSetVisibility@{tmp}\botva2.dll stdcall delayload';
function ChangeLanguage(Language: AnsiString): Boolean; external 'ChangeLanguage@{tmp}\isdone.dll stdcall delayload';
function ISArcExtract(CurComponent: Cardinal; PctOfTotal: double; InName, OutPath, ExtractedPath: AnsiString; DeleteInFile: Boolean; Password, CfgFile, WorkPath: AnsiString; ExtractPCF: Boolean ): Boolean; external 'ISArcExtract@{tmp}\isdone.dll stdcall delayload';
function ISDoneInit(RecordFileName: AnsiString; TimeType, Comp1, Comp2, Comp3: Cardinal; WinHandle, NeededMem: longint; callback: TCallback): Boolean; external 'ISDoneInit@{tmp}\isdone.dll stdcall delayload';
function ISDoneStop: Boolean; external 'ISDoneStop@{tmp}\isdone.dll stdcall delayload';
function ResumeProc: Boolean; external 'ResumeProc@{tmp}\isdone.dll stdcall delayload';
function ShowChangeDiskWindow(Text, DefaultPath, SearchFile: AnsiString): boolean; external 'ShowChangeDiskWindow@{tmp}\isdone.dll stdcall delayload';
function SuspendProc: Boolean; external 'SuspendProc@{tmp}\isdone.dll stdcall delayload';
function isCopyFile(callback: LongWord; PathOut, PathIn: String; bInnerFolders: bool): Integer; external 'isCopyFile@{tmp}\iscopy.dll stdcall delayload';
procedure BreakCopy(); external 'BreakCopy@{tmp}\iscopy.dll stdcall delayload';
procedure ShowSplashScreen(p1: HWND; p2: AnsiString; p3, p4, p5, p6, p7: Integer; p8: Boolean; p9: Cardinal; p10: Integer); external 'ShowSplashScreen@{tmp}\isgsg.dll stdcall delayload';
function CoCreateInstance(rclsid: TCLSID; pUnkOuter: LongWord; dwClsContext: DWORD; riid: TIID; out ppv: IUnknown): HRESULT; external 'CoCreateInstance@ole32.dll stdcall delayload';
function ILCreateFromPath(const pszPath: string): PItemIDList; external 'ILCreateFromPathW@shell32.dll stdcall delayload';
procedure ILFree(pidl: PItemIDList); external 'ILFree@shell32.dll stdcall delayload';
// Извлечение файлов установки 
//=============================================================
procedure ExtractDataResource();
begin
  ResStream[0]:= TResourceStream.Create(HInstance, '_IS_GSG', RT_RCDATA);
  ResStream[0].SaveToFile(ExpandConstant('{tmp}\isgsg.dll'));
  SetFileAttributes(ExpandConstant('{tmp}\isgsg.dll'), FILE_ATTRIBUTE_HIDDEN);
  ResStream[1]:= TResourceStream.Create(HInstance, '_IS_LOGO', RT_RCDATA);
  ResStream[1].SaveToFile(ExpandConstant('{tmp}\logo.png'));
  SetFileAttributes(ExpandConstant('{tmp}\logo.png'), FILE_ATTRIBUTE_HIDDEN);
#ifdef Styles
  ResStream[2]:= TResourceStream.Create(HInstance, '_IS_SKIN', RT_RCDATA);
  ResStream[2].SaveToFile(ExpandConstant('{tmp}\isskin.dll'));
  SetFileAttributes(ExpandConstant('{tmp}\isskin.dll'), FILE_ATTRIBUTE_HIDDEN);
  ResStream[3]:= TResourceStream.Create(HInstance, '_IS_STYLE', RT_RCDATA);
  ResStream[3].SaveToFile(ExpandConstant('{tmp}\{#Styles}'));
  SetFileAttributes(ExpandConstant('{tmp}\{#Styles}'), FILE_ATTRIBUTE_HIDDEN);
  LoadSkin(ExpandConstant('{tmp}\{#Styles}'), '');
#endif
  ResStream[4]:= TResourceStream.Create(HInstance, '_IS_BOTVA', RT_RCDATA);
  ResStream[4].SaveToFile(ExpandConstant('{tmp}\botva2.dll'));
  SetFileAttributes(ExpandConstant('{tmp}\botva2.dll'), FILE_ATTRIBUTE_HIDDEN);
  ResStream[5]:= TResourceStream.Create(HInstance, '_IS_ANI', RT_RCDATA);
  ResStream[5].SaveToFile(ExpandConstant('{tmp}\ani.ani'));
  SetFileAttributes(ExpandConstant('{tmp}\ani.ani'), FILE_ATTRIBUTE_HIDDEN);
  hcur := {#Cursor};
  Screen.Cursors[MyCursor] := hcur;
if not FileExists(ExpandConstant('{#Dir}\Soundtrack\Believe In Love.mp3')) then begin
  ResStream[6]:= TResourceStream.Create(HInstance, '_IS_MP3', RT_RCDATA);
  ResStream[6].SaveToFile(ExpandConstant('{tmp}\music.mp3'));
  end else
  FileCopy(ExpandConstant('{#Dir}\Soundtrack\Beatrix.mp3'), ExpandConstant('{tmp}\music.mp3'), False);
  SetFileAttributes(ExpandConstant('{tmp}\music.mp3'), FILE_ATTRIBUTE_HIDDEN);
if not (FontExists('{#FontName}')) then begin
  ResStream[7]:= TResourceStream.Create(HInstance, '_IS_FONT', RT_RCDATA);
  ResStream[7].SaveToFile(ExpandConstant('{tmp}\font.ttf'));
  SetFileAttributes(ExpandConstant('{tmp}\font.ttf'), FILE_ATTRIBUTE_HIDDEN);
  FontInstalled:= AddFontResource(ExpandConstant('{tmp}\font.ttf'), FR_PRIVATE, 0) >1;
  FontName:= '{#FontName}';
  end else
  FontName:= '{#FontName}';
  ResStream[8]:= TResourceStream.Create(HInstance, '_IS_WAVE1', RT_RCDATA);
  ResStream[8].SaveToFile(ExpandConstant('{tmp}\Check.wav'));
  SetFileAttributes(ExpandConstant('{tmp}\Check.wav'), FILE_ATTRIBUTE_HIDDEN);
  ResStream[9]:= TResourceStream.Create(HInstance, '_IS_WAVE2', RT_RCDATA);
  ResStream[9].SaveToFile(ExpandConstant('{tmp}\Enter.wav'));
  SetFileAttributes(ExpandConstant('{tmp}\Enter.wav'), FILE_ATTRIBUTE_HIDDEN);
end;
// Проверка Надписи Кириллицей 
//=============================================================
function IsAnsi(S: string): Boolean;
begin
if CompareStr(AnsiUppercase(S), Uppercase(S)) = 0 then
if CompareStr(Lowercase(S), AnsiLowercase(S)) = 0 then Result:= True;
end;
// Проверка версии системы XP\7\8
//=============================================================
function IsWin6: Boolean;
begin
if GetWindowsVersion shr 24 < 6 then Result:= False else Result:= True;
end;
// Проверка версии системы  Win10
//=============================================================
function isWin10: Boolean;
begin
if GetWindowsVersion shr 24 < 10 then Result:= False else Result:= True;
end;
// Создание сохранений
//=============================================================
function Backup: Boolean;
begin
  Result:= BtnGetChecked(Button[3]);
end;
// Проерка на ошибки
//=============================================================
function CheckError: Boolean;
begin
  Result:= not ISDoneError;
end;
// Не создавать значки в меню Пуск
//=============================================================
function NoIcons: Boolean;
begin
  Result:= not BtnGetChecked(Button[4]);
end;
// Значок игры на рабочий стол
//=============================================================
function Desktop: Boolean;
begin
  Result:= BtnGetChecked(Button[5]);
end;
// Проверка Папки Издания Legacy
//=============================================================
function Legacy: Boolean;
begin
if IsWin64 then begin
if DirExists(ExpandConstant('{#Dir}\Delta_LE')) then Result:= True else Result:= False;
  end else
	Result:= True;
end;
// Проверка файлов для обновления игры
//=============================================================
function GameUpdate: Boolean;
begin
if RegKeyExists(HKLM, '{#Maxis}\The Sims 4') then begin
if IsWin64 then begin
if not FileExists(ExpandConstant('{#Dir}\{#AppEXE64}')) then Result:= False else
if GetVersionNumbersString(ExpandConstant('{#Dir}\{#AppEXE64}'), FileVersion) then
if FileVersion = '{#PreVersion}' then Result:= True else
if FileVersion <> '{#VERSION}' then Result:= False else Result:= True;
  end else begin
if not FileExists(ExpandConstant('{#Dir}\{#AppEXE}')) then Result:= False else
if GetVersionNumbersString(ExpandConstant('{#Dir}\{#AppEXE}'), FileVersion) then
if FileVersion = '{#PreVersionLE}' then Result:= True else
if FileVersion <> '{#VERSIONLE}' then Result:= False else Result:= True;
	end;
  end else
	Result:= False;
end;
// Выбор диска для установки
//=============================================================
function NoSystemDisc(s: string): string;
begin
  sd:= ExpandConstant('{sd}');
  Result:= sd;
  x:= GetLogicalDrives;
if x <> 0 then
for i:= 1 to 64 do begin
  s:= Chr(64+i);
  bit:= x and 1;
if bit = 1 then begin
  tp:= GetDriveType(PAnsiChar(s+':'));
if tp = DRIVE_FIXED then
if s <> Copy(sd, 1, 1) then begin
  Result:= s+':';
  Break;
  end;
  end;
  x:= x shr 1;
  end;
end;
// Проверка повторного запуска установки игры 
//=============================================================
procedure SMutex();
begin
  Mutex:= CreateMutex(0, True, ExpandConstant('{#SetupSetting("AppMutex")}'));
end;  
// Окно установки игры в системном трее
//=============================================================
procedure update_img(HandleW, Msg, idEvent, TimeSys: LongWord);
begin
	MainForm.ClientWidth:= WizardForm.ClientWidth;
	MainForm.ClientHeight:= WizardForm.ClientHeight;
	MainForm.BorderStyle:= bsNone;
	DC:= GetDC(MainForm.Handle);
	FormDC:= GetDC(WizardForm.Handle);
	BitBlt(DC, 0, 0, MainForm.ClientWidth, MainForm.ClientHeight, FormDC, 0, 0, $00CC0020);
	ReleaseDC(MainForm.Handle, DC);
	ReleaseDC(WizardForm.Handle, FormDC);
if isWin10 then ShowWindow(StrToInt(ExpandConstant('{apphwnd}')), SW_HIDE) else
	ShowWindow(StrToInt(ExpandConstant('{apphwnd}')), SW_SHOW);
end;
// Отображения окна в системном трее 
//=============================================================
procedure init_taskbar();
begin
	Taskbar_Init:= isWin6;
if Taskbar_Init then begin
	MainForm.Left:= ScaleX(-1000);
	MainForm.Show;
	MainForm.Refresh;
	Taskbar_Timer:= SetTimer(0, 0, 200, CallbackAddr('Update_Img'));
	end;
end;
// Закрытие окна в системном трее 
//=============================================================
procedure deinit_taskbar(Sender: TObject);
begin
if Taskbar_Init then KillTimer(0, Taskbar_Timer); 
  MainForm.Hide;  
end;
// Значок в Панели задач
//=============================================================
function PinToTaskbar(const AFilename: string; AIsPin: Boolean): Boolean;
begin
  Result:= False;
if isWin10 then begin
if FileExists(AFilename) then 
  try
  LPIDL:= ILCreateFromPath(AFilename);
  try
  OleCheck(CoCreateInstance(StringToGUID(CLSID_TaskbandPin), 0, CLSCTX_INPROC_SERVER, StringToGUID(IID_IPinnedList), LUnk));
  LPinnedList:= LUnk as IPinnedList;
  except
  LShellApp:= CreateOleObject('Shell.Application');
  end;
if AIsPin then begin
if LPinnedList <> nil then begin
  Result:= LPinnedList.IsPinned(LPIDL) <> S_OK;
if Result then OleCheck(LPinnedList.Modify(0, LPIDL, PLMC_EXPLORER));
  end else 
  LVerb:= 'taskbarpin';
  end else begin
if LPinnedList <> nil then begin
  Result:= LPinnedList.IsPinned(LPIDL) = S_OK;
if Result then
  OleCheck(LPinnedList.Modify(LPIDL, 0, PLMC_EXPLORER));
  end else 
  LVerb:= 'taskbarunpin';
  end;
if LVerb <> '' then LShellApp.Windows.Item.Document.Application.NameSpace(ExtractFileDir(AFilename)).ParseName(ExtractFileName(AFilename)).InvokeVerb(LVerb);
  except
  Result:= False;
  ShowExceptionMessage;
  finally
  ILFree(LPIDL);
  end;
  end else begin  
if not FileExists(AFileName) then Exit;
	try
if AIsPin then LVerb:= 'taskbarpin' else LVerb := 'taskbarunpin';
  LShellApp:= CreateOleObject('Shell.Application');
  LShellApp.Windows.Item.Document.Application.NameSpace(ExtractFileDir(AFileName)).ParseName(ExtractFileName(AFileName)).InvokeVerb(LVerb);
  Result:= True;
  except
  ShowExceptionMessage;
  end;
	end;
end;
// Изменение строки в текстовом файле 
//=============================================================
function ReplaceLine(strFilename, strFind, strNewLine: String): Boolean;
begin
  LoadStringsFromFile(strFilename, strTextfile);
for iLineCounter:= 0 to GetArrayLength(strTextfile)-1 do
if (Pos(strFind, strTextfile[iLineCounter]) > 0) then strTextfile[iLineCounter]:= strNewLine;
  SaveStringsToFile(strFilename, strTextfile, False);
  Result:= True;
end;
// Операции с папками и файлами установки 
//=============================================================
function FilesMaskOperation(const fromDir, toDir, fileMask: String; FileOp: Integer; EmptyDirRemove: Boolean; toRecycle: Boolean): Boolean;
begin
  APath:= AddBackslash(fromDir);
  FindResult:= FindFirst(APath+fileMask, FSR);
  try
while FindResult do begin
if FSR.Attributes and FILE_ATTRIBUTE_DIRECTORY = 0 then begin
  Case FileOp of
  FO_COPY: fos.wFunc:= FO_COPY;
  FO_DELETE: begin
  fos.wFunc:= FO_DELETE;
if toRecycle then fos.fFlags:= fos.fFlags or FOF_ALLOWUNDO;
  end;
  FO_MOVE: fos.wFunc:= FO_MOVE;
  FO_RENAME: fos.wFunc:= FO_RENAME;
  end;
  fos.fFlags:= fos.fFlags or FOF_FILESONLY or FOF_SILENT or FOF_NOCONFIRMATION or FOF_NOCONFIRMMKDIR;
  _fromDir:= APath+FSR.Name+#0;
  _toDir:= AddBackslash(toDir)+FSR.Name+#0;
  ForceDirectories(ExtractFilePath(_toDir));
  fos.pFrom:= PAnsiChar(_fromDir);
  fos.pTo:= PAnsiChar(_toDir);
  Result:= (ShFileOperation(fos)=0);
  end;
  FindResult:= FindNext(FSR);
  end;
  FindResult:= FindFirst(APath+'*.*', DSR);
while FindResult do begin
if ((DSR.Attributes and FILE_ATTRIBUTE_DIRECTORY) = FILE_ATTRIBUTE_DIRECTORY) and not ((DSR.Name = '.') or (DSR.Name = '..')) then {Recursion}
  FilesMaskOperation(APath+DSR.Name, AddBackslash(toDir)+DSR.Name, fileMask, FileOp, EmptyDirRemove, toRecycle);
  FindResult:= FindNext(DSR);
  end;
  finally
  FindClose(FSR);
  FindClose(DSR);
if EmptyDirRemove then RemoveDir(APath);
  end;
end;
// Операция удаления папки 
//=============================================================
function DelDir(dir: String; toRecycle: Boolean): Boolean;
begin
  _dir:= RemoveBackslashUnlessRoot(dir)+#0;
  fos.wFunc:= FO_DELETE;
  fos.fFlags:= FOF_SILENT or FOF_NOCONFIRMATION;
if toRecycle then fos.fFlags := fos.fFlags or FOF_ALLOWUNDO;
  fos.pFrom:= PAnsiChar(_dir);
  Result:= (ShFileOperation(fos)=0);
end;
// Операция переименования папки 
//=============================================================
function RenameDir(const fromDir, toDir: String): Boolean;
begin
  _fromDir:= RemoveBackslashUnlessRoot(fromDir)+#0;
  _toDir:= RemoveBackslashUnlessRoot(toDir)+#0;
  fos.wFunc:= FO_RENAME;
  fos.fFlags:= FOF_FILESONLY or FOF_ALLOWUNDO or FOF_SILENT or FOF_NOCONFIRMATION;
  fos.pFrom:= PAnsiChar(_fromDir);
  fos.pTo:= PAnsiChar(_toDir);
  Result:= (ShFileOperation(fos)=0);
end;
// Операция переновса файла 
//=============================================================
function MoveFiles(const fromDir, toDir, fileMask: String): Boolean;
begin
  Result:= FilesMaskOperation(fromDir, toDir, fileMask, FO_MOVE, True, False);
end;
// Имя ярлыка удаления игры Legacy Edition в меню Пуск 
//=============================================================
function GetDelete(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_DeleteNameLE');
  'cze_': Result:= 'Smazat {#NAME} Legacy Edition';
  'dan_': Result:= 'Slet {#NAME} Legacy Edition';
  'deu_': Result:= '{#NAME_DE} Legacy Edition entfernen';
  'eng_': Result:= 'Uninstall {#NAME} Legacy Edition';
  'fin_': Result:= 'Poista {#NAME} Legacy Edition';
  'fre_': Result:= 'Retrait {#NAME_FR} Edition Classique';
  'ita_': Result:= 'Disinstallazione {#NAME} Legacy Edition';
  'jap_': Result:= CustomMessage('jap_DeleteNameLE');
  'kor_': Result:= CustomMessage('kor_DeleteNameLE');
  'ned_': Result:= 'Verwijder {#NAME_NL} Legacy Edition';
  'nor_': Result:= 'Slett {#NAME} Legacy Edition';
  'pol_': Result:= CustomMessage('pol_DeleteNameLE');
  'por_': Result:= 'Excluir {#NAME} Legacy Edition';
  'rus_': Result:= 'Удалить {#NAME} Издание Legacy';
  'spa_': Result:= 'Retrait {#NAME_ES} Legacy Edition';
  'swe_': Result:= 'Ta bort {#NAME} Legacy Edition';
  end;  
end;
// Имя ярлыка удаления игры в меню Пуск 
//=============================================================
function GetDelete64(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_DeleteName');
  'cze_': Result:= 'Smazat {#NAME}';
  'dan_': Result:= 'Slet {#NAME}';
  'deu_': Result:= '{#NAME_DE} entfernen';
  'eng_': Result:= 'Uninstall {#NAME}';
  'fin_': Result:= 'Poista {#NAME}';
  'fre_': Result:= 'Retrait {#NAME_FR}';
  'ita_': Result:= 'Disinstallazione {#NAME}';
  'jap_': Result:= CustomMessage('jap_DeleteName');
  'kor_': Result:= CustomMessage('kor_DeleteName');
  'ned_': Result:= 'Verwijder {#NAME_NL}';
  'nor_': Result:= 'Slett {#NAME}';
  'pol_': Result:= CustomMessage('pol_Delete');
  'por_': Result:= 'Excluir {#NAME}';
  'rus_': Result:= 'Удалить {#NAME}';
  'spa_': Result:= 'Retrait {#NAME_ES}';
  'swe_': Result:= 'Ta bort {#NAME}';
  end;
end;
// Имя ярлыка базовой игры на рабочем столе Legacy Edition
//=============================================================
function GetDesktop(const Name: String): String;
begin
  Result:= '{#NAME} Legacy Edition';
  case Lang of
  'che_': Result:= CustomMessage('che_DesktopLEName');
  'deu_': Result:= '{#NAME_DE} Legacy Edition';
  'fre_': Result:= '{#NAME_FR} Edition Classique';
  'jap_': Result:= CustomMessage('jap_DesktopLEName');
  'kor_': Result:= CustomMessage('kor_DesktopLEName');
  'ned_': Result:= '{#NAME_NL} Legacy Edition';
	'por_': Result:= CustomMessage('por_DesktopLEName');
  'rus_': Result:= '{#NAME} Издание Legacy';
  'spa_': Result:= CustomMessage('spa_LocaleLEName');
	end;
end;
// Имя ярлыка базовой игры на рабочем столе 
//=============================================================
function GetDesktop64(const Name: String): String;
begin
  Result:= '{#NAME}';
  case Lang of
  'che_': Result:= CustomMessage('che_DesktopName');
  'deu_': Result:= '{#NAME_DE}';
  'fre_': Result:= '{#NAME_FR}';
  'jap_': Result:= CustomMessage('jap_DesktopName');
  'kor_': Result:= CustomMessage('kor_DesktopName');
  'ned_': Result:= '{#NAME_NL}';
  'spa_': Result:= '{#NAME_ES}';
  end;
end;
// Имя ярлыка смены языка игры на рабочем столе
//=============================================================
function GetDesktopLanguage(const Name:String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_DesktopLang');
  'cze_': Result:= CustomMessage('cze_DesktopLang');
  'dan_': Result:= '{#NAME} Sprogskifter';
  'deu_': Result:= '{#NAME_DE} Sprachwechsler';
  'eng_': Result:= '{#NAME} Language Changer';
  'fin_': Result:= '{#NAME} Kielen Vaihtaja';
  'fre_': Result:= 'Changeur de langue {#NAME_FR}';
  'ita_': Result:= '{#NAME} Cambio di lingua';
  'jap_': Result:= CustomMessage('jap_DesktopLang');
  'kor_': Result:= CustomMessage('kor_DesktopLang');
  'ned_': Result:= '{#NAME_NL} Taalwisselaar';
  'nor_': Result:= CustomMessage('nor_DesktopLang');
  'pol_': Result:= CustomMessage('pol_DesktopLang');
  'por_': Result:= CustomMessage('por_DesktopLang');
  'rus_': Result:= 'Смена языка в {#NAME}';
  'spa_': Result:= '{#NAME_ES} Cambiador de Idioma';
  'swe_': Result:= CustomMessage('swe_DesktopLang');
  end;
end;
// Имя игры в Программах и компонентах
//=============================================================
function GetDisplay(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_Display');
  'cze_': Result:= '{#NAME}: KOLEKCE EDITION';
  'dan_': Result:= '{#NAME}: COLLECTION EDITION';
  'deu_': Result:= '{#NAME_DE}: SAMMLEREDITION';
  'eng_': Result:= '{#NAME}: COLLECTOR"S EDITION';
  'fin_': Result:= '{#NAME}: COLLECTION EDITION';
  'fre_': Result:= '{#NAME_FR}: EDITION COLLECTOR';
  'ita_': Result:= '{#NAME}: EDIZIONE DA COLLEZIONE';
  'jap_': Result:= CustomMessage('jap_Display');
  'kor_': Result:= CustomMessage('kor_Display');
  'ned_': Result:= '{#NAME_NL}: COLLECTOR"S EDITION';
  'nor_': Result:= '{#NAME}: COLLECTOR"S EDITION';
  'pol_': Result:= '{#NAME}: Edycja kolekcjonerska';
  'por_': Result:= CustomMessage('por_Display');
  'rus_': Result:= '{#NAME}: КОЛЛЕКЦИОННОЕ ИЗДАНИЕ';
  'spa_': Result:= '{#NAME_ES}: EDICION COLECCIONISTA';
  'swe_': Result:= '{#NAME}: COLLECTOR EDITION';
  end;                                                
end;         
// Имя папки установки и в меню Пуск
//=============================================================
function GetGroup(const Name: String): String;
begin
  Result:= 'The Sims 4 Legacy Edition';
  case Lang of
  'che_': Result:= CustomMessage('che_GroupLE');
  'cze_': Result:= CustomMessage('cze_GroupLE');
  'deu_': Result:= 'Die Sims 4 Legacy Edition';
  'fre_': Result:= 'Les Sims 4 Edition Classique';
  'kor_': Result:= CustomMessage('kor_GroupLE');
  'ned_': Result:= 'De Sims 4 Legacy Edition';
  'pol_': Result:= CustomMessage('pol_GroupLE');
  'por_': Result:= CustomMessage('por_GroupLE');
  'rus_': Result:= 'The Sims 4 Издание Legacy';
  'spa_': Result:= CustomMessage('spa_GroupLE');
  end;
end;
// Имя папки установки и в меню Пуск
//=============================================================
function GetGroup64(const Name: String): String;
begin
  Result:= 'The Sims 4';
  case Lang of
  'deu_': Result:= 'Die Sims 4';
  'fre_': Result:= 'Les Sims 4';
  'ned_': Result:= 'De Sims 4';
  'spa_': Result:= 'Los Sims 4';
  end;
end;
// Получение директории установки игры
//=============================================================
function GetInstallDir(const Dir: String): String;
begin
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Install Dir', Dir) then Result:= ExpandConstant('{pf}\Origin Games\{#Group64}') else
  Result:= ExpandConstant(RemoveBackslash(Dir));
end;
// Выбор имени папки в Меню Пуск
//=============================================================
function GetDefGroup(const Name: String): String;
begin
If not IsWin64 then Result:= ExpandConstant('{#Group}') else Result:= ExpandConstant('{#Group64}');
end;
// Имя файла технической поддержки игры 
//=============================================================
function GetHelpName(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_Support');
  'cze_': Result:= CustomMessage('cze_Support');
  'dan_': Result:= CustomMessage('dan_Support');
  'deu_': Result:= 'Kundendienst';
  'eng_': Result:= 'Technical Support';
  'fin_': Result:= 'Tekninen tuki';
  'fre_': Result:= 'Assistance technique';
  'ita_': Result:= 'Supporto tecnico';
  'jap_': Result:= CustomMessage('jap_Support');
  'kor_': Result:= CustomMessage('kor_Support');
  'ned_': Result:= 'Technische ondersteuning';
  'nor_': Result:= CustomMessage('nor_Support');
  'pol_': Result:= 'Pomoc techniczna';
  'por_': Result:= CustomMessage('por_Support');
  'rus_': Result:= 'Техническая поддержка';
  'spa_': Result:= CustomMessage('spa_Support');
  'swe_': Result:= 'Teknisk support';
  end;
end;
// Файл технической поддержки игры 
//=============================================================
function GetHelpText(const Name: String): String;
begin
  case Lang of
  'che_': Result:= 'Technical Support.zh_TW.rtf';
  'cze_': Result:= 'Technická podpora.rtf';
  'dan_': Result:= 'Hjælp.rtf';
  'deu_': Result:= 'Kundendienst.rtf';
  'eng_': Result:= 'Technical Support.en_US.rtf';
  'fin_': Result:= 'Tekninen tuki.rtf';
  'fre_': Result:= 'Assistance technique.rtf';
  'ita_': Result:= 'Supporto tecnico.rtf';
  'jap_': Result:= 'Technical Support.ja_JP.rtf';
  'kor_': Result:= 'Technical Support.ko_KR.rtf';
  'ned_': Result:= 'Technische ondersteuning.rtf';
  'nor_': Result:= 'Kundestøtte.rtf';
  'pol_': Result:= 'Pomoc techniczna.rtf';
  'por_': Result:= 'Suporte Técnico.rtf';
  'rus_': Result:= 'Technical Support.ru_RU.rtf';
  'spa_': Result:= 'Servicio técnico.rtf';
  'swe_': Result:= 'Teknisk support.rtf';
  end;
end;
// Имя ярлыка ссылки в Интернет 
//=============================================================
function GetInternet(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_Internet');
  'cze_': Result:= '{#NAME} na internetu';
  'dan_': Result:= CustomMessage('dan_Internet');
  'deu_': Result:= '{#NAME_DE} im Internet';
  'eng_': Result:= '{#NAME} on the Web';
  'fin_': Result:= '{#NAME} Internetissä';
  'fre_': Result:= '{#NAME_FR} en ligne';
  'ita_': Result:= '{#NAME} online';
  'jap_': Result:= CustomMessage('jap_Internet');
  'kor_': Result:= CustomMessage('kor_Internet');
  'ned_': Result:= '{#NAME_NL} online';
  'nor_': Result:= CustomMessage('nor_Internet');
  'pol_': Result:= '{#NAME} w Internecie';
  'por_': Result:= '{#NAME} na Internet';
  'rus_': Result:= '{#NAME} в Интернете';
  'spa_': Result:= '{#NAME_ES} online';
  'swe_': Result:= CustomMessage('swe_Internet');
  end;
end;
// Локальный Язык Игры 
//=============================================================
function GetLanguage(const Name: String):String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_lang');
  'cze_': Result:= CustomMessage('cze_lang');
  'dan_': Result:= 'Dansk';
  'deu_': Result:= 'Deutsch';
  'eng_': Result:= 'English';
  'fin_': Result:= 'Suomi';
  'fre_': Result:= CustomMessage('fre_lang');
  'ita_': Result:= 'Italiano';
  'jap_': Result:= CustomMessage('jap_lang');
  'kor_': Result:= CustomMessage('kor_lang');
  'ned_': Result:= 'Nederlands';
  'nor_': Result:= 'Norsk';
  'pol_': Result:= 'Polski';
  'por_': Result:= CustomMessage('por_lang');
  'rus_': Result:= 'Русский';
  'spa_': Result:= CustomMessage('spa_lang');
  'swe_': Result:= 'Svenska';
  end;
end;
// Имя ярлыка лецензионного соглашения
//=============================================================
function GetLicenseName(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_License');
  'cze_': Result:= CustomMessage('cze_License');
  'dan_': Result:= 'The Sims 4 Slutbrugerlicensaftale';
  'deu_': Result:= 'Die Sims 4 Endbenutzer-Lizenzvertrag';
  'eng_': Result:= 'The Sims 4 End User License Agreemen';
  'fin_': Result:= CustomMessage('fin_License');
  'fre_': Result:= 'Les Sims 4 Contrat de licence utilisateur final';
  'ita_': Result:= CustomMessage('ita_License');
  'jap_': Result:= CustomMessage('jap_License');
  'kor_': Result:= CustomMessage('kor_License');
  'ned_': Result:= 'De Sims 4 Licentieovereenkomst voor eindgebruikers';
  'nor_': Result:= 'The Sims 4 Lisensavtale for sluttbruker';
  'pol_': Result:= CustomMessage('pol_License');
  'por_': Result:= CustomMessage('por_License');
  'rus_': Result:= CustomMessage('rus_License');
  'spa_': Result:= 'Los Sims 4 Acuerdo de licencia de usuario final';
  'swe_': Result:= CustomMessage('swe_License');
  end;
end;
// Файл лицензионного соглашения 
//=============================================================
function GetLicenseText(const Name: String): String;
begin
  case Lang of
  'che_': Result:= 'zh_TW_eula.rtf';
  'cze_': Result:= 'cs_CZ_eula.rtf';
  'dan_': Result:= 'da_DK_eula.rtf';
  'deu_': Result:= 'de_DE_eula.rtf';
  'eng_': Result:= 'en_US_eula.rtf';
  'fin_': Result:= 'fi_FI_eula.rtf';
  'fre_': Result:= 'fr_FR_eula.rtf';
  'ita_': Result:= 'it_IT_eula.rtf';
  'jap_': Result:= 'ja_JP_eula.rtf';
  'kor_': Result:= 'ko_KR_eula.rtf';
  'ned_': Result:= 'nl_NL_eula.rtf';
  'nor_': Result:= 'no_NO_eula.rtf';
  'pol_': Result:= 'pl_PL_eula.rtf';
  'por_': Result:= 'pt_BR_eula.rtf';
  'rus_': Result:= 'ru_RU_eula.rtf';
  'spa_': Result:= 'es_ES_eula.rtf';
  'swe_': Result:= 'sv_SE_eula.rtf';
  end;
end;
// Установка локального языка игры 
//=============================================================
function GetLocaleLang(const Name: String): String;
begin
  case Lang of
  'che_': Result:= 'zh_TW';
  'cze_': Result:= 'cs_CZ';
  'dan_': Result:= 'da_DK';
  'deu_': Result:= 'de_DE';
  'eng_': Result:= 'en_US';
  'fin_': Result:= 'fi_FI';
  'fre_': Result:= 'fr_FR';
  'ita_': Result:= 'it_IT';
  'jap_': Result:= 'ja_JP';
  'kor_': Result:= 'ko_KR';
  'ned_': Result:= 'nl_NL';
  'nor_': Result:= 'no_NO';
  'pol_': Result:= 'pl_PL';
  'por_': Result:= 'pt_BR';
  'rus_': Result:= 'ru_RU';
  'spa_': Result:= 'es_ES';
  'swe_': Result:= 'sv_SE';
  end;
end;
// Локальное Имя игры 
//=============================================================
function GetLocale(const Name: String): String;
begin
  Result:= '{#NAME} Legacy Edition';
  case Lang of
  'che_': Result:= CustomMessage('che_LocaleLEName');
  'cze_': Result:= CustomMessage('cze_LocaleLEName');
  'deu_': Result:= '{#NAME_DE} Legacy Edition';
  'fre_': Result:= '{#NAME_FR} Edition Classique';
  'kor_': Result:= CustomMessage('kor_LocaleLEName');
  'ned_': Result:= '{#NAME_NL} Legacy Edition';
  'pol_': Result:= CustomMessage('pol_LocaleLEName');
	'por_': Result:= CustomMessage('por_DesktopLEName');
  'rus_': Result:= '{#NAME} Издание Legacy';
  'spa_': Result:= CustomMessage('spa_LocaleLEName');
	end;
end;
// Локальное Имя игры 
//=============================================================
function GetLocale64(const Name: String): String;
begin
  Result:= '{#NAME}';
  case Lang of
  'deu_': Result:= '{#NAME_DE}';
  'fre_': Result:= '{#NAME_FR}';
  'ned_': Result:= '{#NAME_NL}';
  'spa_': Result:= '{#NAME_ES}';
  end;
end;
// Имя ярлыка запуска игры Legacy Edition в меню Пуск 
//=============================================================
function GetPlay(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_PlayLEName');
  'cze_': Result:= CustomMessage('cze_PlayLEName');
  'dan_': Result:= 'Spille {#NAME} Legacy Edition';
  'deu_': Result:= 'Spielen {#NAME_DE} Legacy Edition';
  'eng_': Result:= 'Play {#NAME} Legacy Edition';
  'fin_': Result:= 'Pelata {#NAME} Legacy Edition';
  'fre_': Result:= 'Jouer {#NAME_FR} Edition Classique';
  'ita_': Result:= 'Gioca {#NAME}';
  'jap_': Result:= CustomMessage('jap_PlayLEName');
  'kor_': Result:= CustomMessage('kor_PlayLEName');
  'ned_': Result:= 'Speel {#NAME_NL} Legacy Edition';
  'nor_': Result:= 'Spille {#NAME} Legacy Edition';
  'pol_': Result:= CustomMessage('pol_PlayLEName');
  'por_': Result:= CustomMessage('por_PlayLEName');
  'rus_': Result:= 'Играть {#NAME} Издание Legacy';
  'spa_': Result:= CustomMessage('spa_PlayLEName');
  'swe_': Result:= 'Spela {#NAME} Legacy Edition';
  end;
end;
// Имя ярлыка запуска игры в меню Пуск 
//=============================================================
function GetPlay64(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_PlayName');
  'cze_': Result:= CustomMessage('cze_PlayName');
  'dan_': Result:= 'Spille {#NAME}';
  'deu_': Result:= 'Spielen {#NAME_DE}';
  'eng_': Result:= 'Play {#NAME}';
  'fin_': Result:= 'Pelata {#NAME}';
  'fre_': Result:= 'Jouer {#NAME_FR}';
  'ita_': Result:= 'Gioca {#NAME}';
  'jap_': Result:= CustomMessage('jap_PlayName');
  'kor_': Result:= CustomMessage('kor_PlayName');
  'ned_': Result:= 'Speel {#NAME_NL}';
  'nor_': Result:= 'Spille {#NAME}';
  'pol_': Result:= 'Zagraj {#NAME}';
  'por_': Result:= 'Jogar {#NAME}';
  'rus_': Result:= 'Играть {#NAME}';
  'spa_': Result:= 'Jugar {#NAME_ES}';
  'swe_': Result:= 'Spela {#NAME}';
  end;
end;
// Файл информации о смене языка игры
//=============================================================
function GetReadmeLang(const Name: String): String;
begin
  case Lang of
  'che_': Result:= 'Language_tz.txt';
  'cze_': Result:= 'Language_ch.txt';
  'dan_': Result:= 'Language_da.txt';
  'deu_': Result:= 'Language_de.txt';
  'eng_': Result:= 'Language_en.txt';
  'fin_': Result:= 'Language_fi.txt';
  'fre_': Result:= 'Language_fr.txt';
  'ita_': Result:= 'Language_it.txt';
  'jap_': Result:= 'Language_jp.txt';
  'kor_': Result:= 'Language_kr.txt';
  'ned_': Result:= 'Language_ne.txt';
  'nor_': Result:= 'Language_nr.txt';
  'pol_': Result:= 'Language_pl.txt';
  'por_': Result:= 'Language_pr.txt';
  'rus_': Result:= 'Language_ru.txt';
  'spa_': Result:= 'Language_es.txt';
  'swe_': Result:= 'Language_sw.txt';
  end;
end;
// Имя ярлыка информации об игре
//=============================================================
function GetReadmeName(const Name: String): String;
begin
  case Lang of
  'che_': Result:= CustomMessage('che_Readme');
  'cze_': Result:= CustomMessage('cze_Readme');
  'dan_': Result:= CustomMessage('dan_Readme');
  'deu_': Result:= 'Lesen';
  'eng_': Result:= 'Readme';
  'fin_': Result:= 'Lueminut';
  'fre_': Result:= 'Lisezmoi';
  'ita_': Result:= 'Leggimi';
  'jap_': Result:= CustomMessage('jap_Readme');
  'kor_': Result:= CustomMessage('kor_Readme');
  'ned_': Result:= 'Leesmij';
  'nor_': Result:= 'Lesmeg';
  'pol_': Result:= 'Przeczytaj';
  'por_': Result:= 'Leiame';
  'rus_': Result:= 'Прочитать';
  'spa_': Result:= CustomMessage('spa_Readme');
  'swe_': Result:= CustomMessage('swe_Readme');
  end;
end;
// Файл информации об игре
//=============================================================
function GetReadmeText(const Name: String): String;
begin
  case Lang of
  'che_': Result:= 'readme.zh-tw.txt';
  'cze_': Result:= 'readme.cs.txt';
  'dan_': Result:= 'Læsmig.txt';
  'deu_': Result:= 'readme.de.txt';
  'eng_': Result:= 'readme.txt';
  'fin_': Result:= 'Lueminut.txt';
  'fre_': Result:= 'LisezMoi.txt';
  'ita_': Result:= 'Leggimi.it.txt';
  'jap_': Result:= 'readme.ja.txt';
  'kor_': Result:= 'readme.ko.txt';
  'ned_': Result:= 'Leesmij.txt';
  'nor_': Result:= 'Lesmeg.txt';
  'pol_': Result:= 'Przeczytaj.txt';
  'por_': Result:= 'Leiame.pt-br.txt';
  'rus_': Result:= 'readme.ru.txt';
  'spa_': Result:= 'Léeme.txt';
  'swe_': Result:= 'lasmig.txt';
  end;
end;
// Имя ярлыка информации об игре 
//=============================================================
function GetScreensName(const Name: String): String;
begin
  Result:= 'Screenshots';
  case Lang of
  'che_': Result:= CustomMessage('che_Screenshots');
  'cze_': Result:= CustomMessage('cze_Screenshots');
  'dan_': Result:= CustomMessage('dan_Screenshots');
  'fin_': Result:= 'Kuvat';
  'fre_': Result:= CustomMessage('fre_Screenshots');
  'ita_': Result:= 'Immagini';
  'jap_': Result:= CustomMessage('jap_Screenshots');
  'nor_': Result:= 'Skjermbilder';
  'pol_': Result:= 'Zrzuty ekranu';
  'por_': Result:= 'Capturas de Tela';
  'rus_': Result:= 'Снимки экрана';
  'spa_': Result:= 'Capturas de pantalla';
  'swe_': Result:= CustomMessage('swe_Screenshots');
  end;
end;
// Имя ярлыка информации об игре 
//=============================================================
function GetVideoName(const Name: String): String;
begin
  Result:= 'Recorded Videos';
  case Lang of
  'che_': Result:= CustomMessage('che_Videos');
  'cze_': Result:= CustomMessage('cze_Videos');
  'dan_': Result:= 'Optagede videoer';
  'deu_': Result:= 'Aufgenommene Videos';
  'fin_': Result:= 'Tallennetut videot';
  'fre_': Result:= CustomMessage('fre_Videos');
  'ita_': Result:= 'Video registrati';
  'jap_': Result:= CustomMessage('jap_Videos');
  'ned_': Result:= CustomMessage('ned_Videos');
  'nor_': Result:= 'Innspilte videoer';
  'pol_': Result:= 'Nagrane filmy';
  'por_': Result:= CustomMessage('por_Videos');
  'rus_': Result:= 'Записанные видеоролики';
  'spa_': Result:= CustomMessage('spa_Videos');
  'swe_': Result:= 'Inspelade filmer';
  end;
end;
// Файл языковой поддержки распаковки
//=============================================================
function GetIniLang(const Name: String): String;
begin
  case Lang of
  'che_': Result:= 'chinese.ini';
  'cze_': Result:= 'czech.ini';
  'dan_': Result:= 'danish.ini';
  'deu_': Result:= 'german.ini';
  'eng_': Result:= 'english.ini';
  'fin_': Result:= 'finnish.ini';
  'fre_': Result:= 'french.ini';
  'ita_': Result:= 'italian.ini';
  'jap_': Result:= 'japanese.ini';
  'kor_': Result:= 'korean.ini';
  'ned_': Result:= 'dutch.ini';
  'nor_': Result:= 'norwegian.ini';
  'pol_': Result:= 'polish.ini';
  'por_': Result:= 'portuguese.ini';
  'rus_': Result:= 'russian.ini';
  'spa_': Result:= 'spanish.ini';
  'swe_': Result:= 'swedish.ini';
  end;
end;
// Очистка реестра и файлов игры перед установкой
//=============================================================
procedure BeforeInstall();
begin
//=============================================================
  RegDeleteValue(HKCU, ExpandConstant('SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache'), ExpandConstant('{app}\Support\Sims™ 4 Language Changer.exe.FriendlyAppName'));
  RegDeleteValue(HKCU, ExpandConstant('SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache'), ExpandConstant('{app}\Support\Sims™ 4 Language Changer.exe.ApplicationCompany'));
  RegDeleteValue(HKLM, ExpandConstant('{#Maxis}\The Sims 4'), ExpandConstant('GDFBinary'));
if IsWin64 then begin
// Удаление ярлыка игры в Панели задач и быстрого запуска
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE64}'), False); 
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame64}.lnk'), False);
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE}'), False);
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame}.lnk'), False);
  RegDeleteValue(HKLM64, ExpandConstant('{#Maxis}\The Sims 4'), ExpandConstant('GDFBinary'));
  RegDeleteValue(HKLM64, ExpandConstant('{#Maxis}\The Sims 4'), ExpandConstant('GDFBinary64'));
	end else begin
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE}'), False);
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame}.lnk'), False);
	end;
if not GameUpdate then begin
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Games}'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Maxis}\The Sims 4\DLCs'));
if IsWin64 then begin
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Games64}'));
  RegDeleteKeyIncludingSubkeys(HKLM64, ExpandConstant('{#Games}'));
  RegDeleteKeyIncludingSubkeys(HKLM64, ExpandConstant('{#Games64}'));
  RegDeleteKeyIncludingSubkeys(HKLM64, ExpandConstant('{#Maxis}\The Sims 4\DLCs'));
  end;
  end;
// Удаление ярлыков на Рабочем столе
//=============================================================
  DeleteFile(ExpandConstant('{commondesktop}\The Sims 4.lnk'));
  DeleteFile(ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
  DeleteFile(ExpandConstant('{commondesktop}\The Sims 4 Legacy Edition.lnk'));
  DeleteFile(ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
  DeleteFile(ExpandConstant('{commondesktop}\Sims™ 4 Language Changer.lnk'));
  DeleteFile(ExpandConstant('{commondesktop}\{#DesktopLang}.lnk'));
// Удаление файлов деинсталляции игры
//=============================================================
  DeleteFile(ExpandConstant('{#UNINSTALL}\Cleanup.dat'));
  DeleteFile(ExpandConstant('{#UNINSTALL}\Cleanup.exe'));
  DeleteFile(ExpandConstant('{#UNINSTALL}\unins000.dat'));
  DeleteFile(ExpandConstant('{#UNINSTALL}\unins000.exe'));
  DeleteFile(ExpandConstant('{#UNINSTALL}\unins001.dat'));
  DeleteFile(ExpandConstant('{#UNINSTALL}\unins001.exe'));  
  DeleteFile(ExpandConstant('{#Dir}\Support\Sims™ 4 Language Changer.exe'));
  DeleteFile(ExpandConstant('{#Dir}\Support\Sims™ 4 Language Changer.txt'));
// Удаление файлов таблетки от Codex
//=============================================================
  DeleteFile(ExpandConstant('{#Dir}\Game\Bin\codex.cfg'));
  DeleteFile(ExpandConstant('{#Dir}\Game\Bin\OrangeEmu64.dll'));
  DeleteFile(ExpandConstant('{#Dir}\Game\Bin_LE\codex.cfg'));
  DeleteFile(ExpandConstant('{#Dir}\Game\Bin_LE\OrangeEmu.dll'));
// Удаление файлов из папки сохранений игры
//=============================================================
If IsWin64 then DeleteFile(ExpandConstant('{#SAVES}\{#Group64}\GameVersion.txt'));
If Legacy then DeleteFile(ExpandConstant('{#SAVES}\{#Group}\GameVersion.txt'));
  Exec('taskkill', '/f /im OriginWebHelperService.exe', '', SW_HIDE, ewNoWait, i);
#ifdef Controler
  DeleteFile(ExpandConstant('{#SAVES}\{#Group64}\ReticulatedSplinesView'));
#else
#ifdef records
// Удаление папки в меню Пуск
//=============================================================
if RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Locale', Locale) then
if Locale <> '{#Locale}' then DelDir(ExpandConstant('{group}'), False);
#endif
#endif
end;
// Очистка реестра после удаления игры 
//=============================================================
procedure ReqClean();
begin
  RegDeleteValue(HKCR, ExpandConstant('{#MuiCache}'), ExpandConstant('{app}\{#UninsEXE}'));
  RegDeleteValue(HKCR, ExpandConstant('{#MUICache}'), ExpandConstant('{#AppLang}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#UninsEXE}'));
	RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{#AppLang}'));
  RegDeleteValue(HKLM, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#UninsEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{#AppLang}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{10D51D33-185B-4930-B38A-7FE99F7787A4}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{EE8FC59F-C448-4AEF-B18D-F219A9E4E376}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{0FE41290-ECF0-4AA8-B3B4-A9917AD9720C}'+'{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{B7BCE996-53BA-4E17-93DC-C88C7D49BF2A}'+'{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{FCFFCB9A-1A33-4E48-ACD0-54FCA3ABFB7C}'+'{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{DDBB17C2-BE8E-48AA-B9AC-6F54071EED2D}'+'{app}\{#AppEXE}'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Maxis}\The Sims 4'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#CurrentVer}\App Management\YUCache\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#CurrentVer}\Uninstall\{{48EBEBBF-B9F8-4520-A3CF-89A730721917}'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Origin}\1011164'));
  RegDeleteKeyIfEmpty(HKLM, ExpandConstant('{#Maxis}\The Sims 4'));
  RegDeleteKeyIfEmpty(HKLM, ExpandConstant('{#Maxis}'));
  RegDeleteKeyIfEmpty(HKLM, ExpandConstant('{#Origin}'))
if IsWin64 then begin
  RegDeleteValue(HKCR, ExpandConstant('{#MuiCache}'), ExpandConstant('{app}\{#AppEXE64}'));
  RegDeleteValue(HKCU, ExpandConstant('Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store'), ExpandConstant('{app}\{#UninsEXE}'));
  RegDeleteValue(HKCU, ExpandConstant('Software\Classes\{#MuiCache}'), ExpandConstant('{app}\{#AppEXE64}.FriendlyAppName'));
  RegDeleteValue(HKCU, ExpandConstant('Software\Classes\{#MuiCache}'), ExpandConstant('{app}\{#AppEXE64}.ApplicationCompany'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Compatibility Assistant\Store'), ExpandConstant('{app}\{#AppEXE64}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{56785011-ED84-45D8-A48A-A8C2BD223E3C}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{8FE846FF-C802-4693-9CB8-B67DC0AA8DEA}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{F83C11F5-0A84-4065-B1F4-F28D3EA4ACF2}'+'{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{99974C0B-1F4E-42CB-A9B8-F433ED5D77B5}'+'{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{437658E2-F001-4D6A-91A8-162682E29713}'+'{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{5037F24C-D285-4EEA-908B-8E4E823EE7DE}'+'{app}\{#AppEXE64}'));
  RegDeleteKeyIncludingSubkeys(HKLM64, ExpandConstant('{#Maxis}\The Sims 4'));
  RegDeleteKeyIfEmpty(HKLM64, ExpandConstant('{#Maxis}\The Sims 4'));
  RegDeleteKeyIfEmpty(HKLM64, ExpandConstant('{#Maxis}'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Games}'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Games64}'));
  RegDeleteKeyIncludingSubkeys(HKLM64, ExpandConstant('{#Games}'));
  RegDeleteKeyIncludingSubkeys(HKLM64, ExpandConstant('{#Games64}'));
	end else begin
  RegDeleteValue(HKCR, ExpandConstant('{#MuiCache}'), ExpandConstant('{app}\{#AppEXE}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Compatibility Assistant\Store'), ExpandConstant('{app}\{#AppEXE}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Compatibility Assistant\Store'), ExpandConstant('{app}\{#UninsEXE}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE}'));
  RegDeleteKeyIncludingSubkeys(HKLM, ExpandConstant('{#Games}'));
  end;
end;
// Переименование папок установки 
//=============================================================
procedure ChangeSelectDirName();
begin
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Install Dir', Dir) then begin
  Selectlbl[2].Caption:= MinimizePathName(ExpandConstant(AddBackslash(ExtractFilePath(RemoveBackslash(ExpandConstant('{#Dir}'))))+'{#Group64}'), Selectlbl[2].Font, Selectlbl[2].Width);
  WizardForm.DirEdit.Text:= MinimizePathName(ExpandConstant(AddBackslash(ExtractFilePath(RemoveBackslash(ExpandConstant('{#Dir}'))))+'{#Group64}'), WizardForm.DirEdit.Font, WizardForm.DirEdit.Width);
  end else begin
// Строка директории установки 
//=============================================================
  Selectlbl[2].Caption:= MinimizePathName(ExpandConstant(RemoveBackslash(Dir)), Selectlbl[2].Font, Selectlbl[2].Width);
  WizardForm.DirEdit.Text:= MinimizePathName(ExpandConstant(RemoveBackslash(Dir)), WizardForm.DirEdit.Font, WizardForm.DirEdit.Width);
// Изменение языка интерфейса игры в реестре системы
//=============================================================
  RegWriteStringValue(HKCU, '{#UserCore}\1011164', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015875', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015876', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015793', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015794', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015795', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015806', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015807', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015808', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1018023', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1018025', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015224', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015235', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\1015236', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\eadm\eadm\online_content\1011164', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKCU, '{#UserCore}\eadm\eadm\online_content\301494', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#CurrentVer}\Uninstall\{48EBEBBF-B9F8-4520-A3CF-89A730721917}', 'Language', ExpandConstant(ExtractFilePath('Locale')+'{#Language}'));
  RegWriteStringValue(HKLM, '{#Maxis}\The Sims 4', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1011164', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015875', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015876', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015793', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015794', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015795', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015806', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015807', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015808', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1018023', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1018025', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015224', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015235', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015236', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
// Изменение языка интерфейса игры в реестре 64-битной системы
//=============================================================
if IsWin64 then begin
  RegWriteStringValue(HKLM64, '{#Maxis}\The Sims 4', 'Locale', ExpandConstant(ExtractFilePath('Locale')+'{#Locale}'));
  RegWriteStringValue(HKLM64, '{#Maxis}\The Sims 4', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM64, '{#GameUX64}', 'Description', ExpandConstant(ExtractFilePath('Description')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM64, '{#GameUX64}', 'Title', ExpandConstant(ExtractFilePath('Title')+'{#Display}'));
  RegWriteStringValue(HKLM, '{#Maxis}\The Sims 4', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#GameUX64}', 'Description', ExpandConstant(ExtractFilePath('Description')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#GameUX64}', 'Title', ExpandConstant(ExtractFilePath('Title')+'{#Display}'));
  RegWriteStringValue(HKLM, '{#CurrentVer}\Uninstall\{48EBEBBF-B9F8-4520-A3CF-89A730721917}', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Display}'));
  RegWriteStringValue(HKLM, '{#Origin}\1011164', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015875', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015876', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015793', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015794', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015795', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015806', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015807', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015808', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1018023', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1018025', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015224', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015235', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015236', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#LocaleName64}'));
// Переименование ярлыка игры на Раюочем столе
//=============================================================
if FileExists(ExpandConstant('{commondesktop}\De Sims™ 4.lnk')) then RenameFile(ExpandConstant('{commondesktop}\De Sims™ 4.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\Die Sims™ 4.lnk')) then	RenameFile(ExpandConstant('{commondesktop}\Die Sims™ 4.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\Les Sims™ 4.lnk')) then	RenameFile(ExpandConstant('{commondesktop}\Les Sims™ 4.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\Los Sims™ 4.lnk')) then	RenameFile(ExpandConstant('{commondesktop}\Los Sims™ 4.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\The Sims™ 4.lnk')) then	RenameFile(ExpandConstant('{commondesktop}\The Sims™ 4.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\'+CustomMessage('che_DesktopName')+'.lnk')) then RenameFile(ExpandConstant('{commondesktop}\'+CustomMessage('che_DesktopName')+'.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\'+CustomMessage('jap_DesktopName')+'.lnk')) then RenameFile(ExpandConstant('{commondesktop}\'+CustomMessage('jap_DesktopName')+'.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\'+CustomMessage('kor_DesktopName')+'.lnk')) then RenameFile(ExpandConstant('{commondesktop}\'+CustomMessage('kor_DesktopName')+'.lnk'), ExpandConstant('{commondesktop}\{#Desktop64}.lnk'));
// Переименование папки сохранения игры
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\De Sims 4')) then RenameDir(ExpandConstant('{#SAVES}\De Sims 4'), ExpandConstant('{#SAVES}\{#Group64}'));
if DirExists(ExpandConstant('{#SAVES}\Die Sims 4')) then RenameDir(ExpandConstant('{#SAVES}\Die Sims 4'), ExpandConstant('{#SAVES}\{#Group64}'));
if DirExists(ExpandConstant('{#SAVES}\Les Sims 4')) then RenameDir(ExpandConstant('{#SAVES}\Les Sims 4'), ExpandConstant('{#SAVES}\{#Group64}'));
if DirExists(ExpandConstant('{#SAVES}\Los Sims 4')) then RenameDir(ExpandConstant('{#SAVES}\Los Sims 4'), ExpandConstant('{#SAVES}\{#Group64}'));
if DirExists(ExpandConstant('{#SAVES}\The Sims 4')) then RenameDir(ExpandConstant('{#SAVES}\The Sims 4'), ExpandConstant('{#SAVES}\{#Group64}'));
// Переименование папки скриншотов игры
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('che_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('che_Screenshots'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('cze_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('cze_Screenshots'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('dan_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('dan_Screenshots'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('swe_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('swe_Screenshots'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('jap_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('jap_Screenshots'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('fre_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('fre_Screenshots'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Kuvat')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Kuvat'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Снимки экрана')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Снимки экрана'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Screenshots'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Zrzuty ekranu')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Zrzuty ekranu'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Skjermbilder')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Skjermbilder'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Capturas de Tela')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Capturas de Tela'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Immagini')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Immagini'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Capturas de pantalla')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Capturas de pantalla'), ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}'));
// Переименование папки видеозаписей игры
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('che_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('che_Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('cze_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('cze_Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('fre_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('fre_Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('jap_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('jap_Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('ned_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('ned_Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('por_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('por_Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('spa_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\')+CustomMessage('spa_Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Recorded Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Recorded Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Optagede videoer')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Optagede videoer'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Aufgenommene Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Aufgenommene Videos'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Tallennetut videot')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Tallennetut videot'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Video registrati')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Video registrati'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Innspilte videoer')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Innspilte videoer'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Nagrane filmy')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Nagrane filmy'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Inspelade filmer')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Inspelade filmer'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group64}\Записанные видеоролики')) then RenameDir(ExpandConstant('{#SAVES}\{#Group64}\Записанные видеоролики'), ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}'));
// Переименование папки копии сохранений игры
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\De Sims 4_Backup')) then RenameDir(ExpandConstant('{#SAVES}\De Sims 4_Backup'), ExpandConstant('{#SAVES}\{#Group64}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\Die Sims 4_Backup')) then RenameDir(ExpandConstant('{#SAVES}\Die Sims 4_Backup'), ExpandConstant('{#SAVES}\{#Group64}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\Les Sims 4_Backup')) then RenameDir(ExpandConstant('{#SAVES}\Les Sims 4_Backup'), ExpandConstant('{#SAVES}\{#Group64}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\Los Sims 4_Backup')) then RenameDir(ExpandConstant('{#SAVES}\Los Sims 4_Backup'), ExpandConstant('{#SAVES}\{#Group64}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\The Sims 4_Backup')) then RenameDir(ExpandConstant('{#SAVES}\The Sims 4_Backup'), ExpandConstant('{#SAVES}\{#Group64}_Backup'));
// Удаление файлов предыдущего запуска
//=============================================================
	DeleteFile(ExpandConstant('{#SAVES}\{#Group64}\ConnectionStatus.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group64}\lastCrash.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group64}\lastException.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group64}\lastUIException.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group64}\UserSetting.ini'))
  end else begin
// Изменение языка интерфейса игры в реестре 32-битной системы
//=============================================================
  RegWriteStringValue(HKLM, '{#Maxis}\The Sims 4', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#GameUX}', 'Description', ExpandConstant(ExtractFilePath('Description')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#GameUX}', 'Title', ExpandConstant(ExtractFilePath('Title')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#CurrentVer}\Uninstall\{48EBEBBF-B9F8-4520-A3CF-89A730721917}', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1011164', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015875', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015876', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015793', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015794', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015795', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015806', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015807', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015808', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1018023', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1018025', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015224', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015235', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM, '{#Origin}\1015236', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  end;
if Legacy then begin
// Переименование ярлыка игры Legacy Edition на Раюочем столе
//=============================================================
If IsWin64 then begin
  RegWriteStringValue(HKLM64, '{#Maxis}\The Sims 4', 'DisplayName', ExpandConstant(ExtractFilePath('DisplayName')+'{#Desktop}'));
  RegWriteStringValue(HKLM64, '{#GameUX}', 'Description', ExpandConstant(ExtractFilePath('Description')+'{#Desktop}'));
  RegWriteStringValue(HKLM64, '{#GameUX}', 'Title', ExpandConstant(ExtractFilePath('Title')+'{#Desktop}'));
  end;
if FileExists(ExpandConstant('{commondesktop}\De Sims™ 4 Legacy Edition.lnk')) then	RenameFile(ExpandConstant('{commondesktop}\De Sims™ 4 Legacy Edition.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\Die Sims™ 4 Legacy Edition.lnk')) then RenameFile(ExpandConstant('{commondesktop}\Die Sims™ 4 Legacy Edition.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\Les Sims™ 4 Edition Classique.lnk')) then	RenameFile(ExpandConstant('{commondesktop}\Les Sims™ 4 Edition Classique.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\Los Sims™ 4 Legacy Edition.lnk')) then RenameFile(ExpandConstant('{commondesktop}\Los Sims™ 4 Legacy Edition.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\The Sims™ 4 Legacy Edition.lnk')) then RenameFile(ExpandConstant('{commondesktop}\The Sims™ 4 Legacy Edition.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\The Sims™ 4 Издание Legacy.lnk')) then RenameFile(ExpandConstant('{commondesktop}\The Sims™ 4 Издание Legacy.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\'+CustomMessage('che_DesktopLEName')+'.lnk')) then RenameFile(ExpandConstant('{commondesktop}\'+CustomMessage('che_DesktopLEName')+'.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\'+CustomMessage('jap_DesktopLEName')+'.lnk')) then RenameFile(ExpandConstant('{commondesktop}\'+CustomMessage('jap_DesktopLEName')+'.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\'+CustomMessage('kor_DesktopLEName')+'.lnk')) then RenameFile(ExpandConstant('{commondesktop}\'+CustomMessage('kor_DesktopLEName')+'.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
if FileExists(ExpandConstant('{commondesktop}\'+CustomMessage('por_DesktopLEName')+'.lnk')) then RenameFile(ExpandConstant('{commondesktop}\'+CustomMessage('por_DesktopLEName')+'.lnk'), ExpandConstant('{commondesktop}\{#Desktop}.lnk'));
// Переименование папки сохранений игры Legacy Edition
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\De Sims 4 Legacy Edition')) then RenameDir(ExpandConstant('{#SAVES}\De Sims 4 Legacy Edition'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\Die Sims 4 Legacy Edition')) then RenameDir(ExpandConstant('{#SAVES}\Die Sims 4 Legacy Edition'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\Les Sims 4 Edition Classique')) then RenameDir(ExpandConstant('{#SAVES}\Les Sims 4 Edition Classique'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\The Sims 4 Legacy Edition')) then RenameDir(ExpandConstant('{#SAVES}\The Sims 4 Legacy Edition'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\The Sims 4 Издание Legacy')) then RenameDir(ExpandConstant('{#SAVES}\The Sims 4 Издание Legacy'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('che_GroupLE')) then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('che_GroupLE'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('cze_GroupLE')) then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('cze_GroupLE'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('kor_GroupLE')) then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('kor_GroupLE'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('pol_GroupLE')) then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('pol_GroupLE'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('por_GroupLE')) then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('por_GroupLE'), ExpandConstant('{#SAVES}\{#Group}'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('spa_GroupLE')) then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('spa_GroupLE'), ExpandConstant('{#SAVES}\{#Group}'));
// Переименование папки скриншотов игры Legacy Edition
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('che_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('che_Screenshots'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('cze_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('cze_Screenshots'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('dan_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('dan_Screenshots'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('swe_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('swe_Screenshots'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('jap_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('jap_Screenshots'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('fre_Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('fre_Screenshots'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Kuvat')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Kuvat'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Снимки экрана')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Снимки экрана'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Screenshots')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Screenshots'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Zrzuty ekranu')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Zrzuty ekranu'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Skjermbilder')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Skjermbilder'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Capturas de Tela')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Capturas de Tela'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Immagini')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Immagini'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Capturas de pantalla')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Capturas de pantalla'), ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}'));
// Переименование папки видеозаписей игры Legacy Edition
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('che_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('che_Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('cze_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('cze_Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('fre_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('fre_Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('jap_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('jap_Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('ned_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('ned_Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('por_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('por_Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('spa_Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\')+CustomMessage('spa_Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Recorded Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Recorded Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Optagede videoer')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Optagede videoer'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Aufgenommene Videos')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Aufgenommene Videos'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Tallennetut videot')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Tallennetut videot'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Video registrati')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Video registrati'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Innspilte videoer')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Innspilte videoer'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Nagrane filmy')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Nagrane filmy'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Inspelade filmer')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Inspelade filmer'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));
if DirExists(ExpandConstant('{#SAVES}\{#Group}\Записанные видеоролики')) then RenameDir(ExpandConstant('{#SAVES}\{#Group}\Записанные видеоролики'), ExpandConstant('{#SAVES}\{#Group}\{#VideoName}'));  
// Переименование папки копии сохранений игры Legacy Edition
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\De Sims 4 Legacy Edition_Backup')) then RenameDir(ExpandConstant('{#SAVES}\De Sims 4 Legacy Edition_Backup'), ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\Die Sims 4 Legacy Edition_Backup')) then RenameDir(ExpandConstant('{#SAVES}\Die Sims 4 Legacy Edition_Backup'), ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\Les Sims 4 Edition Classique_Backup')) then RenameDir(ExpandConstant('{#SAVES}\Les Sims 4 Edition Classique_Backup'), ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\The Sims 4 Legacy Edition_Backup')) then RenameDir(ExpandConstant('{#SAVES}\The Sims 4 Legacy Edition_Backup'), ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\The Sims 4 Издание Legacy_Backup')) then RenameDir(ExpandConstant('{#SAVES}\The Sims 4 Издание Legacy_Backup'), ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('kor_GroupLE')+'_Backup') then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('kor_GroupLE')+'_Backup', ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('che_GroupLE')+'_Backup') then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('che_GroupLE')+'_Backup', ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('cze_GroupLE')+'_Backup') then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('cze_GroupLE')+'_Backup', ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('pol_GroupLE')+'_Backup') then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('pol_GroupLE')+'_Backup', ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('por_GroupLE')+'_Backup') then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('por_GroupLE')+'_Backup', ExpandConstant('{#SAVES}\{#Group}_Backup'));
if DirExists(ExpandConstant('{#SAVES}\')+CustomMessage('spa_GroupLE')+'_Backup') then RenameDir(ExpandConstant('{#SAVES}\')+CustomMessage('spa_GroupLE')+'_Backup', ExpandConstant('{#SAVES}\{#Group}_Backup'));
// Удаление файлов предыдущего запуска 
//=============================================================
	DeleteFile(ExpandConstant('{#SAVES}\{#Group}\ConnectionStatus.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group}\lastCrash.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group}\lastException.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group}\lastUIException.txt'))
	DeleteFile(ExpandConstant('{#SAVES}\{#Group}\UserSetting.ini'))
  end;
	WizardForm.GroupEdit.Text:= ExpandConstant('{#DefGr}');
  Selectlbl[8].Caption:= WizardForm.GroupEdit.Text;
  end;
end;
// Нажатие кнопки Да на форме сообщений 
//=============================================================
procedure YesMessageBtnClick(Sender: TObject);
begin
if GetArrayLength(Flash)>0 then KillTimer(MessageForm.Handle, 2);
  MessageForm.ModalResult:= mrYes;
end;
// Нажатие кнопки Нет на форме сообщений 
//=============================================================
procedure NoMessageBtnClick(Sender: TObject);
begin
if GetArrayLength(Flash)>0 then KillTimer(MessageForm.Handle, 2);
  MessageForm.ModalResult:= mrCancel;
end;
// Нажатие кнопки Закрыть на форме информации 
//=============================================================
procedure ButtonClose(Sender: TObject);
begin
  InfoForm.Free;
	Sleep(100);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
  WizardForm.Show;
if IsWin6 then init_taskbar();
end;
// Нажатие на кнопку Удалить
//=============================================================
procedure DeleteBtnClick(Sender: TObject);
begin
	RegQueryStringValue(HKLM, '{#CurrentVer}\Uninstall\{48EBEBBF-B9F8-4520-A3CF-89A730721917}', 'UninstallString', Unins);
	uninst:= RemoveQuotes(Unins);
if not Exec(uninst, ' /SILENT', '', SW_SHOW, ewNoWait, i) then Exec('control', ' /appwiz.cpl', '', 5, ewNoWait, i);
  WizardForm.Close;
end;
// Нажатие на кнопку Играть
//=============================================================
procedure PlayBtnClick(Sender: TObject);
begin
if IsWin64 then begin
if not FileExists(ExpandConstant('{#Dir}\Game\Bin\anadius64.dll')) then
  Exec(ExpandConstant('{#Dir}\{#AppEXE64}'), ' --no_tutorial', '', SW_SHOW, ewNoWait, i) else
  Exec(ExpandConstant('{#Dir}\{#AppEXE64}'), ' -alwaysoffline --no_tutorial', '', SW_SHOW, ewNoWait, i);
  end else
  Exec(ExpandConstant('{#Dir}\{#AppEXE}'), ' --no_tutorial', '', SW_SHOW, ewNoWait, i);
  WizardForm.Close;
end;
// Нажатие на информацию об авторе
//=============================================================
procedure URL1Click(Sender: TObject);
begin
  InfoForm.Free;   
#ifdef Components
  ShellExec('open', 'https://nnmclub.to/forum/viewtopic.php?t=1327266', '', '', 5, ewNoWait, i);
#else
  ShellExec('open', 'https://nnmclub.to/forum/viewtopic.php?t=1147378', '', '', 5, ewNoWait, i);
#endif
	Sleep(100);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
  WizardForm.Show;
if IsWin6 then init_taskbar();
end;
// Нажатие на кнопку Да формы выхода из установки
//=============================================================
procedure YesExitBtnClick(Sender: TObject);
begin
if GetArrayLength(Flash)>0 then KillTimer(ExitForm.Handle, 2);
  ExitForm.ModalResult:= mrYes;
end;
// Нажатие на кнопку Нет формы выхода из установки 
//=============================================================
procedure NoExitBtnClick(Sender: TObject);
begin
if GetArrayLength(Flash)>0 then KillTimer(ExitForm.Handle, 2);
  ExitForm.ModalResult:= mrCancel;
end;
// Нажатие на кнопку Да формы выбора директории установки 
//=============================================================
procedure DirForm_Buttons_OnClick(Sender: TObject);
begin
  DirBrowseForm.ModalResult:= mrYes;
end;
// Нажатие на кнопку Отменить формы выбора директории установки 
//=============================================================
procedure NoDirBtnClick(Sender: TObject);
begin
  DirBrowseForm.ModalResult:= mrCancel;
end;
// Нажатие на кнопку Да формы выбора меню Пуск 
//=============================================================
procedure GroupForm_Buttons_OnClick(Sender: TObject);
begin
if GroupEdit.Text <> WizardForm.GroupEdit.Text then WizardForm.GroupEdit.Text := GroupTreeView.Directory;
  GroupBrowseForm.ModalResult:= mrYes;
end;
// Нажатие на кнопку Нет формы выбора меню Пуск 
//=============================================================
procedure NoGroupBtnClick(Sender: TObject);
begin
  GroupBrowseForm.ModalResult:= mrCancel;
end;
// Нажатие на кнопку Удалить формы удаления игры 
//=============================================================
procedure YesUninstBtnClick(Sender: TObject);
begin
if GetArrayLength(ALabel[3])>0 then KillTimer(UninstForm.Handle, 2);
  UninstForm.ModalResult:= mrYes;
end;
// Нажатие на кнопку Отменить формы удаления игры 
//=============================================================
procedure NoUninstBtnClick(Sender: TObject);
begin
if GetArrayLength(ALabel[3])>0 then KillTimer(UninstForm.Handle, 2);
  UninstForm.ModalResult:= mrCancel;
end;
// Сопоставление кнопкам процедур их выполнения 
//=============================================================
procedure OnClickButton(aName: String);
begin
	case aName of
 'ButtonBack'    : WizardForm.BackButton.OnClick(nil);
 'ButtonCancel'  : WizardForm.CancelButton.OnClick(nil);
 'ButtonNext'    : WizardForm.NextButton.OnClick(nil);
 'ButtonDir'     : WizardForm.DirBrowseButton.OnClick(nil);
 'ButtonGroup'   : WizardForm.GroupBrowseButton.OnClick(nil);
 'ButtonDelete'  : DeleteBtnClick(nil);          
 'ButtonPlay'    : PlayBtnClick(nil);              
 'ButtonClose'	 : ButtonClose(nil);
 'ButtonYes'     : YesExitBtnClick(nil);           
 'ButtonNo'      : NoExitBtnClick(nil);             
 'ButtonYesUn'   : YesUninstBtnClick(nil);         
 'ButtonNoUn'    : NoUninstBtnClick(nil);          
 'NoButton'      : NoMessageBtnClick(nil);         
 'YesButton'     : YesMessageBtnClick(nil);        
 'NoDirFolder'   : NoDirBtnClick(nil);             
 'YesDirFolder'  : DirForm_Buttons_OnClick(nil);    
 'NoGroupFolder' : NoGroupBtnClick(nil);            
 'YesGroupFolder': GroupForm_Buttons_OnClick(nil); 
 'ButtonURL'     : URL1Click(nil);
	end;
end;
// Загрузка изображений формы установки в буфер обмена 
//=============================================================
function ImgLoad(Wnd: HWND; FileName: PAnsiChar; Left, Top, Width, Height: Integer; Stretch, IsBkg: Boolean): Longint;
begin
if not FileExists(FileName) then begin
  ExtractTemporaryFile(FileName);
  Result:= _ImgLoad(Wnd, ExpandConstant('{tmp}\'+FileName), Left, Top, Width, Height, Stretch, IsBkg);
  DeleteFile(ExpandConstant('{tmp}\'+FileName));
  end else
  Result:= _ImgLoad(Wnd, FileName, Left, Top, Width, Height, Stretch, IsBkg);
  ImgApplyChanges(Wnd);
end;
// Загрузка изображений кнопок установки в буфер обмена 
//=============================================================
function BtnCreate(hParent: HWND; Left, Top, Width, Height: Integer; FileName: PAnsiChar; ShadowWidth: Integer; IsCheckBtn: Boolean) :HWND;
begin
if not FileExists(FileName) then begin
  ExtractTemporaryFile(FileName);
  Result:= _BtnCreate(hParent, Left, Top, Width, Height, ExpandConstant('{tmp}\'+FileName), ShadowWidth, IsCheckBtn);
  DeleteFile(ExpandConstant('{tmp}\'+FileName));
  end else
  Result:= _BtnCreate(hParent, Left, Top, Width, Height, FileName, ShadowWidth, IsCheckBtn);
  ImgApplyChanges(hParent);
end;
// Разрешения нажатия кнопок установки 
//=============================================================
procedure UTF_Button_Enabled(aName: String; aEnabled: Boolean);
begin
for i:= 1 to CountButtons do
if aName = Descriptions[i].Name then begin
  case aEnabled of
  False: begin
  ButtonEnable[i]:= True;
  Descriptions[i].Cursor:= crArrow;
  Descriptions[i].Font.Color:= Clr4[i];
  ImgSetVisiblePart(ButtonImages[i], 0, HeightBtn[i]*3, WidthBtn[i], HeightBtn[i]);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  end;
  True: begin
  ButtonEnable[i]:= False;
  Descriptions[i].Cursor:= MyCursor;
  Descriptions[i].Font.Color:= Clr1[i];
	ImgSetVisiblePart(ButtonImages[i], 0, 0, WidthBtn[i], HeightBtn[i]);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  end;
	end;
  end;
end;
// Отображение кнопок установки 
//=============================================================
procedure UTF_Button_Visable(aName: String; aVisable: Boolean);
begin
for i:= 1 to CountButtons do
if aName = Descriptions[i].Name then begin
  Descriptions[i].Visible:= aVisable;
  ImgSetVisibility(ButtonImages[i], aVisable);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  end;
end;
// Сопоставление нажатию кнопок 
//=============================================================
procedure UTF_ButtonEvent(aName: String);
begin
for i:= 1 to CountButtons do
if aName = Descriptions[i].Name then OnClickButton(aName);
end;
// Звук при наведении 
//=============================================================
procedure sndCheck(Sender: TObject);
begin
  sndPlaySound(ExpandConstant('{tmp}\Check.wav'), $0008);
end;
// Отображение при нажатии кнопок 
//=============================================================
procedure UTF_Button_OnClickButton(Sender: TObject);
begin
for i:= 1 to CountButtons do
	case Sender of
  Descriptions[i]: begin
if not ButtonEnable[i] then begin
	sndCheck(nil);
  Descriptions[i].Font.Color:= Clr3[i];
  ImgSetVisiblePart(ButtonImages[i], 0, HeightBtn[i]*2, WidthBtn[i], HeightBtn[i]);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  Sleep(5);
  Descriptions[i].Font.Color:= Clr1[i];
  ImgSetVisiblePart(ButtonImages[i], 0, 0, WidthBtn[i], HeightBtn[i]);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  Sleep(5);
  Descriptions[i].Font.Color:= Clr2[i];
  ImgSetVisiblePart(ButtonImages[i], 0, HeightBtn[i], WidthBtn[i], HeightBtn[i]);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  UTF_ButtonEvent(Descriptions[i].Name);
  end;
  end;
	end;
end;
// Звук при нажатии     
//=============================================================
procedure sndEnter(Sender: TObject);
begin
  sndPlaySound(ExpandConstant('{tmp}\Enter.wav'), $0008);
end;    
// Отображение процедуры выполнения 
//=============================================================
procedure UTF_Button_MouseEnter(Sender: TObject);
begin
for i:= 1 to CountButtons do
	case Sender of
  Descriptions[i]: begin
if not ButtonEnable[i] then begin
	sndEnter(nil);
  Descriptions[i].Font.Color:= Clr2[i];
  ImgSetVisiblePart(ButtonImages[i], 0, HeightBtn[i], WidthBtn[i], HeightBtn[i]);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  end;
  end;
	end;
end;
// Отображение при наведение на кнопки 
//=============================================================
procedure UTF_Button_MouseLeave(Sender: TObject);
begin
for i:= 1 to CountButtons do
	case Sender of
  Descriptions[i]: begin
if not ButtonEnable[i] then begin
  Descriptions[i].Font.Color:= Clr1[i];
  ImgSetVisiblePart(ButtonImages[i], 0, 0, WidthBtn[i], HeightBtn[i]);
  ImgApplyChanges(Descriptions[i].Parent.Handle);
  end;
  end;
	end;
end;
// Создание кнопок установки 
//=============================================================
procedure UTF_Button_Create(aName: String; aParent: TWinControl; aFilename: String; aLeft, aTop, aWidth, aHeight: Integer; aFontName: String; aFontSize: Integer; aFntStyle: TFontStyles; aText: String; aClr1, aClr2, aClr3, aClr4: TColor; aCursor: TCursor);
begin
  CountButtons := CountButtons+1;
  LeftBtn[CountButtons]:= aLeft;
	TopBtn[CountButtons]:= aTop;
	WidthBtn[CountButtons]:= aWidth;
	HeightBtn[CountButtons] := aHeight;
  Clr1[CountButtons]:= aClr1;
	Clr2[CountButtons]:= aClr2;
	Clr3[CountButtons]:= aClr3;
	Clr4[CountButtons]:= aClr4;
  ButtonImages[CountButtons]:= ImgLoad(aParent.Handle, aFilename, ScaleX(LeftBtn[CountButtons]), ScaleY(TopBtn[CountButtons]), ScaleX(WidthBtn[CountButtons]), ScaleY(HeightBtn[CountButtons]), True, True);
  ImgSetVisiblePart(ButtonImages[CountButtons], 0, 0, WidthBtn[CountButtons], HeightBtn[CountButtons]);
  Descriptions[CountButtons]:= TLabel.Create(nil);
// Отображение текста на кнопках 
//=============================================================
with Descriptions[CountButtons] do 
	begin
  Parent:= aParent;
  Alignment:= taCenter;
  AutoSize:= False;
  Name:= aName;
  Caption:= aText;
  Cursor:= aCursor;
  Font.Name:= aFontName;
  Font.Size:= aFontSize;
  Font.Style:= aFntStyle;
  Font.Color:= Clr1[CountButtons];
	SetBounds(ScaleX(LeftBtn[CountButtons]), Round(ScaleY(TopBtn[CountButtons])+(Font.Size*0.70)-3), ScaleX(WidthBtn[CountButtons]), ScaleY(HeightBtn[CountButtons]));
  OnClick:= @UTF_Button_OnClickButton;
  OnMouseEnter:= @UTF_Button_MouseEnter;
  OnMouseLeave:= @UTF_Button_MouseLeave;
  end;
  ImgApplyChanges(Descriptions[CountButtons].Parent.Handle);
end;
// Отображение текста на кнопках 
//=============================================================
procedure UTF_Button_SetText(aName, aText: String);
begin
for i:= 1 to CountButtons do
if aName = Descriptions[i].Name then Descriptions[i].Caption:= aText;
end;
// Получение элементов анимации 
//=============================================================
function GetElementIndex(a: TALabel; lbl: TLabel): Integer;
begin
  Result:= -1;
  Check:= False;
for i:= 0 to GetArrayLength(a)-1 do
if a[i] = lbl then begin
  Check:= True;
  Break;
  end;
if Check then Result:= i;
end;
// Отображение элементов анимации 
//=============================================================
procedure AddLabelToArray(var a: TALabel; lbl: TLabel);
begin
if GetElementIndex(a, lbl) = -1 then SetArrayLength(a, GetArrayLength(a)+1);
  a[GetArrayLength(a)-1]:= lbl;
end;
// Удаление элементов анимации 
//=============================================================
procedure DeleteLabelFromArray(var a: TALabel; lbl: Integer);
begin
if lbl > -1 then Last:= GetArrayLength(a)-1;
if lbl > Last then
for i:= lbl to Last do a[i]:= a[i+1];
  SetArrayLength(a, Last);
end;
// Отображение анимации формы сообщений 
//=============================================================
procedure MessageFlashing();
begin
for i := 0 to GetArrayLength(Flash) -1 do
if Flash[i].Font.Color = $00FFF0 then Flash[i].Font.Color:= $0030FF else Flash[i].Font.Color:= $00FFF0;
end;
// Отображение анимации страницы приветствия 
//=============================================================
procedure WelcomeFlashing();
begin
if RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Install Dir', Dir) then begin
if IsWin64 then begin
if FileExists(ExpandConstant('{#Dir}\{#AppEXE64}')) then begin
for i:= 0 to GetArrayLength(ALabel[0])-1 do
if ALabel[0][i].Font.Color = $00FF00 then ALabel[0][i].Font.Color:= $FDB900 else ALabel[0][i].Font.Color:= $00FF00;
	end else begin
for i := 0 to GetArrayLength(ALabel[0])-1 do
if ALabel[0][i].Font.Color = $FDB900 then ALabel[0][i].Font.Color:= $00FFF0 else ALabel[0][i].Font.Color:= $FDB900
	end;
	end else begin
if FileExists(ExpandConstant('{#Dir}\{#AppEXE}')) then begin
for i := 0 to GetArrayLength(ALabel[0])-1 do
if ALabel[0][i].Font.Color = $00FF00 then ALabel[0][i].Font.Color:= $FDB900 else ALabel[0][i].Font.Color:= $00FF00
	end else begin
for i := 0 to GetArrayLength(ALabel[0])-1 do
if ALabel[0][i].Font.Color = $00FF00 then ALabel[0][i].Font.Color:= $00FFF0 else ALabel[0][i].Font.Color:= $00FF00
	end;
  end;
  end else begin
for i := 0 to GetArrayLength(ALabel[0])-1 do
if ALabel[0][i].Font.Color = $00FF00 then ALabel[0][i].Font.Color:= $00FFF0 else ALabel[0][i].Font.Color:= $00FF00
  end;
end;
// Отображение анимации свободного места 
//=============================================================
procedure DiskFlashing();
begin
for i := 0 to GetArrayLength(ALabel[2])-1 do
if ALabel[2][i].Font.Color = $00FFF0 then ALabel[2][i].Font.Color:= $0030FF else ALabel[2][i].Font.Color:= $00FFF0;
end;
// Отображение анимации страницы завершения 
//=============================================================
procedure FinishFlashing();
begin
for i := 0 to GetArrayLength(ALabel[3])-1 do
if ALabel[3][i].Font.Color = $00FF00 then ALabel[3][i].Font.Color:= $FDB900 else ALabel[3][i].Font.Color:= $00FF00;
end;
// Перевод чисел Мб <=> Tб
//=============================================================
function MbOrTb(Float: Extended): String;
begin
if Float < 1024 then Result:= FormatFloat('0'+CustomMessage(Lang+'Mb'), Float) else
if Float/1024 < 1024 then Result:= Format('%f'+CustomMessage(Lang+'Gb'), [Float/1024]) else
	Result:= Format('%f'+CustomMessage(Lang+'Tb'), [Float/oneMB]);
  StringChange(Result, ', ', '.');
end;
#ifdef System
// Отображение анимации системных требований 
//=============================================================
procedure SysReqFlashing();
begin
for i:= 0 to GetArrayLength(ALabel[1])-1 do
if ALabel[1][i].Font.Color = $00FFF0 then ALabel[1][i].Font.Color:= $0030FF else ALabel[1][i].Font.Color:= $00FFF0;
end;
// Расчет отображения установленной памяти 
//=============================================================
function ToMultiple(Bytes, Multiple: Integer): Integer;
begin
if Abs(Bytes/Multiple) > Bytes/Multiple then Result:= (Bytes/Multiple+1)*Multiple else Result:= Bytes;
end;
// Проверка разрядности системы 
//=============================================================
function Size64(Hi, Lo: Integer): Extended;
begin
  Result:= Lo;
if Lo < 0 then Result := Result+$7FFFFFFF+$7FFFFFFF+2;
for Hi:= Hi-1 downto 0 do Result:= Result+$7FFFFFFF+$7FFFFFFF+2;
end;
// Конвертации отображения в строковый параметр
//=============================================================
function DelSp(s: String): String;
begin
while Pos('  ', s) > 0 do StringChange(s, '  ', ' ');
  Result:= Trim(s);
end;
// Проверка установленного процессора 
//=============================================================
function CheckCPU(NeedMHz: Cardinal): Boolean;
begin
  RegGetSubkeyNames(HKLM, 'Hardware\Description\System\CentralProcessor', Keys);
for i:= 0 to GetArrayLength(Keys)-1 do RegQueryStringValue(HKLM, 'Hardware\Description\System\CentralProcessor\'+Keys[i], 'ProcessorNameString', Keys[i]);
if not RegQueryDWordValue(HKLM, 'Hardware\Description\System\CentralProcessor\0', '~MHz', ProcessorValue) or (ProcessorValue < NeedMHz) then Exit else Result:= True;
end;
// Проверка установленной памяти 
//=============================================================
function CheckMemorySize(NeedRAM: Integer): Boolean;
begin
if IsWin64 then NeedRam:= {#RAM} else NeedRam:= {#RAM1};
  MemoryEx.dwLength:= SizeOf(MemoryEx)
if GlobalMemoryStatusEx(MemoryEx) then
if ToMultiple(trunc(Size64(MemoryEx.HiAvailPhys, MemoryEx.LoAvailPhys)/oneMB), 16) < NeedRam then Exit else Result:= True;
end;
// Поиск установленной видеокарты 
//=============================================================
function SetDeviceName(const DeviceName: String): Boolean;
begin
for i:= 0 to 5 do RegQueryStringValue(HKLM, DeviceKey, 'DriverDesc', DeviceName);
  Result:= (Pos('AMD', DeviceName) <> Pos('Gigabyte', DeviceName)) or (Pos('NVIDIA', DeviceName) <> Pos('MSI', DeviceName)) or (Pos('ASUS', DeviceName) <> Pos('Palit', DeviceName));
end;
// Отображение звуковой карты
//=============================================================
function SoundProductName(SoundName: String): String;
begin
for i:= 0 to 4 do RegQueryStringValue(HKLM,'{#Control}\Class\{4d36e96c-e325-11ce-bfc1-08002be10318}\000'+IntToStr(i), 'DriverDesc', SoundName);
  Result:= SoundName;
end;
// Отображение производителя компьютера
//=============================================================
function SystemProductName(ProductName: String): String;
begin
  RegQueryStringValue(HKLM, '{#Control}\SystemInformation', 'SystemProductName', ProductName);
  Result:= ProductName;
end;
#endif
// Обновление языка установки игры 
//=============================================================
procedure LanguagesUpdate();
begin
  case Lang of
  'che_': BtnSetChecked(LangBtn[0], True);
  'cze_': BtnSetChecked(LangBtn[1], True);
  'dan_': BtnSetChecked(LangBtn[2], True);
  'deu_': BtnSetChecked(LangBtn[3], True);
  'eng_': BtnSetChecked(LangBtn[4], True);
  'fin_': BtnSetChecked(LangBtn[5], True);
  'fre_': BtnSetChecked(LangBtn[6], True);
  'jap_': BtnSetChecked(LangBtn[7], True);
  'ita_': BtnSetChecked(LangBtn[8], True);
  'kor_': BtnSetChecked(LangBtn[9], True);
  'ned_': BtnSetChecked(LangBtn[10], True);
  'nor_': BtnSetChecked(LangBtn[11], True);
  'pol_': BtnSetChecked(LangBtn[12], True);
  'por_': BtnSetChecked(LangBtn[13], True);
  'rus_': BtnSetChecked(LangBtn[14], True);
  'spa_': BtnSetChecked(LangBtn[15], True);
  'swe_': BtnSetChecked(LangBtn[16], True);
  end;
// Подключение формы установки 
//=============================================================
for i:= 0 to 4 do Welcomelbl[i].Show;
	BtnSetVisibility(LangBtn[18], True);
  ImgSetVisibility(Images[2], True);
if IsWin64 then ImgSetPosition(Images[2], ScaleX(55), ScaleY(15), ScaleX(101), ScaleY(270)) else
	ImgSetPosition(Images[2], ScaleX(27), ScaleY(20), ScaleX(199), ScaleY(270));
  Welcomelbl[3].Caption:= CustomMessage(Lang+'Language');
  Welcomelbl[4].Caption:= CustomMessage(Lang+'Lang');
  WizardForm.Caption:= CustomMessage(Lang+'WelcomeTitle');
  SetTimer(WizardForm.Handle, 1, 1000, CallbackAddr('WelcomeFlashing'));
// Название кнопок установки 
//=============================================================
	UTF_Button_SetText('ButtonBack', CustomMessage(Lang+'ButtonBack'));
	UTF_Button_SetText('ButtonPlay', CustomMessage(Lang+'Start'));
	UTF_Button_SetText('ButtonCancel', CustomMessage(Lang+'ButtonCancel'));
	UTF_Button_SetText('ButtonDelete', CustomMessage(Lang+'Delete'));
	UTF_Button_SetText('ButtonNext', CustomMessage(Lang+'ButtonNext'));
	UTF_Button_SetText('ButtonDir', CustomMessage(Lang+'ButtonBrowse'));
	UTF_Button_SetText('ButtonGroup', CustomMessage(Lang+'ButtonBrowse'));
// Отображение информации формы устанавливаемой игры 
//=============================================================
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Install Dir', Dir) then begin
  Welcomelbl[0].Caption:= CustomMessage(Lang+'WelcomeLabel1');
  Welcomelbl[1].Caption:= CustomMessage(Lang+'WelcomeLabel3');
  Welcomelbl[1].SetBounds(ScaleX(220), ScaleY(65), ScaleX(420), ScaleY(70));
  Welcomelbl[2].Caption:= CustomMessage(Lang+'Message12');
	UTF_Button_Visable('ButtonCancel', True);
  AddLabelToArray(ALabel[0], Welcomelbl[1]);  
// Отображение информации об отсутствии файлов установки 
//=============================================================
  end else begin
  Welcomelbl[2].Hide;
  UTF_Button_Visable('ButtonDelete', True);
If IsWin64 then begin
if DirExists(ExpandConstant('{#Dir}\Game\Bin')) then begin
if not FileExists(ExpandConstant('{#Dir}\{#AppEXE64}')) then begin
  Welcomelbl[0].Caption:= CustomMessage(Lang+'MsgBox');
  Welcomelbl[1].Caption:= CustomMessage(Lang+'MsgBox2');
  Welcomelbl[1].SetBounds(ScaleX(220), ScaleY(68), ScaleX(420), ScaleY(190));
  AddLabelToArray(ALabel[0], Welcomelbl[1]);
  end else begin
// Отображение информации формы установленной игры
//=============================================================
	GetVersionNumbersString(ExpandConstant('{#Dir}\{#AppEXE64}'), FileVersion);
if FileVersion <> '{#VERSION}' then Welcomelbl[0].Caption := CustomMessage(Lang+'MsgBox') +' v.'+ FileVersion else
  Welcomelbl[0].Caption:= CustomMessage(Lang+'MsgBox3') + '{#VERSION}';
  Welcomelbl[1].Font.Color:= $C0C0C0;
  Welcomelbl[1].Caption:= CustomMessage(Lang+'MsgBox1');
  Welcomelbl[1].SetBounds(ScaleX(220), ScaleY(64), ScaleX(420), ScaleY(190));
	UTF_Button_Visable('ButtonPlay', True);
  AddLabelToArray(ALabel[0], Welcomelbl[0]);
  end;
  end else begin
// Отображение информации об отсутствии файлов установки
//=============================================================
if not FileExists(ExpandConstant('{#Dir}\{#AppEXE}')) then begin
  Welcomelbl[0].Caption:= CustomMessage(Lang+'MsgBox');
  Welcomelbl[1].Caption:= CustomMessage(Lang+'MsgBox2');
  Welcomelbl[1].SetBounds(ScaleX(220), ScaleY(68), ScaleX(420), ScaleY(190));
  AddLabelToArray(ALabel[0], Welcomelbl[1]);
  end else begin
// Отображение информации формы установленной игры
//=============================================================
if GetVersionNumbersString(ExpandConstant('{#Dir}\{#AppEXE}'), FileVersion) then
if FileVersion <> '{#VERSIONLE}' then Welcomelbl[0].Caption := CustomMessage(Lang+'MsgBox') +' v.'+ FileVersion else
  Welcomelbl[0].Caption:= CustomMessage(Lang+'MsgBox3') + '{#VERSIONLE}';
  Welcomelbl[1].Font.Color:= $C0C0C0;
  Welcomelbl[1].Caption:= CustomMessage(Lang+'MsgBox1');
  Welcomelbl[1].SetBounds(ScaleX(220), ScaleY(64), ScaleX(420), ScaleY(190));
	UTF_Button_Visable('ButtonPlay', True);
  AddLabelToArray(ALabel[0], Welcomelbl[0]);
  end;
  end;
  end else begin
// Отображение информации об отсутствии файлов установки
//=============================================================
if not FileExists(ExpandConstant('{#Dir}\{#AppEXE}')) then begin
  Welcomelbl[0].Caption:= CustomMessage(Lang+'MsgBox');
  Welcomelbl[1].Caption:= CustomMessage(Lang+'MsgBox2');
  Welcomelbl[1].SetBounds(ScaleX(220), ScaleY(68), ScaleX(420), ScaleY(190));
  AddLabelToArray(ALabel[0], Welcomelbl[1]);  
  end else begin
// Отображение информации формы установленной игры
//=============================================================
if GetVersionNumbersString(ExpandConstant('{#Dir}\{#AppEXE}'), FileVersion) then
if FileVersion <> '{#VERSIONLE}' then Welcomelbl[0].Caption:= CustomMessage(Lang+'MsgBox') +' v.'+ FileVersion else
  Welcomelbl[0].Caption:= CustomMessage(Lang+'MsgBox3') + '{#VERSIONLE}';
  Welcomelbl[1].Font.Color:= $C0C0C0;
  Welcomelbl[1].Caption:= CustomMessage(Lang+'MsgBox1');
  Welcomelbl[1].SetBounds(ScaleX(220), ScaleY(64), ScaleX(420), ScaleY(190));
	UTF_Button_Visable('ButtonPlay', True);
  AddLabelToArray(ALabel[0], Welcomelbl[0]);  
  end;
  end;
	end;
  ChangeSelectDirName();
end;
// Нажатие на кнопки выбора языка установки
//=============================================================
procedure SelectLang(hBtn: HWND);
begin
  sndCheck(nil);
  case hBtn of
// Китайский язык
//=============================================================
  LangBtn[0]: begin
for i:= 1 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'che_';
  BtnSetChecked(LangBtn[0], False);
  end;
// Чешский язык
//=============================================================
  LangBtn[1]: begin
for i:= (0 and 2) to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'cze_';
  BtnSetChecked(LangBtn[1], False);
  end;
// Датский язык
//=============================================================
  LangBtn[2]: begin
for i:= (0 and 1 and 3) to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'dan_';
  BtnSetChecked(LangBtn[2], False);
  end;
// Немецкий язык
//=============================================================
  LangBtn[3]: begin
for i:= 0 to 2 do BtnSetChecked(LangBtn[i], False);
for i:= 4 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'deu_';
  BtnSetChecked(LangBtn[3], False);
  end;
// Английский язык
//=============================================================
  LangBtn[4]: begin
for i:= 0 to 3 do BtnSetChecked(LangBtn[i], False);
for i:= 5 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'eng_';
  BtnSetChecked(LangBtn[4], False);
  end;
// Финский язык
//=============================================================
  LangBtn[5]: begin
for i:= 0 to 4 do BtnSetChecked(LangBtn[i], False);
for i:= 6 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'fin_';
  BtnSetChecked(LangBtn[5], False);
  end;
// Французский язык
//=============================================================
  LangBtn[6]: begin
for i:= 0 to 5 do BtnSetChecked(LangBtn[i], False);
for i:= 7 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'fre_';
  BtnSetChecked(LangBtn[6], False);
  end;
// Японский язык
//=============================================================
  LangBtn[7]: begin
for i:= 0 to 6 do BtnSetChecked(LangBtn[i], False);
for i:= 8 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'jap_';
  BtnSetChecked(LangBtn[7], False);
  end;
// Итальянский язык
//=============================================================
  LangBtn[8]: begin
for i:= 0 to 7 do BtnSetChecked(LangBtn[i], False);
for i:= 9 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'ita_';
  BtnSetChecked(LangBtn[8], False);
  end;
// Корейский язык
//=============================================================
  LangBtn[9]: begin
for i:= 0 to 8 do BtnSetChecked(LangBtn[i], False);
for i:= 10 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'kor_';
  BtnSetChecked(LangBtn[9], False);
  end;
// Нидерландский язык
//=============================================================
  LangBtn[10]: begin
for i:= 0 to 9 do BtnSetChecked(LangBtn[i], False);
for i:= 11 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'ned_';
  BtnSetChecked(LangBtn[10], False);
  end;
// Норвежский язык
//=============================================================
  LangBtn[11]: begin
for i:= 0 to 10 do BtnSetChecked(LangBtn[i], False);
for i:= 12 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'nor_';
  BtnSetChecked(LangBtn[11], False);
  end;
// Польский язык
//=============================================================
  LangBtn[12]: begin
for i:= 0 to 11 do BtnSetChecked(LangBtn[i], False);
for i:= 13 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'pol_';
  BtnSetChecked(LangBtn[12], False);
  end;
// Португальский язык
//=============================================================
  LangBtn[13]: begin
for i:= 0 to 12 do BtnSetChecked(LangBtn[i], False);
for i:= 14 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'por_';
  BtnSetChecked(LangBtn[13], False);
  end;
// Русский язык
//=============================================================
  LangBtn[14]: begin
for i:= 0 to 13 do BtnSetChecked(LangBtn[i], False);
for i:= 15 to 16 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'rus_';
  BtnSetChecked(LangBtn[14], False);
  end;
// Испанский язык
//=============================================================
  LangBtn[15]: begin
for i:= 0 to 14 do BtnSetChecked(LangBtn[i], False);
  BtnSetChecked(LangBtn[16], False);
  Lang:= 'spa_';
  BtnSetChecked(LangBtn[15], False);
  end;
// Шведский язык
//=============================================================
  LangBtn[16]: begin
for i:= 0 to 15 do BtnSetChecked(LangBtn[i], False);
  Lang:= 'swe_';
  BtnSetChecked(LangBtn[16], False);
  end;
  end;
  BtnRefresh(hBtn);
  LanguagesUpdate();
end;
// Нажатие на кнопки установки
//=============================================================
procedure ClickBtn(hBtn: HWND);
begin
  sndCheck(nil);
  case hBtn of
// Кнопка Копирайта / Страница торрента
//=============================================================
  Button[0]:
#ifdef Components 
  ShellExec('open', 'https://nnmclub.to/forum/viewtopic.php?t=1327266', '', '', 5, ewNoWait, i);  
#else
  ShellExec('open', 'https://nnmclub.to/forum/viewtopic.php?t=1147378', '', '', 5, ewNoWait, i);  
#endif
// Кнопка музыки
//=============================================================
  Button[1]: begin
if BtnGetChecked(Button[1]) then mciSendString('pause MP3', '', 0, 0) else mciSendString('play MP3 repeat', '', 0, 0);
  end;
// Кнопка очистки диска
//=============================================================
  Button[2]: Exec('cleanmgr', '', '', 5, ewNoWait, i);
// Чекбокс создания копий
//=============================================================
  Button[3]: begin
if BtnGetChecked(Button[3]) then Selectlbl[9].Font.Color := $00FF00 else Selectlbl[9].Font.Color := $FDB900;
  end;
// Чекбокс Ярлыков Меню пуск
//=============================================================
  Button[4]: begin
if BtnGetChecked(Button[4]) then begin
  Selectlbl[1].Font.Color:= $808080;
  Selectlbl[8].Font.Color:= $808080;
  Selectlbl[7].Font.Color:= $808080;
	UTF_Button_Enabled('ButtonDir', False);
  end else begin
  Selectlbl[7].Font.Color:= $FDB900;
	RegQueryStringValue(HKLM, '{#CurrentVer}\Uninstall\{48EBEBBF-B9F8-4520-A3CF-89A730721917}', 'Icon Group', Folder);
if DirExists(ExpandConstant(Folder)) then begin
  Selectlbl[1].Font.Color:= $808080;
  Selectlbl[8].Font.Color:= $808080;
	UTF_Button_Enabled('ButtonGroup', False) 
	end else begin
  Selectlbl[1].Font.Color:= $C0C0C0;
  Selectlbl[8].Font.Color:= $C0C0C0;
	UTF_Button_Enabled('ButtonGroup', True);
  end;
	end;
  end;
// Чекбокс значков на рабочий стол
//=============================================================
  Button[5]: begin
if BtnGetChecked(Button[5]) then Taskslbl[2].Font.Color:= $00FF00 else Taskslbl[2].Font.Color:= $FDB900;
  end;
// Чекбокс значка на панель задач
//=============================================================
  Button[6]: begin
if BtnGetChecked(Button[6]) then Taskslbl[3].Font.Color:= $00FF00 else Taskslbl[3].Font.Color:= $FDB900;
  end;
// Чекбокс DirectX
//=============================================================
  Button[7]: begin
if BtnGetChecked(Button[7]) then begin
  Taskslbl[5].Font.Color:= $00FF00;
  Taskslbl[4].Font.Color:= $FDB900;
  end else begin
  Taskslbl[5].Font.Color:= $00FFFF;
  Taskslbl[4].Font.Color:= $00FFFF;
  end;
  end;
// Чекбокс Visual 2010
//=============================================================
  Button[8]: begin
if BtnGetChecked(Button[8]) then begin
  Taskslbl[6].Font.Color:= $00FF00;
  Taskslbl[4].Font.Color:= $FDB900;
  end else begin
  Taskslbl[6].Font.Color:= $00FFFF;
  Taskslbl[4].Font.Color:= $00FFFF;
  end;
  end;
// Чекбокс Visual 2013
//=============================================================
  Button[9]: begin
if BtnGetChecked(Button[9]) then begin
  Taskslbl[7].Font.Color:= $00FF00;
  Taskslbl[4].Font.Color:= $FDB900;
  end else begin
  Taskslbl[7].Font.Color:= $00FFFF;
  Taskslbl[4].Font.Color:= $00FFFF;
  end;
  end;
// Чекбокс Visual 2019
//=============================================================
  Button[10]: begin
if BtnGetChecked(Button[10]) then begin
  Taskslbl[8].Font.Color:= $00FF00;
  Taskslbl[4].Font.Color:= $FDB900;
  end else begin
  Taskslbl[8].Font.Color:= $00FFFF;
  Taskslbl[4].Font.Color:= $00FFFF;
  end;
  end;
// Чекбокс Слайдшоу
//=============================================================
  Button[11]: begin
if BtnGetChecked(Button[11]) then SlideShowForm.Show else SlideShowForm.Hide;
  end;
// Чекбокс запуска игры
//=============================================================
  Button[12]: begin
if BtnGetChecked(Button[12]) then Finishlbl[2].Font.Color:= $00FF00 else Finishlbl[2].Font.Color:= $FDB900;
  end;
  end;
  BtnRefresh(hBtn);
end;
// Нажатие сообщения резервной копии 
//=============================================================
procedure BackupLabelClick(Sender: TObject);
begin
  BtnSetChecked(Button[3], not BtnGetChecked(Button[3]));
  ClickBtn(Button[3]);
end;
// Нажатие сообщения Не создавать папку в меню Пуск 
//=============================================================
procedure NoIconsLabelClick(Sender: TObject);
begin
  BtnSetChecked(Button[4], not BtnGetChecked(Button[4]));
  ClickBtn(Button[4]);
end;
// Нажатие сообщения ярлык игры на рабочий стол 
//=============================================================
procedure DesktopGameClick(Sender: TObject);
begin
  BtnSetChecked(Button[5], not BtnGetChecked(Button[5]));
  ClickBtn(Button[5]);
end;
// Нажатие сообщения ярлык в Панель задач 
//=============================================================
procedure TaskbarGameClick(Sender: TObject);
begin
  BtnSetChecked(Button[6], not BtnGetChecked(Button[6]));
  ClickBtn(Button[6]);
end;
// Нажатие сообщения установки DirectX
//=============================================================
procedure DirectXLabelClick(Sender: TObject);
begin
  BtnSetChecked(Button[7], not BtnGetChecked(Button[7]));
  ClickBtn(Button[7]);
end;
// Нажатие сообщения установки VisualC 10 
//=============================================================
procedure VisualcLabelClick10(Sender: TObject);
begin
  BtnSetChecked(Button[8], not BtnGetChecked(Button[8]));
  ClickBtn(Button[8]);
end;
// Нажатие сообщения установки VisualC 13 
//=============================================================
procedure VisualcLabelClick12(Sender: TObject);
begin
  BtnSetChecked(Button[9], not BtnGetChecked(Button[9]));
  ClickBtn(Button[9]);
end;
// Нажатие сообщения установки VisualC 13
//=============================================================
procedure VisualcLabelClick19(Sender: TObject);
begin
  BtnSetChecked(Button[10], not BtnGetChecked(Button[10]));
  ClickBtn(Button[10]);
end;
// Нажатие сообщения запуска игры 
//=============================================================
procedure PlayLabelClick(Sender: TObject);
begin
  BtnSetChecked(Button[12], not BtnGetChecked(Button[12]));
  ClickBtn(Button[12]);
end;
// Захват формы установки при перемещении
//=============================================================
procedure MessageFormOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(MessageForm.Handle, $0112, $F012, 0);  
end;
// Форма сообщений установки 
//=============================================================
procedure MyMessageBox();
begin
  MessageForm:= CreateCustomForm;
with MessageForm do begin
  ClientWidth:= ScaleX(500);
  ClientHeight:= ScaleY(160);
  BorderStyle:= bsNone;
  OnMouseDown:= @MessageFormOnMouseDown;
	Center;
  end;
// Заголовок сообщений
//=============================================================
  MsgStr:= TLabel.Create(nil);
with MsgStr do begin
  Parent:= MessageForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FFF0;
  Font.Size:= 9;
  SetBounds(ScaleX(50), ScaleY(15), ScaleX(430), ScaleY(85));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение об ошибке
//=============================================================
  MsgStr0:= TLabel.Create(nil);
with MsgStr0 do begin
  Parent:= MessageForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Font.Size:= 10;
  SetBounds(ScaleX(50), ScaleY(20), ScaleX(430), ScaleY(80));
  Transparent:= True;
  WordWrap:= True;
	end;
with TBevel.Create(nil) do begin
	Parent:= MessageForm;
  SetBounds(ScaleX(20), ScaleY(105), ScaleX(460), ScaleY(2));
  end;
// Сообщение о выполнении
//=============================================================
  MsgStr1:= TLabel.Create(nil);
with MsgStr1 do begin
  Parent:= MessageForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(110), ScaleX(480), ScaleY(35));
  Transparent:= True;
  WordWrap:= True;
  end;
  ImgLoad(MessageForm.Handle, 'fone.jpg', ScaleX(0), ScaleY(0), MessageForm.ClientWidth, MessageForm.ClientHeight, True, True);
#ifdef Glass
	SetWindowLong(MessageForm.Handle, GWL_EXSTYLE, GetWindowLong(MessageForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(MessageForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
end;
// Время прокрутки информации 
//=============================================================
procedure MyOnTimer(Sender: TObject);
begin
  InfoPanel.Top:= InfoPanel.Top-1;
if InfoPanel.Top = -InfoPanel.Height then InfoPanel.Top:= OuterPanel.Height;
if InfoPanel.Top = OuterPanel.Height-1 then begin
if Timer.Interval >= 0 then UTF_Button_Enabled('ButtonClose', False);
  Timer.Interval:= 3000
	end else begin
  Timer.Interval:= 15;
	UTF_Button_Enabled('ButtonClose', True);
	end;
end;
// Прокрутка информации 
//=============================================================
procedure InfoPanelOnMouseLeave(Sender: TObject);
begin
  Timer.Enabled:= True;
end;
// Остановка прокрутки информации 
//=============================================================
procedure InfoPanelOnMouseEnter(Sender: TObject);
begin
  Timer.Enabled:= False;
end;
// Нажатие на ссылку формы информации 
//=============================================================
procedure URLClick(Sender: TObject);
begin
  sndCheck(nil);  
  InfoForm.Free;
  ShellExec('open', '{#URL}store/', '', '', 5, ewNoWait, i);  
	Sleep(100);
  WizardForm.Show;
end;
// Нажатие на ссылку благодарности за поддержку 
//=============================================================
procedure URLClick1(Sender: TObject);
begin
  sndCheck(nil);  
  InfoForm.Free;
  ShellExec('open', 'https://money.yandex.ru/to/41001243332727', '', '', 5, ewNoWait, i);  
	Sleep(100);
  WizardForm.Show;
if IsWin6 then init_taskbar();
end;
// Захват формы установки при перемещении
//=============================================================
procedure InfoBtnFormOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(InfoForm.Handle, $0112, $F012, 0);  
end;
// Закрытие формы информации
//=============================================================
procedure InfoformClose(Sender: TObject; var Action: TCloseAction);
begin
  WizardForm.Show;
  InfoForm.Free;
end;
// Форма информации об игре 
//=============================================================
procedure InfoBtnClick(Sender: TObject);
begin
  WizardForm.Hide;
	sndCheck(nil);
  InfoForm:= CreateCustomForm;
with InfoForm do begin
  ClientWidth:= ScaleX(535);
  ClientHeight:= ScaleY(285);
  Caption:= CustomMessage(Lang+'AboutSetup');
  BorderStyle:= bsNone;
	OnShow:= @deinit_taskbar;
  OnMouseDown:= @InfoBtnFormOnMouseDown;
  OnClose:= @InfoformClose;
	Center;
	end;
// Заголовок Названия игры
//=============================================================
with TLabel.Create(nil) do begin
  Parent:= InfoForm;
	Alignment:= taCenter;
  Font.Color:= clBlue;
  Font.Name:= FontName;
  Font.Style:= [fsBold];
if IsWin64 then begin
  Font.Size:= 20;
  Caption:= ExpandConstant('{#Desktop64}')
	end else begin
  Font.Size := 14;  
  Caption:= ExpandConstant('{#Desktop}')
	end;
  SetBounds(ScaleX(185), ScaleY(8), ScaleX(345), ScaleY(30));
  Transparent:= True;
  end;
with TLabel.Create(nil) do begin
  Parent:= InfoForm;
	Alignment:= taCenter;
  Font.Color:= $00FF00;
  Font.Name:= FontName;
  Font.Style:= [fsBold];
if IsWin64 then begin
  Font.Size:= 20;
  Caption:= ExpandConstant('{#Desktop64}')
	end else begin
  Font.Size:= 14;
  Caption:= ExpandConstant('{#Desktop}')
	end;
  SetBounds(ScaleX(182), ScaleY(5), ScaleX(345), ScaleY(30));
  Transparent:= True;
  end;
// Заголовок Версии игры
//=============================================================
with TLabel.Create(nil) do begin
  Parent:= InfoForm;
	Alignment:= taCenter;
  Font.Size:= 11;
  Font.Color:= clBlue;
  Font.Style:= [fsBold];
  Font.Name:= FontName;
if IsWin64 then Caption:= 'v. ' + ExpandConstant('{#VERSION}') else
  Caption:= 'v. ' + ExpandConstant('{#VERSIONLE}');
  SetBounds(ScaleX(185), ScaleY(38), ScaleX(345), ScaleY(20));
  Transparent:= True;
  end;
with TLabel.Create(nil) do begin
  Parent:= InfoForm;
	Alignment:= taCenter;
  Font.Size:= 11;
  Font.Color:= $00FF00;
  Font.Style:= [fsBold];
  Font.Name:= FontName;
if IsWin64 then Caption:= 'v. ' + ExpandConstant('{#VERSION}') else Caption:= 'v. ' + ExpandConstant('{#VERSIONLE}');
  SetBounds(ScaleX(183), ScaleY(36), ScaleX(345), ScaleY(20));
  Transparent:= True;
  end;
// Панель сообщений
//=============================================================
  OuterPanel:= TPanel.Create(nil);
with OuterPanel do begin
  Parent:= InfoForm;
  BevelOuter:= bvNone;
  SetBounds(ScaleX(190), ScaleY(65), ScaleX(345), ScaleY(200));
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  end;
// Сообщения копирайта и автора сборки
//=============================================================
	OutLbl[0]:= TLabel.Create(nil)
with OutLbl[0] do begin
  Parent:= OuterPanel;
  Alignment:= taCenter;
if IsWin64 then begin
  Caption:= CustomMessage(Lang+'AboutCopy');
  Top:= ScaleY(10);
	end else begin  
  Caption:= CustomMessage(Lang+'AboutCopyle');
	Top:= ScaleY(25);
  end;
  Font.Size:= 9;
  Font.Color:= $FDB900;
  Font.Name:= FontName;
  Font.Style:= [fsBold];
  Width:= OuterPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
with TBevel.Create(nil) do begin
	Parent:= OuterPanel;
  SetBounds(ScaleX(30), OutLbl[0].Top+OutLbl[0].Height+ScaleY(10), ScaleX(285), ScaleY(2));
  end;
// Сообщение приобретения игры
//=============================================================
	OutLbl[1]:= TLabel.Create(nil)
with OutLbl[1] do begin
  Parent:= OuterPanel;
  Alignment:= taCenter;
  Caption:= CustomMessage(Lang+'AboutBuy');
  Cursor:= MyCursor;
  Font.Size := 9;
  Font.Color:= $00FF00;
  Font.Name:= FontName;
  Font.Style:= [fsBold];
  Top:= OutLbl[0].Top+OutLbl[0].Height+ScaleY(22);
  Width:= OuterPanel.Width;
  OnClick:= @URLClick;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Сообщение поддержки проекта
//=============================================================
	OutLbl[2]:= TLabel.Create(nil)
with OutLbl[2] do begin
  Parent:= OuterPanel;
  Alignment:= taCenter;
  Caption:= CustomMessage(Lang+'AboutTnk');
  Cursor:= MyCursor;
  Font.Size:= 10;
  Font.Color:= $00FF00
  Font.Name:= FontName;
  Font.Style:= [fsBold];
  Top:= OutLbl[1].Top+OutLbl[1].Height+ScaleY(10);
  Width:= OuterPanel.Width;
  OnClick:= @URLClick1;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Панель Вывода сообщений
//=============================================================
  InfoPanel:= TPanel.Create(nil);
with InfoPanel do begin
  Parent:= OuterPanel;
  Alignment:= taCenter;
  BevelOuter:= bvNone;
  Cursor:= crHourGlass;
	Color:= $241701;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  SetBounds(ScaleX(0), OuterPanel.Height+50, OuterPanel.Width, ScaleY(1800));
#ifdef UNICODE
  ParentBackground:= False;
#endif
  end;
// Сообщение состава игры
//=============================================================
	Infolbl[0]:= TLabel.Create(nil);
with Infolbl[0] do begin
  Parent:= InfoPanel;
  Alignment:= taCenter;
if IsWin64 then Caption:= CustomMessage(Lang+'About') else Caption:= CustomMessage(Lang+'AboutLE');
  Font.Size:= 10;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Top:= InfoPanel.Top-ScaleY(177);
  Width:= InfoPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Сообщение состава дополнений
//=============================================================
	Infolbl[1]:= TLabel.Create(nil);
with Infolbl[1] do begin
  Parent:= InfoPanel;
  Alignment:= taCenter;
if IsWin64 then Caption:= CustomMessage(Lang+'AboutAdd') else Caption:= CustomMessage(Lang+'AboutAddle');
  Font.Size:= 10;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Top:= Infolbl[0].Top+Infolbl[0].Height+ScaleY(70);
  Width:= InfoPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Сообщение состава игровых наборов
//=============================================================
	Infolbl[2]:= TLabel.Create(nil);
with Infolbl[2] do begin
  Parent:= InfoPanel;
  Alignment:= taCenter;
if IsWin64 then Caption:= CustomMessage(Lang+'AboutPack') else Caption:= CustomMessage(Lang+'AboutPackle');
  Font.Size:= 10;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Top:= Infolbl[1].Top+Infolbl[1].Height+ScaleY(70);
  Width:= InfoPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Сообщение состава каталогов игры
//=============================================================
	Infolbl[3]:= TLabel.Create(nil);
with Infolbl[3] do begin
  Parent:= InfoPanel;
  Alignment:= taCenter;
if IsWin64 then Caption:= CustomMessage(Lang+'AboutStuf') else Caption:= CustomMessage(Lang+'AboutStufle');
  Font.Size:= 10;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Top:= Infolbl[2].Top+Infolbl[2].Height+ScaleY(70);
  Width:= InfoPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Сообщение состава комплектов игры
//=============================================================
if IsWin64 Then begin
	Infolbl[4]:= TLabel.Create(nil);
with Infolbl[4] do begin
  Parent:= InfoPanel;
  Alignment:= taCenter;
  Caption:= CustomMessage(Lang+'AboutKits');
  Font.Size:= 10;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Top:= Infolbl[3].Top+Infolbl[3].Height+ScaleY(70);
  Width:= InfoPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Сообщение Экспресс=доставки игры
//=============================================================
	Infolbl[5]:= TLabel.Create(nil);
with Infolbl[5] do begin
  Parent:= InfoPanel;
  Alignment:= taCenter;
  Caption:= CustomMessage(Lang+'AboutCont');
  Font.Size:= 10;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Top:= Infolbl[4].Top+Infolbl[4].Height+ScaleY(70);
  Width:= InfoPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
  end;
// Сообщение о благодарности за проект
//=============================================================
	Infolbl[6]:= TLabel.Create(nil);
with Infolbl[6] do begin
  Parent:= InfoPanel;
  Alignment:= taCenter;
  Caption:= '* * *'+#13#10+CustomMessage(Lang+'Thanks')+#13#10+#13#10+'* * *';
  Font.Size:= 10;
  Font.Color:= $00FF00;
if IsWin64 then Top:= Infolbl[5].Top+Infolbl[5].Height+ScaleY(200) else
  Top:= Infolbl[3].Top+Infolbl[3].Height+ScaleY(200);
  Width:= InfoPanel.Width;
  OnMouseEnter:= @InfoPanelOnMouseEnter;
  OnMouseLeave:= @InfoPanelOnMouseLeave;
  Transparent:= True;
  end;
// Таймер прокрутки текста сообщения
//=============================================================
  Timer:= TTimer.Create(InfoPanel);
with Timer do OnTimer:= @MyOnTimer;
// Подключение изображений
//=============================================================
  ImgLoad(OuterPanel.Handle, 'fone.jpg', ScaleX(-185), ScaleY(-60), InfoForm.Width, InfoForm.Height, True, True);
  ImgLoad(InfoPanel.Handle, 'coin_base.png', ScaleX(138), InfoPanel.Top-ScaleY(230), ScaleX(62), ScaleY(34), True, False);
  ImgLoad(InfoPanel.Handle, 'coin_ep.png', ScaleX(138), Infolbl[0].Top+Infolbl[0].Height+ScaleY(20), ScaleX(62), ScaleY(34), True, False);
  ImgLoad(InfoPanel.Handle, 'coin_gp.png', ScaleX(138), Infolbl[1].Top+Infolbl[1].Height+ScaleY(20), ScaleX(62), ScaleY(34), True, False);
  ImgLoad(InfoPanel.Handle, 'coin_sp.png', ScaleX(138), Infolbl[2].Top+Infolbl[2].Height+ScaleY(20), ScaleX(62), ScaleY(34), True, False);
if IsWin64 then begin
  ImgLoad(InfoPanel.Handle, 'coin_spp.png', ScaleX(152), Infolbl[3].Top+Infolbl[3].Height+ScaleY(20), ScaleX(34), ScaleY(34), True, False);
  ImgLoad(InfoPanel.Handle, 'coin_cont.png', ScaleX(156), Infolbl[4].Top+Infolbl[4].Height+ScaleY(20), ScaleX(25), ScaleY(34), True, False);
  end;
  ImgLoad(InfoForm.Handle, 'fone.jpg', ScaleX(0), ScaleY(0), InfoForm.Width, InfoForm.Height, True, True);  
if IsWin64 then ImgLoad(InfoForm.Handle, 'page.png', ScaleX(55), ScaleY(15), ScaleX(101), ScaleY(270), True, True) else
  ImgLoad(InfoForm.Handle, 'page1.png', ScaleX(0), ScaleY(15), ScaleX(199), ScaleY(270), True, True);
  UTF_Button_Create('ButtonURL', InfoForm, 'button_blv.png', 35, 285, 130, 15, 'FontName', 8, [], ExpandConstant('{#Autor}'), $808080, $FDB900, $A09E9E, $808080, MyCursor);
  UTF_Button_Create('ButtonClose', InfoForm, 'button.png', 316, 273, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'Close'), {#BtnFontColor3}, MyCursor);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), InfoForm.Caption);
#ifdef Glass
if isWin10 then
	SetWindowLong(InfoForm.Handle, GWL_EXSTYLE, GetWindowLong(InfoForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW)  else
	SetWindowLong(InfoForm.Handle, GWL_EXSTYLE, GetWindowLong(InfoForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(InfoForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
 	Sleep(10);
  InfoForm.Show;
if Timer.Interval <> 0 then UTF_Button_Enabled('ButtonClose', False);
end;
// Захват формы установки при перемещении
//=============================================================
procedure ExitFormOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(ExitForm.Handle, $0112, $F012, 0);  
end;
// Форма выхода из установки
//=============================================================
procedure ExitMessage();
begin
  WizardForm.Hide;  
  ExitForm:= CreateCustomForm;
with ExitForm do begin
  ClientWidth:= ScaleX(500);
  ClientHeight:= ScaleY(165);
	Caption:= SetupMessage(msgExitSetupTitle);
  BorderStyle:= bsNone;
	OnShow:= @deinit_taskbar;
  OnMouseDown:= @ExitFormOnMouseDown;
	Center;
	end;
// Значок сообщения
//=============================================================
with TNewIconImage.Create(nil) do begin
  Icon.LoadFromResourceName(HInstance, '_IS_ICON4');
  Parent:= ExitForm;
  Left:= ScaleX(8);
  Top:= ScaleY(12);
  AutoSize:= True;
  end;
// Заголовок сообщения
//=============================================================
  MsgStr:= TLabel.Create(nil);
with MsgStr do begin
  Parent:= ExitForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'ExitSetupMessage');
  Font.Name:= FontName;
  Font.Color:= $00FFF0;
  Font.Size:= 9;
  SetBounds(ScaleX(20), ScaleY(15), ScaleX(480), ScaleY(80));
  Transparent:= True;
  WordWrap:= True;
  end;
with TBevel.Create(nil) do begin
	Parent:= ExitForm;
  SetBounds(ScaleX(20), ScaleY(100), ScaleX(460), ScaleY(2));
  end;
// Сообщение о выходе из установки
//=============================================================
  MsgStr1:= TLabel.Create(nil);
with MsgStr1 do begin
  Parent:= ExitForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'Message1');
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(20), ScaleY(110), ScaleX(460), ScaleY(35));
  Transparent:= True;
  WordWrap:= True;
  end;
  SetTimer(ExitForm.Handle, 2, 1000, CallbackAddr('MessageFlashing'));
  AddLabelToArray(Flash, MsgStr);
  ImgLoad(ExitForm.Handle, 'fone.jpg', ScaleX(0), ScaleY(0), ExitForm.ClientWidth, ExitForm.ClientHeight, True, True);
  UTF_Button_Create('ButtonYes', ExitForm, 'button.png', 295, 155, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor2}, MyCursor);
  UTF_Button_Create('ButtonNo', ExitForm, 'button.png', 390, 155, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonNo'), {#BtnFontColor3}, MyCursor);
#ifdef Glass
if isWin10 then
	SetWindowLong(ExitForm.Handle, GWL_EXSTYLE, GetWindowLong(ExitForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW)  else
	SetWindowLong(ExitForm.Handle, GWL_EXSTYLE, GetWindowLong(ExitForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(ExitForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
end;
// Строка выбора директории установки 
//=============================================================
procedure DirFolderChange(Sender: TObject);
begin
if TFolderTreeView(Sender).Directory <> DefInsPath then DirEdit.Text:= AddBackslash(TFolderTreeView(Sender).Directory)+ExpandConstant('{#Group64}') else
  DirEdit.Text:= TFolderTreeView(Sender).Directory;
end;
// Захват формы установки при перемещении
//=============================================================
procedure DirBrowseFormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(DirBrowseForm.Handle, $0112, $F012, 0);  
end;
// Форма места установки игры 
//=============================================================
procedure BrowseClick(Sender: TObject);
begin
  WizardForm.Hide;  
  DefInsPath:= ExpandConstant('{#Dir}');
  DirBrowseForm:= TForm.Create(nil);
with DirBrowseForm do begin
  Height:= ScaleY(410);
  Width:= ScaleX(290);
	Caption:= CustomMessage(Lang+'ButtonWizardBrowse');
  BorderStyle:= bsNone;
	Color:= $241701;
  Position:= poScreenCenter;
	OnShow:= @deinit_taskbar;
  OnMouseDown:= @DirBrowseFormMouseDown;
  end;
// Панель выбора директории
//=============================================================
  DirTreeView:= TFolderTreeView.Create(nil);
with DirTreeView do begin
  Parent:= DirBrowseForm;
  OnChange:= @DirFolderChange;
  Cursor:= MyCursor;
  SetBounds(ScaleX(6), ScaleY(37), ScaleX(277), ScaleY(290));
  end;
// Сообщение выбора диретории
//=============================================================
  DirEdit:= TEdit.Create(nil);
with DirEdit do begin
  Parent:= DirBrowseForm;
  Text:= DirTreeView.Directory;
  Font.Name:= FontName;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(6), ScaleY(10), ScaleX(277), ScaleY(20));
  end;
  DirBrowseForm.ActiveControl := DirTreeView;
// Заголовок выбора директории
//=============================================================
  MsgStr:= TLabel.Create(nil)
with MsgStr do begin
  Parent:= DirBrowseForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'BrowseDialogLabel');
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(5), ScaleY(335), ScaleX(280), ScaleY(30));
  Transparent:= True;
  WordWrap:= True;
  end;
  UTF_Button_Create('YesDirFolder', DirBrowseForm, 'button.png', 55, 375, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('NoDirFolder', DirBrowseForm, 'button.png', 150, 375, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonCancel'), {#BtnFontColor1}, MyCursor);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), DirBrowseForm.Caption);
#ifdef Glass
if isWin10 then
	SetWindowLong(DirBrowseForm.Handle, GWL_EXSTYLE, GetWindowLong(DirBrowseForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW)  else
	SetWindowLong(DirBrowseForm.Handle, GWL_EXSTYLE, GetWindowLong(DirBrowseForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(DirBrowseForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
  DirTreeView.ChangeDirectory(AddBackslash(DefInsPath), True);
if DirBrowseForm.ShowModal = mrYes then
if DirEdit.Text <> WizardForm.DirEdit.Text then WizardForm.DirEdit.Text:= DirEdit.Text else
	WizardForm.DirEdit.Text:= DefInsPath;
  DirBrowseForm.Close;  
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
  WizardForm.Show;
if IsWin6 then init_taskbar();
end;
// Строка выбора папки меню Пуск 
//=============================================================
procedure GroupFolderChange(Sender: TObject);
begin
if GroupTreeView.Directory <> DefGrPath then GroupEdit.Text:= AddBackslash(GroupTreeView.Directory)+DefGrPath else
	GroupEdit.Text:= GroupTreeView.Directory;
end;
// Изменение папки в меню Пуск 
//=============================================================
procedure GroupChange(Sender: TObject);
begin
if WizardForm.GroupEdit.Text <> ExpandConstant('{#DefGr}') then Selectlbl[8].Caption:= WizardForm.GroupEdit.Text else
  Selectlbl[8].Caption:= ExpandConstant('{#DefGr}');
end;
// Захват формы установки при перемещении
//=============================================================
procedure GroupBrowseFormMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(GroupBrowseForm.Handle, $0112, $F012, 0);  
end;
// Форма места создания ярлыков меню Пуск
//=============================================================
procedure GroupClick(Sender: TObject);
begin
  WizardForm.Hide;
  DefGrPath:= ExpandConstant('{#DefGr}');
  GroupBrowseForm:= TForm.Create(nil);
with GroupBrowseForm do begin
  Height:= ScaleY(410);
  Width:= ScaleX(290);
  Caption:= CustomMessage(Lang+'ButtonWizardBrowse');
  BorderStyle:= bsNone;
	Color:= $241701;
  Position:= poScreenCenter;
	OnShow:= @deinit_taskbar;
  OnMouseDown:= @GroupBrowseFormMouseDown;
  end;
// Заголовок выбора Папки в Меню Пуск
//=============================================================
  GroupEdit:= TNewEdit.Create(nil);
with GroupEdit do begin
  Parent:= GroupBrowseForm;
  Font.Name:= FontName;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(6), ScaleY(10), ScaleX(277), ScaleY(20));
  end;
// Панель выбора Меню Пуск
//=============================================================
  GroupTreeView:= TStartMenuFolderTreeView.Create(nil);
with GroupTreeView do begin
  Parent:= GroupBrowseForm;
  Cursor:= MyCursor;
  OnChange:= @GroupFolderChange;
  SetPaths(ExpandConstant('{userprograms}'), ExpandConstant('{commonprograms}'), ExpandConstant('{userstartup}'), ExpandConstant('{commonstartup}'));
  SetBounds(ScaleX(6), ScaleY(37), ScaleX(277), ScaleY(290));
  end;
  GroupBrowseForm.ActiveControl := GroupTreeView;
// Сообщение выбора Меню Пуск
//=============================================================
  MsgStr:= TLabel.Create(nil);
with MsgStr do begin
  Parent:= GroupBrowseForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'BrowseDialogLabel');
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Style:= [fsBold]
  SetBounds(ScaleX(5), ScaleY(335), ScaleX(280), ScaleY(30));
  Transparent:= True;
  WordWrap:= True;
  end;
  UTF_Button_Create('YesGroupFolder', GroupBrowseForm, 'button.png', 55, 375, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('NoGroupFolder', GroupBrowseForm, 'button.png', 150, 375, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonCancel'), {#BtnFontColor1}, MyCursor);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), GroupBrowseForm.Caption);
#ifdef Glass
if isWin10 then
	SetWindowLong(GroupBrowseForm.Handle, GWL_EXSTYLE, GetWindowLong(GroupBrowseForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW) else
	SetWindowLong(GroupBrowseForm.Handle, GWL_EXSTYLE, GetWindowLong(GroupBrowseForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(GroupBrowseForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
  GroupTreeView.ChangeDirectory(AddBackslash(DefGrPath), True);
if GroupBrowseForm.ShowModal = mrYes then WizardForm.GroupEdit.Text:= GroupEdit.Text else
	WizardForm.GroupEdit.Text:= DefGrPath;
  GroupBrowseForm.Close;
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
  WizardForm.Show;
if IsWin6 then init_taskbar();
end;
// Перевод чисел Мб <=> Гб 
//=============================================================
function MbOrGB(Float: Extended): String;
begin
if Float/1024 < 1024 then Result:= Format('%.2n'+CustomMessage(Lang+'Mb'), [Float/1024]) else
	Result:= Format('%.2n'+CustomMessage(Lang+'Gb'), [Float/oneMB]);
  StringChange(Result, ', ', '.');
end;
// Отображение размера копируемых файлов 
//=============================================================
function mCallback(what: PAnsiChar; int1: Longint; str: PAnsiChar): Boolean;
begin
	Result:= True;
if (string(what) = 'allsize') then AllSize:= int1;
if (string(what) = 'filename') then FileInfoLabel.Caption:= MinimizePathName(str, FileInfoLabel.Font, FileInfoLabel.Width);
if (string(what) = 'write') then begin
	CopyInfoLabel.Caption:= CustomMessage(Lang+'Backup1')+' '+MbOrGB(int1)+CustomMessage(Lang+'Backup2')+' '+MbOrGB(AllSize);
	ProgressBar.Position:= Round(int1);
	ProgressBar.Max:= AllSize;
	end;
	Application.ProcessMessages;
end;
// Форма копирования файлов сохранения игры
//=============================================================
procedure CreateBackup();
begin
	ExtractTemporaryFile('iscopy.dll');
  BackForm:= CreateCustomForm;
with BackForm do begin
  ClientWidth:= ScaleX(400);
  ClientHeight:= ScaleY(75);
  Left:= GetSystemMetrics(16)-ClientWidth-ScaleX(10);
  Top:= GetSystemMetrics(17)-ClientHeight-ScaleY(15);
  Caption:= CustomMessage(Lang+'Backup');
  BorderStyle:= bsNone;
	OnShow:= @deinit_taskbar;
  end;
// Заголовок сообщения о копировании
//=============================================================
with TLabel.Create(nil) do begin
  Parent:= BackForm;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'Backup3')
  Font.Color:= $FDB900;
  Font.Name:= FontName;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(10), ScaleX(380), ScaleY(17));
  Transparent:= True;
  end;
// Информация о копируемом файле
//=============================================================
  FileInfoLabel:= TLabel.Create(nil);
with FileInfoLabel do begin
  Parent:= BackForm;
  AutoSize:= False;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Font.Size:= 10;
  SetBounds(ScaleX(10), ScaleY(30), ScaleX(380), ScaleY(17));
  Transparent:= True;
  end;
// Прогрессбар копирования
//=============================================================
  ProgressBar:= TNewProgressBar.Create(nil);
with ProgressBar do begin
  Parent:= BackForm;
  SetBounds(ScaleX(10), ScaleY(55), ScaleX(380), ScaleY(12));
  end;
// Сообщение копирования файлов
//=============================================================
	CopyInfoLabel:= TLabel.Create(nil);
with CopyInfoLabel do begin
  Parent:= BackForm;
  AutoSize:= False;
  Alignment:= taCenter;
  Font.Color:= $00FF00;
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(75), ScaleX(380), ScaleY(15));
  Transparent:= True;
  end;
  ImgLoad(BackForm.Handle, 'fone.jpg', ScaleX(0), ScaleY(0), BackForm.ClientWidth, BackForm.ClientHeight, True, True);
#ifdef Glass
if isWin10 then
	SetWindowLong(BackForm.Handle, GWL_EXSTYLE, GetWindowLong(BackForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW) else
	SetWindowLong(BackForm.Handle, GWL_EXSTYLE, GetWindowLong(BackForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(BackForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
  BackForm.Show;
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), BackForm.Caption);
	Sleep(1);
	callback:= CallbackAddr('mCallback');
	repeat
// Копирование Папок и Файлов Игры 
//=============================================================
if DirExists(ExpandConstant('{#SAVES}\{#Group64}')) then begin
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\content\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\content\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\Mods\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\Mods\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\onlinethumbnailcache\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\onlinethumbnailcache\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\saves\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\saves\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\Tray\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\Tray\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\{#ScreenShot}\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\{#ScreenShot}\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\{#VideoName}\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\{#VideoName}\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\Config.log'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\'), False) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\Options.ini'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\'), False) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group64}\UserSetting.ini'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group64}_Backup'))+{#DATE}+'\'), False) <> 1 then break;
	end;
if DirExists(ExpandConstant('{#SAVES}\{#Group}')) then begin
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\Mods\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\Mods\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\saves\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\saves\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\Tray\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\Tray\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\{#ScreenShot}\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\{#ScreenShot}\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\{#VideoName}\*'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\{#VideoName}\'), True) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\Config.log'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\'), False) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\Options.ini'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\'), False) <> 1 then break;
if isCopyFile(callback, ExpandConstant('{#SAVES}\{#Group}\UserSetting.ini'), ExpandConstant(AddBackslash(ExpandConstant('{#SAVES}\{#Group}_Backup'))+{#DATE}+'\'), False) <> 1 then break;
	end;
	until True;
  UnloadDLL(ExpandConstant('{tmp}\iscopy.dll'));
	DeleteFile(ExpandConstant('{tmp}\iscopy.dll'));
  BackForm.Free;
end;
// Закрытие формы и удаление файлов распаковки 
//=============================================================
procedure HideControls();
begin
	WizardForm.Left:= -10000;
  ISDonePB.Hide;
for i:= 0 to 5 do ISDoneLbl[i].Hide;
  ISDoneBvl.Hide;  
#ifdef xtool
  UnloadDLL(ExpandConstant('{tmp}\zlibwapi.dll'));
	DeleteFile(ExpandConstant('{tmp}\zlibwapi.dll'));
	DeleteFile(ExpandConstant('{tmp}\xtool.exe'));
	DeleteFile(ExpandConstant('{tmp}\fazip.exe'));
#else
	DeleteFile(ExpandConstant('{tmp}\7z.dll'));
	DeleteFile(ExpandConstant('{tmp}\7z.exe'));
	DeleteFile(ExpandConstant('{tmp}\prsb.exe'));
#endif
	DeleteFile(ExpandConstant('{tmp}\arc.ini'));
	mciSendString('close MP3', '', 0, 0);
	DeleteFile(ExpandConstant('{tmp}\music.mp3'));
  UnloadDLL(ExpandConstant('{tmp}\cls-srep.dll'));
  UnloadDLL(ExpandConstant('{tmp}\isdone.dll'));
  UnloadDLL(ExpandConstant('{tmp}\unarc.dll'));
	DeleteFile(ExpandConstant('{tmp}\cls-srep.dll'));
	DeleteFile(ExpandConstant('{tmp}\isdone.dll'));
	DeleteFile(ExpandConstant('{tmp}\unarc.dll'));
  DeleteFile(ExpandConstant('{tmp}\{#IniLang}'));
#ifdef records
	DeleteFile(ExpandConstant('{tmp}\data.inf'));
#else
#ifdef Controler
	RenameFile(ExpandConstant('{src}\data.inf'), ExpandConstant('{src}\proba.inf'))
  MoveFiles(ExpandConstant('{src}'), ExpandConstant('{#ToDir}'), 'proba.inf');
#else
#ifdef Components
	RenameFile(ExpandConstant('{src}\data.inf'), ExpandConstant('{src}\data_x64.inf'))
  MoveFiles(ExpandConstant('{src}'), ExpandConstant('{#ToDir}'), 'data_x64.inf');
#else
  MoveFiles(ExpandConstant('{src}'), ExpandConstant('{#ToDir}'), 'data.inf');
#endif  
#endif
#endif
  DelDir(ExpandConstant('{app}\temp'), False);
end;
// Создание формы распаковки архивов игры
//=============================================================
procedure CreateControls();
begin
// Извдечение и подключение файлов распаковки
//=============================================================
	ExtractTemporaryFile('cls-srep.dll');
	ExtractTemporaryFile('isdone.dll');
	ExtractTemporaryFile('unarc.dll');
  ExtractTemporaryFile(ExpandConstant('{#IniLang}'));
#ifdef xtool
	ExtractTemporaryFile('zlibwapi.dll');
	ExtractTemporaryFile('xtool.exe');
	ExtractTemporaryFile('fazip.exe');
  SaveStringToFile(ExpandConstant('{tmp}\arc.ini'), '[External compressor:lzma, 4x4]'+#13#10+'header = 0'+#13#10+'unpackcmd = FaZip.exe decompress:{compressor}{:option} <stdin> <stdout>'+#13#10+#13#10+'[External compressor:xtool]'+#13#10+'header = 0'+#13#10+'unpackcmd = xtool.exe decode -t100p - - <stdin> <stdout>'+#13#10, True);
#else
if IsWin64 then begin
	ExtractTemporaryFile('7z_64.dll');                                                                                              
	ExtractTemporaryFile('7z_64.exe');                                                                                              
	ExtractTemporaryFile('prsb_64.exe');
  RenameFile(ExpandConstant('{tmp}\7z_64.dll'), ExpandConstant('{tmp}\7z.dll'));
  RenameFile(ExpandConstant('{tmp}\7z_64.exe'), ExpandConstant('{tmp}\7z.exe'));
  RenameFile(ExpandConstant('{tmp}\prsb_64.exe'), ExpandConstant('{tmp}\prsb.exe'));
	end else begin
	ExtractTemporaryFile('7z.dll');                                                                                              
	ExtractTemporaryFile('7z.exe');                                                                                              
	ExtractTemporaryFile('prsb.exe');
	end;
  SaveStringToFile(ExpandConstant('{tmp}\arc.ini'), '[External compressor:7za]'+#13#10+'header = 0'+#13#10+'unpackcmd = 7z.exe x -txz -an -y -si -so <stdin> <stdout>'+#13#10+#13#10+'[External compressor:prsb]'+#13#10+'header = 0'+#13#10+'unpackcmd = prsb.exe d -t75p - -o - <stdin> <stdout>'+#13#10, True);
#endif
	SetFileAttributes(ExpandConstant('{tmp}\arc.ini'), FILE_ATTRIBUTE_HIDDEN);
#ifdef records
#ifdef Controler
  SaveStringToFile(ExpandConstant('{tmp}\data.inf'), '{#Game1}', True);
#else
#ifdef Components
if IsWin64 then begin
	ExtractTemporaryFile('data_x64.inf');
  RenameFile(ExpandConstant('{tmp}\data_x64.inf'), ExpandConstant('{tmp}\data.inf'));
  end else
	ExtractTemporaryFile('data.inf');
#else
if not GameUpdate then begin
if IsWin64 then SaveStringToFile(ExpandConstant('{tmp}\data.inf'), '{#Game8}', True) else
  SaveStringToFile(ExpandConstant('{tmp}\data.inf'), '{#Game7}', True); 
	end else begin
if IsWin64 then SaveStringToFile(ExpandConstant('{tmp}\data.inf'), '{#Game2}', True) else
  SaveStringToFile(ExpandConstant('{tmp}\data.inf'), '{#Game1}', True);  
	end;
#endif
#endif
	SetFileAttributes(ExpandConstant('{tmp}\data.inf'), FILE_ATTRIBUTE_HIDDEN);
#endif
// Прогрессбар установки
//=============================================================
  ISDonePB:= TNewProgressBar.Create(nil);
with ISDonePB do begin
  Parent:= WizardForm;
  Max:= 1000;
  Min:= 0;
  SetBounds(ScaleX(10), ScaleY(68), ScaleX(380), ScaleY(12));
  end;
// Сообщение оставшегося времени
//=============================================================
  ISDoneLbl[0]:= TLabel.Create(nil);
with ISDoneLbl[0] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $EBEE0D;
  Font.Size:= 11;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(5), ScaleX(300), ScaleY(18));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение текущего времени установки
//=============================================================
  ISDoneLbl[1]:= TLabel.Create(nil);
with ISDoneLbl[1] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  SetBounds(ScaleX(10), ScaleY(25), ScaleX(300), ScaleY(15));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение времени установки
//=============================================================
  ISDoneLbl[2]:= TLabel.Create(nil);
with ISDoneLbl[2] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Alignment:= taCenter;
  Font.Name:= FontName;
  Font.Color:= $EBEE0D;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  Transparent:= True;
  WordWrap:= True;
  Hide;
  end;
// Сообщение устанавливаемого файла
//=============================================================
  ISDoneLbl[3]:= TLabel.Create(nil);
with ISDoneLbl[3] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  SetBounds(ScaleX(10), ScaleY(48), ScaleX(380), ScaleY(15));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение процента установки
//=============================================================
  ISDoneLbl[4]:= TLabel.Create(nil);
with ISDoneLbl[4] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $EBEE0D;
  Font.Size:= 22;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(290), ScaleY(6), ScaleX(110), ScaleY(30));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение об отмене установки
//=============================================================
	ISDoneLbl[5]:= TLabel.Create(nil);
with ISDoneLbl[5] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(0), ScaleY(87), ScaleX(400), ScaleY(15));
  Transparent:= True;
  WordWrap:= True;
	end;
  ISDoneBvl:= TBevel.Create(nil)
with ISDoneBvl do begin
  Parent:= WizardForm;
  SetBounds(ScaleX(10), ScaleY(108), ScaleX(380), ScaleY(2));
	end;
  UTF_Button_Create('ButtonCancel', WizardForm, 'button.png', 300, 115, 90, 25, 'Tahoma', 9, [], CustomMessage(Lang+'ButtonCancel'), {#BtnFontColor1}, MyCursor);
if RegKeyExists(HKLM, '{#Maxis}\The Sims 4') then begin
	ISDoneLbl[5].Font.Color:= $808080;
	UTF_Button_Enabled('ButtonCancel', False);	
	end;
  BtnSetPosition(Button[0], ScaleX(132), ScaleY(114), ScaleX(120), ScaleY(30));
  BtnSetText(Button[0], '{#Copyright}'+#10'{#Autor}');
  BtnSetPosition(Button[1], ScaleX(43), ScaleY(118), ScaleX(20), ScaleY(20));
end;
// Прогресс выполнения распаковки игры 
//=============================================================
function ProgressCallback(OveralPct, CurrentPct: Integer; CurrentFile, TimeStr1, TimeStr2, TimeStr3: PAnsiChar): longword;
begin
if OveralPct <= 1000 then ISDonePB.Position:= OveralPct;
  ISDoneLbl[0].Caption:= CustomMessage(Lang+'RemainingTime')+' '+TimeStr1;
  ISDoneLbl[1].Caption:= CustomMessage(Lang+'EllipsedTime')+' '+TimeStr2;
  ISDoneLbl[2].Caption:= CustomMessage(Lang+'AllEllipsedTime')+' '+TimeStr3;
  ISDoneLbl[3].Caption:= MinimizePathName(ExpandConstant('{app}\')+CurrentFile, ISDoneLbl[3].Font, ISDoneLbl[3].Width);
  ISDoneLbl[4].Caption:= IntToStr(OveralPct div 10)+'.'+chr(48+OveralPct mod 10)+'%';
	ISDoneLbl[5].Caption:= CustomMessage(Lang+'Cancel');
  Result:= ISDoneCancel;
end;
// Захват формы установки при перемещении
//=============================================================
procedure RedistFormOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(RedistForm.Handle, $0112, $F012, 0);  
end;
// Форма сообщений установки 
//=============================================================
procedure RedistMessageBox();
begin
  RedistForm:= CreateCustomForm;
with RedistForm do begin
  ClientWidth:= ScaleX(400);
  ClientHeight:= ScaleY(110);
  Left:= GetSystemMetrics(16)-ClientWidth-ScaleX(5);
  Top:= GetSystemMetrics(17)-ClientHeight+ScaleY(17);
  BorderStyle:= bsNone;
	OnShow:= @deinit_taskbar;
  OnMouseDown:= @RedistFormOnMouseDown;
	Show;
  end;
// Заголовок сообщений
//=============================================================
  MsgStr:= TLabel.Create(nil);
with MsgStr do begin
  Parent:= RedistForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'RedistTitle')+#13#10+CustomMessage(Lang+'RedistProgress');
  Font.Name:= FontName;
  Font.Color:= $EBEE0D;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(15), ScaleX(380), ScaleY(35));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение об ошибке
//=============================================================
  MsgStr0:= TLabel.Create(nil);
with MsgStr0 do begin
  Parent:= RedistForm;
  AutoSize:= False;
  Font.Color:= $C0C0C0;
  Font.Name:= FontName;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(53), ScaleX(380), ScaleY(17));
  Transparent:= True;
  WordWrap:= True;
	end;
with TBevel.Create(nil) do begin
	Parent:= RedistForm;
  SetBounds(ScaleX(10), ScaleY(73), ScaleX(380), ScaleY(2));
  end;
// Сообщение о выполнении
//=============================================================
  MsgStr1:= TLabel.Create(nil);
with MsgStr1 do begin
  Parent:= RedistForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'RedistWait');
  Font.Name:= FontName;
  Font.Color:= $00FFF0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(83), ScaleX(380), ScaleY(17));
  Transparent:= True;
  WordWrap:= True;
  end;
  ImgLoad(RedistForm.Handle, 'fone.jpg', ScaleX(0), ScaleY(0), RedistForm.ClientWidth, RedistForm.ClientHeight, True, True);
#ifdef Glass
	SetWindowLong(RedistForm.Handle, GWL_EXSTYLE, GetWindowLong(RedistForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(RedistForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
end;
// Форматирование времени установки 
//=============================================================
function LongintToStringTime(t: Longint): String;
begin
  h:= t div 3600;
  t:= t-h*3600;
  m:= t div 60;
  s:= t-m*60;
  Result:= '';
if h > 0 then Result:= ''+IntToStr(h)+CustomMessage(Lang+'Hour')+' ';
if (m > 0) or (h > 0) then Result:= ''+IntToStr(m)+CustomMessage(Lang+'Min')+' ';
if (m > 0) or (h > 0) or (s > 0) then Result:= ''+IntToStr(s)+CustomMessage(Lang+'Sec');
end;
// Прогресс завершения установки игры 
//=============================================================
function PBProc(h: hWnd; Msg, wParam, lParam: Longint): Longint;
begin
if (Msg = $402) and (WizardForm.ProgressGauge.Position > WizardForm.ProgressGauge.Min) then begin
  pp:= WizardForm.ProgressGauge.Position-WizardForm.ProgressGauge.Min;
  pm:= WizardForm.ProgressGauge.Max-WizardForm.ProgressGauge.Min;
  tc:= GetTickCount;
  pr:= pp*100/pm;
  p:= Format('  %.1f%%', [pr]);
  w:= ScaleX(Round(380*pr)/100);
if (tc-eTime) >= 1000 then begin
  dt:= (tc-sTime)/1000;
  at:= pm*dt/pp;
  Images[0]:= Round(at-dt);
  TimeRight:= LongintToStringTime(Round(dt));
  TimeLeft:= LongintToStringTime(Images[0]);
  eTime:= tc;
  end;
  Sleep(4);
// Сообщение завершения установки
//=============================================================
  Installbl[2].Caption:= MinimizePathName(WizardForm.FilenameLabel.Caption, Installbl[2].Font, Installbl[2].Width);
  ImgSetPosition(Images[3], ScaleX(10), ScaleY(90), w, ScaleY(12));
  ImgSetVisibility(Images[3], True);  
	ImgApplyChanges(WizardForm.Handle);
if Length(TimeLeft) > 0 then begin
  Installbl[0].Caption:= p;
  Installbl[1].Caption:= CustomMessage(Lang+'Remains')+' '+TimeLeft;
  end;
  end;
  Result:= CallWindowProc(OldProc, h, Msg, wParam, lParam);
end;
// Формат Размера Компонентов
//=============================================================
#ifdef Components
function GetFloatFormText(const UndefText: String): Cardinal;
var
  ss: string;
begin
  for i:= 1 to Length(UndefText) do
  case UndefText[i] of
  '0','1','2','3','4','5','6','7','8','9': 
	ss:= ss + UndefText[i];
  end;
  Result:= StrToint(ss)/10;
end;
// Выбор Компонентов Установки
//=============================================================
procedure ComponentsListOnClickCheck(Sender: TObject);
begin
  OldCompListOnClickCheckProc(TNewCheckListBox(Sender));
  GameSize:= GetFloatFormText(WizardForm.ComponentsDiskSpaceLabel.Caption)-5;
if not GameUpdate then SpaceComponentsLabel.Caption:= CustomMessage(Lang+'NeedSpace') +'  ' +MbOrTb(GameSize) else
  SpaceComponentsLabel.Caption:= CustomMessage(Lang+'NeedUpdate') +'  ' +MbOrTb(GameSize);
end;
#endif
// Проверка свободного места для установки игры 
//=============================================================
procedure GetFreeSpaceCaption(Sender: TObject);
begin
  CurDisk:= ExtractFileDrive(WizardForm.DirEdit.Text);
if Selectlbl[2].Caption <> WizardForm.DirEdit.Text then Selectlbl[2].Caption:= WizardForm.DirEdit.Text;
	GetSpaceOnDisk(CurDisk, True, FreeMb, TotalMb);
  Selectlbl[4].Caption:= CustomMessage(Lang+'FreeSpace')+'  '+MbOrTb(FreeMb);
  Selectlbl[5].Caption:= CustomMessage(Lang+'TotalSpace')+'  '+MbOrTb(TotalMb);
#ifdef Components
if not GameUpdate then Selectlbl[6].Caption:= CustomMessage(Lang+'NeedSpace')+'  '+MbOrTb(GameSize) else
  Selectlbl[6].Caption:= CustomMessage(Lang+'NeedUpdate')+'  '+MbOrTb(GameSize);
#else
if not GameUpdate then begin
	GameSize:= {#Needed};
  Selectlbl[6].Caption:= CustomMessage(Lang+'NeedSpace')+'  '+MbOrTb(GameSize);
	end else begin
if IsWin64 then begin
	GameSize:= {#NeedUp};
  Selectlbl[6].Caption:= CustomMessage(Lang+'NeedUpdate')+'  '+MbOrTb(GameSize);
	end else begin
	GameSize:= {#NeedUpLE};
  Selectlbl[6].Caption:= CustomMessage(Lang+'NeedUpdate')+'  '+MbOrTb(GameSize);
	end;  
	end; 
#endif
// Полный объем диска
//=============================================================
if CurDisk <> OldDisk then begin
if TotalMb > GameSize then begin
  Selectlbl[5].Font.Color:= $00FF00
  i:= GetElementIndex(ALabel[2], lbl);
if i <> 0 then DeleteLabelFromArray(ALabel[2], i);
  KillTimer(WizardForm.Handle, 1);  
	end else begin
  SetTimer(WizardForm.Handle, 1, 1000, CallbackAddr('DiskFlashing'));
  Selectlbl[5].Font.Color:= $00FFF0;
  AddLabelToArray(ALabel[2], Selectlbl[5]);
	end;
// Свободное место на диске
//=============================================================
if FreeMb > GameSize then begin
  Selectlbl[3].Font.Color:= $C0C0C0;
  Selectlbl[4].Font.Color:= $00FF00;
  Selectlbl[6].Font.Color:= $00FF00;
if DirExists(ExpandConstant('{#Dir}\Game')) then begin
  Selectlbl[0].Font.Color:= $808080;
  Selectlbl[0].Caption:= CustomMessage(Lang+'SelectDirLabel3');
  Selectlbl[2].Font.Color:= $808080;
  Selectlbl[3].SetBounds(ScaleX(334), ScaleY(230), ScaleX(292), ScaleY(15));
  Selectlbl[3].Caption:= CustomMessage(Lang+'NextLbl');
#ifdef Controler
 	UTF_Button_Enabled('ButtonDir', True);
#else
 	UTF_Button_Enabled('ButtonDir', False); 
#endif
  end else begin
  Selectlbl[0].Font.Color:= $C0C0C0;
  Selectlbl[0].Caption:= CustomMessage(Lang+'SelectDirLabel1');
  Selectlbl[2].Font.Color:= $C0C0C0;
  Selectlbl[3].SetBounds(ScaleX(334), ScaleY(230), ScaleX(286), ScaleY(15));
  Selectlbl[3].Caption:= CustomMessage(Lang+'NextLbl');
 	UTF_Button_Enabled('ButtonDir', True);
  end;
  i:= GetElementIndex(ALabel[2], lbl);
if i <> 0 then DeleteLabelFromArray(ALabel[2], i);
  KillTimer(WizardForm.Handle, 1);  
 	UTF_Button_Enabled('ButtonNext', True);
// Отсутствие вободного места на диске
//=============================================================
  end else begin
  SetTimer(WizardForm.Handle, 1, 1000, CallbackAddr('DiskFlashing'));
  Selectlbl[0].Font.Color:= $00FFFF;
  Selectlbl[2].Font.Color:= $0030FF;
  Selectlbl[3].Font.Color:= $00FFFF;
  Selectlbl[3].SetBounds(ScaleX(220), ScaleY(230), ScaleX(420), ScaleY(15));
  Selectlbl[4].Font.Color:= $00FFF0;
if DirExists(ExpandConstant('{#Dir}\Game')) then begin
  Selectlbl[0].Caption:= CustomMessage(Lang+'SelectDirLabel2');
  Selectlbl[3].Caption:= CustomMessage(Lang+'Clean1');
  end else begin
  Selectlbl[0].Caption:= CustomMessage(Lang+'SelectDirLabel');
  Selectlbl[3].Caption:= CustomMessage(Lang+'Clean')
  end;
  AddLabelToArray(ALabel[2], Selectlbl[0]);
  AddLabelToArray(ALabel[2], Selectlbl[3]);
  AddLabelToArray(ALabel[2], Selectlbl[4]);
 	UTF_Button_Enabled('ButtonDir', True);
#ifndef Controler
 	UTF_Button_Enabled('ButtonNext', False);
#endif
  end;  
  end;
end;
// Захват формы установки при перемещении
//=============================================================
procedure WizardFormOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(WizardForm.Handle, $0112, $F012, 0);  
end;
// Закрытие окна установки 
//=============================================================
procedure WizardFormClose(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= True;
end;
// Отображение панели выбора языка установки 
//=============================================================
procedure LangPanelShow(Sender: TObject);
begin
	BtnSetVisibility(LangBtn[18], False);
  Welcomelbl[3].Hide;
  LangPanel.Show;  
  sndCheck(nil);
end;
// Закрытие панели выбора языка установки 
//=============================================================
procedure LangPanelHide(Sender: TObject);
begin
  LangPanel.Hide;
  Welcomelbl[3].Show;
	BtnSetVisibility(LangBtn[18], True);
  sndCheck(nil);
end;
// Загрузка изображений формы установки в буфер обмена 
//=============================================================
function SlideShowLoad(Wnd: HWND; FileName: PAnsiChar; Left, Top, Width, Height: Integer; Stretch, IsBkg: Boolean): Longint;
begin
if not FileExists(FileName) then begin
  ExtractTemporaryFile(FileName);
  Result:= _ImgLoad(Wnd, ExpandConstant('{tmp}\'+FileName), Left, Top, Width, Height, Stretch, IsBkg);
  DeleteFile(ExpandConstant('{tmp}\'+FileName));
  end else
  Result:= _ImgLoad(Wnd, FileName, Left, Top, Width, Height, Stretch, IsBkg);
end;
// Запуск отображения слайдшоу 
//=============================================================
procedure SlideShow;
begin
  ImgSetVisibility(AImg[CurrentImage], False);
  CurrentImage:= CurrentImage+1;
if CurrentImage = GetArrayLength(AImg) then CurrentImage:= 0;
  ImgSetVisibility(AImg[CurrentImage], True);
  ImgApplyChanges(SlideShowForm.Handle);
end;
// Форма отображения слайдшоу 
//=============================================================
procedure SlideShowBox();
begin
  SlideShowForm:= CreateCustomForm;
with SlideShowForm do begin
  ClientWidth:= ScaleX(920);
  ClientHeight:= ScaleY(536);
  BorderStyle:= bsNone;
  Center;  
	Show;
  end;
// Подключение изображений слайдшоу установки 
//=============================================================
  SetArrayLength(AImg, {#SLIDE});
for i:= 0 to GetArrayLength(AImg)-1 do begin
  AImg[i]:= SlideShowLoad(SlideShowForm.Handle, IntToStr(i)+'.jpg', 0, 0, SlideShowForm.ClientWidth, SlideShowForm.ClientHeight, True, True);
  ImgSetVisibility(AImg[i], false);
  ImgSetVisibility(AImg[0], true);
  ImgApplyChanges(SlideShowForm.Handle);
  end;
  ShowTimer:= SetTimer(SlideShowForm.Handle, 0, {#SlideSpeed}, CallbackAddr('SlideShow'));
end;
// Создание формы установки 
//=============================================================
procedure RedesignWizardForm();
begin
with WizardForm do begin
  ClientWidth:= ScaleX(640);
  ClientHeight:= ScaleY(275);
  OuterNotebook.Hide;
  BorderStyle:= bsNone;
  OnMouseDown:= @WizardFormOnMouseDown;
  OnCloseQuery:= @WizardFormClose;
  DirBrowseButton.OnClick:= @BrowseClick;
  DirEdit.OnChange:= @GetFreeSpaceCaption;
  GroupBrowseButton.OnClick:= @GroupClick;
  GroupEdit.OnChange:= @GroupChange;
	BackButton.Width:= 0;
	CancelButton.Width:= 0;
	NextButton.Width:= 0;
  Center;
  end;
// Создание изображений и кнопок установки
//=============================================================
  Images[1]:= ImgLoad(WizardForm.Handle, 'fone.jpg', ScaleX(0), ScaleY(0), WizardForm.ClientWidth, WizardForm.ClientHeight, True, True);
if IsWin64 then Images[2] := ImgLoad(WizardForm.Handle, 'page.png', ScaleX(55), ScaleY(0), ScaleX(101), ScaleY(270), True, False) else
  Images[2]:= ImgLoad(WizardForm.Handle, 'page1.png', ScaleX(0), ScaleY(0), ScaleX(199), ScaleY(270), True, False);
  Images[3]:= SlideShowLoad(WizardForm.Handle, 'pbar.jpg', ScaleX(10), ScaleY(96), ScaleX(380), ScaleY(12), True, False);
  UTF_Button_Create('ButtonBack', WizardForm, 'button.png', 340, 265, 90, 25, 'Tahoma', 10, [], '', {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('ButtonPlay', WizardForm, 'button.png', 340, 265, 90, 25, 'Tahoma', 10, [], '', {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('ButtonCancel', WizardForm, 'button.png', 435, 265, 90, 25, 'Tahoma', 10, [], '', {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('ButtonDelete', WizardForm, 'button.png', 435, 265, 90, 25, 'Tahoma', 10, [], '', {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('ButtonNext', WizardForm, 'button.png', 530, 265, 90, 25, 'Tahoma', 10, [], '', {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('ButtonDir', WizardForm, 'button.png', 530, 32, 90, 25, 'Tahoma', 10, [], '', {#BtnFontColor1}, MyCursor);
  UTF_Button_Create('ButtonGroup', WizardForm, 'button.png', 530, 171, 90, 25, 'Tahoma', 10, [], '', {#BtnFontColor1}, MyCursor);
// Панель языков установки
//=============================================================
  LangPanel:= TNewCheckListBox.Create(nil);
with LangPanel do begin
  Parent:= WizardForm;
	BorderStyle:= bsNone;
  ItemHeightFixed:= True;
  SetBounds(ScaleX(267), ScaleY(125), ScaleX(326), ScaleY(62));
// Китайский язык
//=============================================================
  LangBtn[0]:= BtnCreate(LangPanel.Handle, ScaleX(2), ScaleY(2), ScaleX(34), ScaleY(25), 'check_ch.png', 1, True);
  BtnSetCursor(LangBtn[0], {#Cursor});
  BtnSetEvent(LangBtn[0], {#BtnEnter});
  BtnSetEvent(LangBtn[0], {#BtnLang});
// Чешский язык
//=============================================================
  LangBtn[1]:= BtnCreate(LangPanel.Handle, ScaleX(38), ScaleY(2), ScaleX(34), ScaleY(25), 'check_cz.png', 1, True);
  BtnSetCursor(LangBtn[1], {#Cursor});
  BtnSetEvent(LangBtn[1], {#BtnEnter});
  BtnSetEvent(LangBtn[1], {#BtnLang});
// Датский язык
//=============================================================
  LangBtn[2]:= BtnCreate(LangPanel.Handle, ScaleX(74), ScaleY(2), ScaleX(34), ScaleY(25), 'check_da.png', 1, True);
  BtnSetCursor(LangBtn[2], {#Cursor});
  BtnSetEvent(LangBtn[2], {#BtnEnter});
  BtnSetEvent(LangBtn[2], {#BtnLang});
// Немецкий язык
//=============================================================
  LangBtn[3]:= BtnCreate(LangPanel.Handle, ScaleX(110), ScaleY(2), ScaleX(34), ScaleY(25), 'check_de.png', 1, True);
  BtnSetCursor(LangBtn[3], {#Cursor});
  BtnSetEvent(LangBtn[3], {#BtnEnter});
  BtnSetEvent(LangBtn[3], {#BtnLang});
// Английский язык
//=============================================================
  LangBtn[4]:= BtnCreate(LangPanel.Handle, ScaleX(146), ScaleY(2), ScaleX(34), ScaleY(25), 'check_en.png', 1, True);
  BtnSetCursor(LangBtn[4], {#Cursor});
  BtnSetEvent(LangBtn[4], {#BtnEnter});
  BtnSetEvent(LangBtn[4], {#BtnLang});
// Финский язык
//=============================================================
  LangBtn[5]:= BtnCreate(LangPanel.Handle, ScaleX(182), ScaleY(2), ScaleX(34), ScaleY(25), 'check_fi.png', 1, True);
  BtnSetCursor(LangBtn[5], {#Cursor});
  BtnSetEvent(LangBtn[5], {#BtnEnter});
  BtnSetEvent(LangBtn[5], {#BtnLang});
// Французский язык
//=============================================================
  LangBtn[6]:= BtnCreate(LangPanel.Handle, ScaleX(218), ScaleY(2), ScaleX(34), ScaleY(25), 'check_fr.png', 1, True);
  BtnSetCursor(LangBtn[6], {#Cursor});
  BtnSetEvent(LangBtn[6], {#BtnEnter});
  BtnSetEvent(LangBtn[6], {#BtnLang});
// Японский язык
//=============================================================
  LangBtn[7]:= BtnCreate(LangPanel.Handle, ScaleX(254), ScaleY(2), ScaleX(34), ScaleY(25), 'check_jp.png', 1, True);
  BtnSetCursor(LangBtn[7], {#Cursor});
  BtnSetEvent(LangBtn[7], {#BtnEnter});
  BtnSetEvent(LangBtn[7], {#BtnLang});
// Итальянский язык
//=============================================================
  LangBtn[8]:= BtnCreate(LangPanel.Handle, ScaleX(290), ScaleY(2), ScaleX(34), ScaleY(25), 'check_it.png', 1, True);
  BtnSetCursor(LangBtn[8], {#Cursor});
  BtnSetEvent(LangBtn[8], {#BtnEnter});
  BtnSetEvent(LangBtn[8], {#BtnLang});
// Корейский язык
//=============================================================
  LangBtn[9]:= BtnCreate(LangPanel.Handle, ScaleX(2), ScaleY(31), ScaleX(34), ScaleY(25), 'check_ko.png', 1, True);
  BtnSetCursor(LangBtn[9], {#Cursor});
  BtnSetEvent(LangBtn[9], {#BtnEnter});
  BtnSetEvent(LangBtn[9], {#BtnLang});
// Нидерландский язык
//=============================================================
  LangBtn[10]:= BtnCreate(LangPanel.Handle, ScaleX(38), ScaleY(31), ScaleX(34), ScaleY(25), 'check_nl.png', 1, True);
  BtnSetCursor(LangBtn[10], {#Cursor});
  BtnSetEvent(LangBtn[10], {#BtnEnter});
  BtnSetEvent(LangBtn[10], {#BtnLang});
// Новежский язык
//=============================================================
  LangBtn[11]:= BtnCreate(LangPanel.Handle, ScaleX(74), ScaleY(31), ScaleX(34), ScaleY(25), 'check_no.png', 1, True);
  BtnSetCursor(LangBtn[11], {#Cursor});
  BtnSetEvent(LangBtn[11], {#BtnEnter});
  BtnSetEvent(LangBtn[11], {#BtnLang});
// Польский язык
//=============================================================
  LangBtn[12]:= BtnCreate(LangPanel.Handle, ScaleX(110), ScaleY(31), ScaleX(34), ScaleY(25), 'check_po.png', 1, True);
  BtnSetCursor(LangBtn[12], {#Cursor});
  BtnSetEvent(LangBtn[12], {#BtnEnter});
  BtnSetEvent(LangBtn[12], {#BtnLang});
// Бразильский(Португальский) язык
//=============================================================
  LangBtn[13]:= BtnCreate(LangPanel.Handle, ScaleX(182), ScaleY(31), ScaleX(34), ScaleY(25), 'check_br.png', 1, True);
  BtnSetCursor(LangBtn[13], {#Cursor});
  BtnSetEvent(LangBtn[13], {#BtnEnter});
  BtnSetEvent(LangBtn[13], {#BtnLang});
// Русский язык
//=============================================================
  LangBtn[14]:= BtnCreate(LangPanel.Handle, ScaleX(218), ScaleY(31), ScaleX(34), ScaleY(25), 'check_ru.png', 1, True);
  BtnSetCursor(LangBtn[14], {#Cursor});
  BtnSetEvent(LangBtn[14], {#BtnEnter});
  BtnSetEvent(LangBtn[14], {#BtnLang});
// Испанский язык
//=============================================================
  LangBtn[15]:= BtnCreate(LangPanel.Handle, ScaleX(254), ScaleY(31), ScaleX(34), ScaleY(25), 'check_sp.png', 1, True);
  BtnSetCursor(LangBtn[15], {#Cursor});
  BtnSetEvent(LangBtn[15], {#BtnEnter});
  BtnSetEvent(LangBtn[15], {#BtnLang});
// Шведский язык
//=============================================================
  LangBtn[16]:= BtnCreate(LangPanel.Handle, ScaleX(290), ScaleY(31), ScaleX(34), ScaleY(25), 'check_sw.png', 1, True);
  BtnSetCursor(LangBtn[16], {#Cursor});
  BtnSetEvent(LangBtn[16], {#BtnEnter});
  BtnSetEvent(LangBtn[16], {#BtnLang});
// Открытие панели языков установки
//=============================================================
  LangBtn[17]:= BtnCreate(LangPanel.Handle, ScaleX(151), ScaleY(34), ScaleX(25), ScaleY(25), 'button_arrow_down.png', 1, False);
  BtnSetCursor(LangBtn[17], {#Cursor});
  BtnSetEvent(LangBtn[17], {#BtnEnter});
  BtnSetEvent(LangBtn[17], 1, CallbackAddr('LangPanelHide'));
  end;
// Закрытие панели языков установки
//=============================================================
  LangBtn[18]:= BtnCreate(WizardForm.Handle, ScaleX(417), ScaleY(155), ScaleX(25), ScaleY(25), 'button_arrow_up.png', 1, False);
  BtnSetCursor(LangBtn[18], {#Cursor});
  BtnSetEvent(LangBtn[18], {#BtnEnter});
  BtnSetEvent(LangBtn[18], 1, CallbackAddr('LangPanelShow'));
// Дополнительные кнопки и чекбоксы установки
// Кнопка О Программе
//=============================================================
  InfoBtn:= BtnCreate(WizardForm.Handle, ScaleX(260), ScaleY(268), ScaleX(20), ScaleY(20), 'button_info.png', 1, False);
  BtnSetCursor(InfoBtn, {#Cursor});
  BtnSetEvent(InfoBtn, {#BtnEnter});
  BtnSetEvent(InfoBtn, 1, CallbackAddr('InfoBtnClick'));
// Кнопка копирайта
//=============================================================
  Button[0]:= BtnCreate(WizardForm.Handle, ScaleX(5), ScaleY(285), ScaleX(250), ScaleY(17), 'button_blv.png', 1, False);
  BtnSetCursor(Button[0], {#Cursor});
  BtnSetEvent(Button[0], {#BtnEnter});
  BtnSetEvent(Button[0], {#BtnClick});
  BtnSetFont(Button[0], BFont.Handle);
  BtnSetFontColor(Button[0], $808080, $FDB900, $A09E9E, $808080);
  BtnSetText(Button[0], '{#Copyright}'+' - '+'{#Autor}');
// Кнопка музыки
//=============================================================
  Button[1]:= BtnCreate(WizardForm.Handle, ScaleX(290), ScaleY(268), ScaleX(20), ScaleY(20), 'check_music.png', 1, True);
  BtnSetCursor(Button[1], {#Cursor});
  BtnSetEvent(Button[1], {#BtnEnter});
  BtnSetEvent(Button[1], {#BtnClick});
// Кнопка очистки диска
//=============================================================
  Button[2]:= BtnCreate(WizardForm.Handle, ScaleX(230), ScaleY(63), ScaleX(54), ScaleY(45), 'button_hdd.png', 1, False);
  BtnSetCursor(Button[2], {#Cursor});
  BtnSetEvent(Button[2], {#BtnEnter});
  BtnSetEvent(Button[2], {#BtnClick});
// Чекбокс создания сохранений
//=============================================================
  Button[3]:= BtnCreate(WizardForm.Handle, ScaleX(220), ScaleY(126), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetCursor(Button[3], {#Cursor});
  BtnSetEvent(Button[3], {#BtnEnter});
  BtnSetEvent(Button[3], {#BtnClick});
// Чекбокс создания ярлыков в Меню Пуск
//=============================================================
  Button[4]:= BtnCreate(WizardForm.Handle, ScaleX(220), ScaleY(201), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetCursor(Button[4], {#Cursor});
  BtnSetEvent(Button[4], {#BtnEnter});
  BtnSetEvent(Button[4], {#BtnClick});
// Чекбокс создания ярлыка на рабочий стол
//=============================================================
  Button[5]:= BtnCreate(WizardForm.Handle, ScaleX(245), ScaleY(64), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetChecked(Button[5], True);
  BtnSetCursor(Button[5], {#Cursor});
  BtnSetEvent(Button[5], {#BtnEnter});
  BtnSetEvent(Button[5], {#BtnClick});
// Чекбокс создания ярлыка на панель задач
//=============================================================
  Button[6]:= BtnCreate(WizardForm.Handle, ScaleX(245), ScaleY(80), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetChecked(Button[6], True);
  BtnSetCursor(Button[6], {#Cursor});
  BtnSetEvent(Button[6], {#BtnEnter});
  BtnSetEvent(Button[6], {#BtnClick});
// Чекбокс DirectX
//=============================================================
  Button[7]:= BtnCreate(WizardForm.Handle, ScaleX(270), ScaleY(142), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetCursor(Button[7], {#Cursor});
  BtnSetEvent(Button[7], {#BtnEnter});
  BtnSetEvent(Button[7], {#BtnClick});
// Чекбокс Visual 2010
//=============================================================
  Button[8]:= BtnCreate(WizardForm.Handle, ScaleX(270), ScaleY(157), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetCursor(Button[8], {#Cursor});
  BtnSetEvent(Button[8], {#BtnEnter});
  BtnSetEvent(Button[8], {#BtnClick});
// Чекбокс Visual 2013
//=============================================================
  Button[9]:= BtnCreate(WizardForm.Handle, ScaleX(270), ScaleY(172), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetCursor(Button[9], {#Cursor});
  BtnSetEvent(Button[9], {#BtnEnter});
  BtnSetEvent(Button[9], {#BtnClick});
// Чекбокс Visual 2019
//=============================================================
  Button[10]:= BtnCreate(WizardForm.Handle, ScaleX(270), ScaleY(187), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetCursor(Button[10], {#Cursor});
  BtnSetEvent(Button[10], {#BtnEnter});
  BtnSetEvent(Button[10], {#BtnClick});
// Чекбокс Слайдшоу
//=============================================================
  Button[11]:= BtnCreate(WizardForm.Handle, ScaleX(20), ScaleY(121), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetChecked(Button[11], True);
  BtnSetCursor(Button[11], {#Cursor});
  BtnSetEvent(Button[11], {#BtnEnter});
  BtnSetEvent(Button[11], {#BtnClick});
// Чекбокс запуска игры
//=============================================================
  Button[12]:= BtnCreate(WizardForm.Handle, ScaleX(300), ScaleY(175), ScaleX(13), ScaleY(13), 'check.png', 1, True);
  BtnSetCursor(Button[12], {#Cursor});
  BtnSetEvent(Button[12], {#BtnEnter});
  BtnSetEvent(Button[12], {#BtnClick});
// Линии разделения
//=============================================================
  Bevell[0]:= TBevel.Create(nil);
with Bevell[0] do Parent:= WizardForm;
  Bevell[1]:= TBevel.Create(nil);
with Bevell[1] do Parent:= WizardForm;
  Bevell[2]:= TBevel.Create(nil);
with Bevell[2] do Parent:= WizardForm;
// Страница запуска установки 
// Заголовок сообщения установки
//=============================================================
  Welcomelbl[0]:= TLabel.Create(nil);
with Welcomelbl[0] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 12;
	Font.Style:= [fsBold];
  SetBounds(ScaleX(230), ScaleY(10), ScaleX(400), ScaleY(40));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение о запуске игры
//=============================================================
  Welcomelbl[1]:= TLabel.Create(nil);
with Welcomelbl[1] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение об отключении антивируса
//=============================================================
  Welcomelbl[2]:= TLabel.Create(nil);
with Welcomelbl[2] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(230), ScaleY(215), ScaleX(400), ScaleY(30));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение о выборе языка установки
//=============================================================
  Welcomelbl[3]:= TLabel.Create(nil);
with Welcomelbl[3] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $FDB900;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(280), ScaleY(132), ScaleX(300), ScaleY(15));
  Transparent:= True;
  end;
// Сообщение о языке установки
//=============================================================
  Welcomelbl[4]:= TLabel.Create(nil);
with Welcomelbl[4] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 12;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(330), ScaleY(189), ScaleX(200), ScaleY(20));
  Transparent:= True;
  end;
// Страница системных требований
//=============================================================
#ifdef System
  wpSystem:= CreateCustomPage(wpWelcome, '', '');
// Заголовок сообщения системных требований
//=============================================================
  Systemslbl[0]:= TLabel.Create(nil);
with Systemslbl[0] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(20), ScaleY(10), ScaleX(600), ScaleY(35));
  Transparent:= True;
  end;
// Сообщение о продолжении установки
//=============================================================
  Systemslbl[1]:= TLabel.Create(nil);
with Systemslbl[1] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  Transparent:= True;
  end;
// Сообщение Процессора
//=============================================================
  Systemslbl[2]:= TLabel.Create(nil);
with Systemslbl[2] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(60), ScaleX(150), ScaleY(17));
  Transparent:= True;
  end;
// Вывод сообщение о процессоре
//=============================================================
  Systemslbl[3]:= TLabel.Create(nil);
with Systemslbl[3] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 9;
  SetBounds(ScaleX(160), ScaleY(60), ScaleX(470), ScaleY(17));
  Transparent:= True;
  end;
  Panel[0]:= TBevel.Create(WizardForm);
with Panel[0] do begin
  Parent:= WizardForm;
  SetBounds(ScaleX(160), ScaleY(82), ScaleX(460), ScaleY(2));
  end;
// Сообщение видеокарта
//=============================================================
  Systemslbl[4]:= TLabel.Create(nil);
with Systemslbl[4] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(91), ScaleX(150), ScaleY(17));
  Transparent:= True;
  end;
// Вывод сообщения о видеокарте
//=============================================================
  Systemslbl[5]:= TLabel.Create(nil);
with Systemslbl[5] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 9;
  SetBounds(ScaleX(160), ScaleY(91), ScaleX(470), ScaleY(15));
  Transparent:= True;
  end;
// Проверка информации о видеокарте в реестре
//=============================================================
	lpDisplayDevice.cb:= SizeOf(lpDisplayDevice);
	i:= 0;
while not EnumDisplayDevices(0, i, lpDisplayDevice, 0) and (lpDisplayDevice.StateFlags and i > 0) and (i <= 127) do i:= i+1;
for i:= 0 to 127 do DeviceKey:= DeviceKey+lpDisplayDevice.DeviceKey[i];
  Delete(DeviceKey, Pos(Chr(0), DeviceKey), 127);
	StringChange(DeviceKey, '\Registry\Machine\', '');
// Проверка информации о размере видеопамяти
//=============================================================
if SetDeviceName(DeviceName) then RegQueryDWordValue(HKLM, DeviceKey, 'HardwareInformation.MemorySize', DeviceValue) else
for i:= 0 to 5 do RegQueryDWordValue(HKLM,'{#Control}\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\000'+IntToStr(i),'HardwareInformation.MemorySize',DeviceValue);
for i:= 0 to 127 do DeviceName:= DeviceName+lpDisplayDevice.DeviceString[i];
  Delete(DeviceName, Pos(Chr(0), DeviceName), 127);
	StringChange(DeviceName, '\Registry\Machine\', '');
// Панель сообщения видеокарты
//=============================================================
  Panel[1]:= TBevel.Create(nil);
with Panel[1] do begin
  Parent:= WizardForm;
  SetBounds(ScaleX(160), ScaleY(113), ScaleX(460), ScaleY(2));
  end;
// Сообщение звуковой карты
//=============================================================
  Systemslbl[6]:= TLabel.Create(nil);
with Systemslbl[6] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(122), ScaleX(150), ScaleY(17));
  Transparent:= True;
  end;
// Вывод сообщения о звуковой карте
//=============================================================
  Systemslbl[7]:= TLabel.Create(nil);
with Systemslbl[7] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 9;
  SetBounds(ScaleX(160), ScaleY(122), ScaleX(470), ScaleY(15));
  Transparent:= True;
  end;
  Panel[2]:= TBevel.Create(nil);
with Panel[2] do begin
  Parent:= WizardForm;
  SetBounds(ScaleX(160), ScaleY(144), ScaleX(460), ScaleY(2));
  end;
// Сообщение Памяти
//=============================================================
  Systemslbl[8]:= TLabel.Create(nil);
with Systemslbl[8] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(153), ScaleX(150), ScaleY(17));
  Transparent:= True;
  end;
// Вывод сообщения о Памяти
//=============================================================
  Systemslbl[9]:= TLabel.Create(nil);
with Systemslbl[9] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 9;
  SetBounds(ScaleX(160), ScaleY(153), ScaleX(470), ScaleY(15));
  Transparent:= True;
  end;
  Panel[3]:= TBevel.Create(WizardForm);
with Panel[3] do begin
  Parent:= WizardForm;
  SetBounds(ScaleX(160), ScaleY(175), ScaleX(460), ScaleY(2));
  end;
// Сообщение Система
//=============================================================
  Systemslbl[10]:= TLabel.Create(nil);
with Systemslbl[10] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(10), ScaleY(185), ScaleX(150), ScaleY(17));
  Transparent:= True;
  end;
// Вывод сообщения о системе
//=============================================================
  Systemslbl[11]:= TLabel.Create(nil);
with Systemslbl[11] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 9;
  SetBounds(ScaleX(160), ScaleY(185), ScaleX(470), ScaleY(15));
  Transparent:= True;
  end;
  Panel[4]:= TBevel.Create(nil);
with Panel[4] do begin
  Parent:= WizardForm;
  Style:= bsRaised;
  SetBounds(ScaleX(20), ScaleY(210), ScaleX(600), ScaleY(2));
  end;
#endif
#ifdef Components
// Выбора Компонентов 
//=============================================================
  wpComponents:= CreateCustomPage(wpSystem.ID, '', '');
// Страница Выбора Игр Установки
//=============================================================
  ComponentLabel:= TLabel.Create(nil);
with ComponentLabel do begin
  Parent:= WizardForm;
	Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Style:= [fsBold];
  Font.Size:= 10;
  Font.Color:= $C0C0C0;
  SetBounds(ScaleX(200), ScaleY(10), ScaleX(440), ScaleY(40));
  Transparent:= True;
  WordWrap:= True;
  end;
// Создание Листа Выбора Компонентов
//=============================================================
with WizardForm.ComponentsList do begin
  Parent:= WizardForm;
	BorderStyle:= bsNone;
  Font.Size:= 9;
  MinItemHeight:= 14;
  TreeViewStyle:= True;
  SetBounds(ScaleX(220), ScaleY(63), ScaleX(400), ScaleY(128));  
end;
// Нажатие на Компоненты для Установки
//=============================================================
  OldCompListOnClickCheckProc:= WizardForm.ComponentsList.OnClickCheck;
for i:= 0 to WizardForm.ComponentsList.ItemCount-1 do
if WizardForm.ComponentsList.Checked[i] then k[i]:= True;
for i:= 0 to WizardForm.ComponentsList.ItemCount-1 do
	WizardForm.ComponentsList.Checked[i]:= False;
  WizardForm.ComponentsList.OnClickCheck(nil);
for i:= 0 to WizardForm.ComponentsList.ItemCount-1 do
	WizardForm.ComponentsList.Checked[i]:= k[i];
  OldCompListOnClickCheckProc(nil); 
// Строка Размера Выбранных Игр 
//=============================================================
  SpaceComponentsLabel:= TLabel.Create(nil);
with SpaceComponentsLabel do begin
  Parent:= WizardForm;
  Alignment:= taRightJustify;
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  Font.Color:= $C0C0C0;
  SetBounds(ScaleX(350), ScaleY(204), ScaleX(270), ScaleY(15));
  end;
// Строка Сообщения Выбора Компонентов 
//=============================================================
  ComponentsNextLabel:= TLabel.Create(nil)
with ComponentsNextLabel do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Color:= $C0C0C0;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(334), ScaleY(230), ScaleX(292), ScaleY(15));
  end;
#endif
// Страница выбора папки установки и ярлыков меню Пуск
// Заголовок сообщения место установки
//=============================================================
  Selectlbl[0]:= TLabel.Create(nil);
with Selectlbl[0] do begin
  Parent:= WizardForm;
  Alignment:= taLeftJustify;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Style:= [fsBold];
  Font.Size:= 10;
  SetBounds(ScaleX(210), ScaleY(10), ScaleX(425), ScaleY(17));
  Transparent:= True;
  WordWrap:= True;
  end;
// Заголовок сообщение Меню пуск
//=============================================================
  Selectlbl[1]:= TLabel.Create(nil);
with Selectlbl[1] do begin
  Parent:= WizardForm;
  Alignment:= taLeftJustify;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Style:= [fsBold];
  Font.Size:= 10;
  SetBounds(ScaleX(210), ScaleY(150), ScaleX(425), ScaleY(20));
  Transparent:= True;
  WordWrap:= True;
  end;
// Строка Сообщение Директории установки
//=============================================================
  Selectlbl[2]:= TLabel.Create(nil);
with Selectlbl[2] do begin
  Parent:= WizardForm
  AutoSize:= True;
  Font.Name:= FontName;
  Font.Size:= 9;
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Install Dir', Dir) then begin
  Cursor:= MyCursor;
	OnMouseEnter:= @sndEnter;
  OnClick:= @BrowseClick;
	end;
  SetBounds(ScaleX(220), ScaleY(36), ScaleX(WizardForm.DirEdit.Width), ScaleY(15));
  Transparent:= True;
  end;
// Сообщение продолжения установки
//=============================================================
  Selectlbl[3]:= TLabel.Create(nil);
with Selectlbl[3] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  Transparent:= True;
  end;
// Сообщение свободного места на диске
//=============================================================
  Selectlbl[4]:= TLabel.Create(nil);
with Selectlbl[4] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Size:= 9;
  SetBounds(ScaleX(270), ScaleY(80), ScaleX(280), ScaleY(15));
  Transparent:= True;
  end;
// Сообщение полного размера диска
//=============================================================
  Selectlbl[5]:= TLabel.Create(nil);
with Selectlbl[5] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Size:= 9;
  SetBounds(ScaleX(270), ScaleY(63), ScaleX(280), ScaleY(15));
  Transparent:= True;
  end;
// Сообщение требуемого места
//=============================================================
  Selectlbl[6]:= TLabel.Create(nil);
with Selectlbl[6] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
	Font.Color:= $00FF00;
  Font.Name:= FontName;
  Font.Size:= 9;
  SetBounds(ScaleX(270), ScaleY(97), ScaleX(280), ScaleY(15));
  Transparent:= True;
  end;
// Строка сообщения о содании папки в Меню Пуск
//=============================================================
  Selectlbl[7]:= TLabel.Create(nil);
with Selectlbl[7] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Cursor:= MyCursor;
  Font.Name:= FontName;
  Font.Color:= $FDB900;
  Font.Size:= 10;
  OnClick:= @NoIconsLabelClick;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(240), ScaleY(199), ScaleX(Width), ScaleY(17));
  Transparent:= True;
  end;
// Строка сообщение Меню Пуск
//=============================================================
  Selectlbl[8]:= TLabel.Create(nil);
with Selectlbl[8] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Caption:= ExpandConstant('{#DefGr}');
  Font.Name:= FontName;
  Font.Size:= 9;
  SetBounds(ScaleX(220), ScaleY(175), ScaleX(Width), ScaleY(15));
  Transparent:= True;
	RegQueryStringValue(HKLM, '{#CurrentVer}\Uninstall\{48EBEBBF-B9F8-4520-A3CF-89A730721917}', 'Icon Group', Folder);
if not DirExists(ExpandConstant(Folder)) then begin
  Cursor:= MyCursor;
  OnClick:= @GroupClick;
	OnMouseEnter:= @sndEnter;
	end;
  end;
// Строка сообщение создания копии игры
//=============================================================
  Selectlbl[9]:= TLabel.Create(nil);
with Selectlbl[9] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Cursor:= MyCursor;
  Font.Name:= FontName;
  Font.Color:= $FDB900;
  Font.Size:= 10;
  OnClick:= @BackupLabelClick;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(240), ScaleY(124), ScaleX(Width), ScaleY(17));
  Transparent:= True;
  end;
// Страница дополнительных задач
//=============================================================
#ifndef Components
  wpTasks:= CreateCustomPage(wpSelectDir, '', '');
#endif
// Заголовок сообщение дополнительных задач
//=============================================================
  Taskslbl[0]:= TLabel.Create(nil);
with Taskslbl[0] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(220), ScaleY(10), ScaleX(410), ScaleY(36));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение выбора задач и продолжения установки
//=============================================================
  Taskslbl[1]:= TLabel.Create(nil);
with Taskslbl[1] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(220), ScaleY(220), ScaleX(410), ScaleY(34));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение установки ярлыка игры на рабочий стол
//=============================================================
  Taskslbl[2]:= TLabel.Create(nil);
with Taskslbl[2] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Cursor:= MyCursor;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 10;
  OnClick:= @DesktopGameClick;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(265), ScaleY(62), ScaleX(Width), ScaleY(17));
  Transparent:= True;
  end;
// Сообщение установки ярлыка игры на панель задач
//=============================================================
  Taskslbl[3]:= TLabel.Create(nil);
with Taskslbl[3] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Cursor:= MyCursor;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 10;
  OnClick:= @TaskbarGameClick;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(265), ScaleY(78), ScaleX(Width), ScaleY(17));
  Transparent:= True;
  end;
// Сообщение Выбора дополнительных задач
//=============================================================
  Taskslbl[4]:= TLabel.Create(nil);
with Taskslbl[4] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 10;
  SetBounds(ScaleX(260), ScaleY(120), ScaleX(330), ScaleY(17));
  Transparent:= True;
  end;
// Сообщение установки DirectX
//=============================================================
  Taskslbl[5]:= TLabel.Create(nil);
with Taskslbl[5] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 10;
  Transparent:= True;
  end;
// Сообщение установки Visual 2010
//=============================================================
  Taskslbl[6]:= TLabel.Create(nil);
with Taskslbl[6] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Font.Name:= FontName;
  Font.Size:= 10;
	Font.Color:= $00FF00;
  Transparent:= True;
  end;
// Сообщение установки Visual 2013
//=============================================================
  Taskslbl[7]:= TLabel.Create(nil);
with Taskslbl[7] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Font.Name:= FontName;
  Font.Size:= 10;
	Font.Color:= $00FF00;
  Transparent:= True;
  end;
// Сообщение установки Visual 2015-2019
//=============================================================
  Taskslbl[8]:= TLabel.Create(nil);
with Taskslbl[8] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Font.Name:= FontName;
  Font.Size:= 10;
	Font.Color:= $00FF00;
  Transparent:= True;
  end;
// Страница установки
// Заголовок ообщения установки игры
//=============================================================
  Installbl[0]:= TLabel.Create(nil);
with Installbl[0] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $EBEE0D;
  Font.Size:= 20;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(290), ScaleY(32), ScaleX(100), ScaleY(30));
  Transparent:= True;
  WordWrap:= True;
  end;
// Собщения оставшегося времени
//=============================================================
  Installbl[1]:= TLabel.Create(nil);
with Installbl[1] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Size:= 9;
  Font.Color:= $FDB900;
  SetBounds(ScaleX(10), ScaleY(42), ScaleX(380), ScaleY(15));
  Transparent:= True;
  end;
// Собщение установки файлов
//=============================================================
  Installbl[2]:= TLabel.Create(nil);
with Installbl[2] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  SetBounds(ScaleX(10), ScaleY(65), ScaleX(380), ScaleY(15));
  Transparent:= True;
  end;
// Собщения установки дополнительных программ
//=============================================================
  Installbl[3]:= TLabel.Create(nil);
with  Installbl[3] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  SetBounds(ScaleX(10), ScaleY(10), ScaleX(380), ScaleY(17));
  Transparent:= True;
  WordWrap:= True;
  end;
// Страница завершения установки
// Заголовок ообщения завершения установки
//=============================================================
  Finishlbl[0]:= TLabel.Create(nil);
with Finishlbl[0] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 12;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(200), ScaleY(20), ScaleX(420), ScaleY(40));
  Transparent:= True;
  WordWrap:= True;
  end;
// Заголовок ообщения запуска игры
//=============================================================
  Finishlbl[1]:= TLabel.Create(nil);
with Finishlbl[1] do begin
  Parent:= WizardForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(200), ScaleY(90), ScaleX(420), ScaleY(52));
  Transparent:= True;
  WordWrap:= True;
  end;
// Собщение запуска игры
//=============================================================
  Finishlbl[2]:= TLabel.Create(nil);
with Finishlbl[2] do begin
  Parent:= WizardForm;
  AutoSize:= True;
  Cursor:= MyCursor;
  Font.Name:= FontName;
  Font.Color:= $00FF00;
  Font.Size:= 10;
  Font.Style:= [fsBold];
  OnClick:= @PlayLabelClick;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(320), ScaleY(173), ScaleX(Width), ScaleY(17));
  Transparent:= True;
  end;
// Собщения завершения установки
//=============================================================
  Finishlbl[3]:= TLabel.Create(nil);
with Finishlbl[3] do begin
  Parent:= WizardForm;
  AutoSize:= False;
  Alignment:= taCenter;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(200), ScaleY(216), ScaleX(420), ScaleY(32));
  Transparent:= True;
  WordWrap:= True;
  end;
end;
// Инициализация программы установки 
//=============================================================
function InitializeSetup: Boolean;
begin
  ShowWindow(StrToInt(ExpandConstant('{apphwnd}')), SW_HIDE);
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Locale', Locale) then begin
// Язык системы 
//=============================================================
  case ActiveLanguage of
  'che': Lang:= 'che_';
  'cze': Lang:= 'cze_';
  'dan': Lang:= 'dan_';
  'deu': Lang:= 'deu_';
  'eng': Lang:= 'eng_';
  'fin': Lang:= 'fin_';
  'fre': Lang:= 'fre_';
  'ita': Lang:= 'ita_';
  'jap': Lang:= 'jap_';
  'kor': Lang:= 'kor_';
  'ned': Lang:= 'ned_';
  'nor': Lang:= 'nor_';
  'pol': Lang:= 'pol_';
  'por': Lang:= 'por_';
  'rus': Lang:= 'rus_';
  'spa': Lang:= 'spa_';
  'swe': Lang:= 'swe_';
  end;
// Язык установленной игры 
//=============================================================
	end else begin
  case Locale of
	'cs_CZ': Lang:= 'cze_';
	'da_DK': Lang:= 'dan_';
  'de_DE': Lang:= 'deu_';
  'en_US': Lang:= 'eng_';
  'es_ES': Lang:= 'spa_';
	'fi_FI': Lang:= 'fin_';
  'fr_FR': Lang:= 'fre_';
  'it_IT': Lang:= 'ita_';
  'ja_JP': Lang:= 'jap_';
	'ko_KR': Lang:= 'kor_';
  'nl_NL': Lang:= 'ned_';
	'no_NO': Lang:= 'nor_';
	'pl_PL': Lang:= 'pol_';
	'pt_BR': Lang:= 'por_';
  'ru_RU': Lang:= 'rus_';
	'sv_SE': Lang:= 'swe_';
  'zh_TW': Lang:= 'che_';
  end;
	end;                   
  ExtractDataResource();
  BFont:= TFont.Create;
with BFont do begin
  Name:= FontName;
  Size:= 7;
	end;
// Сообщение о несоответствии размера файла установки 
//=============================================================
#ifndef Controler
if not IsWin6 then begin
  MyMessageBox();
  SetTimer(MessageForm.Handle, 2, 1000, CallbackAddr('MessageFlashing'));    
if not RegQueryStringValue(HKLM, '{#WindowsNT}', 'ProductName', SystemName) then begin
	MsgStr.Caption:= CustomMessage(Lang+'Req4')
  MsgStr.SetBounds(ScaleX(10), ScaleY(20), ScaleX(480), ScaleY(40));   
  MsgStr0.Caption:= CustomMessage(Lang+'NotSystem');
  MsgStr0.SetBounds(ScaleX(10), ScaleY(65), ScaleX(480), ScaleY(20));   
	end else begin
	HWREQ.WinName:= SystemName;
  GetWindowsVersionEx(HWREQ.WinVer);
	HWREQ.WinBits:= 'x86';
  MsgStr.Caption:= HWREQ.WinName+' SP'+IntToStr(HWREQ.WinVer.ServicePackMajor)+' '+HWREQ.WinBits+' ('+IntToStr(HWREQ.WinVer.Major)+'.'+IntToStr(HWREQ.WinVer.Minor)+'.'+IntToStr(HWREQ.WinVer.Build)+')';
  MsgStr.SetBounds(ScaleX(10), ScaleY(25), ScaleX(480), ScaleY(20));   
  MsgStr0.Caption:= CustomMessage(Lang+'NextLbl3');
  MsgStr0.Font.Size:= 11;
  MsgStr0.Font.Style:= [fsBold];
  MsgStr0.SetBounds(ScaleX(10), ScaleY(60), ScaleX(480), ScaleY(20));   
	end;
  MsgStr1.Caption:= CustomMessage(Lang+'Message7');
  AddLabelToArray(Flash, MsgStr0);
with TNewIconImage.Create(nil) do begin 
  Icon.LoadFromResourceName(HInstance, '_IS_ICON3');
  Parent:= MessageForm;
  Left:= ScaleX(8);
  Top:= ScaleY(12);
  end;
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), MessageForm.Caption);
  UTF_Button_Create('NoButton', MessageForm, 'button.png', 390, 150, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor3}, MyCursor);
if MessageForm.ShowModal = mrCancel then CloseHandle(Mutex); Exit;
  end;
#ifdef records
  FileSize(ExpandConstant('{src}\setup.exe'), SizeFile);  
if SizeFile = StrToInt('{#SizeFile}') then Result:= True else begin
  MyMessageBox();
  MessageForm.Caption:= CustomMessage(Lang+'Message8');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), MessageForm.Caption);
  MsgStr.Caption:= CustomMessage(Lang+'Message9')
  MsgStr1.Caption:= CustomMessage(Lang+'Message7');
  SetTimer(MessageForm.Handle, 2, 1000, CallbackAddr('MessageFlashing'));
  AddLabelToArray(Flash, MsgStr);
with TNewIconImage.Create(nil) do begin
  Icon.LoadFromResourceName(HInstance, '_IS_ICON3');
  Parent:= MessageForm;
  Left:= ScaleX(7);
  Top:= ScaleY(7);
  end;
  UTF_Button_Create('NoButton', MessageForm, 'button.png', 390, 150, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor3}, MyCursor);
if MessageForm.ShowModal = mrCancel then begin
  Result:= False; Exit;
  end;
  end;
#endif
#endif
// Сообщение о запущенной игре
//=============================================================
	wnd:= (FindWindowByWindowName(ExpandConstant('{code:GetLocale}')) or FindWindowByWindowName(ExpandConstant('{code:GetLocale64}')));
if wnd <> 0 then begin
  MyMessageBox();
  MessageForm.Caption:= SetupMessage(msgWizardPreparing);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), MessageForm.Caption);
if wnd = FindWindowByWindowName(ExpandConstant('{code:GetLocale}')) then MsgStr.Caption:= CustomMessage(Lang+'Message10')+' '+ExpandConstant('{code:GetLocale}')+'!'+CustomMessage(Lang+'Message11');
if wnd = FindWindowByWindowName(ExpandConstant('{code:GetLocale64}')) then MsgStr.Caption:= CustomMessage(Lang+'Message10')+' '+ExpandConstant('{code:GetLocale64}')+'!'+CustomMessage(Lang+'Message11');
  MsgStr1.Caption:= CustomMessage(Lang+'Message12');
  SetTimer(MessageForm.Handle, 2, 1000, CallbackAddr('MessageFlashing'));
  AddLabelToArray(Flash, MsgStr);
with TNewIconImage.Create(nil) do begin
  Icon.LoadFromResourceName(HInstance, '_IS_ICON4');
  Parent:= MessageForm;
  Left:= ScaleX(8);
  Top:= ScaleY(12);
  end;
  UTF_Button_Create('YesButton', MessageForm, 'button.png', 295, 150, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonNext'), {#BtnFontColor2}, MyCursor);
  UTF_Button_Create('NoButton', MessageForm, 'button.png', 390, 150, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonCancel'), {#BtnFontColor3}, MyCursor);
if MessageForm.ShowModal = mrCancel then begin
  Result:= False; Exit;
	end else begin
if wnd = FindWindowByWindowName(ExpandConstant('{code:GetLocale}')) then Exec('taskkill', '/f /im TS4.exe', '', 0, ewWaitUntilTerminated, i);
if wnd = FindWindowByWindowName(ExpandConstant('{code:GetLocale64}')) then Exec('taskkill', '/f /im TS4_x64.exe', '', 0, ewWaitUntilTerminated, i);
	end;
	end;
// Сообщение о повторном запуске установки 
//=============================================================
  Result:= not CheckForMutexes(ExpandConstant('{#SetupSetting("AppMutex")}'));
if not Result then begin
  MyMessageBox();
  MessageForm.Caption:= CustomMessage(Lang+'Message5');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), MessageForm.Caption);
  MsgStr.Caption:= CustomMessage(Lang+'Message6');
  MsgStr1.Caption:= CustomMessage(Lang+'Message7');
  SetTimer(MessageForm.Handle, 2, 1000, CallbackAddr('MessageFlashing'));
  AddLabelToArray(Flash, MsgStr);
with TNewIconImage.Create(nil) do begin 
  Icon.LoadFromResourceName(HInstance, '_IS_ICON3');
  Parent:= MessageForm;
  Left:= ScaleX(8);
  Top:= ScaleY(12);
  end;
  UTF_Button_Create('NoButton', MessageForm, 'button.png', 390, 150, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor3}, MyCursor);
if MessageForm.ShowModal = mrCancel then CloseHandle(Mutex); Exit;
  end;
  ShowSplashScreen(Application.Handle, ExpandConstant('{tmp}\Logo.png'), {#Splash}, False, $FFFFFF, 10);
  UnloadDLL(ExpandConstant('{tmp}\isgsg.dll'));
  DeleteFile(ExpandConstant('{tmp}\Logo.png'));  
  DeleteFile(ExpandConstant('{tmp}\isgsg.dll'));
end;
// Инициализация формы установки 
//=============================================================
procedure InitializeWizard();
begin
  SMutex();   
  RedesignWizardForm();
#ifdef Glass
if isWin10 then
	SetWindowLong(WizardForm.Handle, GWL_EXSTYLE, GetWindowLong(WizardForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW) else
	SetWindowLong(WizardForm.Handle, GWL_EXSTYLE, GetWindowLong(WizardForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(WizardForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
  Sleep(100);
  mciSendString(ExpandConstant('open {tmp}\music.mp3 ALIAS MP3'), '', 0, 0);
  mciSendString('play MP3 repeat', '', 0, 0);
if IsWin6 then init_taskbar();
end;
// Скрытие элементов установки 
//=============================================================
procedure HidePageComponents();
begin
	ImgSetVisibility(Images[3], False);
	UTF_Button_Visable('ButtonBack', False);
	UTF_Button_Visable('ButtonCancel', False);
	UTF_Button_Visable('ButtonDelete', False);
	UTF_Button_Visable('ButtonPlay', False);
	UTF_Button_Visable('ButtonDir', False);
	UTF_Button_Visable('ButtonGroup', False);
for i:= 2 to 13 do BtnSetVisibility(Button[i], False);
	BtnSetVisibility(LangBtn[18], False);
  LangPanel.Hide;
for i:= 0 to 2 do Bevell[i].Hide;
for i:= 0 to 4 do Welcomelbl[i].Hide;
#ifdef System
for i:= 0 to 11 do Systemslbl[i].Hide;
for i:= 0 to 4 do Panel[i].Hide;
#endif
#ifdef Components
  WizardForm.ComponentsList.Hide;
  WizardForm.ComponentsDiskSpaceLabel.Hide;
  ComponentLabel.Hide;
  ComponentsNextLabel.Hide;
  SpaceComponentsLabel.Hide;  
#endif
for i:= 0 to 3 do Finishlbl[i].Hide;
for i:= 0 to 3 do Installbl[i].Hide;
for i:= 0 to 9 do Selectlbl[i].Hide;
for i:= 0 to 8 do Taskslbl[i].Hide;
end;
//                        УСТАНОВКА ИГРЫ
//▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
// Отображение страниц установки 
//=============================================================
procedure CurPageChanged(CurPageID: Integer);
begin
  HidePageComponents();
  case CurPageID of
// Начальная страница установки
//=============================================================
  wpWelcome: LanguagesUpdate();
// Страница системных требований
//=============================================================
#ifdef System
  wpSystem.ID: begin
for i:= 0 to 4 do Panel[i].Show;
for i:= 0 to 11 do Systemslbl[i].Show;
  ImgSetVisibility(Images[2], False);
  Systemslbl[0].Caption:= CustomMessage(Lang+'Req2');
  Systemslbl[2].Caption:= CustomMessage(Lang+'Processor');
  Systemslbl[4].Caption:= CustomMessage(Lang+'VideoCard');
  Systemslbl[6].Caption:= CustomMessage(Lang+'SoundCard');
  SetTimer(WizardForm.Handle, 1, 1000, CallbackAddr('SysReqFlashing'));
// Проверка установленного процессора
//=============================================================
if not CheckCPU({#PROCESSOR}) then AddLabelToArray(ALabel[1], Systemslbl[3]);
  Systemslbl[3].Caption:= DelSp(Keys[0])+' @'+IntToStr(ProcessorValue)+CustomMessage(Lang+'Mhz');
// Отображение полной информации о видеокарте
//=============================================================
if DeviceName <> '' then begin
if SetDeviceName(DeviceName) then Systemslbl[5].Caption:= DeviceName+', '+IntToStr(DeviceValue/oneMB)+CustomMessage(Lang+'Mb')+', '+IntToStr(GetSystemMetrics(0))+'x'+IntToStr(GetSystemMetrics(1)) else
  Systemslbl[5].Caption:= 'Integrated '+DeviceName+', '+IntToStr(DeviceValue/oneMB)+CustomMessage(Lang+'Mb')+', '+IntToStr(GetSystemMetrics(0))+'x'+IntToStr(GetSystemMetrics(1));
	end else
if DeviceValue = 0 then Systemslbl[5].Caption:= CustomMessage(Lang+'DeviceDriver');
// Проверка соответствия установленной видеопамяти
//=============================================================
if (DeviceValue/oneMB) < {#VIDEO} then AddLabelToArray(ALabel[1], Systemslbl[5]);
// Проверка установленной звуковой карты
//=============================================================    
if SoundProductName(SoundName) = '' then begin
  Systemslbl[7].Caption:= CustomMessage(Lang+'DeviceDriver');
  AddLabelToArray(ALabel[1], Systemslbl[7]);
  end else
  Systemslbl[7].Caption:= SoundProductName(SoundName);
// Проверка установленной памяти
//=============================================================
  CheckMemorySize(NeedRam);
  Systemslbl[8].Caption:= CustomMessage(Lang+'RAM');
  MemPhys:= CustomMessage(Lang+'RAM1')+' '+MbOrTb(ToMultiple(trunc(Size64(MemoryEx.HiTotalPhys, MemoryEx.LoTotalPhys)/oneMB), 16))+'; ';
  FreePhis:= CustomMessage(Lang+'RAM2')+' '+MbOrTb(Size64(MemoryEx.HiAvailPhys, MemoryEx.LoAvailPhys)/oneMB)+'; ';
  TakePhis:= CustomMessage(Lang+'RAM3')+' '+MbOrTb((Size64(MemoryEx.HiTotalPhys, MemoryEx.LoTotalPhys)-Size64(MemoryEx.HiAvailPhys, MemoryEx.LoAvailPhys))/oneMB)+'. ';
  PageFile:= CustomMessage(Lang+'RAM4')+' '+MbOrTb((Size64(MemoryEx.HiTotalPageFile, MemoryEx.LoTotalPageFile)-Size64(MemoryEx.HiTotalPhys, MemoryEx.LoTotalPhys))/oneMB);
  Systemslbl[9].Caption:= MemPhys+FreePhis+TakePhis+PageFile;
if not CheckMemorySize(NeedRam) then AddLabelToArray(ALabel[1], Systemslbl[9]);
// Проверка установленной системы и разрядности
//=============================================================
if RegQueryStringValue(HKLM, '{#WindowsNT}', 'ProductName', SystemName) then HWREQ.WinName:= SystemName;
  GetWindowsVersionEx(HWREQ.WinVer);
if IsWin64 then HWREQ.WinBits:= 'x64' else HWREQ.WinBits:= 'x86';
// Отображение установленной системы
//=============================================================
for i:= (0 and 2) to 11 do Systemslbl[i].Font.Color:= $00FF00;
  Systemslbl[1].Font.Color:= $C0C0C0;
  Systemslbl[1].Caption:= CustomMessage(Lang+'NextLbl');
  Systemslbl[1].SetBounds(ScaleX(334), ScaleY(230), ScaleX(292), ScaleY(15));
  Systemslbl[10].Caption:= CustomMessage(Lang+'OperationSystem');
if HWREQ.WinVer.ServicePackMajor > 0 then 
	Systemslbl[11].Caption:= HWREQ.WinName+' SP'+IntToStr(HWREQ.WinVer.ServicePackMajor)+' '+HWREQ.WinBits+' ('+IntToStr(HWREQ.WinVer.Major)+'.'+IntToStr(HWREQ.WinVer.Minor)+'.'+IntToStr(HWREQ.WinVer.Build)+'), '+SystemProductName('ProductName') else
  Systemslbl[11].Caption:= HWREQ.WinName+' '+HWREQ.WinBits+' ('+IntToStr(HWREQ.WinVer.Major)+'.'+IntToStr(HWREQ.WinVer.Minor)+'.'+IntToStr(HWREQ.WinVer.Build)+'); '+SystemProductName('ProductName');
// Отображение при несоответствии системным требованиям
//=============================================================
if not CheckCPU({#PROCESSOR}) or (SoundProductName(SoundName) = '') or not CheckMemorySize(NeedRam) or (DeviceValue/oneMB < {#VIDEO}) then begin
  Systemslbl[1].SetBounds(ScaleX(20), ScaleY(230), ScaleX(600), ScaleY(15));
  Systemslbl[0].Caption:= CustomMessage(Lang+'Req3');
  Systemslbl[1].Caption:= CustomMessage(Lang+'NextLbl1');
  AddLabelToArray(ALabel[1], Systemslbl[0]);
  AddLabelToArray(ALabel[1], Systemslbl[1]);  
  end else
if GetArrayLength(ALabel[1]) > 0 then KillTimer(WizardForm.Handle, 1);
  WizardForm.Caption:= CustomMessage(Lang+'System');
// Отображение кнопок формы установки
//=============================================================
	UTF_Button_Visable('ButtonBack', True);
	UTF_Button_Visable('ButtonCancel', True);
  UTF_Button_Enabled('ButtonNext', True);
  end;
#endif
// Страница Выбора Компонентов Установки  
//=============================================================
#ifdef Components
  wpComponents.ID: begin
// Отображение Имен Компонентов Установки  
//=============================================================
with WizardForm.ComponentsList do begin
if IsWin64 then begin
  ItemCaption[0]:= CustomMessage(Lang+'base');
  ItemCaption[1]:= CustomMessage(Lang+'addon');
  ItemCaption[2]:= CustomMessage(Lang+'addon1');
  ItemCaption[3]:= CustomMessage(Lang+'addon2');
  ItemCaption[4]:= CustomMessage(Lang+'addon3');
  ItemCaption[5]:= CustomMessage(Lang+'addon4');
  ItemCaption[6]:= CustomMessage(Lang+'addon5');
  ItemCaption[7]:= CustomMessage(Lang+'addon6');
  ItemCaption[8]:= CustomMessage(Lang+'addon7');
  ItemCaption[9]:= CustomMessage(Lang+'addon8');
  ItemCaption[10]:= CustomMessage(Lang+'addon9');
  ItemCaption[11]:= CustomMessage(Lang+'addon10');
  ItemCaption[12]:= CustomMessage(Lang+'addon11');
  ItemCaption[13]:= CustomMessage(Lang+'pack');
  ItemCaption[14]:= CustomMessage(Lang+'pack1');
  ItemCaption[15]:= CustomMessage(Lang+'pack2');
  ItemCaption[16]:= CustomMessage(Lang+'pack3');
  ItemCaption[17]:= CustomMessage(Lang+'pack4');
  ItemCaption[18]:= CustomMessage(Lang+'pack5');
  ItemCaption[19]:= CustomMessage(Lang+'pack6');
  ItemCaption[20]:= CustomMessage(Lang+'pack7');
  ItemCaption[21]:= CustomMessage(Lang+'pack8');
  ItemCaption[22]:= CustomMessage(Lang+'pack9');
  ItemCaption[23]:= CustomMessage(Lang+'pack10');
  ItemCaption[24]:= CustomMessage(Lang+'pack11');
  ItemCaption[25]:= CustomMessage(Lang+'stuff');
  ItemCaption[26]:= CustomMessage(Lang+'stuff1');
  ItemCaption[27]:= CustomMessage(Lang+'stuff2');
  ItemCaption[28]:= CustomMessage(Lang+'stuff3');
  ItemCaption[29]:= CustomMessage(Lang+'stuff4');
  ItemCaption[30]:= CustomMessage(Lang+'stuff5');
  ItemCaption[31]:= CustomMessage(Lang+'stuff6');
  ItemCaption[32]:= CustomMessage(Lang+'stuff7');
  ItemCaption[33]:= CustomMessage(Lang+'stuff8');
  ItemCaption[34]:= CustomMessage(Lang+'stuff9');
  ItemCaption[35]:= CustomMessage(Lang+'stuff10');
  ItemCaption[36]:= CustomMessage(Lang+'stuff11');
  ItemCaption[37]:= CustomMessage(Lang+'stuff12');
  ItemCaption[38]:= CustomMessage(Lang+'stuff13');
  ItemCaption[39]:= CustomMessage(Lang+'stuff14');
  ItemCaption[40]:= CustomMessage(Lang+'stuff15');
  ItemCaption[41]:= CustomMessage(Lang+'stuff16');
  ItemCaption[42]:= CustomMessage(Lang+'stuff17');
  ItemCaption[43]:= CustomMessage(Lang+'stuff18');
  ItemCaption[44]:= CustomMessage(Lang+'kits');
  ItemCaption[45]:= CustomMessage(Lang+'kits1');
  ItemCaption[46]:= CustomMessage(Lang+'kits2');
  ItemCaption[47]:= CustomMessage(Lang+'kits3');
  ItemCaption[48]:= CustomMessage(Lang+'kits4');
  ItemCaption[49]:= CustomMessage(Lang+'kits5');
  ItemCaption[50]:= CustomMessage(Lang+'kits6');
  ItemCaption[51]:= CustomMessage(Lang+'kits7');
  ItemCaption[52]:= CustomMessage(Lang+'kits8');
  ItemCaption[53]:= CustomMessage(Lang+'kits9');
  ItemCaption[54]:= CustomMessage(Lang+'kits10');
  ItemCaption[55]:= CustomMessage(Lang+'kits11');
  ItemCaption[56]:= CustomMessage(Lang+'cont');
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Install Dir', Dir) then
for i:= 0 to 56 do Checked[i]:= True else begin
// Выделение Компонентов Повторной Установки и Обновления 
//=============================================================
	Checked[0]:= True;
for i:= 1 to 56 do Checked[i]:= False;
if not DirExists(ExpandConstant('{#Dir}\EP01')) then Checked[2]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP02')) then Checked[3]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP03')) then Checked[4]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP04')) then Checked[5]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP05')) then Checked[6]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP06')) then Checked[7]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP07')) then Checked[8]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP08')) then Checked[9]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP09')) then Checked[10]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP10')) then Checked[11]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP11')) then Checked[12]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP01')) then Checked[14]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP02')) then Checked[15]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP03')) then Checked[16]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP04')) then Checked[17]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP05')) then Checked[18]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP06')) then Checked[19]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP07')) then Checked[20]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP08')) then Checked[21]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP09')) then Checked[22]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP10')) then Checked[23]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP11')) then Checked[24]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP01')) then Checked[26]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP02')) then Checked[27]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP03')) then Checked[28]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP04')) then Checked[29]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP05')) then Checked[30]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP06')) then Checked[31]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP07')) then Checked[32]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP08')) then Checked[33]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP09')) then Checked[34]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP10')) then Checked[35]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP11')) then Checked[36]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP12')) then Checked[37]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP13')) then Checked[38]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP14')) then Checked[39]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP15')) then Checked[40]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP16')) then Checked[41]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP17')) then Checked[42]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP18')) then Checked[43]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP20')) then Checked[45]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP21')) then Checked[46]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP22')) then Checked[47]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP23')) then Checked[48]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP24')) then Checked[49]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP25')) then Checked[50]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP26')) then Checked[51]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP28')) then Checked[52]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP29')) then Checked[53]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP30')) then Checked[54]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP31')) then Checked[55]:= True;
if not DirExists(ExpandConstant('{#Content}')) then Checked[56]:= True;
	end;
for i := 1 to 3 do
If not FileExists(ExpandConstant('{src}\data'+IntToStr(i)+'.sb')) then begin
  Checked[0] := False;
  ItemEnabled[0] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon1.sb')) then begin
  Checked[2] := False;
  ItemEnabled[2] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon2.sb')) then begin
  Checked[3] := False;
  ItemEnabled[3] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon3.sb')) then begin
  Checked[4] := False;
  ItemEnabled[4] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon4.sb')) then begin
  Checked[5] := False;
  ItemEnabled[5] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon5.sb')) then begin
  Checked[6] := False;
  ItemEnabled[6] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon6.sb')) then begin
  Checked[7] := False;
  ItemEnabled[7] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon7.sb')) then begin
  Checked[8] := False;
  ItemEnabled[8] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon8.sb')) then begin
  Checked[9] := False;
  ItemEnabled[9] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon9.sb')) then begin
  Checked[10] := False;
  ItemEnabled[10] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon10.sb')) then begin
  Checked[11] := False;
  ItemEnabled[11] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon11.sb')) then begin
  Checked[12] := False;
  ItemEnabled[12] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack1.sb')) then begin
  Checked[14] := False;
  ItemEnabled[14] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack2.sb')) then begin
  Checked[15] := False;
  ItemEnabled[15] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack3.sb')) then begin
  Checked[16] := False;
  ItemEnabled[16] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack4.sb')) then begin
  Checked[17] := False;
  ItemEnabled[17] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack5.sb')) then begin
  Checked[18] := False;
  ItemEnabled[18] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack6.sb')) then begin
  Checked[19] := False;
  ItemEnabled[19] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack7.sb')) then begin
  Checked[20] := False;
  ItemEnabled[20] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack8.sb')) then begin
  Checked[21] := False;
  ItemEnabled[21] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack9.sb')) then begin
  Checked[22] := False;
  ItemEnabled[22] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack10.sb')) then begin
  Checked[23] := False;
  ItemEnabled[23] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack11.sb')) then begin
  Checked[24] := False;
  ItemEnabled[24] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff1.sb')) then begin
  Checked[26] := False;
  ItemEnabled[26] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff2.sb')) then begin
  Checked[27] := False;
  ItemEnabled[27] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff3.sb')) then begin
  Checked[28] := False;
  ItemEnabled[28] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff4.sb')) then begin
  Checked[29] := False;
  ItemEnabled[29] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff5.sb')) then begin
  Checked[30] := False;
  ItemEnabled[30] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff6.sb')) then begin
  Checked[31] := False;
  ItemEnabled[31] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff7.sb')) then begin
  Checked[32] := False;
  ItemEnabled[32] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff8.sb')) then begin
  Checked[33] := False;
  ItemEnabled[33] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff9.sb')) then begin
  Checked[34] := False;
  ItemEnabled[34] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff10.sb')) then begin
  Checked[35] := False;
  ItemEnabled[35] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff11.sb')) then begin
  Checked[36] := False;
  ItemEnabled[36] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff12.sb')) then begin
  Checked[37] := False;
  ItemEnabled[37] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff13.sb')) then begin
  Checked[38] := False;
  ItemEnabled[38] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff14.sb')) then begin
  Checked[39] := False;
  ItemEnabled[39] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff15.sb')) then begin
  Checked[40] := False;
  ItemEnabled[40] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff16.sb')) then begin
  Checked[41] := False;
  ItemEnabled[41] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff17.sb')) then begin
  Checked[42] := False;
  ItemEnabled[42] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff18.sb')) then begin
  Checked[43] := False;
  ItemEnabled[43] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit01.sb')) then begin
  Checked[45] := False;
  ItemEnabled[45] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit02.sb')) then begin
  Checked[46] := False;
  ItemEnabled[46] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit03.sb')) then begin
  Checked[47] := False;
  ItemEnabled[47] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit04.sb')) then begin
  Checked[48] := False;
  ItemEnabled[48] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit05.sb')) then begin
  Checked[49] := False;
  ItemEnabled[49] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit06.sb')) then begin
  Checked[50] := False;
  ItemEnabled[50] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit07.sb')) then begin
  Checked[51] := False;
  ItemEnabled[51] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit08.sb')) then begin
  Checked[52] := False;
  ItemEnabled[52] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit09.sb')) then begin
  Checked[53] := False;
  ItemEnabled[53] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit10.sb')) then begin
  Checked[54] := False;
  ItemEnabled[54] := False;
	end;
If not FileExists(ExpandConstant('{src}\kits\kit11.sb')) then begin
  Checked[55] := False;
  ItemEnabled[55] := False;
	end;
If not FileExists(ExpandConstant('{src}\content.sb')) then begin
  Checked[56] := False;
  ItemEnabled[56] := False;
	end;
	end else begin
  ItemCaption[0]:= CustomMessage(Lang+'base');
  ItemCaption[1]:= CustomMessage(Lang+'addon');
  ItemCaption[2]:= CustomMessage(Lang+'addon1');
  ItemCaption[3]:= CustomMessage(Lang+'addon2');
  ItemCaption[4]:= CustomMessage(Lang+'addon3');
  ItemCaption[5]:= CustomMessage(Lang+'addon4');
  ItemCaption[6]:= CustomMessage(Lang+'addon5');
  ItemCaption[7]:= CustomMessage(Lang+'addon6');
  ItemCaption[8]:= CustomMessage(Lang+'addon7');
  ItemCaption[9]:= CustomMessage(Lang+'pack');
  ItemCaption[10]:= CustomMessage(Lang+'pack1');
  ItemCaption[11]:= CustomMessage(Lang+'pack2');
  ItemCaption[12]:= CustomMessage(Lang+'pack3');
  ItemCaption[13]:= CustomMessage(Lang+'pack4');
  ItemCaption[14]:= CustomMessage(Lang+'pack5');
  ItemCaption[15]:= CustomMessage(Lang+'pack6');
  ItemCaption[16]:= CustomMessage(Lang+'pack7');
  ItemCaption[17]:= CustomMessage(Lang+'pack8');
  ItemCaption[18]:= CustomMessage(Lang+'stuff');
  ItemCaption[19]:= CustomMessage(Lang+'stuff1');
  ItemCaption[20]:= CustomMessage(Lang+'stuff2');
  ItemCaption[21]:= CustomMessage(Lang+'stuff3');
  ItemCaption[22]:= CustomMessage(Lang+'stuff4');
  ItemCaption[23]:= CustomMessage(Lang+'stuff5');
  ItemCaption[24]:= CustomMessage(Lang+'stuff6');
  ItemCaption[25]:= CustomMessage(Lang+'stuff7');
  ItemCaption[26]:= CustomMessage(Lang+'stuff8');
  ItemCaption[27]:= CustomMessage(Lang+'stuff9');
  ItemCaption[28]:= CustomMessage(Lang+'stuff10');
  ItemCaption[29]:= CustomMessage(Lang+'stuff11');
  ItemCaption[30]:= CustomMessage(Lang+'stuff12');
  ItemCaption[31]:= CustomMessage(Lang+'stuff13');
  ItemCaption[32]:= CustomMessage(Lang+'stuff14');
  ItemCaption[33]:= CustomMessage(Lang+'stuff15');
// Выделение Компонентов Первоначальной Установки
//=============================================================
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Install Dir', Dir) then
for i:= 0 to 33 do Checked[i]:= True else begin
// Выделение Компонентов Повторной Установки и Обновления 
//=============================================================
	Checked[0]:= True;
for i:= 1 to 33 do Checked[i]:= False;
if not DirExists(ExpandConstant('{#Dir}\EP01')) then Checked[2]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP02')) then Checked[3]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP03')) then Checked[4]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP04')) then Checked[5]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP05')) then Checked[6]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP06')) then Checked[7]:= True;
if not DirExists(ExpandConstant('{#Dir}\EP07')) then Checked[8]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP01')) then Checked[10]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP02')) then Checked[11]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP03')) then Checked[12]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP04')) then Checked[13]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP05')) then Checked[14]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP06')) then Checked[15]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP07')) then Checked[16]:= True;
if not DirExists(ExpandConstant('{#Dir}\GP08')) then Checked[17]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP01')) then Checked[19]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP02')) then Checked[20]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP03')) then Checked[21]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP04')) then Checked[22]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP05')) then Checked[23]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP06')) then Checked[24]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP07')) then Checked[25]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP08')) then Checked[26]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP09')) then Checked[27]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP10')) then Checked[28]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP11')) then Checked[29]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP12')) then Checked[30]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP13')) then Checked[31]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP14')) then Checked[32]:= True;
if not DirExists(ExpandConstant('{#Dir}\SP15')) then Checked[33]:= True;
	end;
for i := 1 to 3 do
If not FileExists(ExpandConstant('{src}\data'+IntToStr(i)+'.sb')) then begin
  Checked[0] := False;
  ItemEnabled[0] := False;
	end;
If not FileExists(ExpandConstant('{src}\data_le.sb')) then begin
  Checked[0] := False;
  ItemEnabled[0] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon1.sb')) then begin
  Checked[2] := False;
  ItemEnabled[2] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon2.sb')) then begin
  Checked[3] := False;
  ItemEnabled[3] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon3.sb')) then begin
  Checked[4] := False;
  ItemEnabled[4] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon4.sb')) then begin
  Checked[5] := False;
  ItemEnabled[5] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon5.sb')) then begin
  Checked[6] := False;
  ItemEnabled[6] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon6.sb')) then begin
  Checked[7] := False;
  ItemEnabled[7] := False;
	end;
If not FileExists(ExpandConstant('{src}\addons\addon7.sb')) then begin
  Checked[8] := False;
  ItemEnabled[8] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack1.sb')) then begin
  Checked[10] := False;
  ItemEnabled[10] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack2.sb')) then begin
  Checked[11] := False;
  ItemEnabled[11] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack3.sb')) then begin
  Checked[12] := False;
  ItemEnabled[12] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack4.sb')) then begin
  Checked[13] := False;
  ItemEnabled[13] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack5.sb')) then begin
  Checked[14] := False;
  ItemEnabled[14] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack6.sb')) then begin
  Checked[15] := False;
  ItemEnabled[15] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack7.sb')) then begin
  Checked[16] := False;
  ItemEnabled[16] := False;
	end;
If not FileExists(ExpandConstant('{src}\packs\pack8.sb')) then begin
  Checked[17] := False;
  ItemEnabled[17] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff1.sb')) then begin
  Checked[19] := False;
  ItemEnabled[19] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff2.sb')) then begin
  Checked[20] := False;
  ItemEnabled[20] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff3.sb')) then begin
  Checked[21] := False;
  ItemEnabled[21] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff4.sb')) then begin
  Checked[22] := False;
  ItemEnabled[22] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff5.sb')) then begin
  Checked[23] := False;
  ItemEnabled[23] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff6.sb')) then begin
  Checked[24] := False;
  ItemEnabled[24] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff7.sb')) then begin
  Checked[25] := False;
  ItemEnabled[25] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff8.sb')) then begin
  Checked[26] := False;
  ItemEnabled[26] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff9.sb')) then begin
  Checked[27] := False;
  ItemEnabled[27] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff10.sb')) then begin
  Checked[28] := False;
  ItemEnabled[28] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff11.sb')) then begin
  Checked[29] := False;
  ItemEnabled[29] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff12.sb')) then begin
  Checked[30] := False;
  ItemEnabled[30] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff13.sb')) then begin
  Checked[31] := False;
  ItemEnabled[31] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff14.sb')) then begin
  Checked[32] := False;
  ItemEnabled[32] := False;
	end;
If not FileExists(ExpandConstant('{src}\stuffs\stuff15.sb')) then begin
  Checked[33] := False;
  ItemEnabled[33] := False;
	end;
  end;
  OnClick:= @sndCheck;
  end; 
// Отображение формы компонентов установки 
//=============================================================
  Bevell[0].Show;
  Bevell[0].Style:= bsLowered;
  Bevell[0].SetBounds(ScaleX(216), ScaleY(60), ScaleX(408), ScaleY(134));
  ImgSetVisibility(Images[2], True);
if IsWin64 then ImgSetPosition(Images[2], ScaleX(55), ScaleY(15), ScaleX(101), ScaleY(270)) else
	ImgSetPosition(Images[2], ScaleX(9), ScaleY(15), ScaleX(199), ScaleY(270));
  ComponentLabel.Show;
if not GameUpdate then
  ComponentLabel.Caption:= CustomMessage(Lang+'ComponentsLabel') else
  ComponentLabel.Caption:= CustomMessage(Lang+'ComponentsLabel1');
  WizardForm.ComponentsList.Show;
  ComponentsNextLabel.Show;
  ComponentsNextLabel.Caption:= CustomMessage(Lang+'NextLbl');
  SpaceComponentsLabel.Show;
  ComponentsListOnClickCheck(WizardForm.ComponentsList);
  WizardForm.ComponentsList.OnClickCheck := @ComponentsListOnClickCheck;
  WizardForm.Caption:= CustomMessage(Lang+'ComponentsTitle');
// Отображение кнопок формы установки
//=============================================================
	UTF_Button_Visable('ButtonBack', True);
	UTF_Button_Visable('ButtonCancel', True);
	end;
#endif
// Страница выбора папок установки
//=============================================================
  wpSelectDir: begin
  GetFreeSpaceCaption(nil);  
  ImgSetVisibility(Images[2], True);
if IsWin64 then ImgSetPosition(Images[2], ScaleX(55), ScaleY(15), ScaleX(101), ScaleY(270)) else
	ImgSetPosition(Images[2], ScaleX(5), ScaleY(15), ScaleX(199), ScaleY(270));
for i:= 0 to 2 do Bevell[i].Show;
  Bevell[0].SetBounds(ScaleX(220), ScaleY(55), ScaleX(300), ScaleY(2));
  Bevell[1].SetBounds(ScaleX(220), ScaleY(118), ScaleX(400), ScaleY(2));
  Bevell[2].SetBounds(ScaleX(220), ScaleY(194), ScaleX(300), ScaleY(2));
for i:= 0 to 8 do Selectlbl[i].Show;
  WizardForm.Caption := CustomMessage(Lang+'DirDesc');
  Selectlbl[7].Caption := CustomMessage(Lang+'NoProgramGroupCheck2');
  Selectlbl[9].Caption := CustomMessage(Lang+'Backup');
// Отображение чекбокса и строки копирования игры
//=============================================================
if IsWin64 then begin
if DirExists(ExpandConstant('{#SAVES}\{#Group64}')) then begin
  BtnSetVisibility(Button[3], True);
  Selectlbl[9].Show;
  end;   
	end else begin
if DirExists(ExpandConstant('{#SAVES}\{#Group}')) then begin
  BtnSetVisibility(Button[3], True);
  Selectlbl[9].Show;
  end;  
	end;
// Проверка наличия группы в Меню Пуск 
//=============================================================
	RegQueryStringValue(HKLM, '{#CurrentVer}\Uninstall\{48EBEBBF-B9F8-4520-A3CF-89A730721917}', 'Icon Group', Folder);
if DirExists(ExpandConstant(Folder)) then begin
  Selectlbl[1].Caption:= CustomMessage(Lang+'SelectStartMenu');
  Selectlbl[1].Font.Color:= $808080;
  Selectlbl[8].Font.Color:= $808080;
#ifdef Controler
	UTF_Button_Enabled('ButtonGroup', True);
#else
	UTF_Button_Enabled('ButtonGroup', False);
#endif
	end else begin
  Selectlbl[1].Caption:= CustomMessage(Lang+'SelectStartMenuLbl3');
  Selectlbl[1].Font.Color:= $C0C0C0;
  Selectlbl[8].Font.Color:= $C0C0C0;
	UTF_Button_Enabled('ButtonGroup', True);
  end;
// Отображение кнопок формы установки
//=============================================================
  BtnSetVisibility(Button[2], True);
  BtnSetVisibility(Button[4], True);
	UTF_Button_Visable('ButtonDir', True);
	UTF_Button_Visable('ButtonGroup', True);
	UTF_Button_Visable('ButtonBack', True);
	UTF_Button_Visable('ButtonCancel', True);
	UTF_Button_SetText('ButtonNext', CustomMessage(Lang+'ButtonNext'));
  end;
// Страница дополнительных программ установки
//=============================================================
#ifdef Components
  wpSelectComponents:  
#else
	wpTasks.ID:
#endif
	begin
for i:= 5 to 10 do BtnSetVisibility(Button[i], True);
for i:= 0 to 8 do Taskslbl[i].Show;
  Bevell[0].Show;
  Bevell[0].Style:= bsLowered;
  Bevell[0].SetBounds(ScaleX(260), ScaleY(117), ScaleX(330), ScaleY(90));
  Taskslbl[0].Caption:= CustomMessage(Lang+'SelectTasksLabel');
  Taskslbl[1].Caption:= CustomMessage(Lang+'SelectTasksEditLabel');
  Taskslbl[2].Caption:= CustomMessage(Lang+'Desktop');
  Taskslbl[3].Caption:= CustomMessage(Lang+'Taskbar');
  Taskslbl[4].Caption:= CustomMessage(Lang+'Redist');
  WizardForm.Caption:= CustomMessage(Lang+'TasksName');
// Проверка версии DirectX
//=============================================================
if not RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\DirectX', 'Version', Direct) or (Direct < '{#DIRECT}') then begin
  BtnSetChecked(Button[7], True);
  Taskslbl[5].Caption:= CustomMessage(Lang+'DirectX');
  Taskslbl[5].Cursor:= MyCursor;
  Taskslbl[5].OnClick:= @DirectXLabelClick;
  Taskslbl[5].OnMouseEnter:= @sndEnter;
  Taskslbl[5].SetBounds(ScaleX(290), ScaleY(140), ScaleX(Taskslbl[5].Width), ScaleY(15));
  end else begin
	BtnSetVisibility(Button[7], False);
  Taskslbl[5].Alignment:= taCenter;
  Taskslbl[5].Caption:= CustomMessage(Lang+'DirectX1');
  Taskslbl[5].SetBounds(ScaleX(260), ScaleY(140), ScaleX(330), ScaleY(15));
  end;
// Проверка версии VisualC++ 2010
//=============================================================
if not RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\VisualStudio\10.0\VC\VCRedist\x86', 'Version', Visual) or (Visual < '{#VISUAL10}') then begin
  BtnSetChecked(Button[8], True);
  Taskslbl[6].Caption:= CustomMessage(Lang+'VisualCU');
  Taskslbl[6].Cursor:= MyCursor;
  Taskslbl[6].OnClick:= @VisualCLabelClick10;
  Taskslbl[6].OnMouseEnter:= @sndEnter;
  Taskslbl[6].SetBounds(ScaleX(290), ScaleY(155), ScaleX(Taskslbl[6].Width), ScaleY(15));
  end else begin
	BtnSetVisibility(Button[8], False);
  Taskslbl[6].Alignment:= taCenter;
  Taskslbl[6].Caption:= CustomMessage(Lang+'VisualCU1');
  Taskslbl[6].SetBounds(ScaleX(260), ScaleY(155), ScaleX(330), ScaleY(15));
  end;
// Проверка версии VisualC++ 2013
//=============================================================
if not RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\VisualStudio\12.0\VC\Runtimes\x86', 'Version', Visual) or (Visual < '{#VISUAL13}') then begin
  BtnSetChecked(Button[9], True);
  Taskslbl[7].Caption:= CustomMessage(Lang+'VisualC');
  Taskslbl[7].Cursor:= MyCursor;
  Taskslbl[7].OnClick:= @VisualCLabelClick12;
  Taskslbl[7].OnMouseEnter:= @sndEnter;
  Taskslbl[7].SetBounds(ScaleX(290), ScaleY(170), ScaleX(Taskslbl[7].Width), ScaleY(15));
  end else begin
	BtnSetVisibility(Button[9], False);
  Taskslbl[7].Alignment:= taCenter;
  Taskslbl[7].Caption:= CustomMessage(Lang+'VisualC1');
  Taskslbl[7].SetBounds(ScaleX(260), ScaleY(170), ScaleX(330), ScaleY(15));
  end;
// Проверка версии VisualC++ 2019
//=============================================================
if not RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\VisualStudio\14.0\VC\Runtimes\x86', 'Version', Visual) or (Visual < '{#VISUAL19}') then begin
  BtnSetChecked(Button[10], True);
  Taskslbl[8].Caption:= CustomMessage(Lang+'VisualC19');
  Taskslbl[8].Cursor:= MyCursor;
  Taskslbl[8].OnClick:= @VisualCLabelClick19;
  Taskslbl[8].OnMouseEnter:= @sndEnter;
  Taskslbl[8].SetBounds(ScaleX(290), ScaleY(185), ScaleX(Taskslbl[8].Width), ScaleY(15));
  end else begin
	BtnSetVisibility(Button[10], False);
  Taskslbl[8].Alignment:= taCenter;
  Taskslbl[8].Caption:= CustomMessage(Lang+'VisualC119');
  Taskslbl[8].SetBounds(ScaleX(260), ScaleY(185), ScaleX(330), ScaleY(15));
  end;
// Отображение кнопок формы установки
//=============================================================
if IsWin64 then ImgSetPosition(Images[2], ScaleX(55), ScaleY(15), ScaleX(101), ScaleY(270)) else
	ImgSetPosition(Images[2], ScaleX(22), ScaleY(15), ScaleX(199), ScaleY(270));
	UTF_Button_Visable('ButtonBack', True);
	UTF_Button_Visable('ButtonCancel', True);
	UTF_Button_SetText('ButtonNext', CustomMessage(Lang+'ButtonInstall'));
  end;
// Страница установки 
//=============================================================
  wpInstalling: begin   
	WizardForm.Left:= -10000;
// Создание копии сохранений игры
//=============================================================
if BtnGetChecked(Button[3]) then CreateBackup();
// Удаление файлов предыдущей установки
//=============================================================
	BeforeInstall();
// Отображение формы установки
//=============================================================
	ImgSetPosition(Images[1], ScaleX(0), ScaleY(0), ScaleX(400), ScaleY(146)); 
  ImgSetVisibility(Images[2], False);
// Отображение кнопок и подписей формы установки
//=============================================================
	UTF_Button_Visable('ButtonNext', False);
  BtnSetVisibility(InfoBtn, False);
  BtnSetVisibility(Button[11], True);
  CreateControls();
	SlideShowBox();
// Свернуть форму установки 
//=============================================================
with WizardForm do begin
  ClientWidth:= ScaleX(400);
  ClientHeight:= ScaleY(146);
  Left:= GetSystemMetrics(16)-ClientWidth-ScaleX(5);
  Top:= GetSystemMetrics(17)-ClientHeight+ScaleY(17);
if not GameUpdate then Caption:= CustomMessage(Lang+'SetupAppTitle') else Caption:= CustomMessage(Lang+'SetupAppTitle1');
	Show;
	end;
  end;
// Страница завершения установки
//=============================================================
  wpFinished: begin
  WizardForm.Left:= -10000;
// Восстановить форму установки 
//=============================================================
with WizardForm do begin
  ClientWidth:= ScaleX(640);
  ClientHeight:= ScaleY(300);
	Center;
  Bevell[0].Show;
  Bevell[0].SetBounds(ScaleX(230), ScaleY(200), ScaleX(360), ScaleY(2));
  BtnSetVisibility(InfoBtn, False);
	BtnSetVisibility(Button[1], False);
  Finishlbl[1].Show;
  Finishlbl[3].Show;
  Finishlbl[3].Caption:= CustomMessage(Lang+'FinishedLabel2');
// Сообщения ошибки установки
//=============================================================
if ISDoneError then begin
	BtnSetVisibility(Button[0], False);
  SetTimer(WizardForm.Handle, 1, 1000, CallbackAddr('DiskFlashing'));
  Finishlbl[1].Caption:= CustomMessage(Lang+'SetupAborted');
  Finishlbl[1].Font.Size:= 11;
  Finishlbl[1].Font.Color:= $00FFF0;
  Finishlbl[1].SetBounds(ScaleX(220), ScaleY(70), ScaleX(400), ScaleY(80));
  WizardForm.Caption:= CustomMessage(Lang+'CancelTitle');
  AddLabelToArray(ALabel[2], Finishlbl[1]);
  end else begin
// Сообщения завершения установки
//=============================================================
  SetTimer(WizardForm.Handle, 1, 1000, CallbackAddr('FinishFlashing'));
	BtnSetVisibility(Button[0], True);
  BtnSetPosition(Button[0], ScaleX(240), ScaleY(277), ScaleX(250), ScaleY(18));
  BtnSetText(Button[0], '{#Copyright}'+' - '+'{#Autor}');
  BtnSetVisibility(Button[12], True);
  BtnSetChecked(Button[12], True);
  Finishlbl[0].Show;
  Finishlbl[0].Caption:= CustomMessage(Lang+'FinishedLabel')
  Finishlbl[1].Caption:= CustomMessage(Lang+'FinishedLabel1');
  Finishlbl[2].Show;
  Finishlbl[2].Caption:= CustomMessage(Lang+'Play');
  WizardForm.Caption:= CustomMessage(Lang+'FinishedTitle');
  AddLabelToArray(ALabel[3], Finishlbl[0]);
  end;  
	end; 
// Отображение рисунков и кнопок формы установки 
//=============================================================
	ImgSetPosition(Images[1], ScaleX(0), ScaleY(0), ScaleX(640), ScaleY(300)); 
  ImgSetVisibility(Images[2], True);  
if IsWin64 then ImgSetPosition(Images[2], ScaleX(55), ScaleY(15), ScaleX(101), ScaleY(270)) else
	ImgSetPosition(Images[2], ScaleX(10), ScaleY(20), ScaleX(199), ScaleY(270));
	UTF_Button_Visable('ButtonNext', True);
	UTF_Button_SetText('ButtonNext', CustomMessage(Lang+'ButtonFinish'));
	WizardForm.Show;
  end;
  end;
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
end;
{* Процедуры выполнения установки *}
//=============================================================
procedure CurStepChanged(CurStep: TSetupStep);
begin
  case CurStep of
// Подключение библиотеки ISDone и распаковка файлов 
//=============================================================
  ssInstall: begin
#ifdef Priority
  SetPriorityClass(GetCurrentProcess, HIGH_PRIORITY_CLASS);
#endif
// Подключение Компонентов Установки
//=============================================================
#ifdef Components
  Comps1:= 0; Comps2:= 0; Comps3:= 0;
if IsWin64 then begin
  TmpValue:= 1;
if IsComponentSelected('base') then	Comps1:= Comps1 + TmpValue;     //компонент 1
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\1') then Comps1:= Comps1 + TmpValue;  //компонент 2
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\2') then Comps1:= Comps1 + TmpValue;  //компонент 3
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\3') then Comps1:= Comps1 + TmpValue;  //компонент 4
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\4') then Comps1:= Comps1 + TmpValue;  //компонент 5
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\5') then Comps1:= Comps1 + TmpValue;  //компонент 6
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\6') then Comps1:= Comps1 + TmpValue;  //компонент 7
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\7') then Comps1:= Comps1 + TmpValue;  //компонент 8
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\8') then Comps1:= Comps1 + TmpValue;  //компонент 9
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\9') then Comps1:= Comps1 + TmpValue;  //компонент 10
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\10') then Comps1:= Comps1 + TmpValue; //компонент 11
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\11') then Comps1:= Comps1 + TmpValue; //компонент 12
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\1') then Comps1:= Comps1 + TmpValue;   //компонент 13
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\2') then Comps1:= Comps1 + TmpValue;   //компонент 14
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\3') then Comps1:= Comps1 + TmpValue;   //компонент 15
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\4') then Comps1:= Comps1 + TmpValue;   //компонент 16
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\5') then Comps1:= Comps1 + TmpValue;   //компонент 17
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\6') then Comps1:= Comps1 + TmpValue;   //компонент 18
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\7') then Comps1:= Comps1 + TmpValue;   //компонент 19
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\8') then Comps1:= Comps1 + TmpValue;   //компонент 20
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\9') then Comps1:= Comps1 + TmpValue;   //компонент 21
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\10') then Comps1:= Comps1 + TmpValue;  //компонент 22
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\11') then Comps1:= Comps1 + TmpValue;  //компонент 23
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\1') then Comps1:= Comps1 + TmpValue;  //компонент 24
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\2') then Comps1:= Comps1 + TmpValue;  //компонент 25
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\3') then Comps1:= Comps1 + TmpValue;  //компонент 26
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\4') then Comps1:= Comps1 + TmpValue;  //компонент 27
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\5') then Comps1:= Comps1 + TmpValue;  //компонент 28
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\6') then Comps1:= Comps1 + TmpValue;  //компонент 29
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\7') then Comps1:= Comps1 + TmpValue;  //компонент 30
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\8') then Comps1:= Comps1 + TmpValue;  //компонент 31
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\9') then Comps1:= Comps1 + TmpValue;  //компонент 32
  TmpValue:= 1;
if IsComponentSelected('stuff\10') then Comps2:= Comps2 + TmpValue; //компонент 33
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\11') then Comps2:= Comps2 + TmpValue; //компонент 34
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\12') then Comps2:= Comps2 + TmpValue; //компонент 35
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\13') then Comps2:= Comps2 + TmpValue; //компонент 36
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\14') then Comps2:= Comps2 + TmpValue; //компонент 37
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\15') then Comps2:= Comps2 + TmpValue; //компонент 38
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\16') then Comps2:= Comps2 + TmpValue; //компонент 39
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\17') then Comps2:= Comps2 + TmpValue; //компонент 40
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\18') then Comps2:= Comps2 + TmpValue; //компонент 41
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\1') then Comps2:= Comps2 + TmpValue; 	//компонент 42
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\2') then Comps2:= Comps2 + TmpValue;   //компонент 43
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\3') then Comps2:= Comps2 + TmpValue;   //компонент 44
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\4') then Comps2:= Comps2 + TmpValue;   //компонент 45
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\5') then Comps2:= Comps2 + TmpValue;   //компонент 46
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\6') then Comps2:= Comps2 + TmpValue;   //компонент 47
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\7') then Comps2:= Comps2 + TmpValue;   //компонент 48
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\8') then Comps2:= Comps2 + TmpValue;   //компонент 49
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\9') then Comps2:= Comps2 + TmpValue;   //компонент 50
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\10') then Comps2:= Comps2 + TmpValue;  //компонент 51
  TmpValue:= TmpValue*2;
if IsComponentSelected('kits\11') then Comps2:= Comps2 + TmpValue;  //компонент 52
  TmpValue:= TmpValue*2;
if IsComponentSelected('cont') then Comps2:= Comps2 + TmpValue;     //компонент 53
	end else begin
  TmpValue:= 1;
if IsComponentSelected('base') then	Comps1:= Comps1 + TmpValue;     //компонент 1
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\1') then Comps1:= Comps1 + TmpValue;  //компонент 2
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\2') then Comps1:= Comps1 + TmpValue;  //компонент 3
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\3') then Comps1:= Comps1 + TmpValue;  //компонент 4
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\4') then Comps1:= Comps1 + TmpValue;  //компонент 5
	TmpValue:= TmpValue*2;
if IsComponentSelected('addon\5') then Comps1:= Comps1 + TmpValue;  //компонент 6
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\6') then Comps1:= Comps1 + TmpValue;  //компонент 7
  TmpValue:= TmpValue*2;
if IsComponentSelected('addon\7') then Comps1:= Comps1 + TmpValue;  //компонент 8
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\1') then Comps1:= Comps1 + TmpValue;   //компонент 9
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\2') then Comps1:= Comps1 + TmpValue;   //компонент 10
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\3') then Comps1:= Comps1 + TmpValue;   //компонент 11
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\4') then Comps1:= Comps1 + TmpValue;   //компонент 12
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\5') then Comps1:= Comps1 + TmpValue;   //компонент 13
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\6') then Comps1:= Comps1 + TmpValue;   //компонент 14
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\7') then Comps1:= Comps1 + TmpValue;   //компонент 15
  TmpValue:= TmpValue*2;
if IsComponentSelected('pack\8') then Comps1:= Comps1 + TmpValue;   //компонент 16
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\1') then Comps1:= Comps1 + TmpValue;  //компонент 17
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\2') then Comps1:= Comps1 + TmpValue;  //компонент 18
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\3') then Comps1:= Comps1 + TmpValue;  //компонент 19
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\4') then Comps1:= Comps1 + TmpValue;  //компонент 20
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\5') then Comps1:= Comps1 + TmpValue;  //компонент 21
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\6') then Comps1:= Comps1 + TmpValue;  //компонент 22
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\7') then Comps1:= Comps1 + TmpValue;  //компонент 23
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\8') then Comps1:= Comps1 + TmpValue;  //компонент 24
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\9') then Comps1:= Comps1 + TmpValue;  //компонент 25
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\10') then Comps1:= Comps1 + TmpValue; //компонент 26
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\11') then Comps1:= Comps1 + TmpValue; //компонент 27
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\12') then Comps1:= Comps1 + TmpValue; //компонент 28
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\13') then Comps1:= Comps1 + TmpValue; //компонент 29
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\14') then Comps1:= Comps1 + TmpValue; //компонент 30
  TmpValue:= TmpValue*2;
if IsComponentSelected('stuff\15') then Comps1:= Comps1 + TmpValue; //компонент 31
  end;
#endif
// Форма Прогресса Распаковки Архивов Игры
//=============================================================
  ISDoneCancel:= 0;
  ISDoneError:= True;
#ifdef records
#ifdef Components
if ISDoneInit(ExpandConstant('{tmp}\data.inf'), $F222, Comps1, Comps2, Comps3, MainForm.Handle, 512, @ProgressCallback)
#else
if ISDoneInit(ExpandConstant('{tmp}\data.inf'), $F222, 0, 0, 0, MainForm.Handle, 512, @ProgressCallback)
#endif
#else
#ifdef Components
if ISDoneInit(ExpandConstant('{src}\data.inf'), $F222, Comps1, Comps2, Comps3, MainForm.Handle, 512, @ProgressCallback)
#else
if ISDoneInit(ExpandConstant('{src}\data.inf'), $F222, 0, 0, 0, MainForm.Handle, 512, @ProgressCallback) 
#endif
#endif
  then begin
  repeat
// Язык библиотеки ISDone 
//=============================================================
if Lang = 'rus_' then ChangeLanguage('Russian') else ChangeLanguage('English');
// Проверка Пути Загрузки Файлов Распаковки IsDone 
//=============================================================
if not SetEnvironmentVariable('PATH', ExpandConstant('{tmp}')) then MsgBox(SysErrorMessage(DLLGetLastError), mbError, MB_OK);
// Распаковка выбранных для установки игр 
//=============================================================
#ifdef Controler
#ifdef Components
//if not ISArcExtract(0, 0, ExpandConstant('{src}\content.sb'), ExpandConstant('{userdocs}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
//if not ISArcExtract(0, 0, ExpandConstant('{src}\stuffs\stuff27.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
#endif
#else
#ifdef Components
if isWin64 then begin
if WizardForm.ComponentsList.Checked[0] then begin
#ifdef records
if not GameUpdate then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data1.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 2: data2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data2.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
  end else begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data1.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
  end;
#else
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data1.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 2: data2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data2.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
#endif
  end;
if WizardForm.ComponentsList.Checked[2] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: addon1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon1.sb') then break;
if not ISArcExtract(2, 0, ExpandConstant('{src}\addons\addon1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[3] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: addon2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon2.sb') then break;
if not ISArcExtract(3, 0, ExpandConstant('{src}\addons\addon2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[4] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: addon3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon3.sb') then break;
if not ISArcExtract(4, 0, ExpandConstant('{src}\addons\addon3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[5] then begin 
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: addon4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon4.sb') then break;
if not ISArcExtract(5, 0, ExpandConstant('{src}\addons\addon4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[6] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: addon5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon5.sb') then break;
if not ISArcExtract(6, 0, ExpandConstant('{src}\addons\addon5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[7] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: addon6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon6.sb') then break;
if not ISArcExtract(7, 0, ExpandConstant('{src}\addons\addon6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[8] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: addon7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon7.sb') then break;
if not ISArcExtract(8, 0, ExpandConstant('{src}\addons\addon7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[9] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: addon8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon8.sb') then break;
if not ISArcExtract(9, 0, ExpandConstant('{src}\addons\addon8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[10] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: addon9.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon9.sb') then break;
if not ISArcExtract(10, 0, ExpandConstant('{src}\addons\addon9.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[11] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: addon10.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon10.sb') then break;
if not ISArcExtract(11, 0, ExpandConstant('{src}\addons\addon10.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[12] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: addon11.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon11.sb') then break;
if not ISArcExtract(12, 0, ExpandConstant('{src}\addons\addon11.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[14] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: pack1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack1.sb') then break;
if not ISArcExtract(13, 0, ExpandConstant('{src}\packs\pack1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[15] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: pack2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack2.sb') then break;
if not ISArcExtract(14, 0, ExpandConstant('{src}\packs\pack2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[16] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: pack3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack3.sb') then break;
if not ISArcExtract(15, 0, ExpandConstant('{src}\packs\pack3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[17] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: pack4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack4.sb') then break;
if not ISArcExtract(16, 0, ExpandConstant('{src}\packs\pack4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[18] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: pack5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack5.sb') then break;
if not ISArcExtract(17, 0, ExpandConstant('{src}\packs\pack5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[19] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: pack6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack6.sb') then break;
if not ISArcExtract(18, 0, ExpandConstant('{src}\packs\pack6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[20] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: pack7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack7.sb') then break;
if not ISArcExtract(19, 0, ExpandConstant('{src}\packs\pack7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[21] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: pack8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack8.sb') then break;
if not ISArcExtract(20, 0, ExpandConstant('{src}\packs\pack8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[22] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: pack9.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack9.sb') then break;
if not ISArcExtract(21, 0, ExpandConstant('{src}\packs\pack9.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[23] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: pack10.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack10.sb') then break;
if not ISArcExtract(22, 0, ExpandConstant('{src}\packs\pack10.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[24] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: pack11.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack11.sb') then break;
if not ISArcExtract(23, 0, ExpandConstant('{src}\packs\pack10.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[26] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff1.sb') then break;
if not ISArcExtract(24, 0, ExpandConstant('{src}\stuffs\stuff1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[27] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff2.sb') then break;
if not ISArcExtract(25, 0, ExpandConstant('{src}\stuffs\stuff2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[28] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff3.sb') then break;
if not ISArcExtract(26, 0, ExpandConstant('{src}\stuffs\stuff3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[29] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff4.sb') then break;
if not ISArcExtract(27, 0, ExpandConstant('{src}\stuffs\stuff4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[30] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff5.sb') then break;
if not ISArcExtract(28, 0, ExpandConstant('{src}\stuffs\stuff5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[31] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff6.sb') then break;
if not ISArcExtract(29, 0, ExpandConstant('{src}\stuffs\stuff6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[32] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff7.sb') then break;
if not ISArcExtract(30, 0, ExpandConstant('{src}\stuffs\stuff7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[33] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff8.sb') then break;
if not ISArcExtract(31, 0, ExpandConstant('{src}\stuffs\stuff8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[34] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff9.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff9.sb') then break;
if not ISArcExtract(32, 0, ExpandConstant('{src}\stuffs\stuff9.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[35] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff10.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff10.sb') then break;
if not ISArcExtract(33, 0, ExpandConstant('{src}\stuffs\stuff10.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[36] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff11.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff11.sb') then break;
if not ISArcExtract(34, 0, ExpandConstant('{src}\stuffs\stuff11.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[37] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff12.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff12.sb') then break;
if not ISArcExtract(35, 0, ExpandConstant('{src}\stuffs\stuff12.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[38] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff13.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff13.sb') then break;
if not ISArcExtract(36, 0, ExpandConstant('{src}\stuffs\stuff13.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[39] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff14.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff14.sb') then break;
if not ISArcExtract(37, 0, ExpandConstant('{src}\stuffs\stuff14.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[40] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff15.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff15.sb') then break;
if not ISArcExtract(38, 0, ExpandConstant('{src}\stuffs\stuff15.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[41] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff16.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff16.sb') then break;
if not ISArcExtract(39, 0, ExpandConstant('{src}\stuffs\stuff16.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[42] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff17.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff17.sb') then break;
if not ISArcExtract(40, 0, ExpandConstant('{src}\stuffs\stuff17.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[43] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: stuff18.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff18.sb') then break;
if not ISArcExtract(41, 0, ExpandConstant('{src}\stuffs\stuff18.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[45] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit01.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit01.sb') then break;
if not ISArcExtract(42, 0, ExpandConstant('{src}\kits\kit01.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[46] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit02.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit02.sb') then break;
if not ISArcExtract(43, 0, ExpandConstant('{src}\kits\kit02.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[47] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit03.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit03.sb') then break;
if not ISArcExtract(44, 0, ExpandConstant('{src}\kits\kit03.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[48] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit04.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit04.sb') then break;
if not ISArcExtract(45, 0, ExpandConstant('{src}\kits\kit04.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[49] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit05.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit05.sb') then break;
if not ISArcExtract(46, 0, ExpandConstant('{src}\kits\kit05.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[50] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit06.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit06.sb') then break;
if not ISArcExtract(47, 0, ExpandConstant('{src}\kits\kit06.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[51] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit07.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit07.sb') then break;
if not ISArcExtract(48, 0, ExpandConstant('{src}\kits\kit07.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[52] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit08.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit08.sb') then break;
if not ISArcExtract(49, 0, ExpandConstant('{src}\kits\kit08.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[53] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit09.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit09.sb') then break;
if not ISArcExtract(50, 0, ExpandConstant('{src}\kits\kit09.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[54] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit10.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit10.sb') then break;
if not ISArcExtract(51, 0, ExpandConstant('{src}\kits\kit10.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[55] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: kit11.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\kits'), 'kit11.sb') then break;
if not ISArcExtract(52, 0, ExpandConstant('{src}\kits\kit11.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[56] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 9: content.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'content.sb') then break;
if not ISArcExtract(53, 0, ExpandConstant('{src}\content.sb'), ExpandConstant('{userdocs}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{userdocs}\temp'), notPCFonFLY) then Break;
	end;
	end else begin
if WizardForm.ComponentsList.Checked[0] then begin
#ifdef records
if not GameUpdate then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data_le.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data_le.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data_le.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 2: data2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data2.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
  end else begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
  end;
#else
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data_le.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data_le.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data_le.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 2: data2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data2.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(1, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
#endif
	end;
if WizardForm.ComponentsList.Checked[2] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: addon1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon1.sb') then break;
if not ISArcExtract(2, 0, ExpandConstant('{src}\addons\addon1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[3] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 4: addon2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon2.sb') then break;
if not ISArcExtract(3, 0, ExpandConstant('{src}\addons\addon2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[4] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 4: addon3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon3.sb') then break;
if not ISArcExtract(4, 0, ExpandConstant('{src}\addons\addon3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[5] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 4: addon4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon4.sb') then break;
if not ISArcExtract(5, 0, ExpandConstant('{src}\addons\addon4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[6] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: addon5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon5.sb') then break;
if not ISArcExtract(6, 0, ExpandConstant('{src}\addons\addon5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[7] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: addon6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon6.sb') then break;
if not ISArcExtract(7, 0, ExpandConstant('{src}\addons\addon6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[8] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: addon7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\addons'), 'addon7.sb') then break;
if not ISArcExtract(8, 0, ExpandConstant('{src}\addons\addon7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[10] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack1.sb') then break;
if not ISArcExtract(9, 0, ExpandConstant('{src}\packs\pack1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[11] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack2.sb') then break;
if not ISArcExtract(10, 0, ExpandConstant('{src}\packs\pack2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[12] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack3.sb') then break;
if not ISArcExtract(11, 0, ExpandConstant('{src}\packs\pack3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[13] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack4.sb') then break;
if not ISArcExtract(12, 0, ExpandConstant('{src}\packs\pack4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[14] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack5.sb') then break;
if not ISArcExtract(13, 0, ExpandConstant('{src}\packs\pack5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[15] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack6.sb') then break;
if not ISArcExtract(14, 0, ExpandConstant('{src}\packs\pack6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[16] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack7.sb') then break;
if not ISArcExtract(15, 0, ExpandConstant('{src}\packs\pack7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[17] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: pack8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\packs'), 'pack8.sb') then break;
if not ISArcExtract(16, 0, ExpandConstant('{src}\packs\pack8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[19] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff1.sb') then break;
if not ISArcExtract(17, 0, ExpandConstant('{src}\stuffs\stuff1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[20] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff2.sb') then break;
if not ISArcExtract(18, 0, ExpandConstant('{src}\stuffs\stuff2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[21] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff3.sb') then break;
if not ISArcExtract(19, 0, ExpandConstant('{src}\stuffs\stuff3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[22] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff4.sb') then break;
if not ISArcExtract(20, 0, ExpandConstant('{src}\stuffs\stuff4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[23] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff5.sb') then break;
if not ISArcExtract(21, 0, ExpandConstant('{src}\stuffs\stuff5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[24] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff6.sb') then break;
if not ISArcExtract(22, 0, ExpandConstant('{src}\stuffs\stuff6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[25] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff7.sb') then break;
if not ISArcExtract(23, 0, ExpandConstant('{src}\stuffs\stuff7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[26] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff8.sb') then break;
if not ISArcExtract(24, 0, ExpandConstant('{src}\stuffs\stuff8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[27] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff9.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff9.sb') then break;
if not ISArcExtract(25, 0, ExpandConstant('{src}\stuffs\stuff9.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[28] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff10.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff10.sb') then break;
if not ISArcExtract(26, 0, ExpandConstant('{src}\stuffs\stuff10.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[29] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff11.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff11.sb') then break;
if not ISArcExtract(27, 0, ExpandConstant('{src}\stuffs\stuff11.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[30] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff12.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff12.sb') then break;
if not ISArcExtract(28, 0, ExpandConstant('{src}\stuffs\stuff12.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[31] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff13.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff13.sb') then break;
if not ISArcExtract(29, 0, ExpandConstant('{src}\stuffs\stuff13.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[32] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff14.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff14.sb') then break;
if not ISArcExtract(30, 0, ExpandConstant('{src}\stuffs\stuff14.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
if WizardForm.ComponentsList.Checked[33] then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: stuff15.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}\stuffs'), 'stuff15.sb') then break;
if not ISArcExtract(31, 0, ExpandConstant('{src}\stuffs\stuff15.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
	end;
// Распаковка Архивов Игры
//=============================================================
#else
#ifdef records
if not GameUpdate then begin
if IsWin64 then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data1.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 2: data2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data2.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 4: data4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data4.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: data5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data5.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: data6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data6.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: data7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data7.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: data8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data8.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 9: content.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'content.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\content.sb'), ExpandConstant('{userdocs}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{userdocs}\temp'), notPCFonFLY) then Break;
	end else begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data_le.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data_le.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data_le.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 2: data2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data2.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 4: data4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data4.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: data5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data5.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: data6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data6.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: data8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data8.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
// Распаковка файлов обновления игры 
//=============================================================
	end else begin
if IsWin64 then begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data1.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: data8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data8.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 9: content.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'content.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\content.sb'), ExpandConstant('{userdocs}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{userdocs}\temp'), notPCFonFLY) then Break;
  end else begin
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: data8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data8.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
	end;
	end;
#else
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 1: data1.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data1.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data1.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 2: data2.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data2.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data2.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 3: data3.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data3.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data3.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 4: data4.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data4.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data4.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 5: data5.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data5.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data5.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 6: data6.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data6.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data6.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 7: data7.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data7.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data7.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 8: data8.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'data8.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\data8.sb'), ExpandConstant('{app}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{app}\temp'), notPCFonFLY) then Break;
if not ShowChangeDiskWindow(CustomMessage(Lang+'NextDisk')+' 9: content.sb. '+CustomMessage(Lang+'NextDisk1'), ExpandConstant('{src}'), 'content.sb') then break;
if not ISArcExtract(0, 0, ExpandConstant('{src}\content.sb'), ExpandConstant('{userdocs}'), '', false, '{#password}', ExpandConstant('{tmp}\arc.ini'), ExpandConstant('{userdocs}\temp'), notPCFonFLY) then Break;
#endif
#endif
#endif
// Завершение распаковки архивов игры
//=============================================================
	ISDoneError:= False;
  until True;
// Откат изменений при ошибке или отмене установки
//=============================================================
if ISDoneError then begin
  SuspendProc;  
  KillTimer(0, ShowTimer);
	SlideShowForm.Free;
// Отключение файлов распаковки 
//=============================================================
#ifdef Priority
  SetPriorityClass(GetCurrentProcess, NORMAL_PRIORITY_CLASS);
#endif
#ifdef xtool
  Exec('taskkill', '/f /im fazip.exe', '', SW_HIDE, ewNoWait, i);
  Exec('taskkill', '/f /im xtool.exe', '', SW_HIDE, ewNoWait, i);
#else
  Exec('taskkill', '/f /im 7z.exe', '', SW_HIDE, ewNoWait, i);
  Exec('taskkill', '/f /im prsb.exe', '', SW_HIDE, ewNoWait, i);  
#endif
	Sleep(500);
  ResumeProc;
// Форма отката распаковки
//=============================================================
  WizardForm.Caption:= CustomMessage(Lang+'CancelTitle');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
	WizardForm.Show;
  BtnSetVisibility(Button[0], False);
  BtnSetVisibility(Button[1], False);
  BtnSetVisibility(Button[11], False);
	UTF_Button_Visable('ButtonCancel', False);
for i := 1 to 4 do ISDonelbl[i].Hide;
  ISDonelbl[0].Alignment:= taCenter;
  ISDonelbl[0].Caption:= CustomMessage(Lang+'StatusRollback');
  ISDonelbl[0].Font.Size:= 10;
  ISDonelbl[0].Font.Color:= $00FFFF;
  ISDonelbl[0].SetBounds(ScaleX(0), ScaleY(15), ScaleX(400), ScaleY(40));
  ISDonePB.SetBounds(ScaleX(10), ScaleY(72), ScaleX(380), ScaleY(12));
  ISDoneBvl.SetBounds(ScaleX(10), ScaleY(100), ScaleX(380), ScaleY(2));
  ISDonelbl[5].Caption:= CustomMessage(Lang+'ExitSetupTitle');
  ISDonelbl[5].SetBounds(ScaleX(0), ScaleY(110), ScaleX(400), ScaleY(15));
	WizardForm.Refresh;
// Отображение прогресса отката установки 
//=============================================================
while ISDonePB.Position <> 0 do begin
  ISDonePB.Position:= ISDonePB.Position-1;
  Sleep(6);
  end;
  ISDoneStop;
  HideControls();
  end else
  ISDoneStop;
  end;
// Завершение и установка дополнительных программ 
//=============================================================
if not ISDoneError then begin
  KillTimer(0, ShowTimer);
	SlideShowForm.Free;
	UTF_Button_Visable('ButtonCancel', False);
  HideControls();
// Установки библиотеки vp6vfw
//=============================================================
if not FileExists(ExpandConstant('{sys}\vp6vfw.dll')) then Exec(ExpandConstant('{#UNINSTALL}\vp6\vp6install.exe'), ' /S /Q', '', SW_HIDE, ewWaitUntilTerminated, i);
// Установки DirectX 
//=============================================================
if (BtnGetChecked(Button[7]) or BtnGetChecked(Button[8]) or BtnGetChecked(Button[9]) or BtnGetChecked(Button[10])) then begin
	RedistMessageBox();
if BtnGetChecked(Button[7]) then begin
with RedistForm do begin
  MsgStr0.Caption:= CustomMessage(Lang+'RedistDirectX');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), CustomMessage(Lang+'RedistDirectX'));
if not IsWin64 then Exec(ExpandConstant('{#UNINSTALL}\dx\dx10\directx\DirectX86.exe'), ' /SILENT', '', SW_HIDE, ewWaitUntilTerminated, i) else begin
  Exec(ExpandConstant('{#UNINSTALL}\dx\dx10\directx\DirectX86.exe'), ' /SILENT', '', SW_HIDE, ewWaitUntilTerminated, i);
  Exec(ExpandConstant('{#UNINSTALL}\dx\dx10\directx\DirectX64.exe'), ' /SILENT', '', SW_HIDE, ewWaitUntilTerminated, i);   
	end;
  end;  
	end;
// Установки VisualC++ 2010
//=============================================================
if BtnGetChecked(Button[8]) then begin
with RedistForm do begin
  MsgStr0.Caption:= CustomMessage(Lang+'RedistVisual10');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), CustomMessage(Lang+'RedistVisual10'));
if not IsWin64 then Exec(ExpandConstant('{#UNINSTALL}\vc\vc2010sp1\redist\vcredist_x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i) else begin
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2010sp1\redist\vcredist_x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2010sp1\redist\vcredist_x64.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);
	end;
  end;  
	end;
// Установки VisualC++ 2013
//=============================================================
if BtnGetChecked(Button[9]) then begin
with RedistForm do begin
  MsgStr0.Caption:= CustomMessage(Lang+'RedistVisual13');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), CustomMessage(Lang+'RedistVisual13'));
if not IsWin64 then Exec(ExpandConstant('{#UNINSTALL}\vc\vc2013\redist\vcredist_x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i) else begin
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2013\redist\vcredist_x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2013\redist\vcredist_x64.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);  
	end;
  end;  
	end;
// Установки VisualC++ 2019
//=============================================================
if BtnGetChecked(Button[10]) then begin
with RedistForm do begin
  MsgStr0.Caption:= CustomMessage(Lang+'RedistVisual19');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), CustomMessage(Lang+'RedistVisual19'));
if not IsWin64 then begin
	Exec(ExpandConstant('{#UNINSTALL}\vc\vc2015\redist\vc_redist.x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);
	Exec(ExpandConstant('{#UNINSTALL}\vc\vc2019\redist\vc_redist.x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i); 
	end else begin
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2015\redist\vc_redist.x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2015\redist\vc_redist.x64.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);  
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2019\redist\vc_redist.x86.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);
  Exec(ExpandConstant('{#UNINSTALL}\vc\vc2019\redist\vc_redist.x64.exe'), ' /q /norestart', '', SW_HIDE, ewWaitUntilTerminated, i);  
	end;
  end;  
	end;
	RedistForm.Free;
	end;
// Установка ярлыков игры и записей игры в реестр
//=============================================================
with WizardForm do begin
  ClientWidth:= ScaleX(400);
  ClientHeight:= ScaleY(115);
  Left:= GetSystemMetrics(16)-ClientWidth-ScaleX(5);
  Top:= GetSystemMetrics(17)-ClientHeight+ScaleY(17);
  Caption:= CustomMessage(Lang+'IconsTitle');
	BtnSetVisibility(Button[0], False);
	BtnSetVisibility(Button[1], False);
  BtnSetVisibility(Button[11], False);
for i:= 0 to 3 do Installbl[i].Show;
  Installbl[3].Caption:= CustomMessage(Lang+'ReqLabel');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
if IsWin6 then init_taskbar();
  Sleep(200);
	Show;
  OldProc:= SetWindowLong(WizardForm.ProgressGauge.Handle, GWL_WNDPROC, CallbackAddr('PBProc'));
	end;
  end;
  end;
// Завершение установки 
//=============================================================
  ssPostInstall: begin
// Переименование файлов удаления игры 
//=============================================================
  RenameFile(ExpandConstant('{#UNINSTALL}\unins000.exe'), ExpandConstant('{#UNINSTALL}\Cleanup.exe'));
  RenameFile(ExpandConstant('{#UNINSTALL}\unins000.dat'), ExpandConstant('{#UNINSTALL}\Cleanup.dat'));  
// Удаление игры при ошибке установки
//=============================================================
If ISDoneError then begin
if not GameUpdate then begin
	DelDir(ExpandConstant('{app}'), False);
	DelDir(ExpandConstant('{group}'), False);
	ReqClean;
	end;
	end else begin
  SetWindowlong(WizardForm.ProgressGauge.Handle, GWL_WNDPROC, OldProc);
// Удаление файлов 64-битной версии игры
//=============================================================
If not IsWin64 then begin
	DelDir(ExpandConstant('{app}\__Installer\DLC\EP08'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\EP09'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\EP10'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\EP11'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\GP09'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\GP10'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP16'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP17'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP18'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP20'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP21'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP22'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP23'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP24'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP25'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP26'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP28'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP29'), True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\SP30'), True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'ClientDeltaBuild*.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'magalog2.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'Resource.cfg', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'Strings*.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'thumbnails2.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'thumbnailsdeltabg1.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'thumbnailsdeltapack1.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'UI.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Simulation'), '', 'magalog2.package', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Simulation'), '', 'Resource.cfg', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Simulation'), '', 'SimulationDeltaBuild0.package', FO_DELETE, False, True);
	DelDir(ExpandConstant('{app}\Data\Shared'), True);
	DelDir(ExpandConstant('{app}\Data\Simulation\Gameplay'), True);
	DelDir(ExpandConstant('{app}\Delta'), True);
	DelDir(ExpandConstant('{app}\EP08'), True);
	DelDir(ExpandConstant('{app}\EP09'), True);
	DelDir(ExpandConstant('{app}\EP10'), True);
	DelDir(ExpandConstant('{app}\EP11'), True);
	DelDir(ExpandConstant('{app}\Game\Bin'), True);
	DelDir(ExpandConstant('{app}\GP09'), True);
	DelDir(ExpandConstant('{app}\GP10'), True);
	DelDir(ExpandConstant('{app}\SP16'), True);
	DelDir(ExpandConstant('{app}\SP17'), True);
	DelDir(ExpandConstant('{app}\SP18'), True);
	DelDir(ExpandConstant('{app}\SP20'), True);
	DelDir(ExpandConstant('{app}\SP21'), True);
	DelDir(ExpandConstant('{app}\SP22'), True);
	DelDir(ExpandConstant('{app}\SP23'), True);
	DelDir(ExpandConstant('{app}\SP24'), True);
	DelDir(ExpandConstant('{app}\SP25'), True);
	DelDir(ExpandConstant('{app}\SP26'), True);
	DelDir(ExpandConstant('{app}\SP28'), True);
	DelDir(ExpandConstant('{app}\SP29'), True);
	DelDir(ExpandConstant('{app}\SP30'), True);
// Очистка реестра от 64-битной версии игры
//=============================================================
  RegDeleteValue(HKCR, ExpandConstant('{#MuiCache}'), ExpandConstant('{app}\{#AppEXE64}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Compatibility Assistant\Store'), ExpandConstant('{app}\{#AppEXE64}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE64}')); 
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{56785011-ED84-45D8-A48A-A8C2BD223E3C}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{8FE846FF-C802-4693-9CB8-B67DC0AA8DEA}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{F83C11F5-0A84-4065-B1F4-F28D3EA4ACF2}'+'{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{99974C0B-1F4E-42CB-A9B8-F433ED5D77B5}'+'{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{437658E2-F001-4D6A-91A8-162682E29713}'+'{app}\{#AppEXE64}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{5037F24C-D285-4EEA-908B-8E4E823EE7DE}'+'{app}\{#AppEXE64}'));
// Установки значков папок игры 32-битной Windows 7-10 
//=============================================================
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},1'), ExpandConstant('{app}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{app}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);  
if DirExists(ExpandConstant('{group}')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},1'), ExpandConstant('{group}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{group}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);  
	end;
if DirExists(ExpandConstant('{#SAVES}')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},2'), ExpandConstant('{#SAVES}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);
  end;
if DirExists(ExpandConstant('{#SAVES}\{#Group}')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},3'), ExpandConstant('{#SAVES}\{#Group}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\{#Group}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);
  end;
if DirExists(ExpandConstant('{#SAVES}\{#Group}_Backup')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},3'), ExpandConstant('{#SAVES}\{#Group}_Backup\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\{#Group}_Backup\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);  
  end;
  ResStream[10]:= TResourceStream.Create(HInstance, '_IS_GDF', RT_RCDATA);
  ResStream[10].SaveToFile(ExpandConstant('{app}\__Installer\GDFBinary.dll'));
// Удаление файлов 32-битной версии игры
//=============================================================
	end else begin
if not Legacy then begin
	FilesMaskOperation(ExpandConstant('{app}\__Installer'), '', 'GDFBinary*.dll', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Client'), '', 'Resource_LE.cfg', FO_DELETE, False, True);
	FilesMaskOperation(ExpandConstant('{app}\Data\Simulation'), '', 'Resource_LE.cfg', FO_DELETE, False, True);
	DelDir(ExpandConstant('{app}\__Installer\DLC\LE'), True);
	DelDir(ExpandConstant('{app}\Game\Bin_LE'), True);
// Очистка реетра от 32-битной версии игры
//=============================================================
  RegDeleteValue(HKCR, ExpandConstant('{#MuiCache}'), ExpandConstant('{app}\{#AppEXE}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Compatibility Assistant\Store'), ExpandConstant('{app}\{#AppEXE}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Compatibility Assistant\Store'), ExpandConstant('{app}\{#UninsEXE}'));
  RegDeleteValue(HKCU, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#WindowsNT}\AppCompatFlags\Layers'), ExpandConstant('{app}\{#AppEXE}'));   
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{10D51D33-185B-4930-B38A-7FE99F7787A4}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('{{EE8FC59F-C448-4AEF-B18D-F219A9E4E376}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{0FE41290-ECF0-4AA8-B3B4-A9917AD9720C}'+'{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{B7BCE996-53BA-4E17-93DC-C88C7D49BF2A}'+'{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('TCP Query User{{FCFFCB9A-1A33-4E48-ACD0-54FCA3ABFB7C}'+'{app}\{#AppEXE}'));
  RegDeleteValue(HKLM, ExpandConstant('{#Farewall}'), ExpandConstant('UDP Query User{{DDBB17C2-BE8E-48AA-B9AC-6F54071EED2D}'+'{app}\{#AppEXE}'));
  end else begin
if DirExists(ExpandConstant('{#SAVES}\{#Group}')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},3'), ExpandConstant('{#SAVES}\{#Group}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\{#Group}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);
  end;
if DirExists(ExpandConstant('{#SAVES}\{#Group}_Backup')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},3'), ExpandConstant('{#SAVES}\{#Group}_Backup\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\{#Group}_Backup\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);
  end;
  ResStream[10]:= TResourceStream.Create(HInstance, '_IS_GDF', RT_RCDATA);
  ResStream[10].SaveToFile(ExpandConstant('{app}\__Installer\GDFBinary.dll'));
  end;
// Установки значков папок игры 64-битной Windows 7 - 10
//=============================================================
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},1'), ExpandConstant('{app}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{app}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);  
if DirExists(ExpandConstant('{group}')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},1'), ExpandConstant('{group}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{group}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);   
	end;
if DirExists(ExpandConstant('{#SAVES}')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},2'), ExpandConstant('{#SAVES}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);
  end;
if DirExists(ExpandConstant('{#SAVES}\{#Group64}')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},3'), ExpandConstant('{#SAVES}\{#Group64}\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\{#Group64}\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);
  end;
if DirExists(ExpandConstant('{#SAVES}\{#Group64}_Backup')) then begin
  SetIniString('.ShellClassInfo', 'IconResource', ExpandConstant('{app}\{#UninsEXE},3'), ExpandConstant('{#SAVES}\{#Group64}_Backup\desktop.ini'));
  SetFileAttributes(ExpandConstant('{#SAVES}\{#Group64}_Backup\desktop.ini'), FILE_ATTRIBUTE_HIDDEN);  
	end;
  end;
// Значок игры в Панель задач
//=============================================================
if BtnGetChecked(Button[6]) then begin
if not IsWin64 then begin
if FileExists(ExpandConstant('{group}\{#PlayGame}.lnk')) then
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame}.lnk'), True) else
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE}'), True);
	end else begin
if Legacy then
if FileExists(ExpandConstant('{group}\{#PlayGame}.lnk')) then
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame}.lnk'), True) else
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE}'), True);  
if FileExists(ExpandConstant('{group}\{#PlayGame64}.lnk')) then
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame64}.lnk'), True) else
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE64}'), True);
  end;
  end;  
// Изменение имени пользователя в файле конфигурации
//=============================================================
if IsAnsi(GetUserNameString) then begin
if FileExists(ExpandConstant('{app}\Game\Bin\anadius.cfg')) then ReplaceLine(ExpandConstant('{app}\Game\Bin\anadius.cfg'), '		"Persona"				"anadius"',  '		"Persona"				"'+GetUserNameString+'"');
if FileExists(ExpandConstant('{app}\Game\Bin_LE\anadius.cfg')) then ReplaceLine(ExpandConstant('{app}\Game\Bin_LE\anadius.cfg'), '		"Persona"				"anadius"',  '		"Persona"				"'+GetUserNameString+'"');
	end;
	end;
  end;
// Закрытие формы установки 
//=============================================================
  ssDone: begin
// Запуск игры после установки
//=============================================================
if BtnGetChecked(Button[12]) then begin
if IsWin64 then begin
if FileExists(ExpandConstant('{app}\Game\Bin\anadius.cfg')) then
  Exec(ExpandConstant('{app}\{#AppEXE64}'), ' -alwaysoffline --no_tutorial', '', SW_HIDE, ewNoWait, i) else
	Exec(ExpandConstant('{app}\{#AppEXE64}'), ' --no_tutorial', '', SW_HIDE, ewNoWait, i);
  end else
	Exec(ExpandConstant('{app}\{#AppEXE}'), ' --no_tutorial', '', SW_HIDE, ewNoWait, i);
	end;
	end;
	end;
end;
// Нажатие кнопки Далее 
//=============================================================
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result:= True;
  case CurPageID of
// Сообщение о необходимости выбора игр для установки 
//=============================================================
#ifdef Components
	wpComponents.ID: begin
if GameSize = 0 then begin
  mciSendString('pause MP3', '', 0, 0);
  WizardForm.Hide;
  MyMessageBox();  
if IsWin6 then MessageForm.OnShow:= @deinit_taskbar;
  MessageForm.Caption:= CustomMessage(Lang+'Message13');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), MessageForm.Caption);
  MsgStr.Caption:= CustomMessage(Lang+'Message14');
  MsgStr1.Caption:= CustomMessage(Lang+'Message15');
  SetTimer(MessageForm.Handle, 2, 1000, CallbackAddr('MessageFlashing'));
  AddLabelToArray(Flash, MsgStr);
with TNewIconImage.Create(nil) do begin
  Icon.LoadFromResourceName(HInstance, '_IS_ICON3');
  Parent:= MessageForm;
  Left:= ScaleX(8);
  Top:= ScaleY(12);
  end;
  UTF_Button_Create('NoButton', MessageForm, 'button.png', 390, 150, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor3}, MyCursor);
if MessageForm.ShowModal = mrCancel then begin
  Result:= False;
if BtnGetChecked(Button[1]) then mciSendString('pause MP3', '', 0, 0) else mciSendString('play MP3 repeat', '', 0, 0);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
  WizardForm.Show;
if IsWin6 then init_taskbar();
  end;
  end;
  end;
#endif
// Сообщение об установке в папку Windows 
//=============================================================
	wpSelectDir: begin
if Pos(Uppercase(ExpandConstant('{win}')), Uppercase(ExpandConstant('{app}'))) > 0 then begin
  mciSendString('pause MP3', '', 0, 0);
  WizardForm.Hide;
  MyMessageBox();
if IsWin6 then MessageForm.OnShow:= @deinit_taskbar;
  MessageForm.Caption:= CustomMessage(Lang+'Message2');
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), MessageForm.Caption);
  MsgStr.Caption:= CustomMessage(Lang+'Message3');
  MsgStr1.Caption:= CustomMessage(Lang+'Message4');
  SetTimer(MessageForm.Handle, 2, 1000, CallbackAddr('MessageFlashing'));
  AddLabelToArray(Flash, MsgStr);
with TNewIconImage.Create(nil) do begin
  Icon.LoadFromResourceName(HInstance, '_IS_ICON3');
  Parent:= MessageForm;
  Left:= ScaleX(8);
  Top:= ScaleY(12);
  end;
  UTF_Button_Create('NoButton', MessageForm, 'button.png', 390, 150, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonYes'), {#BtnFontColor3}, MyCursor);
if MessageForm.ShowModal = mrCancel then begin
  Result:= False;
if BtnGetChecked(Button[1]) then mciSendString('pause MP3', '', 0, 0) else mciSendString('play MP3 repeat', '', 0, 0);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
  WizardForm.Show;
if IsWin6 then init_taskbar();
  end;
  end;
	end;  
	end;
end;
// Нажатие кнопки Отмена установки
//=============================================================
procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
  Confirm:= False;
#ifdef Priority
  SetPriorityClass(GetCurrentProcess, NORMAL_PRIORITY_CLASS);
#endif
// Отображение формы отмены установки
//=============================================================
  mciSendString('pause MP3', '', 0, 0);
if CurPageID = wpWelcome then Cancel:= True else begin
if CurPageID = wpInstalling then SlideShowForm.Hide;
  ExitMessage();
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), ExitForm.Caption);
if ExitForm.ShowModal = mrYes then begin
  mciSendString('close MP3', '', 0, 0);
	DeleteFile(ExpandConstant('{tmp}\Music.mp3'));
if CurPageID = wpInstalling then begin
  Cancel:= False;
  ISDoneCancel:= 1;
  ISDoneError:= True;
  end else Cancel:= True;
// Закрытие формы отмены установки
//=============================================================
  end else begin
  Cancel:= False;
if CurPageID = wpInstalling then
if BtnGetChecked(Button[11]) then SlideShowForm.Show else SlideShowForm.Hide;
if BtnGetChecked(Button[1]) then mciSendString('pause MP3', '', 0, 0) else mciSendString('play MP3 repeat', '', 0, 0);
  SetWindowText(StrToInt(ExpandConstant('{apphwnd}')), WizardForm.Caption);
  WizardForm.Show;
if IsWin6 then init_taskbar();
#ifdef Priority
  SetPriorityClass(GetCurrentProcess, HIGH_PRIORITY_CLASS);
#endif
  end;
  end;
end;
// Закрытие и отключение файлов установки 
//=============================================================
procedure DeInitializeSetup();
begin
#ifdef Styles
  UnloadSkin;  
#endif
  gdipShutdown;
end;
//                        УДАЛЕНИЕ ИГРЫ 
//▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
// Отключение музыки
procedure MusicPause(Sender: TObject);
begin
	mciSendString('close MP3', '', 0, 0);
	DeleteFile(ExpandConstant('{tmp}\Music.mp3'));
  Origin.OnMouseEnter:= (nil);
  Origin.Cursor:= crDefault;
end;
// Отображение формы удаления a трее
//=============================================================
procedure UnistallFormOnShow(Sender: TObject);
begin
  ShowWindow(StrToInt(ExpandConstant('{apphwnd}')), SW_HIDE);
end;
// Захват формы удаления при перемещении
//=============================================================
procedure UninstallFormOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(UninstForm.Handle, $0112, $F012, 0);  
end;
// Захват формы прогресса удаления при перемещении
//=============================================================
procedure UninstallProgressFormOnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(UninstallProgressForm.Handle, $0112, $F012, 0);  
end;
// Прогресс удаления игры 
//=============================================================
function UninstallProgressBarProc(hWnd: HWND; Msg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT;
begin
if Msg = PBM_SETPOS then
with UninstallProgressForm do begin
  UninstLbl[1].Caption:= FormatFloat('0%', (ProgressBar.Position*100)/ProgressBar.Max);
  UninstLbl[2].Caption:= Format('%s', [FmtMessage(CustomMessage(Lang+'UninstallStatusLbl'), ['{#SetupSetting("AppName")}'])]);
  Show;
	end;
  Sleep(5);
  Result:= CallWindowProc(OldProgressBarProc, hWnd, Msg, wParam, lParam);
end;
// Закрытие формы удаления 
//=============================================================
procedure UninstallFormOnHide(Sender: TObject);
begin
  SetWindowlong(TUninstallProgressForm(Sender).ProgressBar.Handle, GWL_WNDPROC, OldProgressBarProc);
  UninstallProgressForm.Free;
if FileExists(ExpandConstant('{tmp}\Music.mp3')) then begin
  mciSendString('close MP3', '', 0, 0);
	DeleteFile(ExpandConstant('{tmp}\Music.mp3'));
	end;
end;
// Выбор чекбоксов способа удаления игры
//=============================================================
procedure SelectUnins(hBtn: HWND);
begin
  sndCheck(nil);
  case hBtn of
// Выбор чекбокса удаления игры
//=============================================================
  RemoveBtn[0]: begin
  BtnSetChecked(RemoveBtn[0], True);
  RemoveLbl[1].Font.Color:= $FDB900;
  BtnSetChecked(RemoveBtn[1], False);
  RemoveLbl[2].Font.Color:= $C0C0C0;
  BtnSetChecked(RemoveBtn[2], False);
  RemoveLbl[3].Font.Color:= $C0C0C0;
	end;
// Выбор чекбокса удаления игры и сохранений
//=============================================================
  RemoveBtn[1]: begin
  BtnSetChecked(RemoveBtn[0], False);
  RemoveLbl[1].Font.Color:= $C0C0C0;
  BtnSetChecked(RemoveBtn[1], True);
  RemoveLbl[2].Font.Color:= $FDB900;
  BtnSetChecked(RemoveBtn[2], False);
  RemoveLbl[3].Font.Color:= $C0C0C0;
  end;
// Выбор чекбокса удаления игры, сохранений и резервных копий
//=============================================================
  RemoveBtn[2]: begin
  BtnSetChecked(RemoveBtn[0], False);
  RemoveLbl[1].Font.Color:= $C0C0C0;
  BtnSetChecked(RemoveBtn[1], False);
  RemoveLbl[2].Font.Color:= $C0C0C0;
  BtnSetChecked(RemoveBtn[2], True);
  RemoveLbl[3].Font.Color:= $FDB900;
  end;
	end;
  BtnRefresh(hBtn);
end;
// Выбор строки удаления игры 
//=============================================================
procedure RemoveLabel1Click(Sender: TObject);
begin
  BtnSetChecked(RemoveBtn[0], not BtnGetChecked(RemoveBtn[0]));
  SelectUnins(RemoveBtn[0]);
end;
// Выбор строки удаления игры и игровых данных 
//=============================================================
procedure RemoveLabel2Click(Sender: TObject);
begin
  BtnSetChecked(RemoveBtn[1], not BtnGetChecked(RemoveBtn[1]));
  SelectUnins(RemoveBtn[1]);
end;
// Выбор строки удаления игры, игровых данных и сохранений 
//=============================================================
procedure RemoveLabel3Click(Sender: TObject);
begin
  BtnSetChecked(RemoveBtn[2], not BtnGetChecked(RemoveBtn[2]));
  SelectUnins(RemoveBtn[2]);
end;
// Форма удаления игры 
//=============================================================
function UninstallForm: Integer;
begin
  UninstForm:= CreateCustomForm;
with UninstForm do begin
  ClientWidth:= ScaleX(640);
  ClientHeight:= ScaleY(275);
  BorderStyle:= bsNone;
  OnMouseDown:= @UninstallFormOnMouseDown;
  Center;
  end;
// Значок удаления и отключения музыки
//=============================================================
  Origin:= TNewIconImage.Create(nil);
with Origin do begin
  Icon.LoadFromResourceName(HInstance, ' UNINSTALLICON');
  Parent:= UninstForm;
  AutoSize:= True;
  Left:= ScaleX(600);
  Top:= ScaleY(12);
  Cursor:= MyCursor;
  OnMouseEnter:= @sndEnter;
  OnClick:= @MusicPause;
  end;
// Заголовок удаления игры
//=============================================================
  RemoveLbl[0]:= TLabel.Create(nil);
with RemoveLbl[0] do begin
  Parent:= UninstForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'UninstallStatusLabel');
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 11;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(200), ScaleY(20), ScaleX(395), ScaleY(40));
  Transparent:= True;
  WordWrap:= True;
  end;
// Строка удаления игры
//=============================================================
  RemoveLbl[1]:= TLabel.Create(nil);
with RemoveLbl[1] do begin
  Parent:= UninstForm;
  AutoSize:= True;
  Caption:= CustomMessage(Lang+'UninstalMsg1');
  Cursor:= MyCursor;
  Font.Name:= FontName;
  Font.Color:= $FDB900;
	Font.Size:= 9;
	OnClick:= @RemoveLabel1Click;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(240), ScaleY(110), ScaleX(Width), ScaleY(15));
  Transparent:= True;
  end;
// Чекбокс удаления игры
//=============================================================
  RemoveBtn[0]:= BtnCreate(UninstForm.Handle, ScaleX(220), ScaleY(113), ScaleX(13), ScaleY(13), ExpandConstant('{tmp}\check.png'), 1, True);
  BtnSetChecked(RemoveBtn[0], True);
  BtnSetCursor(RemoveBtn[0], {#Cursor});
  BtnSetEvent(RemoveBtn[0], {#BtnEnter});
  BtnSetEvent(RemoveBtn[0], 1, CallbackAddr('SelectUnins'));
// Строка удаления игры и сохранений
//=============================================================
  RemoveLbl[2]:= TLabel.Create(nil);
with RemoveLbl[2] do begin
  Parent:= UninstForm;
  AutoSize:= True;
  Cursor:= MyCursor;
  Font.Name:= FontName;
	Font.Size:= 9;
	Font.Color:= $C0C0C0;
	OnClick:= @RemoveLabel2Click;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(240), ScaleY(130), ScaleX(Width), ScaleY(15));
  Transparent:= True;
  end;
// Чекбокс удаления игры и сохранений
//=============================================================
  RemoveBtn[1]:= BtnCreate(UninstForm.Handle, ScaleX(220), ScaleY(133), ScaleX(13), ScaleY(13), ExpandConstant('{tmp}\check.png'), 1, True);
  BtnSetCursor(RemoveBtn[1], {#Cursor});
  BtnSetEvent(RemoveBtn[1], {#BtnEnter});
  BtnSetEvent(RemoveBtn[1], 1, CallbackAddr('SelectUnins'));
if IsWin64 then begin
if not DirExists(ExpandConstant('{#SAVES}\{#Group64}')) then begin
  BtnSetVisibility(RemoveBtn[1], False);
	RemoveLbl[2].Visible:= False;
	end else
	RemoveLbl[2].Caption:= CustomMessage(Lang+'UninstalMsg2');
  end else begin
if not DirExists(ExpandConstant('{#SAVES}\{#Group}')) then begin
  BtnSetVisibility(RemoveBtn[1], False);
	RemoveLbl[2].Visible:= False;
	end else
	RemoveLbl[2].Caption:= CustomMessage(Lang+'UninstalMsg2');
	end;
// Строка удаления игры, сохранений и резервных копий
//=============================================================
  RemoveLbl[3]:= TLabel.Create(nil);
with RemoveLbl[3] do begin
  Parent:= UninstForm;
  AutoSize:= True;
  Cursor:= MyCursor;
  Font.Name:= FontName;
	Font.Size:= 9;
	Font.Color:= $C0C0C0;
	OnClick:= @RemoveLabel3Click;
  OnMouseEnter:= @sndEnter;
  SetBounds(ScaleX(240), ScaleY(150), ScaleX(Width), ScaleY(30));
  Transparent:= True;
  end;
  Bevell[0]:= TBevel.Create(nil);
with Bevell[0] do begin
  Parent:= UninstForm;
  SetBounds(ScaleX(220), ScaleY(190), ScaleX(400), ScaleY(2));
  Show;
  end;
// Чекбокс удаления игры, сохранений и резервных копий
//=============================================================
  RemoveBtn[2]:= BtnCreate(UninstForm.Handle, ScaleX(220), ScaleY(153), ScaleX(13), ScaleY(13), ExpandConstant('{tmp}\check.png'), 1, True);
  BtnSetCursor(RemoveBtn[2], {#Cursor});
  BtnSetEvent(RemoveBtn[2], {#BtnEnter});
  BtnSetEvent(RemoveBtn[2], 1, CallbackAddr('SelectUnins'));
if IsWin64 then begin
if not DirExists(ExpandConstant('{#SAVES}\{#Group64}_Backup')) then begin
  BtnSetVisibility(RemoveBtn[2], False);
	RemoveLbl[3].Visible:= False;
	end else
	RemoveLbl[3].Caption:= CustomMessage(Lang+'UninstalMsg3');
  end else begin  
if not DirExists(ExpandConstant('{#SAVES}\{#Group}_Backup')) then begin 	
  BtnSetVisibility(RemoveBtn[2], False);
	RemoveLbl[3].Visible:= False;
	end else
	RemoveLbl[3].Caption:= CustomMessage(Lang+'UninstalMsg3');
	end;
// Сообщение продолжения удаления игры
//=============================================================
  RemoveLbl[4]:= TLabel.Create(nil);
with RemoveLbl[4] do begin
  Parent:= UninstForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'UninstalMsg');
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(220), ScaleY(202), ScaleX(400), ScaleY(32));
  Transparent:= True;
  WordWrap:= True;
  end;
// Установка изображений и кнопок формы удаления игры
//=============================================================
  ImgLoad(UninstForm.Handle, ExpandConstant('{tmp}\fone.jpg'), ScaleX(0), ScaleY(0), UninstForm.ClientWidth, UninstForm.ClientHeight, True, True);
if IsWin64 then ImgLoad(UninstForm.Handle, ExpandConstant('{tmp}\page.png'), ScaleX(55), ScaleY(20), ScaleX(101), ScaleY(270), True, True) else
  ImgLoad(UninstForm.Handle, ExpandConstant('{tmp}\page1.png'), ScaleX(12), ScaleY(20), ScaleX(199), ScaleY(270), True, True);
  UTF_Button_Create('ButtonYesUn', UninstForm, ExpandConstant('{tmp}\button.png'), 325, 260, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'Delete'), {#BtnFontColor2}, MyCursor);
  UTF_Button_Create('ButtonNoUn', UninstForm, ExpandConstant('{tmp}\button.png'), 420, 260, 90, 25, 'Tahoma', 10, [], CustomMessage(Lang+'ButtonCancel'), {#BtnFontColor3}, MyCursor);
  SetTimer(UninstForm.Handle, 1, 1000, CallbackAddr('FinishFlashing'));
  AddLabelToArray(ALabel[3], RemoveLbl[0]);
#ifdef Glass
if isWin10 then
	SetWindowLong(UninstForm.Handle, GWL_EXSTYLE, GetWindowLong(UninstForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW) else
	SetWindowLong(UninstForm.Handle, GWL_EXSTYLE, GetWindowLong(UninstForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(UninstForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
  UninstForm.OnShow:= @UnistallFormOnShow;
  Result:= UninstForm.ShowModal;
end;
// Инициализация удаления игры 
//=============================================================
function InitializeUninstall: Boolean;
begin
  Result:= False;
  ShowWindow(StrToInt(ExpandConstant('{apphwnd}')), SW_HIDE);
// Проверка языка установки
//=============================================================
if IsWin64 then Exec('taskkill', ' /f /im TS4_x64.exe', '', 0, ewWaitUntilTerminated, i) else
  Exec('taskkill', ' /f /im TS4.exe', '', 0, ewWaitUntilTerminated, i);
// Язык установленной системы
//=============================================================
if not RegQueryStringValue(HKLM, '{#Maxis}\The Sims 4', 'Locale', Locale) then begin
  case ActiveLanguage of
  'che': Lang:= 'che_';
  'cze': Lang:= 'cze_';
  'dan': Lang:= 'dan_';
  'deu': Lang:= 'deu_';
  'eng': Lang:= 'eng_';
  'fin': Lang:= 'fin_';
  'fre': Lang:= 'fre_';
  'ita': Lang:= 'ita_';
  'jap': Lang:= 'jap_';
  'kor': Lang:= 'kor_';
  'ned': Lang:= 'ned_';
  'nor': Lang:= 'nor_';
  'pol': Lang:= 'pol_';
  'por': Lang:= 'por_';
  'rus': Lang:= 'rus_';
  'spa': Lang:= 'spa_';
  'swe': Lang:= 'swe_';
  end;
// Язык установленной игры
//=============================================================
	end else begin
  case Locale of
	'cs_CZ': Lang:= 'cze_';
	'da_DK': Lang:= 'dan_';
  'de_DE': Lang:= 'deu_';
  'en_US': Lang:= 'eng_';
  'es_ES': Lang:= 'spa_';
	'fi_FI': Lang:= 'fin_';
  'fr_FR': Lang:= 'fre_';
  'it_IT': Lang:= 'ita_';
  'ja_JP': Lang:= 'jap_';
	'ko_KR': Lang:= 'kor_';
  'nl_NL': Lang:= 'ned_';
	'no_NO': Lang:= 'nor_';
	'pl_PL': Lang:= 'pol_';
	'pt_BR': Lang:= 'por_';
  'ru_RU': Lang:= 'rus_';
	'sv_SE': Lang:= 'swe_';
  'zh_TW': Lang:= 'che_';
  end;  
	end;
// Извлечение файлов формы удаления игры 
//=============================================================
  ExtractDataResource();
  ResStream[11]:= TResourceStream.Create(HInstance, '_IS_FONE', RT_RCDATA);
  ResStream[11].SaveToFile(ExpandConstant('{tmp}\fone.jpg'));
  SetFileAttributes(ExpandConstant('{tmp}\fone.jpg'), FILE_ATTRIBUTE_HIDDEN);
if IsWin64 then begin
  ResStream[12]:= TResourceStream.Create(HInstance, '_IS_PAGE', RT_RCDATA);
  ResStream[12].SaveToFile(ExpandConstant('{tmp}\page.png'));
  SetFileAttributes(ExpandConstant('{tmp}\page.png'), FILE_ATTRIBUTE_HIDDEN);
	end else begin
  ResStream[13]:= TResourceStream.Create(HInstance, '_IS_PAGE1', RT_RCDATA);
  ResStream[13].SaveToFile(ExpandConstant('{tmp}\page1.png'));
  SetFileAttributes(ExpandConstant('{tmp}\page1.png'), FILE_ATTRIBUTE_HIDDEN);
	end;   
  ResStream[14]:= TResourceStream.Create(HInstance, '_IS_CHECK', RT_RCDATA);
  ResStream[14].SaveToFile(ExpandConstant('{tmp}\check.png'));
  SetFileAttributes(ExpandConstant('{tmp}\check.png'), FILE_ATTRIBUTE_HIDDEN);
  ResStream[15]:= TResourceStream.Create(HInstance, '_IS_BUTTON', RT_RCDATA);
  ResStream[15].SaveToFile(ExpandConstant('{tmp}\button.png'));
  SetFileAttributes(ExpandConstant('{tmp}\button.png'), FILE_ATTRIBUTE_HIDDEN);
  ShowSplashScreen(Application.Handle, ExpandConstant('{tmp}\logo.png'), {#Splash}, False, $FFFFFF, 10);
  UnloadDLL(ExpandConstant('{tmp}\isgsg.dll'));
  DeleteFile(ExpandConstant('{tmp}\isgsg.dll'));
  DeleteFile(ExpandConstant('{tmp}\Logo.png'));
  mciSendString(ExpandConstant('open {tmp}\music.mp3 ALIAS MP3'), '', 0, 0);
  mciSendString('play MP3 repeat', '', 0, 0);
if UninstallForm <> mrCancel then Result := True;
end;
// Форма прогресса удаления игры 
//=============================================================
procedure InitializeUninstallProgressForm();
begin
with UninstallProgressForm do begin
  ClientWidth:= ScaleX(400);
  ClientHeight:= ScaleY(110);
  Left:= GetSystemMetrics(16)-ClientWidth-ScaleX(5);
  Top:= GetSystemMetrics(17)-ClientHeight+ScaleY(5);
  BorderStyle:= bsNone;
  OuterNotebook.Hide;
  OnMouseDown:= @UninstallProgressFormOnMouseDown;
// Значок удаления и отключения музыки
//=============================================================
if FileExists(ExpandConstant('{tmp}\Music.mp3')) then begin
  Origin:= TNewIconImage.Create(nil);
with Origin do begin
  Icon.LoadFromResourceName(HInstance, ' UNINSTALLICON');
  Parent:= UninstallProgressForm;
  AutoSize:= True;
  Left:= ScaleX(5);
  Top:= ScaleY(5);
  Cursor:= MyCursor;
  OnMouseEnter:= @sndEnter;
  OnClick:= @MusicPause;
  end;  
	end;
// Заголовок страницы удаления
//=============================================================
	UninstLbl[0]:= TLabel.Create(nil)
with UninstLbl[0] do begin
	Parent:= UninstallProgressForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Caption:= CustomMessage(Lang+'WizardUninstalling');
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(25), ScaleY(25), ScaleX(300), ScaleY(15));
  Transparent:= True;
  WordWrap:= True;
	end;
// Процент выполнения удаления
//=============================================================
  UninstLbl[1]:= TLabel.Create(nil);
with UninstLbl[1] do begin
  Parent:= UninstallProgressForm;
  Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $EBEE0D;
  Font.Size:= 22;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(300), ScaleY(10), ScaleX(90), ScaleY(40));
  Transparent:= True;
  WordWrap:= True;
  end;
// Сообщение выполнения удаления
//=============================================================
	UninstLbl[2]:= TLabel.Create(nil)
with UninstLbl[2] do begin
	Parent:= UninstallProgressForm;
	Alignment:= taCenter;
  AutoSize:= False;
  Font.Name:= FontName;
  Font.Color:= $C0C0C0;
  Font.Size:= 9;
  Font.Style:= [fsBold];
  SetBounds(ScaleX(20), ScaleY(60), ScaleX(360), ScaleY(15));
  Transparent:= True;
  WordWrap:= True;
	end;
// Прогресс выполнения удаления
//=============================================================
with ProgressBar do begin
	Parent:= UninstallProgressForm;
  ProgressBar.Min:= 0;
  ProgressBar.Max:= 350;
  ProgressBar.SetBounds(ScaleX(20), ScaleY(85), ScaleX(360), ScaleY(10));
	end;
  end;
// Подключение изображений формы удаления
//=============================================================
  ImgLoad(UninstallProgressForm.Handle, ExpandConstant('{tmp}\fone.jpg'), ScaleX(0), ScaleY(0), UninstallProgressForm.ClientWidth, UninstallProgressForm.ClientHeight, True, True);
#ifdef Glass
if isWin10 then
	SetWindowLong(UninstallProgressForm.Handle, GWL_EXSTYLE, GetWindowLong(UninstallProgressForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED or WS_EX_APPWINDOW) else
	SetWindowLong(UninstallProgressForm.Handle, GWL_EXSTYLE, GetWindowLong(UninstallProgressForm.Handle, GWL_EXSTYLE) or WS_EX_LAYERED);
	SetLayeredWindowAttributes(UninstallProgressForm.Handle, 0, (255*TransparentPercent)/100, LWA_ALPHA);
#endif
  UninstallProgressForm.OnShow:= @UnistallFormOnShow;
end;
// Процедуры выполнения удаления игры 
//=============================================================
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
#ifdef Priority
  SetPriorityClass(GetCurrentProcess, HIGH_PRIORITY_CLASS);
#endif
  case CurUninstallStep of
// Процесс удаления игры
//=============================================================
	usUninstall: begin
// Удаление ярлыков из Панели Задач и Панели быстрого запуска
//=============================================================
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE}'), False);  
  PinToTaskbar(ExpandConstant('{app}\{#AppEXE64}'), False);  
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame}.lnk'), False);
  PinToTaskbar(ExpandConstant('{group}\{#PlayGame64}.lnk'), False);
// Выбор удаления сохранений игры
//=============================================================
if BtnGetChecked(RemoveBtn[1]) then begin
  DelDir(ExpandConstant('{#SAVES}\{#Group64}'), True);
  DelDir(ExpandConstant('{#SAVES}\{#Group}'), True);
	end;
// Выбор удаления сохранений и резервных копий игры 
//=============================================================
if BtnGetChecked(RemoveBtn[2]) then begin
  DelDir(ExpandConstant('{#SAVES}\{#Group64}'), True);
  DelDir(ExpandConstant('{#SAVES}\{#Group64}_Backup'), True);  
  DelDir(ExpandConstant('{#SAVES}\{#Group}'), True);
  DelDir(ExpandConstant('{#SAVES}\{#Group}_Backup'), True);  
	end;
// Прогресс выполнения удаления
//=============================================================
  OldProgressBarProc:= SetWindowLong(UninstallProgressForm.ProgressBar.Handle, -4, CallbackAddr('UninstallProgressBarProc'));
  UninstallProgressForm.OnHide := @UninstallFormOnHide;
  end;
// Завершение и выход из программы удаления
//=============================================================
	usDone: begin
  ReqClean();
  ShellExec('open', '{#URL}store/', '', '', SW_SHOW, ewNoWait, i);
  end;
	end;
end;
// Отключение файлов программы удаления
//=============================================================
procedure DeinitializeUninstall();
begin
#ifdef Styles
  UnloadSkin;
#endif
  gdipShutdown;
// Очистка папки Temp
//=============================================================
//	Exec('cmd', '&cd/c %tmp%&rd/s/q %tmp% 2>nul &cd/c %temp%&rd/s/q %temp% 2>nul', '', SW_HIDE, ewNoWait, i);
end;
//▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀