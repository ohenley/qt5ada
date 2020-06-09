--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGraphicsProxyWidget  is

 function QGraphicsProxyWidget_create(parent: QGraphicsItemH := null; wFlags:  QtWindowFlags := 0) return  QGraphicsProxyWidgetH;
 pragma Import(C,QGraphicsProxyWidget_create,"QGraphicsProxyWidget_create");

 function QGraphicsProxyWidget_create2(parent: QGraphicsRectItemH; wFlags:  QtWindowFlags := 0) return  QGraphicsProxyWidgetH;
 pragma Import(C,QGraphicsProxyWidget_create2,"QGraphicsProxyWidget_create2");

 procedure   QGraphicsProxyWidget_destroy(handle: not null QGraphicsProxyWidgetH);
 pragma Import(C,QGraphicsProxyWidget_destroy,"QGraphicsProxyWidget_destroy");

 function  QGraphicsProxyWidget_createProxyForChildWidget(handle: not null QGraphicsProxyWidgetH;child:QWidgetH) return QGraphicsProxyWidgetH;
 pragma Import(C,QGraphicsProxyWidget_createProxyForChildWidget,"QGraphicsProxyWidget_createProxyForChildWidget");

 function  QGraphicsProxyWidget_subWidgetRect(handle: not null QGraphicsProxyWidgetH;widget: QWidgetH) return  QRectFH;
 pragma Import(C,QGraphicsProxyWidget_subWidgetRect,"QGraphicsProxyWidget_subWidgetRect");

 function  QGraphicsProxyWidget_transform(handle: not null QGraphicsProxyWidgetH) return  QTransformH;
 pragma Import(C,QGraphicsProxyWidget_transform,"QGraphicsProxyWidget_transform");

 function QGraphicsProxyWidget_widget(handle: not null QGraphicsProxyWidgetH) return  QWidgetH;
 pragma Import(C,QGraphicsProxyWidget_widget,"QGraphicsProxyWidget_widget");

 function QGraphicsProxyWidget_type(handle: not null QGraphicsProxyWidgetH) return  integer;
 pragma Import(C,QGraphicsProxyWidget_type,"QGraphicsProxyWidget_type");

 procedure QGraphicsProxyWidget_paint(handle: not null QGraphicsProxyWidgetH;painter: QPainterH; option: QStyleOptionGraphicsItemH; widget: QWidgetH);
 pragma Import(C,QGraphicsProxyWidget_paint,"QGraphicsProxyWidget_paint");

 procedure QGraphicsProxyWidget_setGeometry(handle: not null QGraphicsProxyWidgetH;rect: QRectFH);
 pragma Import(C,QGraphicsProxyWidget_setGeometry,"QGraphicsProxyWidget_setGeometry");

 procedure QGraphicsProxyWidget_setTransform(handle: not null QGraphicsProxyWidgetH; transform: QTransformH);
 pragma Import(C,QGraphicsProxyWidget_setTransform,"QGraphicsProxyWidget_setTransform");

 procedure QGraphicsProxyWidget_setWidget(handle: not null QGraphicsProxyWidgetH; widget: QWidgetH);
 pragma Import(C,QGraphicsProxyWidget_setWidget,"QGraphicsProxyWidget_setWidget");

 procedure QGraphicsProxyWidget_setOpacity(handle:not null QGraphicsProxyWidgetH;opacity:qreal);
 pragma Import(C,QGraphicsProxyWidget_setOpacity, "QGraphicsProxyWidget_setOpacity");
 
 procedure QGraphicsProxyWidget_resize(handle:not null QGraphicsProxyWidgetH;w,h:qreal);
 pragma Import(C,QGraphicsProxyWidget_resize, "QGraphicsProxyWidget_resize");
 
 function QGraphicsProxyWidget_create(parent: QGraphicsRectItemH; wFlags:  QtWindowFlags := 0) return  QGraphicsProxyWidgetH;

end  Qt.QGraphicsProxyWidget;
