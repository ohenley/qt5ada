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

package Qt.QGraphicsSimpleTextItem  is

 function  QGraphicsSimpleTextItem_create(text:QStringH;parent: QGraphicsItemH := null) return QGraphicsSimpleTextItemH;
 pragma Import(C,QGraphicsSimpleTextItem_create, "QGraphicsSimpleTextItem_create");
 
 function  QGraphicsSimpleTextItem_create2(parent: QGraphicsItemH := null) return QGraphicsSimpleTextItemH;
 pragma Import(C,QGraphicsSimpleTextItem_create2, "QGraphicsSimpleTextItem_create2");
 
 procedure QGraphicsSimpleTextItem_destroy(handle: not null QGraphicsSimpleTextItemH);
 pragma Import(C,QGraphicsSimpleTextItem_destroy, "QGraphicsSimpleTextItem_destroy");
 
 procedure QGraphicsSimpleTextItem_setText(handle: not null QGraphicsSimpleTextItemH;text:QStringH);
 pragma Import(C,QGraphicsSimpleTextItem_setText, "QGraphicsSimpleTextItem_setText");
 
 function  QGraphicsSimpleTextItem_text(handle: not null QGraphicsSimpleTextItemH) return QStringH;
 pragma Import(C,QGraphicsSimpleTextItem_text, "QGraphicsSimpleTextItem_text");
 
 function  QGraphicsSimpleTextItem_font(handle: not null QGraphicsSimpleTextItemH) return QFontH;
 pragma Import(C,QGraphicsSimpleTextItem_font, "QGraphicsSimpleTextItem_font");
 
 procedure QGraphicsSimpleTextItem_setFont(handle: not null QGraphicsSimpleTextItemH; font:QFontH);
 pragma Import(C,QGraphicsSimpleTextItem_setFont, "QGraphicsSimpleTextItem_setFont");
 
 function  QGraphicsSimpleTextItem_boundingRect(handle: not null QGraphicsSimpleTextItemH) return QRectFH;
 pragma Import(C,QGraphicsSimpleTextItem_boundingRect, "QGraphicsSimpleTextItem_boundingRect");
 
 function  QGraphicsSimpleTextItem_shape(handle: not null QGraphicsSimpleTextItemH) return QPainterPathH;
 pragma Import(C,QGraphicsSimpleTextItem_shape, "QGraphicsSimpleTextItem_shape");
 
 function  QGraphicsSimpleTextItem_contains(handle: not null QGraphicsSimpleTextItemH;point: QPointFH) return boolean;
 pragma Import(C,QGraphicsSimpleTextItem_contains, "QGraphicsSimpleTextItem_contains");
 
 procedure QGraphicsSimpleTextItem_paint(handle: not null QGraphicsSimpleTextItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH;widget: QWidgetH);
 pragma Import(C,QGraphicsSimpleTextItem_paint, "QGraphicsSimpleTextItem_paint");
 
 function  QGraphicsSimpleTextItem_isObscuredBy(handle: not null QGraphicsSimpleTextItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsSimpleTextItem_isObscuredBy, "QGraphicsSimpleTextItem_isObscuredBy");
 
 function  QGraphicsSimpleTextItem_opaqueArea(handle: not null QGraphicsSimpleTextItemH) return QPainterPathH;
 pragma Import(C,QGraphicsSimpleTextItem_opaqueArea, "QGraphicsSimpleTextItem_opaqueArea");
 
 function  QGraphicsSimpleTextItem_type(handle: not null QGraphicsSimpleTextItemH) return integer;
 pragma Import(C,QGraphicsSimpleTextItem_type, "QGraphicsSimpleTextItem_type");

 function  QGraphicsSimpleTextItem_create(parent: QGraphicsItemH := null) return QGraphicsSimpleTextItemH;

end Qt.QGraphicsSimpleTextItem;
