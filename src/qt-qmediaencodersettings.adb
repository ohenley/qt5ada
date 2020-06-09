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

package body Qt.QMediaEncoderSettings is

 function  QAudioEncoderSettings_create(otherEncoder:QAudioEncoderSettingsH) return QAudioEncoderSettingsH is
 begin
   return  QAudioEncoderSettings_create2(otherEncoder);
 end;

 function  QVideoEncoderSettings_create(otherEncoder:QVideoEncoderSettingsH) return QVideoEncoderSettingsH is
 begin
   return  QVideoEncoderSettings_create2(otherEncoder);
 end;

 procedure QVideoEncoderSettings_setResolution(handle: not null QVideoEncoderSettingsH; size:QSizeH) is
 begin
  QVideoEncoderSettings_setResolution2(handle,size);
 end;

 function  QImageEncoderSettings_create(otherEncoder:QImageEncoderSettingsH) return QImageEncoderSettingsH is
 begin
   return  QImageEncoderSettings_create2(otherEncoder);
 end;

 procedure QImageEncoderSettings_setResolution(handle: not null QImageEncoderSettingsH; size:QSizeH) is
 begin
  QImageEncoderSettings_setResolution2(handle,size);
 end;

end;
