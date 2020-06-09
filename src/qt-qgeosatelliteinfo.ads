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

package Qt.QGeoSatelliteInfo is

 type QGeoSatellitesListH is new QObjectListH;

 type Attribute is (Elevation, Azimuth); 
 pragma convention(C,Attribute);

 type SatelliteSystem is (Undefined,GPS,GLONASS);
 pragma convention(C,SatelliteSystem);

 function  QGeoSatelliteInfo_create return QGeoSatelliteInfoH;
 pragma Import(C,QGeoSatelliteInfo_create, "QGeoSatelliteInfo_create");
 
 function  QGeoSatelliteInfo_create2(other:QGeoSatelliteInfoH) return QGeoSatelliteInfoH;
 pragma Import(C,QGeoSatelliteInfo_create2, "QGeoSatelliteInfo_create2");
 
 procedure QGeoSatelliteInfo_destroy(handle:not null QGeoSatelliteInfoH);
 pragma Import(C,QGeoSatelliteInfo_destroy, "QGeoSatelliteInfo_destroy");
 
 procedure QGeoSatelliteInfo_setSatelliteSystem(handle:not null QGeoSatelliteInfoH;system:SatelliteSystem);
 pragma Import(C,QGeoSatelliteInfo_setSatelliteSystem, "QGeoSatelliteInfo_setSatelliteSystem");
 
 function  QGeoSatelliteInfo_satelliteSystem(handle:not null QGeoSatelliteInfoH) return SatelliteSystem;
 pragma Import(C,QGeoSatelliteInfo_satelliteSystem, "QGeoSatelliteInfo_satelliteSystem");
 
 procedure QGeoSatelliteInfo_setSatelliteIdentifier(handle:not null QGeoSatelliteInfoH; satId:integer);
 pragma Import(C,QGeoSatelliteInfo_setSatelliteIdentifier, "QGeoSatelliteInfo_setSatelliteIdentifier");
 
 function  QGeoSatelliteInfo_satelliteIdentifier(handle:not null QGeoSatelliteInfoH) return integer;
 pragma Import(C,QGeoSatelliteInfo_satelliteIdentifier, "QGeoSatelliteInfo_satelliteIdentifier");
 
 procedure QGeoSatelliteInfo_setSignalStrength(handle:not null QGeoSatelliteInfoH; signalStrength:integer);
 pragma Import(C,QGeoSatelliteInfo_setSignalStrength, "QGeoSatelliteInfo_setSignalStrength");
 
 function  QGeoSatelliteInfo_signalStrength(handle:not null QGeoSatelliteInfoH) return integer;
 pragma Import(C,QGeoSatelliteInfo_signalStrength, "QGeoSatelliteInfo_signalStrength");
 
 procedure QGeoSatelliteInfo_removeAttribute(handle:not null QGeoSatelliteInfoH; attr:Attribute);
 pragma Import(C,QGeoSatelliteInfo_removeAttribute, "QGeoSatelliteInfo_removeAttribute");
 
 function  QGeoSatelliteInfo_hasAttribute(handle:not null QGeoSatelliteInfoH;attr:Attribute) return boolean;
 pragma Import(C,QGeoSatelliteInfo_hasAttribute, "QGeoSatelliteInfo_hasAttribute");
 
 procedure QGeoSatelliteInfo_setAttribute(handle:not null QGeoSatelliteInfoH;attr:Attribute; value:qreal);
 pragma Import(C,QGeoSatelliteInfo_setAttribute, "QGeoSatelliteInfo_setAttribute");
 
 function  QGeoSatelliteInfo_attribute(handle:not null QGeoSatelliteInfoH;attr:Attribute) return qreal;
 pragma Import(C,QGeoSatelliteInfo_attribute, "QGeoSatelliteInfo_attribute");
 
 function  QGeoSatelliteInfo_equal(handle,other:QGeoSatelliteInfoH) return boolean;
 pragma Import(C,QGeoSatelliteInfo_equal, "QGeoSatelliteInfo_equal");
 
 function  QGeoSatelliteInfo_satellitInfoCount(satellites:QGeoSatellitesListH) return integer;
 pragma Import(C,QGeoSatelliteInfo_satellitInfoCount, "QGeoSatelliteInfo_satellitInfoCount");
 
 function  QGeoSatelliteInfo_satellitInfoAt(satellites:QGeoSatellitesListH;index: integer := 0) return QGeoSatelliteInfoH;
 pragma Import(C,QGeoSatelliteInfo_satellitInfoAt, "QGeoSatelliteInfo_satellitInfoAt");

 function  QGeoSatelliteInfo_create(other:QGeoSatelliteInfoH) return QGeoSatelliteInfoH;

end;
