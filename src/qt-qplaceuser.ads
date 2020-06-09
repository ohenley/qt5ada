-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPlaceUser is 

 function  QPlaceUser_create return QPlaceUserH;
 pragma Import(C,QPlaceUser_create, "QPlaceUser_create");
 
 function  QPlaceUser_create2(otherUser:QPlaceUserH) return QPlaceUserH;
 pragma Import(C,QPlaceUser_create2, "QPlaceUser_create2");
 
 procedure QPlaceUser_delete(handle:not null QPlaceUserH);
 pragma Import(C,QPlaceUser_delete, "QPlaceUser_delete");
 
 function  QPlaceUser_userId(handle:not null QPlaceUserH) return QStringH;
 pragma Import(C,QPlaceUser_userId, "QPlaceUser_userId");
 
 procedure QPlaceUser_setUserId(handle:not null QPlaceUserH; identifier:QStringH);
 pragma Import(C,QPlaceUser_setUserId, "QPlaceUser_setUserId");
 
 function  QPlaceUser_name(handle:not null QPlaceUserH) return QStringH;
 pragma Import(C,QPlaceUser_name, "QPlaceUser_name");
 
 procedure QPlaceUser_setName(handle:not null QPlaceUserH;name:QStringH);
 pragma Import(C,QPlaceUser_setName, "QPlaceUser_setName");
 
 function  QPlaceUser_isEqual(handle,otherUser:not null QPlaceUserH) return boolean;
 pragma Import(C,QPlaceUser_isEqual, "QPlaceUser_isEqual");
 
 function  QPlaceUser_create(otherUser:QPlaceUserH) return QPlaceUserH;

end;
