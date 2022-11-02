[Code]
//модуль для работы с библиотекой botva2.dll версии  0.9.9
//Created by South.Tver 03.2015

const
  //идентификаторы событий для кнопок и чекбоксов/радибатонов
  BtnClickEventID      = 1;
  BtnMouseEnterEventID = 2;
  BtnMouseLeaveEventID = 3;
  BtnMouseMoveEventID  = 4;
  BtnMouseDownEventID  = 5;
  BtnMouseUpEventID    = 6;

  //выравнивание текста на кнопках
  balLeft    = 0;  //выравнивание текста по левому краю
  balCenter  = 1;  //горизонтальное выравнивание текста по центру
  balRight   = 2;  //выравнивание текста по правому краю
  balVCenter = 4;  //вертикальное выравнивание текста по центру

type
  TBtnEventProc = procedure(h:HWND);

//для выполнения нажатий на кнопки нужен innocallback
function WrapBtnCallback(Callback: TBtnEventProc; ParamCount: Integer): Longword; external 'wrapcallbackaddr@{tmp}\CallbackCtrl.dll stdcall delayload';

function _ImgLoad(Wnd :HWND; FileName :PAnsiChar; Left, Top, Width, Height :integer; Stretch, IsBkg :boolean) :Longint; external 'ImgLoad@{tmp}\botva2.dll stdcall delayload';
//загружает изображение в память, сохраняет переданные параметры
//Wnd          - хэндл окна, в котором будет выведено изображение
//FileName     - файл изображения
//Left,Top     - координаты верхнего левого угла вывода изображения (в координатах клиентской области Wnd)
//Width,Height - ширина, высота изображения
//               если Stretch=True, то изображение будет растянуто/сжато в прямоугольной области
//               Rect.Left:=Left;
//               Rect.Top:=Top;
//               Rect.Right:=Left+Width;
//               Rect.Bottom:=Top+Height;
//               если Stretch=False, то параметры Width,Height игнорируются и вычисляются самой ImgLoad, т.е. можно передать 0
//Stretch      - масштабировать изображение или нет
//IsBkg        - если IsBkg=True, изображение будет выведено на фоне формы,
//               поверх него будут отрисованы графические объекты (TLabel, TBitmapImage и т.д.),
//               затем поверх всего будут выведены изображения с флагом IsBkg=False
//возвращаемое значение - указатель на структуру, хранящей изображение и его парметры, приведенный к типу Longint
//изображения будут выведены в той последовательности, в которой вызывается ImgLoad

procedure ImgSetVisiblePart(img:Longint; NewLeft, NewTop, NewWidth, NewHeight : integer); external 'ImgSetVisiblePart@{tmp}\botva2.dll stdcall delayload';
//сохраняет новые координаты видимой части изображения, новую ширину и высоту. в координатах оригинального изображения
//img                - значение полученное при вызове ImgLoad.
//NewLeft,NewTop     - новый левый верхний угол видимой области.
//NewWidth,NewHeight - новая ширина, высота видимой области.
//PS изначально (при вызове ImgLoad) изображение считается полностью видимым.
//   если возникла необходимость отображать только часть картинки, то используем эту процедуру

procedure ImgGetVisiblePart(img:Longint; var Left, Top, Width, Height : integer); external 'ImgGetVisiblePart@{tmp}\botva2.dll stdcall delayload';
//возвращает координаты видимой части изображения, ширину и высоту
//img                - значение полученное при вызове ImgLoad
//NewLeft,NewTop     - левый верхний угол видимой области
//NewWidth,NewHeight - ширина, высота видимой области.

procedure ImgSetPosition(img :Longint; NewLeft, NewTop, NewWidth, NewHeight :integer); external 'ImgSetPosition@{tmp}\botva2.dll stdcall delayload';
//сохраняет новые координаты для вывода изображения, новую ширину и высоту. в координатах родительского окна
//img                - значение полученное при вызове ImgLoad
//NewLeft,NewTop     - новый левый верхний угол
//NewWidth,NewHeight - новая ширина, высота. если в ImgLoad был передан Stretch=False, то NewWidth,NewHeight игнорируются

procedure ImgGetPosition(img:Longint; var Left, Top, Width, Height:integer); external 'ImgGetPosition@{tmp}\botva2.dll stdcall delayload';
//возвращает координаты вывода изображения, ширину и высоту
//img          - значение полученное при вызове ImgLoad
//Left,Top     - левый верхний угол
//Width,Height - ширина, высота.

