--
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

package Qt.QMargins  is

 function  QMargins_create return QMarginsH;
 pragma Import(C,QMargins_create, "QMargins_create");
 
 function  QMargins_create2(left,top,right, bottom:integer) return QMarginsH;
 pragma Import(C,QMargins_create2, "QMargins_create2");
 
 procedure QMargins_delete(handle:QMarginsH);
 pragma Import(C,QMargins_delete, "QMargins_delete");
 
 function  QMargins_isNull(handle:QMarginsH) return boolean;
 pragma Import(C,QMargins_isNull, "QMargins_isNull");
 
 function  QMargins_left(handle:QMarginsH) return integer;
 pragma Import(C,QMargins_left, "QMargins_left");
 
 function  QMargins_top(handle:QMarginsH) return integer;
 pragma Import(C,QMargins_top, "QMargins_top");
 
 function  QMargins_right(handle:QMarginsH) return integer;
 pragma Import(C,QMargins_right, "QMargins_right");
 
 function  QMargins_bottom(handle:QMarginsH) return integer;
 pragma Import(C,QMargins_bottom, "QMargins_bottom");
 
 procedure QMargins_setLeft(handle:QMarginsH;left:integer);
 pragma Import(C,QMargins_setLeft, "QMargins_setLeft");
 
 procedure QMargins_setTop(handle:QMarginsH;top:integer);
 pragma Import(C,QMargins_setTop, "QMargins_setTop");
 
 procedure QMargins_setRight(handle:QMarginsH;right:integer);
 pragma Import(C,QMargins_setRight, "QMargins_setRight");
 
 procedure QMargins_setBottom(handle:QMarginsH;bottom:integer);
 pragma Import(C,QMargins_setBottom, "QMargins_setBottom");
 
 function  QMarginsF_create return QMarginsFH;
 pragma Import(C,QMarginsF_create, "QMarginsF_create");
 
 function  QMarginsF_create2(left,top,right,bottom:qreal) return QMarginsFH;
 pragma Import(C,QMarginsF_create2, "QMarginsF_create2");
 
 procedure QMarginsF_delete(handle:QMarginsFH);
 pragma Import(C,QMarginsF_delete, "QMarginsF_delete");
 
 function  QMarginsF_isNull(handle:QMarginsFH) return boolean;
 pragma Import(C,QMarginsF_isNull, "QMarginsF_isNull");
 
 function  QMarginsF_left(handle:QMarginsFH) return qreal;
 pragma Import(C,QMarginsF_left, "QMarginsF_left");
 
 function  QMarginsF_top(handle:QMarginsFH) return qreal;
 pragma Import(C,QMarginsF_top, "QMarginsF_top");
 
 function  QMarginsF_right(handle:QMarginsFH) return qreal;
 pragma Import(C,QMarginsF_right, "QMarginsF_right");
 
 function  QMarginsF_bottom(handle:QMarginsFH) return qreal;
 pragma Import(C,QMarginsF_bottom, "QMarginsF_bottom");
 
 procedure QMarginsF_setLeft(handle:QMarginsFH;left:qreal);
 pragma Import(C,QMarginsF_setLeft, "QMarginsF_setLeft");
 
 procedure QMarginsF_setTop(handle:QMarginsFH;top:qreal);
 pragma Import(C,QMarginsF_setTop, "QMarginsF_setTop");
 
 procedure QMarginsF_setRight(handle:QMarginsFH;right:qreal);
 pragma Import(C,QMarginsF_setRight, "QMarginsF_setRight");
 
 procedure QMarginsF_setBottom(handle:QMarginsFH;bottom:qreal);
 pragma Import(C,QMarginsF_setBottom, "QMarginsF_setBottom");

--------------------------------------------------------------
 function  QMargins_create(left,top,right, bottom:integer) return QMarginsH;
 function  QMarginsF_create(left,top,right,bottom:qreal) return QMarginsFH;
 
end;
