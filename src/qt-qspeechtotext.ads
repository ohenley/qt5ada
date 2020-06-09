-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.
--

with Qt; use Qt; 
with Qt.QFile;   use Qt.QFile; 
with Qt.QString; use Qt.QString; 
with builtin;    use builtin;
package  Qt.QSpeechToText is

 type Result is (Result_Success,Result_ErrorAborted,Result_ErrorAudio,Result_ErrorNetwork,Result_NoSpeech,Result_NoMatch,Result_BadGrammar);
 pragma convention(C,Result);

 type Hypothes is record
  utterance : QStringH ;
  confidence: qreal ;
 end record;  
 pragma convention(C,Hypothes);
 type Hypothesis is access all Hypothes;

 function  QSpeechToText_create(parent: QObjectH := null) return QSpeechToTextH;
 pragma Import(C,QSpeechToText_create, "QSpeechToText_create");
 
 procedure QSpeechToText_destroy(handle:not null QSpeechToTextH);
 pragma Import(C,QSpeechToText_destroy, "QSpeechToText_destroy");
 
 procedure QSpeechToText_setUrl(url:zstring);
 pragma Import(C,QSpeechToText_setUrl, "QSpeechToText_setUrl");
 
 function  QSpeechToText_getUrl return zstring;
 pragma Import(C,QSpeechToText_getUrl, "QSpeechToText_getUrl");
 
 procedure QSpeechToText_setContentType(contentType:zstring);
 pragma Import(C,QSpeechToText_setContentType, "QSpeechToText_setContentType");
 
 function  QSpeechToText_getContentType return zstring;
 pragma Import(C,QSpeechToText_getContentType, "QSpeechToText_getContentType");
 
 procedure QSpeechToText_start(handle:not null QSpeechToTextH; flacFile : QFileH := QFile_create(s2qs("./flac/hello.flac")));
 pragma Import(C,QSpeechToText_start, "QSpeechToText_start");
 
 procedure QSpeechToText_cancel(handle:not null QSpeechToTextH);
 pragma Import(C,QSpeechToText_cancel, "QSpeechToText_cancel");
 
 function  QSpeechToText_results(handle:not null QSpeechToTextH) return QStringH;
 pragma Import(C,QSpeechToText_results, "QSpeechToText_results");

 function  QSpeechToText_debugging return QStringH;
 pragma Import(C,QSpeechToText_debugging, "QSpeechToText_debugging");
 
 type FinishedCallbackH is access procedure(res: Result; hypotheses: QObjectListH);
 pragma convention(C,FinishedCallbackH);

 procedure QSpeechToText_signal_slot_resultsChanged(handle:not null QSpeechToTextH;hook:voidCallbackH);
 pragma Import(C,QSpeechToText_signal_slot_resultsChanged, "QSpeechToText_signal_slot_resultsChanged");

 procedure QSpeechToText_signal_slot_Finished(handle:not null QSpeechToTextH;hook:FinishedCallbackH);
 pragma Import(C,QSpeechToText_signal_slot_Finished, "QSpeechToText_signal_slot_Finished");

end;
