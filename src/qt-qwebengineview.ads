--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2019                      บ
-- บ Copyright (C) 2015,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString; use Qt.QString;
with Qt.QUrl;    use Qt.QUrl;
with Qt.QWebEnginePage;   
package Qt.QWebEngineView is

 function  QWebEngineView_create(parent:QWidgetH := null) return QWebViewH;
 pragma Import(C,QWebEngineView_create, "QWebEngineView_create");
 
 procedure QWebEngineView_delete(handle:not null QWebViewH);
 pragma Import(C,QWebEngineView_delete, "QWebEngineView_delete");
 
 function  QWebEngineView_hasSelection(handle:not null QWebViewH) return boolean;
 pragma Import(C,QWebEngineView_hasSelection, "QWebEngineView_hasSelection");
 
 function  QWebEngineView_page(handle:not null QWebViewH) return QWebPageH;
 pragma Import(C,QWebEngineView_page, "QWebEngineView_page");
 
 procedure QWebEngineView_setPage(handle:not null QWebViewH;page:QWebPageH);
 pragma Import(C,QWebEngineView_setPage, "QWebEngineView_setPage");
 
 procedure QWebEngineView_load(handle:not null QWebViewH;url:QUrlH);
 pragma Import(C,QWebEngineView_load, "QWebEngineView_load");
 
 procedure QWebEngineView_setHtml(handle:not null QWebViewH;html:QStringH; baseUrl: QUrlH := QUrl_create);
 pragma Import(C,QWebEngineView_setHtml, "QWebEngineView_setHtml");
 
 procedure QWebEngineView_setContent(handle:not null QWebViewH;data:QByteArrayH;  mimeType:QStringH := QString_create; baseUrl:QUrlH := QUrl_create);
 pragma Import(C,QWebEngineView_setContent, "QWebEngineView_setContent");
 
 function  QWebEngineView_history(handle:not null QWebViewH) return QWebHistoryH;
 pragma Import(C,QWebEngineView_history, "QWebEngineView_history");
 
 function  QWebEngineView_title(handle:not null QWebViewH) return QStringH;
 pragma Import(C,QWebEngineView_title, "QWebEngineView_title");
 
 procedure QWebEngineView_setUrl(handle:not null QWebViewH;url:QUrlH);
 pragma Import(C,QWebEngineView_setUrl, "QWebEngineView_setUrl");
 
 function  QWebEngineView_url(handle:not null QWebViewH) return QUrlH;
 pragma Import(C,QWebEngineView_url, "QWebEngineView_url");
 
 function  QWebEngineView_iconUrl(handle:not null QWebViewH) return QUrlH;
 pragma Import(C,QWebEngineView_iconUrl, "QWebEngineView_iconUrl");
 
 function  QWebEngineView_selectedText(handle:not null QWebViewH) return QStringH;
 pragma Import(C,QWebEngineView_selectedText, "QWebEngineView_selectedText");
 
 function  QWebEngineView_pageAction(handle:not null QWebViewH;action:Qt.QWebEnginePage.WebAction) return QActionH;
 pragma Import(C,QWebEngineView_pageAction, "QWebEngineView_pageAction");
 
 procedure QWebEngineView_triggerPageAction(handle:not null QWebViewH;action:Qt.QWebEnginePage.WebAction; checked: boolean := false);
 pragma Import(C,QWebEngineView_triggerPageAction, "QWebEngineView_triggerPageAction");
 
 function  QWebEngineView_zoomFactor(handle:not null QWebViewH) return qreal;
 pragma Import(C,QWebEngineView_zoomFactor, "QWebEngineView_zoomFactor");
 
 procedure QWebEngineView_setZoomFactor(handle:not null QWebViewH; factor:qreal);
 pragma Import(C,QWebEngineView_setZoomFactor, "QWebEngineView_setZoomFactor");
 
 function  QWebEngineView_findText(handle:not null QWebViewH;subString:QStringH; options: integer := 0) return boolean;
 pragma Import(C,QWebEngineView_findText, "QWebEngineView_findText");
 
 function  QWebEngineView_sizeHint(handle:not null QWebViewH) return QSizeH;
 pragma Import(C,QWebEngineView_sizeHint, "QWebEngineView_sizeHint");
 
 function  QWebEngineView_settings(handle:not null QWebViewH) return QWebSettingsH;
 pragma Import(C,QWebEngineView_settings, "QWebEngineView_settings");
 
 procedure QWebEngineView_stop(handle:not null QWebViewH);
 pragma Import(C,QWebEngineView_stop, "QWebEngineView_stop");
 
 procedure QWebEngineView_back(handle:not null QWebViewH);
 pragma Import(C,QWebEngineView_back, "QWebEngineView_back");
 
 procedure QWebEngineView_forward(handle:not null QWebViewH);
 pragma Import(C,QWebEngineView_forward, "QWebEngineView_forward");
 
 procedure QWebEngineView_reload(handle:not null QWebViewH);
 pragma Import(C,QWebEngineView_reload, "QWebEngineView_reload");
 
 function  QWebEngineView_icon(handle:not null QWebViewH) return QIconH;
 pragma Import(C,QWebEngineView_icon, "QWebEngineView_icon");
 
 function  QWebEngineView_createWindow(handle:not null QWebViewH;winType:Qt.QWebEnginePage.WebWindowType) return QWebViewH;
 pragma Import(C,QWebEngineView_createWindow, "QWebEngineView_createWindow");
 
 procedure QWebEngineView_contextMenuEvent(handle:not null QWebViewH;e:QContextMenuEventH);
 pragma Import(C,QWebEngineView_contextMenuEvent, "QWebEngineView_contextMenuEvent");
 
 function  QWebEngineView_event(handle:not null QWebViewH;e:QEventH) return boolean;
 pragma Import(C,QWebEngineView_event, "QWebEngineView_event");
 
 procedure QWebEngineView_showEvent(handle:not null QWebViewH;e:QShowEventH);
 pragma Import(C,QWebEngineView_showEvent, "QWebEngineView_showEvent");
 
 procedure QWebEngineView_hideEvent(handle:not null QWebViewH;e:QHideEventH);
 pragma Import(C,QWebEngineView_hideEvent, "QWebEngineView_hideEvent");
 
 procedure QWebEngineView_dragEnterEvent(handle:not null QWebViewH;e:QDragEnterEventH);
 pragma Import(C,QWebEngineView_dragEnterEvent, "QWebEngineView_dragEnterEvent");
 
 procedure QWebEngineView_dragLeaveEvent(handle:not null QWebViewH;e:QDragLeaveEventH);
 pragma Import(C,QWebEngineView_dragLeaveEvent, "QWebEngineView_dragLeaveEvent");
 
 procedure QWebEngineView_dragMoveEvent(handle:not null QWebViewH;e:QDragMoveEventH);
 pragma Import(C,QWebEngineView_dragMoveEvent, "QWebEngineView_dragMoveEvent");
 
 procedure QWebEngineView_dropEvent(handle:not null QWebViewH;e:QDropEventH);
 pragma Import(C,QWebEngineView_dropEvent, "QWebEngineView_dropEvent");
 
 procedure QWebEngineView_load2(handle:not null QWebViewH;request: QRequestH);
 pragma Import(C,QWebEngineView_load2, "QWebEngineView_load2");
 
 procedure QWebEngineView_signal_slot_loadStarted(handle:QWebViewH; hook : voidCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_loadStarted, "QWebEngineView_signal_slot_loadStarted");
 
 procedure QWebEngineView_signal_slot_loadProgress(handle:QWebViewH; hook : intCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_loadProgress, "QWebEngineView_signal_slot_loadProgress");
 
 procedure QWebEngineView_signal_slot_loadFinished(handle:QWebViewH; hook : boolCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_loadFinished, "QWebEngineView_signal_slot_loadFinished");
 
 procedure QWebEngineView_signal_slot_selectionChanged(handle:QWebViewH; hook : voidCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_selectionChanged, "QWebEngineView_signal_slot_selectionChanged");
 
 procedure QWebEngineView_signal_slot_titleChanged(handle:QWebViewH; hook: QStringCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_titleChanged, "QWebEngineView_signal_slot_titleChanged");
 
 procedure QWebEngineView_signal_slot_urlChanged(handle:QWebViewH; hook: QUrlCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_urlChanged, "QWebEngineView_signal_slot_urlChanged");
 
 procedure QWebEngineView_signal_slot_iconUrlChanged(handle:QWebViewH; hook: QUrlCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_iconUrlChanged, "QWebEngineView_signal_slot_iconUrlChanged");

 type iconCallbackH is access procedure(icon:QIconH);
 pragma convention(C,iconCallbackH);

 procedure QWebEngineView_signal_slot_iconChanged(handle:not null QWebViewH;hook:iconCallBackH);
 pragma Import(C,QWebEngineView_signal_slot_iconChanged, "QWebEngineView_signal_slot_iconChanged");
 
 procedure QWebEngineView_signal_slot_renderProcessTerminated(handle:not null QWebViewH;hook:intIntCallbackH);
 pragma Import(C,QWebEngineView_signal_slot_renderProcessTerminated, "QWebEngineView_signal_slot_renderProcessTerminated");

procedure QWebEngineView_load(handle:not null QWebViewH;request: QRequestH);

end;
