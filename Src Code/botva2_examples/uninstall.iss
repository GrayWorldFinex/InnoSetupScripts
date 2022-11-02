;Created by South.Tver 02.2010
;пример "скинирования" анинсталла

#include "Modules\botva2.iss"
#include "Modules\ProgressBar.iss"

[Setup]
AppName=Uninstall by South.Tver
AppVerName=Uninstall by South.Tver
DefaultDirName={pf}\ImgUninstall
OutputBaseFilename=setup

[Files]
Source: {win}\help\*; DestDir: {app}\Files; Flags: external recursesubdirs
Source: {fonts}\*; DestDir: {app}\Files; Flags: external recursesubdirs

Source: Files\*; Flags: dontcopy
Source: Files\*; DestDir:{app}\uninst_tmp

[Code]

type
  TPBProc = function (h:hWnd;Msg,wParam,lParam:Longint):Longint;

var
  UninstPB: TImgPB;
  UninstPBOldProc:Longint;
  UFCaption:string;
  
function SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: Longint): Longint; external 'SetWindowLongA@user32.dll stdcall';
function CallWindowProc(lpPrevWndFunc: Longint; hWnd: HWND; Msg: UINT; wParam, lParam: Longint): Longint; external 'CallWindowProcA@user32.dll stdcall';
function CallBackProc(P:TPBProc;ParamCount:integer):LongWord; external 'wrapcallbackaddr@{tmp}\CallbackCtrl.dll stdcall delayload';

function UninstPBProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
  pr,i1,i2:Extended;
  p:string;
begin
  if Msg=$2 then SetWindowLong(h,-4,UninstPBOldProc);

  Result:=CallWindowProc(UninstPBOldProc,h,Msg,wParam,lParam);
  
  if (Msg=$402) and (UninstallProgressForm.ProgressBar.Position>UninstallProgressForm.ProgressBar.Min) then begin
    i1:=UninstallProgressForm.ProgressBar.Position-UninstallProgressForm.ProgressBar.Min;
    i2:=UninstallProgressForm.ProgressBar.Max-UninstallProgressForm.ProgressBar.Min;
    pr:=(i1*100)/i2;
    p:=' - ['+Format('%f',[pr])+'%]';
    StringChange(p,',','.');

    UninstallProgressForm.Caption:=UFCaption+p;

    ImgPBSetPosition(UninstPB,pr);
    ImgApplyChanges(UninstallProgressForm.InstallingPage.Handle);
  end;
end;

function InitializeUninstall: Boolean;
var
  app,tmp:string;
begin
  app:=AddBackSlash(ExpandConstant('{app}'));
  tmp:=AddBackSlash(ExpandConstant('{tmp}'));
  FileCopy(app+'uninst_tmp\botva2.dll',tmp+'botva2.dll',False);
  FileCopy(app+'uninst_tmp\CallbackCtrl.dll',tmp+'CallbackCtrl.dll',False);
  FileCopy(app+'uninst_tmp\nfs.jpg',tmp+'nfs.jpg',False);
  FileCopy(app+'uninst_tmp\pb.png',tmp+'pb.png',False);
  FileCopy(app+'uninst_tmp\pbbkg.png',tmp+'pbbkg.png',False);
  Result:=True;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep=usUninstall then begin
    UninstallProgressForm.ProgressBar.Hide;
    ImgLoad(UninstallProgressForm.InstallingPage.Handle,ExpandConstant('{tmp}\nfs.jpg'),0,0,UninstallProgressForm.InstallingPage.Width,UninstallProgressForm.InstallingPage.Height,True,True);
    UninstPB:=ImgPBCreate(UninstallProgressForm.InstallingPage.Handle, ExpandConstant('{tmp}\pbbkg.png'), ExpandConstant('{tmp}\pb.png'),UninstallProgressForm.ProgressBar.Left,100,UninstallProgressForm.ProgressBar.Width,25);
    ImgApplyChanges(UninstallProgressForm.InstallingPage.Handle);
    UFCaption:=UninstallProgressForm.Caption;
    UninstPBOldProc:=SetWindowLong(UninstallProgressForm.ProgressBar.Handle,-4,CallBackProc(@UninstPBProc,4));
  end;
end;

procedure DeinitializeUninstall;
begin
  gdipShutdown;
end;

