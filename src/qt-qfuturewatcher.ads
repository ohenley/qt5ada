--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QFutureWatcher  is

 function  QFutureWatcherBool_create(parent:QObjectH := null) return QFutureWatcherH;
 pragma Import(C,QFutureWatcherBool_create, "QFutureWatcherBool_create");
 
 function  QFutureWatcherInt_create(parent:QObjectH := null) return QFutureWatcherH;
 pragma Import(C,QFutureWatcherInt_create, "QFutureWatcherInt_create");
 
 function  QFutureWatcherString_create(parent:QObjectH := null) return QFutureWatcherH;
 pragma Import(C,QFutureWatcherString_create, "QFutureWatcherString_create");
 
 procedure QFutureWatcherBool_setFuture(handle:not null QFutureWatcherH;future:QFutureH);
 pragma Import(C,QFutureWatcherBool_setFuture, "QFutureWatcherBool_setFuture");
 
 function  QFutureWatcherBool_future(handle:not null QFutureWatcherH) return QFutureH;
 pragma Import(C,QFutureWatcherBool_future, "QFutureWatcherBool_future");
 
 function  QFutureWatcherBool_result(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherBool_result, "QFutureWatcherBool_result");
 
 function  QFutureWatcherBool_resultAt(handle:not null QFutureWatcherH;index:integer) return boolean;
 pragma Import(C,QFutureWatcherBool_resultAt, "QFutureWatcherBool_resultAt");
 
 function  QFutureWatcherBool_progressValue(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherBool_progressValue, "QFutureWatcherBool_progressValue");
 
 function  QFutureWatcherBool_progressMinimum(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherBool_progressMinimum, "QFutureWatcherBool_progressMinimum");
 
 function  QFutureWatcherBool_progressMaximum(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherBool_progressMaximum, "QFutureWatcherBool_progressMaximum");
 
 function  QFutureWatcherBool_progressText(handle:not null QFutureWatcherH) return QStringH;
 pragma Import(C,QFutureWatcherBool_progressText, "QFutureWatcherBool_progressText");
 
 function  QFutureWatcherBool_isStarted(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherBool_isStarted, "QFutureWatcherBool_isStarted");
 
 function  QFutureWatcherBool_isFinished(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherBool_isFinished, "QFutureWatcherBool_isFinished");
 
 function  QFutureWatcherBool_isRunning(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherBool_isRunning, "QFutureWatcherBool_isRunning");
 
 function  QFutureWatcherBool_isCanceled(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherBool_isCanceled, "QFutureWatcherBool_isCanceled");
 
 function  QFutureWatcherBool_isPaused(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherBool_isPaused, "QFutureWatcherBool_isPaused");
 
 procedure QFutureWatcherBool_waitForFinished(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherBool_waitForFinished, "QFutureWatcherBool_waitForFinished");
 
 procedure QFutureWatcherBool_setPendingResultsLimit(handle:not null QFutureWatcherH;limit:integer);
 pragma Import(C,QFutureWatcherBool_setPendingResultsLimit, "QFutureWatcherBool_setPendingResultsLimit");
 
 procedure QFutureWatcherBool_cancel(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherBool_cancel, "QFutureWatcherBool_cancel");
 
 procedure QFutureWatcherBool_setPaused(handle:not null QFutureWatcherH;paused:boolean);
 pragma Import(C,QFutureWatcherBool_setPaused, "QFutureWatcherBool_setPaused");
 
 procedure QFutureWatcherBool_pause(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherBool_pause, "QFutureWatcherBool_pause");
 
 procedure QFutureWatcherBool_resume(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherBool_resume, "QFutureWatcherBool_resume");
 
 procedure QFutureWatcherBool_togglePaused(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherBool_togglePaused, "QFutureWatcherBool_togglePaused");
 
 procedure QFutureWatcherInt_setFuture(handle:not null QFutureWatcherH;future:QFutureH);
 pragma Import(C,QFutureWatcherInt_setFuture, "QFutureWatcherInt_setFuture");
 
 function  QFutureWatcherInt_future(handle:not null QFutureWatcherH) return QFutureH;
 pragma Import(C,QFutureWatcherInt_future, "QFutureWatcherInt_future");
 
 function  QFutureWatcherInt_result(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherInt_result, "QFutureWatcherInt_result");
 
 function  QFutureWatcherInt_resultAt(handle:not null QFutureWatcherH;index:integer) return integer;
 pragma Import(C,QFutureWatcherInt_resultAt, "QFutureWatcherInt_resultAt");
 
 function  QFutureWatcherInt_progressValue(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherInt_progressValue, "QFutureWatcherInt_progressValue");
 
 function  QFutureWatcherInt_progressMinimum(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherInt_progressMinimum, "QFutureWatcherInt_progressMinimum");
 
 function  QFutureWatcherInt_progressMaximum(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherInt_progressMaximum, "QFutureWatcherInt_progressMaximum");
 
 function  QFutureWatcherInt_progressText(handle:not null QFutureWatcherH) return QStringH;
 pragma Import(C,QFutureWatcherInt_progressText, "QFutureWatcherInt_progressText");
 
 function  QFutureWatcherInt_isStarted(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherInt_isStarted, "QFutureWatcherInt_isStarted");
 
 function  QFutureWatcherInt_isFinished(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherInt_isFinished, "QFutureWatcherInt_isFinished");
 
 function  QFutureWatcherInt_isRunning(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherInt_isRunning, "QFutureWatcherInt_isRunning");
 
 function  QFutureWatcherInt_isCanceled(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherInt_isCanceled, "QFutureWatcherInt_isCanceled");
 
 function  QFutureWatcherInt_isPaused(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherInt_isPaused, "QFutureWatcherInt_isPaused");
 
 procedure QFutureWatcherInt_waitForFinished(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherInt_waitForFinished, "QFutureWatcherInt_waitForFinished");
 
 procedure QFutureWatcherInt_setPendingResultsLimit(handle:not null QFutureWatcherH;limit:integer);
 pragma Import(C,QFutureWatcherInt_setPendingResultsLimit, "QFutureWatcherInt_setPendingResultsLimit");
 
 procedure QFutureWatcherInt_cancel(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherInt_cancel, "QFutureWatcherInt_cancel");
 
 procedure QFutureWatcherInt_setPaused(handle:not null QFutureWatcherH;paused:boolean);
 pragma Import(C,QFutureWatcherInt_setPaused, "QFutureWatcherInt_setPaused");
 
 procedure QFutureWatcherInt_pause(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherInt_pause, "QFutureWatcherInt_pause");
 
 procedure QFutureWatcherInt_resume(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherInt_resume, "QFutureWatcherInt_resume");
 
 procedure QFutureWatcherInt_togglePaused(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherInt_togglePaused, "QFutureWatcherInt_togglePaused");
 
 procedure QFutureWatcherString_setFuture(handle:not null QFutureWatcherH;future:QFutureH);
 pragma Import(C,QFutureWatcherString_setFuture, "QFutureWatcherString_setFuture");
 
 function  QFutureWatcherString_future(handle:not null QFutureWatcherH) return QFutureH;
 pragma Import(C,QFutureWatcherString_future, "QFutureWatcherString_future");
 
 function  QFutureWatcherString_result(handle:not null QFutureWatcherH) return QStringH;
 pragma Import(C,QFutureWatcherString_result, "QFutureWatcherString_result");
 
 function  QFutureWatcherString_resultAt(handle:not null QFutureWatcherH;index:integer) return QStringH;
 pragma Import(C,QFutureWatcherString_resultAt, "QFutureWatcherString_resultAt");
 
 function  QFutureWatcherString_progressValue(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherString_progressValue, "QFutureWatcherString_progressValue");
 
 function  QFutureWatcherString_progressMinimum(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherString_progressMinimum, "QFutureWatcherString_progressMinimum");
 
 function  QFutureWatcherString_progressMaximum(handle:not null QFutureWatcherH) return integer;
 pragma Import(C,QFutureWatcherString_progressMaximum, "QFutureWatcherString_progressMaximum");
 
 function  QFutureWatcherString_progressText(handle:not null QFutureWatcherH) return QStringH;
 pragma Import(C,QFutureWatcherString_progressText, "QFutureWatcherString_progressText");
 
 function  QFutureWatcherString_isStarted(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherString_isStarted, "QFutureWatcherString_isStarted");
 
 function  QFutureWatcherString_isFinished(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherString_isFinished, "QFutureWatcherString_isFinished");
 
 function  QFutureWatcherString_isRunning(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherString_isRunning, "QFutureWatcherString_isRunning");
 
 function  QFutureWatcherString_isCanceled(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherString_isCanceled, "QFutureWatcherString_isCanceled");
 
 function  QFutureWatcherString_isPaused(handle:not null QFutureWatcherH) return boolean;
 pragma Import(C,QFutureWatcherString_isPaused, "QFutureWatcherString_isPaused");
 
 procedure QFutureWatcherString_waitForFinished(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherString_waitForFinished, "QFutureWatcherString_waitForFinished");
 
 procedure QFutureWatcherString_setPendingResultsLimit(handle:not null QFutureWatcherH;limit:integer);
 pragma Import(C,QFutureWatcherString_setPendingResultsLimit, "QFutureWatcherString_setPendingResultsLimit");
 
 procedure QFutureWatcherString_cancel(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherString_cancel, "QFutureWatcherString_cancel");
 
 procedure QFutureWatcherString_setPaused(handle:not null QFutureWatcherH;paused:boolean);
 pragma Import(C,QFutureWatcherString_setPaused, "QFutureWatcherString_setPaused");
 
 procedure QFutureWatcherString_pause(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherString_pause, "QFutureWatcherString_pause");
 
 procedure QFutureWatcherString_resume(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherString_resume, "QFutureWatcherString_resume");
 
 procedure QFutureWatcherString_togglePaused(handle:not null QFutureWatcherH);
 pragma Import(C,QFutureWatcherString_togglePaused, "QFutureWatcherString_togglePaused");
 

 procedure QFutureWatcher_signal_slot_started(handle:not null QFutureWatcherH;hook:voidCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_started, "QFutureWatcher_signal_slot_started");
 
 procedure QFutureWatcher_signal_slot_finished(handle:not null QFutureWatcherH;hook:voidCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_finished, "QFutureWatcher_signal_slot_finished");
 
 procedure QFutureWatcher_signal_slot_canceled(handle:not null QFutureWatcherH;hook:voidCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_canceled, "QFutureWatcher_signal_slot_canceled");
 
 procedure QFutureWatcher_signal_slot_paused(handle:not null QFutureWatcherH;hook:voidCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_paused, "QFutureWatcher_signal_slot_paused");
 
 procedure QFutureWatcher_signal_slot_resumed(handle:not null QFutureWatcherH;hook:voidCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_resumed, "QFutureWatcher_signal_slot_resumed");
 
 procedure QFutureWatcher_signal_slot_resultReadyAt(handle:not null QFutureWatcherH;hook:intCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_resultReadyAt, "QFutureWatcher_signal_slot_resultReadyAt");
 
 procedure QFutureWatcher_signal_slot_resultsReadyAt(handle:not null QFutureWatcherH;hook:intIntCallbackH);    
 pragma Import(C,QFutureWatcher_signal_slot_resultsReadyAt, "QFutureWatcher_signal_slot_resultsReadyAt");
 
 procedure QFutureWatcher_signal_slot_progressRangeChanged(handle:not null QFutureWatcherH;hook:intIntCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_progressRangeChanged, "QFutureWatcher_signal_slot_progressRangeChanged");
 
 procedure QFutureWatcher_signal_slot_progressValueChanged(handle:not null QFutureWatcherH;hook:intCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_progressValueChanged, "QFutureWatcher_signal_slot_progressValueChanged");
 
 procedure QFutureWatcher_signal_slot_progressTextChanged(handle:not null QFutureWatcherH;hook:QStringCallbackH);
 pragma Import(C,QFutureWatcher_signal_slot_progressTextChanged, "QFutureWatcher_signal_slot_progressTextChanged");
 
end;
