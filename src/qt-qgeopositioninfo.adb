-- 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
-- �       D E S I G N   E N G I N E E R I N G            �D�S�        �
-- �            S O F T W A R E                           藩瞥�        �
-- �                                                                   �
-- �        QtAda - Ada to QT5 interface                               �
-- �                                                                   �
-- �        Author :  Leonid Dulman     2014                           �
-- � Copyright (C) 2014                                                �
-- 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QGeoPositionInfo is

 function  QGeoPositionInfo_create(other:QGeoPositionInfoH) return QGeoPositionInfoH is
 begin
   return  QGeoPositionInfo_create2(other);
 end;

 function  QGeoPositionInfo_create( coordinate:QGeoCoordinateH; updateTime:QDateTimeH) return QGeoPositionInfoH is
 begin
   return  QGeoPositionInfo_create3(coordinate,updateTime);
 end;

end;
