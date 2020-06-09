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

package body Qt.QVideoFrame  is

 function  QVideoFrame_create(buffer:QAbstractVideoBufferH;size:QSizeH;format:PixelFormat) return QVideoFrameH is
 begin
   return  QVideoFrame_create2(buffer,size,format);
 end;

 function  QVideoFrame_create(bytes:integer;size:QSizeH;bytesPerLine:integer;format:PixelFormat) return QVideoFrameH is
 begin
   return  QVideoFrame_create3(bytes,size,bytesPerLine,format);
 end;

 function  QVideoFrame_create(image:QImageH) return QVideoFrameH is
 begin
   return  QVideoFrame_create4(image);
 end;

 function  QVideoFrame_create(otherFrame:QVideoFrameH) return QVideoFrameH is
 begin
   return  QVideoFrame_create5(otherFrame);
 end;

 function  QVideoFrame_bytesPerLine(handle:not null QVideoFrameH;plane:integer) return integer is
 begin
   return  QVideoFrame_bytesPerLine2(handle,plane);
 end;

 function  QVideoFrame_bits(handle:not null QVideoFrameH;plane:integer) return ucharH is
 begin
   return  QVideoFrame_bits2(handle,plane);
 end;

end;
