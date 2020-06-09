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

package body Qt.QDirModel  is

 function  QDirModel_create(parent:QObjectH := null) return QDirModelH is
 begin
   return  QDirModel_create2(parent);
 end;

 function  QDirModel_index(handle: not null  QDirModelH;row:integer; column:integer) return QModelIndexH is
 begin
   return  QDirModel_index2(handle,row,column);
 end;

 function  QDirModel_index(handle: not null  QDirModelH; path: QStringH; column:integer := 0) return QModelIndexH is
 begin
   return  QDirModel_index3(handle, path, column);
 end;

 function  QDirModel_hasChildren(handle: not null  QDirModelH) return boolean is
 begin
   return  QDirModel_hasChildren2(handle);
 end;

 function QDirModel_columnCount(handle: not null  QDirModelH) return integer is
 begin
   return  QDirModel_columnCount2(handle);
 end;

 function QDirModel_rowCount(handle: not null  QDirModelH) return integer is
 begin
   return  QDirModel_rowCount2(handle);
 end;

end Qt.QDirModel;
