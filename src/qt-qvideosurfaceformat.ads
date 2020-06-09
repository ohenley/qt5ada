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

with Qt.QVideoFrame; use Qt.QVideoFrame;
with builtin; use builtin;
package Qt.QVideoSurfaceFormat is

 type HandleType is new integer;
 NoHandle         : constant HandleType := 0;
 GLTextureHandle  : constant HandleType := 1;
 XvShmImageHandle : constant HandleType := 2;
 CoreImageHandle  : constant HandleType := 3;
 QPixmapHandle    : constant HandleType := 4;
 EGLImageHandle   : constant HandleType := 5;
 UserHandle       : constant HandleType := 1000;
 
 type QVideoSurfaceFormat_Direction is (TopToBottom,BottomToTop);
 pragma convention(C,QVideoSurfaceFormat_Direction);

 type YCbCrColorSpace is (YCbCr_Undefined,YCbCr_BT601,YCbCr_BT709,YCbCr_xvYCC601,YCbCr_xvYCC709,YCbCr_JPEG);
 pragma convention(C,YCbCrColorSpace);

 function  QVideoSurfaceFormat_create return QVideoSurfaceFormatH;
 pragma Import(C,QVideoSurfaceFormat_create, "QVideoSurfaceFormat_create");
 
 function  QVideoSurfaceFormat_create2(size:QSizeH;pixelFormat:Qt.QVideoFrame.PixelFormat;handleTp :HandleType :=  NoHandle) return QVideoSurfaceFormatH;
 pragma Import(C,QVideoSurfaceFormat_create2, "QVideoSurfaceFormat_create2");
 
 function  QVideoSurfaceFormat_create3(format:QVideoSurfaceFormatH) return QVideoSurfaceFormatH;
 pragma Import(C,QVideoSurfaceFormat_create3, "QVideoSurfaceFormat_create3");
 
 procedure QVideoSurfaceFormat_destroy(handle:not null QVideoSurfaceFormatH);
 pragma Import(C,QVideoSurfaceFormat_destroy, "QVideoSurfaceFormat_destroy");
 
 function  QVideoSurfaceFormat_isValid(handle:not null QVideoSurfaceFormatH) return boolean;
 pragma Import(C,QVideoSurfaceFormat_isValid, "QVideoSurfaceFormat_isValid");
 
 function  QVideoSurfaceFormat_pixelFormat(handle:not null QVideoSurfaceFormatH) return Qt.QVideoFrame.PixelFormat;
 pragma Import(C,QVideoSurfaceFormat_pixelFormat, "QVideoSurfaceFormat_pixelFormat");
 
 function  QVideoSurfaceFormat_handleType(handle:not null QVideoSurfaceFormatH) return HandleType;
 pragma Import(C,QVideoSurfaceFormat_handleType, "QVideoSurfaceFormat_handleType");
 
 function  QVideoSurfaceFormat_frameSize(handle:not null QVideoSurfaceFormatH) return QSizeH;
 pragma Import(C,QVideoSurfaceFormat_frameSize, "QVideoSurfaceFormat_frameSize");
 
 procedure QVideoSurfaceFormat_setFrameSize(handle:not null QVideoSurfaceFormatH;size: QSizeH);
 pragma Import(C,QVideoSurfaceFormat_setFrameSize, "QVideoSurfaceFormat_setFrameSize");
 
 procedure QVideoSurfaceFormat_setFrameSize2(handle:not null QVideoSurfaceFormatH;width,height: integer);
 pragma Import(C,QVideoSurfaceFormat_setFrameSize2, "QVideoSurfaceFormat_setFrameSize2");
 
 function  QVideoSurfaceFormat_frameWidth(handle:not null QVideoSurfaceFormatH) return integer;
 pragma Import(C,QVideoSurfaceFormat_frameWidth, "QVideoSurfaceFormat_frameWidth");
 
 function  QVideoSurfaceFormat_frameHeight(handle:not null QVideoSurfaceFormatH) return integer;
 pragma Import(C,QVideoSurfaceFormat_frameHeight, "QVideoSurfaceFormat_frameHeight");
 
 function  QVideoSurfaceFormat_viewport(handle:not null QVideoSurfaceFormatH) return QRectH;
 pragma Import(C,QVideoSurfaceFormat_viewport, "QVideoSurfaceFormat_viewport");
 
 procedure QVideoSurfaceFormat_setViewport(handle:not null QVideoSurfaceFormatH;viewport:QRectH);
 pragma Import(C,QVideoSurfaceFormat_setViewport, "QVideoSurfaceFormat_setViewport");
 
 function  QVideoSurfaceFormat_scanLineDirection(handle:not null QVideoSurfaceFormatH) return QVideoSurfaceFormat_Direction;
 pragma Import(C,QVideoSurfaceFormat_scanLineDirection, "QVideoSurfaceFormat_scanLineDirection");
 
 procedure QVideoSurfaceFormat_setScanLineDirection(handle:not null QVideoSurfaceFormatH;direction:QVideoSurfaceFormat_Direction);
 pragma Import(C,QVideoSurfaceFormat_setScanLineDirection, "QVideoSurfaceFormat_setScanLineDirection");
 
 function  QVideoSurfaceFormat_frameRate(handle:not null QVideoSurfaceFormatH) return qreal;
 pragma Import(C,QVideoSurfaceFormat_frameRate, "QVideoSurfaceFormat_frameRate");
 
 procedure QVideoSurfaceFormat_setFrameRate(handle:not null QVideoSurfaceFormatH;rate:qreal);
 pragma Import(C,QVideoSurfaceFormat_setFrameRate, "QVideoSurfaceFormat_setFrameRate");
 
 function  QVideoSurfaceFormat_pixelAspectRatio(handle:not null QVideoSurfaceFormatH) return QSizeH;
 pragma Import(C,QVideoSurfaceFormat_pixelAspectRatio, "QVideoSurfaceFormat_pixelAspectRatio");
 
 procedure QVideoSurfaceFormat_setPixelAspectRatio(handle:not null QVideoSurfaceFormatH;ratio:QSizeH);
 pragma Import(C,QVideoSurfaceFormat_setPixelAspectRatio, "QVideoSurfaceFormat_setPixelAspectRatio");
 
 procedure QVideoSurfaceFormat_setPixelAspectRatio2(handle:not null QVideoSurfaceFormatH;width:integer;height: int);
 pragma Import(C,QVideoSurfaceFormat_setPixelAspectRatio2, "QVideoSurfaceFormat_setPixelAspectRatio2");
 
 function  QVideoSurfaceFormat_yCbCrColorSpace(handle:not null QVideoSurfaceFormatH) return YCbCrColorSpace;
 pragma Import(C,QVideoSurfaceFormat_yCbCrColorSpace, "QVideoSurfaceFormat_yCbCrColorSpace");
 
 procedure QVideoSurfaceFormat_setYCbCrColorSpace(handle:not null QVideoSurfaceFormatH;colorSpace:YCbCrColorSpace);
 pragma Import(C,QVideoSurfaceFormat_setYCbCrColorSpace, "QVideoSurfaceFormat_setYCbCrColorSpace");
 
 function  QVideoSurfaceFormat_isMirrored(handle:not null QVideoSurfaceFormatH) return boolean;
 pragma Import(C,QVideoSurfaceFormat_isMirrored, "QVideoSurfaceFormat_isMirrored");
 
 procedure QVideoSurfaceFormat_setMirrored(handle:not null QVideoSurfaceFormatH;mirrored:boolean);
 pragma Import(C,QVideoSurfaceFormat_setMirrored, "QVideoSurfaceFormat_setMirrored");
 
 function  QVideoSurfaceFormat_sizeHint(handle:not null QVideoSurfaceFormatH) return QSizeH;
 pragma Import(C,QVideoSurfaceFormat_sizeHint, "QVideoSurfaceFormat_sizeHint");
 
 function  QVideoSurfaceFormat_propertyNames(handle:not null QVideoSurfaceFormatH) return QByteArrayListH;
 pragma Import(C,QVideoSurfaceFormat_propertyNames, "QVideoSurfaceFormat_propertyNames");
 
 function  QVideoSurfaceFormat_property(handle:not null QVideoSurfaceFormatH;name:zstring) return QVariantH;
 pragma Import(C,QVideoSurfaceFormat_property, "QVideoSurfaceFormat_property");
 
 procedure QVideoSurfaceFormat_setProperty(handle:not null QVideoSurfaceFormatH;name:zstring;value: QVariantH);
 pragma Import(C,QVideoSurfaceFormat_setProperty, "QVideoSurfaceFormat_setProperty");

------------------------------------------------------------------
 function  QVideoSurfaceFormat_create(size:QSizeH;pixelFormat:Qt.QVideoFrame.PixelFormat;handleTp :HandleType :=  NoHandle) return QVideoSurfaceFormatH;
 function  QVideoSurfaceFormat_create(format:QVideoSurfaceFormatH) return QVideoSurfaceFormatH;
 procedure QVideoSurfaceFormat_setFrameSize(handle:not null QVideoSurfaceFormatH;width,height: integer);
 procedure QVideoSurfaceFormat_setPixelAspectRatio(handle:not null QVideoSurfaceFormatH;width,height: integer);
 
end;
