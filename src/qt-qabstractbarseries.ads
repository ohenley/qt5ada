-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QAbstractBarSeries is

 type LabelsPosition is (LabelsCenter,LabelsInsideEnd,LabelsInsideBase,LabelsOutsideEnd);

 procedure QAbstractBarSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QAbstractBarSeries_destroy, "QAbstractBarSeries_destroy");
 
 procedure QAbstractBarSeries_setBarWidth(handle:not null QSeriesH;width:qreal);
 pragma Import(C,QAbstractBarSeries_setBarWidth, "QAbstractBarSeries_setBarWidth");
 
 function  QAbstractBarSeries_barWidth(handle:not null QSeriesH) return qreal;
 pragma Import(C,QAbstractBarSeries_barWidth, "QAbstractBarSeries_barWidth");
 
 function  QAbstractBarSeries_append(handle:not null QSeriesH;set:QSetH) return boolean;
 pragma Import(C,QAbstractBarSeries_append, "QAbstractBarSeries_append");
 
 function  QAbstractBarSeries_remove(handle:not null QSeriesH;set:QSetH) return boolean;
 pragma Import(C,QAbstractBarSeries_remove, "QAbstractBarSeries_remove");
 
 function  QAbstractBarSeries_take(handle:not null QSeriesH;set:QSetH) return boolean;
 pragma Import(C,QAbstractBarSeries_take, "QAbstractBarSeries_take");
 
 function  QAbstractBarSeries_append2(handle:not null QSeriesH;sets:QObjectListH) return boolean;
 pragma Import(C,QAbstractBarSeries_append2, "QAbstractBarSeries_append2");
 
 function  QAbstractBarSeries_insert(handle:not null QSeriesH;index:integer;set: QSetH) return boolean;
 pragma Import(C,QAbstractBarSeries_insert, "QAbstractBarSeries_insert");
 
 function  QAbstractBarSeries_count(handle:not null QSeriesH) return integer;
 pragma Import(C,QAbstractBarSeries_count, "QAbstractBarSeries_count");
 
 function  QAbstractBarSeries_barSets(handle:not null QSeriesH) return QObjectListH;
 pragma Import(C,QAbstractBarSeries_barSets, "QAbstractBarSeries_barSets");
 
 procedure QAbstractBarSeries_clear(handle:not null QSeriesH);
 pragma Import(C,QAbstractBarSeries_clear, "QAbstractBarSeries_clear");
 
 procedure QAbstractBarSeries_setLabelsVisible(handle:not null QSeriesH;visible :boolean :=  true);
 pragma Import(C,QAbstractBarSeries_setLabelsVisible, "QAbstractBarSeries_setLabelsVisible");
 
 function  QAbstractBarSeries_isLabelsVisible(handle:not null QSeriesH) return boolean;
 pragma Import(C,QAbstractBarSeries_isLabelsVisible, "QAbstractBarSeries_isLabelsVisible");
 
 procedure QAbstractBarSeries_setLabelsFormat(handle:not null QSeriesH;format: QStringH);
 pragma Import(C,QAbstractBarSeries_setLabelsFormat, "QAbstractBarSeries_setLabelsFormat");
 
 function  QAbstractBarSeries_labelsFormat(handle:not null QSeriesH) return QStringH;
 pragma Import(C,QAbstractBarSeries_labelsFormat, "QAbstractBarSeries_labelsFormat");
 
 procedure QAbstractBarSeries_setLabelsAngle(handle:not null QSeriesH;angle:qreal);
 pragma Import(C,QAbstractBarSeries_setLabelsAngle, "QAbstractBarSeries_setLabelsAngle");
 
 function  QAbstractBarSeries_labelsAngle(handle:not null QSeriesH) return qreal;
 pragma Import(C,QAbstractBarSeries_labelsAngle, "QAbstractBarSeries_labelsAngle");
 
 procedure QAbstractBarSeries_setLabelsPosition(handle:not null QSeriesH;position:LabelsPosition);
 pragma Import(C,QAbstractBarSeries_setLabelsPosition, "QAbstractBarSeries_setLabelsPosition");
 
 function  QAbstractBarSeries_labelsPosition(handle:not null QSeriesH) return LabelsPosition;
 pragma Import(C,QAbstractBarSeries_labelsPosition, "QAbstractBarSeries_labelsPosition");
 
 type callbackIntSetH is access procedure(index:integer; barSet: QSetH);
 pragma convention(C,callbackIntSetH);

 type callbackBoolIntSetH is access procedure(status: boolean; index:integer; barSet: QSetH);
 pragma convention(C,callbackBoolIntSetH);

 procedure QAbstractBarSeries_signal_slot_clicked(handle:not null QSeriesH; hook: callbackIntSetH);
 pragma Import(C,QAbstractBarSeries_signal_slot_clicked, "QAbstractBarSeries_signal_slot_clicked");
 
 procedure QAbstractBarSeries_signal_slot_hovered(handle:not null QSeriesH;hook: callbackBoolIntSetH); 
 pragma Import(C,QAbstractBarSeries_signal_slot_hovered, "QAbstractBarSeries_signal_slot_hovered");
 
 procedure QAbstractBarSeries_signal_slot_pressed(handle:not null QSeriesH; hook: callbackIntSetH);     
 pragma Import(C,QAbstractBarSeries_signal_slot_pressed, "QAbstractBarSeries_signal_slot_pressed");
 
 procedure QAbstractBarSeries_signal_slot_released(handle:not null QSeriesH; hook: callbackIntSetH);     
 pragma Import(C,QAbstractBarSeries_signal_slot_released, "QAbstractBarSeries_signal_slot_released");
 
 procedure QAbstractBarSeries_signal_slot_doubleClicked(handle:not null QSeriesH; hook: callbackIntSetH);     
 pragma Import(C,QAbstractBarSeries_signal_slot_doubleClicked, "QAbstractBarSeries_signal_slot_doubleClicked");
 
 procedure QAbstractBarSeries_signal_slot_countChanged(handle:not null QSeriesH; hook: voidCallbackH);
 pragma Import(C,QAbstractBarSeries_signal_slot_countChanged, "QAbstractBarSeries_signal_slot_countChanged");
 
 procedure QAbstractBarSeries_signal_slot_labelsVisibleChanged(handle:not null QSeriesH; hook: voidCallbackH);   
 pragma Import(C,QAbstractBarSeries_signal_slot_labelsVisibleChanged, "QAbstractBarSeries_signal_slot_labelsVisibleChanged");
 
 procedure QAbstractBarSeries_signal_slot_labelsFormatChanged(handle:not null QSeriesH;hook: QStringCallbackH);
 pragma Import(C,QAbstractBarSeries_signal_slot_labelsFormatChanged, "QAbstractBarSeries_signal_slot_labelsFormatChanged");
 
 type positionCallbackH is access procedure(position: LabelsPosition);
 pragma convention(C,positionCallbackH);

 procedure QAbstractBarSeries_signal_slot_labelsPositionChanged(handle:not null QSeriesH;hook:positionCallbackH);
 pragma Import(C,QAbstractBarSeries_signal_slot_labelsPositionChanged, "QAbstractBarSeries_signal_slot_labelsPositionChanged");
 
 procedure QAbstractBarSeries_signal_slot_labelsAngleChanged(handle:not null QSeriesH;hook: qrealCallbackH);
 pragma Import(C,QAbstractBarSeries_signal_slot_labelsAngleChanged, "QAbstractBarSeries_signal_slot_labelsAngleChanged");
 
 type setCallbackH is access procedure(setList:QObjectListH);
 pragma convention(C,setCallbackH);

 procedure QAbstractBarSeries_signal_slot_barsetsAdded(handle:not null QSeriesH; hook:setCallbackH);
 pragma Import(C,QAbstractBarSeries_signal_slot_barsetsAdded, "QAbstractBarSeries_signal_slot_barsetsAdded");
 
 procedure QAbstractBarSeries_signal_slot_barsetsRemoved(handle:not null QSeriesH; hook:setCallbackH);    
 pragma Import(C,QAbstractBarSeries_signal_slot_barsetsRemoved, "QAbstractBarSeries_signal_slot_barsetsRemoved");
 
end;
