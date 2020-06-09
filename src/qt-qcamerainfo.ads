--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2019                      บ
-- บ Copyright (C) 2012,2015,2019                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *
with Qt.QCamera;  use Qt.QCamera;
with Qt.QByteArray; use Qt.QByteArray;
package Qt.QCameraInfo  is

 function  QCameraInfo_create(camera:QCameraH) return QCameraInfoH ;
 pragma Import(C,QCameraInfo_create, "QCameraInfo_create");
 
 function  QCamera_create2(name:QByteArrayH := QByteArray_create) return QCameraInfoH ;
 pragma Import(C,QCamera_create2, "QCamera_create2");
 
 procedure QCameraInfo_destroy(handle:not null QCameraH);
 pragma Import(C,QCameraInfo_destroy, "QCameraInfo_destroy");
 
 function  QCameraInfo_isNull(handle:not null QCameraInfoH) return boolean;
 pragma Import(C,QCameraInfo_isNull, "QCameraInfo_isNull");
 
 function  QCameraInfo_deviceName(handle:not null QCameraInfoH) return QStringH;
 pragma Import(C,QCameraInfo_deviceName, "QCameraInfo_deviceName");
 
 function  QCameraInfo_description(handle:not null QCameraInfoH) return QStringH;
 pragma Import(C,QCameraInfo_description, "QCameraInfo_description");
 
 function  QCameraInfo_position(handle:not null QCameraInfoH) return QCameraPosition;
 pragma Import(C,QCameraInfo_position, "QCameraInfo_position");
 
 function  QCameraInfo_orientation(handle:not null QCameraInfoH) return integer;
 pragma Import(C,QCameraInfo_orientation, "QCameraInfo_orientation");
 
 function  QCameraInfo_defaultCamera return QCameraInfoH;
 pragma Import(C,QCameraInfo_defaultCamera, "QCameraInfo_defaultCamera");
 
 function  QCameraInfo_availableCameras(pos:QCameraPosition := UnspecifiedPosition) return QObjectListH;
 pragma Import(C,QCameraInfo_availableCameras, "QCameraInfo_availableCameras");
 
 function  QCameraInfo_availableCamerasCount(pos:QCameraPosition := UnspecifiedPosition) return integer;
 pragma Import(C,QCameraInfo_availableCamerasCount, "QCameraInfo_availableCamerasCount");
 
 function  QCameraInfo_availableCameraAt(index:integer;pos:QCameraPosition := UnspecifiedPosition) return QCameraInfoH;
 pragma Import(C,QCameraInfo_availableCameraAt, "QCameraInfo_availableCameraAt");
 
 procedure QCameraInfoControl_destroy(handle:not null QCameraControlH);
 pragma Import(C,QCameraInfoControl_destroy, "QCameraInfoControl_destroy");
 
 function  QCameraInfoControl_cameraPosition(handle:not null QCameraInfoH;deviceName:QStringH) return QCameraPosition;
 pragma Import(C,QCameraInfoControl_cameraPosition, "QCameraInfoControl_cameraPosition");
 
 function  QCameraInfoControl_cameraOrientation(handle:not null QCameraInfoH;deviceName:QStringH) return integer;
 pragma Import(C,QCameraInfoControl_cameraOrientation, "QCameraInfoControl_cameraOrientation");

 function  QCamera_create(name:QByteArrayH := QByteArray_create) return QCameraInfoH ;
 
 function  QCameraInfo_availableCameraDescriptionAt(index:integer;pos:QCameraPosition := UnspecifiedPosition) return QStringH;

function  QCameraInfo_availableCameraDeviceNameAt(index:integer;pos:QCameraPosition := UnspecifiedPosition) return QStringH;


end;
