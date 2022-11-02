!ifndef BOTVA3_INCLUDED
!define BOTVA3_INCLUDED

; ������ ��� ������ � ����������� botva3.dll ������  1.1.0
; Created by Krinkels[krinkels.org] 06.2016

; �������������� ������� ��� ������
!define BtnClickEventID      1;
!define BtnMouseEnterEventID 2;
!define BtnMouseLeaveEventID 3;
!define BtnMouseMoveEventID  4;
!define BtnMouseDownEventID  5;
!define BtnMouseUpEventID    6;

; ������������ ������ �� �������
!define balLeft    0  ; ������������ ������ �� ������ ����
!define balCenter  1  ; �������������� ������������ ������ �� ������
!define balRight   2  ; ������������ ������ �� ������� ����
!define balVCenter 4  ; ������������ ������������ ������ �� ������
;procedure BtnRefresh( const hwndParent: HWND; const string_size: integer; const variables: PChar; const stacktop: pointer; const extraparameters: pointer = nil ) cdecl;

; ������ � ��������, �������:
!define BtnCreate "botva3::BtnCreate_ /NOUNLOAD"
; ���������� ������. BtnCreate [hParent] [FileName] [Left] [Top] [Width] [Height] [ShadowWidth] [IsCheckBtn]
; hParent           - ����� ����-��������, �� ������� ����� ������� ������
; FileName          - ���� � ������������ ��������� ������
;                     ��� ������� ������ ����� 4 ��������� ������ (�������������� 4 �����������)
;                     ��� ������ � IsCheckBtn=True ����� 8 ����������� (��� ��� ��������)
;                     ����������� ��������� ������ ������������� �����������
; Left,Top,
; Width,Height      - ��� ������������. �� �� ��� � ��� ������� ������
; ShadowWidth       - ���-�� �������� �� ���� ������� ������, �� �������� �� ������� �� �������.
;                     ����� ����� ��������� ������ � ������ �� ��� �������� ��� ��������
; IsCheckBtn        - ���� True, �� ����� ������� ������ (������ CheckBox) ������� ���������� � ����������� ���������
;                     ���� False, �� ��������� ������� ������
; � ����� - ����� ��������� ������

!define BtnRefresh "botva3::BtnRefresh_ /NOUNLOAD"
; BtnRefresh [h]
; ���������� �������������� ������, � ����� ������� ���������. ��������, ���� ������ �� �������� ����������������
; h - ����� ������ (��������� ������������ BtnCreate)

!define BtnSetText "botva3::BtnSetText_ /NOUNLOAD"
; BtnSetText [h] [Text]
; ������������� ����� �� ������
; h    - ����� ������ (��������� ������������ BtnCreate)
; Text - �����, ������� �� ����� ������� �� ������

!define BtnGetText "botva3::BtnGetText_ /NOUNLOAD"
; BtnGetText [h]
; �������� ����� ������
; h    - ����� ������ (��������� ������������ BtnCreate)
; � ����� ���������� �����

!define BtnSetTextAlignment "botva3::BtnSetTextAlignment_ /NOUNLOAD"
; BtnSetTextAlignment [h] [HorIndent] [VertIndent] [Alignment]
; ������������� ������������ ������ �� ������
; h          - ����� ������ (��������� ������������ BtnCreate)
; HorIndent  - �������������� ������ ������ �� ���� ������
; VertIndent - ������������ ������ ������ �� ���� ������
; Alignment  - ������������ ������. �������� ����������� balLeft, balCenter, balRight, balVCenter,
;              ��� ����������� balVCenter � ����������

!define BtnGetVisibility "botva3::BtnGetVisibility_ /NOUNLOAD"
; BtnGetVisibility [h]
; �������� ��������� ������
; h - ����� ������ (��������� ������������ BtnCreate)
; � ����� ��������� ������ ( 1 ��� 0 )

!define BtnSetVisibility "botva3::BtnSetVisibility_ /NOUNLOAD"
; BtnSetVisibility [h] [Value]
; ������������� ��������� ������ (������ Button.Visible:=True / Button.Visible:=False)
; h     - ����� ������ (��������� ������������ BtnCreate)
; Value - �������� ���������( 1 ��� 0 )

