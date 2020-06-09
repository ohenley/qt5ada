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

with Qt.QLocale; use Qt.QLocale;
with Qt.QGeoCodeReply; use Qt.QGeoCodeReply;
package Qt.QGeoRoutingManager  is

 procedure QGeoRoutingManager_delete(handle:not null QGeoRoutingManagerH);
 pragma Import(C,QGeoRoutingManager_delete, "QGeoRoutingManager_delete");
 
 function  QGeoRoutingManager_managerVersion(handle:not null QGeoRoutingManagerH) return integer;
 pragma Import(C,QGeoRoutingManager_managerVersion, "QGeoRoutingManager_managerVersion");
 
 function  QGeoRoutingManager_managerName(handle:not null QGeoRoutingManagerH) return QStringH;
 pragma Import(C,QGeoRoutingManager_managerName, "QGeoRoutingManager_managerName");
 
 function  QGeoRoutingManager_calculateRoute(handle:not null QGeoRoutingManagerH;request:QGeoRouteRequestH) return QGeoRouteReplyH;
 pragma Import(C,QGeoRoutingManager_calculateRoute, "QGeoRoutingManager_calculateRoute");
 
 function  QGeoRoutingManager_updateRoute(handle:not null QGeoRoutingManagerH;route:QGeoRouteH;position:QGeoCoordinateH) return QGeoRouteReplyH;
 pragma Import(C,QGeoRoutingManager_updateRoute, "QGeoRoutingManager_updateRoute");
 
 function  QGeoRoutingManager_supportedTravelModes(handle:not null QGeoRoutingManagerH) return integer;
 pragma Import(C,QGeoRoutingManager_supportedTravelModes, "QGeoRoutingManager_supportedTravelModes");
 
 function  QGeoRoutingManager_supportedFeatureTypes(handle:not null QGeoRoutingManagerH) return integer;
 pragma Import(C,QGeoRoutingManager_supportedFeatureTypes, "QGeoRoutingManager_supportedFeatureTypes");
 
 function  QGeoRoutingManager_supportedFeatureWeights(handle:not null QGeoRoutingManagerH) return integer;
 pragma Import(C,QGeoRoutingManager_supportedFeatureWeights, "QGeoRoutingManager_supportedFeatureWeights");
 
 function  QGeoRoutingManager_supportedRouteOptimizations(handle:not null QGeoRoutingManagerH) return integer;
 pragma Import(C,QGeoRoutingManager_supportedRouteOptimizations, "QGeoRoutingManager_supportedRouteOptimizations");
 
 function  QGeoRoutingManager_supportedSegmentDetails(handle:not null QGeoRoutingManagerH) return integer;
 pragma Import(C,QGeoRoutingManager_supportedSegmentDetails, "QGeoRoutingManager_supportedSegmentDetails");
 
 function  QGeoRoutingManager_supportedManeuverDetails(handle:not null QGeoRoutingManagerH) return integer;
 pragma Import(C,QGeoRoutingManager_supportedManeuverDetails, "QGeoRoutingManager_supportedManeuverDetails");
 
 procedure QGeoRoutingManager_setLocale(handle:not null QGeoRoutingManagerH;locale:QLocaleH);
 pragma Import(C,QGeoRoutingManager_setLocale, "QGeoRoutingManager_setLocale");
 
 function  QGeoRoutingManager_locale(handle:not null QGeoRoutingManagerH) return QLocaleH;
 pragma Import(C,QGeoRoutingManager_locale, "QGeoRoutingManager_locale");
 
 procedure QGeoRoutingManager_setMeasurementSystem(handle:not null QGeoRoutingManagerH;system: QLocaleMeasurementSystem);
 pragma Import(C,QGeoRoutingManager_setMeasurementSystem, "QGeoRoutingManager_setMeasurementSystem");
 
 function  QGeoRoutingManager_measurementSystem(handle:not null QGeoRoutingManagerH) return QLocaleMeasurementSystem;
 pragma Import(C,QGeoRoutingManager_measurementSystem, "QGeoRoutingManager_measurementSystem");
 
 type ObjectCallbackH is access procedure(reply:QGeoCodeReplyH);
 pragma convention(C,ObjectCallbackH);
 type ObjectIntStringCallbackH is access procedure(reply:QGeoCodeReplyH;error: QGeoCodeReplyError;errorString: QStringH);
 pragma convention(C,ObjectIntStringCallbackH);

 procedure QGeoRoutingManager_signal_slot_finished(handle:not null QGeoRoutingManagerH; hook: ObjectCallbackH);
 pragma Import(C,QGeoRoutingManager_signal_slot_finished, "QGeoRoutingManager_signal_slot_finished");
 
 procedure QGeoRoutingManager_signal_slot_error(handle:not null QGeoRoutingManagerH; hook:ObjectIntStringCallbackH);
 pragma Import(C,QGeoRoutingManager_signal_slot_error, "QGeoRoutingManager_signal_slot_error");
 
end;
