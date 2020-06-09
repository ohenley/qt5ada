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

package Qt.QPieSlice is

 type LabelPosition is (LabelOutside,LabelInsideHorizontal,LabelInsideTangential,LabelInsideNormal);
 pragma convention(C,LabelPosition);

 function  QPieSlice_create(parent:QObjectH := null) return QPieSliceH;
 pragma Import(C,QPieSlice_create, "QPieSlice_create");
 
 function  QPieSlice_create2(label:QStringH;value: qreal;parent : QObjectH := null) return QPieSliceH;
 pragma Import(C,QPieSlice_create2, "QPieSlice_create2");
 
 procedure QPieSlice_destroy(handle:not null QPieSliceH);
 pragma Import(C,QPieSlice_destroy, "QPieSlice_destroy");
 
 procedure QPieSlice_setLabel(handle:not null QPieSliceH;label:QStringH);
 pragma Import(C,QPieSlice_setLabel, "QPieSlice_setLabel");
 
 function  QPieSlice_label(handle:not null QPieSliceH) return QStringH;
 pragma Import(C,QPieSlice_label, "QPieSlice_label");
 
 procedure QPieSlice_setValue(handle:not null QPieSliceH;value:qreal);
 pragma Import(C,QPieSlice_setValue, "QPieSlice_setValue");
 
 function  QPieSlice_value(handle:not null QPieSliceH) return qreal;
 pragma Import(C,QPieSlice_value, "QPieSlice_value");
 
 procedure QPieSlice_setLabelVisible(handle:not null QPieSliceH;visible :boolean :=  true);
 pragma Import(C,QPieSlice_setLabelVisible, "QPieSlice_setLabelVisible");
 
 function  QPieSlice_isLabelVisible(handle:not null QPieSliceH) return boolean;
 pragma Import(C,QPieSlice_isLabelVisible, "QPieSlice_isLabelVisible");
 
 function  QPieSlice_labelPosition(handle:not null QPieSliceH) return LabelPosition;
 pragma Import(C,QPieSlice_labelPosition, "QPieSlice_labelPosition");
 
 procedure QPieSlice_setLabelPosition(handle:not null QPieSliceH;position:LabelPosition);
 pragma Import(C,QPieSlice_setLabelPosition, "QPieSlice_setLabelPosition");
 
 procedure QPieSlice_setExploded(handle:not null QPieSliceH;exploded :boolean :=  true);
 pragma Import(C,QPieSlice_setExploded, "QPieSlice_setExploded");
 
 function  QPieSlice_isExploded(handle:not null QPieSliceH) return boolean;
 pragma Import(C,QPieSlice_isExploded, "QPieSlice_isExploded");
 
 procedure QPieSlice_setPen(handle:not null QPieSliceH;pen:QPenH);
 pragma Import(C,QPieSlice_setPen, "QPieSlice_setPen");
 
 function  QPieSlice_pen(handle:not null QPieSliceH) return QPenH;
 pragma Import(C,QPieSlice_pen, "QPieSlice_pen");
 
 function  QPieSlice_borderColor(handle:not null QPieSliceH) return QColorH;
 pragma Import(C,QPieSlice_borderColor, "QPieSlice_borderColor");
 
 procedure QPieSlice_setBorderColor(handle:not null QPieSliceH;color:QColorH);
 pragma Import(C,QPieSlice_setBorderColor, "QPieSlice_setBorderColor");
 
 function  QPieSlice_borderWidth(handle:not null QPieSliceH) return integer;
 pragma Import(C,QPieSlice_borderWidth, "QPieSlice_borderWidth");
 
 procedure QPieSlice_setBorderWidth(handle:not null QPieSliceH;width:integer);
 pragma Import(C,QPieSlice_setBorderWidth, "QPieSlice_setBorderWidth");
 
 procedure QPieSlice_setBrush(handle:not null QPieSliceH;brush:QBrushH);
 pragma Import(C,QPieSlice_setBrush, "QPieSlice_setBrush");
 
 function  QPieSlice_brush(handle:not null QPieSliceH) return QBrushH;
 pragma Import(C,QPieSlice_brush, "QPieSlice_brush");
 
 function  QPieSlice_color(handle:not null QPieSliceH) return QColorH;
 pragma Import(C,QPieSlice_color, "QPieSlice_color");
 
 procedure QPieSlice_setColor(handle:not null QPieSliceH;color:QColorH);
 pragma Import(C,QPieSlice_setColor, "QPieSlice_setColor");
 
 procedure QPieSlice_setLabelBrush(handle:not null QPieSliceH;brush:QBrushH);
 pragma Import(C,QPieSlice_setLabelBrush, "QPieSlice_setLabelBrush");
 
 function  QPieSlice_labelBrush(handle:not null QPieSliceH) return QBrushH;
 pragma Import(C,QPieSlice_labelBrush, "QPieSlice_labelBrush");
 
 function  QPieSlice_labelColor(handle:not null QPieSliceH) return QColorH;
 pragma Import(C,QPieSlice_labelColor, "QPieSlice_labelColor");
 
 procedure QPieSlice_setLabelColor(handle:not null QPieSliceH;color:QColorH);
 pragma Import(C,QPieSlice_setLabelColor, "QPieSlice_setLabelColor");
 
 procedure QPieSlice_setLabelFont(handle:not null QPieSliceH;font:QFontH);
 pragma Import(C,QPieSlice_setLabelFont, "QPieSlice_setLabelFont");
 
 function  QPieSlice_labelFont(handle:not null QPieSliceH) return QFontH;
 pragma Import(C,QPieSlice_labelFont, "QPieSlice_labelFont");
 
 procedure QPieSlice_setLabelArmLengthFactor(handle:not null QPieSliceH;factor:qreal);
 pragma Import(C,QPieSlice_setLabelArmLengthFactor, "QPieSlice_setLabelArmLengthFactor");
 
 function  QPieSlice_labelArmLengthFactor(handle:not null QPieSliceH) return qreal;
 pragma Import(C,QPieSlice_labelArmLengthFactor, "QPieSlice_labelArmLengthFactor");
 
 procedure QPieSlice_setExplodeDistanceFactor(handle:not null QPieSliceH;factor:qreal);
 pragma Import(C,QPieSlice_setExplodeDistanceFactor, "QPieSlice_setExplodeDistanceFactor");
 
 function  QPieSlice_explodeDistanceFactor(handle:not null QPieSliceH) return qreal;
 pragma Import(C,QPieSlice_explodeDistanceFactor, "QPieSlice_explodeDistanceFactor");
 
 function  QPieSlice_percentage(handle:not null QPieSliceH) return qreal;
 pragma Import(C,QPieSlice_percentage, "QPieSlice_percentage");
 
 function  QPieSlice_startAngle(handle:not null QPieSliceH) return qreal;
 pragma Import(C,QPieSlice_startAngle, "QPieSlice_startAngle");
 
 function  QPieSlice_angleSpan(handle:not null QPieSliceH) return qreal;
 pragma Import(C,QPieSlice_angleSpan, "QPieSlice_angleSpan");
 
 function  QPieSlice_series(handle:not null QPieSliceH) return QSeriesH;
 pragma Import(C,QPieSlice_series, "QPieSlice_series");
 

 procedure QPieSlice_signal_slot_clicked(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_clicked, "QPieSlice_signal_slot_clicked");
 
 procedure QPieSlice_signal_slot_hovered(handle:not null QPieSliceH;hook:boolCallbackH);
 pragma Import(C,QPieSlice_signal_slot_hovered, "QPieSlice_signal_slot_hovered");
 
 procedure QPieSlice_signal_slot_pressed(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_pressed, "QPieSlice_signal_slot_pressed");
 
 procedure QPieSlice_signal_slot_released(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_released, "QPieSlice_signal_slot_released");
 
 procedure QPieSlice_signal_slot_doubleClicked(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_doubleClicked, "QPieSlice_signal_slot_doubleClicked");
 
 procedure QPieSlice_signal_slot_labelChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_labelChanged, "QPieSlice_signal_slot_labelChanged");
 
 procedure QPieSlice_signal_slot_valueChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_valueChanged, "QPieSlice_signal_slot_valueChanged");
 
 procedure QPieSlice_signal_slot_labelVisibleChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_labelVisibleChanged, "QPieSlice_signal_slot_labelVisibleChanged");
 
 procedure QPieSlice_signal_slot_penChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_penChanged, "QPieSlice_signal_slot_penChanged");
 
 procedure QPieSlice_signal_slot_brushChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_brushChanged, "QPieSlice_signal_slot_brushChanged");
 
 procedure QPieSlice_signal_slot_labelBrushChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_labelBrushChanged, "QPieSlice_signal_slot_labelBrushChanged");
 
 procedure QPieSlice_signal_slot_labelFontChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_labelFontChanged, "QPieSlice_signal_slot_labelFontChanged");
 
 procedure QPieSlice_signal_slot_percentageChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_percentageChanged, "QPieSlice_signal_slot_percentageChanged");
 
 procedure QPieSlice_signal_slot_startAngleChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_startAngleChanged, "QPieSlice_signal_slot_startAngleChanged");
 
 procedure QPieSlice_signal_slot_angleSpanChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_angleSpanChanged, "QPieSlice_signal_slot_angleSpanChanged");
 
 procedure QPieSlice_signal_slot_colorChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_colorChanged, "QPieSlice_signal_slot_colorChanged");
 
 procedure QPieSlice_signal_slot_borderColorChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_borderColorChanged, "QPieSlice_signal_slot_borderColorChanged");
 
 procedure QPieSlice_signal_slot_borderWidthChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_borderWidthChanged, "QPieSlice_signal_slot_borderWidthChanged");
 
 procedure QPieSlice_signal_slot_labelColorChanged(handle:not null QPieSliceH;hook:voidCallbackH);
 pragma Import(C,QPieSlice_signal_slot_labelColorChanged, "QPieSlice_signal_slot_labelColorChanged");
 
 function  QPieSlice_create(label:QStringH;value: qreal;parent : QObjectH := null) return QPieSliceH;

end;
