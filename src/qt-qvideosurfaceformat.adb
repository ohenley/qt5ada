--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2018                           บ
-- บ Copyright (C) 2018                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QVideoSurfaceFormat is

 function  QVideoSurfaceFormat_create(size:QSizeH;pixelFormat:Qt.QVideoFrame.PixelFormat;handleTp :HandleType :=  NoHandle) return QVideoSurfaceFormatH is
 begin
   return  QVideoSurfaceFormat_create2(size,pixelFormat,handleTp);
 end;

 function  QVideoSurfaceFormat_create(format:QVideoSurfaceFormatH) return QVideoSurfaceFormatH is
 begin
   return  QVideoSurfaceFormat_create3(format);
 end;

 procedure QVideoSurfaceFormat_setFrameSize(handle:not null QVideoSurfaceFormatH;width,height: integer) is
 begin
   QVideoSurfaceFormat_setFrameSize2(handle,width,height);
 end;

 procedure QVideoSurfaceFormat_setPixelAspectRatio(handle:not null QVideoSurfaceFormatH;width,height: integer) is
 begin
   QVideoSurfaceFormat_setPixelAspectRatio2(handle,width,height);
 end;
 
end;
