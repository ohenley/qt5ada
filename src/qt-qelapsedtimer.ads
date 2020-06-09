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
package  Qt.QElapsedTimer is

 type ClockType is (SystemTime,MonotonicClock,TickCounter,MachAbsoluteTime,PerformanceCounter);
 pragma convention(C,ClockType);

 function  QElapsedTimer_create return QElapsedTimerH;
 pragma Import(C,QElapsedTimer_create, "QElapsedTimer_create");
 
 procedure QElapsedTimer_destroy(handle:not null QElapsedTimerH);
 pragma Import(C,QElapsedTimer_destroy, "QElapsedTimer_destroy");
 
 function  QElapsedTimer_clockType return ClockType;
 pragma Import(C,QElapsedTimer_clockType, "QElapsedTimer_clockType");
 
 function  QElapsedTimer_isMonotonic return boolean;
 pragma Import(C,QElapsedTimer_isMonotonic, "QElapsedTimer_isMonotonic");
 
 procedure QElapsedTimer_start(handle:not null QElapsedTimerH);
 pragma Import(C,QElapsedTimer_start, "QElapsedTimer_start");
 
 function  QElapsedTimer_restart(handle:not null QElapsedTimerH) return qint64;
 pragma Import(C,QElapsedTimer_restart, "QElapsedTimer_restart");
 
 procedure QElapsedTimer_invalidate(handle:not null QElapsedTimerH);
 pragma Import(C,QElapsedTimer_invalidate, "QElapsedTimer_invalidate");
 
 function  QElapsedTimer_isValid(handle:not null QElapsedTimerH) return boolean;
 pragma Import(C,QElapsedTimer_isValid, "QElapsedTimer_isValid");
 
 function  QElapsedTimer_nsecsElapsed(handle:not null QElapsedTimerH) return qint64;
 pragma Import(C,QElapsedTimer_nsecsElapsed, "QElapsedTimer_nsecsElapsed");
 
 function  QElapsedTimer_elapsed(handle:not null QElapsedTimerH) return qint64;
 pragma Import(C,QElapsedTimer_elapsed, "QElapsedTimer_elapsed");
 
 function  QElapsedTimer_hasExpired(handle:not null QElapsedTimerH;timeout:qint64) return boolean;
 pragma Import(C,QElapsedTimer_hasExpired, "QElapsedTimer_hasExpired");
 
 function  QElapsedTimer_msecsSinceReference(handle:not null QElapsedTimerH) return qint64;
 pragma Import(C,QElapsedTimer_msecsSinceReference, "QElapsedTimer_msecsSinceReference");
 
 function  QElapsedTimer_msecsTo(handle,otherTimer:not null QElapsedTimerH) return qint64;
 pragma Import(C,QElapsedTimer_msecsTo, "QElapsedTimer_msecsTo");
 
 function  QElapsedTimer_secsTo(handle,otherTimer:not null QElapsedTimerH) return qint64;
 pragma Import(C,QElapsedTimer_secsTo, "QElapsedTimer_secsTo");
 
 function  QElapsedTimer_eq(handle,otherTimer:not null QElapsedTimerH) return boolean;
 pragma Import(C,QElapsedTimer_eq, "QElapsedTimer_eq");
 
 function  QElapsedTimer_ne(handle,otherTimer:not null QElapsedTimerH) return boolean;
 pragma Import(C,QElapsedTimer_ne, "QElapsedTimer_ne");
 
 function  QElapsedTimer_lt(handle,otherTimer:not null QElapsedTimerH) return boolean;
 pragma Import(C,QElapsedTimer_lt, "QElapsedTimer_lt");
 
end;
