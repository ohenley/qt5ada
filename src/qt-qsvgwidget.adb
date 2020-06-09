--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QSvgWidget  is
 
 function  QSvgWidget_create(file:QStringH;parent : QWidgetH :=  null) return QWidgetH is 
 begin
   return  QSvgWidget_create2(file,parent);
 end;

 procedure QSvgWidget_load(handle:not null QWidgetH;contents:QByteArrayH) is
 begin
   QSvgWidget_load2(handle,contents);
 end;
----------------------------------------------------
 function  QSvgRenderer_create(fileName:QStringH ;parent : QObjectH :=  null) return QRendererH is
 begin
   return  QSvgRenderer_create2(fileName,parent);
 end;

 function  QSvgRenderer_create(contents:QByteArrayH ;parent : QObjectH :=  null) return QRendererH is
 begin
   return  QSvgRenderer_create3(contents,parent);
 end;

 function  QSvgRenderer_create(contents:QXmlStreamReaderH ;parent : QObjectH :=  null) return QRendererH is
 begin
   return  QSvgRenderer_create4(contents,parent);
 end;

 procedure QSvgRenderer_setViewBox(handle:not null QRendererH;viewbox:QRectFH) is
 begin
   QSvgRenderer_setViewBox2(handle,viewbox);
 end;

 function  QSvgRenderer_load(handle:not null QRendererH;contents:QByteArrayH) return boolean is
 begin
   return  QSvgRenderer_load2(handle,contents);
 end;

 function  QSvgRenderer_load(handle:not null QRendererH;contents:QXmlStreamReaderH) return boolean is
 begin
   return  QSvgRenderer_load3(handle,contents);
 end;

 procedure QSvgRenderer_render(handle:not null QRendererH;p:QPainterH;bounds: QRectFH) is
 begin
   QSvgRenderer_render2(handle,p,bounds);
 end;

 procedure QSvgRenderer_render(handle:not null QRendererH;p:QPainterH;elementId: QStringH;bounds:QRectFH := QRectF_create) is
 begin
   QSvgRenderer_render3(handle,p,elementId,bounds);
 end;

 function  QGraphicsSvgItem_create(fileName:QStringH ;parentItem : QGraphicsItemH :=  null) return QGraphicsItemH is
 begin
   return  QGraphicsSvgItem_create2(fileName,parentItem);
 end;

end;
