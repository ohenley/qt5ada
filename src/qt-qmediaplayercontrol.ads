--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

 with Qt.QMediaPlayer; use Qt.QMediaPlayer;
 package Qt.QMediaPlayerControl is

 type MediaTimeRangeProc is access procedure(p: QMediaTimeRangeH);
 pragma Convention(C,MediaTimeRangeProc);

 procedure QMediaPlayerControl_destroy(handle:QMediaPlayerControlH);
 pragma Import(C,QMediaPlayerControl_destroy, "QMediaPlayerControl_destroy");
 
 function  QMediaPlayerControl_state(handle:QMediaPlayerControlH) return Qt.QMediaPlayer.QMediaPlayerState;
 pragma Import(C,QMediaPlayerControl_state, "QMediaPlayerControl_state");
 
 function  QMediaPlayerControl_mediaStatus(handle:QMediaPlayerControlH) return Qt.QMediaPlayer.MediaStatus;
 pragma Import(C,QMediaPlayerControl_mediaStatus, "QMediaPlayerControl_mediaStatus");
 
 function  QMediaPlayerControl_duration(handle:QMediaPlayerControlH) return qint64;
 pragma Import(C,QMediaPlayerControl_duration, "QMediaPlayerControl_duration");
 
 function  QMediaPlayerControl_position(handle:QMediaPlayerControlH) return qint64;
 pragma Import(C,QMediaPlayerControl_position, "QMediaPlayerControl_position");
 
 procedure QMediaPlayerControl_setPosition(handle:QMediaPlayerControlH;position:qint64);
 pragma Import(C,QMediaPlayerControl_setPosition, "QMediaPlayerControl_setPosition");
 
 function  QMediaPlayerControl_volume(handle:QMediaPlayerControlH) return integer;
 pragma Import(C,QMediaPlayerControl_volume, "QMediaPlayerControl_volume");
 
 procedure QMediaPlayerControl_setVolume(handle:QMediaPlayerControlH; volume:integer);
 pragma Import(C,QMediaPlayerControl_setVolume, "QMediaPlayerControl_setVolume");
 
 function  QMediaPlayerControl_isMuted(handle:QMediaPlayerControlH) return boolean;
 pragma Import(C,QMediaPlayerControl_isMuted, "QMediaPlayerControl_isMuted");
 
 procedure QMediaPlayerControl_setMuted(handle:QMediaPlayerControlH; isMuted:boolean);
 pragma Import(C,QMediaPlayerControl_setMuted, "QMediaPlayerControl_setMuted");
 
 function  QMediaPlayerControl_bufferStatus(handle:QMediaPlayerControlH) return integer;
 pragma Import(C,QMediaPlayerControl_bufferStatus, "QMediaPlayerControl_bufferStatus");
 
 function  QMediaPlayerControl_isAudioAvailable(handle:QMediaPlayerControlH) return boolean;
 pragma Import(C,QMediaPlayerControl_isAudioAvailable, "QMediaPlayerControl_isAudioAvailable");
 
 function  QMediaPlayerControl_isVideoAvailable(handle:QMediaPlayerControlH) return boolean;
 pragma Import(C,QMediaPlayerControl_isVideoAvailable, "QMediaPlayerControl_isVideoAvailable");
 
 function  QMediaPlayerControl_isSeekable(handle:QMediaPlayerControlH) return boolean;
 pragma Import(C,QMediaPlayerControl_isSeekable, "QMediaPlayerControl_isSeekable");
 
 function  QMediaPlayerControl_availablePlaybackRanges(handle:QMediaPlayerControlH) return QMediaTimeRangeH;
 pragma Import(C,QMediaPlayerControl_availablePlaybackRanges, "QMediaPlayerControl_availablePlaybackRanges");
 
 function  QMediaPlayerControl_playbackRate(handle:QMediaPlayerControlH) return qreal;
 pragma Import(C,QMediaPlayerControl_playbackRate, "QMediaPlayerControl_playbackRate");
 
 procedure QMediaPlayerControl_setPlaybackRate(handle:QMediaPlayerControlH;rate:qreal);
 pragma Import(C,QMediaPlayerControl_setPlaybackRate, "QMediaPlayerControl_setPlaybackRate");
 
 function  QMediaPlayerControl_media(handle:QMediaPlayerControlH) return QMediaContentH;
 pragma Import(C,QMediaPlayerControl_media, "QMediaPlayerControl_media");
 
 function  QMediaPlayerControl_mediaStream(handle:QMediaPlayerControlH) return QIODeviceH;
 pragma Import(C,QMediaPlayerControl_mediaStream, "QMediaPlayerControl_mediaStream");
 
 procedure QMediaPlayerControl_setMedia(handle:QMediaPlayerControlH;media:QMediaContentH;stream: QIODeviceH);
 pragma Import(C,QMediaPlayerControl_setMedia, "QMediaPlayerControl_setMedia");
 
 procedure QMediaPlayerControl_play(handle:QMediaPlayerControlH);
 pragma Import(C,QMediaPlayerControl_play, "QMediaPlayerControl_play");
 
 procedure QMediaPlayerControl_pause(handle:QMediaPlayerControlH);
 pragma Import(C,QMediaPlayerControl_pause, "QMediaPlayerControl_pause");
 
 procedure QMediaPlayerControl_stop(handle:QMediaPlayerControlH);
 pragma Import(C,QMediaPlayerControl_stop, "QMediaPlayerControl_stop");

 procedure QMediaPlayerControl_signal_slot_mediaChanged(handle: not null QMediaPlayerControlH; hook:MediaContentProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_mediaChanged, "QMediaPlayerControl_signal_slot_mediaChanged");
 
 procedure QMediaPlayerControl_signal_slot_mutedChanged(handle: not null QMediaPlayerControlH; hook:boolProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_mutedChanged, "QMediaPlayerControl_signal_slot_mutedChanged");
 
 procedure QMediaPlayerControl_signal_slot_audioAvailableChanged(handle: not null QMediaPlayerControlH; hook:boolProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_audioAvailableChanged, "QMediaPlayerControl_signal_slot_audioAvailableChanged");
 
 procedure QMediaPlayerControl_signal_slot_videoAvailableChanged(handle: not null QMediaPlayerControlH; hook:boolProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_videoAvailableChanged, "QMediaPlayerControl_signal_slot_videoAvailableChanged");
 
 procedure QMediaPlayerControl_signal_slot_seekableChanged(handle: not null QMediaPlayerControlH; hook:boolProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_seekableChanged, "QMediaPlayerControl_signal_slot_seekableChanged");
 
 procedure QMediaPlayerControl_signal_slot_stateChanged(handle: not null QMediaPlayerControlH; hook:intProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_stateChanged, "QMediaPlayerControl_signal_slot_stateChanged");
 
 procedure QMediaPlayerControl_signal_slot_mediaStatusChanged(handle: not null QMediaPlayerControlH; hook:intProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_mediaStatusChanged, "QMediaPlayerControl_signal_slot_mediaStatusChanged");
 
 procedure QMediaPlayerControl_signal_slot_volumeChanged(handle: not null QMediaPlayerControlH; hook:intProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_volumeChanged, "QMediaPlayerControl_signal_slot_volumeChanged");
 
 procedure QMediaPlayerControl_signal_slot_bufferStatusChanged(handle: not null QMediaPlayerControlH; hook:intProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_bufferStatusChanged, "QMediaPlayerControl_signal_slot_bufferStatusChanged");
 
 procedure QMediaPlayerControl_signal_slot_error(handle: not null QMediaPlayerControlH; hook:intProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_error, "QMediaPlayerControl_signal_slot_error");
 
 procedure QMediaPlayerControl_signal_slot_durationChanged(handle: not null QMediaPlayerControlH; hook:int64Proc);
 pragma Import(C,QMediaPlayerControl_signal_slot_durationChanged, "QMediaPlayerControl_signal_slot_durationChanged");
 
 procedure QMediaPlayerControl_signal_slot_positionChanged(handle: not null QMediaPlayerControlH; hook:int64Proc);
 pragma Import(C,QMediaPlayerControl_signal_slot_positionChanged, "QMediaPlayerControl_signal_slot_positionChanged");
 
 procedure QMediaPlayerControl_signal_slot_playbackRateChanged(handle: not null QMediaPlayerControlH; hook:realProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_playbackRateChanged, "QMediaPlayerControl_signal_slot_playbackRateChanged");
 
 procedure QMediaPlayerControl_signal_slot_availablePlaybackRangesChanged(handle: not null QMediaPlayerControlH; hook:MediaTimeRangeProc);
 pragma Import(C,QMediaPlayerControl_signal_slot_availablePlaybackRangesChanged, "QMediaPlayerControl_signal_slot_availablePlaybackRangesChanged");
 
end;
