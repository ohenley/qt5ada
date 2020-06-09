--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QVideoSettings is

 function  QVideoSettings_create(mediaRecorder:QMediaRecorderH;parent:QWidgetH := null) return QVideoSettingsH;
 pragma Import(C,QVideoSettings_create, "QVideoSettings_create");
 
 procedure   QVideoSettings_destroy(handle: not null QVideoSettingsH);
 pragma Import(C,QVideoSettings_destroy, "QVideoSettings_destroy");
 
 function  QVideoSettings_format(handle: not null QVideoSettingsH) return QStringH ;
 pragma Import(C,QVideoSettings_format, "QVideoSettings_format");
 
 procedure QVideoSettings_setFormat(handle: not null QVideoSettingsH;format: not null QStringH);
 pragma Import(C,QVideoSettings_setFormat, "QVideoSettings_setFormat");
 
 function  QVideoSettings_audioSettings(handle: not null QVideoSettingsH) return QAudioEncoderSettingsH;
 pragma Import(C,QVideoSettings_audioSettings, "QVideoSettings_audioSettings");
 
 procedure QVideoSettings_setAudioSettings(handle: not null QVideoSettingsH;audioEndoderSettings: not null QAudioEncoderSettingsH);
 pragma Import(C,QVideoSettings_setAudioSettings, "QVideoSettings_setAudioSettings");
 
 function  QVideoSettings_videoSettings(handle: not null QVideoSettingsH) return QVideoEncoderSettingsH;
 pragma Import(C,QVideoSettings_videoSettings, "QVideoSettings_videoSettings");
 
 procedure QVideoSettings_setVideoSettings(handle: not null QVideoSettingsH; videoEndoderSettings: not null QVideoEncoderSettingsH);
 pragma Import(C,QVideoSettings_setVideoSettings, "QVideoSettings_setVideoSettings");
 
end;
