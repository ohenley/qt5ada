--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QEvent; use Qt.QEvent;
package Qt.QAbstractEvent is

function QAbstractEventDispatcher_instance(thread: QThreadH := null) return QAbstractEventDispatcherH;
pragma Import(C,QAbstractEventDispatcher_instance,"QAbstractEventDispatcher_instance");

function QAbstractEventDispatcher_processEvents(handle: not null  QAbstractEventDispatcherH; flags: QEventLoopProcessEventsFlags) return  Boolean;   
pragma Import(C,QAbstractEventDispatcher_processEvents,"QAbstractEventDispatcher_processEvents");

function QAbstractEventDispatcher_hasPendingEvents(handle: not null  QAbstractEventDispatcherH) return  Boolean;   
pragma Import(C,QAbstractEventDispatcher_hasPendingEvents,"QAbstractEventDispatcher_hasPendingEvents");

procedure QAbstractEventDispatcher_registerSocketNotifier(handle: not null  QAbstractEventDispatcherH; notifier: QSocketNotifierH);   
pragma Import(C,QAbstractEventDispatcher_registerSocketNotifier,"QAbstractEventDispatcher_registerSocketNotifier");

procedure QAbstractEventDispatcher_unregisterSocketNotifier(handle: not null  QAbstractEventDispatcherH; notifier: QSocketNotifierH);   
pragma Import(C,QAbstractEventDispatcher_unregisterSocketNotifier,"QAbstractEventDispatcher_unregisterSocketNotifier");

procedure QAbstractEventDispatcher_registerTimer(handle: not null  QAbstractEventDispatcherH; timerId: Integer; interval: Integer; qobject: QObjectH);
pragma Import(C,QAbstractEventDispatcher_registerTimer,"QAbstractEventDispatcher_registerTimer");

function QAbstractEventDispatcher_unregisterTimer(handle: not null  QAbstractEventDispatcherH; timerId: Integer) return  Boolean;   
pragma Import(C,QAbstractEventDispatcher_unregisterTimer,"QAbstractEventDispatcher_unregisterTimer");

function QAbstractEventDispatcher_unregisterTimers(handle: not null  QAbstractEventDispatcherH; qobject: QObjectH) return  Boolean;   
pragma Import(C,QAbstractEventDispatcher_unregisterTimers,"QAbstractEventDispatcher_unregisterTimers");

procedure QAbstractEventDispatcher_wakeUp(handle: not null  QAbstractEventDispatcherH);   
pragma Import(C,QAbstractEventDispatcher_wakeUp,"QAbstractEventDispatcher_wakeUp");

procedure QAbstractEventDispatcher_interrupt(handle: not null  QAbstractEventDispatcherH);   
pragma Import(C,QAbstractEventDispatcher_interrupt,"QAbstractEventDispatcher_interrupt");

procedure QAbstractEventDispatcher_flush(handle: not null  QAbstractEventDispatcherH);   
pragma Import(C,QAbstractEventDispatcher_flush,"QAbstractEventDispatcher_flush");

procedure QAbstractEventDispatcher_startingUp(handle: not null  QAbstractEventDispatcherH);   
pragma Import(C,QAbstractEventDispatcher_startingUp,"QAbstractEventDispatcher_startingUp");

procedure QAbstractEventDispatcher_closingDown(handle: not null  QAbstractEventDispatcherH);   
pragma Import(C,QAbstractEventDispatcher_closingDown,"QAbstractEventDispatcher_closingDown");

end Qt.QAbstractEvent;
