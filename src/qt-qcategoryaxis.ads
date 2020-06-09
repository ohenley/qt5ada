--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractAxis;
with Qt.QString; use Qt.QString; 
package Qt.QCategoryAxis is

 type AxisLabelsPosition is (AxisLabelsPositionCenter,AxisLabelsPositionOnValue);
 pragma convention(c,AxisLabelsPosition);

 function  QCategoryAxis_create(parent:QObjectH := null) return QAxisH;
 pragma Import(C,QCategoryAxis_create, "QCategoryAxis_create");
 
 procedure QCategoryAxis_destroy(handle:not null QAxisH);
 pragma Import(C,QCategoryAxis_destroy, "QCategoryAxis_destroy");
 
 function  QCategoryAxis_type(handle:not null QAxisH) return Qt.QAbstractAxis.AxisType;
 pragma Import(C,QCategoryAxis_type, "QCategoryAxis_type");
 
 procedure QCategoryAxis_append(handle:not null QAxisH;label:QStringH;categoryEndValue: qreal);
 pragma Import(C,QCategoryAxis_append, "QCategoryAxis_append");
 
 procedure QCategoryAxis_remove(handle:not null QAxisH;label:QStringH);
 pragma Import(C,QCategoryAxis_remove, "QCategoryAxis_remove");
 
 procedure QCategoryAxis_replaceLabel(handle:not null QAxisH;oldLabel:QStringH;newLabel: QStringH);
 pragma Import(C,QCategoryAxis_replaceLabel, "QCategoryAxis_replaceLabel");
 
 function  QCategoryAxis_startValue(handle:not null QAxisH;categoryLabel :QStringH :=  QString_create) return qreal;
 pragma Import(C,QCategoryAxis_startValue, "QCategoryAxis_startValue");
 
 procedure QCategoryAxis_setStartValue2(handle:not null QAxisH;min:qreal);
 pragma Import(C,QCategoryAxis_setStartValue2, "QCategoryAxis_setStartValue2");
 
 function  QCategoryAxis_endValue(handle:not null QAxisH;categoryLabel:QStringH) return qreal;
 pragma Import(C,QCategoryAxis_endValue, "QCategoryAxis_endValue");
 
 function  QCategoryAxis_categoriesLabels(handle:not null QAxisH) return QStringListH;
 pragma Import(C,QCategoryAxis_categoriesLabels, "QCategoryAxis_categoriesLabels");
 
 function  QCategoryAxis_count(handle:not null QAxisH) return int;
 pragma Import(C,QCategoryAxis_count, "QCategoryAxis_count");
 
 function  QCategoryAxis_labelsPosition(handle:not null QAxisH) return AxisLabelsPosition;
 pragma Import(C,QCategoryAxis_labelsPosition, "QCategoryAxis_labelsPosition");
 
 procedure QCategoryAxis_setLabelsPosition(handle:not null QAxisH;position:AxisLabelsPosition);
 pragma Import(C,QCategoryAxis_setLabelsPosition, "QCategoryAxis_setLabelsPosition");
 

 type posCallbackH is access procedure(position:AxisLabelsPosition);
 pragma convention(C,posCallbackH);
 
 procedure QCategoryAxis_signal_slot_categoriesChanged(handle:not null QAxisH;hook:voidCallbackH);
 pragma Import(C,QCategoryAxis_signal_slot_categoriesChanged, "QCategoryAxis_signal_slot_categoriesChanged");
 
 procedure QCategoryAxis_signal_slot_labelsPositionChanged(handle:not null QAxisH;hook: posCallbackH); 
 pragma Import(C,QCategoryAxis_signal_slot_labelsPositionChanged, "QCategoryAxis_signal_slot_labelsPositionChanged");
 
end;
