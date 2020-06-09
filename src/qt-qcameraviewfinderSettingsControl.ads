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

package Qt.QCameraViewfinderSettingsControl  is

 type ViewfinderParameter is (Resolution,PixelAspectRatio,MinimumFrameRate,
        MaximumFrameRate,PixelFormat,UserParameter);
 pragma convention(C,ViewfinderParameter);

 for  ViewfinderParameter  use (
        Resolution =>       0,
        PixelAspectRatio => 1,
        MinimumFrameRate => 2,
        MaximumFrameRate => 3,
        PixelFormat      => 4,
        UserParameter => 1000);        
        
 procedure QCameraViewfinderSettingsControl_delete(handle:not null QCameraControlH);
 pragma Import(C,QCameraViewfinderSettingsControl_delete, "QCameraViewfinderSettingsControl_delete");
 
 function  QCameraViewfinderSettingsControl_isViewfinderParameterSupported(handle:not null QCameraControlH;parameter:ViewfinderParameter) return boolean;
 pragma Import(C,QCameraViewfinderSettingsControl_isViewfinderParameterSupported, "QCameraViewfinderSettingsControl_isViewfinderParameterSupported");
 
 function  QCameraViewfinderSettingsControl_viewfinderParameter(handle:not null QCameraControlH;parameter:ViewfinderParameter) return QVariantH;
 pragma Import(C,QCameraViewfinderSettingsControl_viewfinderParameter, "QCameraViewfinderSettingsControl_viewfinderParameter");
 
 procedure QCameraViewfinderSettingsControl_setViewfinderParameter(handle:not null QCameraControlH;parameter:ViewfinderParameter;value:QVariantH);
 pragma Import(C,QCameraViewfinderSettingsControl_setViewfinderParameter, "QCameraViewfinderSettingsControl_setViewfinderParameter");
 

end;
