--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QtabWidget           is

type QTabWidgetTabPosition is (QTabWidgetNorth, QTabWidgetSouth, QTabWidgetWest, QTabWidgetEast );
pragma Convention(C, QTabWidgetTabPosition);

type QTabWidgetTabShape is (QTabWidgetRounded, QTabWidgetTriangular );
pragma Convention(C, QTabWidgetTabShape);

function QTabWidget_create(parent: QWidgetH := null) return QTabWidgetH;   
pragma Import(C,QTabWidget_create,"QTabWidget_create");

procedure QTabWidget_destroy(handle: not null  QTabWidgetH);   
pragma Import(C,QTabWidget_destroy,"QTabWidget_destroy");

function QTabWidget_addTab(handle: not null  QTabWidgetH; widget: QWidgetH; p2: QStringH) return  Integer;    
pragma Import(C,QTabWidget_addTab,"QTabWidget_addTab");

function QTabWidget_addTab2(handle: not null  QTabWidgetH; widget: QWidgetH; icon: QIconH; label: QStringH) return  Integer;
pragma Import(C,QTabWidget_addTab2,"QTabWidget_addTab2");

function QTabWidget_insertTab(handle: not null  QTabWidgetH; index: Integer; widget: QWidgetH; p3: QStringH) return  Integer;    
pragma Import(C,QTabWidget_insertTab,"QTabWidget_insertTab");

function QTabWidget_insertTab2(handle: not null  QTabWidgetH; index: Integer; widget: QWidgetH; icon: QIconH; label: QStringH) return  Integer;
pragma Import(C,QTabWidget_insertTab2,"QTabWidget_insertTab2");

procedure QTabWidget_removeTab(handle: not null  QTabWidgetH; index: Integer);   
pragma Import(C,QTabWidget_removeTab,"QTabWidget_removeTab");

function QTabWidget_isTabEnabled(handle: not null  QTabWidgetH; index: Integer) return  Boolean;   
pragma Import(C,QTabWidget_isTabEnabled,"QTabWidget_isTabEnabled");

procedure QTabWidget_setTabEnabled(handle: not null  QTabWidgetH; index: Integer; p2: Boolean);   
pragma Import(C,QTabWidget_setTabEnabled,"QTabWidget_setTabEnabled");

function  QTabWidget_tabText(handle: not null  QTabWidgetH; index: Integer) return QStringH;
pragma Import(C,QTabWidget_tabText,"QTabWidget_tabText");

procedure QTabWidget_setTabText(handle: not null  QTabWidgetH; index: Integer; p2: QStringH);   
pragma Import(C,QTabWidget_setTabText,"QTabWidget_setTabText");

function  QTabWidget_tabIcon(handle: not null  QTabWidgetH; index: Integer) return QIconH;
pragma Import(C,QTabWidget_tabIcon,"QTabWidget_tabIcon");

procedure QTabWidget_setTabIcon(handle: not null  QTabWidgetH; index: Integer; icon: QIconH);   
pragma Import(C,QTabWidget_setTabIcon,"QTabWidget_setTabIcon");

procedure QTabWidget_setTabToolTip(handle: not null  QTabWidgetH; index: Integer; tip: QStringH);   
pragma Import(C,QTabWidget_setTabToolTip,"QTabWidget_setTabToolTip");

function  QTabWidget_tabToolTip(handle: not null  QTabWidgetH; index: Integer) return QStringH;
pragma Import(C,QTabWidget_tabToolTip,"QTabWidget_tabToolTip");

procedure QTabWidget_setTabWhatsThis(handle: not null  QTabWidgetH; index: Integer; text: QStringH);   
pragma Import(C,QTabWidget_setTabWhatsThis,"QTabWidget_setTabWhatsThis");

function  QTabWidget_tabWhatsThis(handle: not null  QTabWidgetH; index: Integer) return QStringH;
pragma Import(C,QTabWidget_tabWhatsThis,"QTabWidget_tabWhatsThis");

function QTabWidget_currentIndex(handle: not null  QTabWidgetH) return  Integer;   
pragma Import(C,QTabWidget_currentIndex,"QTabWidget_currentIndex");

function QTabWidget_currentWidget(handle: not null  QTabWidgetH) return  QWidgetH;   
pragma Import(C,QTabWidget_currentWidget,"QTabWidget_currentWidget");

function QTabWidget_widget(handle: not null  QTabWidgetH; index: Integer) return  QWidgetH;   
pragma Import(C,QTabWidget_widget,"QTabWidget_widget");

function QTabWidget_indexOf(handle: not null  QTabWidgetH; widget: QWidgetH) return  Integer;   
pragma Import(C,QTabWidget_indexOf,"QTabWidget_indexOf");

function QTabWidget_count(handle: not null  QTabWidgetH) return  Integer;   
pragma Import(C,QTabWidget_count,"QTabWidget_count");

function QTabWidget_tabPosition(handle: not null  QTabWidgetH) return  QTabWidgetTabPosition;   
pragma Import(C,QTabWidget_tabPosition,"QTabWidget_tabPosition");

procedure QTabWidget_setTabPosition(handle: not null  QTabWidgetH; p1: QTabWidgetTabPosition);   
pragma Import(C,QTabWidget_setTabPosition,"QTabWidget_setTabPosition");

function QTabWidget_tabShape(handle: not null  QTabWidgetH) return  QTabWidgetTabShape;   
pragma Import(C,QTabWidget_tabShape,"QTabWidget_tabShape");

procedure QTabWidget_setTabShape(handle: not null  QTabWidgetH; s: QTabWidgetTabShape);   
pragma Import(C,QTabWidget_setTabShape,"QTabWidget_setTabShape");

