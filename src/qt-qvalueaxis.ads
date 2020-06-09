-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

-- Thanks a lot for Stefan Frings  QtWebApp http://stefanfrings.de
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractAxis;
package Qt.QValueAxis is

 function  QValueAxis_create(parent:QObjectH := null) return QAxisH;
 pragma Import(C,QValueAxis_create, "QValueAxis_create");
 
 procedure QValueAxis_destroy(handle:not null QAxisH);
 pragma Import(C,QValueAxis_destroy, "QValueAxis_destroy");
 
 function  QValueAxis_type(handle:not null QAxisH) return Qt.QAbstractAxis.AxisType;
 pragma Import(C,QValueAxis_type, "QValueAxis_type");
 
 procedure QValueAxis_setMin(handle:not null QAxisH;min:qreal);
 pragma Import(C,QValueAxis_setMin, "QValueAxis_setMin");
 
 function  QValueAxis_min(handle:not null QAxisH) return qreal;
 pragma Import(C,QValueAxis_min, "QValueAxis_min");
 
 procedure QValueAxis_setMax(handle:not null QAxisH;max:qreal);
 pragma Import(C,QValueAxis_setMax, "QValueAxis_setMax");
 
 function  QValueAxis_max(handle:not null QAxisH) return qreal;
 pragma Import(C,QValueAxis_max, "QValueAxis_max");
 
 procedure QValueAxis_setRange(handle:not null QAxisH;min:qreal;max: qreal);
 pragma Import(C,QValueAxis_setRange, "QValueAxis_setRange");
 
 procedure QValueAxis_setTickCount(handle:not null QAxisH;count:integer);
 pragma Import(C,QValueAxis_setTickCount, "QValueAxis_setTickCount");
 
 function  QValueAxis_tickCount(handle:not null QAxisH) return integer;
 pragma Import(C,QValueAxis_tickCount, "QValueAxis_tickCount");
 
 procedure QValueAxis_setMinorTickCount(handle:not null QAxisH;count:integer);
 pragma Import(C,QValueAxis_setMinorTickCount, "QValueAxis_setMinorTickCount");
 
 function  QValueAxis_minorTickCount(handle:not null QAxisH) return integer;
 pragma Import(C,QValueAxis_minorTickCount, "QValueAxis_minorTickCount");
 
 procedure QValueAxis_setLabelFormat(handle:not null QAxisH;format:QStringH);
 pragma Import(C,QValueAxis_setLabelFormat, "QValueAxis_setLabelFormat");
 
 function  QValueAxis_labelFormat(handle:not null QAxisH) return QStringH;
 pragma Import(C,QValueAxis_labelFormat, "QValueAxis_labelFormat");
 
 procedure QValueAxis_applyNiceNumbers(handle:not null QAxisH);
 pragma Import(C,QValueAxis_applyNiceNumbers, "QValueAxis_applyNiceNumbers");
 

 type qrealQrealCallbackH is access procedure(p1,p2:qreal);
 pragma convention(C,qrealQrealCallbackH);
 
 procedure QValueAxis_signal_slot_minChanged(handle:not null QAxisH;hook:qrealCallbackH);
 pragma Import(C,QValueAxis_signal_slot_minChanged, "QValueAxis_signal_slot_minChanged");
 
 procedure QValueAxis_signal_slot_maxChanged(handle:not null QAxisH;hook:qrealCallbackH);
 pragma Import(C,QValueAxis_signal_slot_maxChanged, "QValueAxis_signal_slot_maxChanged");
 
 procedure QValueAxis_signal_slot_rangeChanged(handle:not null QAxisH;hook:qrealQrealCallbackH);
 pragma Import(C,QValueAxis_signal_slot_rangeChanged, "QValueAxis_signal_slot_rangeChanged");
 
 procedure QValueAxis_signal_slot_tickCountChanged(handle:not null QAxisH;hook:intCallbackH);
 pragma Import(C,QValueAxis_signal_slot_tickCountChanged, "QValueAxis_signal_slot_tickCountChanged");
 
 procedure QValueAxis_signal_slot_minorTickCountChanged(handle:not null QAxisH;hook:intCallbackH);
 pragma Import(C,QValueAxis_signal_slot_minorTickCountChanged, "QValueAxis_signal_slot_minorTickCountChanged");
 
 procedure QValueAxis_signal_slot_labelFormatChanged(handle:not null QAxisH;hook:QstringCallbackH);
 pragma Import(C,QValueAxis_signal_slot_labelFormatChanged, "QValueAxis_signal_slot_labelFormatChanged");
 
end;
