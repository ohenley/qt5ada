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

with Qt.QString; use Qt.QString;
package Qt.QMediaRecorder is

 type State is (StoppedState,RecordingState,PausedState);
 pragma Convention(C,State);

 type Status is (UnavailableStatus,UnloadedStatus,LoadingStatus,LoadedStatus,StartingStatus,RecordingStatus,PausedStatus,FinalizingStatus);
 pragma Convention(C,Status);

 type Error  is (NoError,ResourceError,FormatError,OutOfSpaceError);
 pragma Convention(C,Error);
 
 type voidProc          is access procedure;
 pragma Convention(C,voidProc);

 type IntProc           is access procedure(p:integer);
 pragma Convention(C,IntProc);

 type Int64Proc         is access procedure(p:qint64);
 pragma Convention(C,Int64Proc);

 type BoolProc          is access procedure(p:boolean);
 pragma Convention(C,BoolProc);

 type RealProc          is access procedure(p:qreal);
 pragma Convention(C,RealProc);

 type UrlProc           is access procedure(p:QUrlH);
 pragma Convention(C,UrlProc);

 type StringVariantProc is access procedure(p1:QStringH;p2:QVariantH);
 pragma Convention(C,StringVariantProc);


 function  QMediaRecorder_create( mediaObject:QMediaObjectH;parent :QObjectH := null) return QMediaRecorderH ;
 pragma Import(C,QMediaRecorder_create, "QMediaRecorder_create");
 
 procedure QMediaRecorder_destroy(handle: not null QMediaRecorderH);
 pragma Import(C,QMediaRecorder_destroy, "QMediaRecorder_destroy");
 
 function  QMediaRecorder_mediaObject(handle: not null QMediaRecorderH) return QMediaObjectH;
 pragma Import(C,QMediaRecorder_mediaObject, "QMediaRecorder_mediaObject");
 
 function  QMediaRecorder_isAvailable(handle: not null QMediaRecorderH) return boolean;
 pragma Import(C,QMediaRecorder_isAvailable, "QMediaRecorder_isAvailable");
 
 function  QMediaRecorder_availability(handle: not null QMediaRecorderH) return integer;
 pragma Import(C,QMediaRecorder_availability, "QMediaRecorder_availability");
 
 function  QMediaRecorder_outputLocation(handle: not null QMediaRecorderH) return QUrlH;
 pragma Import(C,QMediaRecorder_outputLocation, "QMediaRecorder_outputLocation");
 
 function  QMediaRecorder_setOutputLocation(handle: not null QMediaRecorderH; location:QUrlH) return boolean;
 pragma Import(C,QMediaRecorder_setOutputLocation, "QMediaRecorder_setOutputLocation");
 
 function  QMediaRecorder_actualLocation(handle: not null QMediaRecorderH) return QUrlH;
 pragma Import(C,QMediaRecorder_actualLocation, "QMediaRecorder_actualLocation");
 
 function  QMediaRecorder_state(handle: not null QMediaRecorderH) return State;
 pragma Import(C,QMediaRecorder_state, "QMediaRecorder_state");
 
 function  QMediaRecorder_status(handle: not null QMediaRecorderH) return Status;
 pragma Import(C,QMediaRecorder_status, "QMediaRecorder_status");
 
 function  QMediaRecorder_error(handle: not null QMediaRecorderH) return Error;
 pragma Import(C,QMediaRecorder_error, "QMediaRecorder_error");
 
 function  QMediaRecorder_errorString(handle: not null QMediaRecorderH) return QStringH;
 pragma Import(C,QMediaRecorder_errorString, "QMediaRecorder_errorString");
 
 function  QMediaRecorder_duration(handle: not null QMediaRecorderH) return qint64;
 pragma Import(C,QMediaRecorder_duration, "QMediaRecorder_duration");
 
 function  QMediaRecorder_isMuted(handle: not null QMediaRecorderH) return boolean;
 pragma Import(C,QMediaRecorder_isMuted, "QMediaRecorder_isMuted");
 
 function  QMediaRecorder_volume(handle: not null QMediaRecorderH) return qreal;
 pragma Import(C,QMediaRecorder_volume, "QMediaRecorder_volume");
 
 function  QMediaRecorder_supportedContainers(handle: not null QMediaRecorderH) return QStringListH;
 pragma Import(C,QMediaRecorder_supportedContainers, "QMediaRecorder_supportedContainers");
 
 function  QMediaRecorder_containerDescription(handle: not null QMediaRecorderH;format:QStringH) return QStringH;
 pragma Import(C,QMediaRecorder_containerDescription, "QMediaRecorder_containerDescription");
 
 function  QMediaRecorder_supportedAudioCodecs(handle: not null QMediaRecorderH) return QStringListH;
 pragma Import(C,QMediaRecorder_supportedAudioCodecs, "QMediaRecorder_supportedAudioCodecs");
 
 function  QMediaRecorder_audioCodecDescription(handle: not null QMediaRecorderH; codecName:QStringH) return QStringH;
 pragma Import(C,QMediaRecorder_audioCodecDescription, "QMediaRecorder_audioCodecDescription");
 
 function  QMediaRecorder_supportedAudioSampleRates(handle: not null QMediaRecorderH) return QIntListH;
 pragma Import(C,QMediaRecorder_supportedAudioSampleRates, "QMediaRecorder_supportedAudioSampleRates");
 
 function  QMediaRecorder_supportedAudioSampleRates2(handle: not null QMediaRecorderH;settings:QAudioEncoderSettingsH;continuous:pboolean) return QIntListH;
 pragma Import(C,QMediaRecorder_supportedAudioSampleRates2, "QMediaRecorder_supportedAudioSampleRates2");
 
 function  QMediaRecorder_supportedVideoCodecs(handle: not null QMediaRecorderH) return QStringListH;
 pragma Import(C,QMediaRecorder_supportedVideoCodecs, "QMediaRecorder_supportedVideoCodecs");
 
 function  QMediaRecorder_videoCodecDescription(handle: not null QMediaRecorderH; codecName:QStringH) return QStringH;
 pragma Import(C,QMediaRecorder_videoCodecDescription, "QMediaRecorder_videoCodecDescription");
 
 function  QMediaRecorder_supportedResolutions(handle: not null QMediaRecorderH) return QObjectListH;
 pragma Import(C,QMediaRecorder_supportedResolutions, "QMediaRecorder_supportedResolutions");
 
 function  QMediaRecorder_supportedResolutions2(handle: not null QMediaRecorderH; settings:QVideoEncoderSettingsH;continuous:pboolean) return QListH;
 pragma Import(C,QMediaRecorder_supportedResolutions2, "QMediaRecorder_supportedResolutions2");
 
 function  QMediaRecorder_supportedFrameRates(handle: not null QMediaRecorderH) return QListH;
 pragma Import(C,QMediaRecorder_supportedFrameRates, "QMediaRecorder_supportedFrameRates");
 
 function  QMediaRecorder_supportedFrameRates2(handle: not null QMediaRecorderH;settings:QVideoEncoderSettingsH;continuous:pboolean) return QListH;
 pragma Import(C,QMediaRecorder_supportedFrameRates2, "QMediaRecorder_supportedFrameRates2");
 
 function  QMediaRecorder_audioSettings(handle: not null QMediaRecorderH) return QAudioEncoderSettingsH;
 pragma Import(C,QMediaRecorder_audioSettings, "QMediaRecorder_audioSettings");
 
 function  QMediaRecorder_videoSettings(handle: not null QMediaRecorderH) return QVideoEncoderSettingsH;
 pragma Import(C,QMediaRecorder_videoSettings, "QMediaRecorder_videoSettings");
 
 function  QMediaRecorder_containerFormat(handle: not null QMediaRecorderH) return QStringH;
 pragma Import(C,QMediaRecorder_containerFormat, "QMediaRecorder_containerFormat");
 
 procedure QMediaRecorder_setAudioSettings(handle: not null QMediaRecorderH; audioSettings:QAudioEncoderSettingsH);
 pragma Import(C,QMediaRecorder_setAudioSettings, "QMediaRecorder_setAudioSettings");
 
 procedure QMediaRecorder_setVideoSettings(handle: not null QMediaRecorderH; videoSettings:QVideoEncoderSettingsH);
 pragma Import(C,QMediaRecorder_setVideoSettings, "QMediaRecorder_setVideoSettings");
 
 procedure QMediaRecorder_setContainerFormat(handle: not null QMediaRecorderH;container:QStringH );
 pragma Import(C,QMediaRecorder_setContainerFormat, "QMediaRecorder_setContainerFormat");
 
 procedure QMediaRecorder_setEncodingSettings(handle: not null QMediaRecorderH; audioSettings:QAudioEncoderSettingsH);
 pragma Import(C,QMediaRecorder_setEncodingSettings, "QMediaRecorder_setEncodingSettings");
 
 procedure QMediaRecorder_setEncodingSettings2(handle: not null QMediaRecorderH; audioSettings:QAudioEncoderSettingsH;videoSettings:QVideoEncoderSettingsH; containerMimeType:QStringH := QString_create);
 pragma Import(C,QMediaRecorder_setEncodingSettings2, "QMediaRecorder_setEncodingSettings2");
 
 function  QMediaRecorder_isMetaDataAvailable(handle: not null QMediaRecorderH) return boolean;
 pragma Import(C,QMediaRecorder_isMetaDataAvailable, "QMediaRecorder_isMetaDataAvailable");
 
 function  QMediaRecorder_isMetaDataWritable(handle: not null QMediaRecorderH) return boolean;
 pragma Import(C,QMediaRecorder_isMetaDataWritable, "QMediaRecorder_isMetaDataWritable");
 
 function  QMediaRecorder_metaData(handle: not null QMediaRecorderH;key:QStringH) return QVariantH;
 pragma Import(C,QMediaRecorder_metaData, "QMediaRecorder_metaData");
 
 procedure QMediaRecorder_setMetaData(handle: not null QMediaRecorderH;key:QStringH;value: QVariantH);
 pragma Import(C,QMediaRecorder_setMetaData, "QMediaRecorder_setMetaData");
 
 function  QMediaRecorder_availableMetaData(handle: not null QMediaRecorderH) return QStringListH;
 pragma Import(C,QMediaRecorder_availableMetaData, "QMediaRecorder_availableMetaData");
 
 procedure QMediaRecorder_record(handle: not null QMediaRecorderH);
 pragma Import(C,QMediaRecorder_record, "QMediaRecorder_record");
 
 procedure QMediaRecorder_pause(handle: not null QMediaRecorderH);
 pragma Import(C,QMediaRecorder_pause, "QMediaRecorder_pause");
 
 procedure QMediaRecorder_stop(handle: not null QMediaRecorderH);
 pragma Import(C,QMediaRecorder_stop, "QMediaRecorder_stop");
 
 procedure QMediaRecorder_setMuted(handle: not null QMediaRecorderH; muted:boolean);
 pragma Import(C,QMediaRecorder_setMuted, "QMediaRecorder_setMuted");
 
 procedure QMediaRecorder_setVolume(handle: not null QMediaRecorderH; volume:qreal);
 pragma Import(C,QMediaRecorder_setVolume, "QMediaRecorder_setVolume");

 procedure QMediaRecorder_signal_slot_stateChanged(handle:QMediaRecorderH; hook:IntProc);
 pragma Import(C,QMediaRecorder_signal_slot_stateChanged, "QMediaRecorder_signal_slot_stateChanged");
 
 procedure QMediaRecorder_signal_slot_statusChanged(handle:QMediaRecorderH; hook:IntProc);
 pragma Import(C,QMediaRecorder_signal_slot_statusChanged, "QMediaRecorder_signal_slot_statusChanged");
 
 procedure QMediaRecorder_signal_slot_durationChanged(handle:QMediaRecorderH; hook:Int64Proc);
 pragma Import(C,QMediaRecorder_signal_slot_durationChanged, "QMediaRecorder_signal_slot_durationChanged");
 
 procedure QMediaRecorder_signal_slot_mutedChanged(handle:QMediaRecorderH; hook:BoolProc);
 pragma Import(C,QMediaRecorder_signal_slot_mutedChanged, "QMediaRecorder_signal_slot_mutedChanged");
 
 procedure QMediaRecorder_signal_slot_volumeChanged(handle:QMediaRecorderH; hook:RealProc);
 pragma Import(C,QMediaRecorder_signal_slot_volumeChanged, "QMediaRecorder_signal_slot_volumeChanged");
 
 procedure QMediaRecorder_signal_slot_actualLocationChanged(handle:QMediaRecorderH; hook:UrlProc);
 pragma Import(C,QMediaRecorder_signal_slot_actualLocationChanged, "QMediaRecorder_signal_slot_actualLocationChanged");
 
 procedure QMediaRecorder_signal_slot_error(handle:QMediaRecorderH; hook:IntProc);
 pragma Import(C,QMediaRecorder_signal_slot_error, "QMediaRecorder_signal_slot_error");
 
 procedure QMediaRecorder_signal_slot_metaDataAvailableChanged(handle: not null QMediaRecorderH; hook:BoolProc);
 pragma Import(C,QMediaRecorder_signal_slot_metaDataAvailableChanged, "QMediaRecorder_signal_slot_metaDataAvailableChanged");
 
 procedure QMediaRecorder_signal_slot_metaDataWritableChanged(handle: not null QMediaRecorderH; hook:BoolProc);
 pragma Import(C,QMediaRecorder_signal_slot_metaDataWritableChanged, "QMediaRecorder_signal_slot_metaDataWritableChanged");
 
 procedure QMediaRecorder_signal_slot_metaDataChanged2(handle: not null QMediaRecorderH; hook:voidProc);
 pragma Import(C,QMediaRecorder_signal_slot_metaDataChanged2, "QMediaRecorder_signal_slot_metaDataChanged2");
 
 procedure QMediaRecorder_signal_slot_metaDataChanged(handle: not null QMediaRecorderH; hook:StringVariantProc);
 pragma Import(C,QMediaRecorder_signal_slot_metaDataChanged, "QMediaRecorder_signal_slot_metaDataChanged");
 
 procedure QMediaRecorder_signal_slot_availabilityChanged(handle: not null QMediaRecorderH; hook:BoolProc);
 pragma Import(C,QMediaRecorder_signal_slot_availabilityChanged, "QMediaRecorder_signal_slot_availabilityChanged");
 
 procedure QMediaRecorder_signal_slot_availabilityChanged2(handle: not null QMediaRecorderH; hook:IntProc);
 pragma Import(C,QMediaRecorder_signal_slot_availabilityChanged2, "QMediaRecorder_signal_slot_availabilityChanged2");
 
