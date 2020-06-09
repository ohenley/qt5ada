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

package Qt.QXYModelMapper is


 function  QXYModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QXYModelMapper_create, "QXYModelMapper_create");
 
 function  QXYModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QXYModelMapper_model, "QXYModelMapper_model");
 
 procedure QXYModelMapper_setModel(handle:not null QMapperH;model :QAbstractItemModelH);
 pragma Import(C,QXYModelMapper_setModel, "QXYModelMapper_setModel");
 
 function  QXYModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QXYModelMapper_series, "QXYModelMapper_series");
 
 procedure QXYModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QXYModelMapper_setSeries, "QXYModelMapper_setSeries");
 
 function  QXYModelMapper_first(handle:not null QMapperH) return integer;
 pragma Import(C,QXYModelMapper_first, "QXYModelMapper_first");
 
 procedure QXYModelMapper_setFirst(handle:not null QMapperH;first:integer);
 pragma Import(C,QXYModelMapper_setFirst, "QXYModelMapper_setFirst");
 
 function  QXYModelMapper_count(handle:not null QMapperH) return integer;
 pragma Import(C,QXYModelMapper_count, "QXYModelMapper_count");
 
 procedure QXYModelMapper_setCount(handle:not null QMapperH;count:integer);
 pragma Import(C,QXYModelMapper_setCount, "QXYModelMapper_setCount");
 
 function  QXYModelMapper_orientation(handle:not null QMapperH) return QtOrientation;
 pragma Import(C,QXYModelMapper_orientation, "QXYModelMapper_orientation");
 
 procedure QXYModelMapper_setOrientation(handle:not null QMapperH;orientation:QtOrientation);
 pragma Import(C,QXYModelMapper_setOrientation, "QXYModelMapper_setOrientation");
 
 function  QXYModelMapper_xSection(handle:not null QMapperH) return integer;
 pragma Import(C,QXYModelMapper_xSection, "QXYModelMapper_xSection");
 
 procedure QXYModelMapper_setXSection(handle:not null QMapperH;xSection:integer);
 pragma Import(C,QXYModelMapper_setXSection, "QXYModelMapper_setXSection");
 
 function  QXYModelMapper_ySection(handle:not null QMapperH) return integer;
 pragma Import(C,QXYModelMapper_ySection, "QXYModelMapper_ySection");
 
 procedure QXYModelMapper_setYSection(handle:not null QMapperH;ySection:integer);
 pragma Import(C,QXYModelMapper_setYSection, "QXYModelMapper_setYSection");
 

end;
