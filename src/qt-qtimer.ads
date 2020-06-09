--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QTimer is

function QTimer_create(parent: QObjectH := null) return QTimerH;
pragma Import(C,QTimer_create,"QTimer_create");

procedure QTimer_destroy(handle: not null  QTimerH);   
pragma Import(C,QTimer_destroy,"QTimer_destroy");

function QTimer_isActive(handle: not null  QTimerH) return  Boolean;   
pragma Import(C,QTimer_isActive,"QTimer_isActive");

function QTimer_timerId(handle: not null  QTimerH) return  Integer;   
pragma Import(C,QTimer_timerId,"QTimer_timerId");

procedure QTimer_setInterval(handle: not null  QTimerH; msec: Integer);   
pragma Import(C,QTimer_setInterval,"QTimer_setInterval");

function QTimer_interval(handle: not null  QTimerH) return  Integer;   
pragma Import(C,QTimer_interval,"QTimer_interval");

procedure QTimer_setSingleShot(handle: not null  QTimerH; singleShot: Boolean);   
pragma Import(C,QTimer_setSingleShot,"QTimer_setSingleShot");

function QTimer_isSingleShot(handle: not null  QTimerH) return  Boolean;   
pragma Import(C,QTimer_isSingleShot,"QTimer_isSingleShot");

procedure QTimer_singleShot(msec: Integer; callBack : voidCallbackH);   
pragma Import(C,QTimer_singleShot,"QTimer_singleShot");

procedure QTimer_start(handle: not null  QTimerH; msec: Integer);    
pragma Import(C,QTimer_start,"QTimer_start");

procedure QTimer_start2(handle: not null  QTimerH);
pragma Import(C,QTimer_start2,"QTimer_start2");

procedure QTimer_stop(handle: not null  QTimerH);   
pragma Import(C,QTimer_stop,"QTimer_stop");

 type   QTimer_timeoutEvent is access procedure;
 pragma Convention(C, QTimer_timeoutEvent);
 
 procedure QTimer_signal_slot_timeout(handle: not null QTimerH; hook:QTimer_timeoutEvent);
 pragma Import(C,QTimer_signal_slot_timeout, "QTimer_signal_slot_timeout");
 
 procedure QTimer_singleShot2(msec: Integer; receiver: QObjectH; member: zstring);   
 pragma Import(C,QTimer_singleShot2,"QTimer_singleShot2");
 
 procedure QTimer_singleShot3(msec:integer;timerType: integer;receiver:QObjectH;member: zstring) with pre => timerType in 0 ..2;
 pragma Import(C,QTimer_singleShot3, "QTimer_singleShot3");
 
procedure QTimer_Sleep(msec: Integer; callBack : voidCallbackH);   
pragma Import(C,QTimer_Sleep,"QTimer_Sleep");
    
----------------------------------------------------------------------------------------------------
procedure QTimer_start(handle: not null  QTimerH);
procedure QTimer_singleShot(msec: Integer; receiver: QObjectH; member: zstring); 
procedure QTimer_singleShot(msec:integer;timerType: integer;receiver:QObjectH;member: zstring) with pre => timerType in 0 ..2;

end Qt.Qtimer;
