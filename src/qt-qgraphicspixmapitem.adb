--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body QT.QGraphicsPixmapItem  is

 function  QGraphicsPixmapItem_create(parent:QGraphicsItemH := null) return QGraphicsPixmapItemH is
 begin
   return  QGraphicsPixmapItem_create2(parent);
 end;

 procedure QGraphicsPixmapItem_setOffset(handle: not null QGraphicsPixmapItemH; x,y: qreal) is
 begin
   QGraphicsPixmapItem_setOffset2(handle, x,y);
 end;
 
 function  QGraphicsPixmapObject_create(parent:QGraphicsItemH := null) return QGraphicsPixmapItemH is
begin
  return QGraphicsPixmapObject_create2(parent);
end;

procedure QGraphicsPixmapObject_setOffset(handle: not null QGraphicsPixmapItemH; x,y: qreal) is
begin
  QGraphicsPixmapObject_setOffset2(handle,x,y);
end;  

 
end QT.QGraphicsPixmapItem;
