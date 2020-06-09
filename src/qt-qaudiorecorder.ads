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

package Qt.QAudioRecorder is

 function  QAudioRecorder_create(parent:QObjectH := null) return QAudioRecorderH ;
 pragma Import(C,QAudioRecorder_create, "QAudioRecorder_create");
 
 procedure QAudioRecorder_destroy(handle: not null QAudioRecorderH);
 pragma Import(C,QAudioRecorder_destroy, "QAudioRecorder_destroy");
 
 function  QAudioRecorder_audioInputs(handle: not null QAudioRecorderH) return QStringListH;
 pragma Import(C,QAudioRecorder_audioInputs, "QAudioRecorder_audioInputs");
 
 function  QAudioRecorder_defaultAudioInput(handle: not null QAudioRecorderH) return QStringH;
 pragma Import(C,QAudioRecorder_defaultAudioInput, "QAudioRecorder_defaultAudioInput");
 
 function  QAudioRecorder_audioInputDescription(handle: not null QAudioRecorderH;name: not null QStringH) return QStringH;
 pragma Import(C,QAudioRecorder_audioInputDescription, "QAudioRecorder_audioInputDescription");
 
 function  QAudioRecorder_audioInput(handle: not null QAudioRecorderH) return QStringH;
 pragma Import(C,QAudioRecorder_audioInput, "QAudioRecorder_audioInput");
 
 procedure QAudioRecorder_setAudioInput(handle: not null QAudioRecorderH;name: not null QStringH);
 pragma Import(C,QAudioRecorder_setAudioInput, "QAudioRecorder_setAudioInput");

 procedure QAudioRecorder_signal_slot_audioInputChanged(handle: not null QAudioRecorderH;hook:QStringCallbackH);
 pragma Import(C,QAudioRecorder_signal_slot_audioInputChanged, "QAudioRecorder_signal_slot_audioInputChanged");
 
 procedure QAudioRecorder_signal_slot_availableAudioInputsChanged(handle: not null QAudioRecorderH;hook: VoidCallbackH);
 pragma Import(C,QAudioRecorder_signal_slot_availableAudioInputsChanged, "QAudioRecorder_signal_slot_availableAudioInputsChanged");

 procedure QAudioRecorder_setDefaultSettings(handle:not null QAudioRecorderH;fileName:QStringH);
 pragma Import(C,QAudioRecorder_setDefaultSettings, "QAudioRecorder_setDefaultSettings");
 
 
 function  QAudioRecorder_audioDeviceBox(handle: not null QAudioRecorderH) return QComboBoxH;
end;
