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

with Qt.QMediaRecorder; use Qt.QMediaRecorder;
package Qt.QMediaRecorderControl is
 
 procedure QMediaRecorderControl_destroy(handle: not null QMediaRecorderControlH);
 pragma Import(C,QMediaRecorderControl_destroy, "QMediaRecorderControl_destroy");
 
 function  QMediaRecorderControl_outputLocation(handle: not null QMediaRecorderControlH) return QUrlH;
 pragma Import(C,QMediaRecorderControl_outputLocation, "QMediaRecorderControl_outputLocation");
 
 function  QMediaRecorderControl_setOutputLocation(handle: not null QMediaRecorderControlH; location:QUrlH) return boolean;
 pragma Import(C,QMediaRecorderControl_setOutputLocation, "QMediaRecorderControl_setOutputLocation");
 
 function  QMediaRecorderControl_state(handle: not null QMediaRecorderControlH) return Qt.QMediaRecorder.State;
 pragma Import(C,QMediaRecorderControl_state, "QMediaRecorderControl_state");
 
 function  QMediaRecorderControl_status(handle: not null QMediaRecorderControlH) return Qt.QMediaRecorder.Status;
 pragma Import(C,QMediaRecorderControl_status, "QMediaRecorderControl_status");
 
 function  QMediaRecorderControl_duration(handle: not null QMediaRecorderControlH) return qint64;
 pragma Import(C,QMediaRecorderControl_duration, "QMediaRecorderControl_duration");
 
 function  QMediaRecorderControl_isMuted(handle: not null QMediaRecorderControlH) return boolean;
 pragma Import(C,QMediaRecorderControl_isMuted, "QMediaRecorderControl_isMuted");
 
 function  QMediaRecorderControl_volume(handle: not null QMediaRecorderControlH) return qreal;
 pragma Import(C,QMediaRecorderControl_volume, "QMediaRecorderControl_volume");

 procedure QMediaRecorderControl_applySettings(handle: not null QMediaRecorderControlH);
 pragma Import(C,QMediaRecorderControl_applySettings, "QMediaRecorderControl_applySettings");
 
 procedure QMediaRecorderControl_setState(handle: not null QMediaRecorderControlH;mediaRecorderState:Qt.QMediaRecorder.State);
 pragma Import(C,QMediaRecorderControl_setState, "QMediaRecorderControl_setState");
 
 procedure QMediaRecorderControl_setMuted(handle: not null QMediaRecorderControlH; muted:boolean);
 pragma Import(C,QMediaRecorderControl_setMuted, "QMediaRecorderControl_setMuted");
 
 procedure QMediaRecorderControl_setVolume(handle: not null QMediaRecorderControlH; volume:qreal);
 pragma Import(C,QMediaRecorderControl_setVolume, "QMediaRecorderControl_setVolume");

 procedure QMediaRecorderControl_signal_slot_stateChanged(handle:QMediaRecorderControlH; hook:IntProc);
 pragma Import(C,QMediaRecorderControl_signal_slot_stateChanged, "QMediaRecorderControl_signal_slot_stateChanged");
 
 procedure QMediaRecorderControl_signal_slot_statusChanged(handle:QMediaRecorderControlH; hook:IntProc);
 pragma Import(C,QMediaRecorderControl_signal_slot_statusChanged, "QMediaRecorderControl_signal_slot_statusChanged");
 
 procedure QMediaRecorderControl_signal_slot_durationChanged(handle:QMediaRecorderControlH; hook:Int64Proc);
 pragma Import(C,QMediaRecorderControl_signal_slot_durationChanged, "QMediaRecorderControl_signal_slot_durationChanged");
 
 procedure QMediaRecorderControl_signal_slot_mutedChanged(handle:QMediaRecorderControlH; hook:BoolProc);
 pragma Import(C,QMediaRecorderControl_signal_slot_mutedChanged, "QMediaRecorderControl_signal_slot_mutedChanged");
 
 procedure QMediaRecorderControl_signal_slot_volumeChanged(handle:QMediaRecorderControlH; hook:RealProc);
 pragma Import(C,QMediaRecorderControl_signal_slot_volumeChanged, "QMediaRecorderControl_signal_slot_volumeChanged");
 
 procedure QMediaRecorderControl_signal_slot_actualLocationChanged(handle:QMediaRecorderControlH; hook:UrlProc);
 pragma Import(C,QMediaRecorderControl_signal_slot_actualLocationChanged, "QMediaRecorderControl_signal_slot_actualLocationChanged");
 
 procedure QMediaRecorderControl_signal_slot_error(handle:QMediaRecorderControlH; hook:IntProc);
 pragma Import(C,QMediaRecorderControl_signal_slot_error, "QMediaRecorderControl_signal_slot_error");
 

end;
