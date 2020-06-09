--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAction; use Qt.QAction;
with builtin; use builtin;
package Qt.QMenu                is

menuBar : QMenuBarH := null;

function QMenu_create(parent: QWidgetH := null) return QMenuH;    
pragma Import(C,QMenu_create,"QMenu_create");

procedure QMenu_destroy(handle: not null  QMenuH);   
pragma Import(C,QMenu_destroy,"QMenu_destroy");

function QMenu_create2(title: QStringH; parent: QWidgetH := null) return QMenuH;
pragma Import(C,QMenu_create2,"QMenu_create2");

function QMenu_addAction(handle: not null  QMenuH; text: QStringH) return  QActionH;    
pragma Import(C,QMenu_addAction,"QMenu_addAction");

function QMenu_addAction2(handle: not null  QMenuH; icon: QIconH; text: QStringH) return  QActionH;
pragma Import(C,QMenu_addAction2,"QMenu_addAction2");

--function QMenu_addAction3(handle: not null  QMenuH; text: QStringH; receiver: QObjectH; member: zstring; shortcut: QKeySequenceH := null) return QActionH;
--pragma Import(C,QMenu_addAction3,"QMenu_addAction3");
--function QMenu_addAction4(handle: not null  QMenuH; icon: QIconH; text: QStringH; receiver: QObjectH; member: zstring; shortcut: QKeySequenceH := null) return QActionH;
--pragma Import(C,QMenu_addAction4,"QMenu_addAction4");

procedure QMenu_addAction5(handle: not null  QMenuH;action:QActionH);
pragma Import(C,QMenu_addAction5,"QMenu_addAction5");

function QMenu_addMenu(handle: not null  QMenuH; menu: QMenuH) return  QActionH;    
pragma Import(C,QMenu_addMenu,"QMenu_addMenu");

function QMenu_addMenu2(handle: not null  QMenuH; title: QStringH) return  QMenuH;
pragma Import(C,QMenu_addMenu2,"QMenu_addMenu2");

function QMenu_addMenu3(handle: not null  QMenuH; icon: QIconH; title: QStringH) return  QMenuH;
pragma Import(C,QMenu_addMenu3,"QMenu_addMenu3");

function QMenu_addSeparator(handle: not null  QMenuH) return  QActionH;   
pragma Import(C,QMenu_addSeparator,"QMenu_addSeparator");

function QMenu_insertMenu(handle: not null  QMenuH; before: QActionH; menu: QMenuH) return  QActionH;   
pragma Import(C,QMenu_insertMenu,"QMenu_insertMenu");

function QMenu_insertSeparator(handle: not null  QMenuH; before: QActionH) return  QActionH;   
pragma Import(C,QMenu_insertSeparator,"QMenu_insertSeparator");

function QMenu_isEmpty(handle: not null  QMenuH) return  Boolean;   
pragma Import(C,QMenu_isEmpty,"QMenu_isEmpty");

procedure QMenu_clear(handle: not null  QMenuH);   
pragma Import(C,QMenu_clear,"QMenu_clear");

procedure QMenu_setTearOffEnabled(handle: not null  QMenuH; p1: Boolean);   
pragma Import(C,QMenu_setTearOffEnabled,"QMenu_setTearOffEnabled");

function QMenu_isTearOffEnabled(handle: not null  QMenuH) return  Boolean;   
pragma Import(C,QMenu_isTearOffEnabled,"QMenu_isTearOffEnabled");

function QMenu_isTearOffMenuVisible(handle: not null  QMenuH) return  Boolean;   
pragma Import(C,QMenu_isTearOffMenuVisible,"QMenu_isTearOffMenuVisible");

procedure QMenu_hideTearOffMenu(handle: not null  QMenuH);   
pragma Import(C,QMenu_hideTearOffMenu,"QMenu_hideTearOffMenu");

procedure QMenu_setDefaultAction(handle: not null  QMenuH; p1: QActionH);   
pragma Import(C,QMenu_setDefaultAction,"QMenu_setDefaultAction");

function QMenu_defaultAction(handle: not null  QMenuH) return  QActionH;   
pragma Import(C,QMenu_defaultAction,"QMenu_defaultAction");

procedure QMenu_setActiveAction(handle: not null  QMenuH; act: QActionH);   
pragma Import(C,QMenu_setActiveAction,"QMenu_setActiveAction");

