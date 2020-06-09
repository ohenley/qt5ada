--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QNamespace; use Qt.QNamespace;
package Qt.QMediaEncoderSettings is

 function  QAudioEncoderSettings_create return QAudioEncoderSettingsH;
 pragma Import(C,QAudioEncoderSettings_create, "QAudioEncoderSettings_create");
 
 function  QAudioEncoderSettings_create2(otherEncoder:QAudioEncoderSettingsH) return QAudioEncoderSettingsH;
 pragma Import(C,QAudioEncoderSettings_create2, "QAudioEncoderSettings_create2");
 
 procedure QAudioEncoderSettings_destroy(handle: not null QAudioEncoderSettingsH);
 pragma Import(C,QAudioEncoderSettings_destroy, "QAudioEncoderSettings_destroy");
 
 function  QAudioEncoderSettings_isNull(handle: not null QAudioEncoderSettingsH) return boolean;
 pragma Import(C,QAudioEncoderSettings_isNull, "QAudioEncoderSettings_isNull");
 
 function  QAudioEncoderSettings_encodingMode(handle: not null QAudioEncoderSettingsH) return EncodingMode;
 pragma Import(C,QAudioEncoderSettings_encodingMode, "QAudioEncoderSettings_encodingMode");
 
 procedure QAudioEncoderSettings_setEncodingMode(handle: not null QAudioEncoderSettingsH; mode:encodingMode);
 pragma Import(C,QAudioEncoderSettings_setEncodingMode, "QAudioEncoderSettings_setEncodingMode");
 
 function  QAudioEncoderSettings_codec(handle: not null QAudioEncoderSettingsH) return QStringH;
 pragma Import(C,QAudioEncoderSettings_codec, "QAudioEncoderSettings_codec");
 
 procedure QAudioEncoderSettings_setCodec(handle: not null QAudioEncoderSettingsH;codec:QStringH);
 pragma Import(C,QAudioEncoderSettings_setCodec, "QAudioEncoderSettings_setCodec");
 
 function  QAudioEncoderSettings_bitRate(handle: not null QAudioEncoderSettingsH) return integer;
 pragma Import(C,QAudioEncoderSettings_bitRate, "QAudioEncoderSettings_bitRate");
 
 procedure QAudioEncoderSettings_setBitRate(handle: not null QAudioEncoderSettingsH;bitrate:integer);
 pragma Import(C,QAudioEncoderSettings_setBitRate, "QAudioEncoderSettings_setBitRate");
 
 function  QAudioEncoderSettings_channelCount(handle: not null QAudioEncoderSettingsH) return integer;
 pragma Import(C,QAudioEncoderSettings_channelCount, "QAudioEncoderSettings_channelCount");
 
 procedure QAudioEncoderSettings_setChannelCount(handle: not null QAudioEncoderSettingsH; channels:integer);
 pragma Import(C,QAudioEncoderSettings_setChannelCount, "QAudioEncoderSettings_setChannelCount");
 
 function  QAudioEncoderSettings_sampleRate(handle: not null QAudioEncoderSettingsH) return integer;
 pragma Import(C,QAudioEncoderSettings_sampleRate, "QAudioEncoderSettings_sampleRate");
 
 procedure QAudioEncoderSettings_setSampleRate(handle: not null QAudioEncoderSettingsH; rate:integer);
 pragma Import(C,QAudioEncoderSettings_setSampleRate, "QAudioEncoderSettings_setSampleRate");
 
 function  QAudioEncoderSettings_quality(handle: not null QAudioEncoderSettingsH) return integer;
 pragma Import(C,QAudioEncoderSettings_quality, "QAudioEncoderSettings_quality");
 
 procedure QAudioEncoderSettings_setQuality(handle: not null QAudioEncoderSettingsH; quality:integer);
 pragma Import(C,QAudioEncoderSettings_setQuality, "QAudioEncoderSettings_setQuality");
 
 function  QAudioEncoderSettings_encodingOption(handle: not null QAudioEncoderSettingsH;option:QStringH) return QVariantH;
 pragma Import(C,QAudioEncoderSettings_encodingOption, "QAudioEncoderSettings_encodingOption");
 
 function  QAudioEncoderSettings_encodingOptions(handle: not null QAudioEncoderSettingsH) return QVariantMapH;
 pragma Import(C,QAudioEncoderSettings_encodingOptions, "QAudioEncoderSettings_encodingOptions");
 
 procedure QAudioEncoderSettings_setEncodingOption(handle: not null QAudioEncoderSettingsH; option:QStringH; value:QVariantH);
 pragma Import(C,QAudioEncoderSettings_setEncodingOption, "QAudioEncoderSettings_setEncodingOption");
 
 procedure QAudioEncoderSettings_setEncodingOptions(handle: not null QAudioEncoderSettingsH;options:QVariantMapH);
 pragma Import(C,QAudioEncoderSettings_setEncodingOptions, "QAudioEncoderSettings_setEncodingOptions");
 
