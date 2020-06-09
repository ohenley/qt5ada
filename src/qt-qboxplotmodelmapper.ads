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

package Qt.QBoxPlotModelMapper is

 function  QBoxPlotModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QBoxPlotModelMapper_create, "QBoxPlotModelMapper_create");
 
 function  QBoxPlotModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QBoxPlotModelMapper_model, "QBoxPlotModelMapper_model");
 
 procedure QBoxPlotModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QBoxPlotModelMapper_setModel, "QBoxPlotModelMapper_setModel");
 
 function  QBoxPlotModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QBoxPlotModelMapper_series, "QBoxPlotModelMapper_series");
 
 procedure QBoxPlotModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QBoxPlotModelMapper_setSeries, "QBoxPlotModelMapper_setSeries");
 
 function  QBoxPlotModelMapper_first(handle:not null QMapperH) return integer;
 pragma Import(C,QBoxPlotModelMapper_first, "QBoxPlotModelMapper_first");
 
 procedure QBoxPlotModelMapper_setFirst(handle:not null QMapperH;first:integer);
 pragma Import(C,QBoxPlotModelMapper_setFirst, "QBoxPlotModelMapper_setFirst");
 
 function  QBoxPlotModelMapper_count(handle:not null QMapperH) return integer;
 pragma Import(C,QBoxPlotModelMapper_count, "QBoxPlotModelMapper_count");
 
 procedure QBoxPlotModelMapper_setCount(handle:not null QMapperH;count:integer);
 pragma Import(C,QBoxPlotModelMapper_setCount, "QBoxPlotModelMapper_setCount");
 
 function  QBoxPlotModelMapper_firstBoxSetSection(handle:not null QMapperH) return integer;
 pragma Import(C,QBoxPlotModelMapper_firstBoxSetSection, "QBoxPlotModelMapper_firstBoxSetSection");
 
 procedure QBoxPlotModelMapper_setFirstBoxSetSection(handle:not null QMapperH;firstBoxSetSection:integer);
 pragma Import(C,QBoxPlotModelMapper_setFirstBoxSetSection, "QBoxPlotModelMapper_setFirstBoxSetSection");
 
 function  QBoxPlotModelMapper_lastBoxSetSection(handle:not null QMapperH) return integer;
 pragma Import(C,QBoxPlotModelMapper_lastBoxSetSection, "QBoxPlotModelMapper_lastBoxSetSection");
 
 procedure QBoxPlotModelMapper_setLastBoxSetSection(handle:not null QMapperH;lastBoxSetSection:integer);
 pragma Import(C,QBoxPlotModelMapper_setLastBoxSetSection, "QBoxPlotModelMapper_setLastBoxSetSection");
 
 function  QBoxPlotModelMapper_orientation(handle:not null QMapperH) return QtOrientation;
 pragma Import(C,QBoxPlotModelMapper_orientation, "QBoxPlotModelMapper_orientation");
 
 procedure QBoxPlotModelMapper_setOrientation(handle:not null QMapperH;orientation:QtOrientation);
 pragma Import(C,QBoxPlotModelMapper_setOrientation, "QBoxPlotModelMapper_setOrientation");
 
end;
