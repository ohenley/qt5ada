--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QGraphics            is

function QGraphicsView_create(scene: QGraphicsSceneH; parent: QWidgetH := null) return QGraphicsViewH is
begin
 return QGraphicsView_create2(scene, parent);
end;

procedure QGraphicsView_setSceneRect(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double) is
begin
  QGraphicsView_setSceneRect2(handle, x, y, w, h);
end;

procedure QGraphicsView_centerOn(handle: not null  QGraphicsViewH; x: Double; y: Double) is
begin
  QGraphicsView_centerOn2(handle, x, y);
end;

procedure QGraphicsView_centerOn(handle: not null  QGraphicsViewH; item: QGraphicsItemH) is
begin
  QGraphicsView_centerOn3(handle, item);
end;

procedure QGraphicsView_ensureVisible(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double; xmargin: Integer := 50; ymargin: Integer := 50) is
begin
 QGraphicsView_ensureVisible2(handle, x, y, w, h, xmargin, ymargin);
end;

procedure QGraphicsView_ensureVisible(handle: not null  QGraphicsViewH; item: QGraphicsItemH; xmargin: Integer := 50; ymargin: Integer := 50) is
begin
  QGraphicsView_ensureVisible3(handle, item, xmargin, ymargin);
end;

procedure QGraphicsView_fitInView(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio) is
begin
  QGraphicsView_fitInView2(handle, x, y, w, h, aspectRadioMode);
end;

procedure QGraphicsView_fitInView(handle: not null  QGraphicsViewH; item: QGraphicsItemH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio) is
begin
  QGraphicsView_fitInView3(handle, item, aspectRadioMode);
end;

function QGraphicsView_itemAt(handle: not null  QGraphicsViewH; x: Integer; y: Integer) return  QGraphicsItemH is
begin
 return  QGraphicsView_itemAt2(handle, x, y);
end;

function  QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; rect: QRectH) return QPolygonFH is
begin
  return QGraphicsView_mapToScene2(handle, rect);
end;

function  QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; polygon: QPolygonH) return QPolygonFH is
begin
  return QGraphicsView_mapToScene3(handle, polygon);
end;

function  QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; path: QPainterPathH) return  QPainterPathH is
begin
   return QGraphicsView_mapToScene4(handle, path);
end;

function  QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; rect: QRectFH) return  QPolygonH is
begin
   return QGraphicsView_mapFromScene2(handle, rect);
end;

function  QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; polygon: QPolygonFH) return QPolygonH is
begin
  return QGraphicsView_mapFromScene3(handle, polygon);
end;

function  QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; path: QPainterPathH) return  QPainterPathH is
begin
   return QGraphicsView_mapFromScene4(handle, path);
end;

function  QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; x: Integer; y: Integer) return  QPointFH is
begin
 return QGraphicsView_mapToScene5(handle, x, y);
end;

function  QGraphicsView_mapToScene(handle: not null  QGraphicsViewH;  x: Integer; y: Integer; w: Integer; h: Integer) return QPolygonFH is
begin
 return QGraphicsView_mapToScene6(handle, x, y, w, h);
end;

function  QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; x: Double; y: Double) return  QPointH is
begin
 return QGraphicsView_mapFromScene5(handle, x, y);
end;

function  QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double) return QPolygonH is
begin
  return QGraphicsView_mapFromScene6(handle, x, y,w, h);
end;

end  Qt.QGraphics;
