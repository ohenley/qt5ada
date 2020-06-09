--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2020                 บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGLContext is

function  QGLContext_create(frmt:QGLFormatH;device:QPaintDeviceH) return QGLContextH;
pragma Import(C,QGLContext_create, "QGLContext_create");

function  QGLContext_create2(frmt:QGLFormatH) return QGLContextH;
pragma Import(C,QGLContext_create2, "QGLContext_create2");

function  QGLContext_create1(context,shareContex:QGLContextH) return integer;
pragma Import(C,QGLContext_create1, "QGLContext_create1");

procedure del_QGLContext(p:QGLContextH);
pragma Import(C,del_QGLContext, "del_QGLContext");

function  QGLContext_isValid(context:QGLContextH) return integer;
pragma Import(C,QGLContext_isValid, "QGLContext_isValid");

function  QGLContext_isSharing(context:QGLContextH) return integer;
pragma Import(C,QGLContext_isSharing, "QGLContext_isSharing");

procedure QGLContext_reset(context:QGLContextH);
pragma Import(C,QGLContext_reset, "QGLContext_reset");

function  QGLContext_format(context:QGLContextH) return QGLFormatH;
pragma Import(C,QGLContext_format, "QGLContext_format");

function  QGLContext_requestedFormat(context:QGLContextH) return QGLFormatH;
pragma Import(C,QGLContext_requestedFormat, "QGLContext_requestedFormat");

procedure QGLContext_setFormat(context:QGLContextH;frmt:QGLFormatH);
pragma Import(C,QGLContext_setFormat, "QGLContext_setFormat");

procedure QGLContext_makeCurrent(context:QGLContextH);
pragma Import(C,QGLContext_makeCurrent, "QGLContext_makeCurrent");

procedure QGLContext_swapBuffers(context:QGLContextH);
pragma Import(C,QGLContext_swapBuffers, "QGLContext_swapBuffers");

function  QGLContext_device(context:QGLContextH) return QPaintDeviceH;
pragma Import(C,QGLContext_device, "QGLContext_device");

function  QGLContext_overlayTransparentColor(context:QGLContextH) return QColorH;
pragma Import(C,QGLContext_overlayTransparentColor, "QGLContext_overlayTransparentColor");

function  QGLContext_currentContext return QGLContextH;
pragma Import(C,QGLContext_currentContext, "QGLContext_currentContext");

function  QGLContext_chooseContext(context, shareContext:QGLContextH) return integer;
pragma Import(C,QGLContext_chooseContext, "QGLContext_chooseContext");

procedure QGLContext_doneCurrent(context:QGLContextH);
pragma Import(C,QGLContext_doneCurrent, "QGLContext_doneCurrent");

function  QGLContext_deviceIsPixmap(context:QGLContextH) return integer;
pragma Import(C,QGLContext_deviceIsPixmap, "QGLContext_deviceIsPixmap");

function  QGLContext_windowCreated(context:QGLContextH) return integer;
pragma Import(C,QGLContext_windowCreated, "QGLContext_windowCreated");

procedure QGLContext_setWindowCreated(context:QGLContextH;on:integer);
pragma Import(C,QGLContext_setWindowCreated, "QGLContext_setWindowCreated");

function  QGLContext_initialized(context:QGLContextH) return integer;
pragma Import(C,QGLContext_initialized, "QGLContext_initialized");

procedure QGLContext_setInitialized(context:QGLContextH;on:integer);
pragma Import(C,QGLContext_setInitialized, "QGLContext_setInitialized");

function  QGLContext_colorIndex(context:QGLContextH;color:QColorH) return quint;
pragma Import(C,QGLContext_colorIndex, "QGLContext_colorIndex");

function QGLContext_fromOpenGLContext(platformContext: QOpenGLContextH) return QGLContextH;
pragma Import(C,QGLContext_fromOpenGLContext, "QGLContext_fromOpenGLContext");

 function  QGLContext_createOpenGLContext(context:QOpenGLContextH;format:QSurfaceFormatH) return QGLContextH;
 pragma Import(C,QGLContext_createOpenGLContext, "QGLContext_createOpenGLContext");
 
---------------------------------------------------------------------
function  QGLContext_create(context,shareContex:QGLContextH) return integer;
function  QGLContext_create(frmt:QGLFormatH) return QGLContextH;

end Qt.QGLContext;
