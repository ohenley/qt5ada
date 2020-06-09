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

package body Qt.QMatrix              is

function QMatrix_create(m11: Double; m12: Double; m21: Double; m22: Double; dx: Double; dy: Double) return  QMatrixH is
begin
  return QMatrix_create2(m11, m12, m21, m22, dx, dy);
end;

function QMatrix_create(matrix: QMatrixH) return  QMatrixH is
begin
  return QMatrix_create3(matrix);
end;

procedure QMatrix_map(handle: not null  QMatrixH; x: Double; y: Double; tx: PDouble; ty: PDouble) is
begin
  QMatrix_map2(handle, x, y, tx, ty);
end;

function  QMatrix_map(handle: not null  QMatrixH; p: QPointH) return QPointH is
begin
 return QMatrix_map3(handle, p);
end;

function  QMatrix_map(handle: not null  QMatrixH;p: QPointFH) return QPointFH is
begin
 return QMatrix_map4(handle, p);
end;

function  QMatrix_map(handle: not null  QMatrixH;l: QLineH) return QLineH is
begin
 return QMatrix_map5(handle, l);
end;

function  QMatrix_map(handle: not null  QMatrixH;l: QLineFH) return QLineFH is
begin
  return QMatrix_map6(handle, l);
end;

function  QMatrix_map(handle: not null  QMatrixH; a: QPolygonFH) return QPolygonFH is
begin
  return QMatrix_map7(handle, a);
end;

function  QMatrix_map(handle: not null  QMatrixH; a: QPolygonH) return  QPolygonH is
begin
  return QMatrix_map8(handle, a);
end;

function  QMatrix_map(handle: not null  QMatrixH; r: QRegionH) return QRegionH is
begin
  return QMatrix_map9(handle, r);
end;

function  QMatrix_map(handle: not null  QMatrixH; p: QPainterPathH) return QPainterPathH is
begin
 return QMatrix_map10(handle, p);
end;

function  QMatrix_mapRect(handle: not null  QMatrixH; p1: QRectFH) return QRectFH is
begin
  return  QMatrix_mapRect2(handle, p1);
end;

end Qt.QMatrix;
