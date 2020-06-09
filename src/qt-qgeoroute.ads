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

with Qt.QGeoRouteRequest;
package Qt.QGeoRoute  is

 function  QGeoRoute_create return QGeoRouteH;
 pragma Import(C,QGeoRoute_create, "QGeoRoute_create");
 
 function  QGeoRoute_create2(otherGeoRoute:QGeoRouteH) return QGeoRouteH;
 pragma Import(C,QGeoRoute_create2, "QGeoRoute_create2");
 
 procedure QGeoRoute_delete(handle:not null QGeoRouteH);
 pragma Import(C,QGeoRoute_delete, "QGeoRoute_delete");
 
 procedure QGeoRoute_setRouteId(handle:not null QGeoRouteH;id:QStringH);
 pragma Import(C,QGeoRoute_setRouteId, "QGeoRoute_setRouteId");
 
 function  QGeoRoute_routeId(handle:not null QGeoRouteH) return QStringH;
 pragma Import(C,QGeoRoute_routeId, "QGeoRoute_routeId");
 
 procedure QGeoRoute_setRequest(handle:not null QGeoRouteH; request:QGeoRouteRequestH );
 pragma Import(C,QGeoRoute_setRequest, "QGeoRoute_setRequest");
 
 function  QGeoRoute_request(handle:not null QGeoRouteH) return QGeoRouteRequestH;
 pragma Import(C,QGeoRoute_request, "QGeoRoute_request");
 
 procedure QGeoRoute_setBounds(handle:not null QGeoRouteH;bounds :QGeoRectangleH);
 pragma Import(C,QGeoRoute_setBounds, "QGeoRoute_setBounds");
 
 function  QGeoRoute_bounds(handle:not null QGeoRouteH) return QGeoRectangleH;
 pragma Import(C,QGeoRoute_bounds, "QGeoRoute_bounds");
 
 procedure QGeoRoute_setFirstRouteSegment(handle:not null QGeoRouteH;routeSegment :QGeoRouteSegmentH);
 pragma Import(C,QGeoRoute_setFirstRouteSegment, "QGeoRoute_setFirstRouteSegment");
 
 function  QGeoRoute_firstRouteSegment(handle:not null QGeoRouteH) return QGeoRouteSegmentH;
 pragma Import(C,QGeoRoute_firstRouteSegment, "QGeoRoute_firstRouteSegment");
 
 procedure QGeoRoute_setTravelTime(handle:not null QGeoRouteH; secs:integer);
 pragma Import(C,QGeoRoute_setTravelTime, "QGeoRoute_setTravelTime");
 
 function  QGeoRoute_travelTime(handle:not null QGeoRouteH) return integer;
 pragma Import(C,QGeoRoute_travelTime, "QGeoRoute_travelTime");
 
 procedure QGeoRoute_setDistance(handle:not null QGeoRouteH; distance:qreal);
 pragma Import(C,QGeoRoute_setDistance, "QGeoRoute_setDistance");
 
 function  QGeoRoute_distance(handle:not null QGeoRouteH) return qreal;
 pragma Import(C,QGeoRoute_distance, "QGeoRoute_distance");
 
 procedure QGeoRoute_setTravelMode(handle:not null QGeoRouteH;mode:Qt.QGeoRouteRequest.TravelMode);
 pragma Import(C,QGeoRoute_setTravelMode, "QGeoRoute_setTravelMode");
 
 function  QGeoRoute_travelMode(handle:not null QGeoRouteH) return Qt.QGeoRouteRequest.TravelMode;
 pragma Import(C,QGeoRoute_travelMode, "QGeoRoute_travelMode");
 
 procedure QGeoRoute_setPath(handle:not null QGeoRouteH; path:QObjectListH);
 pragma Import(C,QGeoRoute_setPath, "QGeoRoute_setPath");
 
 function  QGeoRoute_path(handle:not null QGeoRouteH) return QObjectListH;
 pragma Import(C,QGeoRoute_path, "QGeoRoute_path");
 
 function  QGeoRoute_isEqual(handle,otherRoute:QGeoRouteH) return boolean;
 pragma Import(C,QGeoRoute_isEqual, "QGeoRoute_isEqual");
 
 function  QGeoRoute_create(otherGeoRoute:QGeoRouteH) return QGeoRouteH;

end;
