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

package Qt.QGeoPositionInfo is

  type  Attribute is (Direction,GroundSpeed,VerticalSpeed,MagneticVariation,HorizontalAccuracy,VerticalAccuracy);
  pragma convention(C,Attribute);

 function  QGeoPositionInfo_create return QGeoPositionInfoH;
 pragma Import(C,QGeoPositionInfo_create, "QGeoPositionInfo_create");
 
 function  QGeoPositionInfo_create2(other:QGeoPositionInfoH) return QGeoPositionInfoH;
 pragma Import(C,QGeoPositionInfo_create2, "QGeoPositionInfo_create2");
 
 function  QGeoPositionInfo_create3( coordinate:QGeoCoordinateH; updateTime:QDateTimeH) return QGeoPositionInfoH;
 pragma Import(C,QGeoPositionInfo_create3, "QGeoPositionInfo_create3");
 
 procedure QGeoPositionInfo_destroy(handle: not null QGeoPositionInfoH);
 pragma Import(C,QGeoPositionInfo_destroy, "QGeoPositionInfo_destroy");
 
 function  QGeoPositionInfo_isValid(handle: not null QGeoPositionInfoH) return boolean;
 pragma Import(C,QGeoPositionInfo_isValid, "QGeoPositionInfo_isValid");
 
 procedure QGeoPositionInfo_setTimestamp(handle: not null QGeoPositionInfoH; timestamp:QDateTimeH);
 pragma Import(C,QGeoPositionInfo_setTimestamp, "QGeoPositionInfo_setTimestamp");
 
 function  QGeoPositionInfo_timestamp(handle: not null QGeoPositionInfoH) return QDateTimeH;
 pragma Import(C,QGeoPositionInfo_timestamp, "QGeoPositionInfo_timestamp");
 
 procedure QGeoPositionInfo_setCoordinate(handle: not null QGeoPositionInfoH; coordinate:QGeoCoordinateH);
 pragma Import(C,QGeoPositionInfo_setCoordinate, "QGeoPositionInfo_setCoordinate");
 
 function  QGeoPositionInfo_coordinate(handle: not null QGeoPositionInfoH) return QGeoCoordinateH;
 pragma Import(C,QGeoPositionInfo_coordinate, "QGeoPositionInfo_coordinate");
 
 procedure QGeoPositionInfo_setAttribute(handle: not null QGeoPositionInfoH;attr:Attribute;value: qreal);
 pragma Import(C,QGeoPositionInfo_setAttribute, "QGeoPositionInfo_setAttribute");
 
 function  QGeoPositionInfo_attribute(handle: not null QGeoPositionInfoH;attr:Attribute) return qreal;
 pragma Import(C,QGeoPositionInfo_attribute, "QGeoPositionInfo_attribute");
 
 procedure QGeoPositionInfo_removeAttribute(handle: not null QGeoPositionInfoH;attr:Attribute);
 pragma Import(C,QGeoPositionInfo_removeAttribute, "QGeoPositionInfo_removeAttribute");
 
 function  QGeoPositionInfo_hasAttribute(handle: not null QGeoPositionInfoH;attr:Attribute) return boolean;
 pragma Import(C,QGeoPositionInfo_hasAttribute, "QGeoPositionInfo_hasAttribute");
 
 function  QGeoPositionInfo_create(other:QGeoPositionInfoH) return QGeoPositionInfoH;
 function  QGeoPositionInfo_create(coordinate:QGeoCoordinateH; updateTime:QDateTimeH) return QGeoPositionInfoH;

end;
