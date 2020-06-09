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

package body Qt.QAudioInput  is

 function  QAudioInput_create(audioDeviceInfo:QAudioDeviceInfoH;format:QAudioFormatH := QAudioFormat_create; parent:QObjectH  := null) return QAudioInputH is
 begin
  return  QAudioInput_create2(audioDeviceInfo,format,parent);
 end;

 function  QAudioInput_start(handle: not null QAudioInputH) return QIODeviceH is
 begin
   return  QAudioInput_start2(handle);
 end;

end;
