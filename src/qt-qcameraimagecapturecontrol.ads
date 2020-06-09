--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QCamera; use Qt.QCamera;
package Qt.QCameraImageCaptureControl is


 procedure QCameraImageCaptureControl_destroy(handle:not null QCameraControlH);
 pragma Import(C,QCameraImageCaptureControl_destroy, "QCameraImageCaptureControl_destroy");
 
 function  QCameraImageCaptureControl_isReadyForCapture(handle:not null QCameraControlH) return boolean;
 pragma Import(C,QCameraImageCaptureControl_isReadyForCapture, "QCameraImageCaptureControl_isReadyForCapture");
 
 function  QCameraImageCaptureControl_driveMode(handle:not null QCameraControlH) return DriveMode;
 pragma Import(C,QCameraImageCaptureControl_driveMode, "QCameraImageCaptureControl_driveMode");
 
 procedure QCameraImageCaptureControl_setDriveMode(handle:not null QCameraControlH;mode:DriveMode);
 pragma Import(C,QCameraImageCaptureControl_setDriveMode, "QCameraImageCaptureControl_setDriveMode");
 
 function  QCameraImageCaptureControl_capture(handle:not null QCameraControlH;fileName:QStringH) return integer;
 pragma Import(C,QCameraImageCaptureControl_capture, "QCameraImageCaptureControl_capture");
 
 procedure QCameraImageCaptureControl_cancelCapture(handle:not null QCameraControlH);
 pragma Import(C,QCameraImageCaptureControl_cancelCapture, "QCameraImageCaptureControl_cancelCapture");

 procedure QCameraImageCaptureControl_signal_slot_readyForCaptureChanged(handle:not null QObjectH; hook: boolProc);
 pragma Import(C,QCameraImageCaptureControl_signal_slot_readyForCaptureChanged, "QCameraImageCaptureControl_signal_slot_readyForCaptureChanged");
 
 procedure QCameraImageCaptureControl_signal_slot_imageExposed(handle:not null QObjectH; hook: intProc);
 pragma Import(C,QCameraImageCaptureControl_signal_slot_imageExposed, "QCameraImageCaptureControl_signal_slot_imageExposed");
 
 procedure QCameraImageCaptureControl_signal_slot_imageCaptured(handle:not null QObjectH; hook: intImageProc);
 pragma Import(C,QCameraImageCaptureControl_signal_slot_imageCaptured, "QCameraImageCaptureControl_signal_slot_imageCaptured");
 
 procedure QCameraImageCaptureControl_signal_slot_imageMetadataAvailable(handle:not null QObjectH; hook: intStringVariantProc);
 pragma Import(C,QCameraImageCaptureControl_signal_slot_imageMetadataAvailable, "QCameraImageCaptureControl_signal_slot_imageMetadataAvailable");
 
 procedure QCameraImageCaptureControl_signal_slot_imageAvailable(handle:not null QObjectH; hook: intVideoFrameProc);
 pragma Import(C,QCameraImageCaptureControl_signal_slot_imageAvailable, "QCameraImageCaptureControl_signal_slot_imageAvailable");
 
 procedure QCameraImageCaptureControl_signal_slot_imageSaved(handle:not null QObjectH; hook: intStringProc);
 pragma Import(C,QCameraImageCaptureControl_signal_slot_imageSaved, "QCameraImageCaptureControl_signal_slot_imageSaved");
 
 procedure QCameraImageCaptureControl_signal_slot_error(handle:not null QObjectH; hook: intintStringProc);
 pragma Import(C,QCameraImageCaptureControl_signal_slot_error, "QCameraImageCaptureControl_signal_slot_error");
 
end;
