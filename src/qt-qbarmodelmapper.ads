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

package Qt.QBarModelMapper is

 function  QBarModelMapperu_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QBarModelMapperu_create, "QBarModelMapperu_create");
 
 function  QBarModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QBarModelMapper_model, "QBarModelMapper_model");
 
 procedure QBarModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QBarModelMapper_setModel, "QBarModelMapper_setModel");
 
 function  QBarModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QBarModelMapper_series, "QBarModelMapper_series");
 
 procedure QBarModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QBarModelMapper_setSeries, "QBarModelMapper_setSeries");
 
 function  QBarModelMapper_first(handle:not null QMapperH) return integer;
 pragma Import(C,QBarModelMapper_first, "QBarModelMapper_first");
 
 procedure QBarModelMapper_setFirst(handle:not null QMapperH;first:integer);
 pragma Import(C,QBarModelMapper_setFirst, "QBarModelMapper_setFirst");
 
 function  QBarModelMapper_count(handle:not null QMapperH) return integer;
 pragma Import(C,QBarModelMapper_count, "QBarModelMapper_count");
 
 procedure QBarModelMapper_setCount(handle:not null QMapperH;count:integer);
 pragma Import(C,QBarModelMapper_setCount, "QBarModelMapper_setCount");
 
 function  QBarModelMapper_firstBarSetSection(handle:not null QMapperH) return integer;
 pragma Import(C,QBarModelMapper_firstBarSetSection, "QBarModelMapper_firstBarSetSection");
 
 procedure QBarModelMapper_setFirstBarSetSection(handle:not null QMapperH;firstBarSetSection:integer);
 pragma Import(C,QBarModelMapper_setFirstBarSetSection, "QBarModelMapper_setFirstBarSetSection");
 
 function  QBarModelMapper_lastBarSetSection(handle:not null QMapperH) return integer;
 pragma Import(C,QBarModelMapper_lastBarSetSection, "QBarModelMapper_lastBarSetSection");
 
 procedure QBarModelMapper_setLastBarSetSection(handle:not null QMapperH;lastBarSetSection:integer);
 pragma Import(C,QBarModelMapper_setLastBarSetSection, "QBarModelMapper_setLastBarSetSection");
 
 function  QBarModelMapper_orientation(handle:not null QMapperH) return QtOrientation;
 pragma Import(C,QBarModelMapper_orientation, "QBarModelMapper_orientation");
 
 procedure QBarModelMapper_setOrientation(handle:not null QMapperH;orientation:QtOrientation);
 pragma Import(C,QBarModelMapper_setOrientation, "QBarModelMapper_setOrientation");
 
end;
