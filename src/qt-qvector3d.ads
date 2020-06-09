-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QVector3D is

 function  QVector3D_create return QVector3DH;
 pragma Import(C,QVector3D_create, "QVector3D_create");
 
 function  QVector3D_create2(xpos,ypos,zpos:float) return QVector3DH;
 pragma Import(C,QVector3D_create2, "QVector3D_create2");
 
 function  QVector3D_create3(point:not null QPointH) return QVector3DH;
 pragma Import(C,QVector3D_create3, "QVector3D_create3");
 
 function  QVector3D_create4(point:not null QPointFH) return QVector3DH;
 pragma Import(C,QVector3D_create4, "QVector3D_create4");
 
 function  QVector3D_create5(vector:not null QVector2DH) return QVector3DH;
 pragma Import(C,QVector3D_create5, "QVector3D_create5");
 
 function  QVector3D_create6(vector:not null QVector2DH;zpos: float) return QVector3DH;
 pragma Import(C,QVector3D_create6, "QVector3D_create6");
 
 function  QVector3D_create7(vector:not null QVector4DH) return QVector3DH;
 pragma Import(C,QVector3D_create7, "QVector3D_create7");
 
 procedure QVector3D_destroy(handle:not null QVector3DH);
 pragma Import(C,QVector3D_destroy, "QVector3D_destroy");
 
 function  QVector3D_isNull(handle:not null QVector3DH) return boolean;
 pragma Import(C,QVector3D_isNull, "QVector3D_isNull");
 
 function  QVector3D_x(handle:not null QVector3DH) return float;
 pragma Import(C,QVector3D_x, "QVector3D_x");
 
 function  QVector3D_y(handle:not null QVector3DH) return float;
 pragma Import(C,QVector3D_y, "QVector3D_y");
 
 function  QVector3D_z(handle:not null QVector3DH) return float;
 pragma Import(C,QVector3D_z, "QVector3D_z");
 
 procedure QVector3D_setX(handle:not null QVector3DH;x:float);
 pragma Import(C,QVector3D_setX, "QVector3D_setX");
 
 procedure QVector3D_setY(handle:not null QVector3DH;y:float);
 pragma Import(C,QVector3D_setY, "QVector3D_setY");
 
 procedure QVector3D_setZ(handle:not null QVector3DH;z:float);
 pragma Import(C,QVector3D_setZ, "QVector3D_setZ");
 
 function  QVector3D_length(handle:not null QVector3DH) return float;
 pragma Import(C,QVector3D_length, "QVector3D_length");
 
 function  QVector3D_lengthSquared(handle:not null QVector3DH) return float;
 pragma Import(C,QVector3D_lengthSquared, "QVector3D_lengthSquared");
 
 function  QVector3D_normalized(handle:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_normalized, "QVector3D_normalized");
 
 procedure QVector3D_normalize(handle:not null QVector3DH);
 pragma Import(C,QVector3D_normalize, "QVector3D_normalize");
 
 function  QVector3D_dotProduct(v1,v2:not null QVector3DH) return float;
 pragma Import(C,QVector3D_dotProduct, "QVector3D_dotProduct");
 
 function  QVector3D_crossProduct(v1,v2:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_crossProduct, "QVector3D_crossProduct");
 
 function  QVector3D_normal(v1,v2:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_normal, "QVector3D_normal");
 
 function  QVector3D_normal2(v1,v2,v3:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_normal2, "QVector3D_normal2");
 
 function  QVector3D_distanceToPoint(handle,point:not null QVector3DH) return float;
 pragma Import(C,QVector3D_distanceToPoint, "QVector3D_distanceToPoint");
 
 function  QVector3D_distanceToPlane(handle,plane,normal:not null QVector3DH) return float;
 pragma Import(C,QVector3D_distanceToPlane, "QVector3D_distanceToPlane");
 
 function  QVector3D_distanceToPlane2(handle,plane1,plane2,plane3:not null QVector3DH) return float;
 pragma Import(C,QVector3D_distanceToPlane2, "QVector3D_distanceToPlane2");
 
 function  QVector3D_distanceToLine(handle,point,direction:not null QVector3DH) return float;
 pragma Import(C,QVector3D_distanceToLine, "QVector3D_distanceToLine");
 
 function  QVector3D_equal(v1,v2:not null QVector3DH) return boolean;
 pragma Import(C,QVector3D_equal, "QVector3D_equal");
 
 function  QVector3D_notequal(v1,v2:not null QVector3DH) return boolean;
 pragma Import(C,QVector3D_notequal, "QVector3D_notequal");
 
 function  QVector3D_sum(v1,v2:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_sum, "QVector3D_sum");
 
 function  QVector3D_substruct(v1,v2:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_substruct, "QVector3D_substruct");
 
 function  QVector3D_multiply(factor:float;vector:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_multiply, "QVector3D_multiply");
 
 function  QVector3D_multiply2(vector:not null QVector3DH;factor: float) return QVector3DH;
 pragma Import(C,QVector3D_multiply2, "QVector3D_multiply2");
 
 function  QVector3D_multiply3(v,v2:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_multiply3, "QVector3D_multiply3");
 
 function  QVector3D_minus(vector:not null QVector3DH) return QVector3DH;
 pragma Import(C,QVector3D_minus, "QVector3D_minus");
 
 function  QVector3D_devide(vector:not null QVector3DH;divisor:float) return QVector3DH;
 pragma Import(C,QVector3D_devide, "QVector3D_devide");
 
 function  QVector3D_toVector2D(handle:not null QVector3DH) return QVector2DH;
 pragma Import(C,QVector3D_toVector2D, "QVector3D_toVector2D");
 
 function  QVector3D_toVector4D(handle:not null QVector3DH) return QVector4DH;
 pragma Import(C,QVector3D_toVector4D, "QVector3D_toVector4D");
 
 function  QVector3D_toPoint(handle:not null QVector3DH) return QPointH;
 pragma Import(C,QVector3D_toPoint, "QVector3D_toPoint");
 
 function  QVector3D_toPointF(handle:not null QVector3DH) return QPointFH;
 pragma Import(C,QVector3D_toPointF, "QVector3D_toPointF");
 
 function  QVariant3D_toQVariant(handle:not null QVector3DH) return QVariantH;
 pragma Import(C,QVariant3D_toQVariant, "QVariant3D_toQVariant");
----------------------------------------------------------------------
 function  QVector3D_create(xpos,ypos,zpos:float) return QVector3DH;
 function  QVector3D_create(xpos,ypos,zpos:qreal) return QVector3DH;
 function  QVector3D_create(point:not null QPointH) return QVector3DH;
 function  QVector3D_create(point:not null QPointFH) return QVector3DH;
 function  QVector3D_create(vector:not null QVector2DH) return QVector3DH;
 function  QVector3D_create(vector:not null QVector2DH;zpos: float) return QVector3DH;
 function  QVector3D_create(vector:not null QVector4DH) return QVector3DH;
 function  QVector3D_normal(v1,v2,v3:not null QVector3DH) return QVector3DH;
 function  QVector3D_distanceToPlane(handle,plane1,plane2,plane3:not null QVector3DH) return float;
 function  QVector3D_multiply(vector:not null QVector3DH;factor: float) return QVector3DH;
 function  QVector3D_multiply(v,v2:not null QVector3DH) return QVector3DH;

end;
