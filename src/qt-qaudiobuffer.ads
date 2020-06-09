--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QAudioBuffer  is

 function  QAudioBuffer_create return QAudioBufferH;
 pragma Import(C,QAudioBuffer_create, "QAudioBuffer_create");
 
 function  QAudioBuffer_create2(other:QAudioBufferH) return QAudioBufferH;
 pragma Import(C,QAudioBuffer_create2, "QAudioBuffer_create2");
 
 function  QAudioBuffer_create3(data:QByteArrayH;format: QAudioFormatH;startTime : qint64 :=  -1) return QAudioBufferH;
 pragma Import(C,QAudioBuffer_create3, "QAudioBuffer_create3");
 
 function  QAudioBuffer_create4(numFrames:integer;format: QAudioFormatH;startTime : qint64 :=  -1) return QAudioBufferH;
 pragma Import(C,QAudioBuffer_create4, "QAudioBuffer_create4");
 
 procedure QAudioBuffer_destroy(handle:not null QAudioBufferH);
 pragma Import(C,QAudioBuffer_destroy, "QAudioBuffer_destroy");
 
 function  QAudioBuffer_isValid(handle:not null QAudioBufferH) return boolean;
 pragma Import(C,QAudioBuffer_isValid, "QAudioBuffer_isValid");
 
 function  QAudioBuffer_format(handle:not null QAudioBufferH) return QAudioFormatH;
 pragma Import(C,QAudioBuffer_format, "QAudioBuffer_format");
 
 function  QAudioBuffer_frameCount(handle:not null QAudioBufferH) return integer;
 pragma Import(C,QAudioBuffer_frameCount, "QAudioBuffer_frameCount");
 
 function  QAudioBuffer_sampleCount(handle:not null QAudioBufferH) return integer;
 pragma Import(C,QAudioBuffer_sampleCount, "QAudioBuffer_sampleCount");
 
 function  QAudioBuffer_byteCount(handle:not null QAudioBufferH) return integer;
 pragma Import(C,QAudioBuffer_byteCount, "QAudioBuffer_byteCount");
 
 function  QAudioBuffer_duration(handle:not null QAudioBufferH) return qint64;
 pragma Import(C,QAudioBuffer_duration, "QAudioBuffer_duration");
 
 function  QAudioBuffer_startTime(handle:not null QAudioBufferH) return qint64;
 pragma Import(C,QAudioBuffer_startTime, "QAudioBuffer_startTime");
 
 function  QAudioBuffer_constData(handle:not null QAudioBufferH) return void_Star;
 pragma Import(C,QAudioBuffer_constData, "QAudioBuffer_constData");
 
 function  QAudioBuffer_data(handle:not null QAudioBufferH) return void_Star;
 pragma Import(C,QAudioBuffer_data, "QAudioBuffer_data");
 
  function  QAudioBuffer_getBufferLevels(handle:not null QAudioBufferH) return QVectorH; -- qreal vector
 pragma Import(C,QAudioBuffer_getBufferLevels, "QAudioBuffer_getBufferLevels");
 

---------------------------------------------------
 function  QAudioBuffer_create(other:QAudioBufferH) return QAudioBufferH;
 function  QAudioBuffer_create(data:QByteArrayH;format: QAudioFormatH;startTime : qint64 :=  -1) return QAudioBufferH;
 function  QAudioBuffer_create(numFrames:integer;format: QAudioFormatH;startTime : qint64 :=  -1) return QAudioBufferH;

end;
