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

with Qt.QPixmap; use Qt.QPixmap;
package Qt.QWebBrowserTools is

 function  QWebBrowserAutoSaver_create(parent:QObjectH := null) return QObjectH;
 pragma Import(C,QWebBrowserAutoSaver_create, "QWebBrowserAutoSaver_create");
 
 procedure QWebBrowserAutoSaver_delete(handle:not null QObjectH);
 pragma Import(C,QWebBrowserAutoSaver_delete, "QWebBrowserAutoSaver_delete");
 
 procedure QWebBrowserAutoSaver_saveIfNeccessary(handle:not null QObjectH);
 pragma Import(C,QWebBrowserAutoSaver_saveIfNeccessary, "QWebBrowserAutoSaver_saveIfNeccessary");
 
 procedure QWebBrowserAutoSaver_changeOccurred(handle:not null QObjectH);
 pragma Import(C,QWebBrowserAutoSaver_changeOccurred, "QWebBrowserAutoSaver_changeOccurred");

function  QWebBrowserChaseWidget_create(parent:QWidgetH := null; pixmap:QPixmapH := QPixmap_create; pixmapEnabled: boolean := false) return QWidgetH;
 pragma Import(C,QWebBrowserChaseWidget_create, "QWebBrowserChaseWidget_create");
 
 procedure QWebBrowserChaseWidget_delete(handle:not null QWidgetH);
 pragma Import(C,QWebBrowserChaseWidget_delete, "QWebBrowserChaseWidget_delete");
 
 procedure QWebBrowserChaseWidget_setAnimated(handle:not null QWidgetH;value:boolean);
 pragma Import(C,QWebBrowserChaseWidget_setAnimated, "QWebBrowserChaseWidget_setAnimated");
 
 procedure QWebBrowserChaseWidget_setPixmapEnabled(handle:not null QWidgetH;enable: boolean);
 pragma Import(C,QWebBrowserChaseWidget_setPixmapEnabled, "QWebBrowserChaseWidget_setPixmapEnabled");
 
 function  QWebBrowserChaseWidget_sizeHint(handle:not null QWidgetH) return QSizeH;
 pragma Import(C,QWebBrowserChaseWidget_sizeHint, "QWebBrowserChaseWidget_sizeHint");

 function  QWebBrowserSettingsDialog_create(parent:QWidgetH := null) return QDialogH;
 pragma Import(C,QWebBrowserSettingsDialog_create, "QWebBrowserSettingsDialog_create");
 
 procedure QWebBrowserSettingsDialog_accept(handle:not null QDialogH);
 pragma Import(C,QWebBrowserSettingsDialog_accept, "QWebBrowserSettingsDialog_accept");
 
 function  QWebBrowserSearchLineEdit_create(parent:QWidgetH := null) return QLineEditH;
 pragma Import(C,QWebBrowserSearchLineEdit_create, "QWebBrowserSearchLineEdit_create");
 
 procedure QWebBrowserSearchLineEdit_setInactiveText(handle:not null QLineEditH;text:QStringH);
 pragma Import(C,QWebBrowserSearchLineEdit_setInactiveText, "QWebBrowserSearchLineEdit_setInactiveText");
 
 function  QWebBrowserSearchLineEdit_inactiveText(handle:not null QLineEditH) return QStringH;
 pragma Import(C,QWebBrowserSearchLineEdit_inactiveText, "QWebBrowserSearchLineEdit_inactiveText");
 
 procedure QWebBrowserSearchLineEdit_setMenu(handle:not null QLineEditH;menu:QMenuH);
 pragma Import(C,QWebBrowserSearchLineEdit_setMenu, "QWebBrowserSearchLineEdit_setMenu");
 
 function  QWebBrowserSearchLineEdit_menu(handle:not null QLineEditH) return QMenuH;
 pragma Import(C,QWebBrowserSearchLineEdit_menu, "QWebBrowserSearchLineEdit_menu");
 
 procedure QWebBrowserSearchLineEdit_signal_slot_textChanged(handle:not null QObjectH;hook: QStringCallbackH);
 pragma Import(C,QWebBrowserSearchLineEdit_signal_slot_textChanged, "QWebBrowserSearchLineEdit_signal_slot_textChanged");
 
 function  QWebBrowserToolbarSearch_create(parent:QWidgetH := null) return QLineEditH;
 pragma Import(C,QWebBrowserToolbarSearch_create, "QWebBrowserToolbarSearch_create");
 
 procedure QWebBrowserToolbarSearch_delete(handle:not null QLineEditH);
 pragma Import(C,QWebBrowserToolbarSearch_delete, "QWebBrowserToolbarSearch_delete");
 
 procedure QWebBrowserToolbarSearch_searchNow(handle:not null QLineEditH);
 pragma Import(C,QWebBrowserToolbarSearch_searchNow, "QWebBrowserToolbarSearch_searchNow");
 
 procedure QWebBrowserToolbarSearch_clear(handle:not null QLineEditH);
 pragma Import(C,QWebBrowserToolbarSearch_clear, "QWebBrowserToolbarSearch_clear");
 
 function  QWebBrowserUrlLineEdit_create(parent:QWidgetH := null) return QLineEditH;
 pragma Import(C,QWebBrowserUrlLineEdit_create, "QWebBrowserUrlLineEdit_create");
 
 procedure QWebBrowserUrlLineEdit_setWebView(handle:not null QLineEditH;webView:QWebViewH);
 pragma Import(C,QWebBrowserUrlLineEdit_setWebView, "QWebBrowserUrlLineEdit_setWebView");
 
end;
