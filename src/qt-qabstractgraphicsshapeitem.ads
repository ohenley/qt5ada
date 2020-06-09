--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package QT.QAbstractGraphicsShapeItem  is

 function  QAbstractGraphicsShapeItem_pen(handle: not null QAbstractGraphicsShapeItemH) return QPenH;
 pragma Import(C,QAbstractGraphicsShapeItem_pen, "QAbstractGraphicsShapeItem_pen");
 
 procedure QAbstractGraphicsShapeItem_setPen(handle: not null QAbstractGraphicsShapeItemH; pen: QPenH);
 pragma Import(C,QAbstractGraphicsShapeItem_setPen, "QAbstractGraphicsShapeItem_setPen");
 
 function  QAbstractGraphicsShapeItem_brush(handle: not null QAbstractGraphicsShapeItemH) return QBrushH;
 pragma Import(C,QAbstractGraphicsShapeItem_brush, "QAbstractGraphicsShapeItem_brush");
 
 procedure QAbstractGraphicsShapeItem_setBrush(handle: not null QAbstractGraphicsShapeItemH; brush: QBrushH);
 pragma Import(C,QAbstractGraphicsShapeItem_setBrush, "QAbstractGraphicsShapeItem_setBrush");
 
 function  QAbstractGraphicsShapeItem_isObscuredBy(handle: not null QAbstractGraphicsShapeItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QAbstractGraphicsShapeItem_isObscuredBy, "QAbstractGraphicsShapeItem_isObscuredBy");
 
 function  QAbstractGraphicsShapeItem_opaqueArea(handle: not null QAbstractGraphicsShapeItemH) return QPainterPathH;
 pragma Import(C,QAbstractGraphicsShapeItem_opaqueArea, "QAbstractGraphicsShapeItem_opaqueArea");
 
end QT.QAbstractGraphicsShapeItem;
