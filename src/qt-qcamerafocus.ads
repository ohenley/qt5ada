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

package Qt.QCameraFocus  is

 type FocusModes is new integer;
 ManualFocus    : constant FocusModes := 1;
 HyperfocalFocus: constant FocusModes := 2;
 InfinityFocus  : constant FocusModes := 4;
 AutoFocus      : constant FocusModes := 8;
 ContinuousFocus: constant FocusModes := 16#10#;
 MacroFocus     : constant FocusModes := 16#20#; 
        
 type FocusPointMode is (FocusPointAuto,FocusPointCenter,FocusPointFaceDetection,FocusPointCustom);
 pragma convention(C,FocusPointMode);
             
 function  QCameraFocus_isAvailable(handle:not null QCameraFocusH) return boolean;
 pragma Import(C,QCameraFocus_isAvailable, "QCameraFocus_isAvailable");
 
 function  QCameraFocus_focusMode(handle:not null QCameraFocusH) return FocusModes;
 pragma Import(C,QCameraFocus_focusMode, "QCameraFocus_focusMode");
 
 procedure QCameraFocus_setFocusMode(handle:not null QCameraFocusH;mode:FocusModes);
 pragma Import(C,QCameraFocus_setFocusMode, "QCameraFocus_setFocusMode");
 
 function  QCameraFocus_isFocusModeSupported(handle:not null QCameraFocusH;mode:FocusModes) return boolean;
 pragma Import(C,QCameraFocus_isFocusModeSupported, "QCameraFocus_isFocusModeSupported");
 
 function  QCameraFocus_focusPointMode(handle:not null QCameraFocusH) return FocusPointMode;
 pragma Import(C,QCameraFocus_focusPointMode, "QCameraFocus_focusPointMode");
 
 procedure QCameraFocus_setFocusPointMode(handle:not null QCameraFocusH;mode:FocusPointMode);
 pragma Import(C,QCameraFocus_setFocusPointMode, "QCameraFocus_setFocusPointMode");
 
 function  QCameraFocus_isFocusPointModeSupported(handle:not null QCameraFocusH;mode:FocusPointMode) return boolean;
 pragma Import(C,QCameraFocus_isFocusPointModeSupported, "QCameraFocus_isFocusPointModeSupported");
 
 function  QCameraFocus_customFocusPoint(handle:not null QCameraFocusH) return QPointFH;
 pragma Import(C,QCameraFocus_customFocusPoint, "QCameraFocus_customFocusPoint");
 
 procedure QCameraFocus_setCustomFocusPoint(handle:not null QCameraFocusH;point:QPointFH);
 pragma Import(C,QCameraFocus_setCustomFocusPoint, "QCameraFocus_setCustomFocusPoint");
 
 function  QCameraFocus_focusZones(handle:not null QCameraFocusH) return QObjectListH;
 pragma Import(C,QCameraFocus_focusZones, "QCameraFocus_focusZones");
 
 function  QCameraFocus_maximumOpticalZoom(handle:not null QCameraFocusH) return qreal;
 pragma Import(C,QCameraFocus_maximumOpticalZoom, "QCameraFocus_maximumOpticalZoom");
 
 function  QCameraFocus_maximumDigitalZoom(handle:not null QCameraFocusH) return qreal;
 pragma Import(C,QCameraFocus_maximumDigitalZoom, "QCameraFocus_maximumDigitalZoom");
 
 function  QCameraFocus_opticalZoom(handle:not null QCameraFocusH) return qreal;
 pragma Import(C,QCameraFocus_opticalZoom, "QCameraFocus_opticalZoom");
 
 function  QCameraFocus_digitalZoom(handle:not null QCameraFocusH) return qreal;
 pragma Import(C,QCameraFocus_digitalZoom, "QCameraFocus_digitalZoom");
 
 procedure QCameraFocus_zoomTo(handle:not null QCameraFocusH;opticalZoom, digitalZoom:qreal);
 pragma Import(C,QCameraFocus_zoomTo, "QCameraFocus_zoomTo");
 
 procedure QCameraFocus_signal_slot_opticalZoomChanged(handle:not null QCameraFocusH; hook: qrealCallbackH);
 pragma Import(C,QCameraFocus_signal_slot_opticalZoomChanged, "QCameraFocus_signal_slot_opticalZoomChanged");
 
 procedure QCameraFocus_signal_slot_digitalZoomChanged(handle:not null QCameraFocusH;  hook: qrealCallbackH); 
 pragma Import(C,QCameraFocus_signal_slot_digitalZoomChanged, "QCameraFocus_signal_slot_digitalZoomChanged");
 
 procedure QCameraFocus_signal_slot_maximumOpticalZoomChanged(handle:not null QCameraFocusH;  hook: qrealCallbackH); 
 pragma Import(C,QCameraFocus_signal_slot_maximumOpticalZoomChanged, "QCameraFocus_signal_slot_maximumOpticalZoomChanged");
 
 procedure QCameraFocus_signal_slot_maximumDigitalZoomChanged(handle:not null QCameraFocusH;  hook: qrealCallbackH); 
 pragma Import(C,QCameraFocus_signal_slot_maximumDigitalZoomChanged, "QCameraFocus_signal_slot_maximumDigitalZoomChanged");
 
 procedure QCameraFocus_signal_slot_focusZonesChanged(handle:not null QCameraFocusH;  hook: voidCallbackH); 
 pragma Import(C,QCameraFocus_signal_slot_focusZonesChanged, "QCameraFocus_signal_slot_focusZonesChanged");
 
