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

package Qt.QGeoLocation is

 function  QGeoLocation_create return QGeoLocationH;
 pragma Import(C,QGeoLocation_create, "QGeoLocation_create");
 
 function  QGeoLocation_create2(other:QGeoLocationH) return QGeoLocationH;
 pragma Import(C,QGeoLocation_create2, "QGeoLocation_create2");
 
 procedure QGeoLocation_destroy(handle:not null QGeoLocationH);
 pragma Import(C,QGeoLocation_destroy, "QGeoLocation_destroy");
 
 function  QGeoLocation_address(handle:not null QGeoLocationH) return QGeoAddressH;
 pragma Import(C,QGeoLocation_address, "QGeoLocation_address");
 
 procedure QGeoLocation_setAddress(handle:not null QGeoLocationH; address:QGeoAddressH);
 pragma Import(C,QGeoLocation_setAddress, "QGeoLocation_setAddress");
 
 function  QGeoLocation_coordinate(handle:not null QGeoLocationH) return QGeoCoordinateH;
 pragma Import(C,QGeoLocation_coordinate, "QGeoLocation_coordinate");
 
 procedure QGeoLocation_setCoordinate(handle:not null QGeoLocationH; position:QGeoCoordinateH);
 pragma Import(C,QGeoLocation_setCoordinate, "QGeoLocation_setCoordinate");
 
 function  QGeoLocation_boundingBox(handle:not null QGeoLocationH) return QGeoRectangleH;
 pragma Import(C,QGeoLocation_boundingBox, "QGeoLocation_boundingBox");
 
 procedure QGeoLocation_setBoundingBox(handle:not null QGeoLocationH;box:QGeoRectangleH);
 pragma Import(C,QGeoLocation_setBoundingBox, "QGeoLocation_setBoundingBox");
 
 function  QGeoLocation_isEmpty(handle:not null QGeoLocationH) return boolean;
 pragma Import(C,QGeoLocation_isEmpty, "QGeoLocation_isEmpty");

 function  QGeoLocation_create(other:QGeoLocationH) return QGeoLocationH;
end; 
