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

package body Qt.QJsonValue is

 
 function  QJsonValue_create(b:boolean) return QJsonValueH is
 begin
   return  QJsonValue_create2(b);
 end;
 function  QJsonValue_create(n:qt.double) return QJsonValueH is
 begin
   return  QJsonValue_create3(n);
 end;
 function  QJsonValue_create(n:integer) return QJsonValueH is
 begin
   return  QJsonValue_create4(n);
 end;
 function  QJsonValue_create(n:qint64) return QJsonValueH is
 begin
   return  QJsonValue_create5(n);
 end;
 function  QJsonValue_create(s:QStringH) return QJsonValueH is
 begin
   return  QJsonValue_create6(s);
 end;
 function  QJsonValue_create(s:QLatin1StringH) return QJsonValueH is
 begin
   return  QJsonValue_create7(s);
 end;
 function  QJsonValue_create(a:QJsonArrayH) return QJsonValueH is
 begin
   return  QJsonValue_create8(a);
 end;
 function  QJsonValue_create(obj:QJsonObjectH) return QJsonValueH is
 begin
   return  QJsonValue_create9(obj);
 end;
 function  QJsonValue_create(other:QJsonValueH) return QJsonValueH is
 begin
   return  QJsonValue_create10(other);
 end;
 function  QJsonValue_toString(handle:not null QJsonValueH;defaultValue:QStringH) return QStringH is
 begin
   return  QJsonValue_toString2(handle,defaultValue);
 end;
 function  QJsonValue_toArray(handle:not null QJsonValueH;defaultValue:QJsonArrayH) return QJsonArrayH is
 begin
   return  QJsonValue_toArray2(handle,defaultValue);
 end;
 function  QJsonValue_toObject(handle:not null QJsonValueH;defaultValue:QJsonObjectH) return QJsonObjectH is
 begin
   return  QJsonValue_toObject2(handle,defaultValue);
 end;

end;
