--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2016                      บ
-- บ Copyright (C) 2012,2014,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Interfaces.C; use Interfaces.C;
package body Qt.QGlobal is

 function  QGlobal_qFuzzyCompare(p1,p2: float) return boolean is
 begin
   return  QGlobal_qFuzzyCompare2(p1,p2);
 end;

 function  QGlobal_qFuzzyIsNull(f:float) return boolean is
 begin
   return  QGlobal_qFuzzyIsNull2(f);
 end;

 function  QGlobal_qIsNull(f:float) return boolean is
 begin
   return  QGlobal_qIsNull2(f);
 end;

 function  QGlobal_qIntCast(f:float) return integer is
 begin
   return  QGlobal_qIntCast2(f);
 end;

 function  QGlobal_qMin(p1,p2:qreal) return qreal is
 begin
  if p1 < p2 then return p1; else return p2; end if;
 end;

 function  QGlobal_qMax(p1,p2:qreal) return qreal is
 begin
  if p1 > p2 then return p1; else return p2; end if;
 end;

 function  QGlobal_qMin(p1,p2:integer) return integer is
 begin
  if p1 < p2 then return p1; else return p2; end if;
 end;

 function  QGlobal_qMax(p1,p2:integer) return integer is
 begin
  if p1 > p2 then return p1; else return p2; end if;
 end;

 function  QGlobal_qBound(min,val,max:qreal) return qreal is
 begin
   return  QGlobal_qBound2(min,val,max);
 end;

 procedure QGlobal_qWarning(message:QStringH) is
 begin
   QGlobal_qWarning2(message);
 end;
 
 procedure QGlobal_qCritical(message:QStringH) is
 begin
   QGlobal_qCritical2(message);
 end;
 
 procedure QGlobal_qFatal(message:QStringH) is
 begin
  QGlobal_qFatal2(message);
 end;
 
 procedure QGlobal_qDebug(message:QStringH) is
 begin
   QGlobal_qDebug2(message);
 end;

end;
