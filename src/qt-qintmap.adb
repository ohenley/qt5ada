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

package body Qt.QIntMap is

 function  QIntMap_create(map:QIntMapH) return QIntMapH is
 begin
   return  QIntMap_create2(map);
 end;

 function  QIntMap_key(handle: not null QIntMapH;value:QObjectListH; defaultKey:QObjectH) return QObjectH is
 begin
   return  QIntMap_key2(handle,value,defaultKey);
 end;

 function  QIntMap_value(handle: not null QIntMapH;key:QObjectH; defaultValue:QObjectListH) return QObjectListH is
 begin
   return  QIntMap_value2(handle,key, defaultValue);
 end;

 function  QIntMap_append(handle: not null QIntMapH; key:QObjectH; value:QObjectListH) return QIntMapH is
 begin
  return  QIntMap_append2(handle, key, value);
 end;

 function  QIntMap_key(handle: not null QIntMapH; index: integer) return QObjectH is
 begin
   return  QIntMap_key3(handle,index);
 end;

function  QIntMap_count(handle: not null QIntMapH) return integer is
begin
  return  QIntMap_count2(handle);
end;

end Qt.QIntMap;
