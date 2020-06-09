--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012 ,2014,2015                บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QTabWidget;  use  Qt.QTabWidget;
with Qt.QNamespace;
package Qt.QMainWindow          is

subtype QMainWindowDockOption  is cardinal;
subtype QMainWindowDockOptions is cardinal;

QMainWindowAnimatedDocks    : constant QMainWindowDockOption := 16#01#;
QMainWindowAllowNestedDocks : constant QMainWindowDockOption := 16#02#;
QMainWindowAllowTabbedDocks : constant QMainWindowDockOption := 16#04#;
QMainWindowForceTabbedDocks : constant QMainWindowDockOption := 16#08#;
QMainWindowVerticalTabs     : constant QMainWindowDockOption := 16#10#;

function QMainWindow_create(parent: QWidgetH := null; flags : integer := Qt.QNamespace.Window) return QMainWindowH;   
pragma Import(C,QMainWindow_create,"QMainWindow_create");


procedure QMainWindow_destroy(handle: not null  QMainWindowH);   
pragma Import(C,QMainWindow_destroy,"QMainWindow_destroy");

function  QMainWindow_iconSize(handle: not null  QMainWindowH) return QSizeH;
pragma Import(C,QMainWindow_iconSize,"QMainWindow_iconSize");

procedure QMainWindow_setIconSize(handle: not null  QMainWindowH; iconSize: QSizeH);   
pragma Import(C,QMainWindow_setIconSize,"QMainWindow_setIconSize");

function QMainWindow_toolButtonStyle(handle: not null  QMainWindowH) return  QtToolButtonStyle;   
pragma Import(C,QMainWindow_toolButtonStyle,"QMainWindow_toolButtonStyle");

procedure QMainWindow_setToolButtonStyle(handle: not null  QMainWindowH; toolButtonStyle: QtToolButtonStyle);   
pragma Import(C,QMainWindow_setToolButtonStyle,"QMainWindow_setToolButtonStyle");

function QMainWindow_isAnimated(handle: not null  QMainWindowH) return  Boolean;   
pragma Import(C,QMainWindow_isAnimated,"QMainWindow_isAnimated");

function QMainWindow_isDockNestingEnabled(handle: not null  QMainWindowH) return  Boolean;   
pragma Import(C,QMainWindow_isDockNestingEnabled,"QMainWindow_isDockNestingEnabled");

procedure QMainWindow_setDockOptions(handle: not null  QMainWindowH; options: QMainWindowDockOptions);   
pragma Import(C,QMainWindow_setDockOptions,"QMainWindow_setDockOptions");

function QMainWindow_dockOptions(handle: not null  QMainWindowH) return  QMainWindowDockOptions;   
pragma Import(C,QMainWindow_dockOptions,"QMainWindow_dockOptions");

function QMainWindow_isSeparator(handle: not null  QMainWindowH; pos: QPointH) return  Boolean;   
pragma Import(C,QMainWindow_isSeparator,"QMainWindow_isSeparator");

function QMainWindow_menuBar(handle: not null  QMainWindowH) return  QMenuBarH;   
pragma Import(C,QMainWindow_menuBar,"QMainWindow_menuBar");

procedure QMainWindow_setMenuBar(handle: not null  QMainWindowH; menubar: QMenuBarH);   
pragma Import(C,QMainWindow_setMenuBar,"QMainWindow_setMenuBar");

function QMainWindow_menuWidget(handle: not null  QMainWindowH) return  QWidgetH;   
pragma Import(C,QMainWindow_menuWidget,"QMainWindow_menuWidget");

procedure QMainWindow_setMenuWidget(handle: not null  QMainWindowH; menubar: QWidgetH);   
pragma Import(C,QMainWindow_setMenuWidget,"QMainWindow_setMenuWidget");

function QMainWindow_statusBar(handle: not null  QMainWindowH) return  QStatusBarH;   
pragma Import(C,QMainWindow_statusBar,"QMainWindow_statusBar");

procedure QMainWindow_setStatusBar(handle: not null  QMainWindowH; statusbar: QStatusBarH);   
pragma Import(C,QMainWindow_setStatusBar,"QMainWindow_setStatusBar");

function QMainWindow_centralWidget(handle: not null  QMainWindowH) return  QWidgetH;   
pragma Import(C,QMainWindow_centralWidget,"QMainWindow_centralWidget");

procedure QMainWindow_setCentralWidget(handle: not null  QMainWindowH; widget: QWidgetH);   
pragma Import(C,QMainWindow_setCentralWidget,"QMainWindow_setCentralWidget");

