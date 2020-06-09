-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2018                           บ
-- บ Copyright (C)                                                     บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QStringView is

 function  QStringView_create(str:zstring) return QStringViewH is
 begin
   return  QStringView_create2(str);
 end;

 function  QStringView_create(str:QStringRefH) return QStringViewH is
 begin
   return  QStringView_create3(str);
 end;

 function  QStringView_mid(handle:not null QStringViewH;pos,n:integer) return QStringViewH is
 begin
   return  QStringView_mid2(handle,pos,n);
 end;

 function  QStringView_startsWith(handle:not null QStringViewH;s:QLatin1StringH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean is
 begin
   return  QStringView_startsWith2(handle,s,cs);
 end;

 function  QStringView_startsWith(handle:not null QStringViewH;c:QCharH) return boolean is
 begin
   return  QStringView_startsWith3(handle,c);
 end;

 function  QStringView_startsWith(handle:not null QStringViewH;c:QCharH;cs: QtCaseSensitivity) return boolean is
 begin
   return  QStringView_startsWith4(handle,c,cs);
 end;

 function  QStringView_endsWith(handle:not null QStringViewH;s:QLatin1StringH;cs : QtCaseSensitivity :=  QtCaseSensitive) return boolean is
 begin
   return  QStringView_endsWith2(handle,s,cs);
 end;

 function  QStringView_endsWith(handle:not null QStringViewH;c:QCharH) return boolean is
 begin
  return  QStringView_endsWith3(handle,c);
 end;

 function  QStringView_endsWith(handle:not null QStringViewH;c:QCharH;cs: QtCaseSensitivity) return boolean is
 begin 
   return  QStringView_endsWith4(handle,c,cs);
 end;

end;
