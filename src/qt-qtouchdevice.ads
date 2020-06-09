--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2013                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QTouchDevice is

 type DeviceType is (TouchScreen, TouchPad);
 pragma convention(C,DeviceType); 
 
 Position           : constant quint := 16#01#;
 Area               : constant quint := 16#02#;
 Pressure           : constant quint := 16#04#;
 Velocity           : constant quint := 16#08#;
 RawPositions       : constant quint := 16#10#;
 NormalizedPosition : constant quint := 16#20#;
        
 function  QTouchDevice_create return QTouchDeviceH ;
 pragma Import(C,QTouchDevice_create, "QTouchDevice_create");
 
 procedure QTouchDevice_destroy(handle: not null QTouchDeviceH);
 pragma Import(C,QTouchDevice_destroy, "QTouchDevice_destroy");
 
 function  QTouchDevice_name(handle: not null QTouchDeviceH) return QStringH;
 pragma Import(C,QTouchDevice_name, "QTouchDevice_name");
 
 function  QTouchDevice_type(handle: not null QTouchDeviceH) return DeviceType;
 pragma Import(C,QTouchDevice_type, "QTouchDevice_type");
 
 function  QTouchDevice_capabilities(handle: not null QTouchDeviceH) return quint;
 pragma Import(C,QTouchDevice_capabilities, "QTouchDevice_capabilities");
 
 procedure QTouchDevice_setName(handle: not null QTouchDeviceH;name:QStringH);
 pragma Import(C,QTouchDevice_setName, "QTouchDevice_setName");
 
 procedure QTouchDevice_setType(handle: not null QTouchDeviceH; devType:DeviceType);
 pragma Import(C,QTouchDevice_setType, "QTouchDevice_setType");
 
 procedure QTouchDevice_setCapabilities(handle: not null QTouchDeviceH;caps:quint);
 pragma Import(C,QTouchDevice_setCapabilities, "QTouchDevice_setCapabilities");
 
 function  QTouchDevice_devices return QObjectListH;
 pragma Import(C,QTouchDevice_devices, "QTouchDevice_devices");
 
end;
