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

package Qt.QImageIO  is

type QImageIOHandlerImageOption is (QImageIOHandlerSize, QImageIOHandlerClipRect, QImageIOHandlerDescription, QImageIOHandlerScaledClipRect, QImageIOHandlerScaledSize, QImageIOHandlerCompressionRatio, QImageIOHandlerGamma, 
    QImageIOHandlerQuality, QImageIOHandlerName, QImageIOHandlerSubType, QImageIOHandlerIncrementalReading, QImageIOHandlerEndianness, QImageIOHandlerAnimation, QImageIOHandlerBackgroundColor );

procedure QImageIOHandler_setDevice(handle: not null  QImageIOHandlerH; device: QIODeviceH);   
pragma Import(C,QImageIOHandler_setDevice,"QImageIOHandler_setDevice");

function QImageIOHandler_device(handle: not null  QImageIOHandlerH) return  QIODeviceH;   
pragma Import(C,QImageIOHandler_device,"QImageIOHandler_device");

procedure QImageIOHandler_setFormat(handle: not null  QImageIOHandlerH; format: QByteArrayH);
pragma Import(C,QImageIOHandler_setFormat,"QImageIOHandler_setFormat");

function  QImageIOHandler_format(handle: not null  QImageIOHandlerH) return QByteArrayH;
pragma Import(C,QImageIOHandler_format,"QImageIOHandler_format");

function  QImageIOHandler_name(handle: not null  QImageIOHandlerH) return QByteArrayH;
pragma Import(C,QImageIOHandler_name,"QImageIOHandler_name");

function QImageIOHandler_canRead(handle: not null  QImageIOHandlerH) return  Boolean;   
pragma Import(C,QImageIOHandler_canRead,"QImageIOHandler_canRead");

function QImageIOHandler_read(handle: not null  QImageIOHandlerH; image: QImageH) return  Boolean;   
pragma Import(C,QImageIOHandler_read,"QImageIOHandler_read");

function QImageIOHandler_write(handle: not null  QImageIOHandlerH; image: QImageH) return  Boolean;   
pragma Import(C,QImageIOHandler_write,"QImageIOHandler_write");

function  QImageIOHandler_option(handle: not null  QImageIOHandlerH; option: QImageIOHandlerImageOption) return QVariantH;
pragma Import(C,QImageIOHandler_option,"QImageIOHandler_option");

procedure QImageIOHandler_setOption(handle: not null  QImageIOHandlerH; option: QImageIOHandlerImageOption; value: QVariantH);   
pragma Import(C,QImageIOHandler_setOption,"QImageIOHandler_setOption");

function QImageIOHandler_supportsOption(handle: not null  QImageIOHandlerH; option: QImageIOHandlerImageOption) return  Boolean;   
pragma Import(C,QImageIOHandler_supportsOption,"QImageIOHandler_supportsOption");

function QImageIOHandler_jumpToNextImage(handle: not null  QImageIOHandlerH) return  Boolean;   
pragma Import(C,QImageIOHandler_jumpToNextImage,"QImageIOHandler_jumpToNextImage");

function QImageIOHandler_jumpToImage(handle: not null  QImageIOHandlerH; imageNumber: Integer) return  Boolean;   
pragma Import(C,QImageIOHandler_jumpToImage,"QImageIOHandler_jumpToImage");

function QImageIOHandler_loopCount(handle: not null  QImageIOHandlerH) return  Integer;   
pragma Import(C,QImageIOHandler_loopCount,"QImageIOHandler_loopCount");

function QImageIOHandler_imageCount(handle: not null  QImageIOHandlerH) return  Integer;   
pragma Import(C,QImageIOHandler_imageCount,"QImageIOHandler_imageCount");

function QImageIOHandler_nextImageDelay(handle: not null  QImageIOHandlerH) return  Integer;   
pragma Import(C,QImageIOHandler_nextImageDelay,"QImageIOHandler_nextImageDelay");

function QImageIOHandler_currentImageNumber(handle: not null  QImageIOHandlerH) return  Integer;   
pragma Import(C,QImageIOHandler_currentImageNumber,"QImageIOHandler_currentImageNumber");

function  QImageIOHandler_currentImageRect(handle: not null  QImageIOHandlerH) return QRectH;
pragma Import(C,QImageIOHandler_currentImageRect,"QImageIOHandler_currentImageRect");
----------------------------------------------------------------------
type QImageReaderImageReaderError is (QImageReaderUnknownError, QImageReaderFileNotFoundError, QImageReaderDeviceError, QImageReaderUnsupportedFormatError, QImageReaderInvalidDataError );