function QMenu_activeAction(handle: not null  QMenuH) return  QActionH;   
pragma Import(C,QMenu_activeAction,"QMenu_activeAction");

procedure QMenu_popup(handle: not null  QMenuH; pos: QPointH; act: QActionH := null);
pragma Import(C,QMenu_popup,"QMenu_popup");

function QMenu_exec(handle: not null  QMenuH) return  QActionH;    
pragma Import(C,QMenu_exec,"QMenu_exec");

function QMenu_exec2(handle: not null  QMenuH; pos: QPointH; act: QActionH := null) return QActionH;
pragma Import(C,QMenu_exec2,"QMenu_exec2");

function QMenu_exec3(actions: QObjectListH; pos: QPointH; act: QActionH := null) return QActionH;
pragma Import(C,QMenu_exec3,"QMenu_exec3");

function  QMenu_sizeHint(handle: not null  QMenuH) return QSizeH;
pragma Import(C,QMenu_sizeHint,"QMenu_sizeHint");

function  QMenu_actionGeometry(handle: not null  QMenuH; p1: QActionH) return QRectH;
pragma Import(C,QMenu_actionGeometry,"QMenu_actionGeometry");

function QMenu_actionAt(handle: not null  QMenuH; p1: QPointH) return  QActionH;   
pragma Import(C,QMenu_actionAt,"QMenu_actionAt");

function QMenu_menuAction(handle: not null  QMenuH) return  QActionH;   
pragma Import(C,QMenu_menuAction,"QMenu_menuAction");

function  QMenu_title(handle: not null  QMenuH) return QStringH;
pragma Import(C,QMenu_title,"QMenu_title");

procedure QMenu_setTitle(handle: not null  QMenuH; title: QStringH);   
pragma Import(C,QMenu_setTitle,"QMenu_setTitle");

function  QMenu_icon(handle: not null  QMenuH) return QIconH;
pragma Import(C,QMenu_icon,"QMenu_icon");

procedure QMenu_setIcon(handle: not null  QMenuH; icon: QIconH);   
pragma Import(C,QMenu_setIcon,"QMenu_setIcon");

procedure QMenu_setNoReplayFor(handle: not null  QMenuH; widget: QWidgetH);   
pragma Import(C,QMenu_setNoReplayFor,"QMenu_setNoReplayFor");

function QMenu_separatorsCollapsible(handle: not null  QMenuH) return  Boolean;   
pragma Import(C,QMenu_separatorsCollapsible,"QMenu_separatorsCollapsible");

procedure QMenu_setSeparatorsCollapsible(handle: not null  QMenuH; collapse: Boolean);   
pragma Import(C,QMenu_setSeparatorsCollapsible,"QMenu_setSeparatorsCollapsible");

 function  QMenu_platformMenu(handle:not null QMenuH) return QMenuH;
 pragma Import(C,QMenu_platformMenu, "QMenu_platformMenu");
 
 procedure QMenu_setPlatformMenu(handle:not null QMenuH;platformMenu:QMenuH);
 pragma Import(C,QMenu_setPlatformMenu, "QMenu_setPlatformMenu");
 
 function  QMenu_toolTipsVisible(handle:not null QMenuH) return boolean;
 pragma Import(C,QMenu_toolTipsVisible, "QMenu_toolTipsVisible");
 
 procedure QMenu_setToolTipsVisible(handle:not null QMenuH; visible:boolean);
 pragma Import(C,QMenu_setToolTipsVisible, "QMenu_setToolTipsVisible");
 
 function  QMenu_insertSection(handle:not null QMenuH;before:QActionH;text: QStringH) return QActionH;
 pragma Import(C,QMenu_insertSection, "QMenu_insertSection");
 
 function  QMenu_insertSection2(handle:not null QMenuH;before:QActionH;icon: QIconH;text: QStringH) return QActionH;
 pragma Import(C,QMenu_insertSection2, "QMenu_insertSection2");
 
function QMenuBar_create(parent: QWidgetH := null) return QMenuBarH;   
pragma Import(C,QMenuBar_create,"QMenuBar_create");

procedure QMenuBar_destroy(handle: not null  QMenuBarH);   
pragma Import(C,QMenuBar_destroy,"QMenuBar_destroy");

function QMenuBar_addAction(handle: not null  QMenuBarH; text: QStringH) return  QActionH;    
pragma Import(C,QMenuBar_addAction,"QMenuBar_addAction");

