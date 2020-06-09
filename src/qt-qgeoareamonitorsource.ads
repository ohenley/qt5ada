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

with builtin; use builtin;
package Qt.QGeoAreaMonitorSource is

 type QGeoAreaMonitorInfoListH is new QObjectListH;
    
 subtype Error is integer range 0 .. 3; 
  AccessError              : constant Error := 0;
  InsufficientPositionInfo : constant Error := 1;
  UnknownSourceError       : constant Error := 2;
  NoError                  : constant Error := 3;

 subtype AreaMonitorFeature is cardinal;
 PersistentAreaMonitorFeature : constant AreaMonitorFeature := 16#00000001#;
 AnyAreaMonitorFeature        : constant AreaMonitorFeature := 16#ffffffff#; 

 procedure QGeoAreaMonitorSource_destroy(handle:not null QGeoAreaMonitorSourceH);
 pragma Import(C,QGeoAreaMonitorSource_destroy, "QGeoAreaMonitorSource_destroy");
 
 function  QGeoAreaMonitorSource_error(handle:not null QGeoAreaMonitorSourceH) return Error;
 pragma Import(C,QGeoAreaMonitorSource_error, "QGeoAreaMonitorSource_error");
 
 function  QGeoAreaMonitorSource_supportedAreaMonitorFeatures(handle:not null QGeoAreaMonitorSourceH) return AreaMonitorFeature;
 pragma Import(C,QGeoAreaMonitorSource_supportedAreaMonitorFeatures, "QGeoAreaMonitorSource_supportedAreaMonitorFeatures");

 function  QGeoAreaMonitorSource_sourceName(handle:not null QGeoAreaMonitorSourceH) return QStringH;
 pragma Import(C,QGeoAreaMonitorSource_sourceName, "QGeoAreaMonitorSource_sourceName");
 
 function  QGeoAreaMonitorSource_createDefaultSource(parent:QObjectH) return QGeoAreaMonitorSourceH;
 pragma Import(C,QGeoAreaMonitorSource_createDefaultSource, "QGeoAreaMonitorSource_createDefaultSource");
 
 function  QGeoAreaMonitorSource_createSource(sourceName:QStringH; parent:QObjectH) return QGeoAreaMonitorSourceH;
 pragma Import(C,QGeoAreaMonitorSource_createSource, "QGeoAreaMonitorSource_createSource");
 
 function  QGeoAreaMonitorSource_availableSources return QStringListH;
 pragma Import(C,QGeoAreaMonitorSource_availableSources, "QGeoAreaMonitorSource_availableSources");
 
 procedure QGeoAreaMonitorSource_setPositionInfoSource(handle:not null QGeoAreaMonitorSourceH;source:QGeoPositionInfoSourceH);
 pragma Import(C,QGeoAreaMonitorSource_setPositionInfoSource, "QGeoAreaMonitorSource_setPositionInfoSource");
 
 function  QGeoAreaMonitorSource_positionInfoSource(handle:not null QGeoAreaMonitorSourceH) return QGeoPositionInfoSourceH;
 pragma Import(C,QGeoAreaMonitorSource_positionInfoSource, "QGeoAreaMonitorSource_positionInfoSource");
 
 function  QGeoAreaMonitorSource_startMonitoring(handle:not null QGeoAreaMonitorSourceH;monitor:QGeoAreaMonitorInfoH) return boolean;
 pragma Import(C,QGeoAreaMonitorSource_startMonitoring, "QGeoAreaMonitorSource_startMonitoring");
 
 function  QGeoAreaMonitorSource_stopMonitoring(handle:not null QGeoAreaMonitorSourceH;monitor:QGeoAreaMonitorInfoH) return boolean;
 pragma Import(C,QGeoAreaMonitorSource_stopMonitoring, "QGeoAreaMonitorSource_stopMonitoring");
 
 function  QGeoAreaMonitorSource_requestUpdate(handle:not null QGeoAreaMonitorSourceH;monitor:QGeoAreaMonitorInfoH;signal:zstring) return boolean;
 pragma Import(C,QGeoAreaMonitorSource_requestUpdate, "QGeoAreaMonitorSource_requestUpdate");
 
 function  QGeoAreaMonitorSource_activeMonitors(handle:not null QGeoAreaMonitorSourceH) return QGeoAreaMonitorInfoListH;
 pragma Import(C,QGeoAreaMonitorSource_activeMonitors, "QGeoAreaMonitorSource_activeMonitors");
 
 function  QGeoAreaMonitorSource_activeMonitors2(handle:not null QGeoAreaMonitorSourceH;lookupArea:QGeoShapeH) return QGeoAreaMonitorInfoListH;
 pragma Import(C,QGeoAreaMonitorSource_activeMonitors2, "QGeoAreaMonitorSource_activeMonitors2");
 
 function  QGeoAreaMonitorSource_geoAreaMonitorInfoAt(list:QGeoAreaMonitorInfoListH;index: integer := 0) return QGeoAreaMonitorInfoH;
 pragma Import(C,QGeoAreaMonitorSource_geoAreaMonitorInfoAt, "QGeoAreaMonitorSource_geoAreaMonitorInfoAt");
 
 type GeoMonitorPositionCallbackH is access procedure(monitor:QGeoAreaMonitorInfoH;position:QGeoPositionInfoH);
 pragma convention(C,GeoMonitorPositionCallbackH);

 type GeoMonitorCallbackH is access procedure(monitor:QGeoAreaMonitorInfoH);
 pragma convention(C,GeoMonitorCallbackH);

 procedure QGeoAreaMonitorSource_signal_slot_areaEntered(handle:not null QGeoAreaMonitorSourceH;hook:GeoMonitorPositionCallbackH);
 pragma Import(C,QGeoAreaMonitorSource_signal_slot_areaEntered, "QGeoAreaMonitorSource_signal_slot_areaEntered");
 
 procedure QGeoAreaMonitorSource_signal_slot_areaExited(handle:not null QGeoAreaMonitorSourceH; hook:GeoMonitorPositionCallbackH); 
 pragma Import(C,QGeoAreaMonitorSource_signal_slot_areaExited, "QGeoAreaMonitorSource_signal_slot_areaExited");
 
 procedure QGeoAreaMonitorSource_signal_slot_monitorExpired(handle:not null QGeoAreaMonitorSourceH;hook:GeoMonitorCallbackH); 
 pragma Import(C,QGeoAreaMonitorSource_signal_slot_monitorExpired, "QGeoAreaMonitorSource_signal_slot_monitorExpired");
 
 procedure QGeoAreaMonitorSource_signal_slot_error(handle:not null QGeoAreaMonitorSourceH; hook: intCallbackH);
 pragma Import(C,QGeoAreaMonitorSource_signal_slot_error, "QGeoAreaMonitorSource_signal_slot_error");

end;
