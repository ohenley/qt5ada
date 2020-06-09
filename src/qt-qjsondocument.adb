-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QJsonDocument is
 
 function  QJsonDocument_create(object:QJsonObjectH) return QJsonDocumentH is
 begin
   return  QJsonDocument_create2(object);
 end;
 function  QJsonDocument_create(arr:QJsonArrayH) return QJsonDocumentH is
 begin
   return  QJsonDocument_create3(arr);
 end;
 function  QJsonDocument_create(other:QJsonDocumentH) return QJsonDocumentH is
 begin
   return  QJsonDocument_create4(other);
 end;

end;
