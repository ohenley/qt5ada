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

package body Qt.QVector3D is

 function  QVector3D_create(xpos,ypos,zpos:float) return QVector3DH is
 begin
   return  QVector3D_create2(xpos,ypos,zpos);
 end;

 function  QVector3D_create(xpos,ypos,zpos:qreal) return QVector3DH is
 begin
   return  QVector3D_create2(float(xpos),float(ypos),float(zpos));
 end;

 function  QVector3D_create(point:not null QPointH) return QVector3DH is
 begin
   return  QVector3D_create3(point);
 end;

 function  QVector3D_create(point:not null QPointFH) return QVector3DH is
 begin
   return  QVector3D_create4(point);
 end;

 function  QVector3D_create(vector:not null QVector2DH) return QVector3DH is
 begin
   return  QVector3D_create5(vector);
 end;

 function  QVector3D_create(vector:not null QVector2DH;zpos: float) return QVector3DH is
 begin
   return  QVector3D_create6(vector,zpos);
 end;

 function  QVector3D_create(vector:not null QVector4DH) return QVector3DH is
 begin
   return  QVector3D_create7(vector);
 end;

 function  QVector3D_normal(v1,v2,v3:not null QVector3DH) return QVector3DH is
 begin
   return  QVector3D_normal2(v1,v2,v3);
 end;

 function  QVector3D_distanceToPlane(handle,plane1,plane2,plane3:not null QVector3DH) return float is
 begin
   return  QVector3D_distanceToPlane2(handle,plane1,plane2,plane3);
 end;

 function  QVector3D_multiply(vector:not null QVector3DH;factor: float) return QVector3DH is
 begin
   return  QVector3D_multiply2(vector,factor);
 end;

 function  QVector3D_multiply(v,v2:not null QVector3DH) return QVector3DH is
 begin
   return  QVector3D_multiply3(v,v2);
 end;

end;
