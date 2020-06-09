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

package Qt.QWebBrowserMainWindow is

 function  QWebBrowserMainWindow_create(parent:QWidgetH := null;flags: integer := 0) return QMainWindowH;
 pragma Import(C,QWebBrowserMainWindow_create, "QWebBrowserMainWindow_create");
 
 procedure QWebBrowserMainWindow_delete(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow_delete, "QWebBrowserMainWindow_delete");
 
 function  QWebBrowserMainWindow_sizeHint(handle:not null QMainWindowH) return QSizeH;
 pragma Import(C,QWebBrowserMainWindow_sizeHint, "QWebBrowserMainWindow_sizeHint");
 
 function  QWebBrowserMainWindow_defaultHome return string;
 pragma Import(C,QWebBrowserMainWindow_defaultHome, "QWebBrowserMainWindow_defaultHome");
 
 function  QWebBrowserMainWindow_tabWidget(handle:not null QMainWindowH) return QTabWidgetH;
 pragma Import(C,QWebBrowserMainWindow_tabWidget, "QWebBrowserMainWindow_tabWidget");
 
 function  QWebBrowserMainWindow_currentTab(handle:not null QMainWindowH) return QWebViewH;
 pragma Import(C,QWebBrowserMainWindow_currentTab, "QWebBrowserMainWindow_currentTab");
 
 function  QWebBrowserMainWindow_saveState(handle:not null QMainWindowH;withTabs: boolean := true) return string;
 pragma Import(C,QWebBrowserMainWindow_saveState, "QWebBrowserMainWindow_saveState");
 
 function  QWebBrowserMainWindow_restoreState(handle:not null QMainWindowH;state:string) return boolean;
 pragma Import(C,QWebBrowserMainWindow_restoreState, "QWebBrowserMainWindow_restoreState");
 
 procedure QWebBrowserMainWindow_runScriptOnOpenViews(handle:not null QMainWindowH;script:QStringH);
 pragma Import(C,QWebBrowserMainWindow_runScriptOnOpenViews, "QWebBrowserMainWindow_runScriptOnOpenViews");
 
 procedure QWebBrowserMainWindow_loadPage(handle:not null QMainWindowH;url:QStringH);
 pragma Import(C,QWebBrowserMainWindow_loadPage, "QWebBrowserMainWindow_loadPage");
 
 procedure QWebBrowserMainWindow_slotHome(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow_slotHome, "QWebBrowserMainWindow_slotHome");
 
 function  QWebBrowserMainWindow2_create(url:QUrlH) return QMainWindowH;
 pragma Import(C,QWebBrowserMainWindow2_create, "QWebBrowserMainWindow2_create");
 
 function  QWebBrowserMainWindow2_create2(url:QStringH) return QMainWindowH;
 pragma Import(C,QWebBrowserMainWindow2_create2, "QWebBrowserMainWindow2_create2");
 
 procedure QWebBrowserMainWindow2_delete(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_delete, "QWebBrowserMainWindow2_delete");
 
 procedure QWebBrowserMainWindow2_adjustLocation(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_adjustLocation, "QWebBrowserMainWindow2_adjustLocation");
 
 procedure QWebBrowserMainWindow2_changeLocation(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_changeLocation, "QWebBrowserMainWindow2_changeLocation");
 
 procedure QWebBrowserMainWindow2_adjustTitle(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_adjustTitle, "QWebBrowserMainWindow2_adjustTitle");
 
 procedure QWebBrowserMainWindow2_setProgress(handle:not null QMainWindowH;progress:integer);
 pragma Import(C,QWebBrowserMainWindow2_setProgress, "QWebBrowserMainWindow2_setProgress");
 
 procedure QWebBrowserMainWindow2_finishLoading(handle:not null QMainWindowH;isLoadFinished:boolean);
 pragma Import(C,QWebBrowserMainWindow2_finishLoading, "QWebBrowserMainWindow2_finishLoading");
 
 procedure QWebBrowserMainWindow2_viewSource(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_viewSource, "QWebBrowserMainWindow2_viewSource");
 
 procedure QWebBrowserMainWindow2_highlightAllLinks(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_highlightAllLinks, "QWebBrowserMainWindow2_highlightAllLinks");
 
 procedure QWebBrowserMainWindow2_rotateImages(handle:not null QMainWindowH;invert:boolean);
 pragma Import(C,QWebBrowserMainWindow2_rotateImages, "QWebBrowserMainWindow2_rotateImages");
 
 procedure QWebBrowserMainWindow2_removeGifImages(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_removeGifImages, "QWebBrowserMainWindow2_removeGifImages");
 
 procedure QWebBrowserMainWindow2_removeInlineFrames(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_removeInlineFrames, "QWebBrowserMainWindow2_removeInlineFrames");
 
 procedure QWebBrowserMainWindow2_removeObjectElements(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_removeObjectElements, "QWebBrowserMainWindow2_removeObjectElements");
 
 procedure QWebBrowserMainWindow2_removeEmbeddedElements(handle:not null QMainWindowH);
 pragma Import(C,QWebBrowserMainWindow2_removeEmbeddedElements, "QWebBrowserMainWindow2_removeEmbeddedElements");

 function  QWebBrowserMainWindow2_create(url:QStringH) return QMainWindowH;
end;