procedure ImgSetVisibility(img :Longint; Visible :boolean); external 'ImgSetVisibility@{tmp}\botva2.dll stdcall delayload';
//сохраняет параметр видимости изображения
//img     - значение полученное при вызове ImgLoad
//Visible - видимость

function ImgGetVisibility(img:Longint):boolean; external 'ImgGetVisibility@{tmp}\botva2.dll stdcall delayload';
//img - значение полученное при вызове ImgLoad
//возвращаемое значение - видимость изображения

procedure ImgSetTransparent(img:Longint; Value:integer); external 'ImgSetTransparent@{tmp}\botva2.dll stdcall delayload';
//устанавливает прозрачность изображения
//img   - значение полученное при вызове ImgLoad
//Value - прозрачность (0-255)

function ImgGetTransparent(img:Longint):integer; external 'ImgGetTransparent@{tmp}\botva2.dll stdcall delayload';
//получить значение прозрачности
//img   - значение полученное при вызове ImgLoad
//возвращаемое значение - текущая прозрачность изображения

procedure ImgRelease(img :Longint); external 'ImgRelease@{tmp}\botva2.dll stdcall delayload';
//удаляет изображение из памяти
//img - значение полученное при вызове ImgLoad

procedure ImgApplyChanges(h:HWND); external 'ImgApplyChanges@{tmp}\botva2.dll stdcall delayload';
//формирует окончательное изображение для вывода экран,
//учитывая все изменения внесенные вызовами ImgLoad, ImgSetPosition, ImgSetVisibility, ImgRelease и обновляет окно
//h - хэндл окна, для которого необходимо сформировать новое изображение



function _BtnCreate(hParent :HWND; Left, Top, Width, Height :integer; FileName :PAnsiChar; ShadowWidth :integer; IsCheckBtn :boolean) :HWND; external 'BtnCreate@{tmp}\botva2.dll stdcall delayload';
//hParent           - хэндл окна-родителя, на котором будет создана кнопка
//Left,Top,
//Width,Height      - без комментариев. то же что и для обычных кнопок
//FileName          - файл с изображением состояний кнопки
//                    для обычной кнопки нужно 4 состояния кнопки (соответственно 4 изображения)
//                    для кнопки с IsCheckBtn=True нужно 8 изображений (как для чекбокса)
//                    изображения состояний должны располагаться вертикально
//ShadowWidth       - кол-во пикселей от края рисунка кнопки, до реальной ее границы на рисунке.
//                    нужно чтобы состояние кнопки и курсор на ней менялись как положено
//IsCheckBtn        - если True, то будет создана кнопка (аналог CheckBox) имеющая включенное и выключенное состояние
//                    если False, то создастся обычная кнопка
//возвращаемое значение - хэндл созданной кнопки

procedure BtnSetText(h :HWND; Text :PAnsiChar); external 'BtnSetText@{tmp}\botva2.dll stdcall delayload';
//устанавливает текст на кнопке (аналог Button.Caption:='bla-bla-bla')
//h    - хэндл кнопки (результат возвращенный BtnCreate)
//Text - текст, который мы хотим увидеть на кнопке

procedure BtnGetText_(h: HWND; Text: PAnsiChar; var NewSize: integer); external 'BtnGetText@{tmp}\botva2.dll stdcall delayload';
//получает текст кнопки
//h    - хэндл кнопки (результат возвращенный BtnCreate)
//Text - буфер принимающий текст кнопки
//возвращаемое значение - длина текста

procedure BtnSetTextAlignment(h :HWND; HorIndent, VertIndent :integer; Alignment :DWORD); external 'BtnSetTextAlignment@{tmp}\botva2.dll stdcall delayload';
//устанавливает выравнивание текста на кнопке
//h          - хэндл кнопки (результат возвращенный BtnCreate)
//HorIndent  - горизонтальный отступ текста от края кнопки
//VertIndent - вертикальный отступ текста от края кнопки
//Alignment  - выравнивание текста. задается константами balLeft, balCenter, balRight, balVCenter,
//             или комбинацией balVCenter с остальными. например, balVCenter or balRight