function  QTabWidget_sizeHint(handle: not null  QTabWidgetH) return QSizeH;
pragma Import(C,QTabWidget_sizeHint,"QTabWidget_sizeHint");

function  QTabWidget_minimumSizeHint(handle: not null  QTabWidgetH) return QSizeH;
pragma Import(C,QTabWidget_minimumSizeHint,"QTabWidget_minimumSizeHint");

procedure QTabWidget_setCornerWidget(handle: not null  QTabWidgetH; w: QWidgetH; corner: QtCorner := QtTopRightCorner);   
pragma Import(C,QTabWidget_setCornerWidget,"QTabWidget_setCornerWidget");

function QTabWidget_cornerWidget(handle: not null  QTabWidgetH; corner: QtCorner := QtTopRightCorner) return QWidgetH;   
pragma Import(C,QTabWidget_cornerWidget,"QTabWidget_cornerWidget");

function QTabWidget_elideMode(handle: not null  QTabWidgetH) return  QtTextElideMode;   
pragma Import(C,QTabWidget_elideMode,"QTabWidget_elideMode");

procedure QTabWidget_setElideMode(handle: not null  QTabWidgetH; p1: QtTextElideMode);   
pragma Import(C,QTabWidget_setElideMode,"QTabWidget_setElideMode");

function  QTabWidget_iconSize(handle: not null  QTabWidgetH) return QSizeH;
pragma Import(C,QTabWidget_iconSize,"QTabWidget_iconSize");

procedure QTabWidget_setIconSize(handle: not null  QTabWidgetH; size: QSizeH);   
pragma Import(C,QTabWidget_setIconSize,"QTabWidget_setIconSize");

function QTabWidget_usesScrollButtons(handle: not null  QTabWidgetH) return  Boolean;   
pragma Import(C,QTabWidget_usesScrollButtons,"QTabWidget_usesScrollButtons");

procedure QTabWidget_setUsesScrollButtons(handle: not null  QTabWidgetH; useButtons: Boolean);   
pragma Import(C,QTabWidget_setUsesScrollButtons,"QTabWidget_setUsesScrollButtons");

procedure QTabWidget_clear(handle: not null  QTabWidgetH);   
pragma Import(C,QTabWidget_clear,"QTabWidget_clear");

procedure QTabWidget_setCurrentIndex(handle: not null  QTabWidgetH; index: Integer);   
pragma Import(C,QTabWidget_setCurrentIndex,"QTabWidget_setCurrentIndex");

procedure QTabWidget_setCurrentWidget(handle: not null  QTabWidgetH; widget: QWidgetH);   
pragma Import(C,QTabWidget_setCurrentWidget,"QTabWidget_setCurrentWidget");

 type   QTabWidget_currentChangedEvent is access procedure (index: Integer);
 pragma Convention(C, QTabWidget_currentChangedEvent);
 
 procedure QTabWidget_signal_slot_currentChanged(handle: not null QTabWidgetH; hook:QTabWidget_currentChangedEvent);
 pragma Import(C,QTabWidget_signal_slot_currentChanged, "QTabWidget_signal_slot_currentChanged");

 function  QTabWidget_isTabVisible(handle:not null QTabWidgetH;index:integer) return boolean;
 pragma Import(C,QTabWidget_isTabVisible, "QTabWidget_isTabVisible");
 
 procedure QTabWidget_setTabVisible(handle:not null QTabWidgetH;index:integer;visible: boolean);
 pragma Import(C,QTabWidget_setTabVisible, "QTabWidget_setTabVisible");
 
 function  QTabWidget_isMovable(handle:not null QTabWidgetH) return boolean;
 pragma Import(C,QTabWidget_isMovable, "QTabWidget_isMovable");
 
 procedure QTabWidget_setMovable(handle:not null QTabWidgetH;movable:boolean);
 pragma Import(C,QTabWidget_setMovable, "QTabWidget_setMovable");
 
 function  QTabWidget_heightForWidth(handle:not null QTabWidgetH;width:integer) return integer;
 pragma Import(C,QTabWidget_heightForWidth, "QTabWidget_heightForWidth");
 
 function  QTabWidget_hasHeightForWidth(handle:not null QTabWidgetH) return boolean;
 pragma Import(C,QTabWidget_hasHeightForWidth, "QTabWidget_hasHeightForWidth");
 
 function  QTabWidget_documentMode(handle:not null QTabWidgetH) return boolean;
 pragma Import(C,QTabWidget_documentMode, "QTabWidget_documentMode");
 
 procedure QTabWidget_setDocumentMode(handle:not null QTabWidgetH;set:boolean);
 pragma Import(C,QTabWidget_setDocumentMode, "QTabWidget_setDocumentMode");
 
 function  QTabWidget_tabBarAutoHide(handle:not null QTabWidgetH) return boolean;
 pragma Import(C,QTabWidget_tabBarAutoHide, "QTabWidget_tabBarAutoHide");
 
 procedure QTabWidget_setTabBarAutoHide(handle:not null QTabWidgetH;enabled:boolean);
 pragma Import(C,QTabWidget_setTabBarAutoHide, "QTabWidget_setTabBarAutoHide");
 
 function  QTabWidget_tabBar(handle:not null QTabWidgetH) return QTabBarH;
 pragma Import(C,QTabWidget_tabBar, "QTabWidget_tabBar");
 
-------------------------------------------------------------------
function QTabWidget_addTab(handle: not null  QTabWidgetH; widget: QWidgetH; icon: QIconH; label: QStringH) return  Integer;
function QTabWidget_insertTab(handle: not null  QTabWidgetH; index: Integer; widget: QWidgetH; icon: QIconH; label: QStringH) return  Integer;

end Qt.QtabWidget;
