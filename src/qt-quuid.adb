--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2018                           บ
-- บ Copyright (C) 2018                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package  body Qt.QUuid    is 

 function  QUuid_create(str:zstring) return QUuidH is
 begin
  return QUuid_create2(str);
 end;

 function  QUuid_create(str:QByteArrayH) return QUuidH is
 begin
  return QUuid_create3(str);
 end;

 function  QUuid_fromString(str:QLatin1StringH) return QUuidH is
 begin
  return  QUuid_fromString2(str);
 end;

 function  QUuid_createUuidV5(handle:not null QUuidH;baseData: QStringH) return QUuidH is
 begin
  return QUuid_createUuidV52(handle,baseData);
 end;

 function  QUuid_toString(handle:not null QUuidH;mode:StringFormat) return QStringH is
 begin
   return  QUuid_toString2(handle,mode);
 end;

 function  QUuid_toByteArray(handle:not null QUuidH;mode:StringFormat) return QByteArrayH is
 begin
   return QUuid_toByteArray2(handle,mode);
 end;

end;
