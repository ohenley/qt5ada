--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2010,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package QT.QGraphicsTextItem  is

 function  QGraphicsTextItem_create(text :QStringH ; parent: QGraphicsItemH := null) return QGraphicsTextItemH;
 pragma Import(C,QGraphicsTextItem_create, "QGraphicsTextItem_create");
 
 function  QGraphicsTextItem_create2(parent: QGraphicsItemH := null) return QGraphicsTextItemH;
 pragma Import(C,QGraphicsTextItem_create2, "QGraphicsTextItem_create2");
 
 procedure QGraphicsTextItem_destroy(handle: not null QGraphicsTextItemH);
 pragma Import(C,QGraphicsTextItem_destroy, "QGraphicsTextItem_destroy");
 
 function  QGraphicsTextItem_toHtml(handle: not null QGraphicsTextItemH) return QStringH;
 pragma Import(C,QGraphicsTextItem_toHtml, "QGraphicsTextItem_toHtml");
 
 procedure QGraphicsTextItem_setHtml(handle: not null QGraphicsTextItemH; html:QStringH);
 pragma Import(C,QGraphicsTextItem_setHtml, "QGraphicsTextItem_setHtml");
 
 function  QGraphicsTextItem_toPlainText(handle: not null QGraphicsTextItemH) return QStringH;
 pragma Import(C,QGraphicsTextItem_toPlainText, "QGraphicsTextItem_toPlainText");
 
 procedure QGraphicsTextItem_setPlainText(handle: not null QGraphicsTextItemH; text:QStringH);
 pragma Import(C,QGraphicsTextItem_setPlainText, "QGraphicsTextItem_setPlainText");
 
 function  QGraphicsTextItem_font(handle: not null QGraphicsTextItemH) return QFontH;
 pragma Import(C,QGraphicsTextItem_font, "QGraphicsTextItem_font");
 
 procedure QGraphicsTextItem_setFont(handle: not null QGraphicsTextItemH; font:QFontH);
 pragma Import(C,QGraphicsTextItem_setFont, "QGraphicsTextItem_setFont");
 
 procedure QGraphicsTextItem_setDefaultTextColor(handle: not null QGraphicsTextItemH;color: QColorH);
 pragma Import(C,QGraphicsTextItem_setDefaultTextColor, "QGraphicsTextItem_setDefaultTextColor");
 
 function  QGraphicsTextItem_defaultTextColor(handle: not null QGraphicsTextItemH) return QColorH;
 pragma Import(C,QGraphicsTextItem_defaultTextColor, "QGraphicsTextItem_defaultTextColor");
 
 function  QGraphicsTextItem_boundingRect(handle: not null QGraphicsTextItemH) return QRectFH;
 pragma Import(C,QGraphicsTextItem_boundingRect, "QGraphicsTextItem_boundingRect");
 
 function  QGraphicsTextItem_shape(handle: not null QGraphicsTextItemH) return QPainterPathH;
 pragma Import(C,QGraphicsTextItem_shape, "QGraphicsTextItem_shape");
 
 function  QGraphicsTextItem_contains(handle: not null QGraphicsTextItemH; point:QPointFH) return boolean;
 pragma Import(C,QGraphicsTextItem_contains, "QGraphicsTextItem_contains");
 
 procedure QGraphicsTextItem_paint(handle: not null QGraphicsTextItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH;widget: QWidgetH);
 pragma Import(C,QGraphicsTextItem_paint, "QGraphicsTextItem_paint");
 
 function  QGraphicsTextItem_isObscuredBy(handle: not null QGraphicsTextItemH; item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsTextItem_isObscuredBy, "QGraphicsTextItem_isObscuredBy");
 
 function  QGraphicsTextItem_opaqueArea(handle: not null QGraphicsTextItemH) return QPainterPathH;
 pragma Import(C,QGraphicsTextItem_opaqueArea, "QGraphicsTextItem_opaqueArea");
 
 function  QGraphicsTextItem_type(handle: not null QGraphicsTextItemH) return integer;
 pragma Import(C,QGraphicsTextItem_type, "QGraphicsTextItem_type");
 
 procedure QGraphicsTextItem_setTextWidth(handle: not null QGraphicsTextItemH; width:qreal);
 pragma Import(C,QGraphicsTextItem_setTextWidth, "QGraphicsTextItem_setTextWidth");
 
 function  QGraphicsTextItem_textWidth(handle: not null QGraphicsTextItemH) return qreal;
 pragma Import(C,QGraphicsTextItem_textWidth, "QGraphicsTextItem_textWidth");
 
 procedure QGraphicsTextItem_adjustSize(handle: not null QGraphicsTextItemH);
 pragma Import(C,QGraphicsTextItem_adjustSize, "QGraphicsTextItem_adjustSize");
 
 procedure QGraphicsTextItem_setDocument(handle: not null QGraphicsTextItemH; document:QTextDocumentH);
 pragma Import(C,QGraphicsTextItem_setDocument, "QGraphicsTextItem_setDocument");
 
 function  QGraphicsTextItem_document(handle: not null QGraphicsTextItemH) return QTextDocumentH;
 pragma Import(C,QGraphicsTextItem_document, "QGraphicsTextItem_document");
 
 procedure QGraphicsTextItem_setTextInteractionFlags(handle: not null QGraphicsTextItemH;flags:integer);
 pragma Import(C,QGraphicsTextItem_setTextInteractionFlags, "QGraphicsTextItem_setTextInteractionFlags");
 
 function  QGraphicsTextItem_textInteractionFlags(handle: not null QGraphicsTextItemH) return integer;
 pragma Import(C,QGraphicsTextItem_textInteractionFlags, "QGraphicsTextItem_textInteractionFlags");
 
 procedure QGraphicsTextItem_setTabChangesFocus(handle: not null QGraphicsTextItemH;b:boolean);
 pragma Import(C,QGraphicsTextItem_setTabChangesFocus, "QGraphicsTextItem_setTabChangesFocus");
 
 function  QGraphicsTextItem_tabChangesFocus(handle: not null QGraphicsTextItemH) return boolean;
 pragma Import(C,QGraphicsTextItem_tabChangesFocus, "QGraphicsTextItem_tabChangesFocus");
 
 procedure QGraphicsTextItem_setOpenExternalLinks(handle: not null QGraphicsTextItemH; open:boolean);
 pragma Import(C,QGraphicsTextItem_setOpenExternalLinks, "QGraphicsTextItem_setOpenExternalLinks");
 
 function  QGraphicsTextItem_openExternalLinks(handle: not null QGraphicsTextItemH) return boolean;
 pragma Import(C,QGraphicsTextItem_openExternalLinks, "QGraphicsTextItem_openExternalLinks");
 
 procedure QGraphicsTextItem_setTextCursor(handle: not null QGraphicsTextItemH; cursor:QTextCursorH);
 pragma Import(C,QGraphicsTextItem_setTextCursor, "QGraphicsTextItem_setTextCursor");
 
 function  QGraphicsTextItem_textCursor(handle: not null QGraphicsTextItemH) return QTextCursorH;
 pragma Import(C,QGraphicsTextItem_textCursor, "QGraphicsTextItem_textCursor");
 
 procedure QGraphicsTextItem_setPos(handle: not null QGraphicsTextItemH;point:QPointFH);
 pragma Import(C,QGraphicsTextItem_setPos, "QGraphicsTextItem_setPos");
 
 type QGraphicsTextItem_linkActivatedEvent is access procedure(s:QStringH);
 pragma Convention(C,QGraphicsTextItem_linkActivatedEvent);

 type QGraphicsTextItem_linkHoveredEvent is access procedure(s:QStringH);
 pragma Convention(C,QGraphicsTextItem_linkHoveredEvent);

 procedure QGraphicsTextItem_signal_slot_linkActivated(handle: not null QGraphicsTextItemH; hook:QGraphicsTextItem_linkActivatedEvent);
 pragma Import(C,QGraphicsTextItem_signal_slot_linkActivated, "QGraphicsTextItem_signal_slot_linkActivated");
 
 procedure QGraphicsTextItem_signal_slot_linkHovered(handle: not null QGraphicsTextItemH; hook:QGraphicsTextItem_linkHoveredEvent);
 pragma Import(C,QGraphicsTextItem_signal_slot_linkHovered, "QGraphicsTextItem_signal_slot_linkHovered");

 function  QGraphicsTextItem_create(parent: QGraphicsItemH := null) return QGraphicsTextItemH;

end QT.QGraphicsTextItem;
