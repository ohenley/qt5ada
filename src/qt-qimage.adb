--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QImage               is

function QImage_create(size: QSizeH; format: QImageFormat) return  QImageH is
begin
 return  QImage_create2(size, format);
end;

function QImage_create(width: Integer; height: Integer; format: QImageFormat) return  QImageH is
begin
 return QImage_create3(width, height, format);
end;

function QImage_create(data: QByteH; width: Integer; height: Integer; format: QImageFormat) return  QImageH is
begin
 return QImage_create4(data, width, height, format);
end;

function QImage_create(data: QByteH; width: Integer; height: Integer; bytesPerLine: Integer; format: QImageFormat) return  QImageH is
begin
 return QImage_create6(data, width, height, bytesPerLine, format);
end;

function QImage_create(xpm: zstring) return  QImageH is
begin
 return QImage_create8(xpm);
end;

function QImage_create(fileName: QStringH; format: zstring := null_ZStr) return QImageH is
begin
 return  QImage_create9(fileName, format);
end;

function QImage_create(fileName: zstring; format: zstring := null_ZStr) return QImageH is
begin
 return QImage_create10(fileName, format);
end;

function QImage_create(p1: QImageH) return  QImageH is
begin
 return QImage_create11(p1);
end;

function  QImage_copy(handle: not null  QImageH; x: Integer; y: Integer; w: Integer; h: Integer) return QImageH is
begin
  return QImage_copy2(handle, x, y, w, h);
end;

function QImage_valid(handle: not null  QImageH; pt: QPointH) return  Boolean is
begin
 return  QImage_valid2(handle, pt);
end;

function QImage_pixelIndex(handle: not null  QImageH; pt: QPointH) return  Integer is
begin
 return QImage_pixelIndex2(handle, pt);
end;

function QImage_pixel(handle: not null  QImageH; pt: QPointH) return  QRgbH is
begin
 return QImage_pixel2(handle, pt);
end;

procedure QImage_setPixel(handle: not null  QImageH; pt: QPointH; index_or_rgb: LongWord) is
begin
  QImage_setPixel2(handle, pt, index_or_rgb);
end;

function  QImage_scaled(handle: not null  QImageH; s: QSizeH; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QImageH is
begin
  return QImage_scaled2(handle, s, aspectMode, mode);
end;

function  QImage_transformed(handle: not null  QImageH; matrix: QTransformH; mode: QtTransformationMode := QtFastTransformation) return QImageH is
begin
  return QImage_transformed2(handle, matrix, mode);
end;

function QImage_load(handle: not null  QImageH; fileName: QStringH; format: zstring := null_ZStr) return Boolean is
begin
  return QImage_load2(handle, fileName, format);
end;

function QImage_loadFromData(handle: not null  QImageH; data: QByteArrayH; aformat: zstring := null_ZStr) return Boolean is
begin
  return QImage_loadFromData2(handle, data, aformat);
end;

function QImage_save(handle: not null  QImageH; device: QIODeviceH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean is
begin
  return QImage_save2(handle, device, format, quality);
end;

function  QImage_fromData(data: QByteArrayH; format: zstring := null_ZStr) return QImageH is
begin
  return QImage_fromData2(data, format);
end;

procedure QImage_fill(handle:not null QImageH;color:QColorH) is
begin
 QImage_fill2(handle,color);
end;

procedure QImage_fill(handle:not null QImageH;color:QtGlobalColor) is
begin
 QImage_fill3(handle,color);
end;

 function  QImage_pixelColor(handle:not null QImageH;point:QPointH) return QColorH is
 begin
   return  QImage_pixelColor2(handle,point);
 end;

 procedure QImage_setPixelColor(handle:not null QImageH;point:QPointH;color: QColorH) is
 begin
  QImage_setPixelColor2(handle,point,color);
 end;

end Qt.QImage;
