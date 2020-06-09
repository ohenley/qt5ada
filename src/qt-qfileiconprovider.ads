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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QFileIconProvider  is

-- IconType 
  Computer  : constant := 0;
  Desktop   : constant := 1;
  Trashcan  : constant := 2;
  Network   : constant := 3;
  Drive     : constant := 4;
  Folder    : constant := 5;
  File      : constant := 6;

 function  QFileIconProvider_create return QFileIconProviderH;
 pragma Import(C,QFileIconProvider_create, "QFileIconProvider_create");
 
 procedure QFileIconProvider_destroy(handle: not null QFileIconProviderH);
 pragma Import(C,QFileIconProvider_destroy, "QFileIconProvider_destroy");
 
 function  QFileIconProvider_icon(handle: not null QFileIconProviderH; iconType: integer) return QIconH with pre => iconType in Computer .. File;
 pragma Import(C,QFileIconProvider_icon, "QFileIconProvider_icon");
 
 function  QFileIconProvider_icon2(handle: not null QFileIconProviderH;info:QFileInfoH) return QIconH;
 pragma Import(C,QFileIconProvider_icon2, "QFileIconProvider_icon2");
 
 function  QFileIconProvider_type(handle: not null QFileIconProviderH;info:QFileInfoH) return QStringH;
 pragma Import(C,QFileIconProvider_type, "QFileIconProvider_type");
 
 function  QFileIconProvider_icon(handle: not null QFileIconProviderH;info:QFileInfoH) return QIconH;

end;
