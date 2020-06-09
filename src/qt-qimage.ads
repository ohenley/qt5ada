--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012 ,2014,2015                บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QImage is

type QImageInvertMode is ( QImageInvertRgb, QImageInvertRgba );
pragma Convention(C,QImageInvertMode);

type QImageFormat is  (Format_Invalid, Format_Mono, Format_MonoLSB, Format_Indexed8, Format_RGB32, Format_ARGB32, 
  Format_ARGB32_Premultiplied, Format_RGB16,
  Format_ARGB8565_Premultiplied,Format_RGB666,Format_ARGB6666_Premultiplied,
  Format_RGB555, Format_ARGB8555_Premultiplied, Format_RGB888,
  Format_RGB444,Format_ARGB4444_Premultiplied, Format_RGBX8888,
  Format_RGBA8888,Format_RGBA8888_Premultiplied,Format_BGR30,
  Format_A2BGR30_Premultiplied,Format_RGB30,Format_A2RGB30_Premultiplied,
  Format_Alpha8,Format_Grayscale8,Format_Grayscale16,NImageFormats );
pragma Convention(C,QImageFormat);

function QImage_create return  QImageH;    
pragma Import(C,QImage_create,"QImage_create");

procedure QImage_destroy(handle: not null  QImageH);   
pragma Import(C,QImage_destroy,"QImage_destroy");

function QImage_create2(size: QSizeH; format: QImageFormat) return  QImageH;
pragma Import(C,QImage_create2,"QImage_create2");

function QImage_create3(width: Integer; height: Integer; format: QImageFormat) return  QImageH;
pragma Import(C,QImage_create3,"QImage_create3");

function QImage_create4(data: QByteH; width: Integer; height: Integer; format: QImageFormat) return  QImageH;
pragma Import(C,QImage_create4,"QImage_create4");

function QImage_create6(data: QByteH; width: Integer; height: Integer; bytesPerLine: Integer; format: QImageFormat) return  QImageH;
pragma Import(C,QImage_create6,"QImage_create6");

function QImage_create8(xpm: zstring) return  QImageH;
pragma Import(C,QImage_create8,"QImage_create8");

function QImage_create9(fileName: QStringH; format: zstring := null_ZStr) return QImageH;
pragma Import(C,QImage_create9,"QImage_create9");

function QImage_create10(fileName: zstring; format: zstring := null_ZStr) return QImageH;
pragma Import(C,QImage_create10,"QImage_create10");

function QImage_create11(p1: QImageH) return  QImageH;
pragma Import(C,QImage_create11,"QImage_create11");

function QImage_isNull(handle: not null  QImageH) return  Boolean;   
pragma Import(C,QImage_isNull,"QImage_isNull");

function QImage_devType(handle: not null  QImageH) return  Integer;   
pragma Import(C,QImage_devType,"QImage_devType");

procedure QImage_detach(handle: not null  QImageH);   
pragma Import(C,QImage_detach,"QImage_detach");

function QImage_isDetached(handle: not null  QImageH) return  Boolean;   
pragma Import(C,QImage_isDetached,"QImage_isDetached");

function  QImage_copy(handle: not null  QImageH; rect: QRectH := null) return QImageH;
pragma Import(C,QImage_copy,"QImage_copy");

function  QImage_copy2(handle: not null  QImageH; x: Integer; y: Integer; w: Integer; h: Integer) return QImageH;
pragma Import(C,QImage_copy2,"QImage_copy2");

function QImage_format(handle: not null  QImageH) return  QImageFormat;   
pragma Import(C,QImage_format,"QImage_format");

function  QImage_convertToFormat(handle: not null  QImageH; f: QImageFormat; flags: QtImageConversionFlags := QtAutoColor) return QImageH;
pragma Import(C,QImage_convertToFormat,"QImage_convertToFormat");

function QImage_width(handle: not null  QImageH) return  Integer;   
pragma Import(C,QImage_width,"QImage_width");

function QImage_height(handle: not null  QImageH) return  Integer;   
pragma Import(C,QImage_height,"QImage_height");

function  QImage_size(handle: not null  QImageH) return QSizeH;
pragma Import(C,QImage_size,"QImage_size");

function  QImage_rect(handle: not null  QImageH) return QRectH;
pragma Import(C,QImage_rect,"QImage_rect");

function QImage_depth(handle: not null  QImageH) return  Integer;   
pragma Import(C,QImage_depth,"QImage_depth");

--function QImage_numColors(handle: not null  QImageH) return  Integer;   
--pragma Import(C,QImage_numColors,"QImage_numColors");

