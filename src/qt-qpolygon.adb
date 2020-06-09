--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QPolygon             is

function QPolygon_create(size: Integer) return  QPolygonH is
begin
 return QPolygon_create2(size);
end;

function QPolygon_create(a: QPolygonH) return  QPolygonH is
begin
 return QPolygon_create3(a);
end;

function QPolygon_create(r: QRectH; closed: Boolean := False) return QPolygonH is
begin
 return QPolygon_create4(r, closed);
end;

function QPolygon_create(nPoints: Integer; points: PInteger) return  QPolygonH is
begin
 return QPolygon_create5(nPoints, points);
end;

procedure QPolygon_translate(handle: not null  QPolygonH; offset: QPointH) is
begin
  QPolygon_translate2(handle, offset);
end;

function  QPolygon_point(handle: not null  QPolygonH; i: Integer) return QPointH is
begin
  return QPolygon_point2(handle, i);
end;

procedure QPolygon_setPoint(handle: not null  QPolygonH; index: Integer; p: QPointH) is
begin
  QPolygon_setPoint2(handle,index,p);
end;

procedure QPolygon_putPoints(handle: not null  QPolygonH; index: Integer; nPoints: Integer; from: QPolygonH; fromIndex: Integer := 0) is
begin
 QPolygon_putPoints3(handle, index, nPoints, from, fromIndex);
end;

function QPolygonF_create(size: Integer) return  QPolygonFH is
begin
 return QPolygonF_create2(size);
end;

function QPolygonF_create(a: QPolygonFH) return  QPolygonFH is
begin
 return QPolygonF_create3(a);
end;

function QPolygonF_create(r: QRectFH) return  QPolygonFH is
begin
 return QPolygonF_create4(r);
end;

function QPolygonF_create(a: QPolygonH) return  QPolygonFH is
begin
 return QPolygonF_create5(a);
end;

procedure QPolygonF_translate(handle: not null  QPolygonFH; offset: QPointFH) is
begin
  QPolygonF_translate2(handle, offset);
end;

 procedure QPolygon_append(handle:not null QPolygonH;p: QPointH) is
 begin
   QPolygon_append2(handle,p);
 end;

 procedure QPolygonF_append(handle:not null QPolygonFH;p: QPointFH ) is
 begin
   QPolygonF_append2(handle,p);
 end;

end Qt.QPolygon;
