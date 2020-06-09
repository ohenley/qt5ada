-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2020                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QDrawUtils is

 procedure QDrawUtils_qDrawShadeLine(painter: not null QPainterH;x1,y1,x2,y2: integer;pal:QPaletteH;sunken : boolean :=  true;lineWidth : integer :=  1;midLineWidth : integer :=  0);
 pragma Import(C,QDrawUtils_qDrawShadeLine, "QDrawUtils_qDrawShadeLine");
 
 procedure QDrawUtils_qDrawShadeLine2(painter: not null QPainterH;p1:QPointH;p2:QPointH;pal:QPaletteH;sunken : boolean :=  true;lineWidth :integer :=  1;midLineWidth : integer :=  0);
 pragma Import(C,QDrawUtils_qDrawShadeLine2, "QDrawUtils_qDrawShadeLine2");
 
 procedure QDrawUtils_qDrawShadeRect(painter: not null QPainterH;x,y,w,h: integer;pal:QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;midLineWidth : integer := 0;fill :QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawShadeRect, "QDrawUtils_qDrawShadeRect");
 
 procedure QDrawUtils_qDrawShadeRect2(painter: not null QPainterH;r:QRectH;pal: QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;midLineWidth : integer :=  0;fill : QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawShadeRect2, "QDrawUtils_qDrawShadeRect2");
 
 procedure QDrawUtils_qDrawShadePanel(painter: not null QPainterH;x,y,w,h: integer;pal: QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;fill : QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawShadePanel, "QDrawUtils_qDrawShadePanel");
 
 procedure QDrawUtils_qDrawShadePanel2(painter: not null QPainterH;r: QRectH;pal:QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;fill :  QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawShadePanel2, "QDrawUtils_qDrawShadePanel2");
 
 procedure QDrawUtils_qDrawWinButton(painter: not null QPainterH;x,y,w,h: integer;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawWinButton, "QDrawUtils_qDrawWinButton");
 
 procedure QDrawUtils_qDrawWinButton2(painter: not null QPainterH;r:  QRectH;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawWinButton2, "QDrawUtils_qDrawWinButton2");
 
 procedure QDrawUtils_qDrawWinPanel(painter: not null QPainterH;x,y,w,h: integer;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawWinPanel, "QDrawUtils_qDrawWinPanel");
 
 procedure QDrawUtils_qDrawWinPanel2(painter: not null QPainterH;r:QRectH;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawWinPanel2, "QDrawUtils_qDrawWinPanel2");
 
 procedure QDrawUtils_qDrawPlainRect(painter: not null QPainterH;x,y,w,h: integer;color:QColorH;lineWidth : integer := 1;fill : QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawPlainRect, "QDrawUtils_qDrawPlainRect");
 
 procedure QDrawUtils_qDrawPlainRect2(painter: not null QPainterH;r:QRectH;color:  QColorH;lineWidth :integer := 1;fill : QBrushH :=  null);
 pragma Import(C,QDrawUtils_qDrawPlainRect2, "QDrawUtils_qDrawPlainRect2");
 
 procedure QDrawUtils_qDrawBorderPixmap(painter: not null QPainterH;targetRect:QRectH;targetMargins:QMarginsH;pixmap:QPixmapH;sourceRect:QRectH;sourceMargins:QMarginsH);
 pragma Import(C,QDrawUtils_qDrawBorderPixmap, "QDrawUtils_qDrawBorderPixmap");
 
 procedure QDrawUtils_qDrawBorderPixmap2(painter: not null QPainterH;rect:QRectH;margins:QMarginsH;pixmap:QPixmapH);
 pragma Import(C,QDrawUtils_qDrawBorderPixmap2, "QDrawUtils_qDrawBorderPixmap2");
----------------------------------------------------------------------------
 procedure QDrawUtils_qDrawShadeLine(painter: not null QPainterH;p1:QPointH;p2:QPointH;pal:QPaletteH;sunken : boolean :=  true;lineWidth :integer :=  1;midLineWidth : integer :=  0);
 procedure QDrawUtils_qDrawShadeRect(painter: not null QPainterH;r:QRectH;pal: QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;midLineWidth : integer :=  0;fill : QBrushH :=  null);
 procedure QDrawUtils_qDrawShadePanel(painter: not null QPainterH;r: QRectH;pal:QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;fill :  QBrushH :=  null);
 procedure QDrawUtils_qDrawWinButton(painter: not null QPainterH;r:  QRectH;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null);
 procedure QDrawUtils_qDrawWinPanel(painter: not null QPainterH;r:QRectH;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null);
 procedure QDrawUtils_qDrawPlainRect(painter: not null QPainterH;r:QRectH;color:  QColorH;lineWidth :integer := 1;fill : QBrushH :=  null);
 procedure QDrawUtils_qDrawBorderPixmap(painter: not null QPainterH;rect:QRectH;margins:QMarginsH;pixmap:QPixmapH);

end;
