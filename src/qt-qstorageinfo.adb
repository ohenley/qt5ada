--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QStorageInfo is

 function  QStorageInfo_create(path:QStringH) return QStorageInfoH is
 begin
  return  QStorageInfo_create2(path);
end;

 function  QStorageInfo_create(dir:QDirH) return QStorageInfoH is
 begin
  return  QStorageInfo_create3(dir);
 end;

 function  QStorageInfo_create(other:QStorageInfoH) return QStorageInfoH is
 begin
  return  QStorageInfo_create4(other);
 end;

end;
