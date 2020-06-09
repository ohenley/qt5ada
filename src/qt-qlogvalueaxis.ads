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
package Qt.QLogValueAxis is 

 function  QLogValueAxis_create(parent:QObjectH := null) return QAxisH;
 pragma Import(C,QLogValueAxis_create, "QLogValueAxis_create");
 
 procedure QLogValueAxis_destroy(handle:not null QAxisH);
 pragma Import(C,QLogValueAxis_destroy, "QLogValueAxis_destroy");
 
 function  QLogValueAxis_type(handle:not null QAxisH) return Qt.QAbstractAxis.AxisType;
 pragma Import(C,QLogValueAxis_type, "QLogValueAxis_type");
 
 procedure QLogValueAxis_setMin(handle:not null QAxisH;min:qreal);
 pragma Import(C,QLogValueAxis_setMin, "QLogValueAxis_setMin");
 
 function  QLogValueAxis_min(handle:not null QAxisH) return qreal;
 pragma Import(C,QLogValueAxis_min, "QLogValueAxis_min");
 
 procedure QLogValueAxis_setMax(handle:not null QAxisH;max:qreal);
 pragma Import(C,QLogValueAxis_setMax, "QLogValueAxis_setMax");
 
 function  QLogValueAxis_max(handle:not null QAxisH) return qreal;
 pragma Import(C,QLogValueAxis_max, "QLogValueAxis_max");
 
 procedure QLogValueAxis_setRange(handle:not null QAxisH;min,max: qreal);
 pragma Import(C,QLogValueAxis_setRange, "QLogValueAxis_setRange");
 
 procedure QLogValueAxis_setLabelFormat(handle:not null QAxisH;format:QStringH);
 pragma Import(C,QLogValueAxis_setLabelFormat, "QLogValueAxis_setLabelFormat");
 
 function  QLogValueAxis_labelFormat(handle:not null QAxisH) return QStringH;
 pragma Import(C,QLogValueAxis_labelFormat, "QLogValueAxis_labelFormat");
 
 procedure QLogValueAxis_setBase(handle:not null QAxisH;base:qreal);
 pragma Import(C,QLogValueAxis_setBase, "QLogValueAxis_setBase");
 
 function  QLogValueAxis_base(handle:not null QAxisH) return qreal;
 pragma Import(C,QLogValueAxis_base, "QLogValueAxis_base");
 
 function  QLogValueAxis_tickCount(handle:not null QAxisH) return integer;
 pragma Import(C,QLogValueAxis_tickCount, "QLogValueAxis_tickCount");
 
 procedure QLogValueAxis_setMinorTickCount(handle:not null QAxisH;minorTickCount:integer);
 pragma Import(C,QLogValueAxis_setMinorTickCount, "QLogValueAxis_setMinorTickCount");
 
 function  QLogValueAxis_minorTickCount(handle:not null QAxisH) return integer;
 pragma Import(C,QLogValueAxis_minorTickCount, "QLogValueAxis_minorTickCount");
 
 type qrealRealCallbackH is access procedure(p1,p2:qreal);
 pragma convention(C,qrealRealCallbackH);

 procedure QLogValueAxis_signal_slot_minChanged(handle:not null QAxisH;hook: qrealCallbackH);
 pragma Import(C,QLogValueAxis_signal_slot_minChanged, "QLogValueAxis_signal_slot_minChanged");
 
 procedure QLogValueAxis_signal_slot_maxChanged(handle:not null QAxisH;hook: qrealCallbackH);
 pragma Import(C,QLogValueAxis_signal_slot_maxChanged, "QLogValueAxis_signal_slot_maxChanged");
 
 procedure QLogValueAxis_signal_slot_rangeChanged(handle:not null QAxisH;hook: qrealRealCallbackH);
 pragma Import(C,QLogValueAxis_signal_slot_rangeChanged, "QLogValueAxis_signal_slot_rangeChanged");
 
 procedure QLogValueAxis_signal_slot_labelFormatChanged(handle:not null QAxisH;hook:QStringCallbackH);
 pragma Import(C,QLogValueAxis_signal_slot_labelFormatChanged, "QLogValueAxis_signal_slot_labelFormatChanged");
 
 procedure QLogValueAxis_signal_slot_baseChanged(handle:not null QAxisH;hook: qrealCallbackH);
 pragma Import(C,QLogValueAxis_signal_slot_baseChanged, "QLogValueAxis_signal_slot_baseChanged");

 procedure QValueAxis_signal_slot_tickCountChanged(handle:not null QAxisH;hook:intCallbackH);
 pragma Import(C,QValueAxis_signal_slot_tickCountChanged, "QValueAxis_signal_slot_tickCountChanged");
 
 procedure QValueAxis_signal_slot_minorTickCountChanged(handle:not null QAxisH;hook:intCallbackH);
 pragma Import(C,QValueAxis_signal_slot_minorTickCountChanged, "QValueAxis_signal_slot_minorTickCountChanged");

end;