----------------------------------------------------------------------------------------
 function  QMediaRecorder_supportedAudioSampleRates(handle: not null QMediaRecorderH;settings:QAudioEncoderSettingsH;continuous:pboolean) return QIntListH;
 function  QMediaRecorder_supportedResolutions(handle: not null QMediaRecorderH; settings:QVideoEncoderSettingsH;continuous:pboolean) return QListH;
 procedure QMediaRecorder_signal_slot_availabilityChanged(handle: not null QMediaRecorderH; hook:IntProc);

 function  QMediaRecorder_supportedFrameRates(handle: not null QMediaRecorderH;settings:QVideoEncoderSettingsH;continuous:pboolean) return QListH;
 procedure QMediaRecorder_setEncodingSettings(handle: not null QMediaRecorderH; audioSettings:QAudioEncoderSettingsH;videoSettings:QVideoEncoderSettingsH; containerMimeType:QStringH := QString_create);
 procedure QMediaRecorder_signal_slot_metaDataChanged(handle: not null QMediaRecorderH; hook:voidProc);
function  QMediaRecorder_audioCodecBox(handle: not null QMediaRecorderH) return QComboBoxH;
function  QMediaRecorder_containerBox(handle: not null QMediaRecorderH) return QComboBoxH;
function  QMediaRecorder_sampleRateBox(handle: not null QMediaRecorderH) return QComboBoxH;

end;
