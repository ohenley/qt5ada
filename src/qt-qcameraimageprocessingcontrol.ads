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

package Qt.QCameraImageProcessingControl is


 type ProcessingParameter is (WhiteBalancePreset,ColorTemperature,Contrast,
        Saturation,Brightness,Sharpening,Denoising,ContrastAdjustment,SaturationAdjustment,
        BrightnessAdjustment,SharpeningAdjustment,DenoisingAdjustment,ColorFilter, ExtendedParameter); 
 pragma convention(C,ProcessingParameter);         
 for ProcessingParameter use (
        WhiteBalancePreset => 0,
        ColorTemperature   => 1,
        Contrast           => 2,
        Saturation         => 3,
        Brightness         => 4,
        Sharpening         => 5,
        Denoising          => 6,
        ContrastAdjustment => 7,
        SaturationAdjustment => 8,
        BrightnessAdjustment => 9,
        SharpeningAdjustment => 10,
        DenoisingAdjustment  => 11,
        ColorFilter          => 12,
        ExtendedParameter => 1000); 
                
 procedure QCameraImageProcessingControl_delete(handle:not null QCameraControlH);
 pragma Import(C,QCameraImageProcessingControl_delete, "QCameraImageProcessingControl_delete");
 
 function  QCameraImageProcessingControl_isParameterSupported(handle:not null QCameraControlH;parameter: ProcessingParameter) return boolean;
 pragma Import(C,QCameraImageProcessingControl_isParameterSupported, "QCameraImageProcessingControl_isParameterSupported");
 
 function  QCameraImageProcessingControl_isParameterValueSupported(handle:not null QCameraControlH;parameter: ProcessingParameter;value:QVariantH) return boolean;
 pragma Import(C,QCameraImageProcessingControl_isParameterValueSupported, "QCameraImageProcessingControl_isParameterValueSupported");
 
 function  QCameraImageProcessingControl_parameter(handle:not null QCameraControlH;parameter: ProcessingParameter) return QVariantH;
 pragma Import(C,QCameraImageProcessingControl_parameter, "QCameraImageProcessingControl_parameter");
 
 procedure QCameraImageProcessingControl_setParameter(handle:not null QCameraControlH;parameter: ProcessingParameter;value:QVariantH);
 pragma Import(C,QCameraImageProcessingControl_setParameter, "QCameraImageProcessingControl_setParameter");
 

end;
