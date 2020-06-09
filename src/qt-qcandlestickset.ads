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

package Qt.QCandlestickSet is

 function  QCandlestickSet_create(timestamp: qreal := 0.0;parent : QObjectH :=  null) return QSetH;
 pragma Import(C,QCandlestickSet_create, "QCandlestickSet_create");
 
 function  QCandlestickSet_create2(open,high,low,close: qreal;timestamp : qreal :=  0.0;parent :QObjectH :=  null) return QSetH;
 pragma Import(C,QCandlestickSet_create2, "QCandlestickSet_create2");
 
 procedure QCandlestickSet_destroy(handle:not null QSetH);
 pragma Import(C,QCandlestickSet_destroy, "QCandlestickSet_destroy");
 
 procedure QCandlestickSet_setTimestamp(handle:not null QSetH;timestamp:qreal);
 pragma Import(C,QCandlestickSet_setTimestamp, "QCandlestickSet_setTimestamp");
 
 function  QCandlestickSet_timestamp(handle:not null QSetH) return qreal;
 pragma Import(C,QCandlestickSet_timestamp, "QCandlestickSet_timestamp");
 
 procedure QCandlestickSet_setOpen(handle:not null QSetH;open:qreal);
 pragma Import(C,QCandlestickSet_setOpen, "QCandlestickSet_setOpen");
 
 function  QCandlestickSet_open(handle:not null QSetH) return qreal;
 pragma Import(C,QCandlestickSet_open, "QCandlestickSet_open");
 
 procedure QCandlestickSet_setHigh(handle:not null QSetH;high:qreal);
 pragma Import(C,QCandlestickSet_setHigh, "QCandlestickSet_setHigh");
 
 function  QCandlestickSet_high(handle:not null QSetH) return qreal;
 pragma Import(C,QCandlestickSet_high, "QCandlestickSet_high");
 
 procedure QCandlestickSet_setLow(handle:not null QSetH;low:qreal);
 pragma Import(C,QCandlestickSet_setLow, "QCandlestickSet_setLow");
 
 function  QCandlestickSet_low(handle:not null QSetH) return qreal;
 pragma Import(C,QCandlestickSet_low, "QCandlestickSet_low");
 
 procedure QCandlestickSet_setClose(handle:not null QSetH;close:qreal);
 pragma Import(C,QCandlestickSet_setClose, "QCandlestickSet_setClose");
 
 function  QCandlestickSet_close(handle:not null QSetH) return qreal;
 pragma Import(C,QCandlestickSet_close, "QCandlestickSet_close");
 
 procedure QCandlestickSet_setBrush(handle:not null QSetH;brush:QBrushH);
 pragma Import(C,QCandlestickSet_setBrush, "QCandlestickSet_setBrush");
 
 function  QCandlestickSet_brush(handle:not null QSetH) return QBrushH;
 pragma Import(C,QCandlestickSet_brush, "QCandlestickSet_brush");
 
 procedure QCandlestickSet_setPen(handle:not null QSetH;pen:QPenH);
 pragma Import(C,QCandlestickSet_setPen, "QCandlestickSet_setPen");
 
 function  QCandlestickSet_pen(handle:not null QSetH) return QPenH;
 pragma Import(C,QCandlestickSet_pen, "QCandlestickSet_pen");
 

 procedure QCandlestickSet_signal_slot_clicked(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_clicked, "QCandlestickSet_signal_slot_clicked");
 
 procedure QCandlestickSet_signal_slot_pressed(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_pressed, "QCandlestickSet_signal_slot_pressed");
 
 procedure QCandlestickSet_signal_slot_released(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_released, "QCandlestickSet_signal_slot_released");
 
 procedure QCandlestickSet_signal_slot_doubleClicked(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_doubleClicked, "QCandlestickSet_signal_slot_doubleClicked");
 
 procedure QCandlestickSet_signal_slot_timestampChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_timestampChanged, "QCandlestickSet_signal_slot_timestampChanged");
 
 procedure QCandlestickSet_signal_slot_openChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_openChanged, "QCandlestickSet_signal_slot_openChanged");
 
 procedure QCandlestickSet_signal_slot_highChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_highChanged, "QCandlestickSet_signal_slot_highChanged");
 
 procedure QCandlestickSet_signal_slot_lowChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_lowChanged, "QCandlestickSet_signal_slot_lowChanged");
 
 procedure QCandlestickSet_signal_slot_closeChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_closeChanged, "QCandlestickSet_signal_slot_closeChanged");
 
 procedure QCandlestickSet_signal_slot_brushChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_brushChanged, "QCandlestickSet_signal_slot_brushChanged");
 
 procedure QCandlestickSet_signal_slot_penChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_penChanged, "QCandlestickSet_signal_slot_penChanged");
 
 procedure QCandlestickSet_signal_slot_hovered(handle:not null QSetH;hook: boolCallbackH);
 pragma Import(C,QCandlestickSet_signal_slot_hovered, "QCandlestickSet_signal_slot_hovered");
 
 function  QCandlestickSet_create(open,high,low,close: qreal;timestamp : qreal :=  0.0;parent :QObjectH :=  null) return QSetH;

end;
