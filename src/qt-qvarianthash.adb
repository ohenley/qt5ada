--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QVariantHash is

 function  QVariantHash_create(other:QVariantHashH) return QVariantHashH is
 begin
  return  QVariantHash_create2(other);
 end;

 function  QVariantHash_keys(handle:not null QVariantHashH;value:QVariantH) return QStringListH is
 begin
   return  QVariantHash_keys2(handle,value);
 end;

 function  QVariantHash_values(handle:not null QVariantHashH;key:QStringH) return QVariantListH is
 begin
   return  QVariantHash_values2(handle,key);
 end;

function  QVariantHash_count(handle:not null QVariantHashH;key:QStringH) return integer is
begin
  return QVariantHash_count2(handle,key);
end;

procedure QVariantHash_assign(handle:not null QVariantHashH;key:QStringH;value:QVariantHashH) is
begin
  QVariantHash_assign2(handle,key,value);
end;  

   
end;