-----------------------------------------------------------------------------------------------------------------
 function  QAudioEncoderSettings_create(otherEncoder:QAudioEncoderSettingsH) return QAudioEncoderSettingsH;

--=========================================================================================================

 function  QVideoEncoderSettings_create return QVideoEncoderSettingsH;
 pragma Import(C,QVideoEncoderSettings_create, "QVideoEncoderSettings_create");
 
 function  QVideoEncoderSettings_create2(otherEncoder:QVideoEncoderSettingsH) return QVideoEncoderSettingsH;
 pragma Import(C,QVideoEncoderSettings_create2, "QVideoEncoderSettings_create2");
 
 procedure QVideoEncoderSettings_destroy(handle: not null QVideoEncoderSettingsH);
 pragma Import(C,QVideoEncoderSettings_destroy, "QVideoEncoderSettings_destroy");
 
 function  QVideoEncoderSettings_isNull(handle: not null QVideoEncoderSettingsH) return boolean;
 pragma Import(C,QVideoEncoderSettings_isNull, "QVideoEncoderSettings_isNull");
 
 function  QVideoEncoderSettings_encodingMode(handle: not null QVideoEncoderSettingsH) return integer;
 pragma Import(C,QVideoEncoderSettings_encodingMode, "QVideoEncoderSettings_encodingMode");
 
 procedure QVideoEncoderSettings_setEncodingMode(handle: not null QVideoEncoderSettingsH; mode:integer);
 pragma Import(C,QVideoEncoderSettings_setEncodingMode, "QVideoEncoderSettings_setEncodingMode");
 
 function  QVideoEncoderSettings_codec(handle: not null QVideoEncoderSettingsH) return QStringH;
 pragma Import(C,QVideoEncoderSettings_codec, "QVideoEncoderSettings_codec");
 
 procedure QVideoEncoderSettings_setCodec(handle: not null QVideoEncoderSettingsH;codec:QStringH);
 pragma Import(C,QVideoEncoderSettings_setCodec, "QVideoEncoderSettings_setCodec");
 
 function  QVideoEncoderSettings_bitRate(handle: not null QVideoEncoderSettingsH) return integer;
 pragma Import(C,QVideoEncoderSettings_bitRate, "QVideoEncoderSettings_bitRate");
 
 procedure QVideoEncoderSettings_setBitRate(handle: not null QVideoEncoderSettingsH;bitrate:integer);
 pragma Import(C,QVideoEncoderSettings_setBitRate, "QVideoEncoderSettings_setBitRate");
 
 function  QVideoEncoderSettings_quality(handle: not null QVideoEncoderSettingsH) return integer;
 pragma Import(C,QVideoEncoderSettings_quality, "QVideoEncoderSettings_quality");
 
 procedure QVideoEncoderSettings_setQuality(handle: not null QVideoEncoderSettingsH; quality:integer);
 pragma Import(C,QVideoEncoderSettings_setQuality, "QVideoEncoderSettings_setQuality");
 
 function  QVideoEncoderSettings_encodingOption(handle: not null QVideoEncoderSettingsH;option:QStringH) return QVariantH;
 pragma Import(C,QVideoEncoderSettings_encodingOption, "QVideoEncoderSettings_encodingOption");
 
 function  QVideoEncoderSettings_encodingOptions(handle: not null QVideoEncoderSettingsH) return QVariantMapH;
 pragma Import(C,QVideoEncoderSettings_encodingOptions, "QVideoEncoderSettings_encodingOptions");
 
 procedure QVideoEncoderSettings_setEncodingOption(handle: not null QVideoEncoderSettingsH; option:QStringH; value:QVariantH);
 pragma Import(C,QVideoEncoderSettings_setEncodingOption, "QVideoEncoderSettings_setEncodingOption");
 
 procedure QVideoEncoderSettings_setEncodingOptions(handle: not null QVideoEncoderSettingsH;options:QVariantMapH);
 pragma Import(C,QVideoEncoderSettings_setEncodingOptions, "QVideoEncoderSettings_setEncodingOptions");
 
 function  QVideoEncoderSettings_resolution(handle: not null QVideoEncoderSettingsH) return QSizeH;
 pragma Import(C,QVideoEncoderSettings_resolution, "QVideoEncoderSettings_resolution");
 
 procedure QVideoEncoderSettings_setResolution(handle: not null QVideoEncoderSettingsH;width, height:integer);
 pragma Import(C,QVideoEncoderSettings_setResolution, "QVideoEncoderSettings_setResolution");
 
 procedure QVideoEncoderSettings_setResolution2(handle: not null QVideoEncoderSettingsH; size:QSizeH);
 pragma Import(C,QVideoEncoderSettings_setResolution2, "QVideoEncoderSettings_setResolution2");
 
 function  QVideoEncoderSettings_frameRate(handle: not null QVideoEncoderSettingsH) return qreal;
 pragma Import(C,QVideoEncoderSettings_frameRate, "QVideoEncoderSettings_frameRate");
 
 procedure QVideoEncoderSettings_setFrameRate(handle: not null QVideoEncoderSettingsH;rate:qreal);
 pragma Import(C,QVideoEncoderSettings_setFrameRate, "QVideoEncoderSettings_setFrameRate");
 
