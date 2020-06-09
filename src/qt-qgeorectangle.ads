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
package Qt.QGeoRectangle  is

 type QCoordinateListH  is new QObjectListH;

 function  QGeoRectangle_create return QGeoRectangleH;
 pragma Import(C,QGeoRectangle_create, "QGeoRectangle_create");
 
 function  QGeoRectangle_create2(center:QGeoCoordinateH;degreesWidth, degreesHeight:double) return QGeoRectangleH;
 pragma Import(C,QGeoRectangle_create2, "QGeoRectangle_create2");
 
 function  QGeoRectangle_create3(coordinates:QCoordinateListH) return QGeoRectangleH;
 pragma Import(C,QGeoRectangle_create3, "QGeoRectangle_create3");
 
 function  QGeoRectangle_create4(other:QGeoShapeH) return QGeoRectangleH;
 pragma Import(C,QGeoRectangle_create4, "QGeoRectangle_create4");
 
 function  QGeoRectangle_create5(other:QGeoRectangleH) return QGeoRectangleH;
 pragma Import(C,QGeoRectangle_create5, "QGeoRectangle_create5");
 
 procedure QGeoRectangle_destroy(handle:QGeoRectangleH);
 pragma Import(C,QGeoRectangle_destroy, "QGeoRectangle_destroy");
 
 procedure QGeoRectangle_setTopLeft(handle:QGeoRectangleH; topLeft:QGeoCoordinateH);
 pragma Import(C,QGeoRectangle_setTopLeft, "QGeoRectangle_setTopLeft");
 
 function  QGeoRectangle_topLeft(handle:not null QGeoRectangleH) return QGeoCoordinateH;
 pragma Import(C,QGeoRectangle_topLeft, "QGeoRectangle_topLeft");
 
 procedure QGeoRectangle_setTopRight(handle:not null QGeoRectangleH;topRight:QGeoCoordinateH );
 pragma Import(C,QGeoRectangle_setTopRight, "QGeoRectangle_setTopRight");
 
 function  QGeoRectangle_topRight(handle:not null QGeoRectangleH) return QGeoCoordinateH;
 pragma Import(C,QGeoRectangle_topRight, "QGeoRectangle_topRight");
 
 procedure QGeoRectangle_setBottomLeft(handle:not null QGeoRectangleH;bottomLeft:QGeoCoordinateH );
 pragma Import(C,QGeoRectangle_setBottomLeft, "QGeoRectangle_setBottomLeft");
 
 function  QGeoRectangle_bottomLeft(handle:not null QGeoRectangleH) return QGeoCoordinateH;
 pragma Import(C,QGeoRectangle_bottomLeft, "QGeoRectangle_bottomLeft");
 
 procedure QGeoRectangle_setBottomRight(handle:not null QGeoRectangleH; bottomRight:QGeoCoordinateH);
 pragma Import(C,QGeoRectangle_setBottomRight, "QGeoRectangle_setBottomRight");
 
 function  QGeoRectangle_bottomRight(handle:not null QGeoRectangleH) return QGeoCoordinateH;
 pragma Import(C,QGeoRectangle_bottomRight, "QGeoRectangle_bottomRight");
 
 procedure QGeoRectangle_setCenter(handle:not null QGeoRectangleH; center:QGeoCoordinateH);
 pragma Import(C,QGeoRectangle_setCenter, "QGeoRectangle_setCenter");
 
 function  QGeoRectangle_center(handle:not null QGeoRectangleH) return QGeoCoordinateH;
 pragma Import(C,QGeoRectangle_center, "QGeoRectangle_center");
 
 procedure QGeoRectangle_setWidth(handle:not null QGeoRectangleH;degreesWidth:double );
 pragma Import(C,QGeoRectangle_setWidth, "QGeoRectangle_setWidth");
 
 function  QGeoRectangle_width(handle:not null QGeoRectangleH) return double;
 pragma Import(C,QGeoRectangle_width, "QGeoRectangle_width");
 
 procedure QGeoRectangle_setHeight(handle:not null QGeoRectangleH; degreesHeight:double);
 pragma Import(C,QGeoRectangle_setHeight, "QGeoRectangle_setHeight");
 
 function  QGeoRectangle_height(handle:not null QGeoRectangleH) return double;
 pragma Import(C,QGeoRectangle_height, "QGeoRectangle_height");
 
 function  QGeoRectangle_contains(handle:not null QGeoRectangleH;rectangle:QGeoRectangleH ) return boolean;
 pragma Import(C,QGeoRectangle_contains, "QGeoRectangle_contains");
 
 function  QGeoRectangle_intersects(handle:not null QGeoRectangleH; rectangle:QGeoRectangleH) return boolean;
 pragma Import(C,QGeoRectangle_intersects, "QGeoRectangle_intersects");
 
 procedure QGeoRectangle_translate(handle:not null QGeoRectangleH; degreesLatitude, degreesLongitude:double);
 pragma Import(C,QGeoRectangle_translate, "QGeoRectangle_translate");
 
 function  QGeoRectangle_translated(handle:not null QGeoRectangleH;degreesLatitude,degreesLongitude:double) return QGeoRectangleH;
 pragma Import(C,QGeoRectangle_translated, "QGeoRectangle_translated");

---------------------------------------------------------------------
 function  QGeoRectangle_create(center:QGeoCoordinateH;degreesWidth, degreesHeight:double) return QGeoRectangleH;
 function  QGeoRectangle_create(coordinates:QCoordinateListH) return QGeoRectangleH;
 function  QGeoRectangle_create(other:QGeoShapeH) return QGeoRectangleH;
 function  QGeoRectangle_create(other:QGeoRectangleH) return QGeoRectangleH;
 
end;
