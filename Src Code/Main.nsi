
!include "Sections.nsh"
!include "MUI2.nsh"
!include "LogicLib.nsh"
!include "StrFunc.nsh"
!include "FileFunc.nsh"



!define AppName "Steam"
!define AppVersion "2.10.91.91"
!define AppPublisher "Vavle"
!define AppBuildDate "{__DATA__}"
!define AppUrl "http://steamcommunity.com"
!define AppExe "Steam.exe"
!define AppWorkDir ""
!define AppRepacker ""
!define App_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\${AppExe}"
!define App_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${AppName}"
!define App_UNINST_ROOT_KEY "HKLM"
!define START_MENU "${AppName}"
!define APP_SIZE 366000 ;Kb


Var hCtl_steam
Var grBox_Create_Shortcut
Var chkBox_auto_start
Var chkBox_desktop_shrt
Var chkBox_start_shrt
Var gr_Select_lng
Var rbtn_norsk
Var rbtn_romanian
Var rbtn_ukrainian
Var rbtn_greek
Var rbtn_svenska
Var rbtn_brazilian
Var rbtn_japanese
Var rbtn_russian
Var rbtn_thai
Var rbtn_portuguese
Var rbtn_koreana
Var rbtn_bulgarian
Var rbtn_hungarian
Var rbtn_spanish
Var rbtn_turkish
Var rbtn_czech
Var rbtn_danish
Var rbtn_detuch
Var rbtn_italian
Var rbtn_norwegians
Var rbtn_french
Var rbtn_finnish
Var rbtn_english
Var rbtn_schinese
; get
Var get_chkBox_auto_start
Var get_chkBox_desktop_shrt
Var get_chkBox_start_shrt
Var get_rbtn_norsk
Var get_rbtn_romanian
Var get_rbtn_ukrainian
Var get_rbtn_greek
Var get_rbtn_svenska
Var get_rbtn_brazilian
Var get_rbtn_japanese
Var get_rbtn_russian
Var get_rbtn_thai
Var get_rbtn_portuguese
Var get_rbtn_koreana
Var get_rbtn_bulgarian
Var get_rbtn_hungarian
Var get_rbtn_spanish
Var get_rbtn_turkish
Var get_rbtn_czech
Var get_rbtn_danish
Var get_rbtn_detuch
Var get_rbtn_italian
Var get_rbtn_norwegians
Var get_rbtn_french
Var get_rbtn_finnish
Var get_rbtn_english
Var get_rbtn_schinese
Var get_rbtn_po
Var get_sys_lng
Var set_app_lng

Name ${AppName} ${AppVersion}
OutFile "output/${AppName} ${AppVersion}.exe"
SetOverwrite on
Unicode true
RequestExecutionLevel admin
BrandingText " "
UninstallCaption "${AppName} ${AppVersion}"
InstallDir "$PROGRAMFILES\${AppName} "
InstallDirRegKey HKLM "${App_DIR_REGKEY}" ""
ShowInstDetails nevershow
ShowUnInstDetails nevershow
AutoCloseWindow true


