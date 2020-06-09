-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QPolarChart is

 type PolarOrientation is new integer;
 PolarOrientationRadial  : constant PolarOrientation := 1;
 PolarOrientationAngular : constant PolarOrientation := 2;

 function  QPolarChart_create(parent:QGraphicsItemH := null;wFlags : integer :=  0) return QChartH;
 pragma Import(C,QPolarChart_create, "QPolarChart_create");
 
 procedure QPolarChart_destroy(handle:not null QChartH);
 pragma Import(C,QPolarChart_destroy, "QPolarChart_destroy");
 
 procedure QPolarCharut_addAxis(handle:not null QChartH;axis:QAxisH;polarOrient: PolarOrientation);
 pragma Import(C,QPolarCharut_addAxis, "QPolarCharut_addAxis");
 
 function  QPolarChart_axes(handle:not null QChartH;polarOrient :PolarOrientation :=  PolarOrientationRadial + PolarOrientationAngular;series:QSeriesH :=  null) return QObjectListH;
 pragma Import(C,QPolarChart_axes, "QPolarChart_axes");
 
 function  QPolarChart_axisPolarOrientation(axis:QAxisH) return PolarOrientation;
 pragma Import(C,QPolarChart_axisPolarOrientation, "QPolarChart_axisPolarOrientation");
 

end;
