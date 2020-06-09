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

package Qt.QVXYModelMapper is

 function  QVXYModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QVXYModelMapper_create, "QVXYModelMapper_create");
 
 function  QVXYModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QVXYModelMapper_model, "QVXYModelMapper_model");
 
 procedure QVXYModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QVXYModelMapper_setModel, "QVXYModelMapper_setModel");
 
 function  QVXYModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QVXYModelMapper_series, "QVXYModelMapper_series");
 
 procedure QVXYModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QVXYModelMapper_setSeries, "QVXYModelMapper_setSeries");
 
 function  QVXYModelMapper_xColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVXYModelMapper_xColumn, "QVXYModelMapper_xColumn");
 
 procedure QVXYModelMapper_setXColumn(handle:not null QMapperH;xColumn:integer);
 pragma Import(C,QVXYModelMapper_setXColumn, "QVXYModelMapper_setXColumn");
 
 function  QVXYModelMapper_yColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVXYModelMapper_yColumn, "QVXYModelMapper_yColumn");
 
 procedure QVXYModelMapper_setYColumn(handle:not null QMapperH;yColumn:integer);
 pragma Import(C,QVXYModelMapper_setYColumn, "QVXYModelMapper_setYColumn");
 
 function  QVXYModelMapper_firstRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVXYModelMapper_firstRow, "QVXYModelMapper_firstRow");
 
 procedure QVXYModelMapper_setFirstRow(handle:not null QMapperH;firstRow:integer);
 pragma Import(C,QVXYModelMapper_setFirstRow, "QVXYModelMapper_setFirstRow");
 
 function  QVXYModelMapper_rowCount(handle:not null QMapperH) return integer;
 pragma Import(C,QVXYModelMapper_rowCount, "QVXYModelMapper_rowCount");
 
 procedure QVXYModelMapper_setRowCount(handle:not null QMapperH;rowCount:integer);
 pragma Import(C,QVXYModelMapper_setRowCount, "QVXYModelMapper_setRowCount");
 

 procedure QVXYModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVXYModelMapper_signal_slot_seriesReplaced, "QVXYModelMapper_signal_slot_seriesReplaced");
 
 procedure QVXYModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVXYModelMapper_signal_slot_modelReplaced, "QVXYModelMapper_signal_slot_modelReplaced");
 
 procedure QVXYModelMapper_signal_slot_xColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVXYModelMapper_signal_slot_xColumnChanged, "QVXYModelMapper_signal_slot_xColumnChanged");
 
 procedure QVXYModelMapper_signal_slot_yColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVXYModelMapper_signal_slot_yColumnChanged, "QVXYModelMapper_signal_slot_yColumnChanged");
 
 procedure QVXYModelMapper_signal_slot_firstRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVXYModelMapper_signal_slot_firstRowChanged, "QVXYModelMapper_signal_slot_firstRowChanged");
 
 procedure QVXYModelMapper_signal_slot_rowCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVXYModelMapper_signal_slot_rowCountChanged, "QVXYModelMapper_signal_slot_rowCountChanged");
 

end;
