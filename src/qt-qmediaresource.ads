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

with Qt.QString; use Qt.QString;
package Qt.QMediaResource is

 function  QMediaResource_create return QMediaResourceH ;
 pragma Import(C,QMediaResource_create, "QMediaResource_create");
 
 function  QMediaResource_create2(url:QUrlH;mimeType:QStringH := QString_create) return QMediaResourceH ;
 pragma Import(C,QMediaResource_create2, "QMediaResource_create2");
 
 function  QMediaResource_create3(request:QNetworkRequestH;mimeType:QStringH := QString_create) return QMediaResourceH ;
 pragma Import(C,QMediaResource_create3, "QMediaResource_create3");
 
 function  QMediaResource_create4(other: not null QMediaResourceH) return QMediaResourceH;
 pragma Import(C,QMediaResource_create4, "QMediaResource_create4");
 
 procedure QMediaResource_destroy(handle: not null QMediaResourceH);
 pragma Import(C,QMediaResource_destroy, "QMediaResource_destroy");
 
 function  QMediaResource_isNull(handle: not null QMediaResourceH) return boolean;
 pragma Import(C,QMediaResource_isNull, "QMediaResource_isNull");
 
 function  QMediaResource_url(handle: not null QMediaResourceH) return QUrlH;
 pragma Import(C,QMediaResource_url, "QMediaResource_url");
 
 function  QMediaResource_request(handle: not null QMediaResourceH) return QNetworkRequestH;
 pragma Import(C,QMediaResource_request, "QMediaResource_request");
 
 function  QMediaResource_mimeType(handle: not null QMediaResourceH) return QStringH;
 pragma Import(C,QMediaResource_mimeType, "QMediaResource_mimeType");
 
 function  QMediaResource_language(handle: not null QMediaResourceH) return QStringH;
 pragma Import(C,QMediaResource_language, "QMediaResource_language");
 
 procedure QMediaResource_setLanguage(handle: not null QMediaResourceH; language:QStringH);
 pragma Import(C,QMediaResource_setLanguage, "QMediaResource_setLanguage");
 
 function  QMediaResource_audioCodec(handle: not null QMediaResourceH) return QStringH;
 pragma Import(C,QMediaResource_audioCodec, "QMediaResource_audioCodec");
 
 procedure QMediaResource_setAudioCodec(handle: not null QMediaResourceH;codec:QStringH);
 pragma Import(C,QMediaResource_setAudioCodec, "QMediaResource_setAudioCodec");
 
 function  QMediaResource_videoCodec(handle: not null QMediaResourceH) return QStringH;
 pragma Import(C,QMediaResource_videoCodec, "QMediaResource_videoCodec");
 
 procedure QMediaResource_setVideoCodec(handle: not null QMediaResourceH;codec:QStringH);
 pragma Import(C,QMediaResource_setVideoCodec, "QMediaResource_setVideoCodec");
 
 function  QMediaResource_dataSize(handle: not null QMediaResourceH) return qint64;
 pragma Import(C,QMediaResource_dataSize, "QMediaResource_dataSize");
 
 procedure QMediaResource_setDataSize(handle: not null QMediaResourceH;size:qint64);
 pragma Import(C,QMediaResource_setDataSize, "QMediaResource_setDataSize");
 
 function  QMediaResource_audioBitRate(handle: not null QMediaResourceH) return integer;
 pragma Import(C,QMediaResource_audioBitRate, "QMediaResource_audioBitRate");
 
 procedure QMediaResource_setAudioBitRate(handle: not null QMediaResourceH;rate:integer);
 pragma Import(C,QMediaResource_setAudioBitRate, "QMediaResource_setAudioBitRate");
 
 function  QMediaResource_sampleRate(handle: not null QMediaResourceH) return integer;
 pragma Import(C,QMediaResource_sampleRate, "QMediaResource_sampleRate");
 
 procedure QMediaResource_setSampleRate(handle: not null QMediaResourceH;frequency:integer);
 pragma Import(C,QMediaResource_setSampleRate, "QMediaResource_setSampleRate");
 
 function  QMediaResource_channelCount(handle: not null QMediaResourceH) return integer;
 pragma Import(C,QMediaResource_channelCount, "QMediaResource_channelCount");
 
 procedure QMediaResource_setChannelCount(handle: not null QMediaResourceH;channels:integer);
 pragma Import(C,QMediaResource_setChannelCount, "QMediaResource_setChannelCount");
 
 function  QMediaResource_videoBitRate(handle: not null QMediaResourceH) return integer;
 pragma Import(C,QMediaResource_videoBitRate, "QMediaResource_videoBitRate");
 
 procedure QMediaResource_setVideoBitRate(handle: not null QMediaResourceH; rate:integer);
 pragma Import(C,QMediaResource_setVideoBitRate, "QMediaResource_setVideoBitRate");
 
 function  QMediaResource_resolution(handle: not null QMediaResourceH) return QSizeH;
 pragma Import(C,QMediaResource_resolution, "QMediaResource_resolution");
 
 procedure QMediaResource_setResolution(handle: not null QMediaResourceH;width,height:integer);
 pragma Import(C,QMediaResource_setResolution, "QMediaResource_setResolution");
 
 procedure QMediaResource_setResolution2(handle: not null QMediaResourceH;resolution:QSizeH);
 pragma Import(C,QMediaResource_setResolution2, "QMediaResource_setResolution2");
 
----------------------------------------------------------------------------------------------------------------
 function  QMediaResource_create(url:QUrlH;mimeType:QStringH := QString_create) return QMediaResourceH ;
 function  QMediaResource_create(request:QNetworkRequestH;mimeType:QStringH := QString_create) return QMediaResourceH ;
 function  QMediaResource_create(other: not null QMediaResourceH) return QMediaResourceH;
 procedure QMediaResource_setResolution(handle: not null QMediaResourceH;resolution:QSizeH);

end;
