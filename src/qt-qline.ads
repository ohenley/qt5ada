--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QLine  is

 type IntersectType is (NoIntersection, BoundedIntersection, UnboundedIntersection);
 pragma Convention(C,IntersectType);

 function  QLine_create return QLineH;
 pragma Import(C,QLine_create, "QLine_create");
 
 function  QLine_create2(pt1,pt2: QPointH) return QLineH;
 pragma Import(C,QLine_create2, "QLine_create2");
 
 function  QLine_create3(x1,y1,x2,y2:integer) return QLineH;
 pragma Import(C,QLine_create3, "QLine_create3");
 
 procedure QLine_destroy(handle: not null QLineH);
 pragma Import(C,QLine_destroy, "QLine_destroy");
 
 function  QLine_isNull(handle: not null QLineH) return boolean;
 pragma Import(C,QLine_isNull, "QLine_isNull");
 
 function  QLine_p1(handle: not null QLineH) return QPointH;
 pragma Import(C,QLine_p1, "QLine_p1");
 
 function  QLine_p2(handle: not null QLineH) return QPointH;
 pragma Import(C,QLine_p2, "QLine_p2");
 
 function  QLine_x1(handle: not null QLineH) return integer;
 pragma Import(C,QLine_x1, "QLine_x1");
 
 function  QLine_y1(handle: not null QLineH) return integer;
 pragma Import(C,QLine_y1, "QLine_y1");
 
 function  QLine_x2(handle: not null QLineH) return integer;
 pragma Import(C,QLine_x2, "QLine_x2");
 
 function  QLine_y2(handle: not null QLineH) return integer;
 pragma Import(C,QLine_y2, "QLine_y2");
 
 function  QLine_dx(handle: not null QLineH) return integer;
 pragma Import(C,QLine_dx, "QLine_dx");
 
 function  QLine_dy(handle: not null QLineH) return integer;
 pragma Import(C,QLine_dy, "QLine_dy");
 
 procedure QLine_translate(handle: not null QLineH;point: QPointH);
 pragma Import(C,QLine_translate, "QLine_translate");
 
 procedure QLine_translate2(handle: not null QLineH; dx, dy:integer);
 pragma Import(C,QLine_translate2, "QLine_translate2");
 
 function  QLine_translated(handle: not null QLineH; point:QPointH) return QLineH;
 pragma Import(C,QLine_translated, "QLine_translated");
 
 function  QLine_translated2(handle: not null QLineH; dx, dy:integer) return QLineH;
 pragma Import(C,QLine_translated2, "QLine_translated2");
 
 procedure QLine_setP1(handle: not null QLineH; point1:QPointH);
 pragma Import(C,QLine_setP1, "QLine_setP1");
 
 procedure QLine_setP2(handle: not null QLineH; point2:QPointH);
 pragma Import(C,QLine_setP2, "QLine_setP2");
 
 procedure QLine_setPoints(handle: not null QLineH; point1, point2:QPointH);
 pragma Import(C,QLine_setPoints, "QLine_setPoints");
 
 procedure QLine_setLine(handle: not null QLineH;x1,y1,x2,y2:integer);
 pragma Import(C,QLine_setLine, "QLine_setLine");
 
 function  QLineF_fromPolar(length,angle: qreal) return QLineFH;
 pragma Import(C,QLineF_fromPolar, "QLineF_fromPolar");
 
 function  QLineF_create return QLineFH;
 pragma Import(C,QLineF_create, "QLineF_create");
 
 function  QLineF_create2(pt1,pt2: QPointFH) return QLineFH;
 pragma Import(C,QLineF_create2, "QLineF_create2");
 
 function  QLineF_create3(x1,y1,x2,y2: qreal) return QLineFH;
 pragma Import(C,QLineF_create3, "QLineF_create3");
 
 function  QLineF_create4(line:QLineH) return QLineFH;
 pragma Import(C,QLineF_create4, "QLineF_create4");
 
 procedure QLineF_destroy(handle: not null QLineFH);
 pragma Import(C,QLineF_destroy, "QLineF_destroy");
 
 function  QLineF_isNull(handle: not null QLineFH) return boolean;
 pragma Import(C,QLineF_isNull, "QLineF_isNull");
 
 function  QLineF_p1(handle: not null QLineFH) return QPointFH;
 pragma Import(C,QLineF_p1, "QLineF_p1");
 
 function  QLineF_p2(handle: not null QLineFH) return QPointFH;
 pragma Import(C,QLineF_p2, "QLineF_p2");
 
 function  QLineF_x1(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_x1, "QLineF_x1");
 
 function  QLineF_y1(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_y1, "QLineF_y1");
 
 function  QLineF_x2(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_x2, "QLineF_x2");
 
 function  QLineF_y2(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_y2, "QLineF_y2");
 
 function  QLineF_dx(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_dx, "QLineF_dx");
 
 function  QLineF_dy(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_dy, "QLineF_dy");
 
 function  QLineF_length(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_length, "QLineF_length");
 
 procedure QLineF_setLength(handle: not null QLineFH;len:qreal);
 pragma Import(C,QLineF_setLength, "QLineF_setLength");
 
 function  QLineF_angle(handle: not null QLineFH) return qreal;
 pragma Import(C,QLineF_angle, "QLineF_angle");
 
 procedure QLineF_setAngle(handle: not null QLineFH; angle:qreal);
 pragma Import(C,QLineF_setAngle, "QLineF_setAngle");
 
 function  QLineF_angleTo(handle: not null QLineFH; line:QLineFH) return qreal;
 pragma Import(C,QLineF_angleTo, "QLineF_angleTo");
 
 function  QLineF_unitVector(handle: not null QLineFH) return QLineFH;
 pragma Import(C,QLineF_unitVector, "QLineF_unitVector");
 
 function  QLineF_normalVector(handle: not null QLineFH) return QLineFH;
 pragma Import(C,QLineF_normalVector, "QLineF_normalVector");
 
 function  QLineF_intersect(handle: not null QLineFH; line:QLineFH; intersectionPoint:QPointFH) return IntersectType;
 pragma Import(C,QLineF_intersect, "QLineF_intersect");
 
 function  QLineF_angle2(handle: not null QLineFH; line:QLineFH) return qreal;
 pragma Import(C,QLineF_angle2, "QLineF_angle2");
 
 function  QLineF_pointAt(handle: not null QLineFH;point:qreal) return QPointFH;
 pragma Import(C,QLineF_pointAt, "QLineF_pointAt");
 
 procedure QLineF_translate(handle: not null QLineFH ;point:QPointFH);
 pragma Import(C,QLineF_translate, "QLineF_translate");
 
 procedure QLineF_translate2(handle: not null QLineFH;dx,dy: qreal);
 pragma Import(C,QLineF_translate2, "QLineF_translate2");
 
 function  QLineF_translated(handle: not null QLineFH; point:QPointFH) return QLineFH;
 pragma Import(C,QLineF_translated, "QLineF_translated");
 
 function  QLineF_translated2(handle: not null QLineFH; dx,dy: qreal) return QLineFH;
 pragma Import(C,QLineF_translated2, "QLineF_translated2");
 
 procedure QLineF_setP1(handle: not null QLineFH; point1:QPointFH);
 pragma Import(C,QLineF_setP1, "QLineF_setP1");
 
 procedure QLineF_setP2(handle: not null QLineFH; point2:QPointFH);
 pragma Import(C,QLineF_setP2, "QLineF_setP2");
 
 procedure QLineF_setPoints(handle: not null QLineFH; point1,point2:QPointFH);
 pragma Import(C,QLineF_setPoints, "QLineF_setPoints");
 
 procedure QLineF_setLine(handle: not null QLineFH; x1,y1, x2,y2: qreal);
 pragma Import(C,QLineF_setLine, "QLineF_setLine");
 
 function  QLineF_toLine(handle: not null QLineFH) return QLineH;
 pragma Import(C,QLineF_toLine, "QLineF_toLine");
 --------------------------------------------------------------------
 function  QLine_create(pt1,pt2: QPointH) return QLineH;
 function  QLine_create(x1,y1,x2,y2:integer) return QLineH;
 procedure QLine_translate(handle: not null QLineH; dx, dy:integer);
 function  QLine_translated(handle: not null QLineH; dx, dy:integer) return QLineH;

 function  QLineF_create(pt1,pt2: QPointFH) return QLineFH;
 function  QLineF_create(x1,y1,x2,y2: qreal) return QLineFH;
 function  QLineF_create(line:QLineH) return QLineFH;
 function  QLineF_angle(handle: not null QLineFH; line:QLineFH) return qreal;
 procedure QLineF_translate(handle: not null QLineFH;dx,dy: qreal);
 function  QLineF_translated(handle: not null QLineFH; dx,dy: qreal) return QLineFH;

end Qt.QLine;
