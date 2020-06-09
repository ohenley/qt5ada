--
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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWebBrowserView   is

function  QWebBrowserView_create(parent:QWidgetH := null) return QWebViewH;
 pragma Import(C,QWebBrowserView_create, "QWebBrowserView_create");
 
 function  QWebBrowserView_webPage(handle:not null QWebViewH) return QWebPageH;
 pragma Import(C,QWebBrowserView_webPage, "QWebBrowserView_webPage");
 
 procedure QWebBrowserView_setPage(handle:not null QWebViewH; page:QWebPageH);
 pragma Import(C,QWebBrowserView_setPage, "QWebBrowserView_setPage");
 
 procedure QWebBrowserView_loadUrl(handle:not null QWebViewH; url:QUrlH);
 pragma Import(C,QWebBrowserView_loadUrl, "QWebBrowserView_loadUrl");
 
 function  QWebBrowserView_url(handle:not null QWebViewH) return QUrlH;
 pragma Import(C,QWebBrowserView_url, "QWebBrowserView_url");
 
 function  QWebBrowserView_icon(handle:not null QWebViewH) return QIconH;
 pragma Import(C,QWebBrowserView_icon, "QWebBrowserView_icon");
 
 function  QWebBrowserView_lastStatusBarText(handle:not null QWebViewH) return QStringH;
 pragma Import(C,QWebBrowserView_lastStatusBarText, "QWebBrowserView_lastStatusBarText");
 
 function  QWebBrowserView_progress(handle:not null QWebViewH) return integer;
 pragma Import(C,QWebBrowserView_progress, "QWebBrowserView_progress");

 procedure QWebBrowserView_signal_slot_iconChanged(handle:not null QObjectH; hook:voidCallbackH);
 pragma Import(C,QWebBrowserView_signal_slot_iconChanged, "QWebBrowserView_signal_slot_iconChanged");
 
end Qt.QWebBrowserView;