!define BtnGetEnabled "botva3::BtnGetEnabled_ /NOUNLOAD"
; BtnGetEnabled [h]
; �������� ����������� ������ (������ f:=Button.Enabled)
; h - ����� ������ (��������� ������������ BtnCreate)
; � ����� ����������� ������ ( 1 ��� 0 )

!define BtnSetEnabled "botva3::BtnSetEnabled_ /NOUNLOAD"
; BtnSetEnabled [h] [Value]
; ������������ ����������� ������
; h - ����� ������ (��������� ������������ BtnCreate)
; Value - �������� ����������� ������

 !define BtnSetFont "botva3::BtnSetFont_ /NOUNLOAD"
; BtnSetFont [h] [Font]
; ������������� ����� ��� ������
; h    - ����� ������ (��������� ������������ BtnCreate)
; Font - ���������� ���������������� ������

!define BtnSetFontColor "botva3::BtnSetFontColor_ /NOUNLOAD"
; BtnSetFontColor [h] [NormalFontColor] [FocusedFontColor] [PressedFontColor] [DisabledFontColor]
; ������������� ���� ������ ��� ������ �� ���������� � ����������� ����������
; h                 - ����� ������ (��������� ������������ BtnCreate)
; NormalFontColor   - ���� ������ �� ����� � ���������� ���������
; FocusedFontColor  - ���� ������ �� ����� � ������������ ���������
; PressedFontColor  - ���� ������ �� ����� � ������� ���������
; DisabledFontColor - ���� ������ �� ����� � ����������� ���������

!define BtnSetChecked "botva3::BtnSetChecked_ /NOUNLOAD"
; BtnSetChecked [h] [Value]
; ������������ ��������� (��������/���������) ������
; h - ����� ������ (��������� ������������ BtnCreate)
; Value - �������� ��������� ������

!define BtnGetChecked "botva3::BtnGetChecked_ /NOUNLOAD"
; BtnGetChecked [h]
; �������� ��������� (��������/���������) ������ ( 1 ��� 0 )
; h - ����� ������ (��������� ������������ BtnCreate)

!define BtnSetEvent "botva3::BtnSetEvent_ /NOUNLOAD"
; BtnSetEvent [h] [EventID] [Event]
; ������������� ������� ��� ������
; h       - ����� ������ (��������� ������������ BtnCreate)
; EventID - ������������� �������, �������� �����������   BtnClickEventID, BtnMouseEnterEventID, BtnMouseLeaveEventID, BtnMouseMoveEventID
; Event   - ����� ��������� ����������� ��� ����������� ���������� �������. �������� ����� ����� GetFunctionAddress

!define BtnSetPosition "botva3::BtnSetPosition_ /NOUNLOAD"
; BtnSetPosition [h] [NewLeft] [NewTop] [NewWidth] [NewHeight]
; ������������� ���������� ������ �������� ���� � ������ ������
; h                   - ����� ������ (��������� ������������ BtnCreate)
; NewLeft, NewTop     - ����� ���������� �������� ������ ���� (� ����������� ������������� ����)
; NewWidth, NewHeight - ����� ������, ������ ������

!define BtnGetPosition "botva3::BtnGetPosition /NOUNLOAD"
; BtnGetPosition [h]
; �������� ���������� ������ �������� ���� � ������ ������
; h             - ����� ������ (��������� ������������ BtnCreate)
; � ����� �����:
; Left, Top     - ���������� �������� ������ ���� (� ����������� ������������� ����)
; Width, Height - ������, ������ ������

!define BtnSetCursor "botva3::BtnSetCursor /NOUNLOAD"
; BtnSetCursor [h] [hCur]
; ������������� ������ ��� ������
; h    - ����� ������ (��������� ������������ BtnCreate)
; hCur - ���������� ���������������� �������

!define GetSysCursorHandle "botva3::GetSysCursorHandle_ /NOUNLOAD"
;-----------------------------------------------------------------------------------------------------------------

!define CheckBoxCreate "botva3::CheckBoxCreate_ /NOUNLOAD"
; CheckBoxCreate [hParent] [FileName] [Left] [Top] [Width] [Height] [GroupID] [TextIndent]
; hParent,FileName,Left,Top,Width,Height ��� � ������
; GroupID - ��� ������������. � ����� ������ ����� ���� ������ ������ 1 ���������. 
; GroupID=0 - ��� ������. ��� ����� �������. ��������� �����������
; TextIndent - ������ ������ �� �������� ��������/����������� (� ��������)

