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

package Qt.QPieModelMapper is

 function  QPieModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QPieModelMapper_create, "QPieModelMapper_create");
 
 function  QPieModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QPieModelMapper_model, "QPieModelMapper_model");
 
 procedure QPieModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QPieModelMapper_setModel, "QPieModelMapper_setModel");
 
 function  QPieModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QPieModelMapper_series, "QPieModelMapper_series");
 
 procedure QPieModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QPieModelMapper_setSeries, "QPieModelMapper_setSeries");
 
 function  QPieModelMapper_first(handle:not null QMapperH) return integer;
 pragma Import(C,QPieModelMapper_first, "QPieModelMapper_first");
 
 procedure QPieModelMapper_setFirst(handle:not null QMapperH;first:integer);
 pragma Import(C,QPieModelMapper_setFirst, "QPieModelMapper_setFirst");
 
 function  QPieModelMapper_count(handle:not null QMapperH) return integer;
 pragma Import(C,QPieModelMapper_count, "QPieModelMapper_count");
 
 procedure QPieModelMapper_setCount(handle:not null QMapperH;count:integer);
 pragma Import(C,QPieModelMapper_setCount, "QPieModelMapper_setCount");
 
 function  QPieModelMapper_valuesSection(handle:not null QMapperH) return integer;
 pragma Import(C,QPieModelMapper_valuesSection, "QPieModelMapper_valuesSection");
 
 procedure QPieModelMapper_setValuesSection(handle:not null QMapperH;valuesSection:integer);
 pragma Import(C,QPieModelMapper_setValuesSection, "QPieModelMapper_setValuesSection");
 
 function  QPieModelMapper_labelsSection(handle:not null QMapperH) return integer;
 pragma Import(C,QPieModelMapper_labelsSection, "QPieModelMapper_labelsSection");
 
 procedure QPieModelMapper_setLabelsSection(handle:not null QMapperH;labelsSection:integer);
 pragma Import(C,QPieModelMapper_setLabelsSection, "QPieModelMapper_setLabelsSection");
 
 function  QPieModelMapper_orientation(handle:not null QMapperH) return QtOrientation;
 pragma Import(C,QPieModelMapper_orientation, "QPieModelMapper_orientation");
 
 procedure QPieModelMapper_setOrientation(handle:not null QMapperH;orientation:QtOrientation);
 pragma Import(C,QPieModelMapper_setOrientation, "QPieModelMapper_setOrientation");
 

end;
