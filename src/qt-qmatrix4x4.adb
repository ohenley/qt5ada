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

package body Qt.QMatrix4x4 is

 function  QMatrix4x4_create(values:pfloat) return QMatrix4x4H is
 begin
   return  QMatrix4x4_create2(values);
 end;

 function  QMatrix4x4_create(m11,m12,m13,m14,m21,m22,m23,m24,m31,m32,m33,m34,m41,m42,m43,m44:float) return QMatrix4x4H is
 begin
   return  QMatrix4x4_create3(m11,m12,m13,m14,m21,m22,m23,m24,m31,m32,m33,m34,m41,m42,m43,m44);
 end;

 function  QMatrix4x4_create(values:pfloat;cols,rows:integer) return QMatrix4x4H is
 begin
   return  QMatrix4x4_create4(values,cols,rows);
 end;

 function  QMatrix4x4_create(transform:QTransformH) return QMatrix4x4H is
 begin
   return  QMatrix4x4_create5(transform);
 end;

 function  QMatrix4x4_create(other:QMatrix4x4H) return QMatrix4x4H is
 begin
   return  QMatrix4x4_create6(other);
 end;

 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H;vector: QVector3DH) return QVector3DH is
 begin
   return  QMatrix4x4_multiply2(handle,vector);
 end;

 function  QMatrix4x4_multiply(vector:QVector3DH;matrix: QMatrix4x4H) return QVector3DH is
 begin
   return  QMatrix4x4_multiply3(vector,matrix);
 end;

 function  QMatrix4x4_multiply(vector:QVector4DH; matrix: QMatrix4x4H) return QVector4DH is
 begin
   return  QMatrix4x4_multiply4(vector,matrix);
 end;

 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H; vector:QVector4DH) return QVector4DH is
 begin
   return  QMatrix4x4_multiply5(handle,vector);
 end;

 function  QMatrix4x4_multiply(point:QPointH;matrix:QMatrix4x4H) return QPointH is
 begin
   return  QMatrix4x4_multiply6(point,matrix);
 end;

 function  QMatrix4x4_multiply(point:QPointFH;matrix:QMatrix4x4H) return QPointFH is
 begin
   return  QMatrix4x4_multiply7(point,matrix);
 end;

 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H;point:QPointH) return QPointH is
 begin
   return  QMatrix4x4_multiply8(handle,point);
 end;

 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H;point:QPointFH) return QPointFH is
 begin
   return  QMatrix4x4_multiply9(handle,point);
 end;

 function  QMatrix4x4_multiply(factor:float;matrix: QMatrix4x4H) return QMatrix4x4H is
 begin
   return  QMatrix4x4_multiply10(factor,matrix);
 end;

 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H; factor:float) return QMatrix4x4H is
 begin
   return  QMatrix4x4_multiply11(handle,factor);
 end;

 procedure QMatrix4x4_scale(handle:not null QMatrix4x4H;x,y:float) is
 begin
   QMatrix4x4_scale2(handle,x,y);
 end;

 procedure QMatrix4x4_scale(handle:not null QMatrix4x4H;x,y,z:float) is
 begin
   QMatrix4x4_scale3(handle,x,y,z);
 end;

 procedure QMatrix4x4_scale(handle:not null QMatrix4x4H;factor:float) is
 begin
   QMatrix4x4_scale4(handle,factor);
 end;

 procedure QMatrix4x4_translate(handle:not null QMatrix4x4H;x,y:float) is
 begin
   QMatrix4x4_translate2(handle,x,y);
 end;

 procedure QMatrix4x4_translate(handle:not null QMatrix4x4H;x,y,z:float) is
 begin
   QMatrix4x4_translate3(handle,x,y,z);
 end;

 procedure QMatrix4x4_rotate(handle:not null QMatrix4x4H;angle:float; x,y:float;z:float := 0.0) is
 begin
   QMatrix4x4_rotate2(handle,angle,x,y,z);
 end;

 procedure QMatrix4x4_rotate(handle:not null QMatrix4x4H; quaternion:QQuaternionH) is
 begin
   QMatrix4x4_rotate3(handle,quaternion);
 end;

 procedure QMatrix4x4_ortho(handle:not null QMatrix4x4H;rect:QRectFH) is
 begin
   QMatrix4x4_ortho2(handle,rect);
 end;

 procedure QMatrix4x4_ortho(handle:not null QMatrix4x4H;left,right,bottom,top,nearPlane,farPlane:float) is
 begin
   QMatrix4x4_ortho3(handle,left,right,bottom,top,nearPlane,farPlane);
 end;

 procedure QMatrix4x4_viewport(handle:not null QMatrix4x4H;left,bottom,width,height:float; nearPlane: float := 0.0; farPlane: float := 1.0) is
 begin
   QMatrix4x4_viewport2(handle,left,bottom,width,height,nearPlane,farPlane);
 end;

 function  QMatrix4x4_toTransform(handle:not null QMatrix4x4H;distanceToPlane:float) return QTransformH is
 begin
   return  QMatrix4x4_toTransform2(handle,distanceToPlane);
 end;

 function  QMatrix4x4_map(handle:not null QMatrix4x4H;point:QPointFH) return QPointFH is
 begin
   return  QMatrix4x4_map2(handle,point);
 end;

 function  QMatrix4x4_map(handle:not null QMatrix4x4H; vector:QVector3DH) return QVector3DH is
 begin
   return  QMatrix4x4_map3(handle,vector);
 end;

 function  QMatrix4x4_map(handle:not null QMatrix4x4H;vector:QVector4DH) return QVector4DH is
 begin
   return  QMatrix4x4_map4(handle,vector);
 end;

 function  QMatrix4x4_mapRect(handle:not null QMatrix4x4H;rect:QRectFH) return QRectFH is
 begin
   return  QMatrix4x4_mapRect2(handle,rect);
 end;

end;
