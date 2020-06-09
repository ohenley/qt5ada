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

package Qt.QVPieModelMapper is

 function  QVPieModelMapper_create(parent: QObjectH := null) return QMapperH;
 pragma Import(C,QVPieModelMapper_create, "QVPieModelMapper_create");
 
 function  QVPieModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QVPieModelMapper_model, "QVPieModelMapper_model");
 
 procedure QVPieModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QVPieModelMapper_setModel, "QVPieModelMapper_setModel");
 
 function  QVPieModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QVPieModelMapper_series, "QVPieModelMapper_series");
 
 procedure QVPieModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QVPieModelMapper_setSeries, "QVPieModelMapper_setSeries");
 
 function  QVPieModelMapper_valuesColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVPieModelMapper_valuesColumn, "QVPieModelMapper_valuesColumn");
 
 procedure QVPieModelMapper_setValuesColumn(handle:not null QMapperH;valuesColumn:integer);
 pragma Import(C,QVPieModelMapper_setValuesColumn, "QVPieModelMapper_setValuesColumn");
 
 function  QVPieModelMapper_labelsColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVPieModelMapper_labelsColumn, "QVPieModelMapper_labelsColumn");
 
 procedure QVPieModelMapper_setLabelsColumn(handle:not null QMapperH;labelsColumn:integer);
 pragma Import(C,QVPieModelMapper_setLabelsColumn, "QVPieModelMapper_setLabelsColumn");
 
 function  QVPieModelMapper_firstRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVPieModelMapper_firstRow, "QVPieModelMapper_firstRow");
 
 procedure QVPieModelMapper_setFirstRow(handle:not null QMapperH;firstRow:integer);
 pragma Import(C,QVPieModelMapper_setFirstRow, "QVPieModelMapper_setFirstRow");
 
 function  QVPieModelMapper_rowCount(handle:not null QMapperH) return integer;
 pragma Import(C,QVPieModelMapper_rowCount, "QVPieModelMapper_rowCount");
 
 procedure QVPieModelMapper_setRowCount(handle:not null QMapperH;rowCount:integer);
 pragma Import(C,QVPieModelMapper_setRowCount, "QVPieModelMapper_setRowCount");
 

 procedure QVPieModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVPieModelMapper_signal_slot_seriesReplaced, "QVPieModelMapper_signal_slot_seriesReplaced");
 
 procedure QVPieModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVPieModelMapper_signal_slot_modelReplaced, "QVPieModelMapper_signal_slot_modelReplaced");
 
 procedure QVPieModelMapper_signal_slot_valuesColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVPieModelMapper_signal_slot_valuesColumnChanged, "QVPieModelMapper_signal_slot_valuesColumnChanged");
 
 procedure QVPieModelMapper_signal_slot_labelsColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVPieModelMapper_signal_slot_labelsColumnChanged, "QVPieModelMapper_signal_slot_labelsColumnChanged");
 
 procedure QVPieModelMapper_signal_slot_firstRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVPieModelMapper_signal_slot_firstRowChanged, "QVPieModelMapper_signal_slot_firstRowChanged");
 
 procedure QVPieModelMapper_signal_slot_rowCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVPieModelMapper_signal_slot_rowCountChanged, "QVPieModelMapper_signal_slot_rowCountChanged");
 

end;
