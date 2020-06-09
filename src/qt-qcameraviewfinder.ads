--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QCameraViewfinder is

 function  QCameraViewfinder_create(parent:QWidgetH := null) return QCameraViewfinderH;
 pragma Import(C,QCameraViewfinder_create, "QCameraViewfinder_create");
 
 procedure QCameraViewfinder_destroy(handle: not null QCameraViewfinderH);
 pragma Import(C,QCameraViewfinder_destroy, "QCameraViewfinder_destroy");
 
 function  QCameraViewfinder_mediaObject(handle: not null QCameraViewfinderH) return QMediaObjectH;
 pragma Import(C,QCameraViewfinder_mediaObject, "QCameraViewfinder_mediaObject");
 
 function  QCameraViewfinder_setMediaObject(handle: not null QCameraViewfinderH;object: not null QMediaObjectH) return boolean;
 pragma Import(C,QCameraViewfinder_setMediaObject, "QCameraViewfinder_setMediaObject");
 
end;
