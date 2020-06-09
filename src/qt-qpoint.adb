--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
with Interfaces.C;  use Interfaces.C;
package body Qt.QPoint is

function  QPoint_create(xpos,ypos:long_integer) return QPointH is
begin
 return QPoint_create1(xpos,ypos);
end;

function  QPointF_create(xpos,ypos: qreal) return QPointFH is
begin
 return QPointF_create2(xpos,ypos);
end;

function  QPointF_create(point:QPointH) return QPointFH is
begin
  return  QPointF_create3(point);
end;

function "+"(p1,p2:QPointH) return QPointH is
begin
  return QPoint_create(long_integer(QPoint_x(p1) + QPoint_x(p2)),long_integer(QPoint_y(p1) + QPoint_y(p2)));
end;

function "-"(p1,p2:QPointH) return QPointH is
begin
  return QPoint_create(long_integer(QPoint_x(p1) - QPoint_x(p2)),long_integer(QPoint_y(p1) - QPoint_y(p2)));
end;

function "+"(p1,p2:QPointFH) return QPointFH is
begin
  return QPointF_create(QPointF_x(p1) + QPointF_x(p2),QPointF_y(p1) + QPointF_y(p2));
end;

function "-"(p1,p2:QPointFH) return QPointFH is
begin
  return QPointF_create(QPointF_x(p1) - QPointF_x(p2),QPointF_y(p1) - QPointF_y(p2));
end;

end Qt.QPoint;
