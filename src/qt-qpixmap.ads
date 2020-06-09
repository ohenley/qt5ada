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

with builtin; use builtin;
package Qt.QPixmap              is

type BitmapFormat is (NoAlpha, PremultipliedAlpha );
pragma convention(C,BitmapFormat);

function QPixmap_create return  QPixmapH;    
pragma Import(C,QPixmap_create,"QPixmap_create");

procedure QPixmap_destroy(handle: not null  QPixmapH);   
pragma Import(C,QPixmap_destroy,"QPixmap_destroy");

function QPixmap_create2(w: Integer; h: Integer) return  QPixmapH;
pragma Import(C,QPixmap_create2,"QPixmap_create2");

function QPixmap_create3(p1: QSizeH) return  QPixmapH;
pragma Import(C,QPixmap_create3,"QPixmap_create3");

function QPixmap_create4(fileName: QStringH; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return QPixmapH;
pragma Import(C,QPixmap_create4,"QPixmap_create4");

function QPixmap_create5(xpm: zstring) return  QPixmapH;
pragma Import(C,QPixmap_create5,"QPixmap_create5");

function QPixmap_create6(p1: QPixmapH) return  QPixmapH;
pragma Import(C,QPixmap_create6,"QPixmap_create6");

function QPixmap_isNull(handle: not null  QPixmapH) return  Boolean;   
pragma Import(C,QPixmap_isNull,"QPixmap_isNull");

function QPixmap_devType(handle: not null  QPixmapH) return  Integer;   
pragma Import(C,QPixmap_devType,"QPixmap_devType");

function QPixmap_width(handle: not null  QPixmapH) return  Integer;   
pragma Import(C,QPixmap_width,"QPixmap_width");

function QPixmap_height(handle: not null  QPixmapH) return  Integer;   
pragma Import(C,QPixmap_height,"QPixmap_height");

function  QPixmap_size(handle: not null  QPixmapH) return QSizeH;
pragma Import(C,QPixmap_size,"QPixmap_size");

function  QPixmap_rect(handle: not null  QPixmapH) return QRectH;
pragma Import(C,QPixmap_rect,"QPixmap_rect");

function QPixmap_depth(handle: not null  QPixmapH) return  Integer;   
pragma Import(C,QPixmap_depth,"QPixmap_depth");

function QPixmap_defaultDepth return  Integer;   
pragma Import(C,QPixmap_defaultDepth,"QPixmap_defaultDepth");

procedure QPixmap_fill(handle: not null  QPixmapH; fillColor: QColorH);    
pragma Import(C,QPixmap_fill,"QPixmap_fill");

procedure QPixmap_fill2(handle: not null  QPixmapH; widget: QWidgetH; ofs: QPointH);
pragma Import(C,QPixmap_fill2,"QPixmap_fill2");

procedure QPixmap_fill3(handle: not null  QPixmapH; widget: QWidgetH; xofs: Integer; yofs: Integer);
pragma Import(C,QPixmap_fill3,"QPixmap_fill3");

function  QPixmap_mask(handle: not null  QPixmapH) return QBitmapH;
pragma Import(C,QPixmap_mask,"QPixmap_mask");

procedure QPixmap_setMask(handle: not null  QPixmapH; p1: QBitmapH);   
pragma Import(C,QPixmap_setMask,"QPixmap_setMask");

function QPixmap_hasAlpha(handle: not null  QPixmapH) return  Boolean;   
pragma Import(C,QPixmap_hasAlpha,"QPixmap_hasAlpha");

function QPixmap_hasAlphaChannel(handle: not null  QPixmapH) return  Boolean;   
pragma Import(C,QPixmap_hasAlphaChannel,"QPixmap_hasAlphaChannel");

function  QPixmap_createHeuristicMask(handle: not null  QPixmapH;clipTight: Boolean := True) return QBitmapH;
pragma Import(C,QPixmap_createHeuristicMask,"QPixmap_createHeuristicMask");

function  QPixmap_createMaskFromColor(handle: not null  QPixmapH; maskColor: QColorH) return QBitmapH;
pragma Import(C,QPixmap_createMaskFromColor,"QPixmap_createMaskFromColor");

function  QPixmap_createMaskFromColor2(handle: not null  QPixmapH; maskColor: QColorH; mode: QtMaskMode) return  QBitmapH;
pragma Import(C,QPixmap_createMaskFromColor2,"QPixmap_createMaskFromColor2");

function  QPixmap_grabWindow(p1: LongWord; x: Integer := 0; y: Integer := 0; w: Integer := -1; h: Integer := -1) return QPixmapH;
pragma Import(C,QPixmap_grabWindow,"QPixmap_grabWindow");

function  QPixmap_grabWidget(widget: QWidgetH; rect: QRectH) return QPixmapH;
pragma Import(C,QPixmap_grabWidget,"QPixmap_grabWidget");

function  QPixmap_grabWidget2(widget: QWidgetH; x: Integer := 0; y: Integer := 0; w: Integer := -1; h: Integer := -1) return QPixmapH;
pragma Import(C,QPixmap_grabWidget2,"QPixmap_grabWidget2");

function  QPixmap_scaled(handle: not null  QPixmapH; w: Integer; h: Integer; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
pragma Import(C,QPixmap_scaled,"QPixmap_scaled");

function  QPixmap_scaled2(handle: not null  QPixmapH; s: QSizeH; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
pragma Import(C,QPixmap_scaled2,"QPixmap_scaled2");

function  QPixmap_scaledToWidth(handle: not null  QPixmapH; w: Integer; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
pragma Import(C,QPixmap_scaledToWidth,"QPixmap_scaledToWidth");

function  QPixmap_scaledToHeight(handle: not null  QPixmapH; h: Integer; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
pragma Import(C,QPixmap_scaledToHeight,"QPixmap_scaledToHeight");

function  QPixmap_transformed(handle: not null  QPixmapH; p1: QMatrixH; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
pragma Import(C,QPixmap_transformed,"QPixmap_transformed");

function  QPixmap_trueMatrix(m: QMatrixH; w: Integer; h: Integer) return QMatrixH;
pragma Import(C,QPixmap_trueMatrix,"QPixmap_trueMatrix");

function  QPixmap_transformed2(handle: not null  QPixmapH; p1: QTransformH; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
pragma Import(C,QPixmap_transformed2,"QPixmap_transformed2");

function  QPixmap_trueMatrix2(m: QTransformH; w: Integer; h: Integer) return QTransformH;
pragma Import(C,QPixmap_trueMatrix2,"QPixmap_trueMatrix2");

function  QPixmap_toImage(handle: not null  QPixmapH) return QImageH;
pragma Import(C,QPixmap_toImage,"QPixmap_toImage");

function  QPixmap_fromImage(image: QImageH; flags: QtImageConversionFlags := QtAutoColor) return QPixmapH;
pragma Import(C,QPixmap_fromImage,"QPixmap_fromImage");

function QPixmap_load(handle: not null  QPixmapH; fileName: QStringH; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return Boolean;
pragma Import(C,QPixmap_load,"QPixmap_load");

function QPixmap_loadFromData(handle: not null  QPixmapH; buf: QByteH; len: LongWord; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return Boolean;
pragma Import(C,QPixmap_loadFromData,"QPixmap_loadFromData");

function QPixmap_loadFromData2(handle: not null  QPixmapH; data: QByteArrayH; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return Boolean;
pragma Import(C,QPixmap_loadFromData2,"QPixmap_loadFromData2");

function QPixmap_save(handle: not null  QPixmapH; fileName: QStringH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean;
pragma Import(C,QPixmap_save,"QPixmap_save");

function QPixmap_save2(handle: not null  QPixmapH; device: QIODeviceH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean;
pragma Import(C,QPixmap_save2,"QPixmap_save2");

function  QPixmap_copy(handle: not null  QPixmapH; x: Integer; y: Integer; width: Integer; height: Integer) return QPixmapH;
pragma Import(C,QPixmap_copy,"QPixmap_copy");

function  QPixmap_copy2(handle: not null  QPixmapH; rect: QRectH := null) return QPixmapH;
pragma Import(C,QPixmap_copy2,"QPixmap_copy2");

--function QPixmap_serialNumber(handle: not null  QPixmapH) return  Integer;   
--pragma Import(C,QPixmap_serialNumber,"QPixmap_serialNumber");

function QPixmap_cacheKey(handle: not null  QPixmapH) return  int64;   
pragma Import(C,QPixmap_cacheKey,"QPixmap_cacheKey");

function QPixmap_isDetached(handle: not null  QPixmapH) return  Boolean;   
pragma Import(C,QPixmap_isDetached,"QPixmap_isDetached");

procedure QPixmap_detach(handle: not null  QPixmapH);   
pragma Import(C,QPixmap_detach,"QPixmap_detach");

function QPixmap_isQBitmap(handle: not null  QPixmapH) return  Boolean;   
pragma Import(C,QPixmap_isQBitmap,"QPixmap_isQBitmap");

function QPixmap_paintEngine(handle: not null  QPixmapH) return  QPaintEngineH;   
pragma Import(C,QPixmap_paintEngine,"QPixmap_paintEngine");

 function  QPixmap_devicePixelRatio(handle:not null QPixmapH) return qreal;
 pragma Import(C,QPixmap_devicePixelRatio, "QPixmap_devicePixelRatio");
 
 procedure QPixmap_setDevicePixelRatio(handle:not null QPixmapH;scaleFactor:qreal);
 pragma Import(C,QPixmap_setDevicePixelRatio, "QPixmap_setDevicePixelRatio");
 
 function  QPixmap_fromImageReader(imageReader:QImageReaderH;flags : QtImageConversionFlags :=  QtAutoColor) return QPixmapH;
 pragma Import(C,QPixmap_fromImageReader, "QPixmap_fromImageReader");
 
 procedure QPixmap_scroll(handle:not null QPixmapH;dx,dy,x,y,width,height: integer;exposed : QRegionH :=  null);
 pragma Import(C,QPixmap_scroll, "QPixmap_scroll");
 
 procedure QPixmap_scroll2(handle:not null QPixmapH;dx,dy : integer;rect: QRectH;exposed : QRegionH :=  null);
 pragma Import(C,QPixmap_scroll2, "QPixmap_scroll2");
 
--------------------------------------------------------------
function QPixmap_create(w: Integer; h: Integer) return  QPixmapH;
function QPixmap_create(p1: QSizeH) return  QPixmapH;
function QPixmap_create(fileName: QStringH; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return QPixmapH;
function QPixmap_create(xpm: zstring) return  QPixmapH;
function QPixmap_create(p1: QPixmapH) return  QPixmapH;
procedure QPixmap_fill(handle: not null  QPixmapH; widget: QWidgetH; ofs: QPointH);
procedure QPixmap_fill(handle: not null  QPixmapH; widget: QWidgetH; xofs: Integer; yofs: Integer);
function  QPixmap_createMaskFromColor(handle: not null  QPixmapH;  maskColor: QColorH; mode: QtMaskMode) return QBitmapH;
function  QPixmap_grabWidget(widget: QWidgetH; x: Integer := 0; y: Integer := 0; w: Integer := -1; h: Integer := -1) return QPixmapH;
function  QPixmap_scaled(handle: not null  QPixmapH; s: QSizeH; aspectMode: QtAspectRatioMode := QtIgnoreAspectRatio; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
function  QPixmap_transformed(handle: not null  QPixmapH; p1: QTransformH; mode: QtTransformationMode := QtFastTransformation) return QPixmapH;
function  QPixmap_trueMatrix(m: QTransformH; w: Integer; h: Integer) return QTransformH;
function QPixmap_loadFromData(handle: not null  QPixmapH; data: QByteArrayH; format: zstring := null_ZStr; flags: QtImageConversionFlags := QtAutoColor) return Boolean;
function QPixmap_save(handle: not null  QPixmapH; device: QIODeviceH; format: zstring := null_ZStr; quality: Integer := -1) return Boolean;
function  QPixmap_copy(handle: not null  QPixmapH; rect: QRectH := null) return QPixmapH;
procedure QPixmap_scroll(handle:not null QPixmapH;dx,dy : integer;rect: QRectH;exposed : QRegionH :=  null);

end Qt.QPixmap;
