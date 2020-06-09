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

package Qt.QHBarModelMapper is

 function  QHBarModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QHBarModelMapper_create, "QHBarModelMapper_create");
 
 function  QHBarModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QHBarModelMapper_model, "QHBarModelMapper_model");
 
 procedure QHBarModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QHBarModelMapper_setModel, "QHBarModelMapper_setModel");
 
 function  QHBarModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QHBarModelMapper_series, "QHBarModelMapper_series");
 
 procedure QHBarModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QHBarModelMapper_setSeries, "QHBarModelMapper_setSeries");
 
 function  QHBarModelMapper_firstBarSetRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHBarModelMapper_firstBarSetRow, "QHBarModelMapper_firstBarSetRow");
 
 procedure QHBarModelMapper_setFirstBarSetRow(handle:not null QMapperH;firstBarSetRow:integer);
 pragma Import(C,QHBarModelMapper_setFirstBarSetRow, "QHBarModelMapper_setFirstBarSetRow");
 
 function  QHBarModelMapper_lastBarSetRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHBarModelMapper_lastBarSetRow, "QHBarModelMapper_lastBarSetRow");
 
 procedure QHBarModelMapper_setLastBarSetRow(handle:not null QMapperH;lastBarSetRow:integer);
 pragma Import(C,QHBarModelMapper_setLastBarSetRow, "QHBarModelMapper_setLastBarSetRow");
 
 function  QHBarModelMapper_firstColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHBarModelMapper_firstColumn, "QHBarModelMapper_firstColumn");
 
 procedure QHBarModelMapper_setFirstColumn(handle:not null QMapperH;firstColumn:integer);
 pragma Import(C,QHBarModelMapper_setFirstColumn, "QHBarModelMapper_setFirstColumn");
 
 function  QHBarModelMapper_columnCount(handle:not null QMapperH) return integer;
 pragma Import(C,QHBarModelMapper_columnCount, "QHBarModelMapper_columnCount");
 
 procedure QHBarModelMapper_setColumnCount(handle:not null QMapperH;columnCount:integer);
 pragma Import(C,QHBarModelMapper_setColumnCount, "QHBarModelMapper_setColumnCount");
 

 procedure QHBarModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH); 
 pragma Import(C,QHBarModelMapper_signal_slot_seriesReplaced, "QHBarModelMapper_signal_slot_seriesReplaced");
 
 procedure QHBarModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBarModelMapper_signal_slot_modelReplaced, "QHBarModelMapper_signal_slot_modelReplaced");
 
 procedure QHBarModelMapper_signal_slot_firstBarSetRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBarModelMapper_signal_slot_firstBarSetRowChanged, "QHBarModelMapper_signal_slot_firstBarSetRowChanged");
 
 procedure QHBarModelMapper_signal_slot_lastBarSetRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBarModelMapper_signal_slot_lastBarSetRowChanged, "QHBarModelMapper_signal_slot_lastBarSetRowChanged");
 
 procedure QHBarModelMapper_signal_slot_firstColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBarModelMapper_signal_slot_firstColumnChanged, "QHBarModelMapper_signal_slot_firstColumnChanged");
 
 procedure QHBarModelMapper_signal_slot_columnCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHBarModelMapper_signal_slot_columnCountChanged, "QHBarModelMapper_signal_slot_columnCountChanged");
 
end;
