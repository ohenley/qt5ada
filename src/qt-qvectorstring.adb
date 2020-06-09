--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body QT.QVectorString  is

 function  QVectorstring_create(size:integer) return QVectorStringH is
 begin
   return  QVectorstring_create2(size);
 end;

 procedure QVectorString_insert(handle: not null QVectorStringH;i,n:integer; str:QStringH) is
 begin
    QVectorString_insert2(handle,i,n,str);
 end;

 procedure QVectorString_remove(handle: not null QVectorStringH;i,n:integer) is
 begin
   QVectorString_remove2(handle,i,n);
 end;

 function  QVectorString_count(handle: not null QVectorStringH) return integer is
 begin
   return  QVectorString_count2(handle);
 end;

 function  QVectorString_value(handle: not null QVectorStringH;i:integer; defaultValue:QStringH) return QStringH is
 begin
   return  QVectorString_value2(handle,i, defaultValue);
 end;

end QT.QVectorString;
