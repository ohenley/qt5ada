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

with Qt.QAbstractSeries;
package Qt.QAreaSeries is

 function  QAreaSeries_create(parent:QObjectH := null) return QSeriesH;
 pragma Import(C,QAreaSeries_create, "QAreaSeries_create");
 
 function  QAreaSeries_create2(upperSeries: QSeriesH;lowerSeries : QSeriesH := null) return QSeriesH;
 pragma Import(C,QAreaSeries_create2, "QAreaSeries_create2");
 
 procedure QAreaSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QAreaSeries_destroy, "QAreaSeries_destroy");
 
 function  QAreaSeries_type(handle:not null QSeriesH) return Qt.QAbstractSeries.SeriesType;
 pragma Import(C,QAreaSeries_type, "QAreaSeries_type");
 
 procedure QAreaSeries_setUpperSeries(handle:not null QSeriesH;series:QSeriesH);
 pragma Import(C,QAreaSeries_setUpperSeries, "QAreaSeries_setUpperSeries");
 
 function  QAreaSeries_upperSeries(handle:not null QSeriesH) return QSeriesH;
 pragma Import(C,QAreaSeries_upperSeries, "QAreaSeries_upperSeries");
 
 procedure QAreaSeries_setLowerSeries(handle:not null QSeriesH;series:QSeriesH);
 pragma Import(C,QAreaSeries_setLowerSeries, "QAreaSeries_setLowerSeries");
 
 function  QAreaSeries_lowerSeries(handle:not null QSeriesH) return QSeriesH;
 pragma Import(C,QAreaSeries_lowerSeries, "QAreaSeries_lowerSeries");
 
 procedure QAreaSeries_setPen(handle:not null QSeriesH;pen: QPenH);
 pragma Import(C,QAreaSeries_setPen, "QAreaSeries_setPen");
 
 function  QAreaSeries_pen(handle:not null QSeriesH) return QPenH;
 pragma Import(C,QAreaSeries_pen, "QAreaSeries_pen");
 
 procedure QAreaSeries_setBrush(handle:not null QSeriesH;brush: QBrushH);
 pragma Import(C,QAreaSeries_setBrush, "QAreaSeries_setBrush");
 
 function  QAreaSeries_brush(handle:not null QSeriesH) return QBrushH;
 pragma Import(C,QAreaSeries_brush, "QAreaSeries_brush");
 
 procedure QAreaSeries_setColor(handle:not null QSeriesH;color: QColorH);
 pragma Import(C,QAreaSeries_setColor, "QAreaSeries_setColor");
 
 function  QAreaSeries_color(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QAreaSeries_color, "QAreaSeries_color");
 
 procedure QAreaSeries_setBorderColor(handle:not null QSeriesH;color: QColorH);
 pragma Import(C,QAreaSeries_setBorderColor, "QAreaSeries_setBorderColor");
 
 function  QAreaSeries_borderColor(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QAreaSeries_borderColor, "QAreaSeries_borderColor");
 
 procedure QAreaSeries_setPointsVisible(handle:not null QSeriesH;visible :boolean :=  true);
 pragma Import(C,QAreaSeries_setPointsVisible, "QAreaSeries_setPointsVisible");
 
 function  QAreaSeries_pointsVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QAreaSeries_pointsVisible, "QAreaSeries_pointsVisible");
 
 procedure QAreaSeries_setPointLabelsFormat(handle:not null QSeriesH;format:QStringH);
 pragma Import(C,QAreaSeries_setPointLabelsFormat, "QAreaSeries_setPointLabelsFormat");
 
 function  QAreaSeries_pointLabelsFormat(handle:not null QSeriesH) return QStringH;
 pragma Import(C,QAreaSeries_pointLabelsFormat, "QAreaSeries_pointLabelsFormat");
 
 procedure QAreaSeries_setPointLabelsVisible(handle:not null QSeriesH;visible :boolean :=  true);
 pragma Import(C,QAreaSeries_setPointLabelsVisible, "QAreaSeries_setPointLabelsVisible");
 
 function  QAreaSeries_pointLabelsVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QAreaSeries_pointLabelsVisible, "QAreaSeries_pointLabelsVisible");
 
 procedure QAreaSeries_setPointLabelsFont(handle:not null QSeriesH;font: QFontH);
 pragma Import(C,QAreaSeries_setPointLabelsFont, "QAreaSeries_setPointLabelsFont");
 
 function  QAreaSeries_pointLabelsFont(handle:not null QSeriesH) return QFontH;
 pragma Import(C,QAreaSeries_pointLabelsFont, "QAreaSeries_pointLabelsFont");
 
 procedure QAreaSeries_setPointLabelsColor(handle:not null QSeriesH;color: QColorH);
 pragma Import(C,QAreaSeries_setPointLabelsColor, "QAreaSeries_setPointLabelsColor");
 
 function  QAreaSeries_pointLabelsColor(handle:not null QSeriesH) return QColorH;
 pragma Import(C,QAreaSeries_pointLabelsColor, "QAreaSeries_pointLabelsColor");
 
 procedure QAreaSeries_setPointLabelsClipping(handle:not null QSeriesH;enabled :boolean :=  true);
 pragma Import(C,QAreaSeries_setPointLabelsClipping, "QAreaSeries_setPointLabelsClipping");
 
 function  QAreaSeries_pointLabelsClipping(handle:not null QSeriesH) return boolean;
 pragma Import(C,QAreaSeries_pointLabelsClipping, "QAreaSeries_pointLabelsClipping");
 
 type pointFCallbackH is access procedure(p: QPointFH);
 pragma convention(C,pointFCallbackH);

 type pointFBoolCallbackH is access procedure(p1: QPointFH;p2:boolean);
 pragma convention(C,pointFBoolCallbackH);

 type colorCallbackH is access procedure(p: QColorH);
 pragma convention(C,colorCallbackH);

 type fontCallbackH is access procedure(p: QFontH);
 pragma convention(C,fontCallbackH);

 procedure QAreaSeries_signal_slot_clicked(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_clicked, "QAreaSeries_signal_slot_clicked");
 
 procedure QAreaSeries_signal_slot_hovered(handle:not null QSeriesH;hook:pointFBoolCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_hovered, "QAreaSeries_signal_slot_hovered");
 
 procedure QAreaSeries_signal_slot_pressed(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_pressed, "QAreaSeries_signal_slot_pressed");
 
 procedure QAreaSeries_signal_slot_released(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_released, "QAreaSeries_signal_slot_released");
 
 procedure QAreaSeries_signal_slot_doubleClicked(handle:not null QSeriesH;hook:pointFCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_doubleClicked, "QAreaSeries_signal_slot_doubleClicked");
 
 procedure QAreaSeries_signal_slot_selected(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_selected, "QAreaSeries_signal_slot_selected");
 
 procedure QAreaSeries_signal_slot_colorChanged(handle:not null QSeriesH;hook:colorCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_colorChanged, "QAreaSeries_signal_slot_colorChanged");
 
 procedure QAreaSeries_signal_slot_borderColorChanged(handle:not null QSeriesH;hook:colorCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_borderColorChanged, "QAreaSeries_signal_slot_borderColorChanged");
 
 procedure QAreaSeries_signal_slot_pointLabelsFormatChanged(handle:not null QSeriesH;hook:QStringCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_pointLabelsFormatChanged, "QAreaSeries_signal_slot_pointLabelsFormatChanged");
 
 procedure QAreaSeries_signal_slot_pointLabelsVisibilityChanged(handle:not null QSeriesH;hook:boolCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_pointLabelsVisibilityChanged, "QAreaSeries_signal_slot_pointLabelsVisibilityChanged");
 
 procedure QAreaSeries_signal_slot_pointLabelsFontChanged(handle:not null QSeriesH;hook:fontCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_pointLabelsFontChanged, "QAreaSeries_signal_slot_pointLabelsFontChanged");
 
 procedure QAreaSeries_signal_slot_pointLabelsColorChanged(handle:not null QSeriesH;hook:colorCallbackH);
 pragma Import(C,QAreaSeries_signal_slot_pointLabelsColorChanged, "QAreaSeries_signal_slot_pointLabelsColorChanged");
 
 procedure QAreaSeries_signal_slot_pointLabelsClippingChanged(handle:not null QSeriesH;hook:boolCallbackH);  
 pragma Import(C,QAreaSeries_signal_slot_pointLabelsClippingChanged, "QAreaSeries_signal_slot_pointLabelsClippingChanged");
 
 function  QAreaSeries_create(upperSeries: QSeriesH;lowerSeries : QSeriesH := null) return QSeriesH;

end;