!define MUI_WELCOMEPAGE_TITLE_3LINES
!define MUI_WELCOMEPAGE_TITLE "$(TITLE_TXT)"
!define MUI_WELCOMEPAGE_TEXT "$(HEADER_TXT)"
!define MUI_WELCOMEFINISHPAGE_BITMAP "img\modern-wizard.bmp"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "img\modern-header.bmp"
!define MUI_ICON "img\Steam.ico"
!define MUI_UNICON "img\Steam.ico"
  !insertmacro MUI_PAGE_WELCOME
  Page custom PageMain PageDestroy
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES

  !insertmacro MUI_UNPAGE_INSTFILES

  !insertmacro MUI_LANGUAGE "English"
  ; !insertmacro MUI_LANGUAGE "French"
  ; !insertmacro MUI_LANGUAGE "German"
  ; !insertmacro MUI_LANGUAGE "Spanish"
  ; !insertmacro MUI_LANGUAGE "SpanishInternational"
  ; !insertmacro MUI_LANGUAGE "TradChinese"
  ; !insertmacro MUI_LANGUAGE "Korean"
  ; !insertmacro MUI_LANGUAGE "Italian"
  ; !insertmacro MUI_LANGUAGE "Dutch"
  ; !insertmacro MUI_LANGUAGE "Danish"
  ; !insertmacro MUI_LANGUAGE "Swedish"
  ; !insertmacro MUI_LANGUAGE "Norwegian"
  ; !insertmacro MUI_LANGUAGE "NorwegianNynorsk"
  ; !insertmacro MUI_LANGUAGE "Finnish"
  ; !insertmacro MUI_LANGUAGE "Greek"
  !insertmacro MUI_LANGUAGE "Russian"
  ; !insertmacro MUI_LANGUAGE "Portuguese"
  ; !insertmacro MUI_LANGUAGE "PortugueseBR"
  ; !insertmacro MUI_LANGUAGE "Polish"
  !insertmacro MUI_LANGUAGE "Ukrainian"
  ; !insertmacro MUI_LANGUAGE "Czech"
  ; !insertmacro MUI_LANGUAGE "Slovak"
  ; !insertmacro MUI_LANGUAGE "Bulgarian"
  ; !insertmacro MUI_LANGUAGE "Hungarian"
  ; !insertmacro MUI_LANGUAGE "Thai"
  ; !insertmacro MUI_LANGUAGE "Romanian"
  ; !insertmacro MUI_LANGUAGE "Turkish"
  ; !insertmacro MUI_LANGUAGE "Slovenian"
  ; !insertmacro MUI_LANGUAGE "Belarusian"
  ; !insertmacro MUI_LANGUAGE "Malay"
  ; !insertmacro MUI_LANGUAGE "ScotsGaelic"
  ; !insertmacro MUI_LANGUAGE "Corsican"
  ; !insertmacro MUI_LANGUAGE "Hindi"

  VIProductVersion "${AppVersion}"
    !define /date date "%H:%M %d %b, %Y"
    VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "${AppName}"
    VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" ""
    VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "${AppPublisher}"
    VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "${AppPublisher}"
    VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "${AppPublisher} All rights reserved"
    VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "${AppName} ${AppVersion}"
    VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "${AppVersion}"
    VIAddVersionKey /LANG=${LANG_ENGLISH} "RePackBuild" "${AppRepacker}"

!Include "Lng\Language.nsi"

