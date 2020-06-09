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

package Qt.QHBoxPlotModelMapper is

 function  QHBoxPlotModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QHBoxPlotModelMapper_create, "QHBoxPlotModelMapper_create");
 
 function  QHBoxPlotModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QHBoxPlotModelMapper_model, "QHBoxPlotModelMapper_model");
 
 procedure QHBoxPlotModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QHBoxPlotModelMapper_setModel, "QHBoxPlotModelMapper_setModel");
 
 function  QHBoxPlotModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QHBoxPlotModelMapper_series, "QHBoxPlotModelMapper_series");
 
 procedure QHBoxPlotModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QHBoxPlotModelMapper_setSeries, "QHBoxPlotModelMapper_setSeries");
 
 function  QHBoxPlotModelMapper_firstBoxSetRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHBoxPlotModelMapper_firstBoxSetRow, "QHBoxPlotModelMapper_firstBoxSetRow");
 
 procedure QHBoxPlotModelMapper_setFirstBoxSetRow(handle:not null QMapperH;firstBoxSetRow:integer);
 pragma Import(C,QHBoxPlotModelMapper_setFirstBoxSetRow, "QHBoxPlotModelMapper_setFirstBoxSetRow");
 
 function  QHBoxPlotModelMapper_lastBoxSetRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHBoxPlotModelMapper_lastBoxSetRow, "QHBoxPlotModelMapper_lastBoxSetRow");
 
 procedure QHBoxPlotModelMapper_setLastBoxSetRow(handle:not null QMapperH;lastBoxSetRow:integer);
 pragma Import(C,QHBoxPlotModelMapper_setLastBoxSetRow, "QHBoxPlotModelMapper_setLastBoxSetRow");
 
 function  QHBoxPlotModelMapper_firstColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHBoxPlotModelMapper_firstColumn, "QHBoxPlotModelMapper_firstColumn");
 
 procedure QHBoxPlotModelMapper_setFirstColumn(handle:not null QMapperH;firstColumn:integer);
 pragma Import(C,QHBoxPlotModelMapper_setFirstColumn, "QHBoxPlotModelMapper_setFirstColumn");
 
 function  QHBoxPlotModelMapper_columnCount(handle:not null QMapperH) return integer;
 pragma Import(C,QHBoxPlotModelMapper_columnCount, "QHBoxPlotModelMapper_columnCount");
 
 procedure QHBoxPlotModelMapper_setColumnCount(handle:not null QMapperH;rowCount:integer);
 pragma Import(C,QHBoxPlotModelMapper_setColumnCount, "QHBoxPlotModelMapper_setColumnCount");
 

 procedure QHBoxPlotModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBoxPlotModelMapper_signal_slot_seriesReplaced, "QHBoxPlotModelMapper_signal_slot_seriesReplaced");
 
 procedure QHBoxPlotModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBoxPlotModelMapper_signal_slot_modelReplaced, "QHBoxPlotModelMapper_signal_slot_modelReplaced");
 
 procedure QHBoxPlotModelMapper_signal_slot_firstBoxSetRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBoxPlotModelMapper_signal_slot_firstBoxSetRowChanged, "QHBoxPlotModelMapper_signal_slot_firstBoxSetRowChanged");
 
 procedure QHBoxPlotModelMapper_signal_slot_lastBoxSetRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBoxPlotModelMapper_signal_slot_lastBoxSetRowChanged, "QHBoxPlotModelMapper_signal_slot_lastBoxSetRowChanged");
 
 procedure QHBoxPlotModelMapper_signal_slot_firstColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBoxPlotModelMapper_signal_slot_firstColumnChanged, "QHBoxPlotModelMapper_signal_slot_firstColumnChanged");
 
 procedure QHBoxPlotModelMapper_signal_slot_columnCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBoxPlotModelMapper_signal_slot_columnCountChanged, "QHBoxPlotModelMapper_signal_slot_columnCountChanged");
 
end;
