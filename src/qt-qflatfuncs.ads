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

package Qt.QFlatfuncs  is
 
 function  QtVersion return QStringH;
 pragma Import(C,QtVersion, "QtVersion");
 
 procedure QFlatfuncs_DrawShadeRect(painter:QPainterH; x,y,w,h:integer;palette:QPaletteH;sunken:boolean;lineWidth,midLineWidth:integer;fill: QBrushH);
 pragma Import(C,QFlatfuncs_DrawShadeRect, "QFlatfuncs_DrawShadeRect");
 
 procedure QFlatfuncs_DrawShadeRect2(painter:QPainterH;rect: QRectH;palette:QPaletteH;sunken:boolean;lineWidth,midLineWidth:integer;fill: QBrushH);
 pragma Import(C,QFlatfuncs_DrawShadeRect2, "QFlatfuncs_DrawShadeRect2");
 
 procedure QFlatfuncs_DrawPlainRect(painter:QPainterH; x,y,w,h:integer;color: QColorH; lineWidth:integer;fill: QBrushH);
 pragma Import(C,QFlatfuncs_DrawPlainRect, "QFlatfuncs_DrawPlainRect");
 
 procedure QFlatfuncs_DrawPlainRect2(painter:QPainterH; rect:QRectH; color: QColorH; lineWidth:integer;fill: QBrushH);
 pragma Import(C,QFlatfuncs_DrawPlainRect2, "QFlatfuncs_DrawPlainRect2");
 
 procedure QFlatfuncs_DrawWinPanel(painter:QPainterH; x,y,w,h:integer;palette: QPaletteH; sunken:boolean;fill: QBrushH);
 pragma Import(C,QFlatfuncs_DrawWinPanel, "QFlatfuncs_DrawWinPanel");
 
 procedure QFlatfuncs_DrawWinPanel2(painter:QPainterH; rect:QRectH;palette: QPaletteH; sunken:boolean;fill: QBrushH);
 pragma Import(C,QFlatfuncs_DrawWinPanel2, "QFlatfuncs_DrawWinPanel2");
 
 procedure QFlatfuncs_DrawShadeLine(painter:QPainterH; x1,y1,x2,y2:integer;palette: QPaletteH;sunken:boolean;lineWidth, midLineWidth:integer);
 pragma Import(C,QFlatfuncs_DrawShadeLine, "QFlatfuncs_DrawShadeLine");
 
 procedure QFlatfuncs_DrawShadePanel(painter:QPainterH; x,y,w,h:integer;palette: QPaletteH;sunken:boolean;lineWidth, midLineWidth:integer);
 pragma Import(C,QFlatfuncs_DrawShadePanel, "QFlatfuncs_DrawShadePanel");
 
 procedure QFlatfuncs_DrawShadePanel2(painter:QPainterH;rect:QRectH;palette: QPaletteH; sunken:boolean; lineWidth:integer;fill:QBrushH);
 pragma Import(C,QFlatfuncs_DrawShadePanel2, "QFlatfuncs_DrawShadePanel2");
 
------------------------------------------------------------------------------------------------
 procedure QFlatfuncs_DrawShadeRect(painter:QPainterH;rect: QRectH;palette:QPaletteH;sunken:boolean;lineWidth,midLineWidth:integer;fill: QBrushH);
 procedure QFlatfuncs_DrawPlainRect(painter:QPainterH; rect:QRectH; color: QColorH; lineWidth:integer;fill: QBrushH);
 procedure QFlatfuncs_DrawWinPanel(painter:QPainterH; rect:QRectH;palette: QPaletteH; sunken:boolean;fill: QBrushH);
 procedure QFlatfuncs_DrawShadePanel(painter:QPainterH;rect:QRectH;palette: QPaletteH; sunken:boolean; lineWidth:integer;fill:QBrushH);

end Qt.QFlatfuncs;