procedure QMainWindow_setCorner(handle: not null  QMainWindowH; corner: QtCorner; area: QtDockWidgetArea);   
pragma Import(C,QMainWindow_setCorner,"QMainWindow_setCorner");

function QMainWindow_corner(handle: not null  QMainWindowH; corner: QtCorner) return  QtDockWidgetArea;   
pragma Import(C,QMainWindow_corner,"QMainWindow_corner");

procedure QMainWindow_addToolBarBreak(handle: not null  QMainWindowH; area: QtToolBarArea := QtTopToolBarArea);   
pragma Import(C,QMainWindow_addToolBarBreak,"QMainWindow_addToolBarBreak");

procedure QMainWindow_insertToolBarBreak(handle: not null  QMainWindowH; before: QToolBarH);   
pragma Import(C,QMainWindow_insertToolBarBreak,"QMainWindow_insertToolBarBreak");

procedure QMainWindow_addToolBar(handle: not null  QMainWindowH; area: QtToolBarArea; toolbar: QToolBarH);    
pragma Import(C,QMainWindow_addToolBar,"QMainWindow_addToolBar");

procedure QMainWindow_addToolBar2(handle: not null  QMainWindowH; toolbar: QToolBarH);
pragma Import(C,QMainWindow_addToolBar2,"QMainWindow_addToolBar2");

function QMainWindow_addToolBar3(handle: not null  QMainWindowH; title: QStringH) return  QToolBarH;
pragma Import(C,QMainWindow_addToolBar3,"QMainWindow_addToolBar3");

procedure QMainWindow_insertToolBar(handle: not null  QMainWindowH; before: QToolBarH; toolbar: QToolBarH);   
pragma Import(C,QMainWindow_insertToolBar,"QMainWindow_insertToolBar");

procedure QMainWindow_removeToolBar(handle: not null  QMainWindowH; toolbar: QToolBarH);   
pragma Import(C,QMainWindow_removeToolBar,"QMainWindow_removeToolBar");

procedure QMainWindow_removeToolBarBreak(handle: not null  QMainWindowH; before: QToolBarH);   
pragma Import(C,QMainWindow_removeToolBarBreak,"QMainWindow_removeToolBarBreak");

procedure QMainWindow_setUnifiedTitleAndToolBarOnMac(handle: not null  QMainWindowH; set: Boolean);   
pragma Import(C,QMainWindow_setUnifiedTitleAndToolBarOnMac,"QMainWindow_setUnifiedTitleAndToolBarOnMac");

function QMainWindow_unifiedTitleAndToolBarOnMac(handle: not null  QMainWindowH) return  Boolean;   
pragma Import(C,QMainWindow_unifiedTitleAndToolBarOnMac,"QMainWindow_unifiedTitleAndToolBarOnMac");

function QMainWindow_toolBarArea(handle: not null  QMainWindowH; toolbar: QToolBarH) return  QtToolBarArea;   
pragma Import(C,QMainWindow_toolBarArea,"QMainWindow_toolBarArea");

function QMainWindow_toolBarBreak(handle: not null  QMainWindowH; toolbar: QToolBarH) return  Boolean;   
pragma Import(C,QMainWindow_toolBarBreak,"QMainWindow_toolBarBreak");

procedure QMainWindow_addDockWidget(handle: not null  QMainWindowH; area: QtDockWidgetArea; dockwidget: QDockWidgetH);    
pragma Import(C,QMainWindow_addDockWidget,"QMainWindow_addDockWidget");

procedure QMainWindow_addDockWidget2(handle: not null  QMainWindowH; area: QtDockWidgetArea; dockwidget: QDockWidgetH; orientation: QtOrientation);
pragma Import(C,QMainWindow_addDockWidget2,"QMainWindow_addDockWidget2");

procedure QMainWindow_splitDockWidget(handle: not null  QMainWindowH; after: QDockWidgetH; dockwidget: QDockWidgetH; orientation: QtOrientation);   
pragma Import(C,QMainWindow_splitDockWidget,"QMainWindow_splitDockWidget");

procedure QMainWindow_tabifyDockWidget(handle: not null  QMainWindowH; first: QDockWidgetH; second: QDockWidgetH);   
pragma Import(C,QMainWindow_tabifyDockWidget,"QMainWindow_tabifyDockWidget");

procedure QMainWindow_removeDockWidget(handle: not null  QMainWindowH; dockwidget: QDockWidgetH);   
pragma Import(C,QMainWindow_removeDockWidget,"QMainWindow_removeDockWidget");

