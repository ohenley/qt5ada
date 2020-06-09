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

package Qt.QVBarModelMapper is

 function  QVBarModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QVBarModelMapper_create, "QVBarModelMapper_create");
 
 function  QVBarModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QVBarModelMapper_model, "QVBarModelMapper_model");
 
 procedure QVBarModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QVBarModelMapper_setModel, "QVBarModelMapper_setModel");
 
 function  QVBarModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QVBarModelMapper_series, "QVBarModelMapper_series");
 
 procedure QVBarModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QVBarModelMapper_setSeries, "QVBarModelMapper_setSeries");
 
 function  QVBarModelMapper_firstBarSetColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVBarModelMapper_firstBarSetColumn, "QVBarModelMapper_firstBarSetColumn");
 
 procedure QVBarModelMapper_setFirstBarSetColumn(handle:not null QMapperH;firstBarSetColumn:integer);
 pragma Import(C,QVBarModelMapper_setFirstBarSetColumn, "QVBarModelMapper_setFirstBarSetColumn");
 
 function  QVBarModelMapper_lastBarSetColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVBarModelMapper_lastBarSetColumn, "QVBarModelMapper_lastBarSetColumn");
 
 procedure QVBarModelMapper_setLastBarSetColumn(handle:not null QMapperH;lastBarSetColumn:integer);
 pragma Import(C,QVBarModelMapper_setLastBarSetColumn, "QVBarModelMapper_setLastBarSetColumn");
 
 function  QVBarModelMapper_firstRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVBarModelMapper_firstRow, "QVBarModelMapper_firstRow");
 
 procedure QVBarModelMapper_setFirstRow(handle:not null QMapperH;firstRow:integer);
 pragma Import(C,QVBarModelMapper_setFirstRow, "QVBarModelMapper_setFirstRow");
 
 function  QVBarModelMapper_rowCount(handle:not null QMapperH) return integer;
 pragma Import(C,QVBarModelMapper_rowCount, "QVBarModelMapper_rowCount");
 
 procedure QVBarModelMapper_setRowCount(handle:not null QMapperH;rowCount:integer);
 pragma Import(C,QVBarModelMapper_setRowCount, "QVBarModelMapper_setRowCount");
 

 procedure QVBarModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBarModelMapper_signal_slot_seriesReplaced, "QVBarModelMapper_signal_slot_seriesReplaced");
 
 procedure QVBarModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBarModelMapper_signal_slot_modelReplaced, "QVBarModelMapper_signal_slot_modelReplaced");
 
 procedure QVBarModelMapper_signal_slot_firstBarSetColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBarModelMapper_signal_slot_firstBarSetColumnChanged, "QVBarModelMapper_signal_slot_firstBarSetColumnChanged");
 
 procedure QVBarModelMapper_signal_slot_lastBarSetColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBarModelMapper_signal_slot_lastBarSetColumnChanged, "QVBarModelMapper_signal_slot_lastBarSetColumnChanged");
 
 procedure QVBarModelMapper_signal_slot_firstRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBarModelMapper_signal_slot_firstRowChanged, "QVBarModelMapper_signal_slot_firstRowChanged");
 
 procedure QVBarModelMapper_signal_slot_rowCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVBarModelMapper_signal_slot_rowCountChanged, "QVBarModelMapper_signal_slot_rowCountChanged");
 

end;
