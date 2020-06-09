--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

-- with Interfaces.C;  use Interfaces.C;
package Qt.QAbstractAxis is

 type AxisType is new integer;
 AxisTypeNoAxis      : constant AxisType :=     0;
 AxisTypeValue       : constant AxisType :=     1;
 AxisTypeBarCategory : constant AxisType :=     2;
 AxisTypeCategory    : constant AxisType :=     4;
 AxisTypeDateTime    : constant AxisType :=     8;
 AxisTypeLogValue    : constant AxisType := 16#10#; 

 procedure QAbstractAxis_destroy(handle: not null QAxisH);
 pragma Import(C,QAbstractAxis_destroy, "QAbstractAxis_destroy");
 
 function  QAbstractAxis_type(handle: not null QAxisH) return AxisType;
 pragma Import(C,QAbstractAxis_type, "QAbstractAxis_type");
 
 function  QAbstractAxis_isVisible(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_isVisible, "QAbstractAxis_isVisible");
 
 procedure QAbstractAxis_setVisible(handle: not null QAxisH;visible :boolean :=  true);
 pragma Import(C,QAbstractAxis_setVisible, "QAbstractAxis_setVisible");
 
 procedure QAbstractAxis_show(handle: not null QAxisH);
 pragma Import(C,QAbstractAxis_show, "QAbstractAxis_show");
 
 procedure QAbstractAxis_hide(handle: not null QAxisH);
 pragma Import(C,QAbstractAxis_hide, "QAbstractAxis_hide");
 
 function  QAbstractAxis_isLineVisible(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_isLineVisible, "QAbstractAxis_isLineVisible");
 
 procedure QAbstractAxis_setLineVisible(handle: not null QAxisH;visible :boolean :=  true);
 pragma Import(C,QAbstractAxis_setLineVisible, "QAbstractAxis_setLineVisible");
 
 procedure QAbstractAxis_setLinePen(handle: not null QAxisH;pen:QPenH);
 pragma Import(C,QAbstractAxis_setLinePen, "QAbstractAxis_setLinePen");
 
 function  QAbstractAxis_linePen(handle: not null QAxisH) return QPenH;
 pragma Import(C,QAbstractAxis_linePen, "QAbstractAxis_linePen");
 
 procedure QAbstractAxis_setLinePenColor(handle: not null QAxisH;color:QColorH);
 pragma Import(C,QAbstractAxis_setLinePenColor, "QAbstractAxis_setLinePenColor");
 
 function  QAbstractAxis_linePenColor(handle: not null QAxisH) return QColorH;
 pragma Import(C,QAbstractAxis_linePenColor, "QAbstractAxis_linePenColor");
 
 function  QAbstractAxis_isGridLineVisible(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_isGridLineVisible, "QAbstractAxis_isGridLineVisible");
 
 procedure QAbstractAxis_setGridLineVisible(handle: not null QAxisH;visible :boolean :=  true);
 pragma Import(C,QAbstractAxis_setGridLineVisible, "QAbstractAxis_setGridLineVisible");
 
 procedure QAbstractAxis_setGridLinePen(handle: not null QAxisH;pen:QPenH);
 pragma Import(C,QAbstractAxis_setGridLinePen, "QAbstractAxis_setGridLinePen");
 
 function  QAbstractAxis_gridLinePen(handle: not null QAxisH) return QPenH;
 pragma Import(C,QAbstractAxis_gridLinePen, "QAbstractAxis_gridLinePen");
 
 function  QAbstractAxis_isMinorGridLineVisible(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_isMinorGridLineVisible, "QAbstractAxis_isMinorGridLineVisible");
 
 procedure QAbstractAxis_setMinorGridLineVisible(handle: not null QAxisH;visible :boolean :=  true);
 pragma Import(C,QAbstractAxis_setMinorGridLineVisible, "QAbstractAxis_setMinorGridLineVisible");
 
 procedure QAbstractAxis_setMinorGridLinePen(handle: not null QAxisH;pen:QPenH);
 pragma Import(C,QAbstractAxis_setMinorGridLinePen, "QAbstractAxis_setMinorGridLinePen");
 
 function  QAbstractAxis_minorGridLinePen(handle: not null QAxisH) return QPenH;
 pragma Import(C,QAbstractAxis_minorGridLinePen, "QAbstractAxis_minorGridLinePen");
 
 procedure QAbstractAxis_setGridLineColor(handle: not null QAxisH;color:QColorH);
 pragma Import(C,QAbstractAxis_setGridLineColor, "QAbstractAxis_setGridLineColor");
 
 function  QAbstractAxis_gridLineColor(handle: not null QAxisH) return QColorH;
 pragma Import(C,QAbstractAxis_gridLineColor, "QAbstractAxis_gridLineColor");
 
 procedure QAbstractAxis_setMinorGridLineColor(handle: not null QAxisH;color: QColorH);
 pragma Import(C,QAbstractAxis_setMinorGridLineColor, "QAbstractAxis_setMinorGridLineColor");
 
 function  QAbstractAxis_minorGridLineColor(handle: not null QAxisH) return QColorH;
 pragma Import(C,QAbstractAxis_minorGridLineColor, "QAbstractAxis_minorGridLineColor");
 
 function  QAbstractAxis_labelsVisible(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_labelsVisible, "QAbstractAxis_labelsVisible");
 
 procedure QAbstractAxis_setLabelsVisible(handle: not null QAxisH;visible :boolean :=  true);
 pragma Import(C,QAbstractAxis_setLabelsVisible, "QAbstractAxis_setLabelsVisible");
 
 procedure QAbstractAxis_setLabelsBrush(handle: not null QAxisH;brush: QBrushH);
 pragma Import(C,QAbstractAxis_setLabelsBrush, "QAbstractAxis_setLabelsBrush");
 
 function  QAbstractAxis_labelsBrush(handle: not null QAxisH) return QBrushH;
 pragma Import(C,QAbstractAxis_labelsBrush, "QAbstractAxis_labelsBrush");
 
 procedure QAbstractAxis_setLabelsFont(handle: not null QAxisH;font: QFontH);
 pragma Import(C,QAbstractAxis_setLabelsFont, "QAbstractAxis_setLabelsFont");
 
 function  QAbstractAxis_labelsFont(handle: not null QAxisH) return QFontH;
 pragma Import(C,QAbstractAxis_labelsFont, "QAbstractAxis_labelsFont");
 
 procedure QAbstractAxis_setLabelsAngle(handle: not null QAxisH;angle:integer);
 pragma Import(C,QAbstractAxis_setLabelsAngle, "QAbstractAxis_setLabelsAngle");
 
 function  QAbstractAxis_labelsAngle(handle: not null QAxisH) return integer;
 pragma Import(C,QAbstractAxis_labelsAngle, "QAbstractAxis_labelsAngle");
 
 procedure QAbstractAxis_setLabelsColor(handle: not null QAxisH;color:QColorH);
 pragma Import(C,QAbstractAxis_setLabelsColor, "QAbstractAxis_setLabelsColor");
 
 function  QAbstractAxis_labelsColor(handle: not null QAxisH) return QColorH;
 pragma Import(C,QAbstractAxis_labelsColor, "QAbstractAxis_labelsColor");
 
 function  QAbstractAxis_isTitleVisible(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_isTitleVisible, "QAbstractAxis_isTitleVisible");
 
 procedure QAbstractAxis_setTitleVisible(handle: not null QAxisH;visible :boolean :=  true);
 pragma Import(C,QAbstractAxis_setTitleVisible, "QAbstractAxis_setTitleVisible");
 
 procedure QAbstractAxis_setTitleBrush(handle: not null QAxisH;brush: QBrushH);
 pragma Import(C,QAbstractAxis_setTitleBrush, "QAbstractAxis_setTitleBrush");
 
 function  QAbstractAxis_titleBrush(handle: not null QAxisH) return QBrushH;
 pragma Import(C,QAbstractAxis_titleBrush, "QAbstractAxis_titleBrush");
 
 procedure QAbstractAxis_setTitleFont(handle: not null QAxisH;font: QFontH);
 pragma Import(C,QAbstractAxis_setTitleFont, "QAbstractAxis_setTitleFont");
 
 function  QAbstractAxis_titleFont(handle: not null QAxisH) return QFontH;
 pragma Import(C,QAbstractAxis_titleFont, "QAbstractAxis_titleFont");
 
 procedure QAbstractAxis_setTitleText(handle: not null QAxisH;title: QStringH);
 pragma Import(C,QAbstractAxis_setTitleText, "QAbstractAxis_setTitleText");
 
 function  QAbstractAxis_titleText(handle: not null QAxisH) return QStringH;
 pragma Import(C,QAbstractAxis_titleText, "QAbstractAxis_titleText");
 
 function  QAbstractAxis_shadesVisible(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_shadesVisible, "QAbstractAxis_shadesVisible");
 
 procedure QAbstractAxis_setShadesVisible(handle: not null QAxisH;visible :boolean :=  true);
 pragma Import(C,QAbstractAxis_setShadesVisible, "QAbstractAxis_setShadesVisible");
 
 procedure QAbstractAxis_setShadesPen(handle: not null QAxisH;pen: QPenH);
 pragma Import(C,QAbstractAxis_setShadesPen, "QAbstractAxis_setShadesPen");
 
 function  QAbstractAxis_shadesPen(handle: not null QAxisH) return QPenH;
 pragma Import(C,QAbstractAxis_shadesPen, "QAbstractAxis_shadesPen");
 
 procedure QAbstractAxis_setShadesBrush(handle: not null QAxisH;brush: QBrushH);
 pragma Import(C,QAbstractAxis_setShadesBrush, "QAbstractAxis_setShadesBrush");
 
 function  QAbstractAxis_shadesBrush(handle: not null QAxisH) return QBrushH;
 pragma Import(C,QAbstractAxis_shadesBrush, "QAbstractAxis_shadesBrush");
 
 procedure QAbstractAxis_setShadesColor(handle: not null QAxisH;color:QColorH);
 pragma Import(C,QAbstractAxis_setShadesColor, "QAbstractAxis_setShadesColor");
 
 function  QAbstractAxis_shadesColor(handle: not null QAxisH) return QColorH;
 pragma Import(C,QAbstractAxis_shadesColor, "QAbstractAxis_shadesColor");
 
 procedure QAbstractAxis_setShadesBorderColor(handle: not null QAxisH;color:QColorH);
 pragma Import(C,QAbstractAxis_setShadesBorderColor, "QAbstractAxis_setShadesBorderColor");
 
 function  QAbstractAxis_shadesBorderColor(handle: not null QAxisH) return QColorH;
 pragma Import(C,QAbstractAxis_shadesBorderColor, "QAbstractAxis_shadesBorderColor");
 
 function  QAbstractAxis_orientation(handle: not null QAxisH) return QtOrientation;
 pragma Import(C,QAbstractAxis_orientation, "QAbstractAxis_orientation");
 
 function  QAbstractAxis_alignment(handle: not null QAxisH) return QtAlignment;
 pragma Import(C,QAbstractAxis_alignment, "QAbstractAxis_alignment");
 
 procedure QAbstractAxis_setMin(handle: not null QAxisH;min: QVariantH);
 pragma Import(C,QAbstractAxis_setMin, "QAbstractAxis_setMin");
 
 procedure QAbstractAxis_setMax(handle: not null QAxisH;max: QVariantH);
 pragma Import(C,QAbstractAxis_setMax, "QAbstractAxis_setMax");
 
 procedure QAbstractAxis_setRange(handle: not null QAxisH;min: QVariantH;max:  QVariantH);
 pragma Import(C,QAbstractAxis_setRange, "QAbstractAxis_setRange");
 
 procedure QAbstractAxis_setReverse(handle: not null QAxisH;isReverse :boolean :=  true);
 pragma Import(C,QAbstractAxis_setReverse, "QAbstractAxis_setReverse");
 
 function  QAbstractAxis_isReverse(handle: not null QAxisH) return boolean;
 pragma Import(C,QAbstractAxis_isReverse, "QAbstractAxis_isReverse");
 

 type penCallbackH is access procedure(pen:QPenH);
 pragma convention(C,penCallbackH);
 
 type fontCallbackH is access procedure(font:QFontH);
 pragma convention(C,fontCallbackH);
 
 type brushCallbackH is access procedure(brush:QBrushH);
 pragma convention(C,brushCallbackH);
 
 type colorCallbackH is access procedure(color:QColorH);
 pragma convention(C,colorCallbackH);
 
 procedure QAbstractAxis_signal_slot_visibleChanged(handle: not null QAxisH;callback: boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_visibleChanged, "QAbstractAxis_signal_slot_visibleChanged");
 

 procedure QAbstractAxis_signal_slot_linePenChanged(handle: not null QAxisH;callback:penCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_linePenChanged, "QAbstractAxis_signal_slot_linePenChanged");
 
 procedure QAbstractAxis_signal_slot_lineVisibleChanged(handle: not null QAxisH;callback:boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_lineVisibleChanged, "QAbstractAxis_signal_slot_lineVisibleChanged");
 
 procedure QAbstractAxis_signal_slot_labelsVisibleChanged(handle: not null QAxisH;callback:boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_labelsVisibleChanged, "QAbstractAxis_signal_slot_labelsVisibleChanged");
 
 procedure QAbstractAxis_signal_slot_labelsBrushChanged(handle: not null QAxisH;callback: brushCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_labelsBrushChanged, "QAbstractAxis_signal_slot_labelsBrushChanged");
 
 procedure QAbstractAxis_signal_slot_labelsFontChanged(handle: not null QAxisH;callback:fontCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_labelsFontChanged, "QAbstractAxis_signal_slot_labelsFontChanged");
 
 procedure QAbstractAxis_signal_slot_labelsAngleChanged(handle: not null QAxisH;callback:intCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_labelsAngleChanged, "QAbstractAxis_signal_slot_labelsAngleChanged");
 
 procedure QAbstractAxis_signal_slot_gridLinePenChanged(handle: not null QAxisH;callback:penCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_gridLinePenChanged, "QAbstractAxis_signal_slot_gridLinePenChanged");
 
 procedure QAbstractAxis_signal_slot_gridVisibleChanged(handle: not null QAxisH;callback:boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_gridVisibleChanged, "QAbstractAxis_signal_slot_gridVisibleChanged");
 
 procedure QAbstractAxis_signal_slot_minorGridVisibleChanged(handle: not null QAxisH;callback:boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_minorGridVisibleChanged, "QAbstractAxis_signal_slot_minorGridVisibleChanged");
 
 procedure QAbstractAxis_signal_slot_minorGridLinePenChanged(handle: not null QAxisH;callback:penCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_minorGridLinePenChanged, "QAbstractAxis_signal_slot_minorGridLinePenChanged");
 
 procedure QAbstractAxis_signal_slot_gridLineColorChanged(handle: not null QAxisH;callback:colorCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_gridLineColorChanged, "QAbstractAxis_signal_slot_gridLineColorChanged");
 
 procedure QAbstractAxis_signal_slot_minorGridLineColorChanged(handle: not null QAxisH;callback:colorCallbackH); 
 pragma Import(C,QAbstractAxis_signal_slot_minorGridLineColorChanged, "QAbstractAxis_signal_slot_minorGridLineColorChanged");
 
 procedure QAbstractAxis_signal_slot_colorChanged(handle: not null QAxisH;callback:colorCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_colorChanged, "QAbstractAxis_signal_slot_colorChanged");
 
 procedure QAbstractAxis_signal_slot_labelsColorChanged(handle: not null QAxisH;callback:colorCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_labelsColorChanged, "QAbstractAxis_signal_slot_labelsColorChanged");
 
 procedure QAbstractAxis_signal_slot_titleTextChanged(handle: not null QAxisH;callback:qstringCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_titleTextChanged, "QAbstractAxis_signal_slot_titleTextChanged");
 
 procedure QAbstractAxis_signal_slot_titleBrushChanged(handle: not null QAxisH;callback: brushCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_titleBrushChanged, "QAbstractAxis_signal_slot_titleBrushChanged");
 
 procedure QAbstractAxis_signal_slot_titleVisibleChanged(handle: not null QAxisH;callback:boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_titleVisibleChanged, "QAbstractAxis_signal_slot_titleVisibleChanged");
 
 procedure QAbstractAxis_signal_slot_titleFontChanged(handle: not null QAxisH;callback:fontCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_titleFontChanged, "QAbstractAxis_signal_slot_titleFontChanged");
 
 procedure QAbstractAxis_signal_slot_shadesVisibleChanged(handle: not null QAxisH;callback:boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_shadesVisibleChanged, "QAbstractAxis_signal_slot_shadesVisibleChanged");
 
 procedure QAbstractAxis_signal_slot_shadesColorChanged(handle: not null QAxisH;callback:colorCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_shadesColorChanged, "QAbstractAxis_signal_slot_shadesColorChanged");
 
 procedure QAbstractAxis_signal_slot_shadesBorderColorChanged(handle: not null QAxisH;callback:colorCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_shadesBorderColorChanged, "QAbstractAxis_signal_slot_shadesBorderColorChanged");
 
 procedure QAbstractAxis_signal_slot_shadesPenChanged(handle: not null QAxisH;callback:penCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_shadesPenChanged, "QAbstractAxis_signal_slot_shadesPenChanged");
 
 procedure QAbstractAxis_signal_slot_shadesBrushChanged(handle: not null QAxisH;callback: brushCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_shadesBrushChanged, "QAbstractAxis_signal_slot_shadesBrushChanged");
 
 procedure QAbstractAxis_signal_slot_reverseChanged(handle: not null QAxisH;callback:boolCallbackH);
 pragma Import(C,QAbstractAxis_signal_slot_reverseChanged, "QAbstractAxis_signal_slot_reverseChanged");
 

end;
