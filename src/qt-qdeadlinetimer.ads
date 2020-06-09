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
--

with Qt; use Qt; 
with Qt.QNamespace;
package  Qt.QDeadlineTimer is

 type ForeverConstant is (Forever);
 pragma convention(C,ForeverConstant);

 function  QDeadlineTimer_create(msecs:qint64;typeTymer : integer :=  Qt.QNamespace.CoarseTimer) return QDeadlineTimerH;
 pragma Import(C,QDeadlineTimer_create, "QDeadlineTimer_create");
 
 function  QDeadlineTimer_create2(typeTimer:integer := Qt.QNamespace.CoarseTimer) return QDeadlineTimerH;
 pragma Import(C,QDeadlineTimer_create2, "QDeadlineTimer_create2");
 
 function  QDeadlineTimer_create3(fc:ForeverConstant;typeTimer : integer :=  Qt.QNamespace.CoarseTimer) return QDeadlineTimerH;
 pragma Import(C,QDeadlineTimer_create3, "QDeadlineTimer_create3");
 
 procedure QDeadlineTimer_destroy(handle:not null QDeadlineTimerH);
 pragma Import(C,QDeadlineTimer_destroy, "QDeadlineTimer_destroy");
 
 procedure QDeadlineTimer_swap(handle:not null QDeadlineTimerH;otherTimer:QDeadlineTimerH);
 pragma Import(C,QDeadlineTimer_swap, "QDeadlineTimer_swap");
 
 function  QDeadlineTimer_isForever(handle:not null QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_isForever, "QDeadlineTimer_isForever");
 
 function  QDeadlineTimer_hasExpired(handle:not null QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_hasExpired, "QDeadlineTimer_hasExpired");
 
 function  QDeadlineTimer_timerType(handle:not null QDeadlineTimerH) return integer;
 pragma Import(C,QDeadlineTimer_timerType, "QDeadlineTimer_timerType");
 
 procedure QDeadlineTimer_setTimerType(handle:not null QDeadlineTimerH;typeTimer:integer);
 pragma Import(C,QDeadlineTimer_setTimerType, "QDeadlineTimer_setTimerType");
 
 function  QDeadlineTimer_remainingTime(handle:not null QDeadlineTimerH) return qint64;
 pragma Import(C,QDeadlineTimer_remainingTime, "QDeadlineTimer_remainingTime");
 
 function  QDeadlineTimer_remainingTimeNSecs(handle:not null QDeadlineTimerH) return qint64;
 pragma Import(C,QDeadlineTimer_remainingTimeNSecs, "QDeadlineTimer_remainingTimeNSecs");
 
 procedure QDeadlineTimer_setRemainingTime(handle:not null QDeadlineTimerH;msecs:qint64;typeTimer : integer :=  Qt.QNamespace.CoarseTimer);
 pragma Import(C,QDeadlineTimer_setRemainingTime, "QDeadlineTimer_setRemainingTime");
 
 procedure QDeadlineTimer_setPreciseRemainingTime(handle:not null QDeadlineTimerH;secs:qint64;nsecs : qint64 :=  0;typeTimer :integer :=  Qt.QNamespace.CoarseTimer);
 pragma Import(C,QDeadlineTimer_setPreciseRemainingTime, "QDeadlineTimer_setPreciseRemainingTime");
 
 function  QDeadlineTimer_deadline(handle:not null QDeadlineTimerH) return qint64;
 pragma Import(C,QDeadlineTimer_deadline, "QDeadlineTimer_deadline");
 
 function  QDeadlineTimer_deadlineNSecs(handle:not null QDeadlineTimerH) return qint64;
 pragma Import(C,QDeadlineTimer_deadlineNSecs, "QDeadlineTimer_deadlineNSecs");
 
 procedure QDeadlineTimer_setDeadline(handle:not null QDeadlineTimerH;msecs:qint64;timerType : integer :=  Qt.QNamespace.CoarseTimer);
 pragma Import(C,QDeadlineTimer_setDeadline, "QDeadlineTimer_setDeadline");
 
 procedure QDeadlineTimer_setPreciseDeadline(handle:not null QDeadlineTimerH;secs:qint64;nsecs : qint64 :=  0;typeTimer :integer :=  Qt.QNamespace.CoarseTimer);
 pragma Import(C,QDeadlineTimer_setPreciseDeadline, "QDeadlineTimer_setPreciseDeadline");
 
 function  QDeadlineTimer_addNSecs(dt:QDeadlineTimerH ;nsecs: qint64) return QDeadlineTimerH;
 pragma Import(C,QDeadlineTimer_addNSecs, "QDeadlineTimer_addNSecs");
 
 function  QDeadlineTimer_current(timerType :integer := Qt.QNamespace.CoarseTimer) return QDeadlineTimerH;
 pragma Import(C,QDeadlineTimer_current, "QDeadlineTimer_current");
 
 function  QDeadlineTimer_eq(d1,d2: QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_eq, "QDeadlineTimer_eq");
 
 function  QDeadlineTimer_ne(d1,d2: QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_ne, "QDeadlineTimer_ne");
 
 function  QDeadlineTimer_lt(d1,d2: QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_lt, "QDeadlineTimer_lt");
 
 function  QDeadlineTimer_le(d1,d2: QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_le, "QDeadlineTimer_le");
 
 function  QDeadlineTimer_gt(d1,d2: QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_gt, "QDeadlineTimer_gt");
 
 function  QDeadlineTimer_ge(d1,d2: QDeadlineTimerH) return boolean;
 pragma Import(C,QDeadlineTimer_ge, "QDeadlineTimer_ge");
 
 function  QDeadlineTimer_plus(dt:QDeadlineTimerH;msecs :qint64) return QDeadlineTimerH;
 pragma Import(C,QDeadlineTimer_plus, "QDeadlineTimer_plus");
 
 function  QDeadlineTimer_minus(dt:QDeadlineTimerH;msecs :qint64) return QDeadlineTimerH;
 pragma Import(C,QDeadlineTimer_minus, "QDeadlineTimer_minus");
 
 function  QDeadlineTimer_dif(dt1,dt2 :QDeadlineTimerH) return qint64;
 pragma Import(C,QDeadlineTimer_dif, "QDeadlineTimer_dif");
 
 function  QDeadlineTimer_create(typeTimer:integer := Qt.QNamespace.CoarseTimer) return QDeadlineTimerH;
 function  QDeadlineTimer_create(fc:ForeverConstant;typeTimer : integer :=  Qt.QNamespace.CoarseTimer) return QDeadlineTimerH;

end;
