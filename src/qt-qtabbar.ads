--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QTabBar              is

type QTabBarShape is (QTabBarRoundedNorth, QTabBarRoundedSouth, QTabBarRoundedWest, QTabBarRoundedEast, QTabBarTriangularNorth, QTabBarTriangularSouth, QTabBarTriangularWest, QTabBarTriangularEast );
pragma Convention(C, QTabBarShape);

function QTabBar_create(parent: QWidgetH := null) return QTabBarH;   
pragma Import(C,QTabBar_create,"QTabBar_create");

procedure QTabBar_destroy(handle: not null  QTabBarH);   
pragma Import(C,QTabBar_destroy,"QTabBar_destroy");

function QTabBar_shape(handle: not null  QTabBarH) return  QTabBarShape;   
pragma Import(C,QTabBar_shape,"QTabBar_shape");

procedure QTabBar_setShape(handle: not null  QTabBarH; shape: QTabBarShape);   
pragma Import(C,QTabBar_setShape,"QTabBar_setShape");

function QTabBar_addTab(handle: not null  QTabBarH; text: QStringH) return  Integer;    
pragma Import(C,QTabBar_addTab,"QTabBar_addTab");

function QTabBar_addTab2(handle: not null  QTabBarH; icon: QIconH; text: QStringH) return  Integer;
pragma Import(C,QTabBar_addTab2,"QTabBar_addTab2");

function QTabBar_insertTab(handle: not null  QTabBarH; index: Integer; text: QStringH) return  Integer;    
pragma Import(C,QTabBar_insertTab,"QTabBar_insertTab");

function QTabBar_insertTab2(handle: not null  QTabBarH; index: Integer; icon: QIconH; text: QStringH) return  Integer;
pragma Import(C,QTabBar_insertTab2,"QTabBar_insertTab2");

procedure QTabBar_removeTab(handle: not null  QTabBarH; index: Integer);   
pragma Import(C,QTabBar_removeTab,"QTabBar_removeTab");

function QTabBar_isTabEnabled(handle: not null  QTabBarH; index: Integer) return  Boolean;   
pragma Import(C,QTabBar_isTabEnabled,"QTabBar_isTabEnabled");

procedure QTabBar_setTabEnabled(handle: not null  QTabBarH; index: Integer; p2: Boolean);   
pragma Import(C,QTabBar_setTabEnabled,"QTabBar_setTabEnabled");

function  QTabBar_tabText(handle: not null  QTabBarH; index: Integer) return QStringH;
pragma Import(C,QTabBar_tabText,"QTabBar_tabText");

procedure QTabBar_setTabText(handle: not null  QTabBarH; index: Integer; text: QStringH);   
pragma Import(C,QTabBar_setTabText,"QTabBar_setTabText");

function  QTabBar_tabTextColor(handle: not null  QTabBarH; index: Integer) return QColorH;
pragma Import(C,QTabBar_tabTextColor,"QTabBar_tabTextColor");

procedure QTabBar_setTabTextColor(handle: not null  QTabBarH; index: Integer; color: QColorH);   
pragma Import(C,QTabBar_setTabTextColor,"QTabBar_setTabTextColor");

function  QTabBar_tabIcon(handle: not null  QTabBarH; index: Integer) return QIconH;
pragma Import(C,QTabBar_tabIcon,"QTabBar_tabIcon");

procedure QTabBar_setTabIcon(handle: not null  QTabBarH; index: Integer; icon: QIconH);   
pragma Import(C,QTabBar_setTabIcon,"QTabBar_setTabIcon");

function QTabBar_elideMode(handle: not null  QTabBarH) return  QtTextElideMode;   
pragma Import(C,QTabBar_elideMode,"QTabBar_elideMode");

procedure QTabBar_setElideMode(handle: not null  QTabBarH; p1: QtTextElideMode);   
pragma Import(C,QTabBar_setElideMode,"QTabBar_setElideMode");

procedure QTabBar_setTabToolTip(handle: not null  QTabBarH; index: Integer; tip: QStringH);   
pragma Import(C,QTabBar_setTabToolTip,"QTabBar_setTabToolTip");

function  QTabBar_tabToolTip(handle: not null  QTabBarH; index: Integer) return QStringH;
pragma Import(C,QTabBar_tabToolTip,"QTabBar_tabToolTip");

procedure QTabBar_setTabWhatsThis(handle: not null  QTabBarH; index: Integer; text: QStringH);   
pragma Import(C,QTabBar_setTabWhatsThis,"QTabBar_setTabWhatsThis");

function  QTabBar_tabWhatsThis(handle: not null  QTabBarH; index: Integer) return QStringH;
pragma Import(C,QTabBar_tabWhatsThis,"QTabBar_tabWhatsThis");

