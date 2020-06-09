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

package body Qt.QLibrary is

 function  QLibrary_create(fileName:QStringH;parent:QObjectH := null) return QLibraryH is
 begin
   return  QLibrary_create2(fileName,parent);
 end;

 function  QLibrary_create( fileName:QStringH; verNum:integer;parent:QObjectH := null) return QLibraryH is
 begin
  return  QLibrary_create3(fileName,verNum,parent);
 end;

 function  QLibrary_create( fileName,version:QStringH ;parent:QObjectH := null) return QLibraryH is
 begin
  return  QLibrary_create4(fileName,version,parent);
 end;

 function  QLibrary_resolve(handle: not null QLibraryH;fileName:QStringH; symbol:zstring) return void_Star is
 begin
  return QLibrary_resolve2(handle,fileName,symbol);
 end;

 function  QLibrary_resolve(handle: not null QLibraryH;fileName:QStringH; verNum:integer; symbol:zstring) return void_Star is
 begin
  return QLibrary_resolve3(handle,fileName, verNum,symbol);
 end;

 function  QLibrary_resolve(handle: not null QLibraryH;fileName,version:QStringH; symbol:zstring) return void_Star is
 begin
  return  QLibrary_resolve4(handle,fileName,version,symbol);
 end;

 procedure QLibrary_setFileNameAndVersion(handle: not null QLibraryH;fileName,version:QStringH) is
 begin
  QLibrary_setFileNameAndVersion2(handle,fileName,version);
 end;

end Qt.QLibrary;
