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

package body Qt.QGraphicsLayout  is

 procedure QGraphicsLayoutItem_setSizePolicy(handle: not null QGraphicsLayoutItemH;hPolicy,vPolicy, controlType: integer) is 
 begin
   QGraphicsLayoutItem_setSizePolicy2(handle,hPolicy,vPolicy,controlType);
 end;

 procedure QGraphicsLayoutItem_setMinimumSize(handle: not null QGraphicsLayoutItemH; size: QSizeFH) is
 begin
    QGraphicsLayoutItem_setMinimumSize2(handle,size);
 end;

 procedure QGraphicsLayoutItem_setPreferredSize(handle: not null QGraphicsLayoutItemH; size:QSizeFH) is
 begin
   QGraphicsLayoutItem_setPreferredSize2(handle,size);
 end;

 procedure QGraphicsLayoutItem_setMaximumSize(handle: not null QGraphicsLayoutItemH; size:QSizeFH) is
 begin
    QGraphicsLayoutItem_setMaximumSize2(handle,size);
 end;

 function  QGraphicsGridLayout_itemAt(handle: not null QGraphicsGridLayoutH;index: integer) return QGraphicsLayoutItemH is
 begin
   return  QGraphicsGridLayout_itemAt2(handle,index);
 end;

 function  QGraphicsLinearLayout_create(orientation: integer; parent:QGraphicsLayoutItemH := null) return QGraphicsLinearLayoutH is
 begin
   return  QGraphicsLinearLayout_create2(orientation,parent);
 end;

end;