function QImage_color(handle: not null  QImageH; i: Integer) return  QRgbH;
pragma Import(C,QImage_color,"QImage_color");

procedure QImage_setColor(handle: not null  QImageH; i: Integer; c: QRgbH);
pragma Import(C,QImage_setColor,"QImage_setColor");

procedure QImage_setNumColors(handle: not null  QImageH; p1: Integer);   
pragma Import(C,QImage_setNumColors,"QImage_setNumColors");

function QImage_allGray(handle: not null  QImageH) return  Boolean;   
pragma Import(C,QImage_allGray,"QImage_allGray");

function QImage_isGrayscale(handle: not null  QImageH) return  Boolean;   
pragma Import(C,QImage_isGrayscale,"QImage_isGrayscale");

function QImage_bits(handle: not null  QImageH) return  QByteH;    
pragma Import(C,QImage_bits,"QImage_bits");

--function QImage_numBytes(handle: not null  QImageH) return  Integer;   
--pragma Import(C,QImage_numBytes,"QImage_numBytes");

function QImage_scanLine(handle: not null  QImageH; p1: Integer) return  QByteH;    
pragma Import(C,QImage_scanLine,"QImage_scanLine");

function QImage_bytesPerLine(handle: not null  QImageH) return  Integer;   
pragma Import(C,QImage_bytesPerLine,"QImage_bytesPerLine");

function QImage_valid(handle: not null  QImageH; x: Integer; y: Integer) return  Boolean;    
pragma Import(C,QImage_valid,"QImage_valid");

function QImage_valid2(handle: not null  QImageH; pt: QPointH) return  Boolean;
pragma Import(C,QImage_valid2,"QImage_valid2");

function QImage_pixelIndex(handle: not null  QImageH; x: Integer; y: Integer) return  Integer;    
pragma Import(C,QImage_pixelIndex,"QImage_pixelIndex");

function QImage_pixelIndex2(handle: not null  QImageH; pt: QPointH) return  Integer;
pragma Import(C,QImage_pixelIndex2,"QImage_pixelIndex2");

function QImage_pixel(handle: not null  QImageH; x: Integer; y: Integer) return  QRgbH;
pragma Import(C,QImage_pixel,"QImage_pixel");

function QImage_pixel2(handle: not null  QImageH; pt: QPointH) return  QRgbH;
pragma Import(C,QImage_pixel2,"QImage_pixel2");

procedure QImage_setPixel(handle: not null  QImageH; x: Integer; y: Integer; index_or_rgb: LongWord);    
pragma Import(C,QImage_setPixel,"QImage_setPixel");

procedure QImage_setPixel2(handle: not null  QImageH; pt: QPointH; index_or_rgb: LongWord);
pragma Import(C,QImage_setPixel2,"QImage_setPixel2");

procedure QImage_fill(handle: not null  QImageH; pixel: LongWord);   
pragma Import(C,QImage_fill,"QImage_fill");

function QImage_hasAlphaChannel(handle: not null  QImageH) return  Boolean;   
pragma Import(C,QImage_hasAlphaChannel,"QImage_hasAlphaChannel");

procedure QImage_setAlphaChannel(handle: not null  QImageH; alphaChannel: QImageH);   
pragma Import(C,QImage_setAlphaChannel,"QImage_setAlphaChannel");

function  QImage_alphaChannel(handle: not null  QImageH) return QImageH;
pragma Import(C,QImage_alphaChannel,"QImage_alphaChannel");

function  QImage_createAlphaMask(handle: not null  QImageH; flags: QtImageConversionFlags := QtAutoColor) return QImageH;
pragma Import(C,QImage_createAlphaMask,"QImage_createAlphaMask");

function  QImage_createHeuristicMask(handle: not null  QImageH; clipTight: Boolean := True) return QImageH;
pragma Import(C,QImage_createHeuristicMask,"QImage_createHeuristicMask");

function  QImage_createMaskFromColor(handle: not null  QImageH; color: QRgbH; mode: QtMaskMode := QtMaskInColor) return QImageH;
pragma Import(C,QImage_createMaskFromColor,"QImage_createMaskFromColor");

