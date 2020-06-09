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

package body Qt.QJsonObject is

 
 function  QJsonObject_create(other:QJsonObjectH) return QJsonObjectH is 
 begin
  return  QJsonObject_create2(other);
 end;

 function  QJsonObject_value(handle:not null QJsonObjectH;key:QLatin1StringH) return QJsonValueH is
 begin
   return  QJsonObject_value2(handle,key);
 end;

 function  QJsonObject_contains(handle:not null QJsonObjectH;key:QLatin1StringH) return boolean is
 begin
   return  QJsonObject_contains2(handle,key);
 end;

end;
