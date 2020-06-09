--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QGraphicsWidget  is

 function  QGraphicsWidget_create(rect:QRectFH;parent:QGraphicsItemH := null;wFlags:cardinal := 0) return QGraphicsWidgetH is
 begin
  return QGraphicsWidget_create3(rect,parent,wFlags);
 end;

 procedure QGraphicsWidget_setMinimumSize(handle: not null QGraphicsWidgetH; size:QSizeFH) is
 begin
   QGraphicsWidget_setMinimumSize2(handle, size);
 end;

 procedure QGraphicsWidget_setMaximumSize(handle: not null QGraphicsWidgetH; size:QSizeFH) is
 begin
   QGraphicsWidget_setMaximumSize2(handle, size);
 end;

 procedure QGraphicsWidget_setGeometry(handle: not null QGraphicsWidgetH; rect:QRectFH) is
 begin
   QGraphicsWidget_setGeometry2(handle, rect);
 end;

 procedure QGraphicsWidget_resize(handle: not null QGraphicsWidgetH; size:QSizeFH) is
 begin
   QGraphicsWidget_resize2(handle, size);
 end;

 procedure QGraphicsWidget_setPos(handle:not null QGraphicsWidgetH;pos:QPointFH) is
 begin
   QGraphicsWidget_setPos2(handle,pos);
 end;

end Qt.QGraphicsWidget;
