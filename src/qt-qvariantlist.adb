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

package body Qt.QVariantList is

 function  QVariantList_create(list:QVariantListH) return QVariantListH is
 begin
   return  QVariantList_create2(list);
 end;

 procedure QVariantList_append(handle: not null QVariantListH;list: QVariantListH) is
 begin
   QVariantList_append2(handle,list);
 end;

function  QVariantList_count(handle: not null QVariantListH) return integer is
begin
  return  QVariantList_count2(handle);
end;

end Qt.QVariantList;
