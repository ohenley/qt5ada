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

with Qt.QAbstractSeries;
package Qt.QHorizontalPercentBarSeries  is

 function  QHorizontalPercentBarSeries_create(parent:QObjectH := null) return QSeriesH;
 pragma Import(C,QHorizontalPercentBarSeries_create, "QHorizontalPercentBarSeries_create");
 
 procedure QHorizontalPercentBarSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QHorizontalPercentBarSeries_destroy, "QHorizontalPercentBarSeries_destroy");
 
 function  QHorizontalPercentBarSeries_type(handle:not null QSeriesH) return Qt.QAbstractSeries.SeriesType;
 pragma Import(C,QHorizontalPercentBarSeries_type, "QHorizontalPercentBarSeries_type");
 

end;
