--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QAudioProbe  is

 type voidProc is access procedure;
 pragma convention(C,voidProc);

 type audioBufferProc is access procedure(p:QAudioBufferH);
 pragma convention(C,audioBufferProc);

 function  QAudioProbe_create(parent:QObjectH := null) return QAudioProbeH ;
 pragma Import(C,QAudioProbe_create, "QAudioProbe_create");
 
 procedure QAudioProbe_destroy(handle: not null QAudioProbeH);
 pragma Import(C,QAudioProbe_destroy, "QAudioProbe_destroy");
 
 function  QAudioProbe_setSource(handle: not null QAudioProbeH;source: not null QMediaObjectH) return boolean;
 pragma Import(C,QAudioProbe_setSource, "QAudioProbe_setSource");
 
 function  QAudioProbe_setSource2(handle: not null QAudioProbeH;source: not null QMediaRecorderH) return boolean;
 pragma Import(C,QAudioProbe_setSource2, "QAudioProbe_setSource2");
 
 function  QAudioProbe_setSource3(handle: not null QAudioProbeH;source: not null QAudioRecorderH) return boolean;
 pragma Import(C,QAudioProbe_setSource3, "QAudioProbe_setSource3");
 
 function  QAudioProbe_isActive(handle: not null QAudioProbeH) return boolean;
 pragma Import(C,QAudioProbe_isActive, "QAudioProbe_isActive");

 procedure QAudioProbe_signal_slot_audioBufferProbed(handle: not null QAudioProbeH; hook:audioBufferProc);
 pragma Import(C,QAudioProbe_signal_slot_audioBufferProbed, "QAudioProbe_signal_slot_audioBufferProbed");
 
 procedure QAudioProbe_signal_slot_flush(handle: not null QAudioProbeH; hook:voidProc);
 pragma Import(C,QAudioProbe_signal_slot_flush, "QAudioProbe_signal_slot_flush");
 
-------------------------------------------------------------------------------------------------------------
 function  QAudioProbe_setSource(handle: not null QAudioProbeH;source: not null QMediaRecorderH) return boolean;
 function  QAudioProbe_setSource(handle: not null QAudioProbeH;source: not null QAudioRecorderH) return boolean;
end;
