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

package Qt.QHCandlestickModelMapper is

 function  QHCandlestickModelMapper_create(parent:QObjectH := null) return QMapperH;
 pragma Import(C,QHCandlestickModelMapper_create, "QHCandlestickModelMapper_create");
 
 function  QHCandlestickModelMapper_orientation(handle:not null QMapperH) return QtOrientation;
 pragma Import(C,QHCandlestickModelMapper_orientation, "QHCandlestickModelMapper_orientation");
 
 procedure QHCandlestickModelMapper_setTimestampColumn(handle:not null QMapperH;timestampColumn:integer);
 pragma Import(C,QHCandlestickModelMapper_setTimestampColumn, "QHCandlestickModelMapper_setTimestampColumn");
 
 function  QHCandlestickModelMapper_timestampColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHCandlestickModelMapper_timestampColumn, "QHCandlestickModelMapper_timestampColumn");
 
 procedure QHCandlestickModelMapper_setOpenColumn(handle:not null QMapperH;openColumn:integer);
 pragma Import(C,QHCandlestickModelMapper_setOpenColumn, "QHCandlestickModelMapper_setOpenColumn");
 
 function  QHCandlestickModelMapper_openColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHCandlestickModelMapper_openColumn, "QHCandlestickModelMapper_openColumn");
 
 procedure QHCandlestickModelMapper_setHighColumn(handle:not null QMapperH;highColumn:integer);
 pragma Import(C,QHCandlestickModelMapper_setHighColumn, "QHCandlestickModelMapper_setHighColumn");
 
 function  QHCandlestickModelMapper_highColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHCandlestickModelMapper_highColumn, "QHCandlestickModelMapper_highColumn");
 
 procedure QHCandlestickModelMapper_setLowColumn(handle:not null QMapperH;lowColumn:integer);
 pragma Import(C,QHCandlestickModelMapper_setLowColumn, "QHCandlestickModelMapper_setLowColumn");
 
 function  QHCandlestickModelMapper_lowColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHCandlestickModelMapper_lowColumn, "QHCandlestickModelMapper_lowColumn");
 
 procedure QHCandlestickModelMapper_setCloseColumn(handle:not null QMapperH;closeColumn:integer);
 pragma Import(C,QHCandlestickModelMapper_setCloseColumn, "QHCandlestickModelMapper_setCloseColumn");
 
 function  QHCandlestickModelMapper_closeColumn(handle:not null QMapperH) return integer;
 pragma Import(C,QHCandlestickModelMapper_closeColumn, "QHCandlestickModelMapper_closeColumn");
 
 procedure QHCandlestickModelMapper_setFirstSetRow(handle:not null QMapperH;firstSetRow:integer);
 pragma Import(C,QHCandlestickModelMapper_setFirstSetRow, "QHCandlestickModelMapper_setFirstSetRow");
 
 function  QHCandlestickModelMapper_firstSetRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHCandlestickModelMapper_firstSetRow, "QHCandlestickModelMapper_firstSetRow");
 
 procedure QHCandlestickModelMapper_setLastSetRow(handle:not null QMapperH;lastSetRow:integer);
 pragma Import(C,QHCandlestickModelMapper_setLastSetRow, "QHCandlestickModelMapper_setLastSetRow");
 
 function  QHCandlestickModelMapper_lastSetRow(handle:not null QMapperH) return integer;
 pragma Import(C,QHCandlestickModelMapper_lastSetRow, "QHCandlestickModelMapper_lastSetRow");
 
 procedure QHCandlestickModelMapper_signal_slot_timestampColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHCandlestickModelMapper_signal_slot_timestampColumnChanged, "QHCandlestickModelMapper_signal_slot_timestampColumnChanged");
 
 procedure QHCandlestickModelMapper_signal_slot_openColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHCandlestickModelMapper_signal_slot_openColumnChanged, "QHCandlestickModelMapper_signal_slot_openColumnChanged");
 
 procedure QHCandlestickModelMapper_signal_slot_highColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHCandlestickModelMapper_signal_slot_highColumnChanged, "QHCandlestickModelMapper_signal_slot_highColumnChanged");
 
 procedure QHCandlestickModelMapper_signal_slot_lowColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHCandlestickModelMapper_signal_slot_lowColumnChanged, "QHCandlestickModelMapper_signal_slot_lowColumnChanged");
 
 procedure QHCandlestickModelMapper_signal_slot_closeColumnChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHCandlestickModelMapper_signal_slot_closeColumnChanged, "QHCandlestickModelMapper_signal_slot_closeColumnChanged");
 
 procedure QHCandlestickModelMapper_signal_slot_firstSetRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHCandlestickModelMapper_signal_slot_firstSetRowChanged, "QHCandlestickModelMapper_signal_slot_firstSetRowChanged");
 
 procedure QHCandlestickModelMapper_signal_slot_lastSetRowChanged(handle:not null QMapperH;hook:voidCallbackH);
 pragma Import(C,QHCandlestickModelMapper_signal_slot_lastSetRowChanged, "QHCandlestickModelMapper_signal_slot_lastSetRowChanged");
 
end;
