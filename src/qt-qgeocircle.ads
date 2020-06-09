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

with Interfaces.C; use Interfaces.C;
package Qt.QGeoCircle is

 function  QGeoCircle_create return QGeoCircleH;
 pragma Import(C,QGeoCircle_create, "QGeoCircle_create");
 
 function  QGeoCircle_create2(center:QGeoCoordinateH;radius:qreal := -1.0) return QGeoCircleH;
 pragma Import(C,QGeoCircle_create2, "QGeoCircle_create2");
 
 function  QGeoCircle_create3(other:QGeoCircleH) return QGeoCircleH;
 pragma Import(C,QGeoCircle_create3, "QGeoCircle_create3");
 
 function  QGeoCircle_create4(other:QGeoShapeH) return QGeoCircleH;
 pragma Import(C,QGeoCircle_create4, "QGeoCircle_create4");
 
 procedure QGeoCircle_destroy(handle:not null QGeoCircleH);
 pragma Import(C,QGeoCircle_destroy, "QGeoCircle_destroy");
 
 procedure QGeoCircle_setCenter(handle:not null QGeoCircleH;center:QGeoCoordinateH);
 pragma Import(C,QGeoCircle_setCenter, "QGeoCircle_setCenter");
 
 function  QGeoCircle_center(handle:not null QGeoCircleH) return QGeoCoordinateH;
 pragma Import(C,QGeoCircle_center, "QGeoCircle_center");
 
 procedure QGeoCircle_setRadius(handle:not null QGeoCircleH;radius:qreal);
 pragma Import(C,QGeoCircle_setRadius, "QGeoCircle_setRadius");
 
 function  QGeoCircle_radius(handle:not null QGeoCircleH) return qreal;
 pragma Import(C,QGeoCircle_radius, "QGeoCircle_radius");
 
 procedure QGeoCircle_translate(handle:not null QGeoCircleH;degreesLatitude,degreesLongitude: double);
 pragma Import(C,QGeoCircle_translate, "QGeoCircle_translate");
 
 function  QGeoCircle_translated(handle:not null QGeoCircleH;degreesLatitude,degreesLongitude:double) return QGeoCircleH;
 pragma Import(C,QGeoCircle_translated, "QGeoCircle_translated");
 
-----------------------------------------------------------------------
 function  QGeoCircle_create(center:QGeoCoordinateH;radius:qreal := -1.0) return QGeoCircleH;
 function  QGeoCircle_create(other:QGeoCircleH) return QGeoCircleH;
 function  QGeoCircle_create(other:QGeoShapeH) return QGeoCircleH;

end;
