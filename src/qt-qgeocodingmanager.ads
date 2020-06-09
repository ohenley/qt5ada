--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QGeoShape; use Qt.QGeoShape;
with Qt.QGeoCodeReply; use Qt.QGeoCodeReply;
package Qt.QGeoCodingManager  is

 procedure QGeoCodingmanager_delete(handle: not null QGeoCodingManagerH);
 pragma Import(C,QGeoCodingmanager_delete, "QGeoCodingmanager_delete");
 
 function  QGeoCodingmanager_managerName(handle: not null QGeoCodingManagerH) return QStringH;
 pragma Import(C,QGeoCodingmanager_managerName, "QGeoCodingmanager_managerName");
 
 function  QGeoCodingmanager_managerVersion(handle: not null QGeoCodingManagerH) return integer;
 pragma Import(C,QGeoCodingmanager_managerVersion, "QGeoCodingmanager_managerVersion");
 
 function  QGeoCodingmanager_geocode(handle: not null QGeoCodingManagerH;address:QGeoAddressH;bounds:QGeoShapeH := QGeoShape_create) return QGeoCodeReplyH;
 pragma Import(C,QGeoCodingmanager_geocode, "QGeoCodingmanager_geocode");
 
 function  QGeoCodingmanager_geocode2(handle: not null QGeoCodingManagerH;searchString: QStringH;limit : integer := -1;offset : integer := 0; bounds:QGeoShapeH := QGeoShape_create) return QGeoCodeReplyH;
 pragma Import(C,QGeoCodingmanager_geocode2, "QGeoCodingmanager_geocode2");
 
 function  QGeoCodingmanager_reverseGeocode(handle: not null QGeoCodingManagerH;coordinate:QGeoCoordinateH;bounds:QGeoShapeH := QGeoShape_create) return QGeoCodeReplyH;
 pragma Import(C,QGeoCodingmanager_reverseGeocode, "QGeoCodingmanager_reverseGeocode");
 
 procedure QGeoCodingmanager_setLocale(handle: not null QGeoCodingManagerH;locale:QLocaleH);
 pragma Import(C,QGeoCodingmanager_setLocale, "QGeoCodingmanager_setLocale");
 
 function  QGeoCodingmanager_locale(handle: not null QGeoCodingManagerH) return QLocaleH;
 pragma Import(C,QGeoCodingmanager_locale, "QGeoCodingmanager_locale");

 type ObjectCallbackH is access procedure(reply:QGeoCodeReplyH);
 pragma convention(C,ObjectCallbackH);
 type ObjectIntStringCallbackH is access procedure(reply:QGeoCodeReplyH;error: QGeoCodeReplyError;errorString: QStringH);
 pragma convention(C,ObjectIntStringCallbackH);

 procedure QGeoCodingManager_signal_slot_finished(handle:not null QGeoCodingManagerH; hook: ObjectCallbackH);
 pragma Import(C,QGeoCodingManager_signal_slot_finished, "QGeoCodingManager_signal_slot_finished");
 
 procedure QGeoCodingManager_signal_slot_error(handle:not null QGeoCodingManagerH; hook:ObjectIntStringCallbackH);
 pragma Import(C,QGeoCodingManager_signal_slot_error, "QGeoCodingManager_signal_slot_error");
 

end;
