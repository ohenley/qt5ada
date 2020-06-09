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

with Qt.QStringList; use Qt.QStringList;
package Qt.QAudioDEcoder is

 type State is (StoppedState,DecodingState);
 pragma convention(C,State);

 type Error is (NoError,ResourceError,FormatError,AccessDeniedError,ServiceMissingError);
 pragma convention(C,Error);

 type voidProc is access procedure;
 pragma convention(C,voidProc);

 type IntProc is access procedure(p:integer);
 pragma Convention(C,IntProc);

 type Int64Proc is access procedure(p:qint64);
 pragma Convention(C,Int64Proc);

 type BoolProc  is access procedure(p:boolean);
 pragma Convention(C,BoolProc);

 type audioFormatProc is access procedure(p:QAudioFormatH);
 pragma convention(C,audioFormatProc);

 type intStringProc is access procedure(p1:integer;p2:QStringH);
 pragma convention(C,intStringProc);


 function  QAudioDecoder_create(parent:QObjectH := null) return QAudioDecoderH;
 pragma Import(C,QAudioDecoder_create, "QAudioDecoder_create");
 
 procedure QAudioDecoder_destroy(handle: not null QAudioDecoderH);
 pragma Import(C,QAudioDecoder_destroy, "QAudioDecoder_destroy");
 
 function  QAudioDecoder_hasSupport(handle: not null QAudioDecoderH; mimeType :QStringH;codecs: QStringListH := QStringList_create) return int;
 pragma Import(C,QAudioDecoder_hasSupport, "QAudioDecoder_hasSupport");
 
 function  QAudioDecoder_state(handle: not null QAudioDecoderH) return State;
 pragma Import(C,QAudioDecoder_state, "QAudioDecoder_state");
 
 function  QAudioDecoder_sourceFilename(handle: not null QAudioDecoderH) return QStringH;
 pragma Import(C,QAudioDecoder_sourceFilename, "QAudioDecoder_sourceFilename");
 
 procedure QAudioDecoder_setSourceFilename(handle: not null QAudioDecoderH;fileName:QStringH);
 pragma Import(C,QAudioDecoder_setSourceFilename, "QAudioDecoder_setSourceFilename");
 
 function  QAudioDecoder_sourceDevice(handle: not null QAudioDecoderH) return QIODeviceH;
 pragma Import(C,QAudioDecoder_sourceDevice, "QAudioDecoder_sourceDevice");
 
 procedure QAudioDecoder_setSourceDevice(handle: not null QAudioDecoderH;device:QIODeviceH);
 pragma Import(C,QAudioDecoder_setSourceDevice, "QAudioDecoder_setSourceDevice");
 
 function  QAudioDecoder_audioFormat(handle: not null QAudioDecoderH) return QAudioFormatH;
 pragma Import(C,QAudioDecoder_audioFormat, "QAudioDecoder_audioFormat");
 
 procedure QAudioDecoder_setAudioFormat(handle: not null QAudioDecoderH;format:QAudioFormatH);
 pragma Import(C,QAudioDecoder_setAudioFormat, "QAudioDecoder_setAudioFormat");
 
 function  QAudioDecoder_error(handle: not null QAudioDecoderH) return Error;
 pragma Import(C,QAudioDecoder_error, "QAudioDecoder_error");
 
 function  QAudioDecoder_errorString(handle: not null QAudioDecoderH) return QStringH;
 pragma Import(C,QAudioDecoder_errorString, "QAudioDecoder_errorString");
 
 function  QAudioDecoder_read(handle: not null QAudioDecoderH) return QAudioBufferH;
 pragma Import(C,QAudioDecoder_read, "QAudioDecoder_read");
 
 function  QAudioDecoder_bufferAvailable(handle: not null QAudioDecoderH) return boolean;
 pragma Import(C,QAudioDecoder_bufferAvailable, "QAudioDecoder_bufferAvailable");
 
 function  QAudioDecoder_position(handle: not null QAudioDecoderH) return qint64;
 pragma Import(C,QAudioDecoder_position, "QAudioDecoder_position");
 
 function  QAudioDecoder_duration(handle: not null QAudioDecoderH) return qint64;
 pragma Import(C,QAudioDecoder_duration, "QAudioDecoder_duration");
 
 procedure QAudioDecoder_start(handle: not null QAudioDecoderH);
 pragma Import(C,QAudioDecoder_start, "QAudioDecoder_start");
 
 procedure QAudioDecoder_stop(handle: not null QAudioDecoderH);
 pragma Import(C,QAudioDecoder_stop, "QAudioDecoder_stop");
 
 function  QAudioDecoder_bind(handle: not null QAudioDecoderH;object:QObjectH) return boolean;
 pragma Import(C,QAudioDecoder_bind, "QAudioDecoder_bind");
 
 procedure QAudioDecoder_unbind(handle: not null QAudioDecoderH;object:QObjectH);
 pragma Import(C,QAudioDecoder_unbind, "QAudioDecoder_unbind");
 
 procedure QAudioDecoder_signal_slot_bufferAvailableChanged(handle: not null QAudioDecoderH; hook:boolProc);
 pragma Import(C,QAudioDecoder_signal_slot_bufferAvailableChanged, "QAudioDecoder_signal_slot_bufferAvailableChanged");
 
 procedure QAudioDecoder_signal_slot_bufferReady(handle: not null QAudioDecoderH; hook:voidProc);
 pragma Import(C,QAudioDecoder_signal_slot_bufferReady, "QAudioDecoder_signal_slot_bufferReady");
 
 procedure QAudioDecoder_signal_slot_finished(handle: not null QAudioDecoderH; hook:voidProc);
 pragma Import(C,QAudioDecoder_signal_slot_finished, "QAudioDecoder_signal_slot_finished");
 
 procedure QAudioDecoder_signal_slot_stateChanged(handle: not null QAudioDecoderH; hook:intProc);
 pragma Import(C,QAudioDecoder_signal_slot_stateChanged, "QAudioDecoder_signal_slot_stateChanged");
 
 procedure QAudioDecoder_signal_slot_formatChanged(handle: not null QAudioDecoderH; hook:audioFormatProc);
 pragma Import(C,QAudioDecoder_signal_slot_formatChanged, "QAudioDecoder_signal_slot_formatChanged");
 
 procedure QAudioDecoder_signal_slot_error(handle: not null QAudioDecoderH; hook:intProc);
 pragma Import(C,QAudioDecoder_signal_slot_error, "QAudioDecoder_signal_slot_error");
 
 procedure QAudioDecoder_signal_slot_sourceChanged(handle: not null QAudioDecoderH; hook:voidProc);
 pragma Import(C,QAudioDecoder_signal_slot_sourceChanged, "QAudioDecoder_signal_slot_sourceChanged");
 
 procedure QAudioDecoder_signal_slot_positionChanged(handle: not null QAudioDecoderH; hook:int64Proc);
 pragma Import(C,QAudioDecoder_signal_slot_positionChanged, "QAudioDecoder_signal_slot_positionChanged");
 
 procedure QAudioDecoder_signal_slot_durationChanged(handle: not null QAudioDecoderH; hook:int64Proc);
 pragma Import(C,QAudioDecoder_signal_slot_durationChanged, "QAudioDecoder_signal_slot_durationChanged");
 