; ��� ��������� ��������/������� �� �������� � ��������
!define CheckBoxSetText "botva3::CheckBoxSetText_ /NOUNLOAD"
!define CheckBoxGetText "botva3::CheckBoxGetText__ /NOUNLOAD"
!define CheckBoxSetFont "botva3::CheckBoxSetFont_ /NOUNLOAD"
!define CheckBoxSetEvent "botva3::CheckBoxSetEvent_ /NOUNLOAD"
!define CheckBoxSetFontColor "botva3::CheckBoxSetFontColor_ /NOUNLOAD"
!define CheckBoxGetEnabled "botva3::CheckBoxGetEnabled_ /NOUNLOAD"
!define CheckBoxSetEnabled "botva3::CheckBoxSetEnabled_ /NOUNLOAD"
!define CheckBoxGetVisibility "botva3::CheckBoxGetVisibility_ /NOUNLOAD"
!define CheckBoxSetVisibility "botva3::CheckBoxSetVisibility_ /NOUNLOAD"
!define CheckBoxSetCursor "botva3::CheckBoxSetCursor_ /NOUNLOAD"
!define CheckBoxSetChecked "botva3::CheckBoxSetChecked_ /NOUNLOAD"
!define CheckBoxGetChecked "botva3::CheckBoxGetChecked_ /NOUNLOAD"
!define CheckBoxRefresh "botva3::CheckBoxRefresh_ /NOUNLOAD"
!define CheckBoxSetPosition "botva3::CheckBoxSetPosition_ /NOUNLOAD"
!define CheckBoxGetPosition "botva3::CheckBoxGetPosition_ /NOUNLOAD"
;-----------------------------------------------------------------------------------------------------------------

!define ImgLoad "botva3::ImgLoad_ /NOUNLOAD"
; ImgLoad [Wnd] [FileName] [Left] [Top] [Width] [Height] [Stretch] [IsBkg]
; ��������� ����������� � ������, ��������� ���������� ���������
; Wnd          - ����� ����, � ������� ����� �������� �����������
; FileName     - ���� �����������
; Left,Top     - ���������� �������� ������ ���� ������ ����������� (� ����������� ���������� ������� Wnd)
; Width,Height - ������, ������ �����������
;                ���� Stretch=True, �� ����������� ����� ���������/����� � ������������� �������
;                Rect.Left:=Left;
;                Rect.Top:=Top;
;                Rect.Right:=Left+Width;
;                Rect.Bottom:=Top+Height;
;                ���� Stretch=False, �� ��������� Width,Height ������������ � ����������� ����� ImgLoad, �.�. ����� �������� 0
; Stretch      - �������������� ����������� ��� ���
; IsBkg        - ���� IsBkg=True, ����������� ����� �������� �� ���� �����,
;                ������ ���� ����� ���������� ����������� �������
;                ����� ������ ����� ����� �������� ����������� � ������ IsBkg=False
; � ����� ��������� �� ���������, �������� ����������� � ��� ��������, ����������� � ���� Longint
; ����������� ����� �������� � ��� ������������������, � ������� ���������� ImgLoad

!define ImgSetPosition "botva3::ImgSetPosition_ /NOUNLOAD"
; ImgSetPosition [img] [NewLeft] [NewTop] [NewWidth] [NewHeight]
; ��������� ����� ���������� ��� ������ �����������, ����� ������ � ������. � ����������� ������������� ����
; img                - �������� ���������� ��� ������ ImgLoad
; NewLeft,NewTop     - ����� ����� ������� ����
; NewWidth,NewHeight - ����� ������, ������. ���� � ImgLoad ��� ������� Stretch=False, �� NewWidth,NewHeight ������������

!define ImgGetPosition "botva3::ImgGetPosition_ /NOUNLOAD"
; ImgGetPosition [img]
; � ����� ���������� ������ �����������, ������ � ������
; img          - �������� ���������� ��� ������ ImgLoad
; Left,Top     - ����� ������� ����
; Width,Height - ������, ������.

