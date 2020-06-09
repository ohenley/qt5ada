--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGraphicsRectItem  is

 function  QGraphicsRectItem_create(rect:QRectFH; parent:QGraphicsItemH := Null) return QGraphicsRectItemH;
 pragma Import(C,QGraphicsRectItem_create, "QGraphicsRectItem_create");
 
 function  QGraphicsRectItem_create2(parent:QGraphicsItemH  := Null) return QGraphicsRectItemH;
 pragma Import(C,QGraphicsRectItem_create2, "QGraphicsRectItem_create2");
 
 function  QGraphicsRectItem_create3(x,y,w,h: qreal; parent:QGraphicsItemH := Null) return QGraphicsRectItemH;
 pragma Import(C,QGraphicsRectItem_create3, "QGraphicsRectItem_create3");
 

 procedure QGraphicsRectItem_destroy(handle: not null QGraphicsRectItemH);
 pragma Import(C,QGraphicsRectItem_destroy, "QGraphicsRectItem_destroy");
 
 function  QGraphicsRectItem_rect(handle: not null QGraphicsRectItemH) return QRectFH;
 pragma Import(C,QGraphicsRectItem_rect, "QGraphicsRectItem_rect");
 
 procedure QGraphicsRectItem_setRect(handle: not null QGraphicsRectItemH;rect: QRectFH);
 pragma Import(C,QGraphicsRectItem_setRect, "QGraphicsRectItem_setRect");
 
 procedure QGraphicsRectItem_setRect2(handle: not null QGraphicsRectItemH; x,y,w,h: qreal);
 pragma Import(C,QGraphicsRectItem_setRect2, "QGraphicsRectItem_setRect2");
 
 function  QGraphicsRectItem_boundingRect(handle: not null QGraphicsRectItemH) return QRectFH;
 pragma Import(C,QGraphicsRectItem_boundingRect, "QGraphicsRectItem_boundingRect");
 
 function  QGraphicsRectItem_shape(handle: not null QGraphicsRectItemH) return QPainterPathH;
 pragma Import(C,QGraphicsRectItem_shape, "QGraphicsRectItem_shape");
 
 function  QGraphicsRectItem_contains(handle: not null QGraphicsRectItemH; point: QPointFH) return boolean;
 pragma Import(C,QGraphicsRectItem_contains, "QGraphicsRectItem_contains");
 
 procedure QGraphicsRectItem_paint(handle: not null QGraphicsRectItemH;painter:QPainterH; option:QStyleOptionGraphicsItemH; widget:QWidgetH := null);
 pragma Import(C,QGraphicsRectItem_paint, "QGraphicsRectItem_paint");
 
 function  QGraphicsRectItem_isObscuredBy(handle: not null QGraphicsRectItemH; item: QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsRectItem_isObscuredBy, "QGraphicsRectItem_isObscuredBy");
 
 function  QGraphicsRectItem_opaqueArea(handle: not null QGraphicsRectItemH) return QPainterPathH;
 pragma Import(C,QGraphicsRectItem_opaqueArea, "QGraphicsRectItem_opaqueArea");
 
 function  QGraphicsRectItem_type(handle: not null QGraphicsRectItemH) return integer;
 pragma Import(C,QGraphicsRectItem_type, "QGraphicsRectItem_type");
--------------------------------------------------------------------------------------
 function  QGraphicsRectItem_create(parent:QGraphicsItemH  := Null) return QGraphicsRectItemH;
 function  QGraphicsRectItem_create(x,y,w,h: qreal; parent:QGraphicsItemH := Null) return QGraphicsRectItemH;
 procedure QGraphicsRectItem_setRect(handle: not null QGraphicsRectItemH; x,y,w,h: qreal);

end QT.QGraphicsRectItem;