function QMainWindow_dockWidgetArea(handle: not null  QMainWindowH; dockwidget: QDockWidgetH) return  QtDockWidgetArea;   
pragma Import(C,QMainWindow_dockWidgetArea,"QMainWindow_dockWidgetArea");

function  QMainWindow_saveState(handle: not null  QMainWindowH; version: Integer := 0) return QByteArrayH;
pragma Import(C,QMainWindow_saveState,"QMainWindow_saveState");

function QMainWindow_restoreState(handle: not null  QMainWindowH; state: QByteArrayH; version: Integer := 0) return Boolean;   
pragma Import(C,QMainWindow_restoreState,"QMainWindow_restoreState");

function QMainWindow_createPopupMenu(handle: not null  QMainWindowH) return  QMenuH;   
pragma Import(C,QMainWindow_createPopupMenu,"QMainWindow_createPopupMenu");

procedure QMainWindow_setAnimated(handle: not null  QMainWindowH; enabled: Boolean);   
pragma Import(C,QMainWindow_setAnimated,"QMainWindow_setAnimated");

procedure QMainWindow_setDockNestingEnabled(handle: not null  QMainWindowH; enabled: Boolean);   
pragma Import(C,QMainWindow_setDockNestingEnabled,"QMainWindow_setDockNestingEnabled");

procedure QMainWindow_resize(handle: not null QMainWindowH; w,h:integer);
pragma Import(C,QMainWindow_resize, "QMainWindow_resize");

 function  QMainWindow_tabShape(handle:not null QMainWindowH) return QTabWidgetTabShape ;
 pragma Import(C,QMainWindow_tabShape, "QMainWindow_tabShape");
 
 procedure QMainWindow_setTabShape(handle:not null QMainWindowH;tabShape:QTabWidgetTabShape );
 pragma Import(C,QMainWindow_setTabShape, "QMainWindow_setTabShape");
 
 function  QMainWindow_tabPosition(handle:not null QMainWindowH;area:QtDockWidgetArea) return QTabWidgetTabPosition;
 pragma Import(C,QMainWindow_tabPosition, "QMainWindow_tabPosition");
 
 procedure QMainWindow_setTabPosition(handle:not null QMainWindowH;areas:QtDockWidgetAreas; tabPosition: QTabWidgetTabPosition);
 pragma Import(C,QMainWindow_setTabPosition, "QMainWindow_setTabPosition");
 
 function  QMainWindow_takeCentralWidget(handle:not null QMainWindowH) return QWidgetH;
 pragma Import(C,QMainWindow_takeCentralWidget, "QMainWindow_takeCentralWidget");
 
 function  QMainWindow_tabifiedDockWidgets(handle:not null QMainWindowH;dockwidget:QDockWidgetH) return QListH;
 pragma Import(C,QMainWindow_tabifiedDockWidgets, "QMainWindow_tabifiedDockWidgets");
 
     

type QMainWindow_iconSizeChangedEvent is access procedure (iconSize: QSizeH);
pragma Convention(C,QMainWindow_iconSizeChangedEvent );

type QMainWindow_toolButtonStyleChangedEvent is access procedure (toolButtonStyle: QtToolButtonStyle);
pragma Convention(C,QMainWindow_toolButtonStyleChangedEvent );

procedure QMainWindow_signal_slot_iconSizeChanged(handle: not null QMainWindowH; hook:QMainWindow_iconSizeChangedEvent);
pragma Import(C,QMainWindow_signal_slot_iconSizeChanged, "QMainWindow_signal_slot_iconSizeChanged");

procedure QMainWindow_signal_slot_toolButtonStyleChanged(handle: not null QMainWindowH; hook:QMainWindow_toolButtonStyleChangedEvent);
pragma Import(C,QMainWindow_signal_slot_toolButtonStyleChanged, "QMainWindow_signal_slot_toolButtonStyleChanged");

 procedure QMainWindow_resizeDocks(handle:not null QMainWindowH;docks:QObjectListH;sizes:QIntListH; orientation: QtOrientation);
 pragma Import(C,QMainWindow_resizeDocks, "QMainWindow_resizeDocks");
 
--------------------------------------------------------------------------
procedure QMainWindow_addToolBar(handle: not null  QMainWindowH; toolbar: QToolBarH);
function QMainWindow_addToolBar(handle: not null  QMainWindowH; title: QStringH) return  QToolBarH;
procedure QMainWindow_addDockWidget(handle: not null  QMainWindowH; area: QtDockWidgetArea; dockwidget: QDockWidgetH; orientation: QtOrientation);

end Qt.QMainWindow; 
