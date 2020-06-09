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
package Qt.QAudioInput  is

 type intProc is access procedure(p:integer);
 pragma convention(C,intProc);

 type  voidProc is access procedure;
 pragma convention(C,voidProc);

 function  QAudioInput_create(format:QAudioFormatH := QAudioFormat_create; parent:QObjectH  := null) return QAudioInputH;
 pragma Import(C,QAudioInput_create, "QAudioInput_create");
 
 function  QAudioInput_create2(audioDeviceInfo:QAudioDeviceInfoH;format:QAudioFormatH := QAudioFormat_create; parent:QObjectH  := null) return QAudioInputH;
 pragma Import(C,QAudioInput_create2, "QAudioInput_create2");
 
 procedure QAudioInput_destroy(handle: not null QAudioInputH);
 pragma Import(C,QAudioInput_destroy, "QAudioInput_destroy");
 
 function  QAudioInput_format(handle: not null QAudioInputH) return QAudioFormatH;
 pragma Import(C,QAudioInput_format, "QAudioInput_format");
 
 procedure QAudioInput_start(handle: not null QAudioInputH;device:QIODeviceH);
 pragma Import(C,QAudioInput_start, "QAudioInput_start");
 
 function  QAudioInput_start2(handle: not null QAudioInputH) return QIODeviceH;
 pragma Import(C,QAudioInput_start2, "QAudioInput_start2");
 
 procedure QAudioInput_stop(handle: not null QAudioInputH);
 pragma Import(C,QAudioInput_stop, "QAudioInput_stop");
 
 procedure QAudioInput_reset(handle: not null QAudioInputH);
 pragma Import(C,QAudioInput_reset, "QAudioInput_reset");
 
 procedure QAudioInput_suspend(handle: not null QAudioInputH);
 pragma Import(C,QAudioInput_suspend, "QAudioInput_suspend");
 
 procedure QAudioInput_resume(handle: not null QAudioInputH);
 pragma Import(C,QAudioInput_resume, "QAudioInput_resume");
 
 procedure QAudioInput_setBufferSize(handle: not null QAudioInputH;bytes:integer);
 pragma Import(C,QAudioInput_setBufferSize, "QAudioInput_setBufferSize");
 
 function  QAudioInput_bufferSize(handle: not null QAudioInputH) return integer;
 pragma Import(C,QAudioInput_bufferSize, "QAudioInput_bufferSize");
 
 function  QAudioInput_bytesReady(handle: not null QAudioInputH) return integer;
 pragma Import(C,QAudioInput_bytesReady, "QAudioInput_bytesReady");
 
 function  QAudioInput_periodSize(handle: not null QAudioInputH) return integer;
 pragma Import(C,QAudioInput_periodSize, "QAudioInput_periodSize");
 
 procedure QAudioInput_setNotifyInterval(handle: not null QAudioInputH;milliSeconds:integer);
 pragma Import(C,QAudioInput_setNotifyInterval, "QAudioInput_setNotifyInterval");
 
 function  QAudioInput_notifyInterval(handle: not null QAudioInputH) return integer;
 pragma Import(C,QAudioInput_notifyInterval, "QAudioInput_notifyInterval");
 
 function  QAudioInput_processedUSecs(handle: not null QAudioInputH) return qint64;
 pragma Import(C,QAudioInput_processedUSecs, "QAudioInput_processedUSecs");
 
 function  QAudioInput_elapsedUSecs(handle: not null QAudioInputH) return qint64;
 pragma Import(C,QAudioInput_elapsedUSecs, "QAudioInput_elapsedUSecs");
 
 function  QAudioInput_error(handle: not null QAudioInputH) return Qt.QAudio.Error;
 pragma Import(C,QAudioInput_error, "QAudioInput_error");
 
 function  QAudioInput_state(handle: not null QAudioInputH) return Qt.QAudio.State;
 pragma Import(C,QAudioInput_state, "QAudioInput_state");
 
 procedure QAudioInput_setVolume(handle: not null QAudioInputH; volume:qreal);
 pragma Import(C,QAudioInput_setVolume, "QAudioInput_setVolume");
 
 function  QAudioInput_volume(handle: not null QAudioInputH) return qreal;
 pragma Import(C,QAudioInput_volume, "QAudioInput_volume");

 procedure QAudioInput_signal_slot_stateChanged(handle:QAudioInputH; hook:intProc);
 pragma Import(C,QAudioInput_signal_slot_stateChanged, "QAudioInput_signal_slot_stateChanged");
 
 procedure QAudioInput_signal_slot_notify(handle:QAudioInputH; hook:voidProc);
 pragma Import(C,QAudioInput_signal_slot_notify, "QAudioInput_signal_slot_notify");

------------------------------------------------------------------------------------------------- 
 function  QAudioInput_create(audioDeviceInfo:QAudioDeviceInfoH;format:QAudioFormatH := QAudioFormat_create; parent:QObjectH  := null) return QAudioInputH;
 function  QAudioInput_start(handle: not null QAudioInputH) return QIODeviceH;
end;
