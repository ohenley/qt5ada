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

package body Qt.QGeoRectangle  is

 function  QGeoRectangle_create(center:QGeoCoordinateH;degreesWidth, degreesHeight:double) return QGeoRectangleH is
 begin
  return  QGeoRectangle_create2(center,degreesWidth, degreesHeight);
 end;

 function  QGeoRectangle_create(coordinates:QCoordinateListH) return QGeoRectangleH is
 begin
   return  QGeoRectangle_create3(coordinates);
 end;

 function  QGeoRectangle_create(other:QGeoShapeH) return QGeoRectangleH is
 begin
   return  QGeoRectangle_create4(other);
 end;

 function  QGeoRectangle_create(other:QGeoRectangleH) return QGeoRectangleH is
 begin
   return  QGeoRectangle_create5(other);
 end;
 
end;
