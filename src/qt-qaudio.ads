--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015,2016                 บ
-- บ Copyright (C) 2012,2015,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QAudio  is

 type  Error is (NoError, OpenError, IOError, UnderrunError, FatalError);
 pragma convention(C,Error);

 type  State is (ActiveState, SuspendedState, StoppedState, IdleState);
 pragma convention(C,State);

 type  Mode is (AudioInput, AudioOutput);
 pragma convention(C,Mode);

 type Role is (UnknownRole,MusicRole,VideoRole,VoiceCommunicationRole,AlarmRole,
        NotificationRole,RingtoneRole,AccessibilityRole,SonificationRole,GameRole);
 pragma convention(C,Role);
       
 type VolumeScale is (LinearVolumeScale,CubicVolumeScale,LogarithmicVolumeScale,DecibelVolumeScale);
 pragma convention(C,VolumeScale);
 
 function  QAudio_convertVolume(volume:qreal;fromFormat,toFormat: VolumeScale) return qreal;
 pragma Import(C,QAudio_convertVolume, "QAudio_convertVolume");

end;
