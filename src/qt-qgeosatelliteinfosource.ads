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

with  Qt.QGeoSatelliteInfo; use Qt.QGeoSatelliteInfo;
package Qt.QGeoSatelliteInfoSource is

 subtype Error is integer range -1 .. 2;

 AccessError        : constant Error := 0;
 ClosedError        : constant Error := 1;
 NoError            : constant Error := 2;
 UnknownSourceError : constant Error := -1;

 procedure QGeoSatelliteInfoSource_destroy(handle:not null QGeoSatelliteInfoSourceH);
 pragma Import(C,QGeoSatelliteInfoSource_destroy, "QGeoSatelliteInfoSource_destroy");
 
 function  QGeoSatelliteInfoSource_createDefaultSource(parent:QObjectH) return QGeoSatelliteInfoSourceH;
 pragma Import(C,QGeoSatelliteInfoSource_createDefaultSource, "QGeoSatelliteInfoSource_createDefaultSource");
 
 function  QGeoSatelliteInfoSource_createSource(sourceName:QStringH; parent: QObjectH) return QGeoSatelliteInfoSourceH;
 pragma Import(C,QGeoSatelliteInfoSource_createSource, "QGeoSatelliteInfoSource_createSource");
 
 function  QGeoSatelliteInfoSource_availableSources return QStringListH;
 pragma Import(C,QGeoSatelliteInfoSource_availableSources, "QGeoSatelliteInfoSource_availableSources");
 
 function  QGeoSatelliteInfoSource_sourceName(handle:not null QGeoSatelliteInfoSourceH) return QStringH;
 pragma Import(C,QGeoSatelliteInfoSource_sourceName, "QGeoSatelliteInfoSource_sourceName");
 
 function  QGeoSatelliteInfoSource_updateInterval(handle:not null QGeoSatelliteInfoSourceH) return integer;
 pragma Import(C,QGeoSatelliteInfoSource_updateInterval, "QGeoSatelliteInfoSource_updateInterval");
 
 procedure QGeoSatelliteInfoSource_setUpdateInterval(handle:not null QGeoSatelliteInfoSourceH; msec:integer);
 pragma Import(C,QGeoSatelliteInfoSource_setUpdateInterval, "QGeoSatelliteInfoSource_setUpdateInterval");
 
 function  QGeoSatelliteInfoSource_minimumUpdateInterval(handle:not null QGeoSatelliteInfoSourceH) return integer;
 pragma Import(C,QGeoSatelliteInfoSource_minimumUpdateInterval, "QGeoSatelliteInfoSource_minimumUpdateInterval");
 
 function  QGeoSatelliteInfoSource_error(handle:not null QGeoSatelliteInfoSourceH) return Error;
 pragma Import(C,QGeoSatelliteInfoSource_error, "QGeoSatelliteInfoSource_error");
 
 procedure QGeoSatelliteInfoSource_startUpdates(handle:not null QGeoSatelliteInfoSourceH);
 pragma Import(C,QGeoSatelliteInfoSource_startUpdates, "QGeoSatelliteInfoSource_startUpdates");
 
 procedure QGeoSatelliteInfoSource_stopUpdates(handle:not null QGeoSatelliteInfoSourceH);
 pragma Import(C,QGeoSatelliteInfoSource_stopUpdates, "QGeoSatelliteInfoSource_stopUpdates");

 type satelliteInfoCallbackH  is access procedure(list:QGeoSatellitesListH);

 procedure QGeoSatelliteInfoSource_signal_slot_satellitesInViewUpdated(handle:not null QGeoSatelliteInfoSourceH; hook: satelliteInfoCallbackH);
 pragma Import(C,QGeoSatelliteInfoSource_signal_slot_satellitesInViewUpdated, "QGeoSatelliteInfoSource_signal_slot_satellitesInViewUpdated");
 
 procedure QGeoSatelliteInfoSource_signal_slot_satellitesInUseUpdated(handle:not null QGeoSatelliteInfoSourceH;hook: satelliteInfoCallbackH);
 pragma Import(C,QGeoSatelliteInfoSource_signal_slot_satellitesInUseUpdated, "QGeoSatelliteInfoSource_signal_slot_satellitesInUseUpdated");
 
 procedure QGeoSatelliteInfoSource_signal_slot_requestTimeout(handle:not null QGeoSatelliteInfoSourceH;hook: voidCallbackH);
 pragma Import(C,QGeoSatelliteInfoSource_signal_slot_requestTimeout, "QGeoSatelliteInfoSource_signal_slot_requestTimeout");
 
 procedure QGeoSatelliteInfoSource_signal_slot_error(handle:not null QGeoSatelliteInfoSourceH;hook: intCallbackH);
 pragma Import(C,QGeoSatelliteInfoSource_signal_slot_error, "QGeoSatelliteInfoSource_signal_slot_error");
 
end;
