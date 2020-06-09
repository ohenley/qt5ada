--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2018                      บ
-- บ Copyright (C) 2012,2015,2018                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QGeoRouteRequest  is

 subtype TravelMode is integer;
 CarTravel           : constant TravelMode := 1;
 PedestrianTravel    : constant TravelMode := 2;
 BicycleTravel       : constant TravelMode := 4;
 PublicTransitTravel : constant TravelMode := 8;
 TruckTravel         : constant TravelMode := 16;

 subtype FeatureType is integer;
 NoFeature            : constant FeatureType := 0;
 TollFeature          : constant FeatureType := 1;
 HighwayFeature       : constant FeatureType := 2;
 PublicTransitFeature : constant FeatureType := 4;
 FerryFeature         : constant FeatureType := 8;
 TunnelFeature        : constant FeatureType := 16#10#;
 DirtRoadFeature      : constant FeatureType := 16#20#;
 ParksFeature         : constant FeatureType := 16#40#;
 MotorPoolLaneFeature : constant FeatureType := 16#80#;

 subtype FeatureWeight is integer;
 NeutralFeatureWeight  : constant FeatureWeight := 0;
 PreferFeatureWeight   : constant FeatureWeight := 1;
 RequireFeatureWeight  : constant FeatureWeight := 2;
 AvoidFeatureWeight    : constant FeatureWeight := 4;
 DisallowFeatureWeight : constant FeatureWeight := 8;

 subtype RouteOptimization is integer;
 ShortestRoute     : constant RouteOptimization := 1;
 FastestRoute      : constant RouteOptimization := 2;
 MostEconomicRoute : constant RouteOptimization := 4;
 MostScenicRoute   : constant RouteOptimization := 8;

 type SegmentDetail is (NoSegmentData,BasicSegmentData);
 pragma convention(C,SegmentDetail);

 type ManeuverDetail is (NoManeuvers,BasicManeuvers);
 pragma convention(C,ManeuverDetail);
 
 function  QGeoRouteRequest_create(origin:QGeoCoordinateH;destination:QGeoCoordinateH) return QGeoRouteRequestH;
 pragma Import(C,QGeoRouteRequest_create, "QGeoRouteRequest_create");
 
 function  QGeoRouteRequest_create2(otherRequest:QGeoRouteRequestH) return QGeoRouteRequestH;
 pragma Import(C,QGeoRouteRequest_create2, "QGeoRouteRequest_create2");
 
 procedure QGeoRouteRequest_delete(handle:not null QGeoRouteRequestH);
 pragma Import(C,QGeoRouteRequest_delete, "QGeoRouteRequest_delete");
 
 procedure QGeoRouteRequest_setWaypoints(handle:not null QGeoRouteRequestH;waypoints:QObjectListH);
 pragma Import(C,QGeoRouteRequest_setWaypoints, "QGeoRouteRequest_setWaypoints");
 
 function  QGeoRouteRequest_waypoints(handle:not null QGeoRouteRequestH) return QObjectListH;
 pragma Import(C,QGeoRouteRequest_waypoints, "QGeoRouteRequest_waypoints");
 
 procedure QGeoRouteRequest_setExcludeAreas(handle:not null QGeoRouteRequestH;areas: QObjectListH);
 pragma Import(C,QGeoRouteRequest_setExcludeAreas, "QGeoRouteRequest_setExcludeAreas");
 
 function  QGeoRouteRequest_excludeAreas(handle:not null QGeoRouteRequestH) return QObjectListH;
 pragma Import(C,QGeoRouteRequest_excludeAreas, "QGeoRouteRequest_excludeAreas");
 
 procedure QGeoRouteRequest_setNumberAlternativeRoutes(handle:not null QGeoRouteRequestH;alternatives:integer);
 pragma Import(C,QGeoRouteRequest_setNumberAlternativeRoutes, "QGeoRouteRequest_setNumberAlternativeRoutes");
 
 function  QGeoRouteRequest_numberAlternativeRoutes(handle:not null QGeoRouteRequestH) return integer;
 pragma Import(C,QGeoRouteRequest_numberAlternativeRoutes, "QGeoRouteRequest_numberAlternativeRoutes");
 
 procedure QGeoRouteRequest_setTravelModes(handle:not null QGeoRouteRequestH;travelModes:integer);
 pragma Import(C,QGeoRouteRequest_setTravelModes, "QGeoRouteRequest_setTravelModes");
 
 function  QGeoRouteRequest_travelModes(handle:not null QGeoRouteRequestH) return integer;
 pragma Import(C,QGeoRouteRequest_travelModes, "QGeoRouteRequest_travelModes");
 
 procedure QGeoRouteRequest_setFeatureWeight(handle:not null QGeoRouteRequestH;feature_Type:FeatureType ;feature_Weight :FeatureWeight );
 pragma Import(C,QGeoRouteRequest_setFeatureWeight, "QGeoRouteRequest_setFeatureWeight");
 
 function  QGeoRouteRequest_featureWeight(handle:not null QGeoRouteRequestH;feature_Type:FeatureType) return FeatureWeight;
 pragma Import(C,QGeoRouteRequest_featureWeight, "QGeoRouteRequest_featureWeight");
 
 function  QGeoRouteRequest_featureTypes(handle:not null QGeoRouteRequestH) return QIntListH;
 pragma Import(C,QGeoRouteRequest_featureTypes, "QGeoRouteRequest_featureTypes");
 
 procedure QGeoRouteRequest_setRouteOptimization(handle:not null QGeoRouteRequestH;optimization:integer);
 pragma Import(C,QGeoRouteRequest_setRouteOptimization, "QGeoRouteRequest_setRouteOptimization");
 
 function  QGeoRouteRequest_routeOptimization(handle:not null QGeoRouteRequestH) return integer;
 pragma Import(C,QGeoRouteRequest_routeOptimization, "QGeoRouteRequest_routeOptimization");
 
 procedure QGeoRouteRequest_setSegmentDetail(handle:not null QGeoRouteRequestH; segment_Detail:SegmentDetail);
 pragma Import(C,QGeoRouteRequest_setSegmentDetail, "QGeoRouteRequest_setSegmentDetail");
 
 function  QGeoRouteRequest_segmentDetail(handle:not null QGeoRouteRequestH) return SegmentDetail;
 pragma Import(C,QGeoRouteRequest_segmentDetail, "QGeoRouteRequest_segmentDetail");
 
 procedure QGeoRouteRequest_setManeuverDetail(handle:not null QGeoRouteRequestH; maneuver_Detail:ManeuverDetail);
 pragma Import(C,QGeoRouteRequest_setManeuverDetail, "QGeoRouteRequest_setManeuverDetail");
 
 function  QGeoRouteRequest_maneuverDetail(handle:not null QGeoRouteRequestH) return ManeuverDetail;
 pragma Import(C,QGeoRouteRequest_maneuverDetail, "QGeoRouteRequest_maneuverDetail");
 
 function  QGeoRouteRequest_isEqual(handle,otherRequest:QGeoRouteRequestH) return boolean;
 pragma Import(C,QGeoRouteRequest_isEqual, "QGeoRouteRequest_isEqual");

 procedure QGeoRouteRequest_setExtraParameters(handle:not null QGeoRouteRequestH;extraParameters:QVariantMapH);
 pragma Import(C,QGeoRouteRequest_setExtraParameters, "QGeoRouteRequest_setExtraParameters");
 
 function  QGeoRouteRequest_extraParameters(handle:not null QGeoRouteRequestH) return QVariantMapH;
 pragma Import(C,QGeoRouteRequest_extraParameters, "QGeoRouteRequest_extraParameters");
 
--------------------------------------------------------------------
 function  QGeoRouteRequest_create(otherRequest:QGeoRouteRequestH) return QGeoRouteRequestH;

end;
