--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QStringList; use Qt.QStringList;
package body Qt.QStringMap is

 function  QStringMap_create(map:QStringMapH) return QStringMapH is
 begin
   return  QStringMap_create2(map);
 end;

 function  QStringMap_key(handle: not null QStringMapH;value:QObjectListH; defaultKey:QStringH) return QStringH is
 begin
   return  QStringMap_key2(handle,value,defaultKey);
 end;

 function  QStringMap_value(handle: not null QStringMapH;key:QStringH; defaultValue:QObjectListH) return QObjectListH is
 begin
   return  QStringMap_value2(handle,key, defaultValue);
 end;

 function  QStringMap_keys(handle: not null QStringMapH;value:QObjectListH) return QStringListH is
 begin
   return  QStringMap_keys2(handle,value);
 end;

 function  QStringMap_values(handle: not null QStringMapH;key:QStringH) return void_Star is
 begin
   return  QStringMap_values2(handle,key);
 end;

 function  QStringMap_append(handle: not null QStringMapH; key:QStringH; value:QObjectListH) return QStringMapH is
 begin
  return  QStringMap_append2(handle, key, value);
 end;

 function  QStringMap_key(handle: not null QStringMapH; index: integer) return QStringH is
 begin
   return  QStringMap_key3(handle,index);
 end;

function  QStringMap_count(handle: not null QStringMapH) return integer is
begin
  return QStringMap_count2(handle);
end;

end Qt.QStringMap;
