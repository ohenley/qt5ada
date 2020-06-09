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

package Qt.QVBoxPlotModelMapper is

 function  QVBoxPlotModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QVBoxPlotModelMapper_create, "QVBoxPlotModelMapper_create");
 
 function  QVBoxPlotModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QVBoxPlotModelMapper_model, "QVBoxPlotModelMapper_model");
 
 procedure QVBoxPlotModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QVBoxPlotModelMapper_setModel, "QVBoxPlotModelMapper_setModel");
 
 function  QVBoxPlotModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QVBoxPlotModelMapper_series, "QVBoxPlotModelMapper_series");
 
 procedure QVBoxPlotModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QVBoxPlotModelMapper_setSeries, "QVBoxPlotModelMapper_setSeries");
 
 function  QVBoxPlotModelMapper_firstBoxSetColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVBoxPlotModelMapper_firstBoxSetColumn, "QVBoxPlotModelMapper_firstBoxSetColumn");
 
 procedure QVBoxPlotModelMapper_setFirstBoxSetColumn(handle:not null QMapperH;firstBoxSetColumn:integer);
 pragma Import(C,QVBoxPlotModelMapper_setFirstBoxSetColumn, "QVBoxPlotModelMapper_setFirstBoxSetColumn");
 
 function  QVBoxPlotModelMapper_lastBoxSetColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVBoxPlotModelMapper_lastBoxSetColumn, "QVBoxPlotModelMapper_lastBoxSetColumn");
 
 procedure QVBoxPlotModelMapper_setLastBoxSetColumn(handle:not null QMapperH;lastBoxSetColumn:integer);
 pragma Import(C,QVBoxPlotModelMapper_setLastBoxSetColumn, "QVBoxPlotModelMapper_setLastBoxSetColumn");
 
 function  QVBoxPlotModelMapper_firstRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVBoxPlotModelMapper_firstRow, "QVBoxPlotModelMapper_firstRow");
 
 procedure QVBoxPlotModelMapper_setFirstRow(handle:not null QMapperH;firstRow:integer);
 pragma Import(C,QVBoxPlotModelMapper_setFirstRow, "QVBoxPlotModelMapper_setFirstRow");
 
 function  QVBoxPlotModelMapper_rowCount(handle:not null QMapperH) return integer;
 pragma Import(C,QVBoxPlotModelMapper_rowCount, "QVBoxPlotModelMapper_rowCount");
 
 procedure QVBoxPlotModelMapper_setRowCount(handle:not null QMapperH;rowCount:integer);
 pragma Import(C,QVBoxPlotModelMapper_setRowCount, "QVBoxPlotModelMapper_setRowCount");
 

 procedure QVBoxPlotModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBoxPlotModelMapper_signal_slot_seriesReplaced, "QVBoxPlotModelMapper_signal_slot_seriesReplaced");
 
 procedure QVBoxPlotModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBoxPlotModelMapper_signal_slot_modelReplaced, "QVBoxPlotModelMapper_signal_slot_modelReplaced");
 
 procedure QVBoxPlotModelMapper_signal_slot_firstBoxSetColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBoxPlotModelMapper_signal_slot_firstBoxSetColumnChanged, "QVBoxPlotModelMapper_signal_slot_firstBoxSetColumnChanged");
 
 procedure QVBoxPlotModelMapper_signal_slot_lastBoxSetColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBoxPlotModelMapper_signal_slot_lastBoxSetColumnChanged, "QVBoxPlotModelMapper_signal_slot_lastBoxSetColumnChanged");
 
 procedure QVBoxPlotModelMapper_signal_slot_firstRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBoxPlotModelMapper_signal_slot_firstRowChanged, "QVBoxPlotModelMapper_signal_slot_firstRowChanged");
 
 procedure QVBoxPlotModelMapper_signal_slot_rowCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBoxPlotModelMapper_signal_slot_rowCountChanged, "QVBoxPlotModelMapper_signal_slot_rowCountChanged");
 

end;
