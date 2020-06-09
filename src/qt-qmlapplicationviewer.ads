--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPainter; use Qt.QPainter;

package Qt.QmlApplicationViewer        is

 -- ScreenOrientation 
 ScreenOrientationLockPortrait  : constant := 0;
 ScreenOrientationLockLandscape : constant := 1;
 ScreenOrientationAuto          : constant := 2;

 function  QmlApplicationViewer_create(parent:QWindowH := null) return QmlApplicationViewerH;
 pragma Import(C,QmlApplicationViewer_create, "QmlApplicationViewer_create");
 
 procedure QmlApplicationViewer_destroy(handle:not null QmlApplicationViewerH);
 pragma Import(C,QmlApplicationViewer_destroy, "QmlApplicationViewer_destroy");
 
 procedure QmlApplicationViewer_setMainQmlFile(handle:not null QmlApplicationViewerH; file : QStringH);
 pragma Import(C,QmlApplicationViewer_setMainQmlFile, "QmlApplicationViewer_setMainQmlFile");
 
 procedure QmlApplicationViewer_addImportPath(handle:not null QmlApplicationViewerH;path:QStringH);
 pragma Import(C,QmlApplicationViewer_addImportPath, "QmlApplicationViewer_addImportPath");
 
 procedure QmlApplicationViewer_showExpanded(handle:not null QmlApplicationViewerH);
 pragma Import(C,QmlApplicationViewer_showExpanded, "QmlApplicationViewer_showExpanded");

 procedure QmlApplicationViewer_setSource(handle:not null QmlApplicationViewerH;url: QUrlH);
 pragma Import(C,QmlApplicationViewer_setSource, "QmlApplicationViewer_setSource");
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
end Qt.QmlApplicationViewer;
