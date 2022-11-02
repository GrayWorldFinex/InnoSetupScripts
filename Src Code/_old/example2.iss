[Code]
var
  SP: Longword;
  License: TMemo;
  OldProc: LongInt;

function MemoScroll(h: HWND; Msg, wParam, lParam: LongInt): LongInt;
var
  lpsi: TScrollInfo;
  k, y, x: Integer;
begin
  Result:= CallWindowProc(OldProc, h, Msg, wParam, lParam);
  if Msg = WM_HSCROLL then License.Repaint;
  if (Msg = WM_VSCROLL) or (Msg = WM_MOUSEWHEEL) then begin
    lpsi.cbSize:= SizeOf(lpsi);
    lpsi.fMask:= SIF_POS;
    
    GetScrollInfo(h, SB_VERT, lpsi);
    
    k:= lpsi.nPos;
    y:= spImgGetSpriteCount(SP);

    if k>y then begin
      x:= Trunc(k/y);
      if ((k mod y) = 0) then x:= x-1;
      k:= k- (x*y);
    end;

    spImgSetSpriteIndex(SP, k);
    spApplyChanges(WizardForm.Handle);
    License.Repaint;
  end;
end;
  
procedure InitializeWizard;
begin
  with WizardForm do begin
    #if !defined(IS_ENHANCED) && (VER < 0x06000000)
    ExtractTemporaryFile('CallbackCtrl.dll');
    #endif
    OuterNotebook.Hide;
    Bevel.Hide;

    spInitialize(True, True);
  
    License:= TMemo.Create(nil);
    with License do begin
      Parent:= WizardForm;
      BorderStyle:= bsNone;
      ScrollBars:= ssBoth;
      SetBounds(70, 60, 444, 267);

      ExtractTemporaryFile('gpl-2.0.txt');
      Lines.LoadFromFile(ExpandConstant('{tmp}\gpl-2.0.txt'));
      OldProc:= SetWindowLong(Handle, -4, {#SetcallBack('MemoScroll')});
    end;

    spImgLoad(Handle, '6766.bmp', 0, 0, ClientWidth, ClientHeight, True, True);

    SP:= spImgLoad(Handle, 'a4s.bmp', 444+73, 56, 60, 101, True, True);
    spImgSetBackgroundColor(SP, $FF00FF);
    spImgSetSpriteCount(SP, 14);

    spApplyChanges(Handle);
    PostMessage(NextButton.Handle, $10, 0, 0);
  end;
end;

procedure DeinitializeSetup;
begin
  SetWindowLong(License.Handle, -4, OldProc);
  spShutdown;
end;