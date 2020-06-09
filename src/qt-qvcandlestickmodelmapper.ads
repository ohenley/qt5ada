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

package Qt.QVCandlestickModelMapper is

 function  QVCandlestickModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QVCandlestickModelMapper_create, "QVCandlestickModelMapper_create");
 
 function  QVCandlestickModelMapper_orientation(handle:not null QMapperH) return QtOrientation;
 pragma Import(C,QVCandlestickModelMapper_orientation, "QVCandlestickModelMapper_orientation");
 
 procedure QVCandlestickModelMapper_setTimestampRow(handle:not null QMapperH;timestampRow:integer);
 pragma Import(C,QVCandlestickModelMapper_setTimestampRow, "QVCandlestickModelMapper_setTimestampRow");
 
 function  QVCandlestickModelMapper_timestampRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVCandlestickModelMapper_timestampRow, "QVCandlestickModelMapper_timestampRow");
 
 procedure QVCandlestickModelMapper_setOpenRow(handle:not null QMapperH;openRow:integer);
 pragma Import(C,QVCandlestickModelMapper_setOpenRow, "QVCandlestickModelMapper_setOpenRow");
 
 function  QVCandlestickModelMapper_openRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVCandlestickModelMapper_openRow, "QVCandlestickModelMapper_openRow");
 
 procedure QVCandlestickModelMapper_setHighRow(handle:not null QMapperH;highRow:integer);
 pragma Import(C,QVCandlestickModelMapper_setHighRow, "QVCandlestickModelMapper_setHighRow");
 
 function  QVCandlestickModelMapper_highRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVCandlestickModelMapper_highRow, "QVCandlestickModelMapper_highRow");
 
 procedure QVCandlestickModelMapper_setLowRow(handle:not null QMapperH;lowRow:integer);
 pragma Import(C,QVCandlestickModelMapper_setLowRow, "QVCandlestickModelMapper_setLowRow");
 
 function  QVCandlestickModelMapper_lowRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVCandlestickModelMapper_lowRow, "QVCandlestickModelMapper_lowRow");
 
 procedure QVCandlestickModelMapper_setCloseRow(handle:not null QMapperH;closeRow:integer);
 pragma Import(C,QVCandlestickModelMapper_setCloseRow, "QVCandlestickModelMapper_setCloseRow");
 
 function  QVCandlestickModelMapper_closeRow(handle:not null QMapperH) return integer;
 pragma Import(C,QVCandlestickModelMapper_closeRow, "QVCandlestickModelMapper_closeRow");
 
 procedure QVCandlestickModelMapper_setFirstSetColumn(handle:not null QMapperH;firstSetColumn:integer);
 pragma Import(C,QVCandlestickModelMapper_setFirstSetColumn, "QVCandlestickModelMapper_setFirstSetColumn");
 
 function  QVCandlestickModelMapper_firstSetColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVCandlestickModelMapper_firstSetColumn, "QVCandlestickModelMapper_firstSetColumn");
 
 procedure QVCandlestickModelMapper_setLastSetColumn(handle:not null QMapperH;lastSetColumn:integer);
 pragma Import(C,QVCandlestickModelMapper_setLastSetColumn, "QVCandlestickModelMapper_setLastSetColumn");
 
 function  QVCandlestickModelMapper_lastSetColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QVCandlestickModelMapper_lastSetColumn, "QVCandlestickModelMapper_lastSetColumn");
 

 procedure QVCandlestickModelMapper_signal_slot_timestampRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVCandlestickModelMapper_signal_slot_timestampRowChanged, "QVCandlestickModelMapper_signal_slot_timestampRowChanged");
 
 procedure QVCandlestickModelMapper_signal_slot_openRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVCandlestickModelMapper_signal_slot_openRowChanged, "QVCandlestickModelMapper_signal_slot_openRowChanged");
 
 procedure QVCandlestickModelMapper_signal_slot_highRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVCandlestickModelMapper_signal_slot_highRowChanged, "QVCandlestickModelMapper_signal_slot_highRowChanged");
 
 procedure QVCandlestickModelMapper_signal_slot_lowRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVCandlestickModelMapper_signal_slot_lowRowChanged, "QVCandlestickModelMapper_signal_slot_lowRowChanged");
 
 procedure QVCandlestickModelMapper_signal_slot_closeRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVCandlestickModelMapper_signal_slot_closeRowChanged, "QVCandlestickModelMapper_signal_slot_closeRowChanged");
 
 procedure QVCandlestickModelMapper_signal_slot_firstSetColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVCandlestickModelMapper_signal_slot_firstSetColumnChanged, "QVCandlestickModelMapper_signal_slot_firstSetColumnChanged");
 
 procedure QVCandlestickModelMapper_signal_slot_lastSetColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QVCandlestickModelMapper_signal_slot_lastSetColumnChanged, "QVCandlestickModelMapper_signal_slot_lastSetColumnChanged");
 

end;