--function QMenuBar_addAction2(handle: not null  QMenuBarH; text: QStringH; receiver: QObjectH; member: zstring) return  QActionH;
--pragma Import(C,QMenuBar_addAction2,"QMenuBar_addAction2");

procedure QMenuBar_addAction5(handle: not null  QMenuBarH;action:QActionH);
pragma Import(C,QMenuBar_addAction5,"QMenuBar_addAction5");

function QMenuBar_addMenu(handle: not null  QMenuBarH; menu: QMenuH) return  QActionH;    
pragma Import(C,QMenuBar_addMenu,"QMenuBar_addMenu");

function QMenuBar_addMenu2(handle: not null  QMenuBarH; title: QStringH) return  QMenuH;
pragma Import(C,QMenuBar_addMenu2,"QMenuBar_addMenu2");

function QMenuBar_addMenu3(handle: not null  QMenuBarH; icon: QIconH; title: QStringH) return  QMenuH;
pragma Import(C,QMenuBar_addMenu3,"QMenuBar_addMenu3");

function QMenuBar_addSeparator(handle: not null  QMenuBarH) return  QActionH;   
pragma Import(C,QMenuBar_addSeparator,"QMenuBar_addSeparator");

function QMenuBar_insertSeparator(handle: not null  QMenuBarH; before: QActionH) return  QActionH;   
pragma Import(C,QMenuBar_insertSeparator,"QMenuBar_insertSeparator");

function QMenuBar_insertMenu(handle: not null  QMenuBarH; before: QActionH; menu: QMenuH) return  QActionH;   
pragma Import(C,QMenuBar_insertMenu,"QMenuBar_insertMenu");

procedure QMenuBar_clear(handle: not null  QMenuBarH);   
pragma Import(C,QMenuBar_clear,"QMenuBar_clear");

function QMenuBar_activeAction(handle: not null  QMenuBarH) return  QActionH;   
pragma Import(C,QMenuBar_activeAction,"QMenuBar_activeAction");

procedure QMenuBar_setActiveAction(handle: not null  QMenuBarH; action: QActionH);   
pragma Import(C,QMenuBar_setActiveAction,"QMenuBar_setActiveAction");

procedure QMenuBar_setDefaultUp(handle: not null  QMenuBarH; p1: Boolean);   
pragma Import(C,QMenuBar_setDefaultUp,"QMenuBar_setDefaultUp");

function QMenuBar_isDefaultUp(handle: not null  QMenuBarH) return  Boolean;   
pragma Import(C,QMenuBar_isDefaultUp,"QMenuBar_isDefaultUp");

function  QMenuBar_sizeHint(handle: not null  QMenuBarH) return QSizeH;
pragma Import(C,QMenuBar_sizeHint,"QMenuBar_sizeHint");

function  QMenuBar_minimumSizeHint(handle: not null  QMenuBarH) return QSizeH;
pragma Import(C,QMenuBar_minimumSizeHint,"QMenuBar_minimumSizeHint");

function QMenuBar_heightForWidth(handle: not null  QMenuBarH; p1: Integer) return  Integer;   
pragma Import(C,QMenuBar_heightForWidth,"QMenuBar_heightForWidth");

function  QMenuBar_actionGeometry(handle: not null  QMenuBarH; p1: QActionH) return QRectH;
pragma Import(C,QMenuBar_actionGeometry,"QMenuBar_actionGeometry");

function QMenuBar_actionAt(handle: not null  QMenuBarH; p1: QPointH) return  QActionH;   
pragma Import(C,QMenuBar_actionAt,"QMenuBar_actionAt");

procedure QMenuBar_setCornerWidget(handle: not null  QMenuBarH; w: QWidgetH; corner: QtCorner := QtTopRightCorner);   
pragma Import(C,QMenuBar_setCornerWidget,"QMenuBar_setCornerWidget");

function QMenuBar_cornerWidget(handle: not null  QMenuBarH; corner: QtCorner := QtTopRightCorner) return QWidgetH;   
pragma Import(C,QMenuBar_cornerWidget,"QMenuBar_cornerWidget");

procedure QMenuBar_setVisible(handle: not null  QMenuBarH; visible: Boolean);   
pragma Import(C,QMenuBar_setVisible,"QMenuBar_setVisible");

type QMenu_aboutToShowEvent is access procedure ;
pragma Convention(C,QMenu_aboutToShowEvent );

