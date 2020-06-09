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

with Qt.QGeoPositionInfoSource;    
package Qt.QNmeaPositionInfoSource is

 subtype UpdateMode  is integer range 1 .. 2;
 RealTimeMode   : constant UpdateMode := 1;
 SimulationMode : constant UpdateMode := 2; 

 function  QNmeaPositionInfoSource_create( updMode:UpdateMode; parent:QObjectH := null) return QGeoPositionInfoSourceH;
 pragma Import(C,QNmeaPositionInfoSource_create, "QNmeaPositionInfoSource_create");
 
 procedure QNmeaPositionInfoSource_destroy(handle:not null QGeoPositionInfoSourceH);
 pragma Import(C,QNmeaPositionInfoSource_destroy, "QNmeaPositionInfoSource_destroy");
 
 procedure QNmeaPositionInfoSource_setUserEquivalentRangeError(handle:not null QGeoPositionInfoSourceH;uere:double);
 pragma Import(C,QNmeaPositionInfoSource_setUserEquivalentRangeError, "QNmeaPositionInfoSource_setUserEquivalentRangeError");
 
 function  QNmeaPositionInfoSource_userEquivalentRangeError(handle:not null QGeoPositionInfoSourceH) return double;
 pragma Import(C,QNmeaPositionInfoSource_userEquivalentRangeError, "QNmeaPositionInfoSource_userEquivalentRangeError");
 
 function  QNmeaPositionInfoSource_updateMode(handle:not null QGeoPositionInfoSourceH) return UpdateMode;
 pragma Import(C,QNmeaPositionInfoSource_updateMode, "QNmeaPositionInfoSource_updateMode");
 
 procedure QNmeaPositionInfoSource_setDevice(handle:not null QGeoPositionInfoSourceH;source:QIODeviceH);
 pragma Import(C,QNmeaPositionInfoSource_setDevice, "QNmeaPositionInfoSource_setDevice");
 
 function  QNmeaPositionInfoSource_device(handle:not null QGeoPositionInfoSourceH) return QIODeviceH;
 pragma Import(C,QNmeaPositionInfoSource_device, "QNmeaPositionInfoSource_device");
 
 procedure QNmeaPositionInfoSource_setUpdateInterval(handle:not null QGeoPositionInfoSourceH;msec:integer);
 pragma Import(C,QNmeaPositionInfoSource_setUpdateInterval, "QNmeaPositionInfoSource_setUpdateInterval");
 
 function  QNmeaPositionInfoSource_lastKnownPosition(handle:not null QGeoPositionInfoSourceH;fromSatellitePositioningMethodsOnly: boolean := false) return QGeoPositionInfoH;
 pragma Import(C,QNmeaPositionInfoSource_lastKnownPosition, "QNmeaPositionInfoSource_lastKnownPosition");
 
 function  QNmeaPositionInfoSource_supportedPositioningMethods(handle:not null QGeoPositionInfoSourceH) return Qt.QGeoPositionInfoSource.PositioningMethods;
 pragma Import(C,QNmeaPositionInfoSource_supportedPositioningMethods, "QNmeaPositionInfoSource_supportedPositioningMethods");
 
 function  QNmeaPositionInfoSource_minimumUpdateInterval(handle:not null QGeoPositionInfoSourceH) return integer;
 pragma Import(C,QNmeaPositionInfoSource_minimumUpdateInterval, "QNmeaPositionInfoSource_minimumUpdateInterval");
 
 function  QNmeaPositionInfoSource_error(handle:not null QGeoPositionInfoSourceH) return Qt.QGeoPositionInfoSource.Error;
 pragma Import(C,QNmeaPositionInfoSource_error, "QNmeaPositionInfoSource_error");
 
 procedure QNmeaPositionInfoSource_startUpdates(handle:not null QGeoPositionInfoSourceH);
 pragma Import(C,QNmeaPositionInfoSource_startUpdates, "QNmeaPositionInfoSource_startUpdates");
 
 procedure QNmeaPositionInfoSource_stopUpdates(handle:not null QGeoPositionInfoSourceH);
 pragma Import(C,QNmeaPositionInfoSource_stopUpdates, "QNmeaPositionInfoSource_stopUpdates");
 
 procedure QNmeaPositionInfoSource_requestUpdate(handle:not null QGeoPositionInfoSourceH; timeout: integer := 0);
 pragma Import(C,QNmeaPositionInfoSource_requestUpdate, "QNmeaPositionInfoSource_requestUpdate");
 
end;
