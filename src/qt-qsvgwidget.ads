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

with Qt.QRect; use Qt.QRect;
package Qt.QSvgWidget  is

 function  QSvgWidget_create(parent:QWidgetH := null) return QWidgetH;
 pragma Import(C,QSvgWidget_create, "QSvgWidget_create");
 
 function  QSvgWidget_create2(file:QStringH;parent : QWidgetH :=  null) return QWidgetH;
 pragma Import(C,QSvgWidget_create2, "QSvgWidget_create2");
 
 procedure QSvgWidget_destroy(handle:not null QWidgetH);
 pragma Import(C,QSvgWidget_destroy, "QSvgWidget_destroy");
 
 function  QSvgWidget_renderer(handle:not null QWidgetH) return QRendererH;
 pragma Import(C,QSvgWidget_renderer, "QSvgWidget_renderer");
 
 function  QSvgWidget_sizeHint(handle:not null QWidgetH) return QSizeH;
 pragma Import(C,QSvgWidget_sizeHint, "QSvgWidget_sizeHint");
 
 procedure QSvgWidget_load(handle:not null QWidgetH;file:QStringH);
 pragma Import(C,QSvgWidget_load, "QSvgWidget_load");
 
 procedure QSvgWidget_load2(handle:not null QWidgetH;contents:QByteArrayH);
 pragma Import(C,QSvgWidget_load2, "QSvgWidget_load2");
 
 function  QSvgWidget_create(file:QStringH;parent : QWidgetH :=  null) return QWidgetH;
 procedure QSvgWidget_load(handle:not null QWidgetH;contents:QByteArrayH);
------------------------------------------------------
 function  QSvgRenderer_create(parent:QObjectH := null) return QRendererH;
 pragma Import(C,QSvgRenderer_create, "QSvgRenderer_create");
 
 function  QSvgRenderer_create2(fileName:QStringH ;parent : QObjectH :=  null) return QRendererH;
 pragma Import(C,QSvgRenderer_create2, "QSvgRenderer_create2");
 
 function  QSvgRenderer_create3(contents:QByteArrayH ;parent : QObjectH :=  null) return QRendererH;
 pragma Import(C,QSvgRenderer_create3, "QSvgRenderer_create3");
 
 function  QSvgRenderer_create4(contents:QXmlStreamReaderH ;parent : QObjectH :=  null) return QRendererH;
 pragma Import(C,QSvgRenderer_create4, "QSvgRenderer_create4");
 
 procedure QSvgRenderer_destroy(handle:not null QRendererH);
 pragma Import(C,QSvgRenderer_destroy, "QSvgRenderer_destroy");
 
 function  QSvgRenderer_isValid(handle:not null QRendererH) return boolean;
 pragma Import(C,QSvgRenderer_isValid, "QSvgRenderer_isValid");
 
 function  QSvgRenderer_defaultSize(handle:not null QRendererH) return QSizeH;
 pragma Import(C,QSvgRenderer_defaultSize, "QSvgRenderer_defaultSize");
 
 function  QSvgRenderer_viewBox(handle:not null QRendererH) return QRectH;
 pragma Import(C,QSvgRenderer_viewBox, "QSvgRenderer_viewBox");
 
 function  QSvgRenderer_viewBoxF(handle:not null QRendererH) return QRectFH;
 pragma Import(C,QSvgRenderer_viewBoxF, "QSvgRenderer_viewBoxF");
 
 procedure QSvgRenderer_setViewBox(handle:not null QRendererH;viewbox:QRectH);
 pragma Import(C,QSvgRenderer_setViewBox, "QSvgRenderer_setViewBox");
 
 procedure QSvgRenderer_setViewBox2(handle:not null QRendererH;viewbox:QRectFH);
 pragma Import(C,QSvgRenderer_setViewBox2, "QSvgRenderer_setViewBox2");
 
 function  QSvgRenderer_animated(handle:not null QRendererH) return boolean;
 pragma Import(C,QSvgRenderer_animated, "QSvgRenderer_animated");
 
 function  QSvgRenderer_framesPerSecond(handle:not null QRendererH) return integer;
 pragma Import(C,QSvgRenderer_framesPerSecond, "QSvgRenderer_framesPerSecond");
 
 procedure QSvgRenderer_setFramesPerSecond(handle:not null QRendererH;num:integer);
 pragma Import(C,QSvgRenderer_setFramesPerSecond, "QSvgRenderer_setFramesPerSecond");
 
 function  QSvgRenderer_currentFrame(handle:not null QRendererH) return integer;
 pragma Import(C,QSvgRenderer_currentFrame, "QSvgRenderer_currentFrame");
 
 procedure QSvgRenderer_setCurrentFrame(handle:not null QRendererH;num:integer);
 pragma Import(C,QSvgRenderer_setCurrentFrame, "QSvgRenderer_setCurrentFrame");
 
 function  QSvgRenderer_animationDuration(handle:not null QRendererH) return integer;
 pragma Import(C,QSvgRenderer_animationDuration, "QSvgRenderer_animationDuration");
 
 function  QSvgRenderer_boundsOnElement(handle:not null QRendererH;id:QStringH) return QRectFH;
 pragma Import(C,QSvgRenderer_boundsOnElement, "QSvgRenderer_boundsOnElement");
 
 function  QSvgRenderer_elementExists(handle:not null QRendererH;id:QStringH) return boolean;
 pragma Import(C,QSvgRenderer_elementExists, "QSvgRenderer_elementExists");
 
 function  QSvgRenderer_matrixForElement(handle:not null QRendererH;id:QStringH) return QMatrixH;
 pragma Import(C,QSvgRenderer_matrixForElement, "QSvgRenderer_matrixForElement");
 
 function  QSvgRenderer_load(handle:not null QRendererH;fileName:QStringH) return boolean;
 pragma Import(C,QSvgRenderer_load, "QSvgRenderer_load");
 
 function  QSvgRenderer_load2(handle:not null QRendererH;contents:QByteArrayH) return boolean;
 pragma Import(C,QSvgRenderer_load2, "QSvgRenderer_load2");
 
 function  QSvgRenderer_load3(handle:not null QRendererH;contents:QXmlStreamReaderH) return boolean;
 pragma Import(C,QSvgRenderer_load3, "QSvgRenderer_load3");
 
 procedure QSvgRenderer_render(handle:not null QRendererH;p:QPainterH);
 pragma Import(C,QSvgRenderer_render, "QSvgRenderer_render");
 
 procedure QSvgRenderer_render2(handle:not null QRendererH;p:QPainterH;bounds: QRectFH);
 pragma Import(C,QSvgRenderer_render2, "QSvgRenderer_render2");
 
 procedure QSvgRenderer_render3(handle:not null QRendererH;p:QPainterH;elementId: QStringH;bounds:QRectFH := QRectF_create);
 pragma Import(C,QSvgRenderer_render3, "QSvgRenderer_render3");
 
