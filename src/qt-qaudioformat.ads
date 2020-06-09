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
package Qt.QAudioFormat  is
 
 type SampleType is (Unknown, SignedInt, UnSignedInt, Float);
 pragma convention(C,SampleType);

 type QAudioFormat_Endian is (BigEndian,LittleEndian); 
 pragma convention(C,QAudioFormat_Endian);

 function  QAudioFormat_create return QAudioFormatH;
 pragma Import(C,QAudioFormat_create, "QAudioFormat_create");
 
 function  QAudioFormat_create2(otherFormat:QAudioFormatH) return QAudioFormatH ;
 pragma Import(C,QAudioFormat_create2, "QAudioFormat_create2");
 
 procedure QAudioFormat_destroy(handle: not null QAudioFormatH);
 pragma Import(C,QAudioFormat_destroy, "QAudioFormat_destroy");
 
 function  QAudioFormat_isValid(handle: not null QAudioFormatH) return boolean;
 pragma Import(C,QAudioFormat_isValid, "QAudioFormat_isValid");
 
 procedure QAudioFormat_setSampleRate(handle: not null QAudioFormatH;sampleRate:integer);
 pragma Import(C,QAudioFormat_setSampleRate, "QAudioFormat_setSampleRate");
 
 function  QAudioFormat_sampleRate(handle: not null QAudioFormatH) return integer;
 pragma Import(C,QAudioFormat_sampleRate, "QAudioFormat_sampleRate");
 
 procedure QAudioFormat_setChannelCount(handle: not null QAudioFormatH;channelCount:integer);
 pragma Import(C,QAudioFormat_setChannelCount, "QAudioFormat_setChannelCount");
 
 function  QAudioFormat_channelCount(handle: not null QAudioFormatH) return integer;
 pragma Import(C,QAudioFormat_channelCount, "QAudioFormat_channelCount");
 
 procedure QAudioFormat_setSampleSize(handle: not null QAudioFormatH; sampleSize:integer);
 pragma Import(C,QAudioFormat_setSampleSize, "QAudioFormat_setSampleSize");
 
 function  QAudioFormat_sampleSize(handle: not null QAudioFormatH) return integer;
 pragma Import(C,QAudioFormat_sampleSize, "QAudioFormat_sampleSize");
 
 procedure QAudioFormat_setCodec(handle: not null QAudioFormatH;codec:QStringH);
 pragma Import(C,QAudioFormat_setCodec, "QAudioFormat_setCodec");
 
 function  QAudioFormat_codec(handle: not null QAudioFormatH) return QStringH;
 pragma Import(C,QAudioFormat_codec, "QAudioFormat_codec");
 
 procedure QAudioFormat_setByteOrder(handle: not null QAudioFormatH; byteOrder:QAudioFormat_Endian);
 pragma Import(C,QAudioFormat_setByteOrder, "QAudioFormat_setByteOrder");
 
 function  QAudioFormat_byteOrder(handle: not null QAudioFormatH) return QAudioFormat_Endian;
 pragma Import(C,QAudioFormat_byteOrder, "QAudioFormat_byteOrder");
 
 procedure QAudioFormat_setSampleType(handle: not null QAudioFormatH; sampleTp:SampleType);
 pragma Import(C,QAudioFormat_setSampleType, "QAudioFormat_setSampleType");
 
 function  QAudioFormat_sampleType(handle: not null QAudioFormatH) return SampleType;
 pragma Import(C,QAudioFormat_sampleType, "QAudioFormat_sampleType");
 
-- Helper functions 

 function  QAudioFormat_bytesForDuration(handle: not null QAudioFormatH;duration:qint64) return integer;
 pragma Import(C,QAudioFormat_bytesForDuration, "QAudioFormat_bytesForDuration");
 
 function  QAudioFormat_durationForBytes(handle: not null QAudioFormatH; byteCount:integer) return qint64;
 pragma Import(C,QAudioFormat_durationForBytes, "QAudioFormat_durationForBytes");
 
 function  QAudioFormat_bytesForFrames(handle: not null QAudioFormatH; frameCount:integer) return integer;
 pragma Import(C,QAudioFormat_bytesForFrames, "QAudioFormat_bytesForFrames");
 
 function  QAudioFormat_framesForBytes(handle: not null QAudioFormatH; byteCount:integer) return integer;
 pragma Import(C,QAudioFormat_framesForBytes, "QAudioFormat_framesForBytes");
 
 function  QAudioFormat_framesForDuration(handle: not null QAudioFormatH;duration:qint64) return integer;
 pragma Import(C,QAudioFormat_framesForDuration, "QAudioFormat_framesForDuration");
 
 function  QAudioFormat_durationForFrames(handle: not null QAudioFormatH;frameCount:integer) return qint64;
 pragma Import(C,QAudioFormat_durationForFrames, "QAudioFormat_durationForFrames");
 
 function  QAudioFormat_bytesPerFrame(handle: not null QAudioFormatH) return integer;
 pragma Import(C,QAudioFormat_bytesPerFrame, "QAudioFormat_bytesPerFrame");

 function  QAudioFormat_getMaxValue(handle: not null QAudioFormatH; data: zstring; length:qint64) return quint32;
 pragma Import(C,QAudioFormat_getMaxValue, "QAudioFormat_getMaxValue");
 function QAudioFormat_getPeakValue(handle: not null QAudioFormatH) return qreal;
 pragma Import(C,QAudioFormat_getPeakValue, "QAudioFormat_getPeakValue");
 
  function  QAudioFormat_pcmToReal(str:QStringH;bytesPerSample,channels: integer) return qreal;
 pragma Import(C,QAudioFormat_pcmToReal, "QAudioFormat_pcmToReal");
 
 function  QAudioFormat_isPCM(handle:not null QAudioFormatH) return boolean;
 pragma Import(C,QAudioFormat_isPCM, "QAudioFormat_isPCM");
 
 function  QAudioFormat_isPCMSnnLE(handle:not null QAudioFormatH) return boolean;
 pragma Import(C,QAudioFormat_isPCMSnnLE, "QAudioFormat_isPCMSnnLE");
 
-------------------------------------------------------------------------------------
 function  QAudioFormat_create(otherFormat:QAudioFormatH) return QAudioFormatH ;

end;