procedure BtnSetFont(h :HWND; Font :Cardinal); external 'BtnSetFont@{tmp}\botva2.dll stdcall delayload';
//устанавливает шрифт для кнопки
//h    - хэндл кнопки (результат возвращенный BtnCreate)
//Font - дескриптор устанавливаемого шрифта
//       чтобы не мучаться с WinAPI-шными функциями можно создать шрифт стандартными средствами инно и передать его хэндл
//       например,
//       var
//         Font:TFont;
//         . . .
//       begin
//         . . .
//         Font:=TFont.Create;
//         все свойства можно не устанавливать, при создании свойства заполняются значениями по умолчанию. меняем только то что нам нужно
//         with Font do begin
//           Name:='Tahoma';
//           Size:=10;
//           . . .
//         end;
//         BtnSetFont(hBtn,Font.Handle);
//         . . .
//       end;
//       ну и при выходе из программы (или когда он станет не нужен) не забываем уничтожить свой шрифт Font.Free;

procedure BtnSetFontColor(h :HWND; NormalFontColor, FocusedFontColor, PressedFontColor, DisabledFontColor :Cardinal); external 'BtnSetFontColor@{tmp}\botva2.dll stdcall delayload';
//устанавливает цвет шрифта для кнопки во включенном и выключенном сосотоянии
//h                 - хэндл кнопки (результат возвращенный BtnCreate)
//NormalFontColor   - цвет текста на кнопе в нормальном состоянии
//FocusedFontColor  - цвет текста на кнопе в подсвеченном состоянии
//PressedFontColor  - цвет текста на кнопе в нажатом состоянии
//DisabledFontColor - цвет текста на кнопе в отключенном состоянии

function BtnGetVisibility(h :HWND) :boolean; external 'BtnGetVisibility@{tmp}\botva2.dll stdcall delayload';
//получает видимость кнопки (аналог f:=Button.Visible)
//h - хэндл кнопки (результат возвращенный BtnCreate)
//возвращаемое значение - видимость кнопки

procedure BtnSetVisibility(h :HWND; Value :boolean); external 'BtnSetVisibility@{tmp}\botva2.dll stdcall delayload';
//устанавливает видимость кнопки (аналог Button.Visible:=True / Button.Visible:=False)
//h     - хэндл кнопки (результат возвращенный BtnCreate)
//Value - значение видимости

function BtnGetEnabled(h :HWND) :boolean; external 'BtnGetEnabled@{tmp}\botva2.dll stdcall delayload';
//получает доступность кнопки (аналог f:=Button.Enabled)
//h - хэндл кнопки (результат возвращенный BtnCreate)
//возвращаемое значение - доступность кнопки

procedure BtnSetEnabled(h :HWND; Value :boolean); external 'BtnSetEnabled@{tmp}\botva2.dll stdcall delayload';
//устанвливает доступность кнопки (аналог Button.Enabled:=True / Button.Enabled:=False)
//h - хэндл кнопки (результат возвращенный BtnCreate)
//Value - значение доступности кнопки

function BtnGetChecked(h :HWND) :boolean; external 'BtnGetChecked@{tmp}\botva2.dll stdcall delayload';
//получает состояние (включена/выключена) кнопки (аналог f:=Checkbox.Checked)
//h - хэндл кнопки (результат возвращенный BtnCreate)

procedure BtnSetChecked(h :HWND; Value :boolean); external 'BtnSetChecked@{tmp}\botva2.dll stdcall delayload';
//устанвливает состояние (включена/выключена) кнопки (аналог Сheckbox.Checked:=True / Сheckbox.Checked:=False)
//h - хэндл кнопки (результат возвращенный BtnCreate)
//Value - значение состояния кнопки

procedure BtnSetEvent(h :HWND; EventID :integer; Event :Longword); external 'BtnSetEvent@{tmp}\botva2.dll stdcall delayload';
//устанавливает событие для кнопки
//h       - хэндл кнопки (результат возвращенный BtnCreate)
//EventID - идентификатор события, заданный константами   BtnClickEventID, BtnMouseEnterEventID, BtnMouseLeaveEventID, BtnMouseMoveEventID
//Event   - адрес процедуры выполняемой при наступлении указанного события
//пример использования - BtnSetEvent(hBtn, BtnClickEventID, WrapBtnCallback(@BtnClick,1));

