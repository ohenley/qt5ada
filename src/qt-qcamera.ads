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

with Qt.QVideoFrame;
with Qt.QString; use Qt.QString;
with Qt.QMediaEncoderSettings; use Qt.QMediaEncoderSettings;
package Qt.QCamera  is

 type QCameraStatus is (UnavailableStatus,UnloadedStatus,LoadingStatus,UnloadingStatus,LoadedStatus,StandbyStatus,StartingStatus,StoppingStatus,ActiveStatus);
 pragma Convention(C,QCameraStatus);   

 type QCameraState is (UnloadedState,LoadedState,ActiveState);
 pragma Convention(C,QCameraState);

 type QCameraCaptureModes is (CaptureViewfinder,CaptureStillImage,CaptureVideo);
 pragma Convention(C,QCameraCaptureModes);

 type QCameraError is (NoError,CameraError,InvalidRequestError,ServiceMissingError,NotSupportedFeatureError);
 pragma Convention(C,QCameraError);
   
 type QCameraLockStatus is (Unlocked,Searching,Locked);
 pragma Convention(C,QCameraLockStatus);
    
 type QCameraLockChangeReason is (UserRequest,LockAcquired,LockFailed,LockLost,LockTemporaryLost);
 pragma Convention(C,QCameraLockChangeReason);
    
 type QCameraLockType  is (NoLock,LockExposure,LockWhiteBalance,LockFocus);
 pragma Convention(C,QCameraLockType);
     
 for  QCameraLockType  use (
        NoLock => 0,
        LockExposure => 1,
        LockWhiteBalance => 2,
        LockFocus => 4);
        
 subtype QCameraLockTypes is integer;

 type QCameraPosition is (UnspecifiedPosition,BackFace,FrontFace);
 pragma Convention(C,QCameraPosition);         

 type  voidProc is access procedure;
 pragma Convention(C,voidProc);

 type  intProc is access procedure(p:integer);
 pragma Convention(C,intProc);

 type  realProc is access procedure(p:qreal);
 pragma Convention(C,realProc);

 type  boolProc is access procedure(p:boolean);
 pragma Convention(C,boolProc);

 type  intIntProc is access procedure(p1,p2:integer);
 pragma Convention(C,intIntProc);

 type  intIntIntProc is access procedure(p1,p2,p3:integer);
 pragma Convention(C,intIntIntProc);

 type  intIntStringProc is access procedure(p1,p2:integer;p3:QStringH);
 pragma Convention(C,intIntStringProc);

 type  intImageProc     is access procedure(p1:integer;p2:QImageH);
 pragma Convention(C,intImageProc);

 type  intStringProc  is access procedure(p1:integer;p2:QStringH);
 pragma Convention(C,intStringProc);

 type  intStringVariantProc  is access procedure(p1:integer;p2:QStringH;p3:QVariantH);
 pragma Convention(C,intStringVariantProc);

 type  intVideoFrameProc     is access procedure(p1:integer;p2:QVideoFrameH);
 pragma Convention(C,intVideoFrameProc);

 function  QCamera_create(parent:QObjectH := null) return QCameraH;
 pragma Import(C,QCamera_create, "QCamera_create");
 
 function  QCamera_create2(device:QByteArrayH;parent:QObjectH := null) return QCameraH ;
 pragma Import(C,QCamera_create2, "QCamera_create2");
 
 procedure QCamera_destroy(handle: not null QCameraH);
 pragma Import(C,QCamera_destroy, "QCamera_destroy");
 
 function  QCamera_availability(handle: not null QCameraH) return integer;
 pragma Import(C,QCamera_availability, "QCamera_availability");
 
 function  QCamera_availableDevices return QByteArrayListH;
 pragma Import(C,QCamera_availableDevices, "QCamera_availableDevices");
 
 function  QCamera_deviceDescription(device:QByteArrayH) return QStringH;
 pragma Import(C,QCamera_deviceDescription, "QCamera_deviceDescription");
 
 function  QCamera_state(handle: not null QCameraH) return QCameraState;
 pragma Import(C,QCamera_state, "QCamera_state");
 
 function  QCamera_status(handle: not null QCameraH) return QCameraStatus;
 pragma Import(C,QCamera_status, "QCamera_status");
 
 function  QCamera_captureMode(handle: not null QCameraH) return QCameraCaptureModes;
 pragma Import(C,QCamera_captureMode, "QCamera_captureMode");
 
 function  QCamera_isCaptureModeSupported(handle: not null QCameraH;mode:QCameraCaptureModes) return boolean;
 pragma Import(C,QCamera_isCaptureModeSupported, "QCamera_isCaptureModeSupported");
 
 function  QCamera_exposure(handle: not null QCameraH) return QCameraExposureH;
 pragma Import(C,QCamera_exposure, "QCamera_exposure");
 
 function  QCamera_focus(handle: not null QCameraH) return QCameraFocusZoneH;
 pragma Import(C,QCamera_focus, "QCamera_focus");
 
 function  QCamera_imageProcessing(handle: not null QCameraH) return QCameraImageProcessingH;
 pragma Import(C,QCamera_imageProcessing, "QCamera_imageProcessing");
 
 procedure QCamera_setViewfinder(handle: not null QCameraH; viewfinder:QVideoWidgetH);
 pragma Import(C,QCamera_setViewfinder, "QCamera_setViewfinder");
 
 procedure QCamera_setViewfinder2(handle: not null QCameraH; viewfinder:QGraphicsVideoItemH);
 pragma Import(C,QCamera_setViewfinder2, "QCamera_setViewfinder2");
 
 procedure QCamera_setViewfinder3(handle: not null QCameraH;surface:QAbstractVideoSurfaceH);
 pragma Import(C,QCamera_setViewfinder3, "QCamera_setViewfinder3");
 
 function  QCamera_error(handle: not null QCameraH) return integer;
 pragma Import(C,QCamera_error, "QCamera_error");
 
 function  QCamera_errorString(handle: not null QCameraH) return QStringH;
 pragma Import(C,QCamera_errorString, "QCamera_errorString");
 
 function  QCamera_supportedLocks(handle: not null QCameraH) return QCameraLockTypes;
 pragma Import(C,QCamera_supportedLocks, "QCamera_supportedLocks");
 
 function  QCamera_requestedLocks(handle: not null QCameraH) return QCameraLockTypes;
 pragma Import(C,QCamera_requestedLocks, "QCamera_requestedLocks");
 
 function  QCamera_lockStatus(handle: not null QCameraH) return QCameraLockStatus;
 pragma Import(C,QCamera_lockStatus, "QCamera_lockStatus");
 
 function  QCamera_lockStatus2(handle: not null QCameraH;lock:QCameraLockTypes) return QCameraLockStatus;
 pragma Import(C,QCamera_lockStatus2, "QCamera_lockStatus2");
 
 procedure QCamera_setCaptureMode(handle: not null QCameraH;mode:QCameraCaptureModes);
 pragma Import(C,QCamera_setCaptureMode, "QCamera_setCaptureMode");
 
 procedure QCamera_load(handle: not null QCameraH);
 pragma Import(C,QCamera_load, "QCamera_load");
 
 procedure QCamera_unload(handle: not null QCameraH);
 pragma Import(C,QCamera_unload, "QCamera_unload");
 
 procedure QCamera_start(handle: not null QCameraH);
 pragma Import(C,QCamera_start, "QCamera_start");
 
 procedure QCamera_stop(handle: not null QCameraH);
 pragma Import(C,QCamera_stop, "QCamera_stop");
 
 procedure QCamera_searchAndLock(handle: not null QCameraH);
 pragma Import(C,QCamera_searchAndLock, "QCamera_searchAndLock");
 
 procedure QCamera_searchAndLock2(handle: not null QCameraH;locks:QCameraLockTypes);
 pragma Import(C,QCamera_searchAndLock2, "QCamera_searchAndLock2");
 
 procedure QCamera_unlock(handle: not null QCameraH);
 pragma Import(C,QCamera_unlock, "QCamera_unlock");
 
 procedure QCamera_unlock2(handle: not null QCameraH;locks:QCameraLockTypes);
 pragma Import(C,QCamera_unlock2, "QCamera_unlock2");

 function  QCamera_availableDeviceAtByName(index:integer) return string;
 pragma Import(C,QCamera_availableDeviceAtByName, "QCamera_availableDeviceAtByName");
 
 function  QCamera_availableDeviceAt(index:integer) return QByteArrayH;
 pragma Import(C,QCamera_availableDeviceAt, "QCamera_availableDeviceAt");

 procedure QCamera_signal_slot_stateChanged(handle: not null QCameraH;hook:intProc);
 pragma Import(C,QCamera_signal_slot_stateChanged, "QCamera_signal_slot_stateChanged");
 
 procedure QCamera_signal_slot_statusChanged(handle: not null QCameraH;hook:intProc);
 pragma Import(C,QCamera_signal_slot_statusChanged, "QCamera_signal_slot_statusChanged");
 
 procedure QCamera_signal_slot_captureModeChanged(handle: not null QCameraH;hook:intProc);
 pragma Import(C,QCamera_signal_slot_captureModeChanged, "QCamera_signal_slot_captureModeChanged");
 
 procedure QCamera_signal_slot_locked(handle: not null QCameraH;hook:voidProc);
 pragma Import(C,QCamera_signal_slot_locked, "QCamera_signal_slot_locked");
 
 procedure QCamera_signal_slot_lockFailed(handle: not null QCameraH;hook:voidProc);
 pragma Import(C,QCamera_signal_slot_lockFailed, "QCamera_signal_slot_lockFailed");
 
 procedure QCamera_signal_slot_lockStatusChanged(handle: not null QCameraH;hook:intIntProc);
 pragma Import(C,QCamera_signal_slot_lockStatusChanged, "QCamera_signal_slot_lockStatusChanged");
 
 procedure QCamera_signal_slot_lockStatusChanged2(handle: not null QCameraH;hook:intIntIntProc);
 pragma Import(C,QCamera_signal_slot_lockStatusChanged2, "QCamera_signal_slot_lockStatusChanged2");
 
 procedure QCamera_signal_slot_error(handle: not null QCameraH;hook:intProc);
 pragma Import(C,QCamera_signal_slot_error, "QCamera_signal_slot_error");
 
