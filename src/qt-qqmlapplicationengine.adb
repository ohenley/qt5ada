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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QQmlApplicationEngine is
 
 function  QQmlApplicationEngine_create(url:QUrlH;parent:QObjectH := null) return QQmlApplicationEngineH is
 begin
   return  QQmlApplicationEngine_create2(url,parent);
 end;

 function  QQmlApplicationEngine_create(filePath:QStringH ;parent:QObjectH := null) return QQmlApplicationEngineH is
 begin
   return  QQmlApplicationEngine_create3(filePath,parent);
 end;

 procedure QQmlApplicationEngine_load(handle:not null QQmlApplicationEngineH;filePath:QStringH) is
 begin
   QQmlApplicationEngine_load2(handle,filePath);
 end;

end;
