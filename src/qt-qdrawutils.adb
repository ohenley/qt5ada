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

package body Qt.QDrawUtils is

 procedure QDrawUtils_qDrawShadeLine(painter: not null QPainterH;p1:QPointH;p2:QPointH;pal:QPaletteH;sunken : boolean :=  true;lineWidth :integer :=  1;midLineWidth : integer :=  0) is
 begin
  QDrawUtils_qDrawShadeLine2(painter,p1,p2,pal,sunken,lineWidth,midLineWidth);
 end;

 procedure QDrawUtils_qDrawShadeRect(painter: not null QPainterH;r:QRectH;pal: QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;midLineWidth : integer :=  0;fill : QBrushH :=  null) is
 begin
  QDrawUtils_qDrawShadeRect2(painter,r,pal,sunken,lineWidth,midLineWidth,fill);
 end;

 procedure QDrawUtils_qDrawShadePanel(painter: not null QPainterH;r: QRectH;pal:QPaletteH;sunken : boolean :=  false;lineWidth :integer :=  1;fill :  QBrushH :=  null) is
 begin
  QDrawUtils_qDrawShadePanel2(painter,r,pal,sunken,lineWidth,fill);
 end;

 procedure QDrawUtils_qDrawWinButton(painter: not null QPainterH;r:  QRectH;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null) is
 begin
  QDrawUtils_qDrawWinButton2(painter,r,pal,sunken,fill);
 end;

 procedure QDrawUtils_qDrawWinPanel(painter: not null QPainterH;r:QRectH;pal:QPaletteH;sunken : boolean :=  false;fill :QBrushH :=  null) is
 begin
  QDrawUtils_qDrawWinPanel2(painter,r,pal,sunken,fill);
 end;

 procedure QDrawUtils_qDrawPlainRect(painter: not null QPainterH;r:QRectH;color:  QColorH;lineWidth :integer := 1;fill : QBrushH :=  null) is
 begin
  QDrawUtils_qDrawPlainRect2(painter,r,color,lineWidth,fill);
 end;
 
 procedure QDrawUtils_qDrawBorderPixmap(painter: not null QPainterH;rect:QRectH;margins:QMarginsH;pixmap:QPixmapH) is
 begin
  QDrawUtils_qDrawBorderPixmap2(painter,rect,margins,pixmap);
 end;

end;
