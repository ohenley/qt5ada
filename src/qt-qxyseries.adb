-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QXYSeries is

 procedure QXYSeries_append(handle:not null QSeriesH;point:QPointFH) is
 begin
  QXYSeries_append2(handle,point);
 end;

 procedure QXYSeries_append(handle:not null QSeriesH;points:QObjectListH) is
 begin
  QXYSeries_append3(handle,points);
 end;

 procedure QXYSeries_replace(handle:not null QSeriesH;oldPoint,newPoint: QPointFH) is
 begin
  QXYSeries_replace2(handle,oldPoint,newPoint);
 end;

 procedure QXYSeries_replace(handle:not null QSeriesH;index:integer;newX: qreal;newY: qreal) is
 begin
  QXYSeries_replace3(handle,index,newX,newY);
 end;

 procedure QXYSeries_replace(handle:not null QSeriesH;index:integer;newPoint: QPointFH) is
 begin
  QXYSeries_replace4(handle,index,newPoint);
 end;

 procedure QXYSeries_replace(handle:not null QSeriesH;points:QObjectListH) is
 begin
  QXYSeries_replace5(handle,points);
 end;

 procedure QXYSeries_replace(handle:not null QSeriesH;points:QVectorH) is
 begin
  QXYSeries_replace6(handle,points);
 end;

 procedure QXYSeries_remove(handle:not null QSeriesH;point:QPointFH) is
 begin
  QXYSeries_remove2(handle,point);
 end;

 procedure QXYSeries_remove(handle:not null QSeriesH;index:integer) is 
 begin
  QXYSeries_remove3(handle,index);
 end;
 
end;
