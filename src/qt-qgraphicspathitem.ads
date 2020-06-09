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

package Qt.QGraphicsPathItem  is
 
 function  QGraphicsPathItem_create(path:QPainterPathH;parent:QGraphicsItemH := null) return QGraphicsPathItemH;
 pragma Import(C,QGraphicsPathItem_create, "QGraphicsPathItem_create");
 
 function  QGraphicsPathItem_create2(parent:QGraphicsItemH := null) return QGraphicsPathItemH;
 pragma Import(C,QGraphicsPathItem_create2, "QGraphicsPathItem_create2");
 
 procedure QGraphicsPathItem_destroy(handle: not null QGraphicsPathItemH);
 pragma Import(C,QGraphicsPathItem_destroy, "QGraphicsPathItem_destroy");
 
 function  QGraphicsPathItem_path(handle: not null QGraphicsPathItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPathItem_path, "QGraphicsPathItem_path");
 
 procedure QGraphicsPathItem_setPath(handle: not null QGraphicsPathItemH;path: QPainterPathH);
 pragma Import(C,QGraphicsPathItem_setPath, "QGraphicsPathItem_setPath");
 
 function  QGraphicsPathItem_boundingRect(handle: not null QGraphicsPathItemH) return QRectFH;
 pragma Import(C,QGraphicsPathItem_boundingRect, "QGraphicsPathItem_boundingRect");
 
 procedure QGraphicsPathItem_paint(handle: not null QGraphicsPathItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH;widget: QWidgetH := null);
 pragma Import(C,QGraphicsPathItem_paint, "QGraphicsPathItem_paint");
 
 function  QGraphicsPathItem_shape(handle: not null QGraphicsPathItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPathItem_shape, "QGraphicsPathItem_shape");
 
 function  QGraphicsPathItem_contains(handle: not null QGraphicsPathItemH;point: QPointFH) return boolean;
 pragma Import(C,QGraphicsPathItem_contains, "QGraphicsPathItem_contains");
 
 function  QGraphicsPathItem_isObscuredBy(handle: not null QGraphicsPathItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsPathItem_isObscuredBy, "QGraphicsPathItem_isObscuredBy");
 
 function  QGraphicsPathItem_opaqueArea(handle: not null QGraphicsPathItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPathItem_opaqueArea, "QGraphicsPathItem_opaqueArea");
 
 function  QGraphicsPathItem_type(handle: not null QGraphicsPathItemH) return integer;
 pragma Import(C,QGraphicsPathItem_type, "QGraphicsPathItem_type");

 function  QGraphicsPathItem_create(parent:QGraphicsItemH := null) return QGraphicsPathItemH;

end Qt.QGraphicsPathItem;
