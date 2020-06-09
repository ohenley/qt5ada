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
package Qt.QScatterSeries  is

 type MarkerShape is (MarkerShapeCircle,MarkerShapeRectangle); 
 pragma convention(C,MarkerShape);

 function  QScatterSeries_create(parent:QObjectH := null) return QSeriesH;
 pragma Import(C,QScatterSeries_create, "QScatterSeries_create");
 
 procedure QScatterSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QScatterSeries_destroy, "QScatterSeries_destroy");
 
 function  QScatterSeries_type(handle:not null QSeriesH) return Qt.QAbstractSeries.SeriesType;
 pragma Import(C,QScatterSeries_type, "QScatterSeries_type");
 
 procedure QScatterSeries_setPen(handle:not null QSeriesH;pen:QPenH);
 pragma Import(C,QScatterSeries_setPen, "QScatterSeries_setPen");
 
 procedure QScatterSeries_setBrush(handle:not null QSeriesH;brush:QBrushH);
 pragma Import(C,QScatterSeries_setBrush, "QScatterSeries_setBrush");
 
 function  QScatterSeries_brush(handle:not null QSeriesH) return QBrushH;
 pragma Import(C,QScatterSeries_brush, "QScatterSeries_brush");
 
 procedure QScatterSeries_setColor(handle:not null QSeriesH;color:QColorH);
 pragma Import(C,QScatterSeries_setColor, "QScatterSeries_setColor");
 
 function  QScatterSeries_color(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QScatterSeries_color, "QScatterSeries_color");
 
 procedure QScatterSeries_setBorderColor(handle:not null QSeriesH;color:QColorH);
 pragma Import(C,QScatterSeries_setBorderColor, "QScatterSeries_setBorderColor");
 
 function  QScatterSeries_borderColor(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QScatterSeries_borderColor, "QScatterSeries_borderColor");
 
 function  QScatterSeries_markerShape(handle:not null QSeriesH) return MarkerShape;
 pragma Import(C,QScatterSeries_markerShape, "QScatterSeries_markerShape");
 
 procedure QScatterSeries_setMarkerShape(handle:not null QSeriesH;shape:MarkerShape);
 pragma Import(C,QScatterSeries_setMarkerShape, "QScatterSeries_setMarkerShape");
 
 function  QScatterSeries_markerSize(handle:not null QSeriesH) return qreal;
 pragma Import(C,QScatterSeries_markerSize, "QScatterSeries_markerSize");
 
 procedure QScatterSeries_setMarkerSize(handle:not null QSeriesH;size:qreal);
 pragma Import(C,QScatterSeries_setMarkerSize, "QScatterSeries_setMarkerSize");
 
 type colorCallbackH is access procedure(p: QColorH);
 pragma convention(C,colorCallbackH);

 type shapeCallbackH is access procedure(shape:MarkerShape);
 pragma convention(C,shapeCallbackH);
 
 procedure QScatterSeries_signal_slot_colorChanged(handle:not null QSeriesH;hook:colorCallbackH);
 pragma Import(C,QScatterSeries_signal_slot_colorChanged, "QScatterSeries_signal_slot_colorChanged");
 
 procedure QScatterSeries_signal_slot_borderColorChanged(handle:not null QSeriesH;hook:colorCallbackH);
 pragma Import(C,QScatterSeries_signal_slot_borderColorChanged, "QScatterSeries_signal_slot_borderColorChanged");
 
 procedure QScatterSeries_signal_slot_markerShapeChanged(handle:not null QSeriesH;hook:shapeCallbackH);
 pragma Import(C,QScatterSeries_signal_slot_markerShapeChanged, "QScatterSeries_signal_slot_markerShapeChanged");
 
 procedure QScatterSeries_signal_slot_markerSizeChanged(handle:not null QSeriesH;hook:qrealCallbackH);
 pragma Import(C,QScatterSeries_signal_slot_markerSizeChanged, "QScatterSeries_signal_slot_markerSizeChanged");
 

end;
