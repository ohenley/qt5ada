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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QAbstractItemModel  is

 function  QModelIndex_create(handle: not null  QModelIndexH) return  QModelIndexH is
 begin
   return  QModelIndex_create2(handle);
 end;

 function  QPersistentModelIndex_create(parent: QModelIndexH) return  QPersistentModelIndexH is
 begin
   return  QPersistentModelIndex_create2(parent);
 end;

 function  QPersistentModelIndex_create( parent: QPersistentModelIndexH) return  QPersistentModelIndexH is
 begin
   return  QPersistentModelIndex_create3( parent);
 end;

 function  QAbstractItemModel_index(handle: not null  QAbstractItemModelH; row:integer; column:integer) return  QModelIndexH is
 begin
   return  QAbstractItemModel_index2(handle, row, column);
 end;
end  Qt.QAbstractItemModel;