!define ImgSetVisibility "botva3::ImgSetVisibility_ /NOUNLOAD"
; ImgSetVisibility [img] [Visible]
; ��������� �������� ��������� �����������
; img     - �������� ���������� ��� ������ ImgLoad
; Visible - ��������� ( 1 ��� 0 )

!define ImgGetVisibility "botva3::ImgGetVisibility_ /NOUNLOAD"
; ImgGetVisibility [img]
; img - �������� ���������� ��� ������ ImgLoad
; � ����� ��������� ����������� ( 1 ��� 0 )

!define ImgSetVisiblePart "botva3::ImgSetVisiblePart_ /NOUNLOAD"
; ImgSetVisiblePart [img] [NewLeft] [NewTop] [NewWidth] [NewHeight]
; ��������� ����� ���������� ������� ����� �����������, ����� ������ � ������. � ����������� ������������� �����������
; img                - �������� ���������� ��� ������ ImgLoad.
; NewLeft,NewTop     - ����� ����� ������� ���� ������� �������.
; NewWidth,NewHeight - ����� ������, ������ ������� �������.
; PS ���������� (��� ������ ImgLoad) ����������� ��������� ��������� �������.
;    ���� �������� ������������� ���������� ������ ����� ��������, �� ���������� ��� ���������

!define ImgGetVisiblePart "botva3::ImgGetVisiblePart_ /NOUNLOAD"
; ImgGetVisiblePart [img]
; ���������� ���������� ������� ����� �����������, ������ � ������
; img                - �������� ���������� ��� ������ ImgLoad
; � �����:
; NewLeft,NewTop     - ����� ������� ���� ������� �������
; NewWidth,NewHeight - ������, ������ ������� �������.

!define ImgSetTransparent "botva3::ImgSetTransparent_ /NOUNLOAD"
; ImgSetTransparent [img] [Value]
; ������������� ������������ �����������
; img   - �������� ���������� ��� ������ ImgLoad
; Value - ������������ (0-255)

!define ImgGetTransparent "botva3::ImgGetTransparent_ /NOUNLOAD"
; ImgGetTransparent [img]
; �������� �������� ������������
; img   - �������� ���������� ��� ������ ImgLoad
; � ����� ������� ������������ �����������

!define ImgRelease "botva3::ImgRelease_ /NOUNLOAD"
; ImgRelease [img]
; ������� ����������� �� ������
; img - �������� ���������� ��� ������ ImgLoad

!define ImgApplyChanges "botva3::ImgApplyChanges_ /NOUNLOAD"
; ImgApplyChanges [h]
; ��������� ������������� ����������� ��� ������ �����,
; �������� ��� ��������� ��������� �������� ImgLoad, ImgSetPosition, ImgSetVisibility, ImgRelease � ��������� ����
; h - ����� ����, ��� �������� ���������� ������������ ����� �����������

!define CreateFormFromImage "botva3::CreateFormFromImage_ /NOUNLOAD"
; CreateFormFromImage [h] [FileName]
; ������� ����� �� PNG-������� (� �������� ����� ������������ ������ ������� �����������)
; h        - ����� ����
; FileName - ���� � ����� �����������
; �� ����� ����� �� ����� ����� �������� (������, ��������, ����� � �.�.) !!!

!define CreateBitmapRgn "botva3::CreateBitmapRgn_ /NOUNLOAD"
; CreateBitmapRgn [DC] [Bitmap] [TransClr] [dX] [dY]
; ������� ������ �� �������
; DC       - �������� �����
; Bitmap   - ������ �� �������� ����� ������� ������
; TransClr - ���� ��������, ������� �� ����� �������� � ������ (���������� ����)
; dX,dY    - �������� ������� �� �����

!define SetMinimizeAnimation "botva3::SetMinimizeAnimation_ /NOUNLOAD"
; SetMinimizeAnimation [1 ��� 0]
; ��������/��������� �������� ��� ������������ ����

!define GetMinimizeAnimation "botva3::GetMinimizeAnimation_ /NOUNLOAD"
; �������� ������� ��������� �������� ������������ ����
; � ����� 1 ��� 0

!define gdipShutdown "botva3::gdipShutdown_ /NOUNLOAD"
; ����������� ������� ��� ���������� ����������

!endif			;BOTVA3_INCLUDED