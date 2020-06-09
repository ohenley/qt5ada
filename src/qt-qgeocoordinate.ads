--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QGeoCoordinate is

  type CoordinateType is (InvalidCoordinate,Coordinate2D,Coordinate3D);
  pragma Convention(C,CoordinateType);

  type CoordinateFormat is (Degrees,DegreesWithHemisphere,DegreesMinutes,DegreesMinutesWithHemisphere,DegreesMinutesSeconds,DegreesMinutesSecondsWithHemisphere);
  pragma Convention(C,CoordinateFormat); 

 function  QGeoCoordinate_create return QGeoCoordinateH;
 pragma Import(C,QGeoCoordinate_create, "QGeoCoordinate_create");
 
 function  QGeoCoordinate_create2(latitude,longitude:double) return QGeoCoordinateH;
 pragma Import(C,QGeoCoordinate_create2, "QGeoCoordinate_create2");
 
 function  QGeoCoordinate_create3(latitude,longitude,altitude:double) return QGeoCoordinateH;
 pragma Import(C,QGeoCoordinate_create3, "QGeoCoordinate_create3");
 
 function  QGeoCoordinate_create4(other:QGeoCoordinateH) return QGeoCoordinateH;
 pragma Import(C,QGeoCoordinate_create4, "QGeoCoordinate_create4");
 
 procedure QGeoCoordinate_destroy(handle:not null QGeoCoordinateH);
 pragma Import(C,QGeoCoordinate_destroy, "QGeoCoordinate_destroy");
 
 function  QGeoCoordinate_isValid(handle:not null QGeoCoordinateH) return boolean;
 pragma Import(C,QGeoCoordinate_isValid, "QGeoCoordinate_isValid");
 
 function  QGeoCoordinate_type(handle:not null QGeoCoordinateH) return CoordinateType;
 pragma Import(C,QGeoCoordinate_type, "QGeoCoordinate_type");
 
 procedure QGeoCoordinate_setLatitude(handle:not null QGeoCoordinateH; latitude:double);
 pragma Import(C,QGeoCoordinate_setLatitude, "QGeoCoordinate_setLatitude");
 
 function  QGeoCoordinate_latitude(handle:not null QGeoCoordinateH) return double;
 pragma Import(C,QGeoCoordinate_latitude, "QGeoCoordinate_latitude");
 
 procedure QGeoCoordinate_setLongitude(handle:not null QGeoCoordinateH;longitude:double);
 pragma Import(C,QGeoCoordinate_setLongitude, "QGeoCoordinate_setLongitude");
 
 function  QGeoCoordinate_longitude(handle:not null QGeoCoordinateH) return double;
 pragma Import(C,QGeoCoordinate_longitude, "QGeoCoordinate_longitude");
 
 procedure QGeoCoordinate_setAltitude(handle:not null QGeoCoordinateH;altitude:double);
 pragma Import(C,QGeoCoordinate_setAltitude, "QGeoCoordinate_setAltitude");
 
 function  QGeoCoordinate_altitude(handle:not null QGeoCoordinateH) return double;
 pragma Import(C,QGeoCoordinate_altitude, "QGeoCoordinate_altitude");
 
 function  QGeoCoordinate_distanceTo(handle:not null QGeoCoordinateH;other:QGeoCoordinateH) return qreal;
 pragma Import(C,QGeoCoordinate_distanceTo, "QGeoCoordinate_distanceTo");
 
 function  QGeoCoordinate_azimuthTo(handle:not null QGeoCoordinateH;other:QGeoCoordinateH) return qreal;
 pragma Import(C,QGeoCoordinate_azimuthTo, "QGeoCoordinate_azimuthTo");
 
 function  QGeoCoordinate_atDistanceAndAzimuth(handle:not null QGeoCoordinateH;distance,azimuth,distanceUp:qreal := 0.0) return QGeoCoordinateH;
 pragma Import(C,QGeoCoordinate_atDistanceAndAzimuth, "QGeoCoordinate_atDistanceAndAzimuth");
 
 function  QGeoCoordinate_toString(handle:not null QGeoCoordinateH;format:CoordinateFormat := DegreesMinutesSecondsWithHemisphere) return QStringH;
 pragma Import(C,QGeoCoordinate_toString, "QGeoCoordinate_toString");

---------------------------------------------------------------------
 function  QGeoCoordinate_create(latitude,longitude:double) return QGeoCoordinateH;
 function  QGeoCoordinate_create(latitude,longitude,altitude:double) return QGeoCoordinateH;
 function  QGeoCoordinate_create(other:QGeoCoordinateH) return QGeoCoordinateH;

end;
