!ifndef BOTVA3_INCLUDED
!define BOTVA3_INCLUDED

; Модуль для работы с библиотекой botva3.dll версии  1.1.0
; Created by Krinkels[krinkels.org] 06.2016

; идентификаторы событий для кнопок
!define BtnClickEventID      1;
!define BtnMouseEnterEventID 2;
!define BtnMouseLeaveEventID 3;
!define BtnMouseMoveEventID  4;
!define BtnMouseDownEventID  5;
!define BtnMouseUpEventID    6;

; выравнивание текста на кнопках
!define balLeft    0  ; выравнивание текста по левому краю
!define balCenter  1  ; горизонтальное выравнивание текста по центру
!define balRight   2  ; выравнивание текста по правому краю
!define balVCenter 4  ; вертикальное выравнивание текста по центру
;procedure BtnRefresh( const hwndParent: HWND; const string_size: integer; const variables: PChar; const stacktop: pointer; const extraparameters: pointer = nil ) cdecl;

; Работа с кнопками, поехали:
!define BtnCreate "botva3::BtnCreate_ /NOUNLOAD"
; Нарисовать кнопку. BtnCreate [hParent] [FileName] [Left] [Top] [Width] [Height] [ShadowWidth] [IsCheckBtn]
; hParent           - хэндл окна-родителя, на котором будет создана кнопка
; FileName          - файл с изображением состояний кнопки
;                     для обычной кнопки нужно 4 состояния кнопки (соответственно 4 изображения)
;                     для кнопки с IsCheckBtn=True нужно 8 изображений (как для чекбокса)
;                     изображения состояний должны располагаться вертикально
; Left,Top,
; Width,Height      - без комментариев. то же что и для обычных кнопок
; ShadowWidth       - кол-во пикселей от края рисунка кнопки, до реальной ее границы на рисунке.
;                     нужно чтобы состояние кнопки и курсор на ней менялись как положено
; IsCheckBtn        - если True, то будет создана кнопка (аналог CheckBox) имеющая включенное и выключенное состояние
;                     если False, то создастся обычная кнопка
; В стеке - хэндл созданной кнопки

!define BtnRefresh "botva3::BtnRefresh_ /NOUNLOAD"
; BtnRefresh [h]
; немедленно перерисовывает кнопку, в обход очереди сообщений. вызывать, если кнопка не успевает перерисовываться
; h - хэндл кнопки (результат возвращенный BtnCreate)

!define BtnSetText "botva3::BtnSetText_ /NOUNLOAD"
; BtnSetText [h] [Text]
; устанавливает текст на кнопке
; h    - хэндл кнопки (результат возвращенный BtnCreate)
; Text - текст, который мы хотим увидеть на кнопке

!define BtnGetText "botva3::BtnGetText_ /NOUNLOAD"
; BtnGetText [h]
; получает текст кнопки
; h    - хэндл кнопки (результат возвращенный BtnCreate)
; В стеке полученный текст

!define BtnSetTextAlignment "botva3::BtnSetTextAlignment_ /NOUNLOAD"
; BtnSetTextAlignment [h] [HorIndent] [VertIndent] [Alignment]
; устанавливает выравнивание текста на кнопке
; h          - хэндл кнопки (результат возвращенный BtnCreate)
; HorIndent  - горизонтальный отступ текста от края кнопки
; VertIndent - вертикальный отступ текста от края кнопки
; Alignment  - выравнивание текста. задается константами balLeft, balCenter, balRight, balVCenter,
;              или комбинацией balVCenter с остальными

!define BtnGetVisibility "botva3::BtnGetVisibility_ /NOUNLOAD"
; BtnGetVisibility [h]
; получает видимость кнопки
; h - хэндл кнопки (результат возвращенный BtnCreate)
; В стеке видимость кнопки ( 1 или 0 )

!define BtnSetVisibility "botva3::BtnSetVisibility_ /NOUNLOAD"
; BtnSetVisibility [h] [Value]
; устанавливает видимость кнопки (аналог Button.Visible:=True / Button.Visible:=False)
; h     - хэндл кнопки (результат возвращенный BtnCreate)
; Value - значение видимости( 1 или 0 )

!define BtnGetEnabled "botva3::BtnGetEnabled_ /NOUNLOAD"
; BtnGetEnabled [h]
; получает доступность кнопки (аналог f:=Button.Enabled)
; h - хэндл кнопки (результат возвращенный BtnCreate)
; В стеке доступность кнопки ( 1 или 0 )

!define BtnSetEnabled "botva3::BtnSetEnabled_ /NOUNLOAD"
; BtnSetEnabled [h] [Value]
; устанвливает доступность кнопки
; h - хэндл кнопки (результат возвращенный BtnCreate)
; Value - значение доступности кнопки

 !define BtnSetFont "botva3::BtnSetFont_ /NOUNLOAD"
