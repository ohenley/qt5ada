--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QCamera  is

 function  QCamera_create(device:QByteArrayH;parent:QObjectH := null) return QCameraH  is
 begin
   return  QCamera_create2(device,parent);
 end;

 procedure QCamera_setViewfinder(handle: not null QCameraH; viewfinder:QGraphicsVideoItemH) is
 begin
    QCamera_setViewfinder2(handle, viewfinder);
 end;

 procedure QCamera_setViewfinder(handle: not null QCameraH;surface:QAbstractVideoSurfaceH) is
 begin
    QCamera_setViewfinder3(handle,surface);
 end;

 function  QCamera_lockStatus(handle: not null QCameraH;lock:QCameraLockTypes) return QCameraLockStatus is
 begin
   return  QCamera_lockStatus2(handle,lock);
 end;

 procedure QCamera_searchAndLock(handle: not null QCameraH;locks:QCameraLockTypes) is
 begin
   QCamera_searchAndLock2(handle,locks);
 end;

 procedure QCamera_signal_slot_lockStatusChanged(handle: not null QCameraH;hook:intIntIntProc) is
 begin
  QCamera_signal_slot_lockStatusChanged2(handle,hook);
 end;

 procedure QCameraImageProcessing_setManualWhiteBalance(handle: not null QCameraImageProcessingH; colorTemperature:qreal) is
 begin
  QCameraImageProcessing_setManualWhiteBalance2(handle,colorTemperature);
 end;

 function  QCameraFocusZone_create(area:QRectFH;status:FocusZoneStatus := Selected) return QCameraFocusZoneH is
 begin
   return  QCameraFocusZone_create2(area,status);
 end;

 function  QCameraFocusZone_create(otheFocus:QCameraFocusZoneH) return QCameraFocusZoneH is
 begin
   return  QCameraFocusZone_create3(otheFocus);
 end;

end;