function QImageReader_create return  QImageReaderH;    
pragma Import(C,QImageReader_create,"QImageReader_create");

procedure QImageReader_destroy(handle: not null  QImageReaderH);   
pragma Import(C,QImageReader_destroy,"QImageReader_destroy");

function QImageReader_create2(device: QIODeviceH; format: QByteArrayH := null) return QImageReaderH;
pragma Import(C,QImageReader_create2,"QImageReader_create2");

function QImageReader_create3(fileName: QStringH; format: QByteArrayH := null) return QImageReaderH;
pragma Import(C,QImageReader_create3,"QImageReader_create3");

procedure QImageReader_setFormat(handle: not null  QImageReaderH; format: QByteArrayH);   
pragma Import(C,QImageReader_setFormat,"QImageReader_setFormat");

function  QImageReader_format(handle: not null  QImageReaderH) return QByteArrayH;
pragma Import(C,QImageReader_format,"QImageReader_format");

procedure QImageReader_setDevice(handle: not null  QImageReaderH; device: QIODeviceH);   
pragma Import(C,QImageReader_setDevice,"QImageReader_setDevice");

function QImageReader_device(handle: not null  QImageReaderH) return  QIODeviceH;   
pragma Import(C,QImageReader_device,"QImageReader_device");

procedure QImageReader_setFileName(handle: not null  QImageReaderH; fileName: QStringH);   
pragma Import(C,QImageReader_setFileName,"QImageReader_setFileName");

function  QImageReader_fileName(handle: not null  QImageReaderH) return QStringH;
pragma Import(C,QImageReader_fileName,"QImageReader_fileName");

function  QImageReader_size(handle: not null  QImageReaderH) return QSizeH;
pragma Import(C,QImageReader_size,"QImageReader_size");

function  QImageReader_textKeys(handle: not null  QImageReaderH) return QStringListH;
pragma Import(C,QImageReader_textKeys,"QImageReader_textKeys");

function  QImageReader_text(handle: not null  QImageReaderH; key: QStringH) return QStringH;
pragma Import(C,QImageReader_text,"QImageReader_text");

procedure QImageReader_setClipRect(handle: not null  QImageReaderH; rect: QRectH);   
pragma Import(C,QImageReader_setClipRect,"QImageReader_setClipRect");

function  QImageReader_clipRect(handle: not null  QImageReaderH) return QRectH;
pragma Import(C,QImageReader_clipRect,"QImageReader_clipRect");

procedure QImageReader_setScaledSize(handle: not null  QImageReaderH; size: QSizeH);   
pragma Import(C,QImageReader_setScaledSize,"QImageReader_setScaledSize");

function  QImageReader_scaledSize(handle: not null  QImageReaderH) return QSizeH;
pragma Import(C,QImageReader_scaledSize,"QImageReader_scaledSize");

procedure QImageReader_setQuality(handle: not null  QImageReaderH; quality: Integer);   
pragma Import(C,QImageReader_setQuality,"QImageReader_setQuality");

function QImageReader_quality(handle: not null  QImageReaderH) return  Integer;   
pragma Import(C,QImageReader_quality,"QImageReader_quality");

procedure QImageReader_setScaledClipRect(handle: not null  QImageReaderH; rect: QRectH);   
pragma Import(C,QImageReader_setScaledClipRect,"QImageReader_setScaledClipRect");

function  QImageReader_scaledClipRect(handle: not null  QImageReaderH) return QRectH;
pragma Import(C,QImageReader_scaledClipRect,"QImageReader_scaledClipRect");

procedure QImageReader_setBackgroundColor(handle: not null  QImageReaderH; color: QColorH);   
pragma Import(C,QImageReader_setBackgroundColor,"QImageReader_setBackgroundColor");

function  QImageReader_backgroundColor(handle: not null  QImageReaderH) return QColorH;
pragma Import(C,QImageReader_backgroundColor,"QImageReader_backgroundColor");

function QImageReader_supportsAnimation(handle: not null  QImageReaderH) return  Boolean;   
pragma Import(C,QImageReader_supportsAnimation,"QImageReader_supportsAnimation");

function QImageReader_canRead(handle: not null  QImageReaderH) return  Boolean;   
pragma Import(C,QImageReader_canRead,"QImageReader_canRead");