------------------------------------------------------------------------------------------------
 function  QCamera_create(device:QByteArrayH;parent:QObjectH := null) return QCameraH ;
 procedure QCamera_setViewfinder(handle: not null QCameraH; viewfinder:QGraphicsVideoItemH);
 procedure QCamera_setViewfinder(handle: not null QCameraH;surface:QAbstractVideoSurfaceH);
 function  QCamera_lockStatus(handle: not null QCameraH;lock:QCameraLockTypes) return QCameraLockStatus;
 procedure QCamera_searchAndLock(handle: not null QCameraH;locks:QCameraLockTypes);
 procedure QCamera_signal_slot_lockStatusChanged(handle: not null QCameraH;hook:intIntIntProc);

---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------

 type WhiteBalanceMode is (WhiteBalanceAuto,WhiteBalanceManual,WhiteBalanceSunlight,WhiteBalanceCloudy,WhiteBalanceShade,
                           WhiteBalanceTungsten,WhiteBalanceFluorescent,WhiteBalanceFlash,WhiteBalanceSunset,WhiteBalanceVendor
                          ); 


 for  WhiteBalanceMode use (
        WhiteBalanceAuto => 0,
        WhiteBalanceManual => 1,
        WhiteBalanceSunlight => 2,
        WhiteBalanceCloudy => 3,
        WhiteBalanceShade => 4,
        WhiteBalanceTungsten => 5,
        WhiteBalanceFluorescent => 6,
        WhiteBalanceFlash => 7,
        WhiteBalanceSunset => 8,
        WhiteBalanceVendor => 1000
    ); 

 function  QCameraImageProcessing_isAvailable(handle: not null QCameraImageProcessingH) return boolean;
 pragma Import(C,QCameraImageProcessing_isAvailable, "QCameraImageProcessing_isAvailable");
 
 function  QCameraImageProcessing_whiteBalanceMode(handle: not null QCameraImageProcessingH) return WhiteBalanceMode;
 pragma Import(C,QCameraImageProcessing_whiteBalanceMode, "QCameraImageProcessing_whiteBalanceMode");
 
 procedure QCameraImageProcessing_setWhiteBalanceMode(handle: not null QCameraImageProcessingH;mode:WhiteBalanceMode);
 pragma Import(C,QCameraImageProcessing_setWhiteBalanceMode, "QCameraImageProcessing_setWhiteBalanceMode");
 
 function  QCameraImageProcessing_isWhiteBalanceModeSupported(handle: not null QCameraImageProcessingH;mode:WhiteBalanceMode) return boolean;
 pragma Import(C,QCameraImageProcessing_isWhiteBalanceModeSupported, "QCameraImageProcessing_isWhiteBalanceModeSupported");
 
 function  QCameraImageProcessing_manualWhiteBalance(handle: not null QCameraImageProcessingH) return qreal;
 pragma Import(C,QCameraImageProcessing_manualWhiteBalance, "QCameraImageProcessing_manualWhiteBalance");
 
 procedure QCameraImageProcessing_setManualWhiteBalance2(handle: not null QCameraImageProcessingH; colorTemperature:qreal);
 pragma Import(C,QCameraImageProcessing_setManualWhiteBalance2, "QCameraImageProcessing_setManualWhiteBalance2");
 
 function  QCameraImageProcessing_contrast(handle: not null QCameraImageProcessingH) return qreal;
 pragma Import(C,QCameraImageProcessing_contrast, "QCameraImageProcessing_contrast");
 
 procedure QCameraImageProcessing_setContrast(handle: not null QCameraImageProcessingH;value:qreal);
 pragma Import(C,QCameraImageProcessing_setContrast, "QCameraImageProcessing_setContrast");
 
 function  QCameraImageProcessing_saturation(handle: not null QCameraImageProcessingH) return qreal;
 pragma Import(C,QCameraImageProcessing_saturation, "QCameraImageProcessing_saturation");
 
 procedure QCameraImageProcessing_setSaturation(handle: not null QCameraImageProcessingH;value:qreal);
 pragma Import(C,QCameraImageProcessing_setSaturation, "QCameraImageProcessing_setSaturation");
 
 function  QCameraImageProcessing_sharpeningLevel(handle: not null QCameraImageProcessingH) return qreal;
 pragma Import(C,QCameraImageProcessing_sharpeningLevel, "QCameraImageProcessing_sharpeningLevel");
 
 procedure QCameraImageProcessing_setSharpeningLevel(handle: not null QCameraImageProcessingH;value:qreal);
 pragma Import(C,QCameraImageProcessing_setSharpeningLevel, "QCameraImageProcessing_setSharpeningLevel");
 
 function  QCameraImageProcessing_denoisingLevel(handle: not null QCameraImageProcessingH) return qreal;
 pragma Import(C,QCameraImageProcessing_denoisingLevel, "QCameraImageProcessing_denoisingLevel");
 
 procedure QCameraImageProcessing_setDenoisingLevel(handle: not null QCameraImageProcessingH;value:qreal);
 pragma Import(C,QCameraImageProcessing_setDenoisingLevel, "QCameraImageProcessing_setDenoisingLevel");
