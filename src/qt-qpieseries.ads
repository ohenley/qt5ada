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
with Qt.QPieSlice; use  Qt.QPieSlice;
package Qt.QPieSeries  is

 function  QPieSeries_create(parent:QObjectH := null) return QSeriesH;
 pragma Import(C,QPieSeries_create, "QPieSeries_create");
 
 procedure QPieSeries_destroy(handle:not null QSeriesH);
 pragma Import(C,QPieSeries_destroy, "QPieSeries_destroy");
 
 function  QPieSeries_type(handle:not null QSeriesH) return Qt.QAbstractSeries.SeriesType;
 pragma Import(C,QPieSeries_type, "QPieSeries_type");
 
 function  QPieSeries_append(handle:not null QSeriesH;slice:QPieSliceH) return boolean;
 pragma Import(C,QPieSeries_append, "QPieSeries_append");
 
 function  QPieSeries_append2(handle:not null QSeriesH;slices:QObjectListH) return boolean;
 pragma Import(C,QPieSeries_append2, "QPieSeries_append2");
 
 function  QPieSeries_append3(handle:not null QSeriesH;label:QStringH;value: qreal) return QPieSliceH;
 pragma Import(C,QPieSeries_append3, "QPieSeries_append3");
 
 function  QPieSeries_insert(handle:not null QSeriesH;index:integer;slice: QPieSliceH) return boolean;
 pragma Import(C,QPieSeries_insert, "QPieSeries_insert");
 
 function  QPieSeries_remove(handle:not null QSeriesH;slice:QPieSliceH) return boolean;
 pragma Import(C,QPieSeries_remove, "QPieSeries_remove");
 
 function  QPieSeries_take(handle:not null QSeriesH;slice:QPieSliceH) return boolean;
 pragma Import(C,QPieSeries_take, "QPieSeries_take");
 
 procedure QPieSeries_clear(handle:not null QSeriesH);
 pragma Import(C,QPieSeries_clear, "QPieSeries_clear");
 
 function  QPieSeries_slices(handle:not null QSeriesH) return QObjectListH;
 pragma Import(C,QPieSeries_slices, "QPieSeries_slices");
 
 function  QPieSeries_count(handle:not null QSeriesH) return integer;
 pragma Import(C,QPieSeries_count, "QPieSeries_count");
 
 function  QPieSeries_isEmpty(handle:not null QSeriesH) return boolean;
 pragma Import(C,QPieSeries_isEmpty, "QPieSeries_isEmpty");
 
 function  QPieSeries_sum(handle:not null QSeriesH) return qreal;
 pragma Import(C,QPieSeries_sum, "QPieSeries_sum");
 
 procedure QPieSeries_setHoleSize(handle:not null QSeriesH;holeSize:qreal);
 pragma Import(C,QPieSeries_setHoleSize, "QPieSeries_setHoleSize");
 
 function  QPieSeries_holeSize(handle:not null QSeriesH) return qreal;
 pragma Import(C,QPieSeries_holeSize, "QPieSeries_holeSize");
 
 procedure QPieSeries_setHorizontalPosition(handle:not null QSeriesH;relativePosition:qreal);
 pragma Import(C,QPieSeries_setHorizontalPosition, "QPieSeries_setHorizontalPosition");
 
 function  QPieSeries_horizontalPosition(handle:not null QSeriesH) return qreal;
 pragma Import(C,QPieSeries_horizontalPosition, "QPieSeries_horizontalPosition");
 
 procedure QPieSeries_setVerticalPosition(handle:not null QSeriesH;relativePosition:qreal);
 pragma Import(C,QPieSeries_setVerticalPosition, "QPieSeries_setVerticalPosition");
 
 function  QPieSeries_verticalPosition(handle:not null QSeriesH) return qreal;
 pragma Import(C,QPieSeries_verticalPosition, "QPieSeries_verticalPosition");
 
 procedure QPieSeries_setPieSize(handle:not null QSeriesH;relativeSize:qreal);
 pragma Import(C,QPieSeries_setPieSize, "QPieSeries_setPieSize");
 
 function  QPieSeries_pieSize(handle:not null QSeriesH) return qreal;
 pragma Import(C,QPieSeries_pieSize, "QPieSeries_pieSize");
 
 procedure QPieSeries_setPieStartAngle(handle:not null QSeriesH;startAngle:qreal);
 pragma Import(C,QPieSeries_setPieStartAngle, "QPieSeries_setPieStartAngle");
 
 function  QPieSeries_pieStartAngle(handle:not null QSeriesH) return qreal;
 pragma Import(C,QPieSeries_pieStartAngle, "QPieSeries_pieStartAngle");
 
 procedure QPieSeries_setPieEndAngle(handle:not null QSeriesH;endAngle:qreal);
 pragma Import(C,QPieSeries_setPieEndAngle, "QPieSeries_setPieEndAngle");
 
 function  QPieSeries_pieEndAngle(handle:not null QSeriesH) return qreal;
 pragma Import(C,QPieSeries_pieEndAngle, "QPieSeries_pieEndAngle");
 
 procedure QPieSeries_setLabelsVisible(handle:not null QSeriesH;visible :boolean :=  true);
 pragma Import(C,QPieSeries_setLabelsVisible, "QPieSeries_setLabelsVisible");
 
 procedure QPieSeries_setLabelsPosition(handle:not null QSeriesH;position:LabelPosition);
 pragma Import(C,QPieSeries_setLabelsPosition, "QPieSeries_setLabelsPosition");
 

 type slicesListCallbackH is access procedure(slices:QObjectListH);
 pragma convention(C,slicesListCallbackH);
 
 type sliceCallbackH is access procedure(slice:QPieSliceH);
 pragma convention(C,sliceCallbackH);
 
 type sliceBoolCallbackH is access procedure(slice:QPieSliceH;b:boolean);
 pragma  convention(C,sliceBoolCallbackH);
 

 procedure QPieSeries_signal_slot_added(handle:not null QSeriesH;hook:slicesListCallbackH);
 pragma Import(C,QPieSeries_signal_slot_added, "QPieSeries_signal_slot_added");
 
 procedure QPieSeries_signal_slot_removed(handle:not null QSeriesH;hook:slicesListCallbackH);     
 pragma Import(C,QPieSeries_signal_slot_removed, "QPieSeries_signal_slot_removed");
 
 procedure QPieSeries_signal_slot_clicked(handle:not null QSeriesH;hook:sliceCallbackH);
 pragma Import(C,QPieSeries_signal_slot_clicked, "QPieSeries_signal_slot_clicked");
 
 procedure QPieSeries_signal_slot_hovered(handle:not null QSeriesH;hook:sliceBoolCallbackH);
 pragma Import(C,QPieSeries_signal_slot_hovered, "QPieSeries_signal_slot_hovered");
 
 procedure QPieSeries_signal_slot_pressed(handle:not null QSeriesH;hook:sliceCallbackH);
 pragma Import(C,QPieSeries_signal_slot_pressed, "QPieSeries_signal_slot_pressed");
 
 procedure QPieSeries_signal_slot_released(handle:not null QSeriesH;hook:sliceCallbackH);
 pragma Import(C,QPieSeries_signal_slot_released, "QPieSeries_signal_slot_released");
 
 procedure QPieSeries_signal_slot_doubleClicked(handle:not null QSeriesH;hook:sliceCallbackH);
 pragma Import(C,QPieSeries_signal_slot_doubleClicked, "QPieSeries_signal_slot_doubleClicked");
 
 procedure QPieSeries_signal_slot_countChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QPieSeries_signal_slot_countChanged, "QPieSeries_signal_slot_countChanged");
 
 procedure QPieSeries_signal_slot_sumChanged(handle:not null QSeriesH;hook:voidCallbackH);
 pragma Import(C,QPieSeries_signal_slot_sumChanged, "QPieSeries_signal_slot_sumChanged");
 
 function  QPieSeries_append(handle:not null QSeriesH;slices:QObjectListH) return boolean;
 function  QPieSeries_append(handle:not null QSeriesH;label:QStringH;value: qreal) return QPieSliceH;

end;