function  QImageReader_read(handle: not null  QImageReaderH) return QImageH;
pragma Import(C,QImageReader_read,"QImageReader_read");

function QImageReader_jumpToNextImage(handle: not null  QImageReaderH) return  Boolean;   
pragma Import(C,QImageReader_jumpToNextImage,"QImageReader_jumpToNextImage");

function QImageReader_jumpToImage(handle: not null  QImageReaderH; imageNumber: Integer) return  Boolean;   
pragma Import(C,QImageReader_jumpToImage,"QImageReader_jumpToImage");

function QImageReader_loopCount(handle: not null  QImageReaderH) return  Integer;   
pragma Import(C,QImageReader_loopCount,"QImageReader_loopCount");

function QImageReader_imageCount(handle: not null  QImageReaderH) return  Integer;   
pragma Import(C,QImageReader_imageCount,"QImageReader_imageCount");

function QImageReader_nextImageDelay(handle: not null  QImageReaderH) return  Integer;   
pragma Import(C,QImageReader_nextImageDelay,"QImageReader_nextImageDelay");

function QImageReader_currentImageNumber(handle: not null  QImageReaderH) return  Integer;   
pragma Import(C,QImageReader_currentImageNumber,"QImageReader_currentImageNumber");

function  QImageReader_currentImageRect(handle: not null  QImageReaderH) return QRectH;
pragma Import(C,QImageReader_currentImageRect,"QImageReader_currentImageRect");

function QImageReader_error(handle: not null  QImageReaderH) return  QImageReaderImageReaderError;   
pragma Import(C,QImageReader_error,"QImageReader_error");

function  QImageReader_errorString(handle: not null  QImageReaderH) return QStringH;
pragma Import(C,QImageReader_errorString,"QImageReader_errorString");

function QImageReader_supportsOption(handle: not null  QImageReaderH; option: QImageIOHandlerImageOption) return  Boolean;   
pragma Import(C,QImageReader_supportsOption,"QImageReader_supportsOption");

function  QImageReader_imageFormat(fileName: QStringH) return QByteArrayH;
pragma Import(C,QImageReader_imageFormat,"QImageReader_imageFormat");

function  QImageReader_imageFormat2(device: QIODeviceH) return QByteArrayH;
pragma Import(C,QImageReader_imageFormat2,"QImageReader_imageFormat2");

 function  QImageReader_supportedImageFormats return QByteArrayListH;
 pragma Import(C,QImageReader_supportedImageFormats, "QImageReader_supportedImageFormats");
 
 function  QImageReader_supportedMimeTypes return QByteArrayListH;
 pragma Import(C,QImageReader_supportedMimeTypes, "QImageReader_supportedMimeTypes");
 
 function  QImageReader_transformation(handle:not null QImageReaderH) return integer;
 pragma Import(C,QImageReader_transformation, "QImageReader_transformation");
 
 procedure QImageReader_setAutoTransform(handle:not null QImageReaderH;enabled:boolean);
 pragma Import(C,QImageReader_setAutoTransform, "QImageReader_setAutoTransform");
 
 function  QImageReader_autoTransform(handle:not null QImageReaderH) return boolean;
 pragma Import(C,QImageReader_autoTransform, "QImageReader_autoTransform");
 
 procedure QImageReader_setGamma(handle:not null QImageReaderH; gamma:float);
 pragma Import(C,QImageReader_setGamma, "QImageReader_setGamma");
 
 function  QImageReader_gamma(handle:not null QImageReaderH) return float;
 pragma Import(C,QImageReader_gamma, "QImageReader_gamma");
 
 function  QImageReader_subType(handle:not null QImageReaderH) return string;
 pragma Import(C,QImageReader_subType, "QImageReader_subType");
 
 function  QImageReader_supportedSubTypes(handle:not null QImageReaderH) return QObjectListH;
 pragma Import(C,QImageReader_supportedSubTypes, "QImageReader_supportedSubTypes");

type QImageWriterImageWriterError is (QImageWriterUnknownError, QImageWriterDeviceError, QImageWriterUnsupportedFormatError );
--------------------------------------------------------------------
function QImageWriter_create return  QImageWriterH;    
pragma Import(C,QImageWriter_create,"QImageWriter_create");

procedure QImageWriter_destroy(handle: not null  QImageWriterH);   
pragma Import(C,QImageWriter_destroy,"QImageWriter_destroy");

