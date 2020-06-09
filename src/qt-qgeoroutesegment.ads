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

package Qt.QGeoRouteSegment  is

 function  QGeoRouteSegment_create return QGeoRouteSegmentH;
 pragma Import(C,QGeoRouteSegment_create, "QGeoRouteSegment_create");
 
 function  QGeoRouteSegment_create2(otherSegment:QGeoRouteSegmentH) return QGeoRouteSegmentH;
 pragma Import(C,QGeoRouteSegment_create2, "QGeoRouteSegment_create2");
 
 procedure QGeoRouteSegment_delete(handle: not null QGeoRouteSegmentH);
 pragma Import(C,QGeoRouteSegment_delete, "QGeoRouteSegment_delete");
 
 function  QGeoRouteSegment_isValid(handle: not null QGeoRouteSegmentH) return boolean;
 pragma Import(C,QGeoRouteSegment_isValid, "QGeoRouteSegment_isValid");
 
 procedure QGeoRouteSegment_setNextRouteSegment(handle: not null QGeoRouteSegmentH;routeSegment:QGeoRouteSegmentH);
 pragma Import(C,QGeoRouteSegment_setNextRouteSegment, "QGeoRouteSegment_setNextRouteSegment");
 
 function  QGeoRouteSegment_nextRouteSegment(handle: not null QGeoRouteSegmentH) return QGeoRouteSegmentH;
 pragma Import(C,QGeoRouteSegment_nextRouteSegment, "QGeoRouteSegment_nextRouteSegment");
 
 procedure QGeoRouteSegment_setTravelTime(handle: not null QGeoRouteSegmentH;secs:integer);
 pragma Import(C,QGeoRouteSegment_setTravelTime, "QGeoRouteSegment_setTravelTime");
 
 function  QGeoRouteSegment_travelTime(handle: not null QGeoRouteSegmentH) return integer;
 pragma Import(C,QGeoRouteSegment_travelTime, "QGeoRouteSegment_travelTime");
 
 procedure QGeoRouteSegment_setDistance(handle: not null QGeoRouteSegmentH; distance:qreal);
 pragma Import(C,QGeoRouteSegment_setDistance, "QGeoRouteSegment_setDistance");
 
 function  QGeoRouteSegment_distance(handle: not null QGeoRouteSegmentH) return qreal;
 pragma Import(C,QGeoRouteSegment_distance, "QGeoRouteSegment_distance");
 
 procedure QGeoRouteSegment_setPath(handle: not null QGeoRouteSegmentH;path:QObjectListH);
 pragma Import(C,QGeoRouteSegment_setPath, "QGeoRouteSegment_setPath");
 
 function  QGeoRouteSegment_path(handle: not null QGeoRouteSegmentH) return QObjectListH;
 pragma Import(C,QGeoRouteSegment_path, "QGeoRouteSegment_path");
 
 procedure QGeoRouteSegment_setManeuver(handle: not null QGeoRouteSegmentH;maneuver:QGeoManeuverH);
 pragma Import(C,QGeoRouteSegment_setManeuver, "QGeoRouteSegment_setManeuver");
 
 function  QGeoRouteSegment_maneuver(handle: not null QGeoRouteSegmentH) return QGeoManeuverH;
 pragma Import(C,QGeoRouteSegment_maneuver, "QGeoRouteSegment_maneuver");
 
 function  QGeoRouteSegment_isEqual(handle,oterSegment:QGeoRouteSegmentH) return boolean;
 pragma Import(C,QGeoRouteSegment_isEqual, "QGeoRouteSegment_isEqual");
----------------------------------------------------------
 function  QGeoRouteSegment_create(otherSegment:QGeoRouteSegmentH) return QGeoRouteSegmentH;

end;
