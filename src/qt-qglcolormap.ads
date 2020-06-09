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

package Qt.QGLColormap is

function  QGLColormap_create return QGLColormapH;
pragma Import(C,QGLColormap_create, "QGLColormap_create");

function  QGLColormap_create1(colormap:QGLColormapH) return QGLColormapH;
pragma Import(C,QGLColormap_create1, "QGLColormap_create1");

procedure del_QGLColormap(p:QGLColormapH);
pragma Import(C,del_QGLColormap, "del_QGLColormap");

function  QGLColormap_isEmpty(colormap:QGLColormapH) return integer;
pragma Import(C,QGLColormap_isEmpty, "QGLColormap_isEmpty");

function  QGLColormap_size(colormap:QGLColormapH) return integer;
pragma Import(C,QGLColormap_size, "QGLColormap_size");

procedure QGLColormap_detach(colormap:QGLColormapH);
pragma Import(C,QGLColormap_detach, "QGLColormap_detach");

procedure QGLColormap_setEntries(colormap:QGLColormapH;count:integer;colors:integer_ptr;base:integer);
pragma Import(C,QGLColormap_setEntries, "QGLColormap_setEntries");

procedure QGLColormap_setEntry(colormap:QGLColormapH;indx:integer;color:quint);
pragma Import(C,QGLColormap_setEntry, "QGLColormap_setEntry");

procedure QGLColormap_setEntry1(colormap:QGLColormapH;indx:integer;color:QColorH);
pragma Import(C,QGLColormap_setEntry1, "QGLColormap_setEntry1");

function  QGLColormap_entryRgb(colormap:QGLColormapH;indx:integer) return quint;
pragma Import(C,QGLColormap_entryRgb, "QGLColormap_entryRgb");

function  QGLColormap_entryColor(colormap:QGLColormapH;indx:integer) return QColorH;
pragma Import(C,QGLColormap_entryColor, "QGLColormap_entryColor");

function  QGLColormap_find(colormap:QGLColormapH;color:quint) return integer;
pragma Import(C,QGLColormap_find, "QGLColormap_find");

function  QGLColormap_findNearest(colormap:QGLColormapH; color:quint) return integer;
pragma Import(C,QGLColormap_findNearest, "QGLColormap_findNearest");

function  QGLColormap_create(colormap:QGLColormapH) return QGLColormapH;
procedure QGLColormap_setEntry(colormap:QGLColormapH;indx:integer;color:QColorH);

end Qt.QGLColormap;