function QImageWriter_create2(device: QIODeviceH; format: QByteArrayH) return  QImageWriterH;
pragma Import(C,QImageWriter_create2,"QImageWriter_create2");

function QImageWriter_create3(fileName: QStringH; format: QByteArrayH := null) return QImageWriterH;
pragma Import(C,QImageWriter_create3,"QImageWriter_create3");

procedure QImageWriter_setFormat(handle: not null  QImageWriterH; format: QByteArrayH);   
pragma Import(C,QImageWriter_setFormat,"QImageWriter_setFormat");

function  QImageWriter_format(handle: not null  QImageWriterH) return QByteArrayH;
pragma Import(C,QImageWriter_format,"QImageWriter_format");

procedure QImageWriter_setDevice(handle: not null  QImageWriterH; device: QIODeviceH);   
pragma Import(C,QImageWriter_setDevice,"QImageWriter_setDevice");

function QImageWriter_device(handle: not null  QImageWriterH) return  QIODeviceH;   
pragma Import(C,QImageWriter_device,"QImageWriter_device");

procedure QImageWriter_setFileName(handle: not null  QImageWriterH; fileName: QStringH);   
pragma Import(C,QImageWriter_setFileName,"QImageWriter_setFileName");

function  QImageWriter_fileName(handle: not null  QImageWriterH) return QStringH;
pragma Import(C,QImageWriter_fileName,"QImageWriter_fileName");

procedure QImageWriter_setQuality(handle: not null  QImageWriterH; quality: Integer);   
pragma Import(C,QImageWriter_setQuality,"QImageWriter_setQuality");

function QImageWriter_quality(handle: not null  QImageWriterH) return  Integer;   
pragma Import(C,QImageWriter_quality,"QImageWriter_quality");

procedure QImageWriter_setCompression(handle: not null  QImageWriterH; compression: Integer);   
pragma Import(C,QImageWriter_setCompression,"QImageWriter_setCompression");

function QImageWriter_compression(handle: not null  QImageWriterH) return  Integer;   
pragma Import(C,QImageWriter_compression,"QImageWriter_compression");

procedure QImageWriter_setGamma(handle: not null  QImageWriterH; gamma: Single);   
pragma Import(C,QImageWriter_setGamma,"QImageWriter_setGamma");

function QImageWriter_gamma(handle: not null  QImageWriterH) return  Single;   
pragma Import(C,QImageWriter_gamma,"QImageWriter_gamma");

procedure QImageWriter_setDescription(handle: not null  QImageWriterH; description: QStringH);   
pragma Import(C,QImageWriter_setDescription,"QImageWriter_setDescription");

function  QImageWriter_description(handle: not null  QImageWriterH) return QStringH;
pragma Import(C,QImageWriter_description,"QImageWriter_description");

procedure QImageWriter_setText(handle: not null  QImageWriterH; key: QStringH; text: QStringH);   
pragma Import(C,QImageWriter_setText,"QImageWriter_setText");

function QImageWriter_canWrite(handle: not null  QImageWriterH) return  Boolean;   
pragma Import(C,QImageWriter_canWrite,"QImageWriter_canWrite");

function QImageWriter_write(handle: not null  QImageWriterH; image: QImageH) return  Boolean;   
pragma Import(C,QImageWriter_write,"QImageWriter_write");

function QImageWriter_error(handle: not null  QImageWriterH) return  QImageWriterImageWriterError;   
pragma Import(C,QImageWriter_error,"QImageWriter_error");

function  QImageWriter_errorString(handle: not null  QImageWriterH) return QStringH;
pragma Import(C,QImageWriter_errorString,"QImageWriter_errorString");

function QImageWriter_supportsOption(handle: not null  QImageWriterH; option: QImageIOHandlerImageOption) return  Boolean;   
pragma Import(C,QImageWriter_supportsOption,"QImageWriter_supportsOption");

-----------------------------------------------------------------------
function QImageReader_create(device: QIODeviceH; format: QByteArrayH := null) return QImageReaderH;
function QImageReader_create(fileName: QStringH; format: QByteArrayH := null) return QImageReaderH;
function  QImageReader_imageFormat(device: QIODeviceH) return QByteArrayH;
function QImageWriter_create(device: QIODeviceH; format: QByteArrayH) return  QImageWriterH;
function QImageWriter_create(fileName: QStringH; format: QByteArrayH := null) return QImageWriterH;

end Qt.QImageIO;
