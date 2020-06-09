--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2020                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString; use Qt.QString;
with Qt.QLocale; use Qt.QLocale;
package Qt.QResource  is

 type QResourceH is new QObjectH;
 type Compression is (NoCompression,ZlibCompression,ZstdCompression); 
 pragma convention(C,Compression);

 function  QResource_create(file:QStringH := QString_create;locale: QLocaleH := QLocale_create) return QResourceH;
 pragma Import(C,QResource_create, "QResource_create");
 
 procedure QResource_destroy(handle:not null QResourceH);
 pragma Import(C,QResource_destroy, "QResource_destroy");
 
 procedure QResource_setFileName(handle:not null QResourceH;file:QStringH);
 pragma Import(C,QResource_setFileName, "QResource_setFileName");
 
 function  QResource_fileName(handle:not null QResourceH) return QStringH;
 pragma Import(C,QResource_fileName, "QResource_fileName");
 
 function  QResource_absoluteFilePath(handle:not null QResourceH) return QStringH;
 pragma Import(C,QResource_absoluteFilePath, "QResource_absoluteFilePath");
 
 procedure QResource_setLocale(handle:not null QResourceH;locale:QLocaleH);
 pragma Import(C,QResource_setLocale, "QResource_setLocale");
 
 function  QResource_locale(handle:not null QResourceH) return QLocaleH;
 pragma Import(C,QResource_locale, "QResource_locale");
 
 function  QResource_isValid(handle:not null QResourceH) return boolean;
 pragma Import(C,QResource_isValid, "QResource_isValid");
 
 function  QResource_compressionAlgorithm(handle:not null QResourceH) return Compression;
 pragma Import(C,QResource_compressionAlgorithm, "QResource_compressionAlgorithm");
 
 function  QResource_size(handle:not null QResourceH) return qint64;
 pragma Import(C,QResource_size, "QResource_size");
 
 function  QResource_data(handle:not null QResourceH) return charp;
 pragma Import(C,QResource_data, "QResource_data");
 
 function  QResource_uncompressedSize(handle:not null QResourceH) return qint64;
 pragma Import(C,QResource_uncompressedSize, "QResource_uncompressedSize");
 
 function  QResource_uncompressedData(handle:not null QResourceH) return QByteArrayH;
 pragma Import(C,QResource_uncompressedData, "QResource_uncompressedData");
 
 function  QResource_lastModified(handle:not null QResourceH) return QDateTimeH;
 pragma Import(C,QResource_lastModified, "QResource_lastModified");
 
 function  QResource_registerResource(rccFilename: QStringH;resourceRoot: QStringH := QString_create) return boolean;
 pragma Import(C,QResource_registerResource, "QResource_registerResource");
 
 function  QResource_unregisterResource(rccFilename: QStringH;resourceRoot: QStringH := QString_create) return boolean;
 pragma Import(C,QResource_unregisterResource, "QResource_unregisterResource");
 
 function  QResource_registerResource2(rccData : charp;resourceRoot: QStringH := QString_create) return boolean;
 pragma Import(C,QResource_registerResource2, "QResource_registerResource2");
 
 function  QResource_unregisterResource2(rccData: charp;resourceRoot: QStringH := QString_create) return boolean;
 pragma Import(C,QResource_unregisterResource2, "QResource_unregisterResource2");
 

 function  QResource_regResource(rccFilename: QStringH;resourceRoot: QStringH := QString_create) return boolean;
 function  QResource_unregResource(rccFilename: QStringH;resourceRoot: QStringH := QString_create) return boolean;

 function  QResource_registerResource(rccData : charp;resourceRoot: QStringH := QString_create) return boolean;
 function  QResource_unregisterResource(rccData: charp;resourceRoot: QStringH := QString_create) return boolean;

end;