----------------------------------------------------------------------------------------------------------
 procedure QAudioDecoderControl_destroy(handle: not null QAudioDecoderControlH);
 pragma Import(C,QAudioDecoderControl_destroy, "QAudioDecoderControl_destroy");
 
 function  QAudioDecoderControl_state(handle: not null QAudioDecoderControlH) return State;
 pragma Import(C,QAudioDecoderControl_state, "QAudioDecoderControl_state");
 
 function  QAudioDecoderControl_sourceFilename(handle: not null QAudioDecoderControlH) return QStringH;
 pragma Import(C,QAudioDecoderControl_sourceFilename, "QAudioDecoderControl_sourceFilename");
 
 procedure QAudioDecoderControl_setSourceFilename(handle: not null QAudioDecoderControlH;fileName:QStringH);
 pragma Import(C,QAudioDecoderControl_setSourceFilename, "QAudioDecoderControl_setSourceFilename");
 
 function  QAudioDecoderControl_sourceDevice(handle: not null QAudioDecoderControlH) return QIODeviceH;
 pragma Import(C,QAudioDecoderControl_sourceDevice, "QAudioDecoderControl_sourceDevice");
 
 procedure QAudioDecoderControl_setSourceDevice(handle: not null QAudioDecoderControlH;device:QIODeviceH);
 pragma Import(C,QAudioDecoderControl_setSourceDevice, "QAudioDecoderControl_setSourceDevice");
 
 function  QAudioDecoderControl_audioFormat(handle: not null QAudioDecoderControlH) return QAudioFormatH;
 pragma Import(C,QAudioDecoderControl_audioFormat, "QAudioDecoderControl_audioFormat");
 
 procedure QAudioDecoderControl_setAudioFormat(handle: not null QAudioDecoderControlH;format:QAudioFormatH);
 pragma Import(C,QAudioDecoderControl_setAudioFormat, "QAudioDecoderControl_setAudioFormat");
 
 function  QAudioDecoderControl_error(handle: not null QAudioDecoderControlH) return Error;
 pragma Import(C,QAudioDecoderControl_error, "QAudioDecoderControl_error");
 
 function  QAudioDecoderControl_errorString(handle: not null QAudioDecoderControlH) return QStringH;
 pragma Import(C,QAudioDecoderControl_errorString, "QAudioDecoderControl_errorString");
 
 function  QAudioDecoderControl_read(handle: not null QAudioDecoderControlH) return QAudioBufferH;
 pragma Import(C,QAudioDecoderControl_read, "QAudioDecoderControl_read");
 
 function  QAudioDecoderControl_bufferAvailable(handle: not null QAudioDecoderControlH) return boolean;
 pragma Import(C,QAudioDecoderControl_bufferAvailable, "QAudioDecoderControl_bufferAvailable");
 
 function  QAudioDecoderControl_position(handle: not null QAudioDecoderControlH) return qint64;
 pragma Import(C,QAudioDecoderControl_position, "QAudioDecoderControl_position");
 
 function  QAudioDecoderControl_duration(handle: not null QAudioDecoderControlH) return qint64;
 pragma Import(C,QAudioDecoderControl_duration, "QAudioDecoderControl_duration");
 
 procedure QAudioDecoderControl_start(handle: not null QAudioDecoderControlH);
 pragma Import(C,QAudioDecoderControl_start, "QAudioDecoderControl_start");
 
 procedure QAudioDecoderControl_stop(handle: not null QAudioDecoderControlH);
 pragma Import(C,QAudioDecoderControl_stop, "QAudioDecoderControl_stop");
 
 procedure QAudioDecoderControl_signal_slot_bufferAvailableChanged(handle: not null QAudioDecoderControlH; hook:boolProc);
 pragma Import(C,QAudioDecoderControl_signal_slot_bufferAvailableChanged, "QAudioDecoderControl_signal_slot_bufferAvailableChanged");
 
 procedure QAudioDecoderControl_signal_slot_bufferReady(handle: not null QAudioDecoderControlH; hook:voidProc);
 pragma Import(C,QAudioDecoderControl_signal_slot_bufferReady, "QAudioDecoderControl_signal_slot_bufferReady");
 
 procedure QAudioDecoderControl_signal_slot_finished(handle: not null QAudioDecoderControlH; hook:voidProc);
 pragma Import(C,QAudioDecoderControl_signal_slot_finished, "QAudioDecoderControl_signal_slot_finished");
 
 procedure QAudioDecoderControl_signal_slot_stateChanged(handle: not null QAudioDecoderControlH; hook:intProc);
 pragma Import(C,QAudioDecoderControl_signal_slot_stateChanged, "QAudioDecoderControl_signal_slot_stateChanged");
 
 procedure QAudioDecoderControl_signal_slot_formatChanged(handle: not null QAudioDecoderControlH; hook:audioFormatProc);
 pragma Import(C,QAudioDecoderControl_signal_slot_formatChanged, "QAudioDecoderControl_signal_slot_formatChanged");
 
 procedure QAudioDecoderControl_signal_slot_error(handle: not null QAudioDecoderControlH; hook:intStringProc);
 pragma Import(C,QAudioDecoderControl_signal_slot_error, "QAudioDecoderControl_signal_slot_error");
 
 procedure QAudioDecoderControl_signal_slot_sourceChanged(handle: not null QAudioDecoderControlH; hook:voidProc);
 pragma Import(C,QAudioDecoderControl_signal_slot_sourceChanged, "QAudioDecoderControl_signal_slot_sourceChanged");
 
 procedure QAudioDecoderControl_signal_slot_positionChanged(handle: not null QAudioDecoderControlH; hook:int64Proc);
 pragma Import(C,QAudioDecoderControl_signal_slot_positionChanged, "QAudioDecoderControl_signal_slot_positionChanged");
 
 procedure QAudioDecoderControl_signal_slot_durationChanged(handle: not null QAudioDecoderControlH; hook:int64Proc);
 pragma Import(C,QAudioDecoderControl_signal_slot_durationChanged, "QAudioDecoderControl_signal_slot_durationChanged");
 
end;
