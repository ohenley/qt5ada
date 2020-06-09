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

package Qt.QAbstractVideoSurface is

 type voidProc is access procedure;
 pragma convention(C,voidProc);

 type boolProc is access procedure(ok:boolean);
 pragma convention(C,boolProc);

 type sizeProc is access procedure(size:QSizeH);
 pragma convention(C,sizeProc);

 type videoSurfaceFormatProc is access procedure(format:QVideoSurfaceFormatH);
 pragma convention(C,videoSurfaceFormatProc);

 type Error is (NoError,UnsupportedFormatError,IncorrectFormatError,StoppedError,ResourceError);
 pragma Convention(C,Error);

 procedure QAbstractVideoSurface_destroy(handle: not null QAbstractVideoSurfaceH);
 pragma Import(C,QAbstractVideoSurface_destroy, "QAbstractVideoSurface_destroy");
 
 function  QAbstractVideoSurface_isActive(handle: not null QAbstractVideoSurfaceH) return boolean;
 pragma Import(C,QAbstractVideoSurface_isActive, "QAbstractVideoSurface_isActive");
 
 function  QAbstractVideoSurface_supportedPixelFormats(handle: not null QAbstractVideoSurfaceH;handleType : integer := 0) return QObjectListH;
 pragma Import(C,QAbstractVideoSurface_supportedPixelFormats, "QAbstractVideoSurface_supportedPixelFormats");
 
 function  QAbstractVideoSurface_isFormatSupported(handle: not null QAbstractVideoSurfaceH; format:QVideoSurfaceFormatH) return boolean;
 pragma Import(C,QAbstractVideoSurface_isFormatSupported, "QAbstractVideoSurface_isFormatSupported");
 
 function  QAbstractVideoSurface_nearestFormat(handle: not null QAbstractVideoSurfaceH; format:QVideoSurfaceFormatH) return QVideoSurfaceFormatH;
 pragma Import(C,QAbstractVideoSurface_nearestFormat, "QAbstractVideoSurface_nearestFormat");
 
 function  QAbstractVideoSurface_surfaceFormat(handle: not null QAbstractVideoSurfaceH) return QVideoSurfaceFormatH;
 pragma Import(C,QAbstractVideoSurface_surfaceFormat, "QAbstractVideoSurface_surfaceFormat");
 
 function  QAbstractVideoSurface_nativeResolution(handle: not null QAbstractVideoSurfaceH) return QSizeH;
 pragma Import(C,QAbstractVideoSurface_nativeResolution, "QAbstractVideoSurface_nativeResolution");
 
 function  QAbstractVideoSurface_start(handle: not null QAbstractVideoSurfaceH; format:QVideoSurfaceFormatH) return boolean;
 pragma Import(C,QAbstractVideoSurface_start, "QAbstractVideoSurface_start");
 
 procedure QAbstractVideoSurface_stop(handle: not null QAbstractVideoSurfaceH);
 pragma Import(C,QAbstractVideoSurface_stop, "QAbstractVideoSurface_stop");
 
 function  QAbstractVideoSurface_present(handle: not null QAbstractVideoSurfaceH;frame:QVideoFrameH) return boolean;
 pragma Import(C,QAbstractVideoSurface_present, "QAbstractVideoSurface_present");
 
 function  QAbstractVideoSurface_error(handle: not null QAbstractVideoSurfaceH) return Error;
 pragma Import(C,QAbstractVideoSurface_error, "QAbstractVideoSurface_error");

 procedure QAbstractVideoSurface_signal_slot_activeChanged(handle: not null QAbstractVideoSurfaceH; hook:boolProc);
 pragma Import(C,QAbstractVideoSurface_signal_slot_activeChanged, "QAbstractVideoSurface_signal_slot_activeChanged");
 
 procedure QAbstractVideoSurface_signal_slot_surfaceFormatChanged(handle: not null QAbstractVideoSurfaceH; hook:videoSurfaceFormatProc);
 pragma Import(C,QAbstractVideoSurface_signal_slot_surfaceFormatChanged, "QAbstractVideoSurface_signal_slot_surfaceFormatChanged");
 
 procedure QAbstractVideoSurface_signal_slot_nativeResolutionChanged(handle: not null QAbstractVideoSurfaceH; hook:sizeProc);
 pragma Import(C,QAbstractVideoSurface_signal_slot_nativeResolutionChanged, "QAbstractVideoSurface_signal_slot_nativeResolutionChanged");
 
 procedure QAbstractVideoSurface_signal_slot_supportedFormatsChanged(handle: not null QAbstractVideoSurfaceH; hook:voidProc);
 pragma Import(C,QAbstractVideoSurface_signal_slot_supportedFormatsChanged, "QAbstractVideoSurface_signal_slot_supportedFormatsChanged");
 
end;
