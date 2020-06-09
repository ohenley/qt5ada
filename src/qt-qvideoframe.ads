--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QImage;
package Qt.QVideoFrame  is

type FieldType is (ProgressiveFrame,TopField,BottomField,InterlacedFrame); 
pragma Convention(C,FieldType);

type PixelFormat is (
        Format_Invalid,Format_ARGB32,Format_ARGB32_Premultiplied,
        Format_RGB32,Format_RGB24,Format_RGB565,
        Format_RGB555,Format_ARGB8565_Premultiplied,Format_BGRA32,Format_BGRA32_Premultiplied,Format_BGR32,Format_BGR24,
        Format_BGR565,Format_BGR555,Format_BGRA5658_Premultiplied, Format_AYUV444,Format_AYUV444_Premultiplied,Format_YUV444,Format_YUV420P,
        Format_YV12,Format_UYVY,Format_YUYV,Format_NV12,Format_NV21,Format_IMC1,Format_IMC2,Format_IMC3,
        Format_IMC4,Format_Y8,Format_Y16,Format_Jpeg,Format_CameraRaw,Format_AdobeDng,Format_User);
pragma Convention(C,PixelFormat);

for PixelFormat  use (
        Format_Invalid   => 00,
        Format_ARGB32    => 01,
        Format_ARGB32_Premultiplied => 02,
        Format_RGB32     => 03,
        Format_RGB24     => 04,
        Format_RGB565    => 05,
        Format_RGB555    => 06,
        Format_ARGB8565_Premultiplied => 07,
        Format_BGRA32    => 08,
        Format_BGRA32_Premultiplied => 09,
        Format_BGR32     => 10,
        Format_BGR24     => 11,
        Format_BGR565    => 12,
        Format_BGR555    => 13,
        Format_BGRA5658_Premultiplied => 14,
        Format_AYUV444   => 15,
        Format_AYUV444_Premultiplied => 16,
        Format_YUV444    => 17,
        Format_YUV420P   => 18,
        Format_YV12      => 19,
        Format_UYVY      => 20,
        Format_YUYV      => 21,
        Format_NV12      => 22,
        Format_NV21      => 23,
        Format_IMC1      => 24,
        Format_IMC2      => 25,
        Format_IMC3      => 26,
        Format_IMC4      => 27,
        Format_Y8        => 28,
        Format_Y16       => 29,
        Format_Jpeg      => 30,
        Format_CameraRaw => 31,
        Format_AdobeDng  => 32, 
        Format_User      => 1000);
 
 function  QVideoFrame_create return QVideoFrameH;
 pragma Import(C,QVideoFrame_create, "QVideoFrame_create");
 
 function  QVideoFrame_create2(buffer:QAbstractVideoBufferH;size:QSizeH;format:PixelFormat) return QVideoFrameH;
 pragma Import(C,QVideoFrame_create2, "QVideoFrame_create2");
 
 function  QVideoFrame_create3(bytes:integer;size:QSizeH;bytesPerLine:integer;format:PixelFormat) return QVideoFrameH;
 pragma Import(C,QVideoFrame_create3, "QVideoFrame_create3");
 
 function  QVideoFrame_create4(image:QImageH) return QVideoFrameH;
 pragma Import(C,QVideoFrame_create4, "QVideoFrame_create4");
 
 function  QVideoFrame_create5(otherFrame:QVideoFrameH) return QVideoFrameH;
 pragma Import(C,QVideoFrame_create5, "QVideoFrame_create5");
 
 procedure   QVideoFrame_destroy(handle: not null QVideoFrameH);
 pragma Import(C,QVideoFrame_destroy, "QVideoFrame_destroy");
 
 function  QVideoFrame_isValid(handle: not null QVideoFrameH) return boolean;
 pragma Import(C,QVideoFrame_isValid, "QVideoFrame_isValid");
 
 function  QVideoFrame_pixelFormat(handle: not null QVideoFrameH) return PixelFormat;
 pragma Import(C,QVideoFrame_pixelFormat, "QVideoFrame_pixelFormat");
 
 function  QVideoFrame_handleType(handle: not null QVideoFrameH) return integer;
 pragma Import(C,QVideoFrame_handleType, "QVideoFrame_handleType");
 
 function  QVideoFrame_size(handle: not null QVideoFrameH) return QSizeH;
 pragma Import(C,QVideoFrame_size, "QVideoFrame_size");
 
 function  QVideoFrame_width(handle: not null QVideoFrameH) return integer;
 pragma Import(C,QVideoFrame_width, "QVideoFrame_width");
 
 function  QVideoFrame_height(handle: not null QVideoFrameH) return integer;
 pragma Import(C,QVideoFrame_height, "QVideoFrame_height");
 
 function  QVideoFrame_fieldType(handle: not null QVideoFrameH) return FieldType;
 pragma Import(C,QVideoFrame_fieldType, "QVideoFrame_fieldType");
 
 procedure QVideoFrame_setFieldType(handle: not null QVideoFrameH;fType:FieldType);
 pragma Import(C,QVideoFrame_setFieldType, "QVideoFrame_setFieldType");
 
 function  QVideoFrame_isMapped(handle: not null QVideoFrameH) return boolean;
 pragma Import(C,QVideoFrame_isMapped, "QVideoFrame_isMapped");
 
 function  QVideoFrame_isReadable(handle: not null QVideoFrameH) return boolean;
 pragma Import(C,QVideoFrame_isReadable, "QVideoFrame_isReadable");
 
 function  QVideoFrame_isWritable(handle: not null QVideoFrameH) return boolean;
 pragma Import(C,QVideoFrame_isWritable, "QVideoFrame_isWritable");
 
 function  QVideoFrame_mapMode(handle: not null QVideoFrameH) return integer;
 pragma Import(C,QVideoFrame_mapMode, "QVideoFrame_mapMode");
 
 function  QVideoFrame_map(handle: not null QVideoFrameH; mode:integer) return boolean;
 pragma Import(C,QVideoFrame_map, "QVideoFrame_map");
 
 procedure QVideoFrame_unmap(handle: not null QVideoFrameH);
 pragma Import(C,QVideoFrame_unmap, "QVideoFrame_unmap");
 
 function  QVideoFrame_bytesPerLine(handle: not null QVideoFrameH) return integer;
 pragma Import(C,QVideoFrame_bytesPerLine, "QVideoFrame_bytesPerLine");
 
 function  QVideoFrame_bits(handle: not null QVideoFrameH) return string;
 pragma Import(C,QVideoFrame_bits, "QVideoFrame_bits");
 
 function  QVideoFrame_mappedBytes(handle: not null QVideoFrameH) return integer;
 pragma Import(C,QVideoFrame_mappedBytes, "QVideoFrame_mappedBytes");
 
 function  QVideoFrame_handle(handle: not null QVideoFrameH) return QVariantH;
 pragma Import(C,QVideoFrame_handle, "QVideoFrame_handle");
 
 function  QVideoFrame_startTime(handle: not null QVideoFrameH) return qint64;
 pragma Import(C,QVideoFrame_startTime, "QVideoFrame_startTime");
 
 procedure QVideoFrame_setStartTime(handle: not null QVideoFrameH;time:qint64);
 pragma Import(C,QVideoFrame_setStartTime, "QVideoFrame_setStartTime");
 
 function  QVideoFrame_endTime(handle: not null QVideoFrameH) return qint64;
 pragma Import(C,QVideoFrame_endTime, "QVideoFrame_endTime");
 
 procedure QVideoFrame_setEndTime(handle: not null QVideoFrameH;time:qint64);
 pragma Import(C,QVideoFrame_setEndTime, "QVideoFrame_setEndTime");
 
 function  QVideoFrame_availableMetaData(handle: not null QVideoFrameH) return QVariantMapH;
 pragma Import(C,QVideoFrame_availableMetaData, "QVideoFrame_availableMetaData");
 
 function  QVideoFrame_metaData(handle: not null QVideoFrameH;key:QStringH) return QVariantH;
 pragma Import(C,QVideoFrame_metaData, "QVideoFrame_metaData");
 
 procedure QVideoFrame_setMetaData(handle: not null QVideoFrameH;key:QStringH;value: QVariantH);
 pragma Import(C,QVideoFrame_setMetaData, "QVideoFrame_setMetaData");
 
 function  QVideoFrame_pixelFormatFromImageFormat(format:Qt.QImage.QImageFormat) return PixelFormat;
 pragma Import(C,QVideoFrame_pixelFormatFromImageFormat, "QVideoFrame_pixelFormatFromImageFormat");
 
 function  QVideoFrame_imageFormatFromPixelFormat(format:PixelFormat) return Qt.QImage.QImageFormat;
 pragma Import(C,QVideoFrame_imageFormatFromPixelFormat, "QVideoFrame_imageFormatFromPixelFormat");

 type ucharH is access all Unsigned_Char;

 function  QVideoFrame_bytesPerLine2(handle:not null QVideoFrameH;plane:integer) return integer;
 pragma Import(C,QVideoFrame_bytesPerLine2, "QVideoFrame_bytesPerLine2");
 
 function  QVideoFrame_bits2(handle:not null QVideoFrameH;plane:integer) return ucharH;
 pragma Import(C,QVideoFrame_bits2, "QVideoFrame_bits2");
 
 function  QVideoFrame_planeCount(handle:not null QVideoFrameH) return integer;
 pragma Import(C,QVideoFrame_planeCount, "QVideoFrame_planeCount");
 
 function  QVideoFrame_image(handle:not null QVideoFrameH) return QImageH;
 pragma Import(C,QVideoFrame_image, "QVideoFrame_image");
 
-----------------------------------------------------------------------------------------------------------
 function  QVideoFrame_create(buffer:QAbstractVideoBufferH;size:QSizeH;format:PixelFormat) return QVideoFrameH;
 function  QVideoFrame_create(bytes:integer;size:QSizeH;bytesPerLine:integer;format:PixelFormat) return QVideoFrameH;
 function  QVideoFrame_create(image:QImageH) return QVideoFrameH;
 function  QVideoFrame_create(otherFrame:QVideoFrameH) return QVideoFrameH;
 function  QVideoFrame_bytesPerLine(handle:not null QVideoFrameH;plane:integer) return integer;
 function  QVideoFrame_bits(handle:not null QVideoFrameH;plane:integer) return ucharH;

end;
