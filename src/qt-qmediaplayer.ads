--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015,2020                 บ
-- บ Copyright (C) 2012,2015,2020                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

 with QT.QStringList; use Qt.QStringList;
 with Qt.QAudio;
 package Qt.QMediaPlayer is

 type QMediaPlayerState is (StoppedState, PlayingState, PausedState);
 pragma Convention(C,QMediaPlayerState); 

 type MediaStatus is (UnknownMediaStatus, NoMedia,LoadingMedia,LoadedMedia,StalledMedia,BufferingMedia,BufferedMedia,EndOfMedia,InvalidMedia);
 pragma Convention(C,MediaStatus); 

 LowLatencyFlag     : constant := 1;
 StreamPlaybackFlag : constant := 2;
 VideoSurfaceFlag   : constant := 4;

 type QMediaPlayerError is (NoError, ResourceError, FormatError, NetworkError, AccessDeniedError,ServiceMissingError,MediaIsPlaylist);
 pragma Convention(C,QMediaPlayerError); 

 type mediaContentProc is access procedure(p: QMediaContentH);
 pragma Convention(C,mediaContentProc);

 type networkConfigurationProc is access procedure(p: QNetworkConfigurationH);
 pragma Convention(C,networkConfigurationProc);

 type boolProc is access procedure(p:boolean);
 pragma Convention(C,boolProc);

 type intProc is access procedure(p:integer);
 pragma Convention(C,intProc);

 type int64Proc is access procedure(p:qint64);
 pragma Convention(C,int64Proc);

 type realProc is access procedure(p:qreal);
 pragma Convention(C,realProc);
 
 function  QMediaPlayer_create(parent:QObjectH := null;flags : integer) return QMediaPlayerH ;
 pragma Import(C,QMediaPlayer_create, "QMediaPlayer_create");
 
 function  QMediaPlayer_create2 return QMediaPlayerH ;
 pragma Import(C,QMediaPlayer_create2, "QMediaPlayer_create2");
 
 procedure QMediaPlayer_destroy(handle: not null QMediaPlayerH);
 pragma Import(C,QMediaPlayer_destroy, "QMediaPlayer_destroy");
 
 procedure QMediaPlayer_setVideoOutput(handle: not null QMediaPlayerH;videoOutput:QVideoWidgetH);
 pragma Import(C,QMediaPlayer_setVideoOutput, "QMediaPlayer_setVideoOutput");
 
 procedure QMediaPlayer_setVideoOutput2(handle: not null QMediaPlayerH;videoOutput:QGraphicsVideoItemH);
 pragma Import(C,QMediaPlayer_setVideoOutput2, "QMediaPlayer_setVideoOutput2");
 
 procedure QMediaPlayer_setVideoOutput3(handle: not null QMediaPlayerH;surface:QAbstractVideoSurfaceH);
 pragma Import(C,QMediaPlayer_setVideoOutput3, "QMediaPlayer_setVideoOutput3");
 
 function  QMediaPlayer_media(handle: not null QMediaPlayerH) return QMediaContentH;
 pragma Import(C,QMediaPlayer_media, "QMediaPlayer_media");
 
 function  QMediaPlayer_mediaStream(handle: not null QMediaPlayerH) return QIODeviceH;
 pragma Import(C,QMediaPlayer_mediaStream, "QMediaPlayer_mediaStream");
 
 function  QMediaPlayer_playlist(handle: not null QMediaPlayerH) return QMediaPlaylistH;
 pragma Import(C,QMediaPlayer_playlist, "QMediaPlayer_playlist");
 
 function  QMediaPlayer_currentMedia(handle: not null QMediaPlayerH) return QMediaContentH;
 pragma Import(C,QMediaPlayer_currentMedia, "QMediaPlayer_currentMedia");
 
 function  QMediaPlayer_state(handle: not null QMediaPlayerH) return QMediaPlayerState;
 pragma Import(C,QMediaPlayer_state, "QMediaPlayer_state");
 
 function  QMediaPlayer_mediaStatus(handle: not null QMediaPlayerH) return MediaStatus;
 pragma Import(C,QMediaPlayer_mediaStatus, "QMediaPlayer_mediaStatus");
 
 function  QMediaPlayer_duration(handle: not null QMediaPlayerH) return qint64;
 pragma Import(C,QMediaPlayer_duration, "QMediaPlayer_duration");
 
 function  QMediaPlayer_position(handle: not null QMediaPlayerH) return qint64;
 pragma Import(C,QMediaPlayer_position, "QMediaPlayer_position");
 
 function  QMediaPlayer_volume(handle: not null QMediaPlayerH) return integer;
 pragma Import(C,QMediaPlayer_volume, "QMediaPlayer_volume");
 
 function  QMediaPlayer_isMuted(handle: not null QMediaPlayerH) return boolean;
 pragma Import(C,QMediaPlayer_isMuted, "QMediaPlayer_isMuted");
 
 function  QMediaPlayer_isAudioAvailable(handle: not null QMediaPlayerH) return boolean;
 pragma Import(C,QMediaPlayer_isAudioAvailable, "QMediaPlayer_isAudioAvailable");
 
 function  QMediaPlayer_isVideoAvailable(handle: not null QMediaPlayerH) return boolean;
 pragma Import(C,QMediaPlayer_isVideoAvailable, "QMediaPlayer_isVideoAvailable");
 
 function  QMediaPlayer_bufferStatus(handle: not null QMediaPlayerH) return integer;
 pragma Import(C,QMediaPlayer_bufferStatus, "QMediaPlayer_bufferStatus");
 
 function  QMediaPlayer_isSeekable(handle: not null QMediaPlayerH) return boolean;
 pragma Import(C,QMediaPlayer_isSeekable, "QMediaPlayer_isSeekable");
 
 function  QMediaPlayer_playbackRate(handle: not null QMediaPlayerH) return qreal;
 pragma Import(C,QMediaPlayer_playbackRate, "QMediaPlayer_playbackRate");
 
 function  QMediaPlayer_error(handle: not null QMediaPlayerH) return QMediaPlayerError;
 pragma Import(C,QMediaPlayer_error, "QMediaPlayer_error");
 
 function  QMediaPlayer_errorString(handle: not null QMediaPlayerH) return QStringH;
 pragma Import(C,QMediaPlayer_errorString, "QMediaPlayer_errorString");
 
 function  QMediaPlayer_currentNetworkConfiguration(handle: not null QMediaPlayerH) return QNetworkConfigurationH;
 pragma Import(C,QMediaPlayer_currentNetworkConfiguration, "QMediaPlayer_currentNetworkConfiguration");
 
 function  QMediaPlayer_availability(handle: not null QMediaPlayerH) return integer;
 pragma Import(C,QMediaPlayer_availability, "QMediaPlayer_availability");
 
 procedure QMediaPlayer_play(handle: not null QMediaPlayerH);
 pragma Import(C,QMediaPlayer_play, "QMediaPlayer_play");
 
 procedure QMediaPlayer_pause(handle: not null QMediaPlayerH);
 pragma Import(C,QMediaPlayer_pause, "QMediaPlayer_pause");
 
 procedure QMediaPlayer_stop(handle: not null QMediaPlayerH);
 pragma Import(C,QMediaPlayer_stop, "QMediaPlayer_stop");
 
 procedure QMediaPlayer_setPosition(handle: not null QMediaPlayerH; position:qint64);
 pragma Import(C,QMediaPlayer_setPosition, "QMediaPlayer_setPosition");
 
 procedure QMediaPlayer_setVolume(handle: not null QMediaPlayerH;volume:integer);
 pragma Import(C,QMediaPlayer_setVolume, "QMediaPlayer_setVolume");
 
 procedure QMediaPlayer_setMuted(handle: not null QMediaPlayerH;isMuted: boolean);
 pragma Import(C,QMediaPlayer_setMuted, "QMediaPlayer_setMuted");
 
 procedure QMediaPlayer_setPlaybackRate(handle: not null QMediaPlayerH;rate:qreal);
 pragma Import(C,QMediaPlayer_setPlaybackRate, "QMediaPlayer_setPlaybackRate");
 
 procedure QMediaPlayer_setMedia(handle: not null QMediaPlayerH;media:QMediaContentH;stream: QIODeviceH  := null);
 pragma Import(C,QMediaPlayer_setMedia, "QMediaPlayer_setMedia");
 
 procedure QMediaPlayer_setMedia2(handle: not null QMediaPlayerH; fileName: QStringH);
 pragma Import(C,QMediaPlayer_setMedia2, "QMediaPlayer_setMedia2");

 procedure QMediaPlayer_setMedia3(handle: not null QMediaPlayerH; url: QUrlH);
 pragma Import(C,QMediaPlayer_setMedia3, "QMediaPlayer_setMedia2");

 procedure QMediaPlayer_setPlaylist(handle: not null QMediaPlayerH;playlist:QMediaPlaylistH);
 pragma Import(C,QMediaPlayer_setPlaylist, "QMediaPlayer_setPlaylist");
 
 procedure QMediaPlayer_setNetworkConfigurations(handle: not null QMediaPlayerH;configurations: QObjectListH);
 pragma Import(C,QMediaPlayer_setNetworkConfigurations, "QMediaPlayer_setNetworkConfigurations");
 
 function  QMediaPlayer_hasSupport( mimeType:QStringH;codecs: QStringListH := QStringList_create;flags:integer := 0) return integer;
 pragma Import(C,QMediaPlayer_hasSupport, "QMediaPlayer_hasSupport");
 
 function  QMediaPlayer_supportedMimeTypes(flags:integer := 0) return QStringListH;
 pragma Import(C,QMediaPlayer_supportedMimeTypes, "QMediaPlayer_supportedMimeTypes");

 function  QMediaPlayer_bind(handle: not null QMediaPlayerH;object:QObjectH) return boolean;
 pragma Import(C,QMediaPlayer_bind, "QMediaPlayer_bind");
 
 procedure QMediaPlayer_unbind(handle: not null QMediaPlayerH;object:QObjectH);
 pragma Import(C,QMediaPlayer_unbind, "QMediaPlayer_unbind");
 
 procedure QMediaPlayer_signal_slot_mediaChanged(handle:QMediaPlayerH; hook:mediaContentProc);
 pragma Import(C,QMediaPlayer_signal_slot_mediaChanged, "QMediaPlayer_signal_slot_mediaChanged");
 
 procedure QMediaPlayer_signal_slot_currentMediaChanged(handle:QMediaPlayerH; hook:mediaContentProc);
 pragma Import(C,QMediaPlayer_signal_slot_currentMediaChanged, "QMediaPlayer_signal_slot_currentMediaChanged");
 
 procedure QMediaPlayer_signal_slot_networkConfigurationChanged(handle:QMediaPlayerH; hook:networkConfigurationProc);
 pragma Import(C,QMediaPlayer_signal_slot_networkConfigurationChanged, "QMediaPlayer_signal_slot_networkConfigurationChanged");
 
 procedure QMediaPlayer_signal_slot_mutedChanged(handle: not null QMediaPlayerH; hook:boolProc);
 pragma Import(C,QMediaPlayer_signal_slot_mutedChanged, "QMediaPlayer_signal_slot_mutedChanged");
 
 procedure QMediaPlayer_signal_slot_audioAvailableChanged(handle: not null QMediaPlayerH; hook:boolProc);
 pragma Import(C,QMediaPlayer_signal_slot_audioAvailableChanged, "QMediaPlayer_signal_slot_audioAvailableChanged");
 
 procedure QMediaPlayer_signal_slot_videoAvailableChanged(handle: not null QMediaPlayerH; hook:boolProc);
 pragma Import(C,QMediaPlayer_signal_slot_videoAvailableChanged, "QMediaPlayer_signal_slot_videoAvailableChanged");
 
 procedure QMediaPlayer_signal_slot_seekableChanged(handle: not null QMediaPlayerH; hook:boolProc);
 pragma Import(C,QMediaPlayer_signal_slot_seekableChanged, "QMediaPlayer_signal_slot_seekableChanged");
 
 procedure QMediaPlayer_signal_slot_stateChanged(handle: not null QMediaPlayerH; hook:intProc);
 pragma Import(C,QMediaPlayer_signal_slot_stateChanged, "QMediaPlayer_signal_slot_stateChanged");
 
 procedure QMediaPlayer_signal_slot_mediaStatusChanged(handle: not null QMediaPlayerH; hook:intProc);
 pragma Import(C,QMediaPlayer_signal_slot_mediaStatusChanged, "QMediaPlayer_signal_slot_mediaStatusChanged");
 
 procedure QMediaPlayer_signal_slot_volumeChanged(handle: not null QMediaPlayerH; hook:intProc);
 pragma Import(C,QMediaPlayer_signal_slot_volumeChanged, "QMediaPlayer_signal_slot_volumeChanged");
 
 procedure QMediaPlayer_signal_slot_bufferStatusChanged(handle: not null QMediaPlayerH; hook:intProc);
 pragma Import(C,QMediaPlayer_signal_slot_bufferStatusChanged, "QMediaPlayer_signal_slot_bufferStatusChanged");
 
 procedure QMediaPlayer_signal_slot_error(handle: not null QMediaPlayerH; hook:intProc);
 pragma Import(C,QMediaPlayer_signal_slot_error, "QMediaPlayer_signal_slot_error");
 
 procedure QMediaPlayer_signal_slot_durationChanged(handle: not null QMediaPlayerH; hook:int64Proc);
 pragma Import(C,QMediaPlayer_signal_slot_durationChanged, "QMediaPlayer_signal_slot_durationChanged");
 
 procedure QMediaPlayer_signal_slot_positionChanged(handle: not null QMediaPlayerH; hook:int64Proc);
 pragma Import(C,QMediaPlayer_signal_slot_positionChanged, "QMediaPlayer_signal_slot_positionChanged");
 
 procedure QMediaPlayer_signal_slot_playbackRateChanged(handle: not null QMediaPlayerH; hook:realProc);
 pragma Import(C,QMediaPlayer_signal_slot_playbackRateChanged, "QMediaPlayer_signal_slot_playbackRateChanged");

 function  QMediaPlayer_audioRole(handle:not null QMediaPlayerH) return Qt.QAudio.Role;
 pragma Import(C,QMediaPlayer_audioRole, "QMediaPlayer_audioRole");
 
 procedure QMediaPlayer_setAudioRole(handle:not null QMediaPlayerH; audioRole:Qt.QAudio.Role);
 pragma Import(C,QMediaPlayer_setAudioRole, "QMediaPlayer_setAudioRole");
 
 function  QMediaPlayer_supportedAudioRoles(handle:not null QMediaPlayerH) return QIntListH;
 pragma Import(C,QMediaPlayer_supportedAudioRoles, "QMediaPlayer_supportedAudioRoles");
 
 procedure QMediaPlayer_signal_slot_audioRoleChanged(handle:not null QMediaPlayerH;hook: intCallbackH);
 pragma Import(C,QMediaPlayer_signal_slot_audioRoleChanged, "QMediaPlayer_signal_slot_audioRoleChanged");
 
 function  QMediaPlayer_customAudioRole(handle:not null QMediaPlayerH) return QStringH;
 pragma Import(C,QMediaPlayer_customAudioRole, "QMediaPlayer_customAudioRole");
 
 procedure QMediaPlayer_setCustomAudioRole(handle:not null QMediaPlayerH;audioRole:QStringH);
 pragma Import(C,QMediaPlayer_setCustomAudioRole, "QMediaPlayer_setCustomAudioRole");
 
 function  QMediaPlayer_supportedCustomAudioRoles(handle:not null QMediaPlayerH) return QStringListH;
 pragma Import(C,QMediaPlayer_supportedCustomAudioRoles, "QMediaPlayer_supportedCustomAudioRoles");
 
 procedure QMediaPlayer_signal_slot_customAudioRoleChanged(handle:not null QMediaPlayerH;hook: QStringcallbackH);
 pragma Import(C,QMediaPlayer_signal_slot_customAudioRoleChanged, "QMediaPlayer_signal_slot_customAudioRoleChanged");
 

-----------------------------------------------------------------------------------------------
 function  QMediaPlayer_create return QMediaPlayerH ;
 procedure QMediaPlayer_setVideoOutput(handle:QMediaPlayerH;videoOutput:QGraphicsVideoItemH);
 procedure QMediaPlayer_setVideoOutput(handle:QMediaPlayerH;surface:QAbstractVideoSurfaceH);
 procedure QMediaPlayer_setMedia(handle: not null QMediaPlayerH; fileName: QStringH);
 procedure QMediaPlayer_setMedia(handle: not null QMediaPlayerH; url: QUrlH);

end;
