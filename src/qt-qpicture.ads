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

with builtin; use builtin;
package Qt.QPicture             is

function QPicture_create(formatVersion: Integer := -1) return QPictureH;    
pragma Import(C,QPicture_create,"QPicture_create");

procedure QPicture_destroy(handle: not null  QPictureH);   
pragma Import(C,QPicture_destroy,"QPicture_destroy");

function QPicture_create2(p1: QPictureH) return  QPictureH;
pragma Import(C,QPicture_create2,"QPicture_create2");

function QPicture_isNull(handle: not null  QPictureH) return  Boolean;   
pragma Import(C,QPicture_isNull,"QPicture_isNull");

function QPicture_devType(handle: not null  QPictureH) return  Integer;   
pragma Import(C,QPicture_devType,"QPicture_devType");

function QPicture_size(handle: not null  QPictureH) return  LongWord;   
pragma Import(C,QPicture_size,"QPicture_size");

function QPicture_data(handle: not null  QPictureH) return string;
pragma Import(C,QPicture_data,"QPicture_data");

procedure QPicture_setData(handle: not null  QPictureH; data: zstring; size: LongWord);   
pragma Import(C,QPicture_setData,"QPicture_setData");

function QPicture_play(handle: not null  QPictureH; p: QPainterH) return  Boolean;   
pragma Import(C,QPicture_play,"QPicture_play");

function QPicture_load(handle: not null  QPictureH; dev: QIODeviceH; format: zstring := null_ZStr) return Boolean;
pragma Import(C,QPicture_load,"QPicture_load");

function QPicture_load2(handle: not null  QPictureH; fileName: QStringH; format: zstring := null_ZStr) return Boolean;
pragma Import(C,QPicture_load2,"QPicture_load2");

function QPicture_save(handle: not null  QPictureH; dev: QIODeviceH; format: zstring := null_ZStr) return Boolean;
pragma Import(C,QPicture_save,"QPicture_save");

function QPicture_save2(handle: not null  QPictureH; fileName: QStringH; format: zstring := null_ZStr) return Boolean;
pragma Import(C,QPicture_save2,"QPicture_save2");

function  QPicture_boundingRect(handle: not null  QPictureH) return QRectH;
pragma Import(C,QPicture_boundingRect,"QPicture_boundingRect");

procedure QPicture_setBoundingRect(handle: not null  QPictureH; r: QRectH);   
pragma Import(C,QPicture_setBoundingRect,"QPicture_setBoundingRect");

procedure QPicture_detach(handle: not null  QPictureH);   
pragma Import(C,QPicture_detach,"QPicture_detach");

function QPicture_isDetached(handle: not null  QPictureH) return  Boolean;   
pragma Import(C,QPicture_isDetached,"QPicture_isDetached");

function QPicture_pictureFormat(fileName: QStringH) return string;
pragma Import(C,QPicture_pictureFormat,"QPicture_pictureFormat");

function  QPicture_inputFormatList return QStringListH;
pragma Import(C,QPicture_inputFormatList,"QPicture_inputFormatList");

function  QPicture_outputFormatList return QStringListH;
pragma Import(C,QPicture_outputFormatList,"QPicture_outputFormatList");

function QPicture_paintEngine(handle: not null  QPictureH) return  QPaintEngineH;   
pragma Import(C,QPicture_paintEngine,"QPicture_paintEngine");
----------------------------------------------------------------
function QPictureIO_create return  QPictureIOH;    
pragma Import(C,QPictureIO_create,"QPictureIO_create");

procedure QPictureIO_destroy(handle: not null  QPictureIOH);   
pragma Import(C,QPictureIO_destroy,"QPictureIO_destroy");

function QPictureIO_create2(ioDevice: QIODeviceH; format: zstring) return  QPictureIOH;
pragma Import(C,QPictureIO_create2,"QPictureIO_create2");

function QPictureIO_create3(fileName: QStringH; format: zstring) return  QPictureIOH;
pragma Import(C,QPictureIO_create3,"QPictureIO_create3");

function QPictureIO_picture(handle: not null  QPictureIOH) return  QPictureH;   
pragma Import(C,QPictureIO_picture,"QPictureIO_picture");

function QPictureIO_status(handle: not null  QPictureIOH) return  Integer;   
pragma Import(C,QPictureIO_status,"QPictureIO_status");

