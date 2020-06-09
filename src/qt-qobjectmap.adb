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

package body Qt.QObjectMap is

 function  QObjectMap_create(map:QObjectMapH) return QObjectMapH is
 begin
   return  QObjectMap_create2(map);
 end;

 function  QObjectMap_key(handle: not null QObjectMapH;value:QObjectListH; defaultKey:QObjectH) return QObjectH is
 begin
   return  QObjectMap_key2(handle,value,defaultKey);
 end;

 function  QObjectMap_value(handle: not null QObjectMapH;key:QObjectH; defaultValue:QObjectListH) return QObjectListH is
 begin
   return  QObjectMap_value2(handle,key, defaultValue);
 end;

 function  QObjectMap_keys(handle: not null QObjectMapH;value:QObjectListH) return QObjectListH is
 begin
   return  QObjectMap_keys2(handle,value);
 end;

 function  QObjectMap_values(handle: not null QObjectMapH;key:QObjectH) return void_Star is
 begin
   return  QObjectMap_values2(handle,key);
 end;

 function  QObjectMap_append(handle: not null QObjectMapH; key:QObjectH; value:QObjectListH) return QObjectMapH is
 begin
  return  QObjectMap_append2(handle, key, value);
 end;

 function  QObjectMap_key(handle: not null QObjectMapH; index: integer) return QObjectH is
 begin
   return  QObjectMap_key3(handle,index);
 end;

function  QObjectMap_count(handle: not null QObjectMapH) return integer is
begin
  return  QObjectMap_count2(handle);
end;

end Qt.QObjectMap;
