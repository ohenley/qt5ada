--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QCameraImageSettings  is

 function  QCameraImageSettings_create( imageCapture:QCameraImageCaptureH;parent:QWidgetH  := null) return QCameraImageSettingsH;
 pragma Import(C,QCameraImageSettings_create, "QCameraImageSettings_create");
 
 procedure QCameraImageSettings_destroy(handle:not null QCameraImageSettingsH);
 pragma Import(C,QCameraImageSettings_destroy, "QCameraImageSettings_destroy");
 
 function  QCameraImageSettings_format(handle:not null QCameraImageSettingsH) return QStringH ;
 pragma Import(C,QCameraImageSettings_format, "QCameraImageSettings_format");
 
 procedure QCameraImageSettings_setFormat(handle:not null QCameraImageSettingsH ;format:QStringH);
 pragma Import(C,QCameraImageSettings_setFormat, "QCameraImageSettings_setFormat");
 
 function  QCameraImageSettings_audioSettings(handle:not null QCameraImageSettingsH) return QAudioEncoderSettingsH;
 pragma Import(C,QCameraImageSettings_audioSettings, "QCameraImageSettings_audioSettings");
 
 procedure QCameraImageSettings_setAudioSettings(handle:not null QCameraImageSettingsH;as:QAudioEncoderSettingsH);
 pragma Import(C,QCameraImageSettings_setAudioSettings, "QCameraImageSettings_setAudioSettings");
 
 function  QCameraImageSettings_imageSettings(handle:not null QCameraImageSettingsH) return QImageEncoderSettingsH;
 pragma Import(C,QCameraImageSettings_imageSettings, "QCameraImageSettings_imageSettings");
 
 procedure QCameraImageSettings_setImageSettings(handle:not null QCameraImageSettingsH;vc:QImageEncoderSettingsH);
 pragma Import(C,QCameraImageSettings_setImageSettings, "QCameraImageSettings_setImageSettings");
 

end;
