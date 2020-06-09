--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractAxis;
package Qt.QDateTimeAxis is

 function  QDateTimeAxis_create(parent:QObjectH := null) return QAxisH;
 pragma Import(C,QDateTimeAxis_create, "QDateTimeAxis_create");
 
 procedure QDateTimeAxis_destroy(handle:not null QAxisH);
 pragma Import(C,QDateTimeAxis_destroy, "QDateTimeAxis_destroy");
 
 function  QDateTimeAxis_type(handle:not null QAxisH) return Qt.QAbstractAxis.AxisType;
 pragma Import(C,QDateTimeAxis_type, "QDateTimeAxis_type");
 
 procedure QDateTimeAxis_setMin(handle:not null QAxisH;min:QDateTimeH);
 pragma Import(C,QDateTimeAxis_setMin, "QDateTimeAxis_setMin");
 
 function  QDateTimeAxis_min(handle:not null QAxisH) return QDateTimeH;
 pragma Import(C,QDateTimeAxis_min, "QDateTimeAxis_min");
 
 procedure QDateTimeAxis_setMax(handle:not null QAxisH;max:QDateTimeH);
 pragma Import(C,QDateTimeAxis_setMax, "QDateTimeAxis_setMax");
 
 function  QDateTimeAxis_max(handle:not null QAxisH) return QDateTimeH;
 pragma Import(C,QDateTimeAxis_max, "QDateTimeAxis_max");
 
 procedure QDateTimeAxis_setRange(handle:not null QAxisH;min:QDateTimeH;max: QDateTimeH);
 pragma Import(C,QDateTimeAxis_setRange, "QDateTimeAxis_setRange");
 
 procedure QDateTimeAxis_setFormat(handle:not null QAxisH;format:QStringH);
 pragma Import(C,QDateTimeAxis_setFormat, "QDateTimeAxis_setFormat");
 
 function  QDateTimeAxis_format(handle:not null QAxisH) return QStringH;
 pragma Import(C,QDateTimeAxis_format, "QDateTimeAxis_format");
 
 procedure QDateTimeAxis_setTickCount(handle:not null QAxisH;count:integer);
 pragma Import(C,QDateTimeAxis_setTickCount, "QDateTimeAxis_setTickCount");
 
 function  QDateTimeAxis_tickCount(handle:not null QAxisH) return integer;
 pragma Import(C,QDateTimeAxis_tickCount, "QDateTimeAxis_tickCount");
 

 type dtCallbackH is access procedure(dt: QDateTimeH);
 pragma convention(C,dtCallbackH);
 
 type dtdtCallbackH is access procedure(dt1,dt2: QDateTimeH);
 pragma convention(C,dtdtCallbackH);

 procedure QDateTimeAxis_signal_slot_minChanged(handle:not null QAxisH;hook:dtcallbackH);
 pragma Import(C,QDateTimeAxis_signal_slot_minChanged, "QDateTimeAxis_signal_slot_minChanged");
 
 procedure QDateTimeAxis_signal_slot_maxChanged(handle:not null QAxisH;hook:dtcallbackH);
 pragma Import(C,QDateTimeAxis_signal_slot_maxChanged, "QDateTimeAxis_signal_slot_maxChanged");
 
 procedure QDateTimeAxis_signal_slot_rangeChanged(handle:not null QAxisH;hook:dtdtcallbackH);
 pragma Import(C,QDateTimeAxis_signal_slot_rangeChanged, "QDateTimeAxis_signal_slot_rangeChanged");
 
 procedure QDateTimeAxis_signal_slot_formatChanged(handle:not null QAxisH;hook:QStringCallbackH);
 pragma Import(C,QDateTimeAxis_signal_slot_formatChanged, "QDateTimeAxis_signal_slot_formatChanged");
 
 procedure QDateTimeAxis_signal_slot_tickCountChanged(handle:not null QAxisH;hook: intCallbackH);
 pragma Import(C,QDateTimeAxis_signal_slot_tickCountChanged, "QDateTimeAxis_signal_slot_tickCountChanged");
 
end;
