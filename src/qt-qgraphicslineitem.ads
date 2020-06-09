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

package QT.QGraphicsLineItem  is

 function  QGraphicsLineItem_create(line:QLineFH;parent:QGraphicsItemH := Null) return QGraphicsLineItemH;
 pragma Import(C,QGraphicsLineItem_create, "QGraphicsLineItem_create");
 
 function  QGraphicsLineItem_create2(parent:QGraphicsItemH := Null) return QGraphicsLineItemH;
 pragma Import(C,QGraphicsLineItem_create2, "QGraphicsLineItem_create2");
 
 function  QGraphicsLineItem_create3(x1,y1,x2,y2: qreal; parent: QGraphicsItemH := Null) return QGraphicsLineItemH;
 pragma Import(C,QGraphicsLineItem_create3, "QGraphicsLineItem_create3");
 
 procedure QGraphicsLineItem_destroy(handle: not null QGraphicsLineItemH);
 pragma Import(C,QGraphicsLineItem_destroy, "QGraphicsLineItem_destroy");
 
 function  QGraphicsLineItem_pen(handle: not null QGraphicsLineItemH) return QPenH;
 pragma Import(C,QGraphicsLineItem_pen, "QGraphicsLineItem_pen");
 
 procedure QGraphicsLineItem_setPen(handle: not null QGraphicsLineItemH; pen: QPenH);
 pragma Import(C,QGraphicsLineItem_setPen, "QGraphicsLineItem_setPen");
 
 function  QGraphicsLineItem_line(handle: not null QGraphicsLineItemH) return QLineFH;
 pragma Import(C,QGraphicsLineItem_line, "QGraphicsLineItem_line");
 
 procedure QGraphicsLineItem_setLine(handle: not null QGraphicsLineItemH; line:QLineFH);
 pragma Import(C,QGraphicsLineItem_setLine, "QGraphicsLineItem_setLine");
 
 procedure QGraphicsLineItem_setLine2(handle: not null QGraphicsLineItemH; x1,y1,x2,y2: qreal);
 pragma Import(C,QGraphicsLineItem_setLine2, "QGraphicsLineItem_setLine2");
 
 function  QGraphicsLineItem_boundingRect(handle: not null QGraphicsLineItemH) return QRectFH;
 pragma Import(C,QGraphicsLineItem_boundingRect, "QGraphicsLineItem_boundingRect");
 
 function  QGraphicsLineItem_shape(handle: not null QGraphicsLineItemH) return QPainterPathH;
 pragma Import(C,QGraphicsLineItem_shape, "QGraphicsLineItem_shape");
 
 function  QGraphicsLineItem_contains(handle: not null QGraphicsLineItemH; point:QPointFH) return boolean;
 pragma Import(C,QGraphicsLineItem_contains, "QGraphicsLineItem_contains");
 
 procedure QGraphicsLineItem_paint(handle: not null QGraphicsLineItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH; widget:QWidgetH := null);
 pragma Import(C,QGraphicsLineItem_paint, "QGraphicsLineItem_paint");
 
 function  QGraphicsLineItem_isObscuredBy(handle: not null QGraphicsLineItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsLineItem_isObscuredBy, "QGraphicsLineItem_isObscuredBy");
 
 function  QGraphicsLineItem_opaqueArea(handle: not null QGraphicsLineItemH) return QPainterPathH;
 pragma Import(C,QGraphicsLineItem_opaqueArea, "QGraphicsLineItem_opaqueArea");
 
 function  QGraphicsLineItem_type(handle: not null QGraphicsLineItemH) return integer;
 pragma Import(C,QGraphicsLineItem_type, "QGraphicsLineItem_type");
------------------------------------------------------------------------------------------------------------------------
 function  QGraphicsLineItem_create(parent:QGraphicsItemH := Null) return QGraphicsLineItemH;
 function  QGraphicsLineItem_create(x1,y1,x2,y2: qreal; parent: QGraphicsItemH := Null) return QGraphicsLineItemH;
 procedure QGraphicsLineItem_setLine(handle: not null QGraphicsLineItemH; x1,y1,x2,y2: qreal);

end QT.QGraphicsLineItem;