-----------------------------------------------------------------------------------------------------------------
 function  QVideoEncoderSettings_create(otherEncoder:QVideoEncoderSettingsH) return QVideoEncoderSettingsH;
 procedure QVideoEncoderSettings_setResolution(handle: not null QVideoEncoderSettingsH; size:QSizeH);

--=========================================================================================================

 function  QImageEncoderSettings_create return QImageEncoderSettingsH;
 pragma Import(C,QImageEncoderSettings_create, "QImageEncoderSettings_create");
 
 function  QImageEncoderSettings_create2(otherEncoder:QImageEncoderSettingsH) return QImageEncoderSettingsH;
 pragma Import(C,QImageEncoderSettings_create2, "QImageEncoderSettings_create2");
 
 procedure QImageEncoderSettings_destroy(handle: not null QImageEncoderSettingsH);
 pragma Import(C,QImageEncoderSettings_destroy, "QImageEncoderSettings_destroy");
 
 function  QImageEncoderSettings_isNull(handle: not null QImageEncoderSettingsH) return boolean;
 pragma Import(C,QImageEncoderSettings_isNull, "QImageEncoderSettings_isNull");
 
 function  QImageEncoderSettings_encodingMode(handle: not null QImageEncoderSettingsH) return integer;
 pragma Import(C,QImageEncoderSettings_encodingMode, "QImageEncoderSettings_encodingMode");
 
 procedure QImageEncoderSettings_setEncodingMode(handle: not null QImageEncoderSettingsH; mode:integer);
 pragma Import(C,QImageEncoderSettings_setEncodingMode, "QImageEncoderSettings_setEncodingMode");
 
 function  QImageEncoderSettings_codec(handle: not null QImageEncoderSettingsH) return QStringH;
 pragma Import(C,QImageEncoderSettings_codec, "QImageEncoderSettings_codec");
 
 procedure QImageEncoderSettings_setCodec(handle: not null QImageEncoderSettingsH;codec:QStringH);
 pragma Import(C,QImageEncoderSettings_setCodec, "QImageEncoderSettings_setCodec");
 
 function  QImageEncoderSettings_quality(handle: not null QImageEncoderSettingsH) return integer;
 pragma Import(C,QImageEncoderSettings_quality, "QImageEncoderSettings_quality");
 
 procedure QImageEncoderSettings_setQuality(handle: not null QImageEncoderSettingsH; quality:integer);
 pragma Import(C,QImageEncoderSettings_setQuality, "QImageEncoderSettings_setQuality");
 
 function  QImageEncoderSettings_encodingOption(handle: not null QImageEncoderSettingsH;option:QStringH) return QVariantH;
 pragma Import(C,QImageEncoderSettings_encodingOption, "QImageEncoderSettings_encodingOption");
 
 function  QImageEncoderSettings_encodingOptions(handle: not null QImageEncoderSettingsH) return QVariantMapH;
 pragma Import(C,QImageEncoderSettings_encodingOptions, "QImageEncoderSettings_encodingOptions");
 
 procedure QImageEncoderSettings_setEncodingOption(handle: not null QImageEncoderSettingsH; option:QStringH; value:QVariantH);
 pragma Import(C,QImageEncoderSettings_setEncodingOption, "QImageEncoderSettings_setEncodingOption");
 
 procedure QImageEncoderSettings_setEncodingOptions(handle: not null QImageEncoderSettingsH;options:QVariantMapH);
 pragma Import(C,QImageEncoderSettings_setEncodingOptions, "QImageEncoderSettings_setEncodingOptions");
 
 function  QImageEncoderSettings_resolution(handle: not null QImageEncoderSettingsH) return QSizeH;
 pragma Import(C,QImageEncoderSettings_resolution, "QImageEncoderSettings_resolution");
 
 procedure QImageEncoderSettings_setResolution(handle: not null QImageEncoderSettingsH;width, height:integer);
 pragma Import(C,QImageEncoderSettings_setResolution, "QImageEncoderSettings_setResolution");
 
 procedure QImageEncoderSettings_setResolution2(handle: not null QImageEncoderSettingsH; size:QSizeH);
 pragma Import(C,QImageEncoderSettings_setResolution2, "QImageEncoderSettings_setResolution2");

-----------------------------------------------------------------------------------------------------------------
 function  QImageEncoderSettings_create(otherEncoder:QImageEncoderSettingsH) return QImageEncoderSettingsH;
 procedure QImageEncoderSettings_setResolution(handle: not null QImageEncoderSettingsH; size:QSizeH);

end;
