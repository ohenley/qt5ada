--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012 ,2014,2015,2016           บ
-- บ Copyright (C) 2007,2014,2015,2016                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPalette; use  Qt.QPalette;
with Qt.QBrush;   use  Qt.QBrush;
package body Qt.QWidget is

function QWidget_create(painter:customPaintH;parent: QWidgetH := null; f: QtWindowFlags := 0) return QWidgetH is   
begin
 return QWidget_create2(painter,parent,f);
end;

procedure QWidget_setMinimumSize(handle: not null  QWidgetH; minw: Integer; minh: Integer) is
begin
  QWidget_setMinimumSize2(handle, minw, minh);
end;

procedure QWidget_setMaximumSize(handle: not null  QWidgetH; maxw: Integer; maxh: Integer) is
begin
  QWidget_setMaximumSize2(handle, maxw, maxh);
end;

procedure QWidget_setSizeIncrement(handle: not null  QWidgetH; w: Integer; h: Integer) is
begin
  QWidget_setSizeIncrement2(handle, w, h);
end;

procedure QWidget_setBaseSize(handle: not null  QWidgetH; basew: Integer; baseh: Integer) is
begin
 QWidget_setBaseSize2(handle, basew, baseh);
end;

procedure QWidget_setFixedSize(handle: not null  QWidgetH; w: Integer; h: Integer) is
begin
  QWidget_setFixedSize2(handle, w, h);
end;

procedure QWidget_setMask(handle: not null  QWidgetH; p1: QRegionH) is
begin
   QWidget_setMask2(handle, p1);
end;

procedure QWidget_setFocus(handle: not null  QWidgetH; reason: QtFocusReason) is
begin
  QWidget_setFocus2(handle, reason);
end;

procedure QWidget_grabMouse(handle: not null  QWidgetH; p1: QCursorH) is
begin
  QWidget_grabMouse2(handle, p1);
end;

procedure QWidget_update(handle: not null  QWidgetH; x: Integer; y: Integer; w: Integer; h: Integer) is
begin
  QWidget_update2(handle, x, y, w, h);
end;

procedure QWidget_update(handle: not null  QWidgetH; p1: QRectH) is
begin
  QWidget_update3(handle, p1);
end;

procedure QWidget_update(handle: not null  QWidgetH; p1: QRegionH) is
begin
  QWidget_update4(handle, p1);
end;

procedure QWidget_repaint(handle: not null  QWidgetH; x: Integer; y: Integer; w: Integer; h: Integer) is
begin
  QWidget_repaint2(handle, x, y, w, h);
end;

procedure QWidget_repaint(handle: not null  QWidgetH; p1: QRectH) is
begin
   QWidget_repaint3(handle, p1);
end;

procedure QWidget_repaint(handle: not null  QWidgetH; p1: QRegionH) is
begin
   QWidget_repaint4(handle, p1);
end;

procedure QWidget_move(handle: not null  QWidgetH; p1: QPointH) is
begin
   QWidget_move2(handle, p1);
end;

procedure QWidget_resize(handle: not null  QWidgetH; p1: QSizeH) is
begin
  QWidget_resize2(handle, p1);
end;

procedure QWidget_setGeometry(handle: not null  QWidgetH; p1: QRectH) is
begin
  QWidget_setGeometry2(handle,p1);
end;

procedure QWidget_setSizePolicy(handle: not null  QWidgetH; horizontal: integer; vertical: integer) is
begin
  QWidget_setSizePolicy2(handle, horizontal,vertical);
end;

procedure QWidget_setParent(handle: not null  QWidgetH; parent: QWidgetH; f: QtWindowFlags) is
begin
  QWidget_setParent2(handle, parent, f);
end;

procedure QWidget_scroll(handle: not null  QWidgetH; dx: Integer; dy: Integer; p3: QRectH) is
begin
  QWidget_scroll2(handle, dx, dy, p3);
end;

function QWidget_childAt(handle: not null  QWidgetH; p: QPointH) return  QWidgetH is
begin
  return QWidget_childAt2(handle,p);
end;

procedure  QWidget_setColor(handle: not null  QWidgetH;foregroundColor,backgroundColor: QColorH) is
pal : QPaletteH;
begin
  pal := QWidget_palette(handle);
  QPalette_setColor(handle => pal, cr => QPaletteWindow , color => backgroundColor);
  QPalette_setColor(handle => pal, cr => QPaletteWindowText , color => foregroundColor);
  QWidget_setPalette(handle,pal);
end;

procedure  QWidget_setBackgroundColor(handle: not null  QWidgetH;backgroundColor: QColorH) is
pal : QPaletteH;
begin
  pal := QWidget_palette(handle);
  QPalette_setColor(handle => pal, cr => QPaletteWindow , color => backgroundColor);
  QWidget_setPalette(handle,pal);
end;

 procedure QWidget_render(handle: not null  QWidgetH; target: QPainterH; targetOffset: QPointH := QPoint_create; sourceRegion: QRegionH := QRegion_create; renderFlags: QWidgetRenderFlags := QWidgetDrawWindowBackground + QWidgetDrawChildren) is 
 begin
  QWidget_render2(handle,target,targetOffset,sourceRegion,renderFlags);
 end;

 procedure QWidget_render(handle: not null  QWidgetH; target: QPrinterH) is 
 begin
  QWidget_render3(handle, target);
 end;

end Qt.QWidget;