function QPictureIO_format(handle: not null  QPictureIOH) return string;
pragma Import(C,QPictureIO_format,"QPictureIO_format");

function QPictureIO_ioDevice(handle: not null  QPictureIOH) return  QIODeviceH;   
pragma Import(C,QPictureIO_ioDevice,"QPictureIO_ioDevice");

function  QPictureIO_fileName(handle: not null  QPictureIOH) return QStringH;
pragma Import(C,QPictureIO_fileName,"QPictureIO_fileName");

function QPictureIO_quality(handle: not null  QPictureIOH) return  Integer;   
pragma Import(C,QPictureIO_quality,"QPictureIO_quality");

function  QPictureIO_description(handle: not null  QPictureIOH) return QStringH;
pragma Import(C,QPictureIO_description,"QPictureIO_description");

function QPictureIO_parameters(handle: not null  QPictureIOH) return string;
pragma Import(C,QPictureIO_parameters,"QPictureIO_parameters");

function QPictureIO_gamma(handle: not null  QPictureIOH) return  Single;   
pragma Import(C,QPictureIO_gamma,"QPictureIO_gamma");

procedure QPictureIO_setPicture(handle: not null  QPictureIOH; p1: QPictureH);   
pragma Import(C,QPictureIO_setPicture,"QPictureIO_setPicture");

procedure QPictureIO_setStatus(handle: not null  QPictureIOH; p1: Integer);   
pragma Import(C,QPictureIO_setStatus,"QPictureIO_setStatus");

procedure QPictureIO_setFormat(handle: not null  QPictureIOH; p1: zstring);   
pragma Import(C,QPictureIO_setFormat,"QPictureIO_setFormat");

procedure QPictureIO_setIODevice(handle: not null  QPictureIOH; p1: QIODeviceH);   
pragma Import(C,QPictureIO_setIODevice,"QPictureIO_setIODevice");

procedure QPictureIO_setFileName(handle: not null  QPictureIOH; p1: QStringH);   
pragma Import(C,QPictureIO_setFileName,"QPictureIO_setFileName");

procedure QPictureIO_setQuality(handle: not null  QPictureIOH; p1: Integer);   
pragma Import(C,QPictureIO_setQuality,"QPictureIO_setQuality");

procedure QPictureIO_setDescription(handle: not null  QPictureIOH; p1: QStringH);   
pragma Import(C,QPictureIO_setDescription,"QPictureIO_setDescription");

procedure QPictureIO_setParameters(handle: not null  QPictureIOH; p1: zstring);   
pragma Import(C,QPictureIO_setParameters,"QPictureIO_setParameters");

procedure QPictureIO_setGamma(handle: not null  QPictureIOH; p1: Single);   
pragma Import(C,QPictureIO_setGamma,"QPictureIO_setGamma");

function QPictureIO_read(handle: not null  QPictureIOH) return  Boolean;   
pragma Import(C,QPictureIO_read,"QPictureIO_read");

function QPictureIO_write(handle: not null  QPictureIOH) return  Boolean;   
pragma Import(C,QPictureIO_write,"QPictureIO_write");

function  QPictureIO_pictureFormat(fileName: QStringH) return QByteArrayH;
pragma Import(C,QPictureIO_pictureFormat,"QPictureIO_pictureFormat");

function  QPictureIO_pictureFormat2(p1: QIODeviceH) return QByteArrayH;
pragma Import(C,QPictureIO_pictureFormat2,"QPictureIO_pictureFormat2");

procedure QPictureIO_defineIOHandler(format: zstring; header: zstring; flags: zstring; read_picture: TPictureIOHandler; write_picture: TPictureIOHandler);   
pragma Import(C,QPictureIO_defineIOHandler,"QPictureIO_defineIOHandler");

-----------------------------------------------------------------------
function QPicture_create(p1: QPictureH) return  QPictureH;
function QPicture_load(handle: not null  QPictureH; fileName: QStringH; format: zstring := null_ZStr) return Boolean;
function QPicture_save(handle: not null  QPictureH; fileName: QStringH; format: zstring := null_ZStr) return Boolean;
function QPictureIO_create(ioDevice: QIODeviceH; format: zstring) return  QPictureIOH;
function QPictureIO_create(fileName: QStringH; format: zstring) return  QPictureIOH;
function QPictureIO_pictureFormat(p1: QIODeviceH) return QByteArrayH;

end Qt.QPicture;
