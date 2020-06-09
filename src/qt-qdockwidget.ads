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

package Qt.QDockWidget  is

 NoDockWidgetFeatures       : constant := 16#00#;
 DockWidgetClosable         : constant := 16#01#;
 DockWidgetMovable          : constant := 16#02#;
 DockWidgetFloatable        : constant := 16#04#;
 DockWidgetVerticalTitleBar : constant := 16#08#;
 DockWidgetFeatureMask      : constant := 16#0f#;
 Reserved                   : constant := 16#ff#;

 function QDockWidget_create(title: QStringH; parent:QWidgetH; flags: quint) return QDockWidgetH;
 pragma Import(c,QDockWidget_create, "QDockWidget_create");

 procedure QDockWidget_destroy(handle: not null  QDockWidgetH);
 pragma Import(c,QDockWidget_destroy, "QDockWidget_destroy");

 function  QDockWidget_create2(parent:QWidgetH; flags: quint) return QDockWidgetH;
 pragma Import(c,QDockWidget_create2, "QDockWidget_create2");

 function  QDockWidget_widget(handle: not null  QDockWidgetH) return QWidgetH;
 pragma Import(c,QDockWidget_widget, "QDockWidget_widget");

 procedure QDockWidget_setWidget(handle: not null  QDockWidgetH; widget: QWidgetH);
 pragma Import(c,QDockWidget_setWidget, "QDockWidget_setWidget");

 procedure QDockWidget_setFeatures(handle: not null  QDockWidgetH; featurs: quint);
 pragma Import(c,QDockWidget_setFeatures, "QDockWidget_setFeatures");

 function  QDockWidget_features(handle: not null  QDockWidgetH) return quint;
 pragma Import(c,QDockWidget_features, "QDockWidget_features");

 procedure QDockWidget_setFloating(handle: not null  QDockWidgetH; floating: boolean);
 pragma Import(c,QDockWidget_setFloating, "QDockWidget_setFloating");

 function  QDockWidget_isFloating(handle: not null  QDockWidgetH) return boolean;
 pragma Import(c,QDockWidget_isFloating, "QDockWidget_isFloating");

 procedure QDockWidget_setAllowedAreas(handle: not null  QDockWidgetH; areas: quint);
 pragma Import(c,QDockWidget_setAllowedAreas, "QDockWidget_setAllowedAreas");

 function  QDockWidget_allowedAreas(handle: not null  QDockWidgetH) return quint;
 pragma Import(c,QDockWidget_allowedAreas, "QDockWidget_allowedAreas");

 procedure QDockWidget_setTitleBarWidget(handle: not null  QDockWidgetH; widget: QWidgetH);
 pragma Import(c,QDockWidget_setTitleBarWidget, "QDockWidget_setTitleBarWidget");

 function  QDockWidget_titleBarWidget(handle: not null  QDockWidgetH) return QWidgetH;
 pragma Import(c,QDockWidget_titleBarWidget, "QDockWidget_titleBarWidget");

 function  QDockWidget_isAreaAllowed(handle: not null  QDockWidgetH; area: QtDockWidgetArea) return boolean;
 pragma Import(c,QDockWidget_isAreaAllowed, "QDockWidget_isAreaAllowed");

 function  QDockWidget_toggleViewAction(handle: not null  QDockWidgetH) return QActionH;
 pragma Import(c,QDockWidget_toggleViewAction, "QDockWidget_toggleViewAction");
 
 function  QDockWidget_GetArea(index: integer := 1) return QtDockWidgetArea;
 pragma Import(C,QDockWidget_GetArea, "QDockWidget_GetArea");

 type QDockWidget_featuresChangedEvent is access procedure(features:integer);
 pragma Convention(C,QDockWidget_featuresChangedEvent);

 type QDockWidget_topLevelChangedEvent is access procedure(fl:boolean);
 pragma Convention(C,QDockWidget_topLevelChangedEvent);

 type QDockWidget_allowedAreasChangedEvent is access procedure(p1:integer);
 pragma Convention(C,QDockWidget_allowedAreasChangedEvent);

 type QDockWidget_visibilityChangedEvent is access procedure(fl:boolean);
 pragma Convention(C,QDockWidget_visibilityChangedEvent);

 type QDockWidget_dockLocationChangedEvent is access procedure(p1:integer);
 pragma Convention(C,QDockWidget_dockLocationChangedEvent);
 
 procedure QDockWidget_signal_slot_featuresChanged(handle: not null QDockWidgetH; hook:QDockWidget_featuresChangedEvent);
 pragma Import(C,QDockWidget_signal_slot_featuresChanged, "QDockWidget_signal_slot_featuresChanged");
 
 procedure QDockWidget_signal_slot_topLevelChanged(handle: not null QDockWidgetH; hook:QDockWidget_topLevelChangedEvent);
 pragma Import(C,QDockWidget_signal_slot_topLevelChanged, "QDockWidget_signal_slot_topLevelChanged");
 
 procedure QDockWidget_signal_slot_allowedAreasChanged(handle: not null QDockWidgetH; hook:QDockWidget_allowedAreasChangedEvent);
 pragma Import(C,QDockWidget_signal_slot_allowedAreasChanged, "QDockWidget_signal_slot_allowedAreasChanged");
 
 procedure QDockWidget_signal_slot_visibilityChanged(handle: not null QDockWidgetH; hook:QDockWidget_visibilityChangedEvent);
 pragma Import(C,QDockWidget_signal_slot_visibilityChanged, "QDockWidget_signal_slot_visibilityChanged");
 
 procedure QDockWidget_signal_slot_dockLocationChanged(handle: not null QDockWidgetH; hook:QDockWidget_dockLocationChangedEvent);
 pragma Import(C,QDockWidget_signal_slot_dockLocationChanged, "QDockWidget_signal_slot_dockLocationChanged");
 
-----------------------------------------------------------------------------------------------------------
 function  QDockWidget_create(parent:QWidgetH; flags: quint) return QDockWidgetH;
end  Qt.QDockWidget;
