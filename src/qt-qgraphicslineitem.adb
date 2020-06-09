--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body QT.QGraphicsLineItem  is

 function  QGraphicsLineItem_create(parent:QGraphicsItemH := Null) return QGraphicsLineItemH is
 begin
   return  QGraphicsLineItem_create2(parent);
 end;

 function  QGraphicsLineItem_create(x1,y1,x2,y2: qreal; parent: QGraphicsItemH := Null) return QGraphicsLineItemH is
 begin
  return  QGraphicsLineItem_create3(x1,y1,x2,y2,parent);
 end;

 procedure QGraphicsLineItem_setLine(handle: not null QGraphicsLineItemH; x1,y1,x2,y2: qreal) is
 begin
  QGraphicsLineItem_setLine2(handle,x1,y1,x2,y2);
 end;

end QT.QGraphicsLineItem;
