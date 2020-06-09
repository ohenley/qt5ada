--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QGraphicsItem   is

 procedure QGraphicsItem_setCacheMode(handle: not null QGraphicsItemH;mode:CacheMode;  cacheSize:QSizeH) is
 begin
   QGraphicsItem_setCacheMode2(handle,mode,cacheSize);
 end;

 procedure QGraphicsItem_setPos(handle: not null QGraphicsItemH;pos:QPointFH) is
 begin
  QGraphicsItem_setPos2(handle,pos);
 end; 

 procedure QGraphicsItem_ensureVisible(handle: not null QGraphicsItemH;rect:QRectFH; xmargin:integer := 50; ymargin: integer := 50) is
 begin
   QGraphicsItem_ensureVisible2(handle,rect,xmargin,ymargin);
 end;

 procedure QGraphicsItem_setTransformOriginPoint(handle: not null QGraphicsItemH;origin:QPointFH) is
 begin
  QGraphicsItem_setTransformOriginPoint2(handle,origin);
 end;

 function  QGraphicsItem_isObscured(handle: not null QGraphicsItemH;x,y,w,h: qreal) return boolean is
 begin
   return  QGraphicsItem_isObscured2(handle,x,y,w,h);
 end;

 function  QGraphicsItem_isObscured(handle: not null QGraphicsItemH;rect:QRectFH) return boolean is
 begin
  return  QGraphicsItem_isObscured3(handle,rect);
 end;

 procedure QGraphicsItem_update(handle: not null QGraphicsItemH;x,y,w,h: qreal) is
 begin
   QGraphicsItem_update2(handle,x,y,w,h);
 end;

 procedure QGraphicsItem_update(handle: not null QGraphicsItemH;rect:QRectFH) is
 begin
   QGraphicsItem_update3(handle,rect);
 end;

 procedure QGraphicsItem_scroll(handle: not null QGraphicsItemH; dx,dy: qreal; rect:QRectFH) is
 begin
   QGraphicsItem_scroll2(handle, dx,dy,rect);
 end;


 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;  rect:QRectFH) return QPolygonFH is
 begin
  return QGraphicsItem_mapToItem2(handle,item, rect);
 end;

 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;  polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapToItem4(handle,item, polygon);
 end;

 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path:QPainterPathH) return QPainterPathH is
 begin
  return QGraphicsItem_mapToItem5(handle,item, path);
 end;

 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH is
 begin
  return  QGraphicsItem_mapToItem6(handle, item, x,y);
 end;

 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsItem_mapToItem7(handle,item, x,y,w,h);
 end;


 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapToParent2(handle,rect);
 end;

 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapToParent4(handle,polygon);
 end;

 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsItem_mapToParent5(handle,path);
 end;

 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsItem_mapToParent6(handle,x,y);
 end;

 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsItem_mapToParent7(handle,x,y,w,h);
 end;


 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
   return  QGraphicsItem_mapToScene2(handle,rect);
 end;

 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapToScene4(handle,polygon);
 end;

 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsItem_mapToScene5(handle,path);
 end;

 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsItem_mapToScene6(handle,x,y);
 end;

 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsItem_mapToScene7(handle,x,y,w,h);
 end;


 function  QGraphicsItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsItem_mapRectToItem3(handle,item,rect);
 end;

 function  QGraphicsItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsItem_mapRectToItem4(handle,item,x,y,w,h);
 end;


 function  QGraphicsItem_mapRectToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
   return  QGraphicsItem_mapRectToParent3(handle,rect);
 end;

 function  QGraphicsItem_mapRectToParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsItem_mapRectToParent4(handle,x,y,w,h);
 end;


 function  QGraphicsItem_mapRectToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsItem_mapRectToScene3(handle,rect);
 end;

 function  QGraphicsItem_mapRectToScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsItem_mapRectToScene4(handle,x,y,w,h);
 end;


 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromItem2(handle,item,rect);
 end;

 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromItem4(handle,item, polygon);
 end;

 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsItem_mapFromItem5(handle,item, path);
 end;

 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH is
 begin
  return  QGraphicsItem_mapFromItem6(handle,item, x,y);
 end;

 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromItem7(handle,item,x,y,w,h);
 end;


 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromParent2(handle,rect);
 end;

 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromParent4(handle,polygon);
 end;

 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsItem_mapFromParent5(handle,path);
 end;

 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsItem_mapFromParent6(handle,x,y);
 end;

 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromParent7(handle,x,y,w,h);
 end;


 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromScene2(handle,rect);
 end;

 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromScene4(handle,polygon);
 end;

 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsItem_mapFromScene5(handle,path);
 end;

 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsItem_mapFromScene6(handle,x,y);
 end;

 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsItem_mapFromScene7(handle,x,y,w,h);
 end;


 function  QGraphicsItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsItem_mapRectFromItem3(handle,item,rect);
 end;

 function  QGraphicsItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsItem_mapRectFromItem4(handle,item, x,y,w,h);
 end;


 function  QGraphicsItem_mapRectFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsItem_mapRectFromParent3(handle,rect);
 end;

 function  QGraphicsItem_mapRectFromParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsItem_mapRectFromParent4(handle,x,y,w,h);
 end;


 function  QGraphicsItem_mapRectFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsItem_mapRectFromScene3(handle,rect);
 end;

 function  QGraphicsItem_mapRectFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsItem_mapRectFromScene4(handle,x,y,w,h);
 end;

 procedure QGraphicsItem_scale(handle: not null QGraphicsItemH;sx,sy:qreal) is
 begin
  QGraphicsItem_scale2(handle,sx,sy);
 end;

end Qt.QGraphicsItem;