--------------------------------------------------------------------------------------------------------------- 
 procedure QCameraImageProcessing_setManualWhiteBalance(handle: not null QCameraImageProcessingH; colorTemperature:qreal);
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
 type FocusZoneStatus is (Invalid,Unused,Selected,Focused);
 pragma convention(C,FocusZoneStatus);

 function  QCameraFocusZone_create return QCameraFocusZoneH;
 pragma Import(C,QCameraFocusZone_create, "QCameraFocusZone_create");
 
 function  QCameraFocusZone_create2(area:QRectFH;status:FocusZoneStatus := Selected) return QCameraFocusZoneH;
 pragma Import(C,QCameraFocusZone_create2, "QCameraFocusZone_create2");
 
 function  QCameraFocusZone_create3(otheFocus:QCameraFocusZoneH) return QCameraFocusZoneH ;
 pragma Import(C,QCameraFocusZone_create3, "QCameraFocusZone_create3");
 
 procedure QCameraFocusZone_destroy(handle: not null QCameraFocusZoneH);
 pragma Import(C,QCameraFocusZone_destroy, "QCameraFocusZone_destroy");
 
 function  QCameraFocusZone_isValid(handle: not null QCameraFocusZoneH) return boolean;
 pragma Import(C,QCameraFocusZone_isValid, "QCameraFocusZone_isValid");
 
 function  QCameraFocusZone_area(handle: not null QCameraFocusZoneH) return QRectFH;
 pragma Import(C,QCameraFocusZone_area, "QCameraFocusZone_area");
 
 function  QCameraFocusZone_status(handle: not null QCameraFocusZoneH) return FocusZoneStatus;
 pragma Import(C,QCameraFocusZone_status, "QCameraFocusZone_status");
 
 procedure QCameraFocusZone_setStatus(handle: not null QCameraFocusZoneH;status:FocusZoneStatus);
 pragma Import(C,QCameraFocusZone_setStatus, "QCameraFocusZone_setStatus");
