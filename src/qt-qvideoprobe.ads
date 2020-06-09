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

package Qt.QVideoProbe  is

 type voidProc is access procedure;
 pragma Convention(C,voidProc);

 type VideoFrameProc is access procedure(p: QVideoFrameH);
 pragma Convention(C,VideoFrameProc);

 function  QVideoProbe_create(parent:QObjectH) return QVideoProbeH;
 pragma Import(C,QVideoProbe_create, "QVideoProbe_create");
 
 procedure   QVideoProbe_destroy(handle: not null QVideoProbeH);
 pragma Import(C,QVideoProbe_destroy, "QVideoProbe_destroy");
 
 function  QVideoProbe_setSource(handle: not null QVideoProbeH;source:QMediaObjectH) return boolean;
 pragma Import(C,QVideoProbe_setSource, "QVideoProbe_setSource");
 
 function  QVideoProbe_setSource2(handle: not null QVideoProbeH;source:QMediaRecorderH) return boolean;
 pragma Import(C,QVideoProbe_setSource2, "QVideoProbe_setSource2");
 
 function  QVideoProbe_isActive(handle: not null QVideoProbeH) return boolean;
 pragma Import(C,QVideoProbe_isActive, "QVideoProbe_isActive");

 procedure QVideoProbe_signal_slot_videoFrameProbed(handle: not null QVideoProbeH; hook: videoFrameProc);
 pragma Import(C,QVideoProbe_signal_slot_videoFrameProbed, "QVideoProbe_signal_slot_videoFrameProbed");
 
 procedure QVideoProbe_signal_slot_flush(handle: not null QVideoProbeH; hook: voidProc);
 pragma Import(C,QVideoProbe_signal_slot_flush, "QVideoProbe_signal_slot_flush");
 
-------------------------------------------------------------------------------------------------------
 function  QVideoProbe_setSource(handle: not null QVideoProbeH;source:QMediaRecorderH) return boolean;

end;
