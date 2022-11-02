[Code]
//������ ��� ������ � ProgressBar'���. ��� ������ ������� ����������� botva2.iss
//�� ������������� ��� ������ � �������� �����������
//Created by South.Tver 02.2012

type
  TImgPB2 = record
    pbbkg    : Longint;
    pb       : array of Longint;
  end;

procedure SetEmptyPB2(var pb:TImgPB2);
begin
  pb.pbbkg:=0;
  SetArrayLength(pb.pb,0);
end;

//���������� ������� ������������ (0-100)
procedure ImgPBSetPosition2(var pb:TImgPB2; Percent :Extended);
var
  Step,vc,vo, k1, k2:Extended;
  cnt,i,pbCount:integer;
begin
  pbCount:=GetArrayLength(pb.pb);
  if pbCount=0 then Exit;
  k1:=100;           //� Extended ����� �����, ���������� ���� ������������� ��������� ��������. ����� ����� �������
  k2:=pbCount;
  Step:=k1/k2; 
  k1:=Percent/Step;  
  vc:=Int(k1);
  k1:=vc*Step;
  vo:=Percent-k1;
  cnt:=Round(vc);
  if vo>0 then cnt:=cnt+1;
  for i:=0 to cnt-1 do
    ImgSetVisibility(pb.pb[i],True);
  for i:=cnt to pbCount-1 do
    ImgSetVisibility(pb.pb[i],False);
end;

//������� �����������
procedure ImgPBDelete2(var PB :TImgPB2);
var
  i,pbCount:integer;
begin
  pbCount:=GetArrayLength(pb.pb);
  if pbCount=0 then Exit;
  if PB.pbbkg<>0 then
    ImgRelease(PB.pbbkg);
  for i:=0 to pbCount-1 do
    ImgRelease(PB.pb[i]);
  SetEmptyPB2(PB);
end;

//������� �����������
function ImgPBCreate2(hParent :HWND; bk, pb :ansistring; Left, Top, Width, Height, dx, dy, interval :integer):TImgPB2;
var
  img:Longint;
  Size:TRect;
  iw,i,l,t,w,h:integer;
  kf, k1, k2:Extended;
  pbCount:integer;
begin
  SetEmptyPB2(Result);
  if (Length(pb)=0) or (Length(bk)=0) then Exit;
  
  Result.pbbkg:=ImgLoad(hParent,bk,Left,Top,Width,Height,True,False);

  img:=ImgLoad(hParent,pb,Left,Top,0,0,False,False);
  ImgGetPosition(img,Size.Left,Size.Top,Size.Right,Size.Bottom);
  ImgRelease(img);
  iw:=Width-dx*2;
  k1:=Height-dy*2;
  k2:=Size.Bottom;
  kf:=k1/k2;
  h:=Height-dy*2;
  w:=Round(Size.Right*kf);
  pbCount:=iw div (w+interval);
  SetArrayLength(Result.pb,pbCount);
  l:=Left+dx;
  t:=Top+dy;
  for i:=0 to pbCount-1 do begin
    Result.pb[i]:=ImgLoad(hParent,pb,l,t,w,h,True,False);
    l:=l+w+interval;
  end;
  if (iw mod (w+interval))>0 then begin
    pbCount:=pbCount+1;
    SetArrayLength(Result.pb,pbCount);
    w:=Left+Width-dx-l;
    Result.pb[pbCount-1]:=ImgLoad(hParent,pb,l,t,w,h,True,False);
  end;
  ImgPBSetPosition2(Result,0);
end;
