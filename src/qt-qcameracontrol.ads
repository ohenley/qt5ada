--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QCamera;  use Qt.QCamera;
package Qt.QCameraControl  is

 type PropertyChangeType is (nonused,CaptureMode,ImageEncodingSettings,VideoEncodingSettings,Viewfinder,ViewfinderSettings);
 pragma convention(C,PropertyChangeType);
        
 procedure QCameraControl_delete(handle:not null QCameraControlH);
 pragma Import(C,QCameraControl_delete, "QCameraControl_delete");
 
 procedure QCameraControl_setState(handle:not null QCameraControlH;state:QCameraState);
 pragma Import(C,QCameraControl_setState, "QCameraControl_setState");
 
 function  QCameraControl_state(handle:not null QCameraControlH) return QCameraState;
 pragma Import(C,QCameraControl_state, "QCameraControl_state");
 
 function  QCameraControl_status(handle:not null QCameraControlH) return QCameraStatus;
 pragma Import(C,QCameraControl_status, "QCameraControl_status");
 
 function  QCameraControl_captureMode(handle:not null QCameraControlH) return QCameraCaptureModes;
 pragma Import(C,QCameraControl_captureMode, "QCameraControl_captureMode");
 
 procedure QCameraControl_setCaptureMode(handle:not null QCameraControlH;mode:QCameraCaptureModes);
 pragma Import(C,QCameraControl_setCaptureMode, "QCameraControl_setCaptureMode");
 
 function  QCameraControl_isCaptureModeSupported(handle:not null QCameraControlH;mode:QCameraCaptureModes) return boolean;
 pragma Import(C,QCameraControl_isCaptureModeSupported, "QCameraControl_isCaptureModeSupported");
 
 function  QCameraControl_canChangeProperty(handle:not null QCameraControlH;changeType:PropertyChangeType; status: QCameraStatus) return boolean;
 pragma Import(C,QCameraControl_canChangeProperty, "QCameraControl_canChangeProperty");
 
 type intStringCallbackH is access procedure(ind:integer; text: QStringH);
 pragma convention(C,intStringCallbackH);
 
 procedure QCameraControl_signal_slot_stateChanged(handle:not null QObjectH;hook: intCallbackH);
 pragma Import(C,QCameraControl_signal_slot_stateChanged, "QCameraControl_signal_slot_stateChanged");
 
 procedure QCameraControl_signal_slot_statusChanged(handle:not null QObjectH; hook: intCallbackH);
 pragma Import(C,QCameraControl_signal_slot_statusChanged, "QCameraControl_signal_slot_statusChanged");
 
 procedure QCameraControl_signal_slot_captureModeChanged(handle:not null QObjectH; hook: intCallbackH);
 pragma Import(C,QCameraControl_signal_slot_captureModeChanged, "QCameraControl_signal_slot_captureModeChanged");
 
 procedure QCameraControl_signal_slot_error(handle:not null QObjectH; hook: intStringCallbackH);
 pragma Import(C,QCameraControl_signal_slot_error, "QCameraControl_signal_slot_error");

end;