procedure BtnGetPosition(h:HWND; var Left, Top, Width, Height: integer);  external 'BtnGetPosition@{tmp}\botva2.dll stdcall delayload';
//получает координаты левого верхнего угла и размер кнопки
//h             - хэндл кнопки (результат возвращенный BtnCreate)
//Left, Top     - координаты верхнего левого угла (в координатах родительского окна)
//Width, Height - ширина, высота кнопки

procedure BtnSetPosition(h:HWND; NewLeft, NewTop, NewWidth, NewHeight: integer);  external 'BtnSetPosition@{tmp}\botva2.dll stdcall delayload';
//устанавливает координаты левого верхнего угла и размер кнопки
//h                   - хэндл кнопки (результат возвращенный BtnCreate)
//NewLeft, NewTop     - новые координаты верхнего левого угла (в координатах родительского окна)
//NewWidth, NewHeight - новые ширина, высота кнопки

procedure BtnRefresh(h :HWND); external 'BtnRefresh@{tmp}\botva2.dll stdcall delayload';
//немедленно перерисовывает кнопку, в обход очереди сообщений. вызывать, если кнопка не успевает перерисовываться
//h - хэндл кнопки (результат возвращенный BtnCreate)

procedure BtnSetCursor(h:HWND; hCur:Cardinal); external 'BtnSetCursor@{tmp}\botva2.dll stdcall delayload';
//устанавливает курсор для кнопки
//h    - хэндл кнопки (результат возвращенный BtnCreate)
//hCur - дескриптор устанавливаемого курсора
//DestroyCursor вызывать не обязательно, он будет уничтожен при вызове gdipShutDown;

function GetSysCursorHandle(id:integer):Cardinal; external 'GetSysCursorHandle@{tmp}\botva2.dll stdcall delayload';
//загружает стандартный курсор по его идентификатору
//id - идентификатор стандартного курсора. идентификаторы стандартных курсоров задаются константами OCR_... , значения которых ищем в инете
//возвращаемое значение  - дескриптор загруженного курсора

procedure gdipShutdown; external 'gdipShutdown@{tmp}\botva2.dll stdcall delayload';
//обязательно вызвать при завершении приложения



procedure _CreateFormFromImage(h:HWND; FileName:PAnsiChar); external 'CreateFormFromImage@{tmp}\botva2.dll stdcall delayload';
//создать форму по PNG-рисунку (в принципе можно использовать другие форматы изображений)
//h        - хэндл окна
//FileName - путь к файлу изображения
//на такой форме не будут видны контролы (кнопки, чекбоксы, эдиты и т.д.) !!!

function CreateBitmapRgn(DC: LongWord; Bitmap: HBITMAP; TransClr: DWORD; dX:integer; dY:integer): LongWord; external 'CreateBitmapRgn@{tmp}\botva2.dll stdcall delayload';
//создать регион из битмапа
//DC       - контекст формы
//Bitmap   - битмап по которому будем строить регион
//TransClr - цвет пикселей, которые не будут включены в регион (прозрачный цвет)
//dX,dY    - смещение региона на форме

procedure SetMinimizeAnimation(Value: Boolean); external 'SetMinimizeAnimation@{tmp}\botva2.dll stdcall delayload';
//включить/выклюсить анимацию при сворачивании окон

function GetMinimizeAnimation: Boolean; external 'GetMinimizeAnimation@{tmp}\botva2.dll stdcall delayload';
//получить текущее состояние анимации сворачивания окон


function _CheckBoxCreate(hParent:HWND; Left,Top,Width,Height:integer; FileName:PAnsiChar; GroupID, TextIndent:integer) :HWND; external 'CheckBoxCreate@{tmp}\botva2.dll stdcall delayload';
//hParent,Left,Top,Width,Height,FileName как у кнопок
//GroupID - для радиобатонов. в одной группе может быть выбран только 1 радибатон. 
//GroupID=0 - без группы. это будет чекбокс. остальное радиобатоны
//TextIndent - отступ текста от картинки чекбокса/радиобатона (в пикселях)