function QImage_scaled(handle: not null  QImageH; w: Integer; h: Integer; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QImageH;
pragma Import(C,QImage_scaled,"QImage_scaled");

function  QImage_scaled2(handle: not null  QImageH; s: QSizeH; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QImageH;
pragma Import(C,QImage_scaled2,"QImage_scaled2");

function  QImage_scaledToWidth(handle: not null  QImageH; w: Integer; mode: QtTransformationMode := QtFastTransformation) return QImageH;
pragma Import(C,QImage_scaledToWidth,"QImage_scaledToWidth");

function  QImage_scaledToHeight(handle: not null  QImageH; h: Integer; mode: QtTransformationMode := QtFastTransformation) return QImageH;
pragma Import(C,QImage_scaledToHeight,"QImage_scaledToHeight");

function  QImage_transformed(handle: not null  QImageH; matrix: QMatrixH; mode: QtTransformationMode := QtFastTransformation) return QImageH;
pragma Import(C,QImage_transformed,"QImage_transformed");

function  QImage_trueMatrix(p1: QMatrixH; w: Integer; h: Integer) return QMatrixH;
pragma Import(C,QImage_trueMatrix,"QImage_trueMatrix");

function  QImage_transformed2(handle: not null  QImageH; matrix: QTransformH; mode: QtTransformationMode := QtFastTransformation) return QImageH;
pragma Import(C,QImage_transformed2,"QImage_transformed2");

function  QImage_trueMatrix2(p1: QTransformH; w: Integer; h: Integer) return QTransformH;
pragma Import(C,QImage_trueMatrix2,"QImage_trueMatrix2");

function  QImage_mirrored(handle: not null  QImageH; horizontally: Boolean := False; vertically: Boolean := True) return QImageH;
pragma Import(C,QImage_mirrored,"QImage_mirrored");

function  QImage_rgbSwapped(handle: not null  QImageH) return QImageH;
pragma Import(C,QImage_rgbSwapped,"QImage_rgbSwapped");

procedure QImage_invertPixels(handle: not null  QImageH; p1: QImageInvertMode := QImageInvertRgb);   
pragma Import(C,QImage_invertPixels,"QImage_invertPixels");

function QImage_load(handle: not null  QImageH; device: QIODeviceH; format: zstring) return  Boolean;    
pragma Import(C,QImage_load,"QImage_load");

function QImage_load2(handle: not null  QImageH; fileName: QStringH; format: zstring := null_ZStr) return Boolean;
pragma Import(C,QImage_load2,"QImage_load2");

function QImage_loadFromData(handle: not null  QImageH; buf: QByteH; len: Integer; format: zstring := null_ZStr) return Boolean;
pragma Import(C,QImage_loadFromData,"QImage_loadFromData");

function QImage_loadFromData2(handle: not null  QImageH; data: QByteArrayH; aformat: zstring := null_ZStr) return Boolean;
pragma Import(C,QImage_loadFromData2,"QImage_loadFromData2");

function QImage_save(handle: not null  QImageH; fileName: QStringH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean;
pragma Import(C,QImage_save,"QImage_save");

function QImage_save2(handle: not null  QImageH; device: QIODeviceH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean;
pragma Import(C,QImage_save2,"QImage_save2");

function  QImage_fromData(data: QByteH; size: Integer; format: zstring := null_ZStr) return QImageH;
pragma Import(C,QImage_fromData,"QImage_fromData");

function  QImage_fromData2(data: QByteArrayH; format: zstring := null_ZStr) return QImageH;
pragma Import(C,QImage_fromData2,"QImage_fromData2");

--function QImage_serialNumber(handle: not null  QImageH) return  Integer;   
--pragma Import(C,QImage_serialNumber,"QImage_serialNumber");

function QImage_cacheKey(handle: not null  QImageH) return  int64;   
pragma Import(C,QImage_cacheKey,"QImage_cacheKey");

function QImage_paintEngine(handle: not null  QImageH) return  QPaintEngineH;   
pragma Import(C,QImage_paintEngine,"QImage_paintEngine");

function QImage_dotsPerMeterX(handle: not null  QImageH) return  Integer;   
pragma Import(C,QImage_dotsPerMeterX,"QImage_dotsPerMeterX");

function QImage_dotsPerMeterY(handle: not null  QImageH) return  Integer;   
pragma Import(C,QImage_dotsPerMeterY,"QImage_dotsPerMeterY");

procedure QImage_setDotsPerMeterX(handle: not null  QImageH; p1: Integer);   
pragma Import(C,QImage_setDotsPerMeterX,"QImage_setDotsPerMeterX");

procedure QImage_setDotsPerMeterY(handle: not null  QImageH; p1: Integer);   
pragma Import(C,QImage_setDotsPerMeterY,"QImage_setDotsPerMeterY");

function  QImage_offset(handle: not null  QImageH) return QPointH;
pragma Import(C,QImage_offset,"QImage_offset");

procedure QImage_setOffset(handle: not null  QImageH; p1: QPointH);   
pragma Import(C,QImage_setOffset,"QImage_setOffset");

function  QImage_textKeys(handle: not null  QImageH) return QStringListH;
pragma Import(C,QImage_textKeys,"QImage_textKeys");

function  QImage_text(handle: not null  QImageH;  key: QStringH := null) return QStringH;
pragma Import(C,QImage_text,"QImage_text");

procedure QImage_setText(handle: not null  QImageH; key: QStringH; value: QStringH);    
pragma Import(C,QImage_setText,"QImage_setText");

function  QImage_painter(handle:not null QImageH) return QPainterH;
pragma Import(C,QImage_painter, "QImage_painter");

function  QImage_colorCount(handle:not null QImageH) return integer;
pragma Import(C,QImage_colorCount, "QImage_colorCount");
 
procedure QImage_setColorCount(handle:not null QImageH;count:integer);
pragma Import(C,QImage_setColorCount, "QImage_setColorCount");
 
function  QImage_byteCount(handle:not null QImageH) return integer;
pragma Import(C,QImage_byteCount, "QImage_byteCount");
 
procedure QImage_fill2(handle:not null QImageH;color:QColorH);
pragma Import(C,QImage_fill2, "QImage_fill2");
 
procedure QImage_fill3(handle:not null QImageH;color:QtGlobalColor);
pragma Import(C,QImage_fill3, "QImage_fill3");
 
 function  QImage_pixelColor(handle:not null QImageH;x,y:integer) return QColorH;
 pragma Import(C,QImage_pixelColor, "QImage_pixelColor");
 
 function  QImage_pixelColor2(handle:not null QImageH;point:QPointH) return QColorH;
 pragma Import(C,QImage_pixelColor2, "QImage_pixelColor2");
 
 procedure QImage_setPixelColor(handle:not null QImageH;x,y: integer; color:QColorH);
 pragma Import(C,QImage_setPixelColor, "QImage_setPixelColor");
 
 procedure QImage_setPixelColor2(handle:not null QImageH;point:QPointH;color: QColorH);
 pragma Import(C,QImage_setPixelColor2, "QImage_setPixelColor2");
 
------------------------------------------------------------------------
function QImage_create(size: QSizeH; format: QImageFormat) return  QImageH;
function QImage_create(width: Integer; height: Integer; format: QImageFormat) return  QImageH;
function QImage_create(data: QByteH; width: Integer; height: Integer; format: QImageFormat) return  QImageH;
function QImage_create(data: QByteH; width: Integer; height: Integer; bytesPerLine: Integer; format: QImageFormat) return  QImageH;
function QImage_create(xpm: zstring) return  QImageH;
function QImage_create(fileName: QStringH; format: zstring := null_ZStr) return QImageH;
function QImage_create(fileName: zstring; format: zstring := null_ZStr) return QImageH;
function QImage_create(p1: QImageH) return  QImageH;
function  QImage_copy(handle: not null  QImageH; x: Integer; y: Integer; w: Integer; h: Integer) return QImageH;
function QImage_valid(handle: not null  QImageH; pt: QPointH) return  Boolean;
function QImage_pixelIndex(handle: not null  QImageH; pt: QPointH) return  Integer;
function QImage_pixel(handle: not null  QImageH; pt: QPointH) return  QRgbH;
procedure QImage_setPixel(handle: not null  QImageH; pt: QPointH; index_or_rgb: LongWord);
function  QImage_scaled(handle: not null  QImageH; s: QSizeH; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QImageH;
function  QImage_transformed(handle: not null  QImageH; matrix: QTransformH; mode: QtTransformationMode := QtFastTransformation) return QImageH;
function QImage_load(handle: not null  QImageH; fileName: QStringH; format: zstring := null_ZStr) return Boolean;
function QImage_loadFromData(handle: not null  QImageH; data: QByteArrayH; aformat: zstring := null_ZStr) return Boolean;
function QImage_save(handle: not null  QImageH; device: QIODeviceH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean;
function  QImage_fromData(data: QByteArrayH; format: zstring := null_ZStr) return QImageH;
procedure QImage_fill(handle:not null QImageH;color:QColorH);
procedure QImage_fill(handle:not null QImageH;color:QtGlobalColor);
function  QImage_pixelColor(handle:not null QImageH;point:QPointH) return QColorH;
procedure QImage_setPixelColor(handle:not null QImageH;point:QPointH;color: QColorH);

end Qt.QImage;
