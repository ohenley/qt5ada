--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGLWidget is

function  QGLWidget_create(context:QGLContextH; parent:QWidgetH;shareWidget:QGLWidgetH;f:QtWindowFlags) return QGLWidgetH;
pragma Import(C,QGLWidget_create, "QGLWidget_create");

function  QGLWidget_create1(priv:QGLWidgetPrivateH;frmt:QGLFormatH; parent:QWidgetH;shareWidget:QGLWidgetH;f:QtWindowFlags) return QGLWidgetH;
pragma Import(C,QGLWidget_create1, "QGLWidget_create1");

function  QGLWidget_create2(parent:QWidgetH;shareWidget:QGLWidgetH;f:QtWindowFlags) return QGLWidgetH;
pragma Import(C,QGLWidget_create2, "QGLWidget_create2");

procedure del_QGLWidget(p:QGLWidgetH);
pragma Import(C,del_QGLWidget, "del_QGLWidget");

procedure QGLWidget_qglColor(widget:QGLWidgetH;color:QColorH);
pragma Import(C,QGLWidget_qglColor, "QGLWidget_qglColor");

procedure QGLWidget_qglClearColor(widget:QGLWidgetH;color:QColorH);
pragma Import(C,QGLWidget_qglClearColor, "QGLWidget_qglClearColor");

function  QGLWidget_isValid(widget:QGLWidgetH) return integer;
pragma Import(C,QGLWidget_isValid, "QGLWidget_isValid");

function  QGLWidget_isSharing(widget:QGLWidgetH) return integer;
pragma Import(C,QGLWidget_isSharing, "QGLWidget_isSharing");

procedure QGLWidget_makeCurrent(widget:QGLWidgetH);
pragma Import(C,QGLWidget_makeCurrent, "QGLWidget_makeCurrent");

function  QGLWidget_doubleBuffer(widget:QGLWidgetH) return integer;
pragma Import(C,QGLWidget_doubleBuffer, "QGLWidget_doubleBuffer");

procedure QGLWidget_swapBuffers(widget:QGLWidgetH);
pragma Import(C,QGLWidget_swapBuffers, "QGLWidget_swapBuffers");

function  QGLWidget_format(widget:QGLWidgetH) return QGLFormatH;
pragma Import(C,QGLWidget_format, "QGLWidget_format");

procedure QGLWidget_setFormat(widget:QGLWidgetH;frmt:QGLFormatH);
pragma Import(C,QGLWidget_setFormat, "QGLWidget_setFormat");

function  QGLWidget_context(widget:QGLWidgetH) return QGLContextH;
pragma Import(C,QGLWidget_context, "QGLWidget_context");

procedure QGLWidget_setContext(widget:QGLWidgetH;context, shareContext:QGLContextH;deleteOldContext:integer);
pragma Import(C,QGLWidget_setContext, "QGLWidget_setContext");

function  QGLWidget_renderPixmap(widget:QGLWidgetH;w,h,useContext:integer) return QPixmapH;
pragma Import(C,QGLWidget_renderPixmap, "QGLWidget_renderPixmap");

function  QGLWidget_grabFrameBuffer(widget:QGLWidgetH;withAlpha:integer) return QImageH;
pragma Import(C,QGLWidget_grabFrameBuffer, "QGLWidget_grabFrameBuffer");

procedure QGLWidget_makeOverlayCurrent(widget:QGLWidgetH);
pragma Import(C,QGLWidget_makeOverlayCurrent, "QGLWidget_makeOverlayCurrent");

function  QGLWidget_overlayContext(widget:QGLWidgetH) return QGLContextH;
pragma Import(C,QGLWidget_overlayContext, "QGLWidget_overlayContext");

procedure QGLWidget_setMouseTracking(widget:QGLWidgetH;enable:integer);
pragma Import(C,QGLWidget_setMouseTracking, "QGLWidget_setMouseTracking");

procedure QGLWidget_reparent(widget:QGLWidgetH;parent:QWidgetH;f:integer;point:QPointH;showIt:integer);
pragma Import(C,QGLWidget_reparent, "QGLWidget_reparent");

function  QGLWidget_colormap(widget:QGLWidgetH) return QGLColormapH;
pragma Import(C,QGLWidget_colormap, "QGLWidget_colormap");

procedure QGLWidget_setColormap(widget:QGLWidgetH;colormap:QGLColormapH);
pragma Import(C,QGLWidget_setColormap, "QGLWidget_setColormap");

procedure QGLWidget_updateGL(widget:QGLWidgetH);
pragma Import(C,QGLWidget_updateGL, "QGLWidget_updateGL");

procedure QGLWidget_updateOverlayGL(widget:QGLWidgetH);
pragma Import(C,QGLWidget_updateOverlayGL, "QGLWidget_updateOverlayGL");

function  QGLWidget_convertToGLFormat(img:QImageH) return QImageH;
pragma Import(C,QGLWidget_convertToGLFormat, "QGLWidget_convertToGLFormat");

procedure QGLWidget_initializeGL(widget:QGLWidgetH);
pragma Import(C,QGLWidget_initializeGL, "QGLWidget_initializeGL");

procedure QGLWidget_resizeGL(widget:QGLWidgetH;w,h:integer);
pragma Import(C,QGLWidget_resizeGL, "QGLWidget_resizeGL");

procedure QGLWidget_paintGL(widget:QGLWidgetH);
pragma Import(C,QGLWidget_paintGL, "QGLWidget_paintGL");

procedure QGLWidget_initializeOverlayGL(widget:QGLWidgetH);
pragma Import(C,QGLWidget_initializeOverlayGL, "QGLWidget_initializeOverlayGL");

procedure QGLWidget_resizeOverlayGL(widget:QGLWidgetH;w,h:integer);
pragma Import(C,QGLWidget_resizeOverlayGL, "QGLWidget_resizeOverlayGL");

procedure QGLWidget_paintOverlayGL(widget:QGLWidgetH);
pragma Import(C,QGLWidget_paintOverlayGL, "QGLWidget_paintOverlayGL");

procedure QGLWidget_setAutoBufferSwap(widget:QGLWidgetH;on:integer);
pragma Import(C,QGLWidget_setAutoBufferSwap, "QGLWidget_setAutoBufferSwap");

function  QGLWidget_autoBufferSwap(widget:QGLWidgetH) return integer;
pragma Import(C,QGLWidget_autoBufferSwap, "QGLWidget_autoBufferSwap");

procedure QGLWidget_glInit(widget:QGLWidgetH);
pragma Import(C,QGLWidget_glInit, "QGLWidget_glInit");

procedure QGLWidget_glDraw(widget:QGLWidgetH);
pragma Import(C,QGLWidget_glDraw, "QGLWidget_glDraw");

--  Casts a 'QGLWidgetH' to a 'QWidgetH'
function  QGLWidget_QWidget(widget:QGLWidgetH) return QWidgetH;
pragma Import(C,QGLWidget_QWidget, "QGLWidget_QWidget");
------------------------------------------------------------------------------------------------------------
function  QGLWidget_create(priv:QGLWidgetPrivateH;frmt:QGLFormatH; parent:QWidgetH;shareWidget:QGLWidgetH;f:QtWindowFlags) return QGLWidgetH;
function  QGLWidget_create(parent:QWidgetH;shareWidget:QGLWidgetH;f:QtWindowFlags) return QGLWidgetH;

end Qt.QGLWidget;
