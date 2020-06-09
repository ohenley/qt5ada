--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QGraphicsVideoItem   is

 procedure QGraphicsVideoItem_setCacheMode(handle: not null QGraphicsVideoItemH;mode:CacheMode;  cacheSize:QSizeH) is
 begin
   QGraphicsVideoItem_setCacheMode2(handle,mode,cacheSize);
 end;

 procedure QGraphicsVideoItem_setPos(handle: not null QGraphicsVideoItemH;pos:QPointFH) is
 begin
  QGraphicsVideoItem_setPos2(handle,pos);
 end; 

 procedure QGraphicsVideoItem_ensureVisible(handle: not null QGraphicsVideoItemH;rect:QRectFH; xmargin:integer := 50; ymargin: integer := 50) is
 begin
   QGraphicsVideoItem_ensureVisible2(handle,rect,xmargin,ymargin);
 end;

 procedure QGraphicsVideoItem_setTransformOriginPoint(handle: not null QGraphicsVideoItemH;origin:QPointFH) is
 begin
  QGraphicsVideoItem_setTransformOriginPoint2(handle,origin);
 end;

 function  QGraphicsVideoItem_isObscured(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return boolean is
 begin
   return  QGraphicsVideoItem_isObscured2(handle,x,y,w,h);
 end;

 function  QGraphicsVideoItem_isObscured(handle: not null QGraphicsVideoItemH;rect:QRectFH) return boolean is
 begin
  return  QGraphicsVideoItem_isObscured3(handle,rect);
 end;

 procedure QGraphicsVideoItem_update(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) is
 begin
   QGraphicsVideoItem_update2(handle,x,y,w,h);
 end;

 procedure QGraphicsVideoItem_update(handle: not null QGraphicsVideoItemH;rect:QRectFH) is
 begin
   QGraphicsVideoItem_update3(handle,rect);
 end;

 procedure QGraphicsVideoItem_scroll(handle: not null QGraphicsVideoItemH; dx,dy: qreal; rect:QRectFH) is
 begin
   QGraphicsVideoItem_scroll2(handle, dx,dy,rect);
 end;


 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;  rect:QRectFH) return QPolygonFH is
 begin
  return QGraphicsVideoItem_mapToItem2(handle,item, rect);
 end;

 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;  polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapToItem4(handle,item, polygon);
 end;

 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; path:QPainterPathH) return QPainterPathH is
 begin
  return QGraphicsVideoItem_mapToItem5(handle,item, path);
 end;

 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y: qreal) return QPointFH is
 begin
  return  QGraphicsVideoItem_mapToItem6(handle, item, x,y);
 end;

 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapToItem7(handle,item, x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapToParent2(handle,rect);
 end;

 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapToParent4(handle,polygon);
 end;

 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsVideoItem_mapToParent5(handle,path);
 end;

 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsVideoItem_mapToParent6(handle,x,y);
 end;

 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapToParent7(handle,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH is
 begin
   return  QGraphicsVideoItem_mapToScene2(handle,rect);
 end;

 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapToScene4(handle,polygon);
 end;

 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsVideoItem_mapToScene5(handle,path);
 end;

 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsVideoItem_mapToScene6(handle,x,y);
 end;

 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapToScene7(handle,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapRectToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectToItem3(handle,item,rect);
 end;

 function  QGraphicsVideoItem_mapRectToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectToItem4(handle,item,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapRectToParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH is
 begin
   return  QGraphicsVideoItem_mapRectToParent3(handle,rect);
 end;

 function  QGraphicsVideoItem_mapRectToParent(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectToParent4(handle,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapRectToScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectToScene3(handle,rect);
 end;

 function  QGraphicsVideoItem_mapRectToScene(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectToScene4(handle,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromItem2(handle,item,rect);
 end;

 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromItem4(handle,item, polygon);
 end;

 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsVideoItem_mapFromItem5(handle,item, path);
 end;

 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y: qreal) return QPointFH is
 begin
  return  QGraphicsVideoItem_mapFromItem6(handle,item, x,y);
 end;

 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromItem7(handle,item,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromParent2(handle,rect);
 end;

 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromParent4(handle,polygon);
 end;

 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsVideoItem_mapFromParent5(handle,path);
 end;

 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsVideoItem_mapFromParent6(handle,x,y);
 end;

 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromParent7(handle,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromScene2(handle,rect);
 end;

 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromScene4(handle,polygon);
 end;

 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH is
 begin
  return  QGraphicsVideoItem_mapFromScene5(handle,path);
 end;

 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;x,y: qreal) return QPointFH is
 begin
  return  QGraphicsVideoItem_mapFromScene6(handle,x,y);
 end;

 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QPolygonFH is
 begin
  return  QGraphicsVideoItem_mapFromScene7(handle,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapRectFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectFromItem3(handle,item,rect);
 end;

 function  QGraphicsVideoItem_mapRectFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectFromItem4(handle,item, x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapRectFromParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectFromParent3(handle,rect);
 end;

 function  QGraphicsVideoItem_mapRectFromParent(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectFromParent4(handle,x,y,w,h);
 end;


 function  QGraphicsVideoItem_mapRectFromScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectFromScene3(handle,rect);
 end;

 function  QGraphicsVideoItem_mapRectFromScene(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QRectFH is
 begin
  return  QGraphicsVideoItem_mapRectFromScene4(handle,x,y,w,h);
 end;

end Qt.QGraphicsVideoItem;
