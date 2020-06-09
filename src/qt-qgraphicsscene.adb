--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2014,2017            บ
-- บ Copyright (C) 2012,2013,2014,2017                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.
--

with Qt.QGraphicsItem;     use Qt.QGraphicsItem;
with Qt.QGraphicsRectItem; use Qt.QGraphicsRectItem;
with Qt.QGraphicsWidget;   use Qt.QGraphicsWidget;
with Qt.QWidget;           use Qt.QWidget;
with Qt.QRect;             use Qt.QRect;  
with Interfaces.C;         use Interfaces.C;

package body Qt.QGraphicsScene is

 function QGraphicsScene_create(sceneRect : QRectFH; parent: QObjectH := null) return QGraphicsSceneH is
 begin
  return  QGraphicsScene_create2(sceneRect, parent);
 end;

 function QGraphicsScene_create(top: qreal := 0.0; left: qreal := 0.0; width: qreal; height : qreal; parent: QObjectH := null) return QGraphicsSceneH is
 begin
  return QGraphicsScene_create3(top, left, width, height, parent);
 end;

 procedure QGraphicsScene_setSceneRect(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal) is
 begin
   QGraphicsScene_setSceneRect2(handle, x, y, w, h);
 end;

 procedure QGraphicsScene_setSelectionArea(handle: not null  QGraphicsSceneH; path: QPainterPathH; ISM : QtItemSelectionMode) is
 begin
  QGraphicsScene_setSelectionArea2(handle, path, ISM);
 end;

 function QGraphicsScene_addEllipse(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal; pen: QPenH; brush: QBrushH) return QGraphicsEllipseItemH is
 begin
  return  QGraphicsScene_addEllipse2(handle, x, y, w, h, pen, brush);
 end;

 function QGraphicsScene_addLine(handle: not null  QGraphicsSceneH; x1: qreal; y1: qreal; x2: qreal; y2: qreal; pen: QPenH) return QGraphicsLineItemH is
 begin
  return QGraphicsScene_addLine2(handle, x1, y1, x2, y2, pen);
 end;

 function QGraphicsScene_addRect(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal; pen: QPenH; brush: QBrushH) return QGraphicsRectItemH is
 begin
  return QGraphicsScene_addRect2(handle, x, y, w, h, pen, brush);
 end;

 procedure QGraphicsScene_update(handle: not null  QGraphicsSceneH; rect: QRectFH) is
 begin
  QGraphicsScene_update2(handle, rect);
 end;

 procedure QGraphicsScene_invalidate(handle: not null  QGraphicsSceneH; rect: QRectFH; layers: quint) is
 begin
  QGraphicsScene_invalidate2(handle, rect, layers);
 end;

 procedure QGraphicsScene_invalidate(handle: not null  QGraphicsSceneH) is
 begin
  QGraphicsScene_invalidate3(handle);
 end;

 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; pos: QPointFH) return QObjectListH is
 begin
   return QGraphicsScene_items2(handle, pos);
 end;

 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; rect: QRectFH; mode:QtItemSelectionMode) return QObjectListH is
 begin
  return QGraphicsScene_items3(handle, rect, mode);
 end;

 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; polygon: QPolygonFH; mode:QtItemSelectionMode) return QObjectListH is
 begin
  return QGraphicsScene_items4(handle, polygon, mode);
 end;

 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; path: QPainterPathH; mode:QtItemSelectionMode) return QObjectListH is
 begin
  return QGraphicsScene_items5(handle, path, mode);
 end;

 function QGraphicsScene_addText(handle: not null  QGraphicsSceneH; text: QStringH) return QGraphicsTextItemH is
 begin
  return QGraphicsScene_addText2(handle, text);
 end;

 function QGraphicsScene_addSimpleText(handle: not null  QGraphicsSceneH; text: QStringH) return QGraphicsSimpleTextItemH is
 begin
  return QGraphicsScene_addSimpleText2(handle, text);
 end;

 procedure QGraphicsScene_addVideoItem(handle: not null QGraphicsSceneH; videoItem: not null QGraphicsVideoItemH) is
 begin 
  QGraphicsScene_addVideoItem2(handle,videoItem);
 end;

 function  QGraphicsScene_itemAt(handle:not null QGraphicsSceneH; index: integer) return QGraphicsItemH is
 begin
   return  QGraphicsScene_itemAt2(handle,index);
 end;

 function QGraphicsScene_itemAt(handle: not null  QGraphicsSceneH; x,y: double;deviceTransform:QTransformH) return QGraphicsItemH is
 begin
  return  QGraphicsScene_itemAt3(handle,x,y,deviceTransform);
 end;

 procedure QGraphicsScene_addItem(handle: not null  QGraphicsSceneH; item: QGraphicsWidgetH) is
 begin
  QGraphicsScene_addItem2(handle,item);
 end;

 procedure QGraphicsScene_addItem(handle:not null QGraphicsSceneH; item:QGraphicsProxyWidgetH) is
 begin
  QGraphicsScene_addItem3(handle,item);
 end;

  function QGraphicsScene_itemAt(handle: not null  QGraphicsSceneH; pos: QPointFH) return QGraphicsItemH is
   count : integer;
   item  : QGraphicsItemH;
   begin
    count := QGraphicsScene_itemsCount(handle);
    for i in 0 .. count loop
     item := QGraphicsScene_itemAt(handle,i);
     if QGraphicsItem_contains(handle => item, point => pos) then return item; end if;
    end loop;
    return null;
  end;

end Qt.QGraphicsScene;
