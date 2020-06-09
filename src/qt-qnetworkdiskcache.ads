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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QNetworkDiskCache is

 function  QNetworkDiskCache_create(parent:QObjectH := null) return QNetworkDiskCacheH ;
 pragma Import(C,QNetworkDiskCache_create, "QNetworkDiskCache_create");
 
 procedure QNetworkDiskCache_destroy(handle: not null QNetworkDiskCacheH);
 pragma Import(C,QNetworkDiskCache_destroy, "QNetworkDiskCache_destroy");
 
 procedure QNetworkDiskCache_setCacheDirectory(handle: not null QNetworkDiskCacheH; cacheDir:QStringH);
 pragma Import(C,QNetworkDiskCache_setCacheDirectory, "QNetworkDiskCache_setCacheDirectory");
 
 function  QNetworkDiskCache_cacheDirectory(handle: not null QNetworkDiskCacheH) return QStringH;
 pragma Import(C,QNetworkDiskCache_cacheDirectory, "QNetworkDiskCache_cacheDirectory");
 
 function  QNetworkDiskCache_maximumCacheSize(handle: not null QNetworkDiskCacheH) return qint64;
 pragma Import(C,QNetworkDiskCache_maximumCacheSize, "QNetworkDiskCache_maximumCacheSize");
 
 procedure QNetworkDiskCache_setMaximumCacheSize(handle: not null QNetworkDiskCacheH;size:qint64);
 pragma Import(C,QNetworkDiskCache_setMaximumCacheSize, "QNetworkDiskCache_setMaximumCacheSize");
 
 function  QNetworkDiskCache_cacheSize(handle: not null QNetworkDiskCacheH) return qint64;
 pragma Import(C,QNetworkDiskCache_cacheSize, "QNetworkDiskCache_cacheSize");
 
 function  QNetworkDiskCache_metaData(handle: not null QNetworkDiskCacheH; url:QUrlH) return QNetworkCacheMetaDataH;
 pragma Import(C,QNetworkDiskCache_metaData, "QNetworkDiskCache_metaData");
 
 procedure QNetworkDiskCache_updateMetaData(handle: not null QNetworkDiskCacheH; metaData:QNetworkCacheMetaDataH);
 pragma Import(C,QNetworkDiskCache_updateMetaData, "QNetworkDiskCache_updateMetaData");
 
 function  QNetworkDiskCache_data(handle: not null QNetworkDiskCacheH; url:QUrlH) return QIODeviceH;
 pragma Import(C,QNetworkDiskCache_data, "QNetworkDiskCache_data");
 
 function  QNetworkDiskCache_remove(handle: not null QNetworkDiskCacheH; url:QUrlH) return boolean;
 pragma Import(C,QNetworkDiskCache_remove, "QNetworkDiskCache_remove");
 
 function  QNetworkDiskCache_prepare(handle: not null QNetworkDiskCacheH; metaData:QNetworkCacheMetaDataH) return QIODeviceH;
 pragma Import(C,QNetworkDiskCache_prepare, "QNetworkDiskCache_prepare");
 
 procedure QNetworkDiskCache_insert(handle: not null QNetworkDiskCacheH;device:QIODeviceH);
 pragma Import(C,QNetworkDiskCache_insert, "QNetworkDiskCache_insert");
 
 function  QNetworkDiskCache_fileMetaData(handle: not null QNetworkDiskCacheH; fileName:QStringH) return QNetworkCacheMetaDataH;
 pragma Import(C,QNetworkDiskCache_fileMetaData, "QNetworkDiskCache_fileMetaData");
 
end;
