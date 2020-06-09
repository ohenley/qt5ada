-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QTextToSpeech is

 type State is (Ready,Speaking,Paused,BackendError);
 pragma convention(C,State);

 function  QTextToSpeech_create(aprent:QObjectH := null) return QTextToSpeechH;
 pragma Import(C,QTextToSpeech_create, "QTextToSpeech_create");
 
 function  QTextToSpeech_create2(engine:QStringH ;parent : QObjectH :=  null) return QTextToSpeechH;
 pragma Import(C,QTextToSpeech_create2, "QTextToSpeech_create2");
 
 procedure QTextToSpeech_destroy(handle:not null QTextToSpeechH);
 pragma Import(C,QTextToSpeech_destroy, "QTextToSpeech_destroy");
 
 function  QTextToSpeech_state(handle:not null QTextToSpeechH) return State;
 pragma Import(C,QTextToSpeech_state, "QTextToSpeech_state");
 
 function  QTextToSpeech_availableLocales(handle:not null QTextToSpeechH) return QObjectVectorH;
 pragma Import(C,QTextToSpeech_availableLocales, "QTextToSpeech_availableLocales");
 
 function  QTextToSpeech_locale(handle:not null QTextToSpeechH) return QLocaleH;
 pragma Import(C,QTextToSpeech_locale, "QTextToSpeech_locale");
 
 function  QTextToSpeech_voice(handle:not null QTextToSpeechH) return QVoiceH;
 pragma Import(C,QTextToSpeech_voice, "QTextToSpeech_voice");
 
 function  QTextToSpeech_availableVoices(handle:not null QTextToSpeechH) return QObjectVectorH;
 pragma Import(C,QTextToSpeech_availableVoices, "QTextToSpeech_availableVoices");
 
 function  QTextToSpeech_rate(handle:not null QTextToSpeechH) return qreal;
 pragma Import(C,QTextToSpeech_rate, "QTextToSpeech_rate");
 
 function  QTextToSpeech_pitch(handle:not null QTextToSpeechH) return qreal;
 pragma Import(C,QTextToSpeech_pitch, "QTextToSpeech_pitch");
 
 function  QTextToSpeech_volume(handle:not null QTextToSpeechH) return qreal;
 pragma Import(C,QTextToSpeech_volume, "QTextToSpeech_volume");
 
 procedure QTextToSpeech_say(handle:not null QTextToSpeechH ;text:QStringH);
 pragma Import(C,QTextToSpeech_say, "QTextToSpeech_say");
 
 procedure QTextToSpeech_stop(handle:not null QTextToSpeechH);
 pragma Import(C,QTextToSpeech_stop, "QTextToSpeech_stop");
 
 procedure QTextToSpeech_pause(handle:not null QTextToSpeechH);
 pragma Import(C,QTextToSpeech_pause, "QTextToSpeech_pause");
 
 procedure QTextToSpeech_resume(handle:not null QTextToSpeechH);
 pragma Import(C,QTextToSpeech_resume, "QTextToSpeech_resume");
 
 procedure QTextToSpeech_setLocale(handle:not null QTextToSpeechH ;locale:QLocaleH);
 pragma Import(C,QTextToSpeech_setLocale, "QTextToSpeech_setLocale");
 
 procedure QTextToSpeech_setRate(handle:not null QTextToSpeechH;rate:qreal);
 pragma Import(C,QTextToSpeech_setRate, "QTextToSpeech_setRate");
 
 procedure QTextToSpeech_setPitch(handle:not null QTextToSpeechH;pitch:qreal);
 pragma Import(C,QTextToSpeech_setPitch, "QTextToSpeech_setPitch");
 
 procedure QTextToSpeech_setVolume(handle:not null QTextToSpeechH;volume:qreal);
 pragma Import(C,QTextToSpeech_setVolume, "QTextToSpeech_setVolume");
 
 procedure QTextToSpeech_setVoice(handle:not null QTextToSpeechH;voice:QVoiceH);
 pragma Import(C,QTextToSpeech_setVoice, "QTextToSpeech_setVoice");
 
 function  QTextToSpeech_availableEngines return QStringListH;
 pragma Import(C,QTextToSpeech_availableEngines, "QTextToSpeech_availableEngines");
 
 procedure QTextToSpeech_setVoiceFromAvailableVoices(handle:not null QTextToSpeechH;index:integer);
 pragma Import(C,QTextToSpeech_setVoiceFromAvailableVoices, "QTextToSpeech_setVoiceFromAvailableVoices");
 
 function  QTextToSpeech_voiceAt(handle:not null QTextToSpeechH;index:integer) return QVoiceH;
 pragma Import(C,QTextToSpeech_voiceAt, "QTextToSpeech_voiceAt");
 

 type localeCallbackH is access procedure(locale:QLocaleH);
 pragma convention(C,localeCallbackH);
 
 type voiceCallbackH is access procedure(voice:QVoiceH);
 pragma convention(C,voiceCallbackH);

 type stateCallbackH is access procedure(state:Qt.QTextToSpeech.State);
 pragma convention(C,stateCallbackH);
 
 procedure QTextToSpeech_signal_slot_stateChanged(handle:not null QTextToSpeechH;callback:stateCallbackH);
 pragma Import(C,QTextToSpeech_signal_slot_stateChanged, "QTextToSpeech_signal_slot_stateChanged");
 
 procedure QTextToSpeech_signal_slot_localeChanged(handle:not null QTextToSpeechH;callback:localeCallbackH);
 pragma Import(C,QTextToSpeech_signal_slot_localeChanged, "QTextToSpeech_signal_slot_localeChanged");
 
 procedure QTextToSpeech_signal_slot_rateChanged(handle:not null QTextToSpeechH;callback:qrealCallbackH); 
 pragma Import(C,QTextToSpeech_signal_slot_rateChanged, "QTextToSpeech_signal_slot_rateChanged");
 
 procedure QTextToSpeech_signal_slot_pitchChanged(handle:not null QTextToSpeechH;callback:qrealCallbackH);
 pragma Import(C,QTextToSpeech_signal_slot_pitchChanged, "QTextToSpeech_signal_slot_pitchChanged");
 
 procedure QTextToSpeech_signal_slot_volumeChanged(handle:not null QTextToSpeechH;callback:intCallbackH);
 pragma Import(C,QTextToSpeech_signal_slot_volumeChanged, "QTextToSpeech_signal_slot_volumeChanged");
 
 procedure QTextToSpeech_signal_slot_voiceChanged(handle:not null QTextToSpeechH;callback:voiceCallbackH);
 pragma Import(C,QTextToSpeech_signal_slot_voiceChanged, "QTextToSpeech_signal_slot_voiceChanged");
 
 function  QTextToSpeech_voicesCount(handle:not null QTextToSpeechH) return integer;
 pragma Import(C,QTextToSpeech_voicesCount, "QTextToSpeech_voicesCount");
 
 function  QTextToSpeech_create(engine:QStringH ;parent : QObjectH :=  null) return QTextToSpeechH;

end;
