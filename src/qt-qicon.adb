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

package body Qt.QIcon                is

function QIcon_create(pixmap: QPixmapH) return  QIconH is
begin
 return  QIcon_create2(pixmap);
end;

function QIcon_create(other: QIconH) return  QIconH is
begin
 return QIcon_create3(other);
end;

function QIcon_create(fileName: QStringH) return  QIconH is
begin
 return  QIcon_create4(fileName);
end;

function QIcon_create(engine: QIconEngineH) return  QIconH is
begin
 return  QIcon_create5(engine);
end;

function  QIcon_pixmap(handle: not null  QIconH; w: Integer; h: Integer; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QPixmapH is
begin
 return QIcon_pixmap2(handle,  w, h, mode, state);
end;

function  QIcon_pixmap(handle: not null  QIconH; extent: Integer; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) return QPixmapH is
begin
  return QIcon_pixmap3(handle, extent, mode, state);
end;

procedure QIcon_paint(handle: not null  QIconH; painter: QPainterH; x: Integer; y: Integer; w: Integer; h: Integer; alignment: QtAlignment := QtAlignCenter; mode: QIconMode := QIconNormal; state: QIconState := QIconOff) is
begin
  QIcon_paint2(handle, painter, x, y, w, h, alignment, mode, state);
end;

function  QIcon_fromTheme(name:QStringH) return QIconH is
begin
  return  QIcon_fromTheme2(name);
end;

end Qt.QIcon;
