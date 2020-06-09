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

package Qt.QWebBrowserApplication is

 function  QWebBrowserApplication_create(argc:integer_ptr; argv:void_Star) return QApplicationH;
 pragma Import(C,QWebBrowserApplication_create, "QWebBrowserApplication_create");
 
 procedure QWebBrowserApplication_delete(handle:not null QApplicationH);
 pragma Import(C,QWebBrowserApplication_delete, "QWebBrowserApplication_delete");
 
 procedure QWebBrowserApplication_loadSettings(handle:not null QApplicationH);
 pragma Import(C,QWebBrowserApplication_loadSettings, "QWebBrowserApplication_loadSettings");
 
 function  QWebBrowserApplication_instance return QApplicationH;
 pragma Import(C,QWebBrowserApplication_instance, "QWebBrowserApplication_instance");
 
 function  QWebBrowserApplication_historyManager return QWebHistoryManagerH;
 pragma Import(C,QWebBrowserApplication_historyManager, "QWebBrowserApplication_historyManager");
 
 function  QWebBrowserApplication_cookieJar return QWebCookieJarH;
 pragma Import(C,QWebBrowserApplication_cookieJar, "QWebBrowserApplication_cookieJar");
 
 function  QWebBrowserApplication_downloadManager return QWebDownloadManagerH;
 pragma Import(C,QWebBrowserApplication_downloadManager, "QWebBrowserApplication_downloadManager");
 
 function  QWebBrowserApplication_networkAccessManager return QNetworkAccessManagerH;
 pragma Import(C,QWebBrowserApplication_networkAccessManager, "QWebBrowserApplication_networkAccessManager");
 
 function  QWebBrowserApplication_bookmarksManager return QWebBookmarksManagerH;
 pragma Import(C,QWebBrowserApplication_bookmarksManager, "QWebBrowserApplication_bookmarksManager");
 
 function  QWebBrowserApplication_isTheOnlyBrowser(handle:not null QApplicationH) return boolean;
 pragma Import(C,QWebBrowserApplication_isTheOnlyBrowser, "QWebBrowserApplication_isTheOnlyBrowser");
 
 function  QWebBrowserApplication_mainWindow(handle:not null QApplicationH) return QMainWindowH;
 pragma Import(C,QWebBrowserApplication_mainWindow, "QWebBrowserApplication_mainWindow");
 
 function  QWebBrowserApplication_mainWindows(handle:not null QApplicationH) return QObjectListH;
 pragma Import(C,QWebBrowserApplication_mainWindows, "QWebBrowserApplication_mainWindows");
 
 function  QWebBrowserApplication_icon(handle:not null QApplicationH;url:QUrlH) return QIconH;
 pragma Import(C,QWebBrowserApplication_icon, "QWebBrowserApplication_icon");
 
 function  QWebBrowserApplication_defaultIcon(handle:not null QApplicationH) return QIconH;
 pragma Import(C,QWebBrowserApplication_defaultIcon, "QWebBrowserApplication_defaultIcon");
 
 procedure QWebBrowserApplication_saveSession(handle:not null QApplicationH);
 pragma Import(C,QWebBrowserApplication_saveSession, "QWebBrowserApplication_saveSession");
 
 function  QWebBrowserApplication_canRestoreSession(handle:not null QApplicationH) return boolean;
 pragma Import(C,QWebBrowserApplication_canRestoreSession, "QWebBrowserApplication_canRestoreSession");
 
 function  QWebBrowserApplication_privateBrowsing(handle:not null QApplicationH) return boolean;
 pragma Import(C,QWebBrowserApplication_privateBrowsing, "QWebBrowserApplication_privateBrowsing");
 
 function  QWebBrowserApplication_newMainWindow(handle:not null QApplicationH) return QMainWindowH;
 pragma Import(C,QWebBrowserApplication_newMainWindow, "QWebBrowserApplication_newMainWindow");
 
 procedure QWebBrowserApplication_restoreLastSession(handle:not null QApplicationH);
 pragma Import(C,QWebBrowserApplication_restoreLastSession, "QWebBrowserApplication_restoreLastSession");
 
 procedure QWebBrowserApplication_setPrivateBrowsing(handle:not null QApplicationH;pb:boolean);
 pragma Import(C,QWebBrowserApplication_setPrivateBrowsing, "QWebBrowserApplication_setPrivateBrowsing");
 
 procedure QWebBrowserApplication_signal_slot_privateBrowsingChanged(handle:not null QApplicationH;hook:boolCallbackH);
 pragma Import(C,QWebBrowserApplication_signal_slot_privateBrowsingChanged, "QWebBrowserApplication_signal_slot_privateBrowsingChanged");

 function  QWebBrowserApplication_exec return integer;
 pragma Import(C,QWebBrowserApplication_exec, "QWebBrowserApplication_exec");
 
 function QWebBrowserApplication_quitOnLastWindowClosed return  Boolean;   
pragma Import(C,QWebBrowserApplication_quitOnLastWindowClosed,"QApplication_quitOnLastWindowClosed");

procedure QWebBrowserApplication_exit(retcode: Integer := 0);   
pragma Import(C,QWebBrowserApplication_exit,"QGuiApplication_exit");



 function  QWebBrowserApplication_create return QApplicationH;
 procedure QWebBrowserApplication_invoke(p : QApplicationH:= app; rc:integer := 0);
 
end;
