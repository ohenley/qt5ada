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

package body Qt.QBitmap              is

function QBitmap_create(p1: QPixmapH) return  QBitmapH is
begin
 return QBitmap_create2(p1);
end;

function QBitmap_create(w: Integer; h: Integer) return  QBitmapH is
begin
 return QBitmap_create3(w, h);
end;

function QBitmap_create(p1: QSizeH) return  QBitmapH is
begin
 return QBitmap_create4(p1);
end;

function QBitmap_create(fileName: QStringH; format: zstring := null_Zstr) return QBitmapH is
begin
 return QBitmap_create5(fileName, format);
end;

function  QBitmap_transformed(handle: not null  QBitmapH; matrix: QTransformH) return QBitmapH is
begin
  return QBitmap_transformed2(handle, matrix);
end;

end Qt.QBitmap;
