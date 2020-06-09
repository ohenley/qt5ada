--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QMediaPlaylist  is

 type QMediaPlaylist_PlaybackModes is (CurrentItemOnce, CurrentItemInLoop, Sequential, ItemsLoop, Random);
 pragma Convention(C,QMediaPlaylist_PlaybackModes);

 type QMediaPlaylist_Errors is (NoErrors, FormatErrors, FormatNotSupportedErrors, NetworkErrors, AccessDeniedErrors); 
 pragma Convention(C,QMediaPlaylist_Errors);

 type MediaContentProc is access procedure(p: QMediaContentH);
 pragma Convention(C,MediaContentProc);

 type intProc is access procedure(p: integer);
 pragma Convention(C,intProc);

 type IntIntProc is access procedure(p1,p2: integer);
 pragma Convention(C,IntIntProc);

 type voidProc is access procedure;
 pragma Convention(C,voidProc);

 function  QMediaPlaylist_create(parent:QObjectH := null) return QMediaPlaylistH ;
 pragma Import(C,QMediaPlaylist_create, "QMediaPlaylist_create");
 
 procedure QMediaPlaylist_destroy(handle: not null QMediaPlaylistH);
 pragma Import(C,QMediaPlaylist_destroy, "QMediaPlaylist_destroy");
 
 function  QMediaPlaylist_mediaObject(handle: not null QMediaPlaylistH) return QMediaObjectH;
 pragma Import(C,QMediaPlaylist_mediaObject, "QMediaPlaylist_mediaObject");
 
 function  QMediaPlaylist_playbackMode(handle: not null QMediaPlaylistH) return QMediaPlaylist_PlaybackModes;
 pragma Import(C,QMediaPlaylist_playbackMode, "QMediaPlaylist_playbackMode");
 
 procedure QMediaPlaylist_setPlaybackMode(handle: not null QMediaPlaylistH;mode:QMediaPlaylist_PlaybackModes);
 pragma Import(C,QMediaPlaylist_setPlaybackMode, "QMediaPlaylist_setPlaybackMode");
 
 function  QMediaPlaylist_currentIndex(handle: not null QMediaPlaylistH) return integer;
 pragma Import(C,QMediaPlaylist_currentIndex, "QMediaPlaylist_currentIndex");
 
 function  QMediaPlaylist_currentMedia(handle: not null QMediaPlaylistH) return QMediaContentH;
 pragma Import(C,QMediaPlaylist_currentMedia, "QMediaPlaylist_currentMedia");
 
 function  QMediaPlaylist_nextIndex(handle: not null QMediaPlaylistH; steps: integer := 1) return integer;
 pragma Import(C,QMediaPlaylist_nextIndex, "QMediaPlaylist_nextIndex");
 
 function  QMediaPlaylist_previousIndex(handle: not null QMediaPlaylistH;steps:integer := 1) return integer;
 pragma Import(C,QMediaPlaylist_previousIndex, "QMediaPlaylist_previousIndex");
 
 function  QMediaPlaylist_media(handle: not null QMediaPlaylistH;index:integer) return QMediaContentH;
 pragma Import(C,QMediaPlaylist_media, "QMediaPlaylist_media");
 
 function  QMediaPlaylist_mediaCount(handle: not null QMediaPlaylistH) return integer;
 pragma Import(C,QMediaPlaylist_mediaCount, "QMediaPlaylist_mediaCount");
 
 function  QMediaPlaylist_isEmpty(handle: not null QMediaPlaylistH) return boolean;
 pragma Import(C,QMediaPlaylist_isEmpty, "QMediaPlaylist_isEmpty");
 
 function  QMediaPlaylist_isReadOnly(handle: not null QMediaPlaylistH) return boolean;
 pragma Import(C,QMediaPlaylist_isReadOnly, "QMediaPlaylist_isReadOnly");
 
 function  QMediaPlaylist_addMedia(handle: not null QMediaPlaylistH;content:QMediaContentH) return boolean;
 pragma Import(C,QMediaPlaylist_addMedia, "QMediaPlaylist_addMedia");
 
 function  QMediaPlaylist_addMedia2(handle: not null QMediaPlaylistH;items:QOBjectListH) return boolean;
 pragma Import(C,QMediaPlaylist_addMedia2, "QMediaPlaylist_addMedia2");
 
 function  QMediaPlaylist_insertMedia(handle: not null QMediaPlaylistH;index:integer;content:QMediaContentH) return boolean;
 pragma Import(C,QMediaPlaylist_insertMedia, "QMediaPlaylist_insertMedia");
 
 function  QMediaPlaylist_insertMedia2(handle: not null QMediaPlaylistH;index:integer; items:QObjectListH) return boolean;
 pragma Import(C,QMediaPlaylist_insertMedia2, "QMediaPlaylist_insertMedia2");
 
 function  QMediaPlaylist_removeMedia(handle: not null QMediaPlaylistH; position:integer) return boolean;
 pragma Import(C,QMediaPlaylist_removeMedia, "QMediaPlaylist_removeMedia");
 
 function  QMediaPlaylist_removeMedia2(handle: not null QMediaPlaylistH;startPos,endPos:integer) return boolean;
 pragma Import(C,QMediaPlaylist_removeMedia2, "QMediaPlaylist_removeMedia2");
 
 function  QMediaPlaylist_clear(handle: not null QMediaPlaylistH) return boolean;
 pragma Import(C,QMediaPlaylist_clear, "QMediaPlaylist_clear");
 
 procedure QMediaPlaylist_load(handle: not null QMediaPlaylistH; request:QNetworkRequestH; format:zstring := Null_ZStr);
 pragma Import(C,QMediaPlaylist_load, "QMediaPlaylist_load");
 
 procedure QMediaPlaylist_load2(handle: not null QMediaPlaylistH;location:QUrlH; format:zstring := Null_ZStr);
 pragma Import(C,QMediaPlaylist_load2, "QMediaPlaylist_load2");
 
 procedure QMediaPlaylist_load3(handle: not null QMediaPlaylistH;device:QIODeviceH; format:zstring := Null_ZStr);
 pragma Import(C,QMediaPlaylist_load3, "QMediaPlaylist_load3");
 
 function  QMediaPlaylist_save(handle: not null QMediaPlaylistH;location:QUrlH; format:zstring := Null_ZStr) return boolean;
 pragma Import(C,QMediaPlaylist_save, "QMediaPlaylist_save");
 
 function  QMediaPlaylist_save2(handle: not null QMediaPlaylistH;device:QIODeviceH; format:zstring := Null_ZStr) return boolean;
 pragma Import(C,QMediaPlaylist_save2, "QMediaPlaylist_save2");
 
 function  QMediaPlaylist_error(handle: not null QMediaPlaylistH) return QMediaPlaylist_Errors;
 pragma Import(C,QMediaPlaylist_error, "QMediaPlaylist_error");
 
 function  QMediaPlaylist_errorString(handle: not null QMediaPlaylistH) return QStringH;
 pragma Import(C,QMediaPlaylist_errorString, "QMediaPlaylist_errorString");
 
 procedure QMediaPlaylist_shuffle(handle: not null QMediaPlaylistH);
 pragma Import(C,QMediaPlaylist_shuffle, "QMediaPlaylist_shuffle");
 
 procedure QMediaPlaylist_next(handle: not null QMediaPlaylistH);
 pragma Import(C,QMediaPlaylist_next, "QMediaPlaylist_next");
 
 procedure QMediaPlaylist_previous(handle: not null QMediaPlaylistH);
 pragma Import(C,QMediaPlaylist_previous, "QMediaPlaylist_previous");
 
 procedure QMediaPlaylist_setCurrentIndex(handle: not null QMediaPlaylistH;index:integer);
 pragma Import(C,QMediaPlaylist_setCurrentIndex, "QMediaPlaylist_setCurrentIndex");

 procedure QMediaPlaylist_signal_slot_currentMediaChanged(handle: not null QMediaPlaylistH;hook:MediaContentProc);
 pragma Import(C,QMediaPlaylist_signal_slot_currentMediaChanged, "QMediaPlaylist_signal_slot_currentMediaChanged");
 
 procedure QMediaPlaylist_signal_slot_playbackModeChanged(handle: not null QMediaPlaylistH;hook:intProc);
 pragma Import(C,QMediaPlaylist_signal_slot_playbackModeChanged, "QMediaPlaylist_signal_slot_playbackModeChanged");
 
 procedure QMediaPlaylist_signal_slot_currentIndexChanged(handle: not null QMediaPlaylistH;hook:intProc);
 pragma Import(C,QMediaPlaylist_signal_slot_currentIndexChanged, "QMediaPlaylist_signal_slot_currentIndexChanged");
 
 procedure QMediaPlaylist_signal_slot_loaded(handle: not null QMediaPlaylistH;hook:voidProc);
 pragma Import(C,QMediaPlaylist_signal_slot_loaded, "QMediaPlaylist_signal_slot_loaded");
 
 procedure QMediaPlaylist_signal_slot_loadFailed(handle: not null QMediaPlaylistH;hook:voidProc);
 pragma Import(C,QMediaPlaylist_signal_slot_loadFailed, "QMediaPlaylist_signal_slot_loadFailed");
 
 procedure QMediaPlaylist_signal_slot_mediaAboutToBeInserted(handle: not null QMediaPlaylistH;hook:IntIntProc);
 pragma Import(C,QMediaPlaylist_signal_slot_mediaAboutToBeInserted, "QMediaPlaylist_signal_slot_mediaAboutToBeInserted");
 
 procedure QMediaPlaylist_signal_slot_mediaAboutToBeRemoved(handle: not null QMediaPlaylistH;hook:IntIntProc);
 pragma Import(C,QMediaPlaylist_signal_slot_mediaAboutToBeRemoved, "QMediaPlaylist_signal_slot_mediaAboutToBeRemoved");
 
 procedure QMediaPlaylist_signal_slot_mediaInserted(handle: not null QMediaPlaylistH;hook:IntIntProc); 
 pragma Import(C,QMediaPlaylist_signal_slot_mediaInserted, "QMediaPlaylist_signal_slot_mediaInserted");
 
 procedure QMediaPlaylist_signal_slot_mediaRemoved(handle: not null QMediaPlaylistH;hook:IntIntProc); 
 pragma Import(C,QMediaPlaylist_signal_slot_mediaRemoved, "QMediaPlaylist_signal_slot_mediaRemoved");
 
 procedure QMediaPlaylist_signal_slot_mediaChanged(handle: not null QMediaPlaylistH;hook:IntIntProc); 
 pragma Import(C,QMediaPlaylist_signal_slot_mediaChanged, "QMediaPlaylist_signal_slot_mediaChanged");

 function  QMediaPlaylist_addMedia3(handle:not null QMediaPlaylistH;url:QUrlH) return boolean;
 pragma Import(C,QMediaPlaylist_addMedia3, "QMediaPlaylist_addMedia3");
 
 function  QMediaPlaylist_insertMedia3(handle:not null QMediaPlaylistH;index:integer;url: QUrlH) return boolean;
 pragma Import(C,QMediaPlaylist_insertMedia3, "QMediaPlaylist_insertMedia3");
 
 
----------------------------------------------------------------------------------------------------
 function  QMediaPlaylist_addMedia(handle: not null QMediaPlaylistH;items:QOBjectListH) return boolean;
 function  QMediaPlaylist_insertMedia(handle: not null QMediaPlaylistH;index:integer; items:QObjectListH) return boolean;
 function  QMediaPlaylist_removeMedia(handle: not null QMediaPlaylistH;startPos,endPos:integer) return boolean;
 procedure QMediaPlaylist_load(handle: not null QMediaPlaylistH;location:QUrlH; format:zstring := Null_ZStr);
 procedure QMediaPlaylist_load(handle: not null QMediaPlaylistH;device:QIODeviceH; format:zstring := Null_ZStr);
 function  QMediaPlaylist_save(handle: not null QMediaPlaylistH;device:QIODeviceH; format:zstring := Null_ZStr) return boolean;
 function  QMediaPlaylist_addMedia(handle:not null QMediaPlaylistH;url:QUrlH) return boolean;
 function  QMediaPlaylist_insertMedia(handle:not null QMediaPlaylistH;index:integer;url: QUrlH) return boolean;


end;
