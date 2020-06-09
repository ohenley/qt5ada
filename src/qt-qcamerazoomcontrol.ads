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

package Qt.QCameraZoomControl  is

 procedure QCameraZoomControl_delete(handle:not null QCameraControlH);
 pragma Import(C,QCameraZoomControl_delete, "QCameraZoomControl_delete");
 
 function  QCameraZoomControl_maximumOpticalZoom(handle:not null QCameraControlH) return qreal;
 pragma Import(C,QCameraZoomControl_maximumOpticalZoom, "QCameraZoomControl_maximumOpticalZoom");
 
 function  QCameraZoomControl_maximumDigitalZoom(handle:not null QCameraControlH) return qreal;
 pragma Import(C,QCameraZoomControl_maximumDigitalZoom, "QCameraZoomControl_maximumDigitalZoom");
 
 function  QCameraZoomControl_requestedOpticalZoom(handle:not null QCameraControlH) return qreal;
 pragma Import(C,QCameraZoomControl_requestedOpticalZoom, "QCameraZoomControl_requestedOpticalZoom");
 
 function  QCameraZoomControl_requestedDigitalZoom(handle:not null QCameraControlH) return qreal;
 pragma Import(C,QCameraZoomControl_requestedDigitalZoom, "QCameraZoomControl_requestedDigitalZoom");
 
 function  QCameraZoomControl_currentOpticalZoom(handle:not null QCameraControlH) return qreal;
 pragma Import(C,QCameraZoomControl_currentOpticalZoom, "QCameraZoomControl_currentOpticalZoom");
 
 function  QCameraZoomControl_currentDigitalZoom(handle:not null QCameraControlH) return qreal;
 pragma Import(C,QCameraZoomControl_currentDigitalZoom, "QCameraZoomControl_currentDigitalZoom");
 
 procedure QCameraZoomControl_zoomTo(handle:not null QCameraControlH;optical,digital:qreal);
 pragma Import(C,QCameraZoomControl_zoomTo, "QCameraZoomControl_zoomTo");
 
 procedure QCameraZoomControl_signal_slot_maximumOpticalZoomChanged(handle:not null QObjectH; hook: qrealCallbackH);
 pragma Import(C,QCameraZoomControl_signal_slot_maximumOpticalZoomChanged, "QCameraZoomControl_signal_slot_maximumOpticalZoomChanged");
 
 procedure QCameraZoomControl_signal_slot_maximumDigitalZoomChanged(handle:not null QObjectH; hook: qrealCallbackH); 
 pragma Import(C,QCameraZoomControl_signal_slot_maximumDigitalZoomChanged, "QCameraZoomControl_signal_slot_maximumDigitalZoomChanged");
 
 procedure QCameraZoomControl_signal_slot_requestedOpticalZoomChanged(handle:not null QObjectH; hook: qrealCallbackH); 
 pragma Import(C,QCameraZoomControl_signal_slot_requestedOpticalZoomChanged, "QCameraZoomControl_signal_slot_requestedOpticalZoomChanged");
 
 procedure QCameraZoomControl_signal_slot_requestedDigitalZoomChanged(handle:not null QObjectH; hook: qrealCallbackH); 
 pragma Import(C,QCameraZoomControl_signal_slot_requestedDigitalZoomChanged, "QCameraZoomControl_signal_slot_requestedDigitalZoomChanged");
 
 procedure QCameraZoomControl_signal_slot_currentOpticalZoomChanged(handle:not null QObjectH; hook: qrealCallbackH); 
 pragma Import(C,QCameraZoomControl_signal_slot_currentOpticalZoomChanged, "QCameraZoomControl_signal_slot_currentOpticalZoomChanged");
 
 procedure QCameraZoomControl_signal_slot_currentDigitalZoomChanged(handle:not null QObjectH; hook: qrealCallbackH); 
 pragma Import(C,QCameraZoomControl_signal_slot_currentDigitalZoomChanged, "QCameraZoomControl_signal_slot_currentDigitalZoomChanged");

end;
