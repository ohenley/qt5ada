--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QRect is

function QRect_create(topleft: QPointH; bottomright: QPointH) return  QRectH is
begin
 return QRect_create2(topleft,bottomright);
end;

function QRect_create(topleft: QPointH; size: QSizeH) return  QRectH is
begin
 return QRect_create3(topleft,size);
end;

function QRect_create(left: Integer; top: Integer; width: Integer; height: Integer) return  QRectH is
begin
 return QRect_create4(left,top,width,height);
end;

procedure QRect_translate(handle: not null  QRectH; p: QPointH) is
begin
  QRect_translate2(handle,p);
end;

function  QRect_translated(handle: not null  QRectH; p: QPointH) return QRectH is
begin
  return QRect_translated2(handle,p);
end;
procedure QRect_moveTo(handle: not null  QRectH; p: QPointH) is
begin
  QRect_moveTo2(handle,p);
end;
function QRect_contains(handle: not null  QRectH; x: Integer; y: Integer) return  Boolean is
begin
 return QRect_contains2(handle,x,y);
end;

function QRectF_create(topleft: QPointFH; size: QSizeFH) return  QRectFH is
begin
 return QRectF_create2(topleft, size);
end;

function QRectF_create(topleft: QPointFH; bottomRight: QPointFH) return  QRectFH is
begin
 return QRectF_create3(topleft, bottomRight);
end;

function QRectF_create(left: Double; top: Double; width: Double; height: Double) return  QRectFH is
begin
 return QRectF_create4(left, top, width, height);
end;

function QRectF_create(rect: QRectH) return  QRectFH is
begin
 return QRectF_create5(rect);
end;

procedure QRectF_translate(handle: not null  QRectFH; p: QPointFH) is
begin
  QRectF_translate2(handle, p);
end;

function  QRectF_translated(handle: not null  QRectFH; p: QPointFH) return QRectFH is
begin
  return QRectF_translated2(handle, p);
end;

procedure QRectF_moveTo(handle: not null  QRectFH; p: QPointFH) is
begin
  QRectF_moveTo2(handle, p);
end;

end Qt.QRect;
