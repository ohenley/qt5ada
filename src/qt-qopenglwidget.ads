--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2010                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2014 ,2020                                          บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPaintDevice; use Qt.QPaintDevice;
with Qt.QGlobal;      use Qt.QGlobal;         
package Qt.QOpenGLWidget is
 
 function  QOpenGLWidget_create(parent:QWidgetH := null;flags:integer := QGlobal_WindowFlags) return QOpenGLWidgetH;
 pragma Import(C,QOpenGLWidget_create, "QOpenGLWidget_create");
 
 procedure QOpenGLWidget_destroy(handle:not null QOpenGLWidgetH);
 pragma Import(C,QOpenGLWidget_destroy, "QOpenGLWidget_destroy");
 
 function  QOpenGLWidget_isValid(handle:not null QOpenGLWidgetH) return boolean;
 pragma Import(C,QOpenGLWidget_isValid, "QOpenGLWidget_isValid");
 
 procedure QOpenGLWidget_makeCurrent(handle:not null QOpenGLWidgetH);
 pragma Import(C,QOpenGLWidget_makeCurrent, "QOpenGLWidget_makeCurrent");
 
 procedure QOpenGLWidget_doneCurrent(handle:not null QOpenGLWidgetH);
 pragma Import(C,QOpenGLWidget_doneCurrent, "QOpenGLWidget_doneCurrent");
 
 function  QOpenGLWidget_context(handle:not null QOpenGLWidgetH) return QOpenGLContextH;
 pragma Import(C,QOpenGLWidget_context, "QOpenGLWidget_context");
 
 function  QOpenGLWidget_defaultFramebufferObject(handle:not null QOpenGLWidgetH) return quint;
 pragma Import(C,QOpenGLWidget_defaultFramebufferObject, "QOpenGLWidget_defaultFramebufferObject");
 
 function  QOpenGLWidget_grabFramebuffer(handle:not null QOpenGLWidgetH) return QImageH;
 pragma Import(C,QOpenGLWidget_grabFramebuffer, "QOpenGLWidget_grabFramebuffer");
 
 procedure QOpenGLWidget_initializeGL(handle:not null QOpenGLWidgetH);
 pragma Import(C,QOpenGLWidget_initializeGL, "QOpenGLWidget_initializeGL");
 
 procedure QOpenGLWidget_resizeGL(handle:not null QOpenGLWidgetH;w,h: integer);
 pragma Import(C,QOpenGLWidget_resizeGL, "QOpenGLWidget_resizeGL");
 
 procedure QOpenGLWidget_paintGL(handle:not null QOpenGLWidgetH);
 pragma Import(C,QOpenGLWidget_paintGL, "QOpenGLWidget_paintGL");
 
 procedure QOpenGLWidget_paintEvent(handle:not null QOpenGLWidgetH;event:QPaintEventH);
 pragma Import(C,QOpenGLWidget_paintEvent, "QOpenGLWidget_paintEvent");
 
 procedure QOpenGLWidget_resizeEvent(handle:not null QOpenGLWidgetH;event:QResizeEventH);
 pragma Import(C,QOpenGLWidget_resizeEvent, "QOpenGLWidget_resizeEvent");
 
 function  QOpenGLWidget_metric(handle:not null QOpenGLWidgetH;metric:QPaintDevicePaintDeviceMetric) return integer;
 pragma Import(C,QOpenGLWidget_metric, "QOpenGLWidget_metric");
 
 function  QOpenGLWidget_redirected(handle:not null QOpenGLWidgetH;point:QPointH) return QPaintDeviceH;
 pragma Import(C,QOpenGLWidget_redirected, "QOpenGLWidget_redirected");
 
 procedure QOpenGLWidget_setFormat(handle:not null QOpenGLWidgetH;format:QSurfaceFormatH);
 pragma Import(C,QOpenGLWidget_setFormat, "QOpenGLWidget_setFormat");
 
 function  QOpenGLWidget_format(handle:not null QOpenGLWidgetH) return QSurfaceFormatH;
 pragma Import(C,QOpenGLWidget_format, "QOpenGLWidget_format");
 
 function  QOpenGLWidget_event(handle:not null QOpenGLWidgetH;event:QEventH) return boolean;
 pragma Import(C,QOpenGLWidget_event, "QOpenGLWidget_event");
 
 function  QOpenGLWidget_paintEngine(handle:not null QOpenGLWidgetH) return QPaintEngineH;
 pragma Import(C,QOpenGLWidget_paintEngine, "QOpenGLWidget_paintEngine");

 procedure QOpenGLWidget_showMaximized(handle:not null QOpenGLWidgetH);
 pragma Import(C,QOpenGLWidget_showMaximized, "QOpenGLWidget_showMaximized");
 
 procedure QOpenGLWidget_show(handle:not null QOpenGLWidgetH);
 pragma Import(C,QOpenGLWidget_show, "QOpenGLWidget_show");
 
 procedure QOpenGLWidget_resize(handle:not null QOpenGLWidgetH;w,h:integer);
 pragma Import(C,QOpenGLWidget_resize, "QOpenGLWidget_resize");
 
 function  QOpenGLWidget_to_QPaintDevice(handle:not null QOpenGLWidgetH) return QPaintDeviceH;
 pragma Import(C,QOpenGLWidget_to_QPaintDevice, "QOpenGLWidget_to_QPaintDevice");
 
 function  QOpenGLWidget_painter(handle:not null QOpenGLWidgetH) return QPainterH;
 pragma Import(C,QOpenGLWidget_painter, "QOpenGLWidget_painter");
 
 function  QOpenGLWidget_window(handle:not null QOpenGLWidgetH) return QWidgetH;
 pragma Import(C,QOpenGLWidget_window, "QOpenGLWidget_window");
 
 function  QOpenGLWidget_defaultFormat return QSurfaceFormatH;
 pragma Import(C,QOpenGLWidget_defaultFormat, "QOpenGLWidget_defaultFormat");
 
 procedure QOpenGLWidget_sigmal_slot_aboutToCompose(handle:not null QOpenGLWidgetH; hook: voidCallbackH);
 pragma Import(C,QOpenGLWidget_sigmal_slot_aboutToCompose, "QOpenGLWidget_sigmal_slot_aboutToCompose");

 procedure QOpenGLWidget_sigmal_slot_frameSwapped(handle:not null QOpenGLWidgetH; hook: voidCallbackH);
 pragma Import(C,QOpenGLWidget_sigmal_slot_frameSwapped, "QOpenGLWidget_sigmal_slot_frameSwapped");

 procedure QOpenGLWidget_sigmal_slot_aboutToResize(handle:not null QOpenGLWidgetH; hook: voidCallbackH);
 pragma Import(C,QOpenGLWidget_sigmal_slot_aboutToResize, "QOpenGLWidget_sigmal_slot_aboutToResize");

 procedure QOpenGLWidget_sigmal_slot_resized(handle:not null QOpenGLWidgetH; hook: voidCallbackH);
 pragma Import(C,QOpenGLWidget_sigmal_slot_resized, "QOpenGLWidget_sigmal_slot_resized");

end;
