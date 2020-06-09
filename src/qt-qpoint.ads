--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2019                 บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QPoint is

 function  QPoint_create return QPointH;
 pragma Import(C,QPoint_create, "QPoint_create");

 function  QPoint_create1(xpos,ypos:long_integer) return QPointH;
 pragma Import(C,QPoint_create1, "QPoint_create1");

 function  QPoint_isNull(point:QPointH) return integer;
 pragma Import(C,QPoint_isNull, "QPoint_isNull");

 function  QPoint_x(point:QPointH) return integer;
 pragma Import(C,QPoint_x, "QPoint_x");

 function  QPoint_y(point:QPointH) return integer;
 pragma Import(C,QPoint_y, "QPoint_y");

 procedure QPoint_setX(point:QPointH;x:integer);
 pragma Import(C,QPoint_setX, "QPoint_setX");

 procedure QPoint_setY(point:QPointH;y:integer);
 pragma Import(C,QPoint_setY, "QPoint_setY");

 function  QPoint_manhattanLength(point:QPointH) return integer;
 pragma Import(C,QPoint_manhattanLength, "QPoint_manhattanLength");

 function  QPoint_rx(point:QPointH) return pinteger;
 pragma Import(C,QPoint_rx, "QPoint_rx");

 function  QPoint_ry(point:QPointH) return pinteger;
 pragma Import(C,QPoint_ry, "QPoint_ry");

 function  QPoint_pointF(handle:not null QPointH) return QPointFH;
 pragma Import(C,QPoint_pointF, "QPoint_pointF");

 function  QPoint_sum(p1,p2:not null QPointH) return QPointH;
 pragma Import(C,QPoint_sum, "QPoint_sum");
 
 function  QPoint_substract(p1,p2:not null QPointH) return QPointH;
 pragma Import(C,QPoint_substract, "QPoint_substract");
 

 function  QPointF_create return QPointFH;
 pragma Import(C,QPointF_create, "QPointF_create");
 
 function  QPointF_create2(xpos,ypos: qreal) return QPointFH;
 pragma Import(C,QPointF_create2, "QPointF_create2");
 
 function  QPointF_create3(point:QPointH) return QPointFH;
 pragma Import(C,QPointF_create3, "QPointF_create3");
 
 procedure QPointF_destroy(handle: not null QPointFH);
 pragma Import(C,QPointF_destroy, "QPointF_destroy");
 
 function  QPointF_isNull(handle: not null QPointFH) return boolean;
 pragma Import(C,QPointF_isNull, "QPointF_isNull");
 
 function  QPointF_x(handle: not null  QPointFH) return qreal;
 pragma Import(C,QPointF_x, "QPointF_x");
 
 function  QPointF_y(handle: not null  QPointFH) return qreal;
 pragma Import(C,QPointF_y, "QPointF_y");
 
 procedure QPointF_setX(handle: not null  QPointFH;x: qreal);
 pragma Import(C,QPointF_setX, "QPointF_setX");
 
 procedure QPointF_setY(handle: not null  QPointFH;y: qreal);
 pragma Import(C,QPointF_setY, "QPointF_setY");
 
 function  QPointF_manhattanLength(handle: not null  QPointFH) return qreal;
 pragma Import(C,QPointF_manhattanLength, "QPointF_manhattanLength");
 
 function  QPointF_rx(handle: not null QPointFH) return qreal;
 pragma Import(C,QPointF_rx, "QPointF_rx");
 
 function  QPointF_ry(handle: not null  QPointFH) return qreal;
 pragma Import(C,QPointF_ry, "QPointF_ry");

 function  QPointF_point(handle:not null QPointFH) return QPointH;
 pragma Import(C,QPointF_point, "QPointF_point");

 function  QPointF_toPoint(handle:not null QPointFH) return QPointH;
 pragma Import(C,QPointF_toPoint, "QPointF_toPoint");
 
 function  QPointF_sum(p1,p2:not null QPointFH) return QPointFH;
 pragma Import(C,QPointF_sum, "QPointF_sum");
 
 function  QPointF_substract(p1,p2:not null QPointFH) return QPointFH;
 pragma Import(C,QPointF_substract, "QPointF_substract");
 
-------------------------------------------------------------------------------------------------
function  QPoint_create(xpos,ypos:long_integer) return QPointH;
function  QPointF_create(xpos,ypos: qreal) return QPointFH;
function  QPointF_create(point:QPointH) return QPointFH;

function "+"(p1,p2:QPointH) return QPointH;
function "-"(p1,p2:QPointH) return QPointH;

function "+"(p1,p2:QPointFH) return QPointFH;
function "-"(p1,p2:QPointFH) return QPointFH;

end Qt.QPoint;
