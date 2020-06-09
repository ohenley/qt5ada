-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString; use Qt.QString;
package Qt.QGeoAreaMonitorInfo is

 function  QGeoAreaMonitorInfo_create(name:QStringH := QString_create) return QGeoAreaMonitorInfoH;
 pragma Import(C,QGeoAreaMonitorInfo_create, "QGeoAreaMonitorInfo_create");
 
 function  QGeoAreaMonitorInfo_create2(other:QGeoAreaMonitorInfoH) return QGeoAreaMonitorInfoH;
 pragma Import(C,QGeoAreaMonitorInfo_create2, "QGeoAreaMonitorInfo_create2");
 
 procedure QGeoAreaMonitorInfo_destroy(handle:not null QGeoAreaMonitorInfoH);
 pragma Import(C,QGeoAreaMonitorInfo_destroy, "QGeoAreaMonitorInfo_destroy");
 
 function  QGeoAreaMonitorInfo_name(handle:not null QGeoAreaMonitorInfoH) return QStringH;
 pragma Import(C,QGeoAreaMonitorInfo_name, "QGeoAreaMonitorInfo_name");
 
 procedure QGeoAreaMonitorInfo_setName(handle:not null QGeoAreaMonitorInfoH;name:QStringH);
 pragma Import(C,QGeoAreaMonitorInfo_setName, "QGeoAreaMonitorInfo_setName");
 
 function  QGeoAreaMonitorInfo_identifier(handle:not null QGeoAreaMonitorInfoH) return QStringH;
 pragma Import(C,QGeoAreaMonitorInfo_identifier, "QGeoAreaMonitorInfo_identifier");
 
 function  QGeoAreaMonitorInfo_isValid(handle:not null QGeoAreaMonitorInfoH) return boolean;
 pragma Import(C,QGeoAreaMonitorInfo_isValid, "QGeoAreaMonitorInfo_isValid");
 
 function  QGeoAreaMonitorInfo_area(handle:not null QGeoAreaMonitorInfoH) return QGeoShapeH;
 pragma Import(C,QGeoAreaMonitorInfo_area, "QGeoAreaMonitorInfo_area");
 
 procedure QGeoAreaMonitorInfo_setArea(handle:not null QGeoAreaMonitorInfoH; newShape:QGeoShapeH);
 pragma Import(C,QGeoAreaMonitorInfo_setArea, "QGeoAreaMonitorInfo_setArea");
 
 function  QGeoAreaMonitorInfo_expiration(handle:not null QGeoAreaMonitorInfoH) return QDateTimeH;
 pragma Import(C,QGeoAreaMonitorInfo_expiration, "QGeoAreaMonitorInfo_expiration");
 
 procedure QGeoAreaMonitorInfo_setExpiration(handle:not null QGeoAreaMonitorInfoH;expiry:QDateTimeH);
 pragma Import(C,QGeoAreaMonitorInfo_setExpiration, "QGeoAreaMonitorInfo_setExpiration");
 
 function  QGeoAreaMonitorInfo_isPersistent(handle:not null QGeoAreaMonitorInfoH) return boolean;
 pragma Import(C,QGeoAreaMonitorInfo_isPersistent, "QGeoAreaMonitorInfo_isPersistent");
 
 procedure QGeoAreaMonitorInfo_setPersistent(handle:not null QGeoAreaMonitorInfoH;isPersistent:boolean);
 pragma Import(C,QGeoAreaMonitorInfo_setPersistent, "QGeoAreaMonitorInfo_setPersistent");
 
 function  QGeoAreaMonitorInfo_notificationParameters(handle:not null QGeoAreaMonitorInfoH) return QVariantMapH;
 pragma Import(C,QGeoAreaMonitorInfo_notificationParameters, "QGeoAreaMonitorInfo_notificationParameters");
 
 procedure QGeoAreaMonitorInfo_setNotificationParameters(handle:not null QGeoAreaMonitorInfoH; parameters:QVariantMapH);
 pragma Import(C,QGeoAreaMonitorInfo_setNotificationParameters, "QGeoAreaMonitorInfo_setNotificationParameters");
 ----------------------------------------------------------------------
 function  QGeoAreaMonitorInfo_create(other:QGeoAreaMonitorInfoH) return QGeoAreaMonitorInfoH;
end;
