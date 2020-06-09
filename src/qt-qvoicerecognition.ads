--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt; use Qt;
package Qt.QVoiceRecognition is
  
 type QVoiceRecognitionH is new QObjectH; 
 
 type config_rec is  null record;
 type config is access all config_rec;
 
 type psDecoder_rec is  null record;
 type psDecoder is access all psDecoder_rec;
 
 type audioRecord_rec is  null record;
 type audioRecord is access all audioRecord_rec;
  
 procedure QVoiceRecognition_Destroy;
 pragma Import(C,QVoiceRecognition_Destroy, "QVoiceRecognition_Destroy");
 
 procedure QVoiceRecognition_deleteLater;
 pragma Import(C,QVoiceRecognition_deleteLater, "QVoiceRecognition_deleteLater");
 
 function  QVoiceRecognition_Initialize(audioModelPath:QStringH;langModelFile: QStringH;dictionary: QStringH;deviceName: QStringH;sampleRate: integer) return boolean;
 pragma Import(C,QVoiceRecognition_Initialize, "QVoiceRecognition_Initialize");
 
 function  QVoiceRecognition_IsInitialized return boolean;
 pragma Import(C,QVoiceRecognition_IsInitialized, "QVoiceRecognition_IsInitialized");
 
 function  QVoiceRecognition_errlevel return integer;
 pragma Import(C,QVoiceRecognition_errlevel, "QVoiceRecognition_errlevel");
 
 function  QVoiceRecognition_Recognize return QStringH;
 pragma Import(C,QVoiceRecognition_Recognize, "QVoiceRecognition_Recognize");
 
 function QVoiceRecognition_futureRecognize return QStringH;
 pragma Import(C,QVoiceRecognition_futureRecognize,"QVoiceRecognition_futureRecognize");
 
 function  QVoiceRecognition_initWatcher return QFutureWatcherH;
 pragma Import(C,QVoiceRecognition_initWatcher, "QVoiceRecognition_initWatcher");
 
 function  QVoiceRecognition_recognizeWatcher return QFutureWatcherH;
 pragma Import(C,QVoiceRecognition_recognizeWatcher, "QVoiceRecognition_recognizeWatcher");
 
  function  QVoiceRecognition_config(audioModelPath,langModelFile,dictionaryFile,logFile:QStringH) return config;
 pragma Import(C,QVoiceRecognition_config, "QVoiceRecognition_config");
 
 function  QVoiceRecognition_psInit(configure:config) return psDecoder;
 pragma Import(C,QVoiceRecognition_psInit, "QVoiceRecognition_psInit");
 
 function  QVoiceRecognition_audioInit(deviceName:QStringH;sampleRate:integer) return audioRecord;
 pragma Import(C,QVoiceRecognition_audioInit, "QVoiceRecognition_audioInit");
 
 procedure QVoiceRecognition_audioClose(ad:audioRecord);
 pragma Import(C,QVoiceRecognition_audioClose,"QVoiceRecognition_audioClose"); 
 
 function  QVoiceRecognition_recognizeFromMicrophone(decoder : psDecoder; ad : audioRecord) return QStringH;
 pragma Import(C,QVoiceRecognition_recognizeFromMicrophone,"QVoiceRecognition_recognizeFromMicrophone");
  
end;
