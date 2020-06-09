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

package Qt.QGeoPositionInfoSource is

 subtype Error is integer range 0 .. 3;

 AccessError        : constant Error := 0;
 ClosedError        : constant Error := 1;
 UnknownSourceError : constant Error := 2;
 NoError            : constant Error := 3;

 subtype  PositioningMethod is cardinal;

 NoPositioningMethods           : constant PositioningMethod := 16#00000000#;
 SatellitePositioningMethods    : constant PositioningMethod := 16#000000ff#;
 NonSatellitePositioningMethods : constant PositioningMethod := 16#ffffff00#;
 AllPositioningMethods          : constant PositioningMethod := 16#ffffffff#;

 subtype  PositioningMethods is cardinal;

 procedure QGeoPositionInfoSource_destroy(handle:not null QGeoPositionInfoSourceH);
 pragma Import(C,QGeoPositionInfoSource_destroy, "QGeoPositionInfoSource_destroy");
 
 procedure QGeoPositionInfoSource_setUpdateInterval(handle:not null QGeoPositionInfoSourceH;msec:integer);
 pragma Import(C,QGeoPositionInfoSource_setUpdateInterval, "QGeoPositionInfoSource_setUpdateInterval");
 
 function  QGeoPositionInfoSource_updateInterval(handle:not null QGeoPositionInfoSourceH) return integer;
 pragma Import(C,QGeoPositionInfoSource_updateInterval, "QGeoPositionInfoSource_updateInterval");
 
 procedure QGeoPositionInfoSource_setPreferredPositioningMethods(handle:not null QGeoPositionInfoSourceH; methods:PositioningMethods);
 pragma Import(C,QGeoPositionInfoSource_setPreferredPositioningMethods, "QGeoPositionInfoSource_setPreferredPositioningMethods");
 
 function  QGeoPositionInfoSource_preferredPositioningMethods(handle:not null QGeoPositionInfoSourceH) return PositioningMethods;
 pragma Import(C,QGeoPositionInfoSource_preferredPositioningMethods, "QGeoPositionInfoSource_preferredPositioningMethods");
 
 function  QGeoPositionInfoSource_lastKnownPosition(handle:not null QGeoPositionInfoSourceH;fromSatellitePositioningMethodsOnly: boolean := false) return QGeoPositionInfoH;
 pragma Import(C,QGeoPositionInfoSource_lastKnownPosition, "QGeoPositionInfoSource_lastKnownPosition");
 
 function  QGeoPositionInfoSource_supportedPositioningMethods(handle:not null QGeoPositionInfoSourceH) return PositioningMethods;
 pragma Import(C,QGeoPositionInfoSource_supportedPositioningMethods, "QGeoPositionInfoSource_supportedPositioningMethods");
 
 function  QGeoPositionInfoSource_minimumUpdateInterval(handle:not null QGeoPositionInfoSourceH) return integer;
 pragma Import(C,QGeoPositionInfoSource_minimumUpdateInterval, "QGeoPositionInfoSource_minimumUpdateInterval");
 
 function  QGeoPositionInfoSource_sourceName(handle:not null QGeoPositionInfoSourceH) return QStringH;
 pragma Import(C,QGeoPositionInfoSource_sourceName, "QGeoPositionInfoSource_sourceName");
 
 function  QGeoPositionInfoSource_error(handle:not null QGeoPositionInfoSourceH) return Error;
 pragma Import(C,QGeoPositionInfoSource_error, "QGeoPositionInfoSource_error");
 
 procedure QGeoPositionInfoSource_startUpdates(handle:not null QGeoPositionInfoSourceH);
 pragma Import(C,QGeoPositionInfoSource_startUpdates, "QGeoPositionInfoSource_startUpdates");
 
 procedure QGeoPositionInfoSource_stopUpdates(handle:not null QGeoPositionInfoSourceH);
 pragma Import(C,QGeoPositionInfoSource_stopUpdates, "QGeoPositionInfoSource_stopUpdates");
 
 procedure QGeoPositionInfoSource_requestUpdate(handle:not null QGeoPositionInfoSourceH;timeout: integer := 0);
 pragma Import(C,QGeoPositionInfoSource_requestUpdate, "QGeoPositionInfoSource_requestUpdate");
 
 function  QGeoPositionInfoSource_createDefaultSource(parent:QObjectH) return QGeoPositionInfoSourceH;
 pragma Import(C,QGeoPositionInfoSource_createDefaultSource, "QGeoPositionInfoSource_createDefaultSource");
 
 function  QGeoPositionInfoSource_createSource( sourceName:QStringH; parent:QObjectH) return QGeoPositionInfoSourceH;
 pragma Import(C,QGeoPositionInfoSource_createSource, "QGeoPositionInfoSource_createSource");
 
 function  QGeoPositionInfoSource_availableSources return QStringListH;
 pragma Import(C,QGeoPositionInfoSource_availableSources, "QGeoPositionInfoSource_availableSources");
 
 type  positionInfoCallbackH  is access procedure(update:QGeoPositionInfoH);
 pragma convention(C,positionInfoCallbackH);

 procedure QGeoPositionInfoSource_signal_slot_positionUpdated(handle:not null QGeoPositionInfoSourceH; hook: positionInfoCallbackH);
 pragma Import(C,QGeoPositionInfoSource_signal_slot_positionUpdated, "QGeoPositionInfoSource_signal_slot_positionUpdated");
 
 procedure QGeoPositionInfoSource_signal_slot_updateTimeout(handle:not null QGeoPositionInfoSourceH;hook: voidCallbackH);
 pragma Import(C,QGeoPositionInfoSource_signal_slot_updateTimeout, "QGeoPositionInfoSource_signal_slot_updateTimeout");
 
 procedure QGeoPositionInfoSource_signal_slot_error(handle:not null QGeoPositionInfoSourceH; hook: intCallbackH);
 pragma Import(C,QGeoPositionInfoSource_signal_slot_error, "QGeoPositionInfoSource_signal_slot_error");

end;
