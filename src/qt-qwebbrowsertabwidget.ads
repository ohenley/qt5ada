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

with Qt.QWebEnginePage; use Qt.QWebEnginePage;
with builtin; use builtin;
package Qt.QWebBrowserTabWidget is

 function  QWebBrowserTabBar_create(parent:QWidgetH := null) return QTabBarH;
 pragma Import(C,QWebBrowserTabBar_create, "QWebBrowserTabBar_create");
 
 function  QWebBrowserTabWidget_create(parent:QWidgetH := null) return QTabWidgetH;
 pragma Import(C,QWebBrowserTabWidget_create, "QWebBrowserTabWidget_create");
 
 procedure QWebBrowserTabWidget_clear(handle:not null QTabWidgetH);
 pragma Import(C,QWebBrowserTabWidget_clear, "QWebBrowserTabWidget_clear");
 
 procedure QWebBrowserTabWidget_addWebAction(handle:not null QTabWidgetH;action:QActionH;wAction: WebAction);
 pragma Import(C,QWebBrowserTabWidget_addWebAction, "QWebBrowserTabWidget_addWebAction");
 
 function  QWebBrowserTabWidget_newTabAction(handle:not null QTabWidgetH) return QActionH;
 pragma Import(C,QWebBrowserTabWidget_newTabAction, "QWebBrowserTabWidget_newTabAction");
 
 function  QWebBrowserTabWidget_closeTabAction(handle:not null QTabWidgetH) return QActionH;
 pragma Import(C,QWebBrowserTabWidget_closeTabAction, "QWebBrowserTabWidget_closeTabAction");
 
 function  QWebBrowserTabWidget_recentlyClosedTabsAction(handle:not null QTabWidgetH) return QActionH;
 pragma Import(C,QWebBrowserTabWidget_recentlyClosedTabsAction, "QWebBrowserTabWidget_recentlyClosedTabsAction");
 
 function  QWebBrowserTabWidget_nextTabAction(handle:not null QTabWidgetH) return QActionH;
 pragma Import(C,QWebBrowserTabWidget_nextTabAction, "QWebBrowserTabWidget_nextTabAction");
 
 function  QWebBrowserTabWidget_previousTabAction(handle:not null QTabWidgetH) return QActionH;
 pragma Import(C,QWebBrowserTabWidget_previousTabAction, "QWebBrowserTabWidget_previousTabAction");
 
 function  QWebBrowserTabWidget_lineEditStack(handle:not null QTabWidgetH) return QWidgetH;
 pragma Import(C,QWebBrowserTabWidget_lineEditStack, "QWebBrowserTabWidget_lineEditStack");
 
 function  QWebBrowserTabWidget_currentLineEdit(handle:not null QTabWidgetH) return QLineEditH;
 pragma Import(C,QWebBrowserTabWidget_currentLineEdit, "QWebBrowserTabWidget_currentLineEdit");
 
 function  QWebBrowserTabWidget_currentWebView(handle:not null QTabWidgetH) return QWebViewH;
 pragma Import(C,QWebBrowserTabWidget_currentWebView, "QWebBrowserTabWidget_currentWebView");
 
 function  QWebBrowserTabWidget_webView(handle:not null QTabWidgetH;index:integer) return QWebViewH;
 pragma Import(C,QWebBrowserTabWidget_webView, "QWebBrowserTabWidget_webView");
 
 function  QWebBrowserTabWidget_lineEdit(handle:not null QTabWidgetH;index:integer) return QLineEditH;
 pragma Import(C,QWebBrowserTabWidget_lineEdit, "QWebBrowserTabWidget_lineEdit");
 
 function  QWebBrowserTabWidget_webViewIndex(handle:not null QTabWidgetH;wView:QWebViewH) return integer;
 pragma Import(C,QWebBrowserTabWidget_webViewIndex, "QWebBrowserTabWidget_webViewIndex");
 
 function  QWebBrowserTabWidget_saveState(handle:not null QTabWidgetH) return string;
 pragma Import(C,QWebBrowserTabWidget_saveState, "QWebBrowserTabWidget_saveState");
 
 function  QWebBrowserTabWidget_restoreState(handle:not null QTabWidgetH;state:zstring) return boolean;
 pragma Import(C,QWebBrowserTabWidget_restoreState, "QWebBrowserTabWidget_restoreState");
 
 procedure QWebBrowserTabWidget_setProfile(handle:not null QTabWidgetH;profile:QWebProfileH);
 pragma Import(C,QWebBrowserTabWidget_setProfile, "QWebBrowserTabWidget_setProfile");
 
 type intIntCallbackH is access procedure(p1,p2:integer);
 pragma convention(C,intIntCallbackH);
 
 procedure QWebBrowserTabBar_signal_slot_newTab(handle:not null QTabBarH; hook: voidCallbackH);
 pragma Import(C,QWebBrowserTabBar_signal_slot_newTab, "QWebBrowserTabBar_signal_slot_newTab");
 
 procedure QWebBrowserTabBar_signal_slot_cloneTab(handle:not null QTabBarH; hook: intCallbackH);
 pragma Import(C,QWebBrowserTabBar_signal_slot_cloneTab, "QWebBrowserTabBar_signal_slot_cloneTab");
 
 procedure QWebBrowserTabBar_signal_slot_closeTab(handle:not null QTabBarH; hook: intCallbackH);
 pragma Import(C,QWebBrowserTabBar_signal_slot_closeTab, "QWebBrowserTabBar_signal_slot_closeTab");
 
 procedure QWebBrowserTabBar_signal_slot_closeOtherTabs(handle:not null QTabBarH; hook: intCallbackH);
 pragma Import(C,QWebBrowserTabBar_signal_slot_closeOtherTabs, "QWebBrowserTabBar_signal_slot_closeOtherTabs");
 
 procedure QWebBrowserTabBar_signal_slot_reloadTab(handle:not null QTabBarH; hook: intCallbackH);
 pragma Import(C,QWebBrowserTabBar_signal_slot_reloadTab, "QWebBrowserTabBar_signal_slot_reloadTab");
 
 procedure QWebBrowserTabBar_signal_slot_reloadAllTabs(handle:not null QTabBarH; hook: voidCallbackH);
 pragma Import(C,QWebBrowserTabBar_signal_slot_reloadAllTabs, "QWebBrowserTabBar_signal_slot_reloadAllTabs");
 
 procedure QWebBrowserTabBar_signal_slot_tabMoveRequested(handle:not null QTabWidgetH; hook: intIntCallbackH);
 pragma Import(C,QWebBrowserTabBar_signal_slot_tabMoveRequested, "QWebBrowserTabBar_signal_slot_tabMoveRequested");
 
 procedure QWebBrowserTabWidget_signal_slot_loadPage(handle:not null QTabWidgetH;hook: QStringCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_loadPage, "QWebBrowserTabWidget_signal_slot_loadPage");
 
 procedure QWebBrowserTabWidget_signal_slot_tabsChanged(handle:not null QTabWidgetH; hook: voidCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_tabsChanged, "QWebBrowserTabWidget_signal_slot_tabsChanged");
 
 procedure QWebBrowserTabWidget_signal_slot_lastTabClosed(handle:not null QTabWidgetH; hook: voidCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_lastTabClosed, "QWebBrowserTabWidget_signal_slot_lastTabClosed");
 
 procedure QWebBrowserTabWidget_signal_slot_setCurrentTitle(handle:not null QTabWidgetH;hook: QStringCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_setCurrentTitle, "QWebBrowserTabWidget_signal_slot_setCurrentTitle");
 
 procedure QWebBrowserTabWidget_signal_slot_showStatusBarMessage(handle:not null QTabWidgetH;hook: QStringCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_showStatusBarMessage, "QWebBrowserTabWidget_signal_slot_showStatusBarMessage");
 
 procedure QWebBrowserTabWidget_signal_slot_linkHovered(handle:not null QTabWidgetH;hook: QStringCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_linkHovered, "QWebBrowserTabWidget_signal_slot_linkHovered");
 
 procedure QWebBrowserTabWidget_signal_slot_loadProgress(handle:not null QTabWidgetH; hook: intCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_loadProgress, "QWebBrowserTabWidget_signal_slot_loadProgress");
 
 procedure QWebBrowserTabWidget_signal_slot_geometryChangeRequested(handle:not null QTabWidgetH;hook: QRectCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_geometryChangeRequested, "QWebBrowserTabWidget_signal_slot_geometryChangeRequested");
 
 procedure QWebBrowserTabWidget_signal_slot_menuBarVisibilityChangeRequested(handle:not null QTabWidgetH; hook: boolCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_menuBarVisibilityChangeRequested, "QWebBrowserTabWidget_signal_slot_menuBarVisibilityChangeRequested");
 
 procedure QWebBrowserTabWidget_signal_slot_statusBarVisibilityChangeRequested(handle:not null QTabWidgetH; hook: boolCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_statusBarVisibilityChangeRequested, "QWebBrowserTabWidget_signal_slot_statusBarVisibilityChangeRequested");
 
 procedure QWebBrowserTabWidget_signal_slot_toolBarVisibilityChangeRequested(handle:not null QTabWidgetH; hook: boolCallbackH);
 pragma Import(C,QWebBrowserTabWidget_signal_slot_toolBarVisibilityChangeRequested, "QWebBrowserTabWidget_signal_slot_toolBarVisibilityChangeRequested");

end;
