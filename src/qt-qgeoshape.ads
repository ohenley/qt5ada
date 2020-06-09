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

package Qt.QGeoShape  is

 type ShapeType is (UnknownType,RectangleType,CircleType);
 pragma convention(C,ShapeType);

 function  QGeoShape_create return QGeoShapeH;
 pragma Import(C,QGeoShape_create, "QGeoShape_create");
 
 function  QGeoShape_create2(other:QGeoShapeH) return QGeoShapeH;
 pragma Import(C,QGeoShape_create2, "QGeoShape_create2");
 
 procedure QGeoShape_destroy(handle:not null QGeoShapeH);
 pragma Import(C,QGeoShape_destroy, "QGeoShape_destroy");
 
 function  QGeoShape_type(handle:not null QGeoShapeH) return ShapeType;
 pragma Import(C,QGeoShape_type, "QGeoShape_type");
 
 function  QGeoShape_isValid(handle:not null QGeoShapeH) return boolean;
 pragma Import(C,QGeoShape_isValid, "QGeoShape_isValid");
 
 function  QGeoShape_isEmpty(handle:not null QGeoShapeH) return boolean;
 pragma Import(C,QGeoShape_isEmpty, "QGeoShape_isEmpty");
 
 function  QGeoShape_contains(handle:not null QGeoShapeH;coordinate:QGeoCoordinateH) return boolean;
 pragma Import(C,QGeoShape_contains, "QGeoShape_contains");
 
 procedure QGeoShape_extendShape(handle:not null QGeoShapeH;coordinate:QGeoCoordinateH);
 pragma Import(C,QGeoShape_extendShape, "QGeoShape_extendShape");
 
 function  QGeoShape_equal(handle,other:QGeoShapeH) return boolean;
 pragma Import(C,QGeoShape_equal, "QGeoShape_equal");
 
 function  QGeoShape_create(other:QGeoShapeH) return QGeoShapeH;

end;
