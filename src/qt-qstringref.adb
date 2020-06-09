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

package body Qt.QStringRef  is

 function  QStringRef_create(str:QStringH) return QStringRefH is
 begin
   return QStringRef_create2(str);
 end;

 function  QStringRef_create(str:QStringH; position, size:integer) return QStringRefH is
 begin
   return  QStringRef_create3(str, position, size);
 end;

 function  QStringRef_create(other:QStringRefH) return QStringRefH is
 begin
   return  QStringRef_create4(other);
 end;

 function  QStringRef_equal(handle: not null QStringRefH;other:QStringH) return boolean is
 begin
   return  QStringRef_equal2(handle,other);
 end;

 function  QStringRef_equal(handle: not null QStringRefH;other:QLatin1StringH) return boolean is
 begin
   return  QStringRef_equal3(handle,other);
 end;

 function  QStringRef_compare(handle: not null QStringRefH;stringRef:QStringRefH;cs: QtCaseSensitivity := QtCaseSensitive) return integer is
 begin
  return  QStringRef_compare2(handle,stringRef,cs);
 end;

 function  QStringRef_compare(handle: not null QStringRefH;str:QLatin1StringH; cs: QtCaseSensitivity := QtCaseSensitive) return integer is
 begin
   return  QStringRef_compare3(handle,str, cs);
 end;

 function  QStringRef_localeAwareCompare(handle: not null QStringRefH;stringRef:QStringRefH) return integer is
 begin
  return  QStringRef_localeAwareCompare2(handle,stringRef);
 end;

end Qt.QStringRef;
