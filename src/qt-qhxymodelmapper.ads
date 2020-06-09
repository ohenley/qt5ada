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

package Qt.QHXYModelMapper is

 function  QHXYModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QHXYModelMapper_create, "QHXYModelMapper_create");
 
 function  QHXYModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QHXYModelMapper_model, "QHXYModelMapper_model");
 
 procedure QHXYModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QHXYModelMapper_setModel, "QHXYModelMapper_setModel");
 
 function  QHXYModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QHXYModelMapper_series, "QHXYModelMapper_series");
 
 procedure QHXYModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QHXYModelMapper_setSeries, "QHXYModelMapper_setSeries");
 
 function  QHXYModelMapper_xRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHXYModelMapper_xRow, "QHXYModelMapper_xRow");
 
 procedure QHXYModelMapper_setXRow(handle:not null QMapperH;xRow:integer);
 pragma Import(C,QHXYModelMapper_setXRow, "QHXYModelMapper_setXRow");
 
 function  QHXYModelMapper_yRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHXYModelMapper_yRow, "QHXYModelMapper_yRow");
 
 procedure QHXYModelMapper_setYRow(handle:not null QMapperH;yRow:integer);
 pragma Import(C,QHXYModelMapper_setYRow, "QHXYModelMapper_setYRow");
 
 function  QHXYModelMapper_firstColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHXYModelMapper_firstColumn, "QHXYModelMapper_firstColumn");
 
 procedure QHXYModelMapper_setFirstColumn(handle:not null QMapperH;firstColumn:integer);
 pragma Import(C,QHXYModelMapper_setFirstColumn, "QHXYModelMapper_setFirstColumn");
 
 function  QHXYModelMapper_columnCount(handle:not null QMapperH) return integer;
 pragma Import(C,QHXYModelMapper_columnCount, "QHXYModelMapper_columnCount");
 
 procedure QHXYModelMapper_setColumnCount(handle:not null QMapperH;columnCount:integer);
 pragma Import(C,QHXYModelMapper_setColumnCount, "QHXYModelMapper_setColumnCount");
 

 procedure QHXYModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHXYModelMapper_signal_slot_seriesReplaced, "QHXYModelMapper_signal_slot_seriesReplaced");
 
 procedure QHXYModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHXYModelMapper_signal_slot_modelReplaced, "QHXYModelMapper_signal_slot_modelReplaced");
 
 procedure QHXYModelMapper_signal_slot_xRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHXYModelMapper_signal_slot_xRowChanged, "QHXYModelMapper_signal_slot_xRowChanged");
 
 procedure QHXYModelMapper_signal_slot_yRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHXYModelMapper_signal_slot_yRowChanged, "QHXYModelMapper_signal_slot_yRowChanged");
 
 procedure QHXYModelMapper_signal_slot_firstColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHXYModelMapper_signal_slot_firstColumnChanged, "QHXYModelMapper_signal_slot_firstColumnChanged");
 
 procedure QHXYModelMapper_signal_slot_columnCountChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHXYModelMapper_signal_slot_columnCountChanged, "QHXYModelMapper_signal_slot_columnCountChanged");
 

end;
