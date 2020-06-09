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

with Qt.QImage; use Qt.QImage;
with builtin; use builtin;
package Qt.QBitmap              is

function QBitmap_create return  QBitmapH;    
pragma Import(C,QBitmap_create,"QBitmap_create");

procedure QBitmap_destroy(handle: not null  QBitmapH);   
pragma Import(C,QBitmap_destroy,"QBitmap_destroy");

function QBitmap_create2(p1: QPixmapH) return  QBitmapH;
pragma Import(C,QBitmap_create2,"QBitmap_create2");

function QBitmap_create3(w: Integer; h: Integer) return  QBitmapH;
pragma Import(C,QBitmap_create3,"QBitmap_create3");

function QBitmap_create4(p1: QSizeH) return  QBitmapH;
pragma Import(C,QBitmap_create4,"QBitmap_create4");

function QBitmap_create5(fileName: QStringH; format: zstring := null_ZStr) return QBitmapH;
pragma Import(C,QBitmap_create5,"QBitmap_create5");

procedure QBitmap_clear(handle: not null  QBitmapH);   
pragma Import(C,QBitmap_clear,"QBitmap_clear");

function  QBitmap_fromImage(image: QImageH; flags: QtImageConversionFlags := QtAutoColor) return QBitmapH;
pragma Import(C,QBitmap_fromImage,"QBitmap_fromImage");

function  QBitmap_fromData(size: QSizeH; bits: QByteH; monoFormat: QImageFormat := Format_MonoLSB) return QBitmapH;
pragma Import(C,QBitmap_fromData,"QBitmap_fromData");

function  QBitmap_transformed(handle: not null  QBitmapH; p1: QMatrixH)  return QBitmapH;
pragma Import(C,QBitmap_transformed,"QBitmap_transformed");

function  QBitmap_transformed2(handle: not null  QBitmapH; matrix: QTransformH) return QBitmapH;
pragma Import(C,QBitmap_transformed2,"QBitmap_transformed2");

--------------------------------------------------------------------
function  QBitmap_create(p1: QPixmapH) return  QBitmapH;
function  QBitmap_create(w: Integer; h: Integer) return  QBitmapH;
function  QBitmap_create(p1: QSizeH) return  QBitmapH;
function  QBitmap_create(fileName: QStringH; format: zstring := null_ZStr) return QBitmapH;
function  QBitmap_transformed(handle: not null  QBitmapH; matrix: QTransformH)  return QBitmapH;

end Qt.QBitmap;
