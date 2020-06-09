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

package body Qt.QColor               is


function QColor_create(color: QtGlobalColor) return  QColorH is
begin
 return QColor_create2(color);
end;

function QColor_create(r: Integer; g: Integer; b: Integer; a: Integer := 255) return QColorH is
begin
 return QColor_create3(r,g,b,a);
end;

function QColor_create(rgb: QRgbH) return  QColorH is
begin
 return QColor_create4(rgb);
end;

function QColor_create(name: QStringH) return  QColorH is
begin
 return QColor_create5(name);
end;

function QColor_create(name: zstring) return  QColorH is
begin
 return QColor_create6(name);
end;

function QColor_create(color: QColorH) return  QColorH is
begin
 return QColor_create7(color);
end;

function QColor_create(spec: QColorSpec) return  QColorH is
begin
 return QColor_create8(spec);
end;

function QColor_create(value: QVariantH) return  QColorH is
begin
 return QColor_create9(value);
end;

procedure QColor_setRgb(handle: not null  QColorH; rgb: QRgbH) is
begin
 QColor_setRgb2(handle, rgb);
end;

function  QColor_fromRgb(r: Integer; g: Integer; b: Integer; a: Integer := 255) return  QColorH  is
begin
 return QColor_fromRgb2(r, g, b, a);
end;
end Qt.QColor;
