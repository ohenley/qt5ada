--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2018                           บ
-- บ Copyright (C) 2018                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QGraphicsCustomItem   is

 function  QGraphicsCustomItem_create(parent:QGraphicsItemH := Null) return QGraphicsItemH is
 begin
   return  QGraphicsCustomItem_create2(parent);
 end;

 procedure QGraphicsCustomItem_setCacheMode(handle: not null QGraphicsItemH;mode:CacheMode;  cacheSize:QSizeH) is
 begin
   QGraphicsCustomItem_setCacheMode2(handle,mode,cacheSize);
 end;

 procedure QGraphicsCustomItem_setPos(handle: not null QGraphicsItemH;pos:QPointFH) is
 begin
  QGraphicsCustomItem_setPos2(handle,pos);
 end; 

 procedure QGraphicsCustomItem_ensureVisible(handle: not null QGraphicsItemH;rect:QRectFH; xmargin:integer := 50; ymargin: integer := 50) is
 begin
   QGraphicsCustomItem_ensureVisible2(handle,rect,xmargin,ymargin);
 end;

 procedure QGraphicsCustomItem_setTransformOriginPoint(handle: not null QGraphicsItemH;origin:QPointFH) is
 begin
  QGraphicsCustomItem_setTransformOriginPoint2(handle,origin);
 end;

 function  QGraphicsCustomItem_isObscured(handle: not null QGraphicsItemH;x,y,w,h: qreal) return boolean is
 begin
   return  QGraphicsCustomItem_isObscured2(handle,x,y,w,h);
 end;

 function  QGraphicsCustomItem_isObscured(handle: not null QGraphicsItemH;rect:QRectFH) return boolean is
 begin
  return  QGraphicsCustomItem_isObscured3(handle,rect);
 end;

 procedure QGraphicsCustomItem_update(handle: not null QGraphicsItemH;x,y,w,h: qreal) is
 begin
   QGraphicsCustomItem_update2(handle,x,y,w,h);
 end;

 procedure QGraphicsCustomItem_update(handle: not null QGraphicsItemH;rect:QRectFH) is
 begin
   QGraphicsCustomItem_update3(handle,rect);
 end;

 procedure QGraphicsCustomItem_scroll(handle: not null QGraphicsItemH; dx,dy: qreal; rect:QRectFH) is
 begin
   QGraphicsCustomItem_scroll2(handle, dx,dy,rect);
 end;


 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;  rect:QRectFH) return QPolygonFH is
 begin
  return QGraphicsCustomItem_mapToItem2(handle,item, rect);
 end;

 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;  polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapToItem4(handle,item, polygon);
 end;

 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path:QPainterPathH) return QPainterPathH is
 begin
  return QGraphicsCustomItem_mapToItem5(handle,item, path);
 end;

 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH is
 begin
  return  QGraphicsCustomItem_mapToItem6(handle, item, x,y);
 end;

 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapToItem7(handle,item, x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapToParent2(handle,rect);
 end;

 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapToParent4(handle,polygon);
 end;

 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsCustomItem_mapToParent5(handle,path);
 end;

 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsCustomItem_mapToParent6(handle,x,y);
 end;

 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapToParent7(handle,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
   return  QGraphicsCustomItem_mapToScene2(handle,rect);
 end;

 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapToScene4(handle,polygon);
 end;

 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsCustomItem_mapToScene5(handle,path);
 end;

 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsCustomItem_mapToScene6(handle,x,y);
 end;

 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapToScene7(handle,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectToItem3(handle,item,rect);
 end;

 function  QGraphicsCustomItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectToItem4(handle,item,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapRectToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
   return  QGraphicsCustomItem_mapRectToParent3(handle,rect);
 end;

 function  QGraphicsCustomItem_mapRectToParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectToParent4(handle,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapRectToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectToScene3(handle,rect);
 end;

 function  QGraphicsCustomItem_mapRectToScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectToScene4(handle,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromItem2(handle,item,rect);
 end;

 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromItem4(handle,item, polygon);
 end;

 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsCustomItem_mapFromItem5(handle,item, path);
 end;

 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH is
 begin
  return  QGraphicsCustomItem_mapFromItem6(handle,item, x,y);
 end;

 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromItem7(handle,item,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromParent2(handle,rect);
 end;

 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromParent4(handle,polygon);
 end;

 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsCustomItem_mapFromParent5(handle,path);
 end;

 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsCustomItem_mapFromParent6(handle,x,y);
 end;

 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromParent7(handle,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromScene2(handle,rect);
 end;

 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromScene4(handle,polygon);
 end;

 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsCustomItem_mapFromScene5(handle,path);
 end;

 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsCustomItem_mapFromScene6(handle,x,y);
 end;

 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsCustomItem_mapFromScene7(handle,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectFromItem3(handle,item,rect);
 end;

 function  QGraphicsCustomItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectFromItem4(handle,item, x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapRectFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectFromParent3(handle,rect);
 end;

 function  QGraphicsCustomItem_mapRectFromParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectFromParent4(handle,x,y,w,h);
 end;


 function  QGraphicsCustomItem_mapRectFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectFromScene3(handle,rect);
 end;

 function  QGraphicsCustomItem_mapRectFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsCustomItem_mapRectFromScene4(handle,x,y,w,h);
 end;

 procedure QGraphicsCustomItem_scale(handle: not null QGraphicsItemH;sx,sy:qreal) is
 begin
  QGraphicsCustomItem_scale2(handle,sx,sy);
 end;

end Qt.QGraphicsCustomItem;