------------------------------------------------------
 function  QSvgRenderer_create(fileName:QStringH ;parent : QObjectH :=  null) return QRendererH;
 function  QSvgRenderer_create(contents:QByteArrayH ;parent : QObjectH :=  null) return QRendererH;
 function  QSvgRenderer_create(contents:QXmlStreamReaderH ;parent : QObjectH :=  null) return QRendererH;
 procedure QSvgRenderer_setViewBox(handle:not null QRendererH;viewbox:QRectFH);
 function  QSvgRenderer_load(handle:not null QRendererH;contents:QByteArrayH) return boolean;
 function  QSvgRenderer_load(handle:not null QRendererH;contents:QXmlStreamReaderH) return boolean;
 procedure QSvgRenderer_render(handle:not null QRendererH;p:QPainterH;bounds: QRectFH);
 procedure QSvgRenderer_render(handle:not null QRendererH;p:QPainterH;elementId: QStringH;bounds:QRectFH := QRectF_create);

---------------------------------------------------
 function  QGraphicsSvgItem_create(parentItem:QGraphicsItemH := null) return QGraphicsItemH;
 pragma Import(C,QGraphicsSvgItem_create, "QGraphicsSvgItem_create");
 
 function  QGraphicsSvgItem_create2(fileName:QStringH ;parentItem : QGraphicsItemH :=  null) return QGraphicsItemH;
 pragma Import(C,QGraphicsSvgItem_create2, "QGraphicsSvgItem_create2");
 
 procedure QGraphicsSvgItem_setSharedRenderer(handle:not null QGraphicsItemH;renderer:QRendererH);
 pragma Import(C,QGraphicsSvgItem_setSharedRenderer, "QGraphicsSvgItem_setSharedRenderer");
 
 function  QGraphicsSvgItem_renderer(handle:not null QGraphicsItemH) return QRendererH;
 pragma Import(C,QGraphicsSvgItem_renderer, "QGraphicsSvgItem_renderer");
 
 procedure QGraphicsSvgItem_setElementId(handle:not null QGraphicsItemH;id:QStringH);
 pragma Import(C,QGraphicsSvgItem_setElementId, "QGraphicsSvgItem_setElementId");
 
 function  QGraphicsSvgItem_elementId(handle:not null QGraphicsItemH) return QStringH;
 pragma Import(C,QGraphicsSvgItem_elementId, "QGraphicsSvgItem_elementId");
 
 procedure QGraphicsSvgItem_setCachingEnabled(handle:not null QGraphicsItemH;enable:boolean);
 pragma Import(C,QGraphicsSvgItem_setCachingEnabled, "QGraphicsSvgItem_setCachingEnabled");
 
 function  QGraphicsSvgItem_isCachingEnabled(handle:not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsSvgItem_isCachingEnabled, "QGraphicsSvgItem_isCachingEnabled");
 
 procedure QGraphicsSvgItem_setMaximumCacheSize(handle:not null QGraphicsItemH;size:QSizeH);
 pragma Import(C,QGraphicsSvgItem_setMaximumCacheSize, "QGraphicsSvgItem_setMaximumCacheSize");
 
 function  QGraphicsSvgItem_maximumCacheSize(handle:not null QGraphicsItemH) return QSizeH;
 pragma Import(C,QGraphicsSvgItem_maximumCacheSize, "QGraphicsSvgItem_maximumCacheSize");
 
 function  QGraphicsSvgItem_boundingRect(handle:not null QGraphicsItemH) return QRectFH;
 pragma Import(C,QGraphicsSvgItem_boundingRect, "QGraphicsSvgItem_boundingRect");
 
 procedure QGraphicsSvgItem_paint(handle:not null QGraphicsItemH;painter:QPainterH;option:QStyleOptionGraphicsItemH;widget :QWidgetH :=  null);
 pragma Import(C,QGraphicsSvgItem_paint, "QGraphicsSvgItem_paint");
 
 function  QGraphicsSvgItem_type(handle:not null QGraphicsItemH) return integer;
 pragma Import(C,QGraphicsSvgItem_type, "QGraphicsSvgItem_type");
 
 procedure QGraphicsScene_addSvgItem(handle:not null QGraphicsSceneH;item: QGraphicsItemH);
 pragma Import(C,QGraphicsScene_addSvgItem, "QGraphicsScene_addSvgItem");
 
 function  QGraphicsSvgItem_create(fileName:QStringH ;parentItem : QGraphicsItemH :=  null) return QGraphicsItemH;

end;