; BtnSetFont [h] [Font]
; устанавливает шрифт для кнопки
; h    - хэндл кнопки (результат возвращенный BtnCreate)
; Font - дескриптор устанавливаемого шрифта

!define BtnSetFontColor "botva3::BtnSetFontColor_ /NOUNLOAD"
; BtnSetFontColor [h] [NormalFontColor] [FocusedFontColor] [PressedFontColor] [DisabledFontColor]
; устанавливает цвет шрифта для кнопки во включенном и выключенном сосотоянии
; h                 - хэндл кнопки (результат возвращенный BtnCreate)
; NormalFontColor   - цвет текста на кнопе в нормальном состоянии
; FocusedFontColor  - цвет текста на кнопе в подсвеченном состоянии
; PressedFontColor  - цвет текста на кнопе в нажатом состоянии
; DisabledFontColor - цвет текста на кнопе в отключенном состоянии

!define BtnSetChecked "botva3::BtnSetChecked_ /NOUNLOAD"
; BtnSetChecked [h] [Value]
; устанвливает состояние (включена/выключена) кнопки
; h - хэндл кнопки (результат возвращенный BtnCreate)
; Value - значение состояния кнопки

!define BtnGetChecked "botva3::BtnGetChecked_ /NOUNLOAD"
; BtnGetChecked [h]
; получает состояние (включена/выключена) кнопки ( 1 или 0 )
; h - хэндл кнопки (результат возвращенный BtnCreate)

!define BtnSetEvent "botva3::BtnSetEvent_ /NOUNLOAD"
; BtnSetEvent [h] [EventID] [Event]
; устанавливает событие для кнопки
; h       - хэндл кнопки (результат возвращенный BtnCreate)
; EventID - идентификатор события, заданный константами   BtnClickEventID, BtnMouseEnterEventID, BtnMouseLeaveEventID, BtnMouseMoveEventID
; Event   - адрес процедуры выполняемой при наступлении указанного события. Получаем адрес через GetFunctionAddress

!define BtnSetPosition "botva3::BtnSetPosition_ /NOUNLOAD"
; BtnSetPosition [h] [NewLeft] [NewTop] [NewWidth] [NewHeight]
; устанавливает координаты левого верхнего угла и размер кнопки
; h                   - хэндл кнопки (результат возвращенный BtnCreate)
; NewLeft, NewTop     - новые координаты верхнего левого угла (в координатах родительского окна)
; NewWidth, NewHeight - новые ширина, высота кнопки

!define BtnGetPosition "botva3::BtnGetPosition /NOUNLOAD"
; BtnGetPosition [h]
; получает координаты левого верхнего угла и размер кнопки
; h             - хэндл кнопки (результат возвращенный BtnCreate)
; В стеке будут:
; Left, Top     - координаты верхнего левого угла (в координатах родительского окна)
; Width, Height - ширина, высота кнопки

!define BtnSetCursor "botva3::BtnSetCursor /NOUNLOAD"
; BtnSetCursor [h] [hCur]
; устанавливает курсор для кнопки
; h    - хэндл кнопки (результат возвращенный BtnCreate)
; hCur - дескриптор устанавливаемого курсора

!define GetSysCursorHandle "botva3::GetSysCursorHandle_ /NOUNLOAD"
;-----------------------------------------------------------------------------------------------------------------

!define CheckBoxCreate "botva3::CheckBoxCreate_ /NOUNLOAD"
; CheckBoxCreate [hParent] [FileName] [Left] [Top] [Width] [Height] [GroupID] [TextIndent]
; hParent,FileName,Left,Top,Width,Height как у кнопок
; GroupID - для радиобатонов. в одной группе может быть выбран только 1 радибатон. 
; GroupID=0 - без группы. это будет чекбокс. остальное радиобатоны
; TextIndent - отступ текста от картинки чекбокса/радиобатона (в пикселях)

; все остальные процедры/функции по аналогии с кнопками
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
; загружает изображение в память, сохраняет переданные параметры
; Wnd          - хэндл окна, в котором будет выведено изображение
; FileName     - файл изображения
; Left,Top     - координаты верхнего левого угла вывода изображения (в координатах клиентской области Wnd)
; Width,Height - ширина, высота изображения
;                если Stretch=True, то изображение будет растянуто/сжато в прямоугольной области
;                Rect.Left:=Left;
;                Rect.Top:=Top;
;                Rect.Right:=Left+Width;
;                Rect.Bottom:=Top+Height;
;                если Stretch=False, то параметры Width,Height игнорируются и вычисляются самой ImgLoad, т.е. можно передать 0
; Stretch      - масштабировать изображение или нет
; IsBkg        - если IsBkg=True, изображение будет выведено на фоне формы,
;                поверх него будут отрисованы графические объекты
;                затем поверх всего будут выведены изображения с флагом IsBkg=False
; В стеке указатель на структуру, хранящей изображение и его парметры, приведенный к типу Longint
; изображения будут выведены в той последовательности, в которой вызывается ImgLoad