procedure QTabBar_setTabData(handle: not null  QTabBarH; index: Integer; data: QVariantH);   
pragma Import(C,QTabBar_setTabData,"QTabBar_setTabData");

function  QTabBar_tabData(handle: not null  QTabBarH; index: Integer) return QVariantH;
pragma Import(C,QTabBar_tabData,"QTabBar_tabData");

function  QTabBar_tabRect(handle: not null  QTabBarH; index: Integer) return QRectH;
pragma Import(C,QTabBar_tabRect,"QTabBar_tabRect");

function QTabBar_tabAt(handle: not null  QTabBarH; pos: QPointH) return  Integer;   
pragma Import(C,QTabBar_tabAt,"QTabBar_tabAt");

function QTabBar_currentIndex(handle: not null  QTabBarH) return  Integer;   
pragma Import(C,QTabBar_currentIndex,"QTabBar_currentIndex");

function QTabBar_count(handle: not null  QTabBarH) return  Integer;   
pragma Import(C,QTabBar_count,"QTabBar_count");

function  QTabBar_sizeHint(handle: not null  QTabBarH) return QSizeH;
pragma Import(C,QTabBar_sizeHint,"QTabBar_sizeHint");

function  QTabBar_minimumSizeHint(handle: not null  QTabBarH) return QSizeH;
pragma Import(C,QTabBar_minimumSizeHint,"QTabBar_minimumSizeHint");

procedure QTabBar_setDrawBase(handle: not null  QTabBarH; drawTheBase: Boolean);   
pragma Import(C,QTabBar_setDrawBase,"QTabBar_setDrawBase");

function QTabBar_drawBase(handle: not null  QTabBarH) return  Boolean;   
pragma Import(C,QTabBar_drawBase,"QTabBar_drawBase");

function  QTabBar_iconSize(handle: not null  QTabBarH) return QSizeH;
pragma Import(C,QTabBar_iconSize,"QTabBar_iconSize");

procedure QTabBar_setIconSize(handle: not null  QTabBarH; size: QSizeH);   
pragma Import(C,QTabBar_setIconSize,"QTabBar_setIconSize");

function QTabBar_usesScrollButtons(handle: not null  QTabBarH) return  Boolean;   
pragma Import(C,QTabBar_usesScrollButtons,"QTabBar_usesScrollButtons");

procedure QTabBar_setUsesScrollButtons(handle: not null  QTabBarH; useButtons: Boolean);   
pragma Import(C,QTabBar_setUsesScrollButtons,"QTabBar_setUsesScrollButtons");

procedure QTabBar_setCurrentIndex(handle: not null  QTabBarH; index: Integer);   
pragma Import(C,QTabBar_setCurrentIndex,"QTabBar_setCurrentIndex");

type QTabBar_IntEvent is access procedure (index: Integer);
pragma Convention(C, QTabBar_IntEvent);
 
type QTabBar_IntIntEvent is access procedure (fromIndex,toIndex: Integer);
pragma Convention(C, QTabBar_IntIntEvent);
 
 procedure QTabBar_signal_slot_currentChanged(handle: not null QTabBarH; hook:QTabBar_IntEvent);
 pragma Import(C,QTabBar_signal_slot_currentChanged, "QTabBar_signal_slot_currentChanged");

 procedure QTabBar_signal_slot_tabCloseRequested(handle:not null QTabBarH;hook: QTabBar_IntEvent);          
 pragma Import(C,QTabBar_signal_slot_tabCloseRequested, "QTabBar_signal_slot_tabCloseRequested");
 
 procedure QTabBar_signal_slot_tabMoved(handle:not null QTabBarH;hook: QTabBar_IntIntEvent);
 pragma Import(C,QTabBar_signal_slot_tabMoved, "QTabBar_signal_slot_tabMoved");
 
 procedure QTabBar_signal_slot_tabBarClicked(handle:not null QTabBarH;hook: QTabBar_IntEvent);    
 pragma Import(C,QTabBar_signal_slot_tabBarClicked, "QTabBar_signal_slot_tabBarClicked");
 
 procedure QTabBar_signal_slot_tabBarDoubleClicked(handle:not null QTabBarH;hook: QTabBar_IntEvent);    
 pragma Import(C,QTabBar_signal_slot_tabBarDoubleClicked, "QTabBar_signal_slot_tabBarDoubleClicked");
 
-----------------------------------------------------------------------
function QTabBar_addTab(handle: not null  QTabBarH; icon: QIconH; text: QStringH) return  Integer;
function QTabBar_insertTab(handle: not null  QTabBarH; index: Integer; icon: QIconH; text: QStringH) return  Integer;

end Qt.QTabBar;
