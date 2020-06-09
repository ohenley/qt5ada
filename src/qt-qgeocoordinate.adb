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

package body Qt.QGeoCoordinate is

 function  QGeoCoordinate_create(latitude,longitude:double) return QGeoCoordinateH is
 begin
  return  QGeoCoordinate_create2(latitude,longitude);
 end;

 function  QGeoCoordinate_create(latitude,longitude,altitude:double) return QGeoCoordinateH is
 begin
  return  QGeoCoordinate_create3(latitude,longitude,altitude);
 end;

 function  QGeoCoordinate_create(other:QGeoCoordinateH) return QGeoCoordinateH is
 begin
  return  QGeoCoordinate_create4(other);
 end;

end;
