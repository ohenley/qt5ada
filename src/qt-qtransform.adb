--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QTransform           is

function QTransform_create(h11: Double; h12: Double; h13: Double; h21: Double; h22: Double; h23: Double; h31: Double; h32: Double; h33: Double := 1.0) return QTransformH is
begin
 return QTransform_create2(h11,h12, h13, h21, h22, h23, h31, h32, h33);
end;

function QTransform_create(h11: Double; h12: Double; h13: Double; h21: Double; h22: Double; h23: Double) return  QTransformH is
begin
 return QTransform_create3(h11, h12, h13, h21, h22, h23);
end;

function QTransform_create(mtx: QMatrixH) return  QTransformH is
begin
 return QTransform_create4(mtx);
end;

function  QTransform_map(handle: not null  QTransformH; p: QPointFH) return QPointFH is
begin
  return QTransform_map2(handle, p);
end;

function  QTransform_map(handle: not null  QTransformH; l: QLineH) return  QLineH is
begin
  return QTransform_map3(handle, l);
end;

function  QTransform_map(handle: not null  QTransformH; l: QLineFH) return QLineFH is
begin
 return QTransform_map4(handle,l);
end;

function  QTransform_map(handle: not null  QTransformH; a: QPolygonFH) return QPolygonFH is
begin
  return QTransform_map5(handle, a);
end;

function  QTransform_map(handle: not null  QTransformH; a: QPolygonH) return QPolygonH is
begin
  return QTransform_map6(handle, a);
end;

function QTransform_map(handle: not null  QTransformH; r: QRegionH) return QRegionH is
begin
  return QTransform_map7(handle, r);
end;

function QTransform_map(handle: not null  QTransformH; p: QPainterPathH) return  QPainterPathH is
begin
  return QTransform_map8(handle, p);
end;

procedure QTransform_map(handle: not null  QTransformH; x: Integer; y: Integer; tx: PInteger; ty: PInteger) is
begin
 QTransform_map9(handle, x, y, tx, ty);
end;

procedure QTransform_map(handle: not null  QTransformH; x: Double; y: Double; tx: PDouble; ty: PDouble) is
begin
 QTransform_map10(handle, x, y, tx, ty);
end;

function QTransform_mapRect(handle: not null  QTransformH; p1: QRectFH) return QRectFH is
begin
  return QTransform_mapRect2(handle, p1);
end;


end Qt.QTransform;
