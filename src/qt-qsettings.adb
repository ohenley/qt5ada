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

package body Qt.QSettings is

 function  QSettings_create(scope:QSettingsScope; organization:QStringH;app: QStringH := s2qs(""); parent: QObjectH := null) return QSettingsH is
 begin
   return  QSettings_create2(scope, organization,app, parent);
 end;

 function  QSettings_create(format:QSettingsFormat; scope:QSettingsScope; organization:QStringH; app:QStringH := s2qs("");parent: QObjectH := null) return QSettingsH is
 begin
   return  QSettings_create3(format, scope, organization, app,parent);
 end;

 function  QSettings_create(fileName:QStringH;format: QSettingsFormat;parent: QObjectH := null) return QSettingsH is
 begin
   return  QSettings_create4(fileName,format,parent);
 end;

 function  QSettings_create(parent:QObjectH := null) return QSettingsH is
 begin
   return  QSettings_create5(parent);
 end;

end Qt.QSettings;