type QMenu_aboutToHideEvent is access procedure ;
pragma Convention(C,QMenu_aboutToHideEvent );

type QMenu_triggeredEvent is access procedure (action: QActionH);
pragma Convention(C,QMenu_triggeredEvent );

type QMenu_hoveredEvent is access procedure (action: QActionH);
pragma Convention(C,QMenu_hoveredEvent );

type QMenuBar_triggeredEvent is access procedure (action: QActionH);
pragma Convention(C,QMenuBar_triggeredEvent );

type QMenuBar_hoveredEvent is access procedure (action: QActionH);
pragma Convention(C,QMenuBar_hoveredEvent );

procedure QMenu_signal_slot_aboutToShow(handle: not null QMenuH; hook:QMenu_aboutToShowEvent);
pragma Import(C,QMenu_signal_slot_aboutToShow, "QMenu_signal_slot_aboutToShow");

procedure QMenu_signal_slot_aboutToHide(handle: not null QMenuH; hook:QMenu_aboutToHideEvent);
pragma Import(C,QMenu_signal_slot_aboutToHide, "QMenu_signal_slot_aboutToHide");

procedure QMenu_signal_slot_triggered(handle: not null QMenuH; hook:QMenu_triggeredEvent);
pragma Import(C,QMenu_signal_slot_triggered, "QMenu_signal_slot_triggered");

procedure QMenu_signal_slot_hovered(handle: not null QMenuH; hook:QMenu_hoveredEvent);
pragma Import(C,QMenu_signal_slot_hovered, "QMenu_signal_slot_hovered");
-----------
 
 procedure QMenuBar_signal_slot_triggered(handle: not null QMenuBarH; hook:QMenuBar_triggeredEvent);
 pragma Import(C,QMenuBar_signal_slot_triggered, "QMenuBar_signal_slot_triggered");
 
 procedure QMenuBar_signal_slot_hovered(handle: not null QMenuBarH; hook:QMenuBar_hoveredEvent);
 pragma Import(C,QMenuBar_signal_slot_hovered, "QMenuBar_signal_slot_hovered");

------------------------------------------------------------------------
function QMenu_create(title: QStringH; parent: QWidgetH := null) return QMenuH;
function QMenu_addAction(handle: not null  QMenuH; icon: QIconH; text: QStringH) return  QActionH;
function QMenu_addAction(handle: not null  QMenuH; text: QStringH; receiver: QObjectH; slotAction: string := "quit()"; shortcut: QKeySequenceH := null) return QActionH;
function QMenu_addAction(handle: not null  QMenuH; icon: QIconH; text: QStringH; receiver: QObjectH; slotAction: string := "quit()"; shortcut: QKeySequenceH := null) return QActionH;
function QMenu_addAction(handle: not null  QMenuH; text: QStringH; slotAction: QAction_triggered_Event; shortcut: QKeySequenceH := null) return QActionH;
function QMenu_addAction(handle: not null  QMenuH; icon: QIconH; text: QStringH; slotAction: QAction_triggered_Event; shortcut: QKeySequenceH := null) return QActionH;

function QMenu_addMenu(handle: not null  QMenuH; title: QStringH) return  QMenuH;
function QMenu_addMenu(handle: not null  QMenuH; icon: QIconH; title: QStringH) return  QMenuH;

function QMenu_exec(handle: not null  QMenuH; pos: QPointH; act: QActionH := null) return QActionH;
function QMenu_exec(actions: QObjectListH; pos: QPointH; act: QActionH := null) return QActionH;

function  QMenu_insertSection(handle:not null QMenuH;before:QActionH;icon: QIconH;text: QStringH) return QActionH;

function QMenuBar_addAction(handle: not null  QMenuBarH; text: QStringH; receiver: QObjectH; slotAction: string := "quit()") return  QActionH;
function QMenuBar_addAction(handle: not null  QMenuBarH; text: QStringH; slotAction: QAction_triggered_Event) return QActionH;
function QMenuBar_addMenu(handle: not null  QMenuBarH; title: QStringH) return  QMenuH;
function QMenuBar_addMenu(handle: not null  QMenuBarH; icon: QIconH; title: QStringH) return  QMenuH;

procedure QMenu_addAction(handle: not null  QMenuH;action:QActionH);
procedure QMenuBar_addAction(handle: not null  QMenuBarH;action:QActionH);

end Qt.QMenu;
