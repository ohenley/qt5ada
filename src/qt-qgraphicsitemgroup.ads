-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package QT.QGraphicsItemGroup  is

 function  QGraphicsItemGroup_create(parent:QGraphicsItemH := Null) return  QGraphicsItemGroupH;
 pragma Import(C,QGraphicsItemGroup_create, "QGraphicsItemGroup_create");
 
 procedure QGraphicsItemGroup_destroy(handle: not null QGraphicsItemGroupH);
 pragma Import(C,QGraphicsItemGroup_destroy, "QGraphicsItemGroup_destroy");
 
 function  QGraphicsItemGroup_isObscuredBy(handle: not null QGraphicsItemGroupH;item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItemGroup_isObscuredBy, "QGraphicsItemGroup_isObscuredBy");
 
 procedure QGraphicsItemGroup_addToGroup(handle: not null QGraphicsItemGroupH;item:QGraphicsItemH);
 pragma Import(C,QGraphicsItemGroup_addToGroup, "QGraphicsItemGroup_addToGroup");
 
 procedure QGraphicsItemGroup_removeFromGroup(handle: not null QGraphicsItemGroupH;item:QGraphicsItemH);
 pragma Import(C,QGraphicsItemGroup_removeFromGroup, "QGraphicsItemGroup_removeFromGroup");
 
 function  QGraphicsItemGroup_boundingRect(handle: not null QGraphicsItemGroupH) return QRectFH;
 pragma Import(C,QGraphicsItemGroup_boundingRect, "QGraphicsItemGroup_boundingRect");
 
 procedure QGraphicsItemGroup_paint(handle: not null QGraphicsItemGroupH;paiter:QPainterH;option: QStyleOptionGraphicsItemH; widget:QWidgetH := Null);
 pragma Import(C,QGraphicsItemGroup_paint, "QGraphicsItemGroup_paint");
 
 function  QGraphicsItemGroup_opaqueArea(handle: not null QGraphicsItemGroupH) return QPainterPathH;
 pragma Import(C,QGraphicsItemGroup_opaqueArea, "QGraphicsItemGroup_opaqueArea");
 
 function  QGraphicsItemGroup_type(handle: not null QGraphicsItemGroupH) return int;
 pragma Import(C,QGraphicsItemGroup_type, "QGraphicsItemGroup_type");
 
end;