--           focus contro ------------------------------
 procedure QCameraFocusControl_destroy(handle:not null QCameraControlH);
 pragma Import(C,QCameraFocusControl_destroy, "QCameraFocusControl_destroy");
 
 function  QCameraFocusControl_isFocusModeSupported(handle:not null QCameraControlH;mode:FocusModes) return boolean;
 pragma Import(C,QCameraFocusControl_isFocusModeSupported, "QCameraFocusControl_isFocusModeSupported");
 
 function  QCameraFocusControl_focusMode(handle:not null QCameraControlH) return FocusModes;
 pragma Import(C,QCameraFocusControl_focusMode, "QCameraFocusControl_focusMode");
 
 procedure QCameraFocusControl_setFocusMode(handle:not null QCameraControlH;mode:FocusModes);
 pragma Import(C,QCameraFocusControl_setFocusMode, "QCameraFocusControl_setFocusMode");
 
 function  QCameraFocusControl_focusPointMode(handle:not null QCameraControlH) return FocusPointMode;
 pragma Import(C,QCameraFocusControl_focusPointMode, "QCameraFocusControl_focusPointMode");
 
 procedure QCameraFocusControl_setFocusPointMode(handle:not null QCameraControlH;mode:FocusPointMode);
 pragma Import(C,QCameraFocusControl_setFocusPointMode, "QCameraFocusControl_setFocusPointMode");
 
 function  QCameraFocusControl_isFocusPointModeSupported(handle:not null QCameraControlH;mode:FocusPointMode) return boolean;
 pragma Import(C,QCameraFocusControl_isFocusPointModeSupported, "QCameraFocusControl_isFocusPointModeSupported");
 
 function  QCameraFocusControl_customFocusPoint(handle:not null QCameraControlH) return QPointFH;
 pragma Import(C,QCameraFocusControl_customFocusPoint, "QCameraFocusControl_customFocusPoint");
 
 procedure QCameraFocusControl_setCustomFocusPoint(handle:not null QCameraControlH;point:QPointFH);
 pragma Import(C,QCameraFocusControl_setCustomFocusPoint, "QCameraFocusControl_setCustomFocusPoint");
 
 function  QCameraFocusControl_focusZones(handle:not null QCameraControlH) return QObjectListH;
 pragma Import(C,QCameraFocusControl_focusZones, "QCameraFocusControl_focusZones");
 
 type pointFCallbackH is access procedure(point:QPointFH);
 pragma convention(C,pointFCallbackH);

 procedure QCameraFocusControl_signal_slot_focusZonesChanged(handle:not null QCameraControlH;hook: voidCallbackH);
 pragma Import(C,QCameraFocusControl_signal_slot_focusZonesChanged, "QCameraFocusControl_signal_slot_focusZonesChanged");
 
 procedure QCameraFocusControl_signal_slot_focusModeChanged(handle:not null QCameraControlH; hook: intCallbackH);
 pragma Import(C,QCameraFocusControl_signal_slot_focusModeChanged, "QCameraFocusControl_signal_slot_focusModeChanged");
 
 procedure QCameraFocusControl_signal_slot_focusPointModeChanged(handle:not null QCameraControlH; hook: intCallbackH);
 pragma Import(C,QCameraFocusControl_signal_slot_focusPointModeChanged, "QCameraFocusControl_signal_slot_focusPointModeChanged");
 
 procedure QCameraFocusControl_signal_slot_customFocusPointChanged(handle:not null QCameraControlH;hook:pointFCallbackH);
 pragma Import(C,QCameraFocusControl_signal_slot_customFocusPointChanged, "QCameraFocusControl_signal_slot_customFocusPointChanged");
 
end;
