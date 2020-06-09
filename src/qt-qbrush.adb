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

package body Qt.QBrush               is

function QBrush_create(bs: QtBrushStyle) return  QBrushH is
begin
  return QBrush_create2(bs);
end;

function QBrush_create(color: QColorH; bs: QtBrushStyle := QtSolidPattern) return QBrushH is
begin
  return QBrush_create3(color, bs);
end;

function QBrush_create(color: QtGlobalColor; bs: QtBrushStyle := QtSolidPattern) return QBrushH is
begin
  return QBrush_create4(color, bs);
end;

function QBrush_create(color: QColorH; pixmap: QPixmapH) return  QBrushH is
begin
  return QBrush_create5(color, pixmap);
end;

function QBrush_create(color: QtGlobalColor; pixmap: QPixmapH) return  QBrushH is
begin
  return QBrush_create6(color, pixmap);
end;

function QBrush_create(pixmap: QPixmapH) return  QBrushH is
begin
  return QBrush_create7(pixmap);
end;

function QBrush_create(image: QImageH) return  QBrushH is
begin
  return QBrush_create8(image);
end;

function QBrush_create(brush: QBrushH) return  QBrushH is
begin
  return QBrush_create9(brush);
end;

function QBrush_create(gradient: QGradientH) return  QBrushH is
begin
  return QBrush_create10(gradient);
end;

procedure QBrush_setColor(handle: not null  QBrushH; color: QtGlobalColor) is
begin
 QBrush_setColor2(handle,color);
end;

end Qt.QBrush;
