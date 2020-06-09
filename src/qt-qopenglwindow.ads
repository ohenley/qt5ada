--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2020                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2014,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPaintDevice; use Qt.QPaintDevice;         
package Qt.QOpenGLWindow is

 type UpdateBehavior is (NoPartialUpdate,PartialUpdateBlit,PartialUpdateBlend);
 pragma convention(C,UpdateBehavior);
 
 function  QOpenGLWindow_create(updateBh:UpdateBehavior := NoPartialUpdate; parent:QWindowH := null) return QOpenGLWindowH;
 pragma Import(C,QOpenGLWindow_create, "QOpenGLWindow_create");
 
 function  QOpenGLWindow_create2(shareContext:QOpenGLContextH;updateBh:UpdateBehavior := NoPartialUpdate; parent:QWindowH := null) return QOpenGLWindowH;
 pragma Import(C,QOpenGLWindow_create2, "QOpenGLWindow_create2");
 
 procedure QOpenGLWindow_destroy(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_destroy, "QOpenGLWindow_destroy");
 
 function  QOpenGLWindow_isValid(handle:not null QOpenGLWindowH) return boolean;
 pragma Import(C,QOpenGLWindow_isValid, "QOpenGLWindow_isValid");
 
 function  QOpenGLWindow_updateBehavior(handle:not null QOpenGLWindowH) return UpdateBehavior;
 pragma Import(C,QOpenGLWindow_updateBehavior, "QOpenGLWindow_updateBehavior");
 
 procedure QOpenGLWindow_makeCurrent(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_makeCurrent, "QOpenGLWindow_makeCurrent");
 
 procedure QOpenGLWindow_doneCurrent(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_doneCurrent, "QOpenGLWindow_doneCurrent");
 
 function  QOpenGLWindow_context(handle:not null QOpenGLWindowH) return QOpenGLContextH;
 pragma Import(C,QOpenGLWindow_context, "QOpenGLWindow_context");
 
 function  QOpenGLWindow_defaultFramebufferObject(handle:not null QOpenGLWindowH) return quint;
 pragma Import(C,QOpenGLWindow_defaultFramebufferObject, "QOpenGLWindow_defaultFramebufferObject");
 
 function  QOpenGLWindow_grabFramebuffer(handle:not null QOpenGLWindowH) return QImageH;
 pragma Import(C,QOpenGLWindow_grabFramebuffer, "QOpenGLWindow_grabFramebuffer");
 
 procedure QOpenGLWindow_initializeGL(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_initializeGL, "QOpenGLWindow_initializeGL");
 
 procedure QOpenGLWindow_resizeGL(handle:not null QOpenGLWindowH;w,h: integer);
 pragma Import(C,QOpenGLWindow_resizeGL, "QOpenGLWindow_resizeGL");
 
 procedure QOpenGLWindow_paintGL(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_paintGL, "QOpenGLWindow_paintGL");
 
 procedure QOpenGLWindow_paintUnderGL(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_paintUnderGL, "QOpenGLWindow_paintUnderGL");
 
 procedure QOpenGLWindow_paintOverGL(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_paintOverGL, "QOpenGLWindow_paintOverGL");
 
 procedure QOpenGLWindow_paintEvent(handle:not null QOpenGLWindowH;event:QPaintEventH);
 pragma Import(C,QOpenGLWindow_paintEvent, "QOpenGLWindow_paintEvent");
 
 procedure QOpenGLWindow_resizeEvent(handle:not null QOpenGLWindowH;event:QResizeEventH);
 pragma Import(C,QOpenGLWindow_resizeEvent, "QOpenGLWindow_resizeEvent");
 
 function  QOpenGLWindow_metric(handle:not null QOpenGLWindowH;metric:QPaintDevicePaintDeviceMetric) return integer;
 pragma Import(C,QOpenGLWindow_metric, "QOpenGLWindow_metric");
 
 function  QOpenGLWindow_redirected(handle:not null QOpenGLWindowH;point:QPointH) return QPaintDeviceH;
 pragma Import(C,QOpenGLWindow_redirected, "QOpenGLWindow_redirected");
 
 procedure QOpenGLWindow_sigmal_slot_frameSwapped(handle:not null QOpenGLWindowH; hook: voidCallbackH);
 pragma Import(C,QOpenGLWindow_sigmal_slot_frameSwapped, "QOpenGLWindow_sigmal_slot_frameSwapped");

 procedure QOpenGLWindow_update(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_update, "QOpenGLWindow_update");
 
 procedure QOpenGLWindow_update2(handle:not null QOpenGLWindowH;rect:QRectH);
 pragma Import(C,QOpenGLWindow_update2, "QOpenGLWindow_update2");
 
 procedure QOpenGLWindow_update3(handle:not null QOpenGLWindowH;region:QRegionH);
 pragma Import(C,QOpenGLWindow_update3, "QOpenGLWindow_update3");

 function  QOpenGLWindow_size(handle:not null QOpenGLWindowH) return QSizeH;
 pragma Import(C,QOpenGLWindow_size, "QOpenGLWindow_size");
 
 procedure QOpenGLWindow_setFormat(handle:not null QOpenGLWindowH;format:QSurfaceFormatH);
 pragma Import(C,QOpenGLWindow_setFormat, "QOpenGLWindow_setFormat");
 
 procedure QOpenGLWindow_showMaximized(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_showMaximized, "QOpenGLWindow_showMaximized");
 
 procedure QOpenGLWindow_show(handle:not null QOpenGLWindowH);
 pragma Import(C,QOpenGLWindow_show, "QOpenGLWindow_show");
 
 procedure QOpenGLWindow_resize(handle:not null QOpenGLWindowH;w,h:integer);
 pragma Import(C,QOpenGLWindow_resize, "QOpenGLWindow_resize");
 
 function  QOpenGLWindow_to_QPaintDevice(handle:not null QOpenGLWindowH) return QPaintDeviceH;
 pragma Import(C,QOpenGLWindow_to_QPaintDevice, "QOpenGLWindow_to_QPaintDevice");
 
 function  QOpenGLWindow_painter(handle:not null QOpenGLWindowH) return QPainterH;
 pragma Import(C,QOpenGLWindow_painter, "QOpenGLWindow_painter");
 
 procedure QOpenGLWindow_setPaint(handle:not null QOpenGLWindowH;paint:voidCallbackH);
 pragma Import(C,QOpenGLWindow_setPaint, "QOpenGLWindow_setPaint");
 
 function  QOpenGLWindow_defaultFormat return QSurfaceFormatH;
 pragma Import(C,QOpenGLWindow_defaultFormat, "QOpenGLWindow_defaultFormat");
 

 
------------------------------------------------------------------------
 function  QOpenGLWindow_create(shareContext:QOpenGLContextH;updateBh:UpdateBehavior := NoPartialUpdate; parent:QWindowH := null) return QOpenGLWindowH;
 procedure QOpenGLWindow_update(handle:not null QOpenGLWindowH;rect:QRectH);
 procedure QOpenGLWindow_update(handle:not null QOpenGLWindowH;region:QRegionH);

end;
