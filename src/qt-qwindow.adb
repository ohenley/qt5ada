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

package body Qt.QWindow is

 function  QWindow_create(parent:QScreenH) return QWindowH  is
 begin
   return  QWindow_create2(parent);
 end;

 procedure QWindow_setGeometry(handle: not null QWindowH; rect:QRectH) is
 begin
   QWindow_setGeometry2(handle,rect);
 end;

 procedure QWindow_resize(handle: not null QWindowH; newSize:QSizeH) is
 begin
   QWindow_resize2(handle,newSize);
 end;

 procedure QWindow_setPosition(handle: not null QWindowH; point:QPointH) is
 begin
    QWindow_setPosition2(handle,point);
 end;

end;
