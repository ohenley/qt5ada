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

with Qt.QCamera;  use Qt.QCamera;
package Qt.QCameraFlashControl  is

 procedure QCameraFlashControl_destroy(handle:not null QCameraControlH);
 pragma Import(C,QCameraFlashControl_destroy, "QCameraFlashControl_destroy");
 
 function  QCameraFlashControl_flashMode(handle:not null QCameraControlH) return FlashModes;
 pragma Import(C,QCameraFlashControl_flashMode, "QCameraFlashControl_flashMode");
 
 procedure QCameraFlashControl_setFlashMode(handle:not null QCameraControlH;mode:FlashModes);
 pragma Import(C,QCameraFlashControl_setFlashMode, "QCameraFlashControl_setFlashMode");
 
 function  QCameraFlashControl_isFlashModeSupported(handle:not null QCameraControlH;mode:FlashModes) return boolean;
 pragma Import(C,QCameraFlashControl_isFlashModeSupported, "QCameraFlashControl_isFlashModeSupported");
 
 function  QCameraFlashControl_isFlashReady(handle:not null QCameraControlH) return boolean;
 pragma Import(C,QCameraFlashControl_isFlashReady, "QCameraFlashControl_isFlashReady");
 

end;
