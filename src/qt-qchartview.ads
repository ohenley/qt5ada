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

package Qt.QChartview is

 type RubberBands is new integer;

 NoRubberBand        : constant RubberBands := 0;
 VerticalRubberBand  : constant RubberBands := 1;
 HorizontalRubberBand: constant RubberBands := 2;
 RectangleRubberBand : constant RubberBands := 3;
 
 function  QChartView_create(parent:QWidgetH := null) return QGraphicsViewH;
 pragma Import(C,QChartView_create, "QChartView_create");
 
 function  QChartView_create2(chart:QChartH;parent:QWidgetH := null) return QGraphicsViewH;
 pragma Import(C,QChartView_create2, "QChartView_create2");
 
 procedure QChartView_destroy(handle: not null QGraphicsViewH);
 pragma Import(C,QChartView_destroy, "QChartView_destroy");
 
 procedure QChartView_setRubberBand(handle: not null QGraphicsViewH;rBands:RubberBands);
 pragma Import(C,QChartView_setRubberBand, "QChartView_setRubberBand");
 
 function  QChartView_rubberBand(handle: not null QGraphicsViewH) return RubberBands;
 pragma Import(C,QChartView_rubberBand, "QChartView_rubberBand");
 
 function  QChartView_chart(handle: not null QGraphicsViewH) return QChartH;
 pragma Import(C,QChartView_chart, "QChartView_chart");
 
 procedure QChartView_setChart(handle: not null QGraphicsViewH;chart:QChartH);
 pragma Import(C,QChartView_setChart, "QChartView_setChart");
 
 function  QChartView_create(chart:QChartH;parent:QWidgetH := null) return QGraphicsViewH;

end;
