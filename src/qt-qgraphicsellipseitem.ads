--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QGraphicsEllipseItem  is
 
 function  QGraphicsEllipseItem_create(rect:QRectFH;parent:QGraphicsItemH := null) return QGraphicsEllipseItemH;
 pragma Import(C,QGraphicsEllipseItem_create, "QGraphicsEllipseItem_create");
 
 function  QGraphicsEllipseItem_create2(parent:QGraphicsItemH := Null) return QGraphicsEllipseItemH;
 pragma Import(C,QGraphicsEllipseItem_create2, "QGraphicsEllipseItem_create2");
 
 function  QGraphicsEllipseItem_create3(x,y,w,h: qreal; parent:QGraphicsItemH := Null) return QGraphicsEllipseItemH;
 pragma Import(C,QGraphicsEllipseItem_create3, "QGraphicsEllipseItem_create3");
 
 procedure QGraphicsEllipseItem_destroy(handle: not null QGraphicsEllipseItemH);
 pragma Import(C,QGraphicsEllipseItem_destroy, "QGraphicsEllipseItem_destroy");
 
 function  QGraphicsEllipseItem_rect(handle: not null QGraphicsEllipseItemH) return QRectFH;
 pragma Import(C,QGraphicsEllipseItem_rect, "QGraphicsEllipseItem_rect");
 
 procedure QGraphicsEllipseItem_setRect(handle: not null QGraphicsEllipseItemH; rect:QRectFH);
 pragma Import(C,QGraphicsEllipseItem_setRect, "QGraphicsEllipseItem_setRect");
 
 procedure QGraphicsEllipseItem_setRect2(handle: not null QGraphicsEllipseItemH; x,y,w,h: qreal);
 pragma Import(C,QGraphicsEllipseItem_setRect2, "QGraphicsEllipseItem_setRect2");
 
 function  QGraphicsEllipseItem_shape(handle: not null QGraphicsEllipseItemH) return QPainterPathH;
 pragma Import(C,QGraphicsEllipseItem_shape, "QGraphicsEllipseItem_shape");
 
 function  QGraphicsEllipseItem_contains(handle: not null QGraphicsEllipseItemH;point: QPointFH) return boolean;
 pragma Import(C,QGraphicsEllipseItem_contains, "QGraphicsEllipseItem_contains");
 
 procedure QGraphicsEllipseItem_paint(handle: not null QGraphicsEllipseItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH; widget: QWidgetH := null);
 pragma Import(C,QGraphicsEllipseItem_paint, "QGraphicsEllipseItem_paint");
 
 function  QGraphicsEllipseItem_isObscuredBy(handle: not null QGraphicsEllipseItemH; item: QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsEllipseItem_isObscuredBy, "QGraphicsEllipseItem_isObscuredBy");
 
 function  QGraphicsEllipseItem_opaqueArea(handle: not null QGraphicsEllipseItemH) return QPainterPathH;
 pragma Import(C,QGraphicsEllipseItem_opaqueArea, "QGraphicsEllipseItem_opaqueArea");
 
 function  QGraphicsEllipseItem_boundingRect(handle: not null QGraphicsEllipseItemH) return QRectFH;
 pragma Import(C,QGraphicsEllipseItem_boundingRect, "QGraphicsEllipseItem_boundingRect");
 
 function  QGraphicsEllipseItem_startAngle(handle: not null QGraphicsEllipseItemH) return integer;
 pragma Import(C,QGraphicsEllipseItem_startAngle, "QGraphicsEllipseItem_startAngle");
 
 function  QGraphicsEllipseItem_spanAngle(handle: not null QGraphicsEllipseItemH) return integer;
 pragma Import(C,QGraphicsEllipseItem_spanAngle, "QGraphicsEllipseItem_spanAngle");
 
 procedure QGraphicsEllipseItem_setStartAngle(handle: not null QGraphicsEllipseItemH;angle:integer);
 pragma Import(C,QGraphicsEllipseItem_setStartAngle, "QGraphicsEllipseItem_setStartAngle");
 
 procedure QGraphicsEllipseItem_setSpanAngle(handle: not null QGraphicsEllipseItemH;angle:integer);
 pragma Import(C,QGraphicsEllipseItem_setSpanAngle, "QGraphicsEllipseItem_setSpanAngle");
 
 function  QGraphicsEllipseItem_type(handle: not null QGraphicsEllipseItemH) return integer;
 pragma Import(C,QGraphicsEllipseItem_type, "QGraphicsEllipseItem_type");
-------------------------------------------------------------------------------------
 function  QGraphicsEllipseItem_create(parent:QGraphicsItemH := Null) return QGraphicsEllipseItemH;
 function  QGraphicsEllipseItem_create(x,y,w,h: qreal; parent:QGraphicsItemH := Null) return QGraphicsEllipseItemH;
 procedure QGraphicsEllipseItem_setRect(handle: not null QGraphicsEllipseItemH; x,y,w,h: qreal);

end Qt.QGraphicsEllipseItem;
