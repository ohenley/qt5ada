--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGLFormat is

function  QGLFormat_create return QGLFormatH;
pragma Import(C,QGLFormat_create, "QGLFormat_create");

function  QGLFormat_create1(options,plane:integer) return QGLFormatH;
pragma Import(C,QGLFormat_create1, "QGLFormat_create1");

function  QGLFormat_doubleBuffer(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_doubleBuffer, "QGLFormat_doubleBuffer");

procedure QGLFormat_setDoubleBuffer(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setDoubleBuffer, "QGLFormat_setDoubleBuffer");

function  QGLFormat_depth(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_depth, "QGLFormat_depth");

procedure QGLFormat_setDepth(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setDepth, "QGLFormat_setDepth");

function  QGLFormat_rgba(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_rgba, "QGLFormat_rgba");

procedure QGLFormat_setRgba(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setRgba, "QGLFormat_setRgba");

function  QGLFormat_alpha(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_alpha, "QGLFormat_alpha");

procedure QGLFormat_setAlpha(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setAlpha, "QGLFormat_setAlpha");

function  QGLFormat_accum(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_accum, "QGLFormat_accum");

procedure QGLFormat_setAccum(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setAccum, "QGLFormat_setAccum");

function  QGLFormat_stencil(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_stencil, "QGLFormat_stencil");

procedure QGLFormat_setStencil(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setStencil, "QGLFormat_setStencil");

function  QGLFormat_stereo(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_stereo, "QGLFormat_stereo");

procedure QGLFormat_setStereo(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setStereo, "QGLFormat_setStereo");

function  QGLFormat_directRendering(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_directRendering, "QGLFormat_directRendering");

procedure QGLFormat_setDirectRendering(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setDirectRendering, "QGLFormat_setDirectRendering");

function  QGLFormat_hasOverlay(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_hasOverlay, "QGLFormat_hasOverlay");

procedure QGLFormat_setOverlay(frmt:QGLFormatH;enable:integer);
pragma Import(C,QGLFormat_setOverlay, "QGLFormat_setOverlay");

function  QGLFormat_plane(frmt:QGLFormatH) return integer;
pragma Import(C,QGLFormat_plane, "QGLFormat_plane");

procedure QGLFormat_setPlane(frmt:QGLFormatH;plane:integer);
pragma Import(C,QGLFormat_setPlane, "QGLFormat_setPlane");

procedure QGLFormat_setOption(frmt:QGLFormatH;opt:integer);
pragma Import(C,QGLFormat_setOption, "QGLFormat_setOption");

function  QGLFormat_testOption(frmt:QGLFormatH;opt:integer) return integer;
pragma Import(C,QGLFormat_testOption, "QGLFormat_testOption");

function  QGLFormat_defaultFormat return QGLFormatH;
pragma Import(C,QGLFormat_defaultFormat, "QGLFormat_defaultFormat");

procedure QGLFormat_setDefaultFormat(frmt:QGLFormatH);
pragma Import(C,QGLFormat_setDefaultFormat, "QGLFormat_setDefaultFormat");

function  QGLFormat_defaultOverlayFormat return QGLFormatH;
pragma Import(C,QGLFormat_defaultOverlayFormat, "QGLFormat_defaultOverlayFormat");

procedure QGLFormat_setDefaultOverlayFormat(frmt:QGLFormatH);
pragma Import(C,QGLFormat_setDefaultOverlayFormat, "QGLFormat_setDefaultOverlayFormat");

function  QGLFormat_hasOpenGL return integer;
pragma Import(C,QGLFormat_hasOpenGL, "QGLFormat_hasOpenGL");

function  QGLFormat_hasOpenGLOverlays return integer;
pragma Import(C,QGLFormat_hasOpenGLOverlays, "QGLFormat_hasOpenGLOverlays");

function  QGLFormat_create(options,plane:integer) return QGLFormatH;

end Qt.QGLFormat;
