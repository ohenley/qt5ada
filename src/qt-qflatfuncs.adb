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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QFlatfuncs  is
 
 procedure QFlatfuncs_DrawShadeRect(painter:QPainterH;rect: QRectH;palette:QPaletteH;sunken:boolean;lineWidth,midLineWidth:integer;fill: QBrushH) is
 begin
  QFlatfuncs_DrawShadeRect2(painter,rect,palette,sunken,lineWidth,midLineWidth,fill);
 end;

 procedure QFlatfuncs_DrawPlainRect(painter:QPainterH; rect:QRectH; color: QColorH; lineWidth:integer;fill: QBrushH) is
 begin
   QFlatfuncs_DrawPlainRect2(painter,rect,color,lineWidth,fill);
 end;

 procedure QFlatfuncs_DrawWinPanel(painter:QPainterH; rect:QRectH;palette: QPaletteH; sunken:boolean;fill: QBrushH) is
 begin
   QFlatfuncs_DrawWinPanel2(painter, rect,palette, sunken,fill);
 end;

 procedure QFlatfuncs_DrawShadePanel(painter:QPainterH;rect:QRectH;palette: QPaletteH; sunken:boolean; lineWidth:integer;fill:QBrushH) is
 begin
   QFlatfuncs_DrawShadePanel2(painter,rect,palette, sunken, lineWidth,fill);
 end;

end Qt.QFlatfuncs;
