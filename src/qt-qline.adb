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

package body Qt.QLine  is
 function  QLine_create(pt1,pt2: QPointH) return QLineH is
 begin
   return  QLine_create2(pt1,pt2);
 end;

 function  QLine_create(x1,y1,x2,y2:integer) return QLineH is
 begin
  return  QLine_create3(x1,y1,x2,y2);
 end;

 procedure QLine_translate(handle: not null QLineH; dx, dy:integer) is
 begin
   QLine_translate2(handle, dx, dy);
 end;

 function  QLine_translated(handle: not null QLineH; dx, dy:integer) return QLineH is
 begin
   return   QLine_translated2(handle, dx, dy);
 end;


 function  QLineF_create(pt1,pt2: QPointFH) return QLineFH is
 begin
   return  QLineF_create2(pt1,pt2);
 end;

 function  QLineF_create(x1,y1,x2,y2: qreal) return QLineFH is
 begin
   return  QLineF_create3(x1,y1,x2,y2);
 end;

 function  QLineF_create(line:QLineH) return QLineFH is
 begin
   return  QLineF_create4(line);
 end;

 function  QLineF_angle(handle: not null QLineFH; line:QLineFH) return qreal is
 begin
  return  QLineF_angle2(handle, line);
 end;

 procedure QLineF_translate(handle: not null QLineFH;dx,dy: qreal) is
 begin
   QLineF_translate2(handle,dx,dy);
 end;

 function  QLineF_translated(handle: not null QLineFH; dx,dy: qreal) return QLineFH is
 begin
  return  QLineF_translated2(handle, dx,dy);
 end;

end Qt.QLine;
