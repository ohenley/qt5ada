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

package body Qt.QRegion              is

function QRegion_create(x: Integer; y: Integer; w: Integer; h: Integer; t: QRegionRegionType := QRegionRectangle) return QRegionH is
begin
  return QRegion_create2(x, y, w, h, t);
end;

function QRegion_create(r: QRectH; t: QRegionRegionType := QRegionRectangle) return QRegionH is
begin
  return QRegion_create3(r, t);
end;

function QRegion_create(pa: QPolygonH; fillRule: QtFillRule := QtOddEvenFill) return QRegionH is
begin
  return QRegion_create4(pa, fillRule);
end;

function QRegion_create(region: QRegionH) return  QRegionH is
begin
  return QRegion_create5(region);
end;

function QRegion_create(bitmap: QBitmapH) return  QRegionH is
begin
  return QRegion_create6(bitmap);
end;

function QRegion_contains(handle: not null  QRegionH; r: QRectH) return  Boolean is
begin
  return QRegion_contains2(handle, r);
end;

procedure QRegion_translate(handle: not null  QRegionH; p: QPointH) is
begin
  QRegion_translate2(handle, p);
end;

function  QRegion_translated(handle: not null  QRegionH; p: QPointH) return QRegionH is
begin
  return QRegion_translated2(handle, p);
end;

function QRegion_intersects(handle: not null  QRegionH; r: QRectH) return  Boolean is
begin
  return QRegion_intersects2(handle, r);
end;

end Qt.QRegion;
