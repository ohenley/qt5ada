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

with Qt.QAudio;
with Qt.QAudioFormat; use Qt.QAudioFormat;
package Qt.QAudioOutput  is

 type intProc is access procedure(p:integer);
 pragma convention(C,intProc);

 type  voidProc is access procedure;
 pragma convention(C,voidProc);

 function  QAudioOutput_create(format:QAudioFormatH := QAudioFormat_create; parent:QObjectH  := null) return QAudioOutputH;
 pragma Import(C,QAudioOutput_create, "QAudioOutput_create");
 
 function  QAudioOutput_create2(audioDeviceInfo:QAudioDeviceInfoH;format:QAudioFormatH := QAudioFormat_create; parent:QObjectH  := null) return QAudioOutputH;
 pragma Import(C,QAudioOutput_create2, "QAudioOutput_create2");
 
 procedure QAudioOutput_destroy(handle: not null QAudioOutputH);
 pragma Import(C,QAudioOutput_destroy, "QAudioOutput_destroy");
 
 function  QAudioOutput_format(handle: not null QAudioOutputH) return QAudioFormatH;
 pragma Import(C,QAudioOutput_format, "QAudioOutput_format");
 
 procedure QAudioOutput_start(handle: not null QAudioOutputH;device:QIODeviceH);
 pragma Import(C,QAudioOutput_start, "QAudioOutput_start");
 
 function  QAudioOutput_start2(handle: not null QAudioOutputH) return QIODeviceH;
 pragma Import(C,QAudioOutput_start2, "QAudioOutput_start2");
 
 procedure QAudioOutput_stop(handle: not null QAudioOutputH);
 pragma Import(C,QAudioOutput_stop, "QAudioOutput_stop");
 
 procedure QAudioOutput_reset(handle: not null QAudioOutputH);
 pragma Import(C,QAudioOutput_reset, "QAudioOutput_reset");
 
 procedure QAudioOutput_suspend(handle: not null QAudioOutputH);
 pragma Import(C,QAudioOutput_suspend, "QAudioOutput_suspend");
 
 procedure QAudioOutput_resume(handle: not null QAudioOutputH);
 pragma Import(C,QAudioOutput_resume, "QAudioOutput_resume");
 
 procedure QAudioOutput_setBufferSize(handle: not null QAudioOutputH;bytes:integer);
 pragma Import(C,QAudioOutput_setBufferSize, "QAudioOutput_setBufferSize");
 
 function  QAudioOutput_bufferSize(handle: not null QAudioOutputH) return integer;
 pragma Import(C,QAudioOutput_bufferSize, "QAudioOutput_bufferSize");
 
 function  QAudioOutput_bytesFree(handle: not null QAudioOutputH) return integer;
 pragma Import(C,QAudioOutput_bytesFree, "QAudioOutput_bytesFree");
 
 function  QAudioOutput_periodSize(handle: not null QAudioOutputH) return integer;
 pragma Import(C,QAudioOutput_periodSize, "QAudioOutput_periodSize");
 
 procedure QAudioOutput_setNotifyInterval(handle: not null QAudioOutputH;milliSeconds:integer);
 pragma Import(C,QAudioOutput_setNotifyInterval, "QAudioOutput_setNotifyInterval");
 
 function  QAudioOutput_notifyInterval(handle: not null QAudioOutputH) return integer;
 pragma Import(C,QAudioOutput_notifyInterval, "QAudioOutput_notifyInterval");
 
 function  QAudioOutput_processedUSecs(handle: not null QAudioOutputH) return qint64;
 pragma Import(C,QAudioOutput_processedUSecs, "QAudioOutput_processedUSecs");
 
 function  QAudioOutput_elapsedUSecs(handle: not null QAudioOutputH) return qint64;
 pragma Import(C,QAudioOutput_elapsedUSecs, "QAudioOutput_elapsedUSecs");
 
 function  QAudioOutput_error(handle: not null QAudioOutputH) return Qt.QAudio.Error;
 pragma Import(C,QAudioOutput_error, "QAudioOutput_error");
 
 function  QAudioOutput_state(handle: not null QAudioOutputH) return Qt.QAudio.State;
 pragma Import(C,QAudioOutput_state, "QAudioOutput_state");
 
 procedure QAudioOutput_setVolume(handle: not null QAudioOutputH; volume:qreal);
 pragma Import(C,QAudioOutput_setVolume, "QAudioOutput_setVolume");
 
 function  QAudioOutput_volume(handle: not null QAudioOutputH) return qreal;
 pragma Import(C,QAudioOutput_volume, "QAudioOutput_volume");
 
 function  QAudioOutput_category(handle: not null QAudioOutputH) return QStringH;
 pragma Import(C,QAudioOutput_category, "QAudioOutput_category");
 
 procedure QAudioOutput_setCategory(handle: not null QAudioOutputH; category:QStringH);
 pragma Import(C,QAudioOutput_setCategory, "QAudioOutput_setCategory");

 procedure QAudioOutput_signal_slot_stateChanged(handle:QAudioOutputH; hook:intProc);
 pragma Import(C,QAudioOutput_signal_slot_stateChanged, "QAudioOutput_signal_slot_stateChanged");
 
 procedure QAudioOutput_signal_slot_notify(handle:QAudioOutputH; hook:voidProc);
 pragma Import(C,QAudioOutput_signal_slot_notify, "QAudioOutput_signal_slot_notify");

------------------------------------------------------------------------------------------------- 
 function  QAudioOutput_create(audioDeviceInfo:QAudioDeviceInfoH;format:QAudioFormatH := QAudioFormat_create; parent:QObjectH  := null) return QAudioOutputH;
 function  QAudioOutput_start(handle: not null QAudioOutputH) return QIODeviceH;
end;
