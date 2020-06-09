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

package body Qt.QPalette is

function QPalette_create(button: QColorH) return  QPaletteH is
begin
  return QPalette_create2(button);
end;

function QPalette_create(button: QtGlobalColor) return  QPaletteH is
begin
  return QPalette_create3(button);
end;

function QPalette_create(button: QColorH; window: QColorH) return  QPaletteH is
begin
  return QPalette_create4(button,window);
end;

function QPalette_create(windowText: QBrushH; button: QBrushH; light: QBrushH; dark: QBrushH; mid: QBrushH; text: QBrushH; bright_text: QBrushH; base: QBrushH; window: QBrushH) return  QPaletteH is
begin
  return QPalette_create5(windowText, button,light, dark, mid, text, bright_text, base, window);
end;

function QPalette_create(windowText: QColorH; window: QColorH; light: QColorH; dark: QColorH; mid: QColorH; text: QColorH; base: QColorH) return  QPaletteH is
begin
  return QPalette_create6(windowText, window, light, dark, mid, text, base);
end;

function QPalette_create(palette: QPaletteH) return  QPaletteH is
begin
  return  QPalette_create7(palette);
end;

procedure QPalette_setColor(handle: not null  QPaletteH; cr: QPaletteColorRole; color: QColorH) is
begin
  QPalette_setColor2(handle,cr, color);
end;

procedure QPalette_setBrush(handle: not null  QPaletteH; cg: QPaletteColorGroup; cr: QPaletteColorRole; brush: QBrushH) is
begin
  QPalette_setBrush2(handle,cg,cr, brush);
end;

function QPalette_color(handle: not null  QPaletteH; cr: QPaletteColorRole) return  QColorH is
begin
  return QPalette_color2(handle, cr);
end;

function QPalette_brush(handle: not null  QPaletteH; cr: QPaletteColorRole) return  QBrushH is
begin
  return  QPalette_brush2(handle, cr);
end;

function QPalette_resolve(handle: not null  QPaletteH) return  LongWord is
begin
  return QPalette_resolve2(handle);
end;

procedure QPalette_resolve(handle: not null  QPaletteH; mask: LongWord) is
begin
  QPalette_resolve3(handle, mask);
end;

end Qt.QPalette;