//все остальные процедры/функции по аналогии с кнопками
procedure CheckBoxSetText(h :HWND; Text :PAnsiChar); external 'CheckBoxSetText@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxGetText_(h: HWND; Text: PAnsiChar; var NewSize: integer); external 'CheckBoxGetText@{tmp}\botva2.dll stdcall delayload'; //скорее всего работает криво
procedure CheckBoxSetFont(h:HWND; Font:LongWord); external 'CheckBoxSetFont@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetEvent(h:HWND; EventID:integer; Event:Longword); external 'CheckBoxSetEvent@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetFontColor(h:HWND; NormalFontColor, FocusedFontColor, PressedFontColor, DisabledFontColor: Cardinal); external 'CheckBoxSetFontColor@{tmp}\botva2.dll stdcall delayload';
function CheckBoxGetEnabled(h:HWND):boolean; external 'CheckBoxGetEnabled@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetEnabled(h:HWND; Value:boolean); external 'CheckBoxSetEnabled@{tmp}\botva2.dll stdcall delayload';
function CheckBoxGetVisibility(h:HWND):boolean; external 'CheckBoxGetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetVisibility(h:HWND; Value:boolean); external 'CheckBoxSetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetCursor(h:HWND; hCur:LongWord); external 'CheckBoxSetCursor@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetChecked(h:HWND; Value:boolean); external 'CheckBoxSetChecked@{tmp}\botva2.dll stdcall delayload';
function CheckBoxGetChecked(h:HWND):boolean; external 'CheckBoxGetChecked@{tmp}\botva2.dll stdcall delayload';  
procedure CheckBoxRefresh(h:HWND); external 'CheckBoxRefresh@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxSetPosition(h:HWND; NewLeft, NewTop, NewWidth, NewHeight: integer); external 'CheckBoxSetPosition@{tmp}\botva2.dll stdcall delayload';
procedure CheckBoxGetPosition(h:HWND; var Left, Top, Width, Height: integer); external 'CheckBoxGetPosition@{tmp}\botva2.dll stdcall delayload';

function BtnGetText(hBtn: HWND): string;
var
  buf: AnsiString;
  NewSize: integer;
begin
  buf:='';
  NewSize:=0;
  BtnGetText_(hBtn, PAnsiChar(buf), NewSize);
  if NewSize > 0 then begin
    SetLength(buf, NewSize);
    BtnGetText_(hBtn, PAnsiChar(buf), NewSize);
  end;
  Result := string(buf);
end;

function CheckBoxGetText(hBtn: HWND): string;
var
  buf: AnsiString;
  NewSize: integer;
begin
  buf:='';
  NewSize:=0;
  CheckBoxGetText_(hBtn, PAnsiChar(buf), NewSize);
  if NewSize > 0 then begin
    SetLength(buf, NewSize);
    CheckBoxGetText_(hBtn, PAnsiChar(buf), NewSize);
  end;
  Result := string(buf);
end;

function ImgLoad(Wnd :HWND; FileName :PAnsiChar; Left, Top, Width, Height :integer; Stretch, IsBkg :boolean) :Longint;
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    Result:=_ImgLoad(Wnd,ExpandConstant('{tmp}\')+FileName,Left,Top,Width,Height,Stretch,IsBkg);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else Result:=_ImgLoad(Wnd,FileName,Left,Top,Width,Height,Stretch,IsBkg);
end;

function BtnCreate(hParent :HWND; Left, Top, Width, Height :integer; FileName :PAnsiChar; ShadowWidth :integer; IsCheckBtn :boolean) :HWND; 
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    Result:=_BtnCreate(hParent,Left,Top,Width,Height,ExpandConstant('{tmp}\')+FileName,ShadowWidth,IsCheckBtn);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else Result:=_BtnCreate(hParent,Left,Top,Width,Height,FileName,ShadowWidth,IsCheckBtn);
end;

function CheckBoxCreate(hParent:HWND; Left,Top,Width,Height:integer; FileName:PAnsiChar; GroupID, TextIndent:integer):HWND;
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    Result:=_CheckBoxCreate(hParent,Left,Top,Width,Height,ExpandConstant('{tmp}\')+FileName,GroupID,TextIndent);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else Result:=_CheckBoxCreate(hParent,Left,Top,Width,Height,FileName,GroupID,TextIndent);
end;

procedure CreateFormFromImage(h:HWND; FileName:PAnsiChar);
begin
  if not FileExists(FileName) then begin
    ExtractTemporaryFile(FileName);
    _CreateFormFromImage(h, ExpandConstant('{tmp}\')+FileName);
    DeleteFile(ExpandConstant('{tmp}\')+FileName);
  end else _CreateFormFromImage(h, FileName);
end;