------------------------------------------------------------------------------------------------------------
 function  QCameraFocusZone_create(area:QRectFH;status:FocusZoneStatus := Selected) return QCameraFocusZoneH;
 function  QCameraFocusZone_create(otheFocus:QCameraFocusZoneH) return QCameraFocusZoneH;
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
 type CameraImageCaptureError is (NoError,NotReadyError,ResourceError,OutOfSpaceError,NotSupportedFeatureError,FormatError);
 pragma convention(C,CameraImageCaptureError);

 type DriveMode is (SingleImageCapture);
 pragma convention(C,DriveMode);

 type CaptureDestination is (CaptureToFile,CaptureToBuffer); 
 pragma convention(C,CaptureDestination);

 for  CaptureDestination use (
        CaptureToFile   => 1,
        CaptureToBuffer => 2); 
        
 function  QCameraImageCapture_create(mediaObject:QMediaObjectH;parent:QObjectH  := null) return QCameraImageCaptureH ;
 pragma Import(C,QCameraImageCapture_create, "QCameraImageCapture_create");
 
 procedure QCameraImageCapture_destroy(handle: not null QCameraImageCaptureH);
 pragma Import(C,QCameraImageCapture_destroy, "QCameraImageCapture_destroy");
 
 function  QCameraImageCapture_isAvailable(handle: not null QCameraImageCaptureH) return boolean;
 pragma Import(C,QCameraImageCapture_isAvailable, "QCameraImageCapture_isAvailable");
 
 function  QCameraImageCapture_availability(handle: not null QCameraImageCaptureH) return integer;
 pragma Import(C,QCameraImageCapture_availability, "QCameraImageCapture_availability");
 
 function  QCameraImageCapture_mediaObject(handle: not null QCameraImageCaptureH) return QMediaObjectH;
 pragma Import(C,QCameraImageCapture_mediaObject, "QCameraImageCapture_mediaObject");
 
 function  QCameraImageCapture_error(handle: not null QCameraImageCaptureH) return CameraImageCaptureError;
 pragma Import(C,QCameraImageCapture_error, "QCameraImageCapture_error");
 
 function  QCameraImageCapture_errorString(handle: not null QCameraImageCaptureH) return QStringH;
 pragma Import(C,QCameraImageCapture_errorString, "QCameraImageCapture_errorString");
 
 function  QCameraImageCapture_isReadyForCapture(handle: not null QCameraImageCaptureH) return boolean;
 pragma Import(C,QCameraImageCapture_isReadyForCapture, "QCameraImageCapture_isReadyForCapture");
 
 function  QCameraImageCapture_supportedImageCodecs(handle: not null QCameraImageCaptureH) return QStringListH;
 pragma Import(C,QCameraImageCapture_supportedImageCodecs, "QCameraImageCapture_supportedImageCodecs");
 
 function  QCameraImageCapture_imageCodecDescription(handle: not null QCameraImageCaptureH; codecName:QStringH) return QStringH;
 pragma Import(C,QCameraImageCapture_imageCodecDescription, "QCameraImageCapture_imageCodecDescription");
 
 function  QCameraImageCapture_supportedResolutions(handle: not null QCameraImageCaptureH; settings:QImageEncoderSettingsH  := QImageEncoderSettings_create; continuous: pboolean := null) return QListH;
 pragma Import(C,QCameraImageCapture_supportedResolutions, "QCameraImageCapture_supportedResolutions");
 
 function  QCameraImageCapture_encodingSettings(handle: not null QCameraImageCaptureH) return QImageEncoderSettingsH;
 pragma Import(C,QCameraImageCapture_encodingSettings, "QCameraImageCapture_encodingSettings");
 
 procedure QCameraImageCapture_setEncodingSettings(handle: not null QCameraImageCaptureH; settings:QImageEncoderSettingsH);
 pragma Import(C,QCameraImageCapture_setEncodingSettings, "QCameraImageCapture_setEncodingSettings");
 
 function  QCameraImageCapture_supportedBufferFormats(handle: not null QCameraImageCaptureH) return QListH;
 pragma Import(C,QCameraImageCapture_supportedBufferFormats, "QCameraImageCapture_supportedBufferFormats");
 
 function  QCameraImageCapture_bufferFormat(handle: not null QCameraImageCaptureH) return Qt.QVideoFrame.PixelFormat;
 pragma Import(C,QCameraImageCapture_bufferFormat, "QCameraImageCapture_bufferFormat");
 
 procedure QCameraImageCapture_setBufferFormat(handle: not null QCameraImageCaptureH;format:Qt.QVideoFrame.PixelFormat);
 pragma Import(C,QCameraImageCapture_setBufferFormat, "QCameraImageCapture_setBufferFormat");
 
 function  QCameraImageCapture_isCaptureDestinationSupported(handle: not null QCameraImageCaptureH;destination:integer) return boolean;
 pragma Import(C,QCameraImageCapture_isCaptureDestinationSupported, "QCameraImageCapture_isCaptureDestinationSupported");
 
 function  QCameraImageCapture_captureDestination(handle: not null QCameraImageCaptureH) return integer;
 pragma Import(C,QCameraImageCapture_captureDestination, "QCameraImageCapture_captureDestination");
 
 procedure QCameraImageCapture_setCaptureDestination(handle: not null QCameraImageCaptureH; destination:integer);
 pragma Import(C,QCameraImageCapture_setCaptureDestination, "QCameraImageCapture_setCaptureDestination");
 
 function  QCameraImageCapture_capture(handle: not null QCameraImageCaptureH; location:QStringH  := QString_create) return integer;
 pragma Import(C,QCameraImageCapture_capture, "QCameraImageCapture_capture");
 
 procedure QCameraImageCapture_cancelCapture(handle: not null QCameraImageCaptureH);
 pragma Import(C,QCameraImageCapture_cancelCapture, "QCameraImageCapture_cancelCapture");
 
 procedure QCameraImageCapture_signal_slot_error(handle: not null QCameraImageCaptureH; hook:intIntStringProc);
 pragma Import(C,QCameraImageCapture_signal_slot_error, "QCameraImageCapture_signal_slot_error");
 
 procedure QCameraImageCapture_signal_slot_stateChanged(handle: not null QCameraImageCaptureH; hook:intProc);
 pragma Import(C,QCameraImageCapture_signal_slot_stateChanged, "QCameraImageCapture_signal_slot_stateChanged");
 
 procedure QCameraImageCapture_signal_slot_readyForCaptureChanged(handle: not null QCameraImageCaptureH; hook:boolProc);
 pragma Import(C,QCameraImageCapture_signal_slot_readyForCaptureChanged, "QCameraImageCapture_signal_slot_readyForCaptureChanged");
 
 procedure QCameraImageCapture_signal_slot_bufferFormatChanged(handle: not null QCameraImageCaptureH; hook:intProc);
 pragma Import(C,QCameraImageCapture_signal_slot_bufferFormatChanged, "QCameraImageCapture_signal_slot_bufferFormatChanged");
 
 procedure QCameraImageCapture_signal_slot_captureDestinationChanged(handle: not null QCameraImageCaptureH; hook:intProc);
 pragma Import(C,QCameraImageCapture_signal_slot_captureDestinationChanged, "QCameraImageCapture_signal_slot_captureDestinationChanged");
 
 procedure QCameraImageCapture_signal_slot_imageExposed(handle: not null QCameraImageCaptureH; hook:intProc);
 pragma Import(C,QCameraImageCapture_signal_slot_imageExposed, "QCameraImageCapture_signal_slot_imageExposed");
 
 procedure QCameraImageCapture_signal_slot_imageCaptured(handle: not null QCameraImageCaptureH; hook:intImageProc);
 pragma Import(C,QCameraImageCapture_signal_slot_imageCaptured, "QCameraImageCapture_signal_slot_imageCaptured");
 
 procedure QCameraImageCapture_signal_slot_imageMetadataAvailable(handle: not null QCameraImageCaptureH; hook:intStringVariantProc);
 pragma Import(C,QCameraImageCapture_signal_slot_imageMetadataAvailable, "QCameraImageCapture_signal_slot_imageMetadataAvailable");
 
 procedure QCameraImageCapture_signal_slot_imageAvailable(handle: not null QCameraImageCaptureH; hook:intVideoFrameProc);
 pragma Import(C,QCameraImageCapture_signal_slot_imageAvailable, "QCameraImageCapture_signal_slot_imageAvailable");
 
 procedure QCameraImageCapture_signal_slot_imageSaved(handle: not null QCameraImageCaptureH; hook:intStringProc);
 pragma Import(C,QCameraImageCapture_signal_slot_imageSaved, "QCameraImageCapture_signal_slot_imageSaved");
