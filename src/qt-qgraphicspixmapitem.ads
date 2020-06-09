--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QGraphicsPixmapItem  is

 type ShapeMode is (MaskShape,BoundingRectShape,HeuristicMaskShape);
 pragma Convention(C,ShapeMode);

 function  QGraphicsPixmapItem_create(pixmap:QPixmapH; parent:QGraphicsItemH := null) return QGraphicsPixmapItemH;
 pragma Import(C,QGraphicsPixmapItem_create, "QGraphicsPixmapItem_create");
 
 function  QGraphicsPixmapItem_create2(parent:QGraphicsItemH := null) return QGraphicsPixmapItemH;
 pragma Import(C,QGraphicsPixmapItem_create2, "QGraphicsPixmapItem_create2");
 
 procedure QGraphicsPixmapItem_destroy(handle: not null QGraphicsPixmapItemH);
 pragma Import(C,QGraphicsPixmapItem_destroy, "QGraphicsPixmapItem_destroy");
 
 function  QGraphicsPixmapItem_pixmap(handle: not null QGraphicsPixmapItemH) return QPixmapH;
 pragma Import(C,QGraphicsPixmapItem_pixmap, "QGraphicsPixmapItem_pixmap");
 
 procedure QGraphicsPixmapItem_setPixmap(handle: not null QGraphicsPixmapItemH;pixmap:QPixmapH);
 pragma Import(C,QGraphicsPixmapItem_setPixmap, "QGraphicsPixmapItem_setPixmap");
 
 function  QGraphicsPixmapItem_transformationMode(handle: not null QGraphicsPixmapItemH) return QtTransformationMode;
 pragma Import(C,QGraphicsPixmapItem_transformationMode, "QGraphicsPixmapItem_transformationMode");
 
 procedure QGraphicsPixmapItem_setTransformationMode(handle: not null QGraphicsPixmapItemH;mode:QtTransformationMode);
 pragma Import(C,QGraphicsPixmapItem_setTransformationMode, "QGraphicsPixmapItem_setTransformationMode");
 
 function  QGraphicsPixmapItem_offset(handle: not null QGraphicsPixmapItemH) return QPointFH;
 pragma Import(C,QGraphicsPixmapItem_offset, "QGraphicsPixmapItem_offset");
 
 procedure QGraphicsPixmapItem_setOffset(handle: not null QGraphicsPixmapItemH; offset:QPointFH);
 pragma Import(C,QGraphicsPixmapItem_setOffset, "QGraphicsPixmapItem_setOffset");
 
 procedure QGraphicsPixmapItem_setOffset2(handle: not null QGraphicsPixmapItemH; x,y: qreal);
 pragma Import(C,QGraphicsPixmapItem_setOffset2, "QGraphicsPixmapItem_setOffset2");
 
 function  QGraphicsPixmapItem_boundingRect(handle: not null QGraphicsPixmapItemH) return QRectFH;
 pragma Import(C,QGraphicsPixmapItem_boundingRect, "QGraphicsPixmapItem_boundingRect");
 
 function  QGraphicsPixmapItem_shape(handle: not null QGraphicsPixmapItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPixmapItem_shape, "QGraphicsPixmapItem_shape");
 
 function  QGraphicsPixmapItem_contains(handle: not null QGraphicsPixmapItemH; point: QPointFH) return boolean;
 pragma Import(C,QGraphicsPixmapItem_contains, "QGraphicsPixmapItem_contains");
 
 procedure QGraphicsPixmapItem_paint(handle: not null QGraphicsPixmapItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH; widget:QWidgetH := null);
 pragma Import(C,QGraphicsPixmapItem_paint, "QGraphicsPixmapItem_paint");
 
 function  QGraphicsPixmapItem_isObscuredBy(handle: not null QGraphicsPixmapItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsPixmapItem_isObscuredBy, "QGraphicsPixmapItem_isObscuredBy");
 
 function  QGraphicsPixmapItem_opaqueArea(handle: not null QGraphicsPixmapItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPixmapItem_opaqueArea, "QGraphicsPixmapItem_opaqueArea");
 
 function  QGraphicsPixmapItem_shapeMode(handle: not null QGraphicsPixmapItemH) return ShapeMode;
 pragma Import(C,QGraphicsPixmapItem_shapeMode, "QGraphicsPixmapItem_shapeMode");
 
 procedure QGraphicsPixmapItem_setShapeMode(handle: not null QGraphicsPixmapItemH;mode:ShapeMode);
 pragma Import(C,QGraphicsPixmapItem_setShapeMode, "QGraphicsPixmapItem_setShapeMode");
 
 function  QGraphicsPixmapItem_type(handle: not null QGraphicsPixmapItemH) return integer;
 pragma Import(C,QGraphicsPixmapItem_type, "QGraphicsPixmapItem_type");

 procedure QGraphicsPixmapItem_setZValue(handle: not null QGraphicsPixmapItemH;z:qreal);
 pragma Import(C,QGraphicsPixmapItem_setZValue, "QGraphicsPixmapItem_setZValue");

 procedure QGraphicsPixmapObject_destroy(handle: not null QGraphicsPixmapItemH);
 pragma Import(C,QGraphicsPixmapObject_destroy, "QGraphicsPixmapObject_destroy");
 
 function  QGraphicsPixmapObject_pixmap(handle: not null QGraphicsPixmapItemH) return QPixmapH;
 pragma Import(C,QGraphicsPixmapObject_pixmap, "QGraphicsPixmapObject_pixmap");
 
 procedure QGraphicsPixmapObject_setPixmap(handle: not null QGraphicsPixmapItemH;pixmap:QPixmapH);
 pragma Import(C,QGraphicsPixmapObject_setPixmap, "QGraphicsPixmapObject_setPixmap");
 
 function  QGraphicsPixmapObject_transformationMode(handle: not null QGraphicsPixmapItemH) return QtTransformationMode;
 pragma Import(C,QGraphicsPixmapObject_transformationMode, "QGraphicsPixmapObject_transformationMode");
 
 procedure QGraphicsPixmapObject_setTransformationMode(handle: not null QGraphicsPixmapItemH;mode:QtTransformationMode);
 pragma Import(C,QGraphicsPixmapObject_setTransformationMode, "QGraphicsPixmapObject_setTransformationMode");
 
 function  QGraphicsPixmapObject_offset(handle: not null QGraphicsPixmapItemH) return QPointFH;
 pragma Import(C,QGraphicsPixmapObject_offset, "QGraphicsPixmapObject_offset");
 
 procedure QGraphicsPixmapObject_setOffset(handle: not null QGraphicsPixmapItemH; offset:QPointFH);
 pragma Import(C,QGraphicsPixmapObject_setOffset, "QGraphicsPixmapObject_setOffset");
 
 procedure QGraphicsPixmapObject_setOffset2(handle: not null QGraphicsPixmapItemH; x,y: qreal);
 pragma Import(C,QGraphicsPixmapObject_setOffset2, "QGraphicsPixmapObject_setOffset2");
 
 function  QGraphicsPixmapObject_boundingRect(handle: not null QGraphicsPixmapItemH) return QRectFH;
 pragma Import(C,QGraphicsPixmapObject_boundingRect, "QGraphicsPixmapObject_boundingRect");
 
 function  QGraphicsPixmapObject_shape(handle: not null QGraphicsPixmapItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPixmapObject_shape, "QGraphicsPixmapObject_shape");
 
 function  QGraphicsPixmapObject_contains(handle: not null QGraphicsPixmapItemH; point: QPointFH) return boolean;
 pragma Import(C,QGraphicsPixmapObject_contains, "QGraphicsPixmapObject_contains");
 
 procedure QGraphicsPixmapObject_paint(handle: not null QGraphicsPixmapItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH; widget:QWidgetH := null);
 pragma Import(C,QGraphicsPixmapObject_paint, "QGraphicsPixmapObject_paint");
 
 function  QGraphicsPixmapObject_isObscuredBy(handle: not null QGraphicsPixmapItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsPixmapObject_isObscuredBy, "QGraphicsPixmapObject_isObscuredBy");
 
 function  QGraphicsPixmapObject_opaqueArea(handle: not null QGraphicsPixmapItemH) return QPainterPathH;
 pragma Import(C,QGraphicsPixmapObject_opaqueArea, "QGraphicsPixmapObject_opaqueArea");
 
 function  QGraphicsPixmapObject_shapeMode(handle: not null QGraphicsPixmapItemH) return ShapeMode;
 pragma Import(C,QGraphicsPixmapObject_shapeMode, "QGraphicsPixmapObject_shapeMode");
 
 procedure QGraphicsPixmapObject_setShapeMode(handle: not null QGraphicsPixmapItemH;mode:ShapeMode);
 pragma Import(C,QGraphicsPixmapObject_setShapeMode, "QGraphicsPixmapObject_setShapeMode");
 
 function  QGraphicsPixmapObject_type(handle: not null QGraphicsPixmapItemH) return integer;
 pragma Import(C,QGraphicsPixmapObject_type, "QGraphicsPixmapObject_type");

 procedure QGraphicsPixmapObject_setZValue(handle: not null QGraphicsPixmapItemH;z:qreal);
 pragma Import(C,QGraphicsPixmapObject_setZValue, "QGraphicsPixmapObject_setZValue");

 function  QGraphicsPixmapObject_create(pixmap:QPixmapH;parent :QGraphicsItemH :=  null) return QGraphicsPixmapItemH;
 pragma Import(C,QGraphicsPixmapObject_create, "QGraphicsPixmapObject_create");
 
 function  QGraphicsPixmapObject_create2(parent:QGraphicsItemH := null) return QGraphicsPixmapItemH;
 pragma Import(C,QGraphicsPixmapObject_create2, "QGraphicsPixmapObject_create2");

 function  QGraphicsPixmapObject_propertyAnimation(handle:not null QGraphicsPixmapItemH; property : zstring;parent :QObjectH :=  null) return QAnimationH;
 pragma Import(C,QGraphicsPixmapObject_propertyAnimation, "QGraphicsPixmapObject_propertyAnimation");
 
----------------------------------------------------------------------------------------------------
 function  QGraphicsPixmapItem_create(parent:QGraphicsItemH := null) return QGraphicsPixmapItemH;
 procedure QGraphicsPixmapItem_setOffset(handle: not null QGraphicsPixmapItemH; x,y: qreal);
 function  QGraphicsPixmapObject_create(parent:QGraphicsItemH := null) return QGraphicsPixmapItemH;
 procedure QGraphicsPixmapObject_setOffset(handle: not null QGraphicsPixmapItemH; x,y: qreal);
 
end QT.QGraphicsPixmapItem;