!define ImgSetPosition "botva3::ImgSetPosition_ /NOUNLOAD"
; ImgSetPosition [img] [NewLeft] [NewTop] [NewWidth] [NewHeight]
; сохраняет новые координаты для вывода изображения, новую ширину и высоту. в координатах родительского окна
; img                - значение полученное при вызове ImgLoad
; NewLeft,NewTop     - новый левый верхний угол
; NewWidth,NewHeight - новая ширина, высота. если в ImgLoad был передан Stretch=False, то NewWidth,NewHeight игнорируются

!define ImgGetPosition "botva3::ImgGetPosition_ /NOUNLOAD"
; ImgGetPosition [img]
; В стеке координаты вывода изображения, ширина и высота
; img          - значение полученное при вызове ImgLoad
; Left,Top     - левый верхний угол
; Width,Height - ширина, высота.

!define ImgSetVisibility "botva3::ImgSetVisibility_ /NOUNLOAD"
; ImgSetVisibility [img] [Visible]
; сохраняет параметр видимости изображения
; img     - значение полученное при вызове ImgLoad
; Visible - видимость ( 1 или 0 )

!define ImgGetVisibility "botva3::ImgGetVisibility_ /NOUNLOAD"
; ImgGetVisibility [img]
; img - значение полученное при вызове ImgLoad
; В стеке видимость изображения ( 1 или 0 )

!define ImgSetVisiblePart "botva3::ImgSetVisiblePart_ /NOUNLOAD"
; ImgSetVisiblePart [img] [NewLeft] [NewTop] [NewWidth] [NewHeight]
; сохраняет новые координаты видимой части изображения, новую ширину и высоту. в координатах оригинального изображения
; img                - значение полученное при вызове ImgLoad.
; NewLeft,NewTop     - новый левый верхний угол видимой области.
; NewWidth,NewHeight - новая ширина, высота видимой области.
; PS изначально (при вызове ImgLoad) изображение считается полностью видимым.
;    если возникла необходимость отображать только часть картинки, то используем эту процедуру

!define ImgGetVisiblePart "botva3::ImgGetVisiblePart_ /NOUNLOAD"
; ImgGetVisiblePart [img]
; возвращает координаты видимой части изображения, ширину и высоту
; img                - значение полученное при вызове ImgLoad
; В стеке:
; NewLeft,NewTop     - левый верхний угол видимой области
; NewWidth,NewHeight - ширина, высота видимой области.

!define ImgSetTransparent "botva3::ImgSetTransparent_ /NOUNLOAD"
; ImgSetTransparent [img] [Value]
; устанавливает прозрачность изображения
; img   - значение полученное при вызове ImgLoad
; Value - прозрачность (0-255)

!define ImgGetTransparent "botva3::ImgGetTransparent_ /NOUNLOAD"
; ImgGetTransparent [img]
; получить значение прозрачности
; img   - значение полученное при вызове ImgLoad
; В стеке текущая прозрачность изображения

!define ImgRelease "botva3::ImgRelease_ /NOUNLOAD"
; ImgRelease [img]
; удаляет изображение из памяти
; img - значение полученное при вызове ImgLoad

!define ImgApplyChanges "botva3::ImgApplyChanges_ /NOUNLOAD"
; ImgApplyChanges [h]
; формирует окончательное изображение для вывода экран,
; учитывая все изменения внесенные вызовами ImgLoad, ImgSetPosition, ImgSetVisibility, ImgRelease и обновляет окно
; h - хэндл окна, для которого необходимо сформировать новое изображение

!define CreateFormFromImage "botva3::CreateFormFromImage_ /NOUNLOAD"
; CreateFormFromImage [h] [FileName]
; создать форму по PNG-рисунку (в принципе можно использовать другие форматы изображений)
; h        - хэндл окна
; FileName - путь к файлу изображения
; на такой форме не будут видны контролы (кнопки, чекбоксы, эдиты и т.д.) !!!

!define CreateBitmapRgn "botva3::CreateBitmapRgn_ /NOUNLOAD"
; CreateBitmapRgn [DC] [Bitmap] [TransClr] [dX] [dY]
; создать регион из битмапа
; DC       - контекст формы
; Bitmap   - битмап по которому будем строить регион
; TransClr - цвет пикселей, которые не будут включены в регион (прозрачный цвет)
; dX,dY    - смещение региона на форме

!define SetMinimizeAnimation "botva3::SetMinimizeAnimation_ /NOUNLOAD"
; SetMinimizeAnimation [1 или 0]
; включить/выклюсить анимацию при сворачивании окон

!define GetMinimizeAnimation "botva3::GetMinimizeAnimation_ /NOUNLOAD"
; получить текущее состояние анимации сворачивания окон
; В стеке 1 или 0

!define gdipShutdown "botva3::gdipShutdown_ /NOUNLOAD"
; обязательно вызвать при завершении приложения

!endif			;BOTVA3_INCLUDED