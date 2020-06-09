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

package Qt.QGraphicsPolygonItem  is
 
 function  QGraphicsPolygonItem_create(polygon:QPolygonFH; parent:QGraphicsItemH := null) return QGraphicsPolygonItemH;
 pragma Import(C,QGraphicsPolygonItem_create, "QGraphicsPolygonItem_create");
 
 function  QGraphicsPolygonItem_create2(parent:QGraphicsItemH := null) return QGraphicsPolygonItemH;
 pragma Import(C,QGraphicsPolygonItem_create2, "QGraphicsPolygonItem_create2");
 
 procedure QGraphicsPolygonItem_destroy(handle: not null QGraphicsPolygonItemH);
 pragma Import(C,QGraphicsPolygonItem_destroy, "QGraphicsPolygonItem_destroy");
 
 function  QGraphicsPolygonItem_polygon(handle: not null QGraphicsPolygonItemH) return QPolygonFH;
 pragma Import(C,QGraphicsPolygonItem_polygon, "QGraphicsPolygonItem_polygon");
 
 procedure QGraphicsPolygonItem_setPolygon(handle: not null QGraphicsPolygonItemH; polygon: QPolygonH);
 pragma Import(C,QGraphicsPolygonItem_setPolygon, "QGraphicsPolygonItem_setPolygon");
 
 function  QGraphicsPolygonItem_shape(handle: not null QGraphicsPolygonItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPolygonItem_shape, "QGraphicsPolygonItem_shape");
 
 function  QGraphicsPolygonItem_contains(handle: not null QGraphicsPolygonItemH; point: QPointFH) return boolean;
 pragma Import(C,QGraphicsPolygonItem_contains, "QGraphicsPolygonItem_contains");
 
 procedure QGraphicsPolygonItem_paint(handle: not null QGraphicsPolygonItemH; painter:QPainterH; option: QStyleOptionGraphicsItemH;widget: QWidgetH := null);
 pragma Import(C,QGraphicsPolygonItem_paint, "QGraphicsPolygonItem_paint");
 
 function  QGraphicsPolygonItem_isObscuredBy(handle: not null QGraphicsPolygonItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsPolygonItem_isObscuredBy, "QGraphicsPolygonItem_isObscuredBy");
 
 function  QGraphicsPolygonItem_opaqueArea(handle: not null QGraphicsPolygonItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPolygonItem_opaqueArea, "QGraphicsPolygonItem_opaqueArea");
 
 function  QGraphicsPolygonItem_fillRule(handle: not null QGraphicsPolygonItemH) return integer;
 pragma Import(C,QGraphicsPolygonItem_fillRule, "QGraphicsPolygonItem_fillRule");
 
 procedure QGraphicsPolygonItem_setFillRule(handle: not null QGraphicsPolygonItemH;rule:integer);
 pragma Import(C,QGraphicsPolygonItem_setFillRule, "QGraphicsPolygonItem_setFillRule");
 
 function  QGraphicsPolygonItem_boundingRect(handle: not null QGraphicsPolygonItemH) return QRectFH;
 pragma Import(C,QGraphicsPolygonItem_boundingRect, "QGraphicsPolygonItem_boundingRect");
 
 function  QGraphicsPolygonItem_type(handle: not null QGraphicsPolygonItemH) return integer;
 pragma Import(C,QGraphicsPolygonItem_type, "QGraphicsPolygonItem_type");
 
 function  QGraphicsPolygonItem_create(parent:QGraphicsItemH := null) return QGraphicsPolygonItemH;

end Qt.QGraphicsPolygonItem;
