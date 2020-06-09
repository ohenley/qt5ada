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

package Qt.QHPieModelMapper is

 function  QHPieModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QHPieModelMapper_create, "QHPieModelMapper_create");
 
 function  QHPieModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QHPieModelMapper_model, "QHPieModelMapper_model");
 
 procedure QHPieModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QHPieModelMapper_setModel, "QHPieModelMapper_setModel");
 
 function  QHPieModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QHPieModelMapper_series, "QHPieModelMapper_series");
 
 procedure QHPieModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QHPieModelMapper_setSeries, "QHPieModelMapper_setSeries");
 
 function  QHPieModelMapper_valuesRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHPieModelMapper_valuesRow, "QHPieModelMapper_valuesRow");
 
 procedure QHPieModelMapper_setValuesRow(handle:not null QMapperH;valuesRow:integer);
 pragma Import(C,QHPieModelMapper_setValuesRow, "QHPieModelMapper_setValuesRow");
 
 function  QHPieModelMapper_labelsRow(handle:not null QMapperH;labelsRow:integer) return integer;
 pragma Import(C,QHPieModelMapper_labelsRow, "QHPieModelMapper_labelsRow");
 
 procedure QHPieModelMapper_setLabelsRow(handle:not null QMapperH;labelsRow:integer);
 pragma Import(C,QHPieModelMapper_setLabelsRow, "QHPieModelMapper_setLabelsRow");
 
 function  QHPieModelMapper_firstColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHPieModelMapper_firstColumn, "QHPieModelMapper_firstColumn");
 
 procedure QHPieModelMapper_setFirstColumn(handle:not null QMapperH;firstColumn:integer);
 pragma Import(C,QHPieModelMapper_setFirstColumn, "QHPieModelMapper_setFirstColumn");
 
 function  QHPieModelMapper_columnCount(handle:not null QMapperH) return integer;
 pragma Import(C,QHPieModelMapper_columnCount, "QHPieModelMapper_columnCount");
 
 procedure QHPieModelMapper_setColumnCount(handle:not null QMapperH;columnCount:integer);
 pragma Import(C,QHPieModelMapper_setColumnCount, "QHPieModelMapper_setColumnCount");
 

 procedure QHPieModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHPieModelMapper_signal_slot_seriesReplaced, "QHPieModelMapper_signal_slot_seriesReplaced");
 
 procedure QHPieModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHPieModelMapper_signal_slot_modelReplaced, "QHPieModelMapper_signal_slot_modelReplaced");
 
 procedure QHPieModelMapper_signal_slot_valuesRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHPieModelMapper_signal_slot_valuesRowChanged, "QHPieModelMapper_signal_slot_valuesRowChanged");
 
 procedure QHPieModelMapper_signal_slot_labelsRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHPieModelMapper_signal_slot_labelsRowChanged, "QHPieModelMapper_signal_slot_labelsRowChanged");
 
 procedure QHPieModelMapper_signal_slot_firstColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHPieModelMapper_signal_slot_firstColumnChanged, "QHPieModelMapper_signal_slot_firstColumnChanged");
 
 procedure QHPieModelMapper_signal_slot_columnCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHPieModelMapper_signal_slot_columnCountChanged, "QHPieModelMapper_signal_slot_columnCountChanged");
 

end;
