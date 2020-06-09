--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QDeclarativeView  is

function QDeclarativeView_create(url: QUrlH; parent: QWidgetH := null) return QDeclarativeViewH is
begin
 return QDeclarativeView_create2(url, parent);
end;

procedure QDeclarativeView_setSceneRect(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double) is
begin
  QDeclarativeView_setSceneRect2(handle, x, y, w, h);
end;

procedure QDeclarativeView_centerOn(handle: not null  QDeclarativeViewH; x: Double; y: Double) is
begin
  QDeclarativeView_centerOn2(handle, x, y);
end;

procedure QDeclarativeView_centerOn(handle: not null  QDeclarativeViewH; item: QGraphicsItemH) is
begin
  QDeclarativeView_centerOn3(handle, item);
end;

procedure QDeclarativeView_ensureVisible(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double; xmargin: Integer := 50; ymargin: Integer := 50) is
begin
 QDeclarativeView_ensureVisible2(handle, x, y, w, h, xmargin, ymargin);
end;

procedure QDeclarativeView_ensureVisible(handle: not null  QDeclarativeViewH; item: QGraphicsItemH; xmargin: Integer := 50; ymargin: Integer := 50) is
begin
  QDeclarativeView_ensureVisible3(handle, item, xmargin, ymargin);
end;

procedure QDeclarativeView_fitInView(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio) is
begin
  QDeclarativeView_fitInView2(handle, x, y, w, h, aspectRadioMode);
end;

procedure QDeclarativeView_fitInView(handle: not null  QDeclarativeViewH; item: QGraphicsItemH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio) is
begin
  QDeclarativeView_fitInView3(handle, item, aspectRadioMode);
end;

function QDeclarativeView_itemAt(handle: not null  QDeclarativeViewH; x: Integer; y: Integer) return  QGraphicsItemH is
begin
 return  QDeclarativeView_itemAt2(handle, x, y);
end;

function  QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; rect: QRectH) return QPolygonFH is
begin
  return QDeclarativeView_mapToScene2(handle, rect);
end;

function  QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; polygon: QPolygonH) return QPolygonFH is
begin
  return QDeclarativeView_mapToScene3(handle, polygon);
end;

function  QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; path: QPainterPathH) return  QPainterPathH is
begin
   return QDeclarativeView_mapToScene4(handle, path);
end;

function  QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; rect: QRectFH) return  QPolygonH is
begin
   return QDeclarativeView_mapFromScene2(handle, rect);
end;

function  QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; polygon: QPolygonFH) return QPolygonH is
begin
  return QDeclarativeView_mapFromScene3(handle, polygon);
end;

function  QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; path: QPainterPathH) return  QPainterPathH is
begin
   return QDeclarativeView_mapFromScene4(handle, path);
end;

function  QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; x: Integer; y: Integer) return  QPointFH is
begin
 return QDeclarativeView_mapToScene5(handle, x, y);
end;

function  QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH;  x: Integer; y: Integer; w: Integer; h: Integer) return QPolygonFH is
begin
 return QDeclarativeView_mapToScene6(handle, x, y, w, h);
end;

function  QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; x: Double; y: Double) return  QPointH is
begin
 return QDeclarativeView_mapFromScene5(handle, x, y);
end;

function  QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double) return QPolygonH is
begin
  return QDeclarativeView_mapFromScene6(handle, x, y,w, h);
end;

end  Qt.QDeclarativeView;
