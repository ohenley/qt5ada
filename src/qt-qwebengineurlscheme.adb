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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.


package body Qt.QWebEngineUrlScheme is

 function  QWebEngineUrlScheme_create(name:QByteArrayH) return QWebUrlSchemeH is
 begin
   return QWebEngineUrlScheme_create2(name);
 end;

 function  QWebEngineUrlScheme_create(that:QWebUrlSchemeH) return QWebUrlSchemeH is
 begin
   return QWebEngineUrlScheme_create3(that);
 end;

 function  QWebEngineUrlScheme_create(name:zstring) return QWebUrlSchemeH is
 begin
   return QWebEngineUrlScheme_create4(name);
 end;

 function  QWebEngineUrlScheme_name(handle:not null QWebUrlSchemeH) return zstring is
 begin
   return QWebEngineUrlScheme_name2(handle);
 end;

 procedure QWebEngineUrlScheme_setName(handle:not null QWebUrlSchemeH;name:zstring) is
 begin
   QWebEngineUrlScheme_setName2(handle,name);
 end;

end;
