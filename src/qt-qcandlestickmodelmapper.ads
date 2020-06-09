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

package Qt.QCandlestickModelMapper is

 procedure QCandlestickModelMapper_setModel(handle:not null QMapperH;model:QAbstractItemModelH);
 pragma Import(C,QCandlestickModelMapper_setModel, "QCandlestickModelMapper_setModel");
 
 function  QCandlestickModelMapper_model(handle:not null QMapperH) return QAbstractItemModelH;
 pragma Import(C,QCandlestickModelMapper_model, "QCandlestickModelMapper_model");
 
 procedure QCandlestickModelMapper_setSeries(handle:not null QMapperH;series:QSeriesH);
 pragma Import(C,QCandlestickModelMapper_setSeries, "QCandlestickModelMapper_setSeries");
 
 function  QCandlestickModelMapper_series(handle:not null QMapperH) return QSeriesH;
 pragma Import(C,QCandlestickModelMapper_series, "QCandlestickModelMapper_series");
 
 function  QCandlestickModelMapper_orientation(handle:not null QMapperH) return QtOrientation;
 pragma Import(C,QCandlestickModelMapper_orientation, "QCandlestickModelMapper_orientation");
 
 procedure QCandlestickModelMapper_setTimestamp(handle:not null QMapperH;timestamp:integer);
 pragma Import(C,QCandlestickModelMapper_setTimestamp, "QCandlestickModelMapper_setTimestamp");
 
 function  QCandlestickModelMapper_timestamp(handle:not null QMapperH) return integer;
 pragma Import(C,QCandlestickModelMapper_timestamp, "QCandlestickModelMapper_timestamp");
 
 procedure QCandlestickModelMapper_setOpen(handle:not null QMapperH;open:integer);
 pragma Import(C,QCandlestickModelMapper_setOpen, "QCandlestickModelMapper_setOpen");
 
 function  QCandlestickModelMapper_open(handle:not null QMapperH) return integer;
 pragma Import(C,QCandlestickModelMapper_open, "QCandlestickModelMapper_open");
 
 procedure QCandlestickModelMapper_setHigh(handle:not null QMapperH;high:integer);
 pragma Import(C,QCandlestickModelMapper_setHigh, "QCandlestickModelMapper_setHigh");
 
 function  QCandlestickModelMapper_high(handle:not null QMapperH) return integer;
 pragma Import(C,QCandlestickModelMapper_high, "QCandlestickModelMapper_high");
 
 procedure QCandlestickModelMapper_setLow(handle:not null QMapperH;low:integer);
 pragma Import(C,QCandlestickModelMapper_setLow, "QCandlestickModelMapper_setLow");
 
 function  QCandlestickModelMapper_low(handle:not null QMapperH) return integer;
 pragma Import(C,QCandlestickModelMapper_low, "QCandlestickModelMapper_low");
 
 procedure QCandlestickModelMapper_setClose(handle:not null QMapperH;close:integer);
 pragma Import(C,QCandlestickModelMapper_setClose, "QCandlestickModelMapper_setClose");
 
 function  QCandlestickModelMapper_close(handle:not null QMapperH) return integer;
 pragma Import(C,QCandlestickModelMapper_close, "QCandlestickModelMapper_close");
 
 procedure QCandlestickModelMapper_setFirstSetSection(handle:not null QMapperH;firstSetSection:integer);
 pragma Import(C,QCandlestickModelMapper_setFirstSetSection, "QCandlestickModelMapper_setFirstSetSection");
 
 function  QCandlestickModelMapper_firstSetSection(handle:not null QMapperH) return integer;
 pragma Import(C,QCandlestickModelMapper_firstSetSection, "QCandlestickModelMapper_firstSetSection");
 
 procedure QCandlestickModelMapper_setLastSetSection(handle:not null QMapperH;lastSetSection:integer);
 pragma Import(C,QCandlestickModelMapper_setLastSetSection, "QCandlestickModelMapper_setLastSetSection");
 
 function  QCandlestickModelMapper_lastSetSection(handle:not null QMapperH) return integer;
 pragma Import(C,QCandlestickModelMapper_lastSetSection, "QCandlestickModelMapper_lastSetSection");
 
 procedure QCandlestickModelMapper_signal_slot_modelReplaced(handle:not null QMapperH;hook: voidCallbackH);
 pragma Import(C,QCandlestickModelMapper_signal_slot_modelReplaced, "QCandlestickModelMapper_signal_slot_modelReplaced");
 
 procedure QCandlestickModelMapper_signal_slot_seriesReplaced(handle:not null QMapperH;hook: voidCallbackH);
 pragma Import(C,QCandlestickModelMapper_signal_slot_seriesReplaced, "QCandlestickModelMapper_signal_slot_seriesReplaced");
 
end;
