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

with Qt.QLegendMarker;
package Qt.QBarLegendMarker is

 function  QBarLegendMarker_create(series:QSeriesH;barset: QSetH;legend: QLegendH;parent : QObjectH :=  null) return QMarkerH;
 pragma Import(C,QBarLegendMarker_create, "QBarLegendMarker_create");
 
 procedure QBarLegendMarker_destroy(handle:not null QMarkerH);
 pragma Import(C,QBarLegendMarker_destroy, "QBarLegendMarker_destroy");
 
 function  QBarLegendMarker_type(handle:not null QMarkerH) return Qt.QLegendMarker.LegendMarkerType;
 pragma Import(C,QBarLegendMarker_type, "QBarLegendMarker_type");
 
 function  QBarLegendMarker_series(handle:not null QMarkerH) return QSeriesH;
 pragma Import(C,QBarLegendMarker_series, "QBarLegendMarker_series");
 
 function  QBarLegendMarker_barset(handle:not null QMarkerH) return QSetH;
 pragma Import(C,QBarLegendMarker_barset, "QBarLegendMarker_barset");
 
end;