----------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
  type FlashMode is (FlashAuto,FlashOff,FlashOn,FlashRedEyeReduction,FlashFill,FlashTorch,
                     FlashVideoLight,FlashSlowSyncFrontCurtain,FlashSlowSyncRearCurtain,FlashManual);
  pragma convention(C,FlashMode);
  for FlashMode use (
        FlashAuto                 => 16#1#,
        FlashOff                  => 16#2#,
        FlashOn                   => 16#4#,
        FlashRedEyeReduction      => 16#8#,
        FlashFill                 => 16#10#,
        FlashTorch                => 16#20#,
        FlashVideoLight           => 16#40#,
        FlashSlowSyncFrontCurtain => 16#80#,
        FlashSlowSyncRearCurtain  => 16#100#,
        FlashManual               => 16#200#
       );
  type FlashModes is new integer; 
  type ExposureMode is (ExposureAuto,ExposureManual,ExposurePortrait,ExposureNight,ExposureBacklight,ExposureSpotlight,ExposureSports,
                        ExposureSnow,ExposureBeach,ExposureLargeAperture,ExposureSmallAperture,ExposureModeVendor);
  pragma convention(C,ExposureMode);

  for  ExposureMode use (
        ExposureAuto => 0,
        ExposureManual => 1,
        ExposurePortrait => 2,
        ExposureNight => 3,
        ExposureBacklight => 4,
        ExposureSpotlight => 5,
        ExposureSports => 6,
        ExposureSnow => 7,
        ExposureBeach => 8,
        ExposureLargeAperture => 9,
        ExposureSmallAperture => 10,
        ExposureModeVendor => 1000);

  type MeteringMode is (MeteringMatrix,MeteringAverage,MeteringSpot);
  pragma convention(C,MeteringMode);

  for  MeteringMode use (
        MeteringMatrix  => 1,
        MeteringAverage => 2,
        MeteringSpot    => 3);

 function  QCameraExposure_isAvailable(handle: not null QCameraExposureH) return boolean;
 pragma Import(C,QCameraExposure_isAvailable, "QCameraExposure_isAvailable");
 
 function  QCameraExposure_flashMode(handle: not null QCameraExposureH) return integer;
 pragma Import(C,QCameraExposure_flashMode, "QCameraExposure_flashMode");
 
 function  QCameraExposure_isFlashModeSupported(handle: not null QCameraExposureH;mode:integer) return boolean;
 pragma Import(C,QCameraExposure_isFlashModeSupported, "QCameraExposure_isFlashModeSupported");
 
 function  QCameraExposure_isFlashReady(handle: not null QCameraExposureH) return boolean;
 pragma Import(C,QCameraExposure_isFlashReady, "QCameraExposure_isFlashReady");
 
 function  QCameraExposure_exposureMode(handle: not null QCameraExposureH) return ExposureMode;
 pragma Import(C,QCameraExposure_exposureMode, "QCameraExposure_exposureMode");
 
 function  QCameraExposure_isExposureModeSupported(handle: not null QCameraExposureH;mode:ExposureMode) return boolean;
 pragma Import(C,QCameraExposure_isExposureModeSupported, "QCameraExposure_isExposureModeSupported");
 
 function  QCameraExposure_exposureCompensation(handle: not null QCameraExposureH) return qreal;
 pragma Import(C,QCameraExposure_exposureCompensation, "QCameraExposure_exposureCompensation");
 
 function  QCameraExposure_meteringMode(handle: not null QCameraExposureH) return MeteringMode;
 pragma Import(C,QCameraExposure_meteringMode, "QCameraExposure_meteringMode");
 
 function  QCameraExposure_isMeteringModeSupported(handle: not null QCameraExposureH;mode:MeteringMode) return boolean;
 pragma Import(C,QCameraExposure_isMeteringModeSupported, "QCameraExposure_isMeteringModeSupported");
 
 function  QCameraExposure_spotMeteringPoint(handle: not null QCameraExposureH) return QPointFH;
 pragma Import(C,QCameraExposure_spotMeteringPoint, "QCameraExposure_spotMeteringPoint");
 
 procedure QCameraExposure_setSpotMeteringPoint(handle: not null QCameraExposureH;point:QPointFH);
 pragma Import(C,QCameraExposure_setSpotMeteringPoint, "QCameraExposure_setSpotMeteringPoint");
 
 function  QCameraExposure_isoSensitivity(handle: not null QCameraExposureH) return integer;
 pragma Import(C,QCameraExposure_isoSensitivity, "QCameraExposure_isoSensitivity");
 
 function  QCameraExposure_aperture(handle: not null QCameraExposureH) return qreal;
 pragma Import(C,QCameraExposure_aperture, "QCameraExposure_aperture");
 
 function  QCameraExposure_shutterSpeed(handle: not null QCameraExposureH) return qreal;
 pragma Import(C,QCameraExposure_shutterSpeed, "QCameraExposure_shutterSpeed");
 
 function  QCameraExposure_requestedIsoSensitivity(handle: not null QCameraExposureH) return integer;
 pragma Import(C,QCameraExposure_requestedIsoSensitivity, "QCameraExposure_requestedIsoSensitivity");
 
 function  QCameraExposure_requestedAperture(handle: not null QCameraExposureH) return qreal;
 pragma Import(C,QCameraExposure_requestedAperture, "QCameraExposure_requestedAperture");
 
 function  QCameraExposure_requestedShutterSpeed(handle: not null QCameraExposureH) return qreal;
 pragma Import(C,QCameraExposure_requestedShutterSpeed, "QCameraExposure_requestedShutterSpeed");
 
 function  QCameraExposure_supportedIsoSensitivities(handle: not null QCameraExposureH;continuous: pboolean := null) return QIntListH;
 pragma Import(C,QCameraExposure_supportedIsoSensitivities, "QCameraExposure_supportedIsoSensitivities");
 
 function  QCameraExposure_supportedApertures(handle: not null QCameraExposureH;continuous: pboolean := null) return QObjectListH;
 pragma Import(C,QCameraExposure_supportedApertures, "QCameraExposure_supportedApertures");
 
 function  QCameraExposure_supportedShutterSpeeds(handle: not null QCameraExposureH;continuous: pboolean := null) return QObjectListH;
 pragma Import(C,QCameraExposure_supportedShutterSpeeds, "QCameraExposure_supportedShutterSpeeds");
 
 procedure QCameraExposure_setFlashMode(handle: not null QCameraExposureH;mode:integer);
 pragma Import(C,QCameraExposure_setFlashMode, "QCameraExposure_setFlashMode");
 
 procedure QCameraExposure_setExposureMode(handle: not null QCameraExposureH;mode:ExposureMode);
 pragma Import(C,QCameraExposure_setExposureMode, "QCameraExposure_setExposureMode");
 
 procedure QCameraExposure_setMeteringMode(handle: not null QCameraExposureH;mode:MeteringMode);
 pragma Import(C,QCameraExposure_setMeteringMode, "QCameraExposure_setMeteringMode");
 
 procedure QCameraExposure_setExposureCompensation(handle: not null QCameraExposureH;ev:qreal);
 pragma Import(C,QCameraExposure_setExposureCompensation, "QCameraExposure_setExposureCompensation");
 
 procedure QCameraExposure_setManualIsoSensitivity(handle: not null QCameraExposureH; iso:integer);
 pragma Import(C,QCameraExposure_setManualIsoSensitivity, "QCameraExposure_setManualIsoSensitivity");
 
 procedure QCameraExposure_setAutoIsoSensitivity(handle: not null QCameraExposureH);
 pragma Import(C,QCameraExposure_setAutoIsoSensitivity, "QCameraExposure_setAutoIsoSensitivity");
 
 procedure QCameraExposure_setManualAperture(handle: not null QCameraExposureH; aperture:qreal);
 pragma Import(C,QCameraExposure_setManualAperture, "QCameraExposure_setManualAperture");
 
 procedure QCameraExposure_setAutoAperture(handle: not null QCameraExposureH);
 pragma Import(C,QCameraExposure_setAutoAperture, "QCameraExposure_setAutoAperture");
 
 procedure QCameraExposure_setManualShutterSpeed(handle: not null QCameraExposureH; seconds:qreal);
 pragma Import(C,QCameraExposure_setManualShutterSpeed, "QCameraExposure_setManualShutterSpeed");
 
 procedure QCameraExposure_setAutoShutterSpeed(handle: not null QCameraExposureH);
 pragma Import(C,QCameraExposure_setAutoShutterSpeed, "QCameraExposure_setAutoShutterSpeed");
 
 procedure QCameraExposure_signal_slot_flashReady(handle: not null QCameraExposureH;hook:boolProc);
 pragma Import(C,QCameraExposure_signal_slot_flashReady, "QCameraExposure_signal_slot_flashReady");
 
 procedure QCameraExposure_signal_slot_apertureChanged(handle: not null QCameraExposureH;hook:realProc);
 pragma Import(C,QCameraExposure_signal_slot_apertureChanged, "QCameraExposure_signal_slot_apertureChanged");
 
 procedure QCameraExposure_signal_slot_apertureRangeChanged(handle: not null QCameraExposureH;hook:voidProc);
 pragma Import(C,QCameraExposure_signal_slot_apertureRangeChanged, "QCameraExposure_signal_slot_apertureRangeChanged");
 
 procedure QCameraExposure_signal_slot_shutterSpeedChanged(handle: not null QCameraExposureH;hook:realProc);
 pragma Import(C,QCameraExposure_signal_slot_shutterSpeedChanged, "QCameraExposure_signal_slot_shutterSpeedChanged");
 
 procedure QCameraExposure_signal_slot_shutterSpeedRangeChanged(handle: not null QCameraExposureH;hook:voidProc);
 pragma Import(C,QCameraExposure_signal_slot_shutterSpeedRangeChanged, "QCameraExposure_signal_slot_shutterSpeedRangeChanged");
 
 procedure QCameraExposure_signal_slot_isoSensitivityChanged(handle: not null QCameraExposureH;hook:intProc);
 pragma Import(C,QCameraExposure_signal_slot_isoSensitivityChanged, "QCameraExposure_signal_slot_isoSensitivityChanged");
 
 procedure QCameraExposure_signal_slot_exposureCompensationChanged(handle: not null QCameraExposureH;hook:realProc);
 pragma Import(C,QCameraExposure_signal_slot_exposureCompensationChanged, "QCameraExposure_signal_slot_exposureCompensationChanged");
 

end;