Function PageMain
  ; === steam (type: Dialog) ===
  nsDialogs::Create 1018
  Pop $hCtl_steam
  !insertmacro MUI_HEADER_TEXT "$(LNG_HEADER_TXT)" "$(LNG_HEADER_SELECT_TXT)"
  ; === grBox_Create_Shortcut (type: GroupBox) ===
  ${NSD_CreateGroupBox} 8u 115u 280u 23u "$(GRBOX_SHT_TXT)"
  Pop $grBox_Create_Shortcut

  ; === CheckBox4 (type: Checkbox) ===
  ${NSD_CreateCheckbox} 207u 127u 68u 9u "$(CHBOX_AUTORUN_TXT)"
  Pop $chkBox_auto_start
  ${NSD_SetState} $chkBox_auto_start $get_chkBox_auto_start
  ; === CheckBox3 (type: Checkbox) ===
  ${NSD_CreateCheckbox} 116u 127u 80u 9u "$(CHBOX_DESKTOP_SHT_TXT)"
  Pop $chkBox_desktop_shrt
  ${NSD_SetState} $chkBox_desktop_shrt  $get_chkBox_desktop_shrt
  ; === CheckBox1 (type: Checkbox) ===
  ${NSD_CreateCheckbox} 17u 127u 86u 9u "$(CHBOX_STARTMENU_SHT_TXT)"
  Pop $chkBox_start_shrt
  ${NSD_SetState} $chkBox_start_shrt $get_chkBox_start_shrt
  ; === gr_Select_lng (type: GroupBox) ===
  ${NSD_CreateGroupBox} 8u 0u 280u 114u ""
  Pop $gr_Select_lng

  ; === rbtn_german (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 102u 72u 10u "Norsk"
  Pop $rbtn_norsk
  ${NSD_SetState} $rbtn_norsk $get_rbtn_norsk
  ; === rbtn_romanian (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 102u 72u 10u "Română"
  Pop $rbtn_romanian
  ${NSD_SetState} $rbtn_romanian $get_rbtn_romanian
  ; === rbtn_ukrainian (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 102u 72u 10u "Українська"
  Pop $rbtn_ukrainian
  ${NSD_SetState} $rbtn_ukrainian $get_rbtn_ukrainian
  ; === rbtn_greek (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 12u 72u 10u "Ελληνικά"
  Pop $rbtn_greek
  ${NSD_SetState} $rbtn_greek $get_rbtn_greek
  ; === RadioButton1 (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 89u 72u 10u "Svenska"
  Pop $rbtn_svenska
  ${NSD_SetState} $rbtn_svenska $get_rbtn_svenska
  ; === rbtn_brazilian (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 12u 72u 10u "Português-Brasil"
  Pop $rbtn_brazilian
  ${NSD_SetState} $rbtn_brazilian $get_rbtn_brazilian
  ; === rbtn_japanese (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 77u 72u 10u "日本語"
  Pop $rbtn_japanese
  ${NSD_SetState} $rbtn_japanese $get_rbtn_japanese
  ; === rbtn_russian (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 25u 72u 10u "Русский"
  Pop $rbtn_russian
  ${NSD_SetState} $rbtn_russian $get_rbtn_russian
  ; === rbtn_tchinese (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 65u 72u 10u "ไทย"
  Pop $rbtn_thai
  ${NSD_SetState} $rbtn_thai $get_rbtn_thai
  ; === rbtn_portuguese (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 89u 72u 10u "Português"
  Pop $rbtn_portuguese
  ${NSD_SetState} $rbtn_portuguese $get_rbtn_portuguese
  ; === rbtn_koreana (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 51u 72u 10u "한국어"
  Pop $rbtn_koreana
  ${NSD_SetState} $rbtn_koreana $get_rbtn_koreana
  ; === rbtn_bulgarian (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 38u 72u 10u "Български"
  Pop $rbtn_bulgarian
  ${NSD_SetState} $rbtn_bulgarian $get_rbtn_bulgarian
  ; === rbtn_hungarian (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 38u 72u 10u "Magyar"
  Pop $rbtn_hungarian
  ${NSD_SetState} $rbtn_hungarian $get_rbtn_hungarian
  ; === rbtn_spanish (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 77u 72u 10u "Español"
  Pop $rbtn_spanish
  ${NSD_SetState} $rbtn_spanish $get_rbtn_spanish
  ; === rbtn_turkish (type: RadioButton) ===
  ${NSD_CreateRadioButton} 195u 25u 72u 10u "Türkçe"
  Pop $rbtn_turkish
  ${NSD_SetState} $rbtn_turkish $get_rbtn_turkish
  ; === rbtn_czech (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 51u 72u 10u "Čeština"
  Pop $rbtn_czech
  ${NSD_SetState} $rbtn_czech $get_rbtn_czech
  ; === rbtn_dutch (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 65u 72u 10u "Deutsch"
  Pop $rbtn_detuch
  ${NSD_SetState} $rbtn_detuch $get_rbtn_detuch
  ; === rbtn_danish (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 65u 72u 10u "Dansk"
  Pop $rbtn_danish
  ${NSD_SetState} $rbtn_danish $get_rbtn_danish
  ; === rbtn_italian (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 51u 72u 10u "Italiano"
  Pop $rbtn_italian
  ${NSD_SetState} $rbtn_italian $get_rbtn_italian
  ; === rbtn_dutchs (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 77u 72u 10u "Nederlands"
  Pop $rbtn_norwegians
  ${NSD_SetState} $rbtn_norwegians $get_rbtn_norwegians
  ; === rbtn_french (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 38u 72u 10u "Français"
  Pop $rbtn_french
  ${NSD_SetState} $rbtn_french $get_rbtn_french
  ; === rbtn_finnish (type: RadioButton) ===
  ${NSD_CreateRadioButton} 101u 89u 72u 10u "Suomi"
  Pop $rbtn_finnish
  ${NSD_SetState} $rbtn_finnish $get_rbtn_finnish
  ; === rbtn_english (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 25u 72u 10u "English"
  Pop $rbtn_english
  ${NSD_SetState} $rbtn_english $get_rbtn_english

  ; === rbtn_schinese (type: RadioButton) ===
  ${NSD_CreateRadioButton} 17u 12u 72u 10u "简体中文"
  Pop $rbtn_schinese
  ${NSD_SetState} $rbtn_schinese $get_rbtn_schinese

  ; ${NSD_AddStyle} $rbtn_norsk ${WS_GROUP}

  nsDialogs::Show
FunctionEnd





Function fn_get_sys_lngs
    StrCpy $get_sys_lng $Language
      IntCmp $get_sys_lng 1026 0 lng_tchinese lng_tchinese
      StrCpy $get_rbtn_bulgarian 1
      StrCpy $set_app_lng "bulgarian"
      Goto none_lng
    lng_tchinese:
      IntCmp $get_sys_lng 1028 0 lng_czech lng_czech
      StrCpy $get_rbtn_schinese 1
      StrCpy $set_app_lng "tchinese"
      Goto none_lng
    lng_czech:
      IntCmp $get_sys_lng 1029 0 lng_danish lng_danish
      StrCpy $get_rbtn_czech 1
      StrCpy $set_app_lng "czech"
      Goto none_lng
    lng_danish:
      IntCmp $get_sys_lng 1030 0 lng_german lng_german
      StrCpy $get_rbtn_danish 1
      StrCpy $set_app_lng "danish"
      Goto none_lng
    lng_german:
      IntCmp $get_sys_lng 1031 0 lng_greek lng_greek
      StrCpy $get_rbtn_detuch 1
      StrCpy $set_app_lng "german"
      Goto none_lng
    lng_greek:
      IntCmp $get_sys_lng 1032 0 lng_english lng_english
      StrCpy $get_rbtn_greek 1
      StrCpy $set_app_lng "greek"
      Goto none_lng
    lng_english:
      IntCmp $get_sys_lng 1033 0 lng_spanish lng_spanish
      StrCpy $get_rbtn_english 1
      StrCpy $set_app_lng "english"
      Goto none_lng
    lng_spanish:
      IntCmp $get_sys_lng 1034 0 lng_finnish lng_finnish
      StrCpy $get_rbtn_spanish 1
      StrCpy $set_app_lng "spanish"
      Goto none_lng
    lng_finnish:
      IntCmp $get_sys_lng 1035 0 lng_french lng_french
      StrCpy $get_rbtn_finnish 1
      StrCpy $set_app_lng "finnish"
      Goto none_lng
    lng_french:
      IntCmp $get_sys_lng 1036 0 lng_hungarian lng_hungarian
      StrCpy $get_rbtn_french 1
      StrCpy $set_app_lng "french"
      Goto none_lng
    lng_hungarian:
      IntCmp $get_sys_lng 1038 0 lng_italian lng_italian
      StrCpy $get_rbtn_hungarian 1
      StrCpy $set_app_lng "hungarian"
      Goto none_lng
    lng_italian:
      IntCmp $get_sys_lng 1040 0 lng_japanese lng_japanese
      StrCpy $get_rbtn_italian 1
      StrCpy $set_app_lng "italian"
      Goto none_lng
    lng_japanese:
      IntCmp $get_sys_lng 1041 0 lng_koreana lng_koreana
      StrCpy $get_rbtn_japanese 1
      StrCpy $set_app_lng "japanese"
      Goto none_lng
    lng_koreana:
      IntCmp $get_sys_lng 1042 0 lng_dutch lng_dutch
      StrCpy $get_rbtn_koreana 1
      StrCpy $set_app_lng "koreana"
      Goto none_lng
    lng_dutch:
      IntCmp $get_sys_lng 1043 0 lng_norwegian lng_norwegian
      StrCpy $get_rbtn_norwegians 1
      StrCpy $set_app_lng "dutch"
      Goto none_lng
    lng_norwegian:
      IntCmp $get_sys_lng 1044 0 lng_polish lng_polish
      StrCpy $get_rbtn_norsk 1
      StrCpy $set_app_lng "norwegian"
      Goto none_lng
    lng_polish:
      IntCmp $get_sys_lng 1045 0 lng_brazilian lng_brazilian
      StrCpy $get_rbtn_po 1
      StrCpy $set_app_lng "polish"
      Goto none_lng
    lng_brazilian:
      IntCmp $get_sys_lng 1046 0 lng_romanian lng_romanian
      StrCpy $get_rbtn_brazilian 1
      StrCpy $set_app_lng "brazilian"
      Goto none_lng
    lng_romanian:
      IntCmp $get_sys_lng 1048 0 lng_russian lng_russian
      StrCpy $get_rbtn_romanian 1
      StrCpy $set_app_lng "romanian"
      Goto none_lng
    lng_russian:
      IntCmp $get_sys_lng 1049 0 lng_swedish lng_swedish
      StrCpy $get_rbtn_russian 1
      StrCpy $set_app_lng "russian"
      Goto none_lng
    lng_swedish:
      IntCmp $get_sys_lng 1053 0 lng_thai lng_thai
      StrCpy $get_rbtn_svenska 1
      StrCpy $set_app_lng "swedish"
      Goto none_lng
    lng_thai:
      IntCmp $get_sys_lng 1054 0 lng_turkish lng_turkish
      StrCpy $get_rbtn_thai 1
      StrCpy $set_app_lng "thai"
      Goto none_lng
    lng_turkish:
      IntCmp $get_sys_lng 1055 0 lng_ukrainian lng_ukrainian
      StrCpy $get_rbtn_turkish 1
      StrCpy $set_app_lng "turkish"
      Goto none_lng
    lng_ukrainian:
      IntCmp $get_sys_lng 1058 0 lng_schinese lng_schinese
      StrCpy $get_rbtn_ukrainian 1
      StrCpy $set_app_lng "ukrainian"
      Goto none_lng
    lng_schinese:
      IntCmp $get_sys_lng 2052 0 lng_portuguese lng_portuguese
      StrCpy $get_rbtn_schinese 1
      StrCpy $set_app_lng "schinese"
      Goto none_lng
    lng_portuguese:
      IntCmp $get_sys_lng 2070 0 lng_unkown lng_unkown
      StrCpy $get_rbtn_portuguese 1
      StrCpy $set_app_lng "portuguese"
      Goto none_lng
   lng_unkown:
     StrCpy $set_app_lng "english"
     StrCpy $get_rbtn_english 1
  none_lng:
    StrCpy $get_chkBox_auto_start 1
    StrCpy $get_chkBox_desktop_shrt 1
    StrCpy $get_chkBox_start_shrt 1
FunctionEnd





Function PageDestroy
    ${NSD_GetState} $chkBox_auto_start $get_chkBox_auto_start
    ${NSD_GetState} $chkBox_desktop_shrt $get_chkBox_desktop_shrt
    ${NSD_GetState} $chkBox_start_shrt $get_chkBox_start_shrt
    ${NSD_GetState} $rbtn_norsk $get_rbtn_norsk
    ${NSD_GetState} $rbtn_romanian  $get_rbtn_romanian
    ${NSD_GetState} $rbtn_ukrainian $get_rbtn_ukrainian
    ${NSD_GetState} $rbtn_greek $get_rbtn_greek
    ${NSD_GetState} $rbtn_svenska $get_rbtn_svenska
    ${NSD_GetState} $rbtn_brazilian $get_rbtn_brazilian
    ${NSD_GetState} $rbtn_japanese  $get_rbtn_japanese
    ${NSD_GetState} $rbtn_russian $get_rbtn_russian
    ${NSD_GetState} $rbtn_thai  $get_rbtn_thai
    ${NSD_GetState} $rbtn_portuguese  $get_rbtn_portuguese
    ${NSD_GetState} $rbtn_koreana $get_rbtn_koreana
    ${NSD_GetState} $rbtn_bulgarian $get_rbtn_bulgarian
    ${NSD_GetState} $rbtn_hungarian $get_rbtn_hungarian
    ${NSD_GetState} $rbtn_spanish $get_rbtn_spanish
    ${NSD_GetState} $rbtn_turkish $get_rbtn_turkish
    ${NSD_GetState} $rbtn_czech $get_rbtn_czech
    ${NSD_GetState} $rbtn_danish  $get_rbtn_danish
    ${NSD_GetState} $rbtn_detuch  $get_rbtn_detuch
    ${NSD_GetState} $rbtn_italian $get_rbtn_italian
    ${NSD_GetState} $rbtn_norwegians  $get_rbtn_norwegians
    ${NSD_GetState} $rbtn_french  $get_rbtn_french
    ${NSD_GetState} $rbtn_finnish $get_rbtn_finnish
    ${NSD_GetState} $rbtn_english $get_rbtn_english
    ${NSD_GetState} $rbtn_schinese  $get_rbtn_schinese
      call GetChkRadio
FunctionEnd

Function GetChkRadio
      IntCmp $get_rbtn_bulgarian 1 0 lng_tchinese lng_tchinese
      StrCpy $set_app_lng "bulgarian"
      Goto none_lng
      lng_tchinese:
        IntCmp $get_rbtn_schinese 1 0 lng_czech lng_czech
        StrCpy $set_app_lng "tchinese"
        Goto none_lng
      lng_czech:
        IntCmp $get_rbtn_czech 1 0 lng_danish lng_danish
        StrCpy $set_app_lng "czech"
        Goto none_lng
      lng_danish:
        IntCmp $get_rbtn_danish 1 0 lng_german lng_german
        StrCpy $set_app_lng "danish"
        Goto none_lng
      lng_german:
        IntCmp $get_rbtn_detuch 1 0 lng_greek lng_greek
        StrCpy $set_app_lng "german"
        Goto none_lng
      lng_greek:
        IntCmp  $get_rbtn_greek 1032 0 lng_english lng_english
         StrCpy $set_app_lng "greek"
        Goto none_lng
      lng_english:
        IntCmp $get_rbtn_english 1 0 lng_spanish lng_spanish
        StrCpy $set_app_lng "english"
        Goto none_lng
      lng_spanish:
        IntCmp $get_rbtn_spanish 1 0 lng_finnish lng_finnish
        StrCpy $set_app_lng "spanish"
        Goto none_lng
      lng_finnish:
        IntCmp $get_rbtn_finnish 1 0 lng_french lng_french
        StrCpy $set_app_lng "finnish"
        Goto none_lng
      lng_french:
        IntCmp $get_rbtn_french 1 0 lng_hungarian lng_hungarian
        StrCpy $set_app_lng "french"
        Goto none_lng
      lng_hungarian:
        IntCmp $get_rbtn_hungarian 1 0 lng_italian lng_italian
        StrCpy $set_app_lng "hungarian"
        Goto none_lng
      lng_italian:
        IntCmp $get_rbtn_italian 1 0 lng_japanese lng_japanese
        StrCpy $set_app_lng "italian"
        Goto none_lng
      lng_japanese:
        IntCmp $get_rbtn_japanese 1 0 lng_koreana lng_koreana
        StrCpy $set_app_lng "japanese"
        Goto none_lng
      lng_koreana:
        IntCmp $get_rbtn_koreana 1 0 lng_dutch lng_dutch
        StrCpy $set_app_lng "koreana"
        Goto none_lng
      lng_dutch:
        IntCmp $get_rbtn_norwegians 1 0 lng_norwegian lng_norwegian
        StrCpy $set_app_lng "dutch"
        Goto none_lng
      lng_norwegian:
        IntCmp $get_rbtn_norsk 1 0 lng_polish lng_polish
        StrCpy $set_app_lng "norwegian"
        Goto none_lng
      lng_polish:
        IntCmp $get_rbtn_po 1 0 lng_brazilian lng_brazilian
        StrCpy $set_app_lng "polish"
        Goto none_lng
      lng_brazilian:
        IntCmp $get_rbtn_brazilian 1 0 lng_romanian lng_romanian
        StrCpy $set_app_lng "brazilian"
        Goto none_lng
      lng_romanian:
        IntCmp $get_rbtn_romanian 1 0 lng_russian lng_russian
        StrCpy $set_app_lng "romanian"
        Goto none_lng
      lng_russian:
        IntCmp $get_rbtn_russian 1 0 lng_swedish lng_swedish
        StrCpy $set_app_lng "russian"
        Goto none_lng
      lng_swedish:
        IntCmp $get_rbtn_svenska 1 0 lng_thai lng_thai
        StrCpy $set_app_lng "swedish"
        Goto none_lng
      lng_thai:
        IntCmp $get_rbtn_thai 1 0 lng_turkish lng_turkish
        StrCpy $set_app_lng "thai"
        Goto none_lng
      lng_turkish:
        IntCmp $get_rbtn_turkish 1 0 lng_ukrainian lng_ukrainian
        StrCpy $set_app_lng "turkish"
        Goto none_lng
      lng_ukrainian:
        IntCmp $get_rbtn_ukrainian 1 0 lng_schinese lng_schinese
        StrCpy $set_app_lng "ukrainian"
        Goto none_lng
      lng_schinese:
        IntCmp $get_rbtn_schinese 1 0 lng_portuguese lng_portuguese
        StrCpy $set_app_lng "schinese"
        Goto none_lng
      lng_portuguese:
        IntCmp $get_rbtn_portuguese 1 0 lng_unkown lng_unkown
        StrCpy $set_app_lng "portuguese"
        Goto none_lng
     lng_unkown:
       StrCpy $set_app_lng "english"
     none_lng:
  FunctionEnd

Section main
  call CreateShortCut
  call Install
  
	AddSize ${APP_SIZE}
SectionEnd


Function Install

SetOutPath "$INSTDIR"
SetDetailsPrint textonly
Nsis7z::ExtractWithCallback "$PLUGINSDIR\steam.jar" $R9
DetailPrint "$(INST_HEADER_TXT).............."

WriteRegStr HKCU SOFTWARE\Valve\Steam Language "$set_app_lng"
WriteRegStr HKLM SOFTWARE\Valve\Steam Language "$set_app_lng"
WriteRegStr HKCU "Software\Valve\Steam" "SteamExe" "$INSTDIR/steam.exe"
WriteRegStr HKCU "Software\Valve\Steam" "SteamPath" "$INSTDIR"
WriteRegDWORD HKCU "Software\Valve\Steam" "SuppressAutoRun" 0x0
WriteRegDWORD HKCU "Software\Valve\Steam" "Restart" 0x0
WriteRegDWORD HKCU "Software\Valve\Steam" "RunningAppID" 0x0
WriteRegDWORD HKCU "Software\Valve\Steam" "BigPictureInForeground" 0x0
WriteRegDWORD HKCU "Software\Valve\Steam" "RememberPassword" 0x1
WriteRegStr HKCU "Software\Valve\Steam" "SourceModInstallPath" "$INSTDIR\steamapps\sourcemods"
WriteRegStr HKCU "Software\Valve\Steam" "Rate" "30000"
WriteRegDWORD HKCU "Software\Valve\Steam" "AlreadyRetriedOfflineMode" 0x0
WriteRegDWORD HKCU "Software\Valve\Steam" "DWriteEnable" 0x1
WriteRegDWORD HKCU "Software\Valve\Steam" "StartupMode" 0x0
WriteRegDWORD HKCU "Software\Valve\Steam\ActiveProcess" "pid" 0x22ec
WriteRegStr HKCU "Software\Valve\Steam\ActiveProcess" "SteamClientDll" "$INSTDIR\steamclient.dll"
WriteRegStr HKCU "Software\Valve\Steam\ActiveProcess" "SteamClientDll64" "$INSTDIR\steamclient64.dll"
WriteRegStr HKCU "Software\Valve\Steam\ActiveProcess" "Universe" "Public"
WriteRegStr HKCU "Software\Valve\Steam\Apps" "" ""

WriteRegStr HKLM "SOFTWARE\Valve" "" ""
WriteRegStr HKLM "SOFTWARE\Valve\Steam" "Language" $set_app_lng
WriteRegDWORD HKLM "SOFTWARE\Valve\Steam" "SteamPID" 0x22ec
WriteRegStr HKLM "SOFTWARE\Valve\Steam" "TempAppCmdLine" ""
WriteRegStr HKLM "SOFTWARE\Valve\Steam" "InstallPath" "$INSTDIR"
WriteRegStr HKLM "SOFTWARE\Valve\Steam\NSIS" "Path" "$INSTDIR"
WriteRegStr HKLM "SOFTWARE\Valve\Steam\NSIS" "InstallerLanguage" "$LANGUAGE"
WriteRegStr HKLM "SOFTWARE\Valve\SteamService" "installpath_default" "$INSTDIR"





  nsExec::Exec "$\"$INSTDIR\bin\steamservice.exe$\" /Install"
FunctionEnd

Function CreateShortCut
  ${if} $get_chkBox_start_shrt == 1
    CreateDirectory "$SMPROGRAMS\${START_MENU}"
    CreateShortCut "$SMPROGRAMS\${START_MENU}\${AppName}.lnk" "$INSTDIR\${AppExe}"
    CreateShortCut "$SMPROGRAMS\${START_MENU}\Website.lnk" "$INSTDIR\${AppName}.url"
    CreateShortCut "$SMPROGRAMS\${START_MENU}\Uninstall ${AppName}.lnk" "$INSTDIR\uninstall.exe"
  ${EndIf}
  ${if} $get_chkBox_desktop_shrt == 1
    CreateShortCut "$Desktop\${AppName}.lnk" "$INSTDIR\${AppExe}"
   ${EndIf}
  ${If} $get_chkBox_auto_start == 1 
    WriteRegStr HKCU Software\Microsoft\Windows\CurrentVersion\Run Steam "$\"$INSTDIR\steam.exe$\" -silent"
    WriteRegDWORD HKCU "Software\Valve\Steam" "SuppressAutoRun" 0x1
  ${EndIf}
FunctionEnd

Function .onInit

   InitPluginsDir ;
  !insertmacro MUI_LANGDLL_DISPLAY
  Call fn_get_sys_lngs
;  File "/oname=$PLUGINSDIR\steam.jar" "D:\My Documents\Project\----\Steam.7z"
FunctionEnd



Section -Post
  WriteUninstaller "$INSTDIR\uninstall.exe"
  WriteRegStr HKLM "${App_DIR_REGKEY}" "" "$INSTDIR\${AppExe}"
  WriteRegStr ${App_UNINST_ROOT_KEY} "${App_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${App_UNINST_ROOT_KEY} "${App_UNINST_KEY}" "UninstallString" "$INSTDIR\uninstall.exe"
  WriteRegStr ${App_UNINST_ROOT_KEY} "${App_UNINST_KEY}" "DisplayIcon" "$INSTDIR\${AppExe}"
  WriteRegStr ${App_UNINST_ROOT_KEY} "${App_UNINST_KEY}" "DisplayVersion" "${AppVersion}"
  WriteRegStr ${App_UNINST_ROOT_KEY} "${App_UNINST_KEY}" "Publisher" "${AppPublisher}"
SectionEnd




Section Uninstall
  SetDetailsPrint listonly
  DetailPrint "Unistalling"
  RMDir /r "$INSTDIR"
  Delete "$INSTDIR\${AppName}.url"
  Delete "$INSTDIR\uninstall.exe"

  Delete "$SMPROGRAMS\${START_MENU}\Uninstall ${AppName}.lnk"
  Delete "$SMPROGRAMS\${START_MENU}\Website.lnk"
  Delete "$Desktop\${AppName}.lnk"


  RMDir /r "$SMPROGRAMS\${START_MENU}"
  Delete "$SMPROGRAMS\${START_MENU}"
  Delete "$SMPROGRAMS\${START_MENU}\${AppName}.lnk"

  RMDir "$INSTDIR"
  DeleteRegKey HKCU "SOFTWARE\Valve\Steam"
  DeleteRegKey HKLM "SOFTWARE\Valve\Steam"
  DeleteRegKey ${App_UNINST_ROOT_KEY} "${App_UNINST_KEY}"
  DeleteRegKey HKLM "${App_DIR_REGKEY}"
  SetAutoClose true


SectionEnd