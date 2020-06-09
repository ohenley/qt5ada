--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QVideoWidget is
            
 VideoWidgetAspectRatioAuto     : constant := 0;
 VideoWidgetAspectRatioWidget   : constant := 1;
 VideoWidgetAspectRatio4_3      : constant := 2;
 VideoWidgetAspectRatio16_9     : constant := 3;

 VideoWidgetFitInView           : constant := 0;
 VideoWidgetScaleAndCrop        : constant := 1;

 type intProc    is access procedure(x:integer);
 pragma Convention(C,intProc);
 
 type boolProc   is access procedure(isVisible: boolean);
 pragma Convention(C,boolProc);

 function  QVideoWidget_create(parent: QWidgetH := null) return QVideoWidgetH;
 pragma Import(C,QVideoWidget_create,"QVideoWidget_create");

 function  QVideoWidget_createCustom(parent: QWidgetH := null) return QVideoWidgetH;
 pragma Import(C,QVideoWidget_createCustom,"QVideoWidget_createCustom");

 procedure QVideoWidget_destroy(handle: not null QVideoWidgetH) ;
 pragma Import(C,QVideoWidget_destroy,"QVideoWidget_destroy");

 function  QVideoWidget_mediaObject(handle: not null QVideoWidgetH) return QMediaObjectH;
 pragma Import(C,QVideoWidget_mediaObject, "QVideoWidget_mediaObject");
 

 function  QVideoWidget_contrast (handle: not null QVideoWidgetH) return    float;
 pragma Import(C,QVideoWidget_contrast,"QVideoWidget_contrast");

 function  QVideoWidget_hue(handle: not null QVideoWidgetH) return  float;
 pragma Import(C,QVideoWidget_hue,"QVideoWidget_hue");

 function  QVideoWidget_saturation(handle: not null QVideoWidgetH) return   float;
 pragma Import(C,QVideoWidget_saturation,"QVideoWidget_saturation");

 function  QVideoWidget_brightness(handle: not null QVideoWidgetH) return   float;
 pragma Import(C,QVideoWidget_brightness,"QVideoWidget_brightness");

 procedure QVideoWidget_setAspectRatioMode(handle: not null QVideoWidgetH;mode:QtAspectRatioMode);
 pragma Import(C,QVideoWidget_setAspectRatioMode, "QVideoWidget_setAspectRatioMode");
 
 function  QVideoWidget_aspectRatioMode(handle: not null QVideoWidgetH) return QtAspectRatioMode;
 pragma Import(C,QVideoWidget_aspectRatioMode, "QVideoWidget_aspectRatioMode");
 
 function  QVideoWidget_sizeHint(handle: not null QVideoWidgetH) return QSizeH;
 pragma Import(C,QVideoWidget_sizeHint, "QVideoWidget_sizeHint");


 procedure QVideoWidget_setBrightness(handle: not null QVideoWidgetH; brightness: float);
 pragma Import(C,QVideoWidget_setBrightness,"QVideoWidget_setBrightness");

 procedure QVideoWidget_setContrast(handle: not null QVideoWidgetH; contrast: float);
 pragma Import(C,QVideoWidget_setContrast,"QVideoWidget_setContrast");

 procedure QVideoWidget_setHue(handle: not null QVideoWidgetH; hue: float);
 pragma Import(C,QVideoWidget_setHue,"QVideoWidget_setHue");

 procedure QVideoWidget_setSaturation(handle: not null QVideoWidgetH; saturation: float);
 pragma Import(C,QVideoWidget_setSaturation,"QVideoWidget_setSaturation");

 procedure QVideoWidget_setFullScreen(handle: not null QVideoWidgetH; fullscreen: boolean);
 pragma Import(C,QVideoWidget_setFullScreen,"QVideoWidget_setFullScreen");

 function  QVideoWidget_setMediaObject(handle: not null QVideoWidgetH;mediaObject:QMediaObjectH) return boolean;
 pragma Import(C,QVideoWidget_setMediaObject, "QVideoWidget_setMediaObject");
 
 function  QVideoWidget_event(handle: not null QVideoWidgetH;event:QEventH) return boolean;
 pragma Import(C,QVideoWidget_event, "QVideoWidget_event");
 
 procedure QVideoWidget_showEvent(handle: not null QVideoWidgetH;event:QShowEventH);
 pragma Import(C,QVideoWidget_showEvent, "QVideoWidget_showEvent");
 
 procedure QVideoWidget_hideEvent(handle: not null QVideoWidgetH;event:QHideEventH);
 pragma Import(C,QVideoWidget_hideEvent, "QVideoWidget_hideEvent");
 
 procedure QVideoWidget_resizeEvent(handle: not null QVideoWidgetH;event:QResizeEventH);
 pragma Import(C,QVideoWidget_resizeEvent, "QVideoWidget_resizeEvent");
 
 procedure QVideoWidget_moveEvent(handle: not null QVideoWidgetH;event:QMoveEventH);
 pragma Import(C,QVideoWidget_moveEvent, "QVideoWidget_moveEvent");
 
 procedure QVideoWidget_paintEvent(handle: not null QVideoWidgetH;event:QPaintEventH);
 pragma Import(C,QVideoWidget_paintEvent, "QVideoWidget_paintEvent");

 procedure QVideoWidget_signal_slot_fullScreenChanged(handle: not null QVideoWidgetH; hook: boolProc);
 pragma Import(C,QVideoWidget_signal_slot_fullScreenChanged, "QVideoWidget_signal_slot_fullScreenChanged");
 
 procedure QVideoWidget_signal_slot_saturationChanged(handle: not null QVideoWidgetH; hook:intProc);
 pragma Import(C,QVideoWidget_signal_slot_saturationChanged, "QVideoWidget_signal_slot_saturationChanged");
 
 procedure QVideoWidget_signal_slot_hueChanged(handle: not null QVideoWidgetH; hook:intProc);     
 pragma Import(C,QVideoWidget_signal_slot_hueChanged, "QVideoWidget_signal_slot_hueChanged");
 
 procedure QVideoWidget_signal_slot_contrastChanged(handle: not null QVideoWidgetH; hook:intProc);     
 pragma Import(C,QVideoWidget_signal_slot_contrastChanged, "QVideoWidget_signal_slot_contrastChanged");
 
 procedure QVideoWidget_signal_slot_brightnessChanged(handle: not null QVideoWidgetH; hook:intProc);     
 pragma Import(C,QVideoWidget_signal_slot_brightnessChanged, "QVideoWidget_signal_slot_brightnessChanged");
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
 procedure   QVideoWidgetControl_destroy(handle: not null QVideoWidgetControlH);
 pragma Import(C,QVideoWidgetControl_destroy, "QVideoWidgetControl_destroy");
 
 function  QVideoWidgetControl_brightness(handle: not null QVideoWidgetControlH) return qreal;
 pragma Import(C,QVideoWidgetControl_brightness, "QVideoWidgetControl_brightness");
 
 procedure   QVideoWidgetControl_setBrightness(handle: not null QVideoWidgetControlH; brightness:qreal);
 pragma Import(C,QVideoWidgetControl_setBrightness, "QVideoWidgetControl_setBrightness");
 
 function  QVideoWidgetControl_contrast (handle: not null QVideoWidgetControlH) return qreal;
 pragma Import(C,QVideoWidgetControl_contrast, "QVideoWidgetControl_contrast");
 
 procedure   QVideoWidgetControl_setContrast(handle: not null QVideoWidgetControlH; contrast:qreal);
 pragma Import(C,QVideoWidgetControl_setContrast, "QVideoWidgetControl_setContrast");
 
 function  QVideoWidgetControl_hue(handle: not null QVideoWidgetControlH) return qreal ;
 pragma Import(C,QVideoWidgetControl_hue, "QVideoWidgetControl_hue");
 
 procedure   QVideoWidgetControl_setHue(handle: not null QVideoWidgetControlH; hue:qreal);
 pragma Import(C,QVideoWidgetControl_setHue, "QVideoWidgetControl_setHue");
 
 function  QVideoWidgetControl_saturation(handle: not null QVideoWidgetControlH) return qreal ;
 pragma Import(C,QVideoWidgetControl_saturation, "QVideoWidgetControl_saturation");
 
 procedure QVideoWidgetControl_setSaturation(handle: not null QVideoWidgetControlH; saturation:qreal);
 pragma Import(C,QVideoWidgetControl_setSaturation, "QVideoWidgetControl_setSaturation");
 
 function  QVideoWidgetControl_videoWidget(handle: not null QVideoWidgetControlH) return QWidgetH;
 pragma Import(C,QVideoWidgetControl_videoWidget, "QVideoWidgetControl_videoWidget");
 
 function  QVideoWidgetControl_aspectRatioMode(handle: not null QVideoWidgetControlH) return QtAspectRatioMode;
 pragma Import(C,QVideoWidgetControl_aspectRatioMode, "QVideoWidgetControl_aspectRatioMode");
 
 procedure QVideoWidgetControl_setAspectRatioMode(handle: not null QVideoWidgetControlH;mode:QtAspectRatioMode);
 pragma Import(C,QVideoWidgetControl_setAspectRatioMode, "QVideoWidgetControl_setAspectRatioMode");
 
 function  QVideoWidgetControl_isFullScreen(handle: not null QVideoWidgetControlH) return boolean;
 pragma Import(C,QVideoWidgetControl_isFullScreen, "QVideoWidgetControl_isFullScreen");
 
 procedure QVideoWidgetControl_setFullScreen(handle: not null QVideoWidgetControlH; isFullScreen:boolean);
 pragma Import(C,QVideoWidgetControl_setFullScreen, "QVideoWidgetControl_setFullScreen");

 procedure QVideoWidgetControl_signal_slot_fullScreenChanged(handle: not null QVideoWidgetControlH; hook: boolProc);
 pragma Import(C,QVideoWidgetControl_signal_slot_fullScreenChanged, "QVideoWidgetControl_signal_slot_fullScreenChanged");
 
 procedure QVideoWidgetControl_signal_slot_saturationChanged(handle: not null QVideoWidgetControlH; hook:intProc);
 pragma Import(C,QVideoWidgetControl_signal_slot_saturationChanged, "QVideoWidgetControl_signal_slot_saturationChanged");
 
 procedure QVideoWidgetControl_signal_slot_hueChanged(handle: not null QVideoWidgetControlH; hook:intProc);     
 pragma Import(C,QVideoWidgetControl_signal_slot_hueChanged, "QVideoWidgetControl_signal_slot_hueChanged");
 
 procedure QVideoWidgetControl_signal_slot_contrastChanged(handle: not null QVideoWidgetControlH; hook:intProc);     
 pragma Import(C,QVideoWidgetControl_signal_slot_contrastChanged, "QVideoWidgetControl_signal_slot_contrastChanged");
 
 procedure QVideoWidgetControl_signal_slot_brightnessChanged(handle: not null QVideoWidgetControlH; hook:intProc);     
 pragma Import(C,QVideoWidgetControl_signal_slot_brightnessChanged, "QVideoWidgetControl_signal_slot_brightnessChanged");

 function  QVideoWidget_videoSurface(handle:not null QVideoWidgetH) return QAbstractVideoSurfaceH;
 pragma Import(C,QVideoWidget_videoSurface, "QVideoWidget_videoSurface");
 
 function  QVideoWidget_isFullScreen(handle:not null QVideoWidgetH) return boolean;
 pragma Import(C,QVideoWidget_isFullScreen, "QVideoWidget_isFullScreen");
 
end Qt.QVideoWidget;
