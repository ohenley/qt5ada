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
package Qt.QCameraLocksControl  is 

 procedure QCameraLocksControl_delete(handle:not null QCameraControlH);
 pragma Import(C,QCameraLocksControl_delete, "QCameraLocksControl_delete");
 
 function  QCameraLocksControl_supportedLocks(handle:not null QCameraControlH) return QCameraLockTypes;
 pragma Import(C,QCameraLocksControl_supportedLocks, "QCameraLocksControl_supportedLocks");
 
 function  QCameraLocksControl_lockStatus(handle:not null QCameraControlH;lock:QCameraLockType) return QCameraLockStatus;
 pragma Import(C,QCameraLocksControl_lockStatus, "QCameraLocksControl_lockStatus");
 
 procedure QCameraLocksControl_searchAndLock(handle:not null QCameraControlH;locks:QCameraLockTypes);
 pragma Import(C,QCameraLocksControl_searchAndLock, "QCameraLocksControl_searchAndLock");
 
 procedure QCameraLocksControl_unlock(handle:not null QCameraControlH;locks:QCameraLockTypes);
 pragma Import(C,QCameraLocksControl_unlock, "QCameraLocksControl_unlock");
 
 type lockCallbackH is access procedure(tp:QCameraLockType;status: QCameraLockStatus; reason:QCameraLockChangeReason);
 pragma convention(C,lockCallbackH);
 
 procedure QCameraLocksControl_signal_slot_lockStatusChanged(handle:not null QObjectH; hook: lockCallbackH);
 pragma Import(C,QCameraLocksControl_signal_slot_lockStatusChanged, "QCameraLocksControl_signal_slot_lockStatusChanged");
 

end;
