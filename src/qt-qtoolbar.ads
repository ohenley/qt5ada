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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QToolBar   is

toolBar : QToolBarH := null;

function QToolBar_create(title: QStringH; parent: QWidgetH := null) return QToolBarH;    
pragma Import(C,QToolBar_create,"QToolBar_create");

procedure QToolBar_destroy(handle: not null  QToolBarH);   
pragma Import(C,QToolBar_destroy,"QToolBar_destroy");

function QToolBar_create2(parent: QWidgetH := null) return QToolBarH;
pragma Import(C,QToolBar_create2,"QToolBar_create2");

procedure QToolBar_setMovable(handle: not null  QToolBarH; movable: Boolean);   
pragma Import(C,QToolBar_setMovable,"QToolBar_setMovable");

function QToolBar_isMovable(handle: not null  QToolBarH) return  Boolean;   
pragma Import(C,QToolBar_isMovable,"QToolBar_isMovable");

procedure QToolBar_setAllowedAreas(handle: not null  QToolBarH; areas: QtToolBarAreas);   
pragma Import(C,QToolBar_setAllowedAreas,"QToolBar_setAllowedAreas");

function QToolBar_allowedAreas(handle: not null  QToolBarH) return  QtToolBarAreas;   
pragma Import(C,QToolBar_allowedAreas,"QToolBar_allowedAreas");

function QToolBar_isAreaAllowed(handle: not null  QToolBarH; area: QtToolBarArea) return  Boolean;   
pragma Import(C,QToolBar_isAreaAllowed,"QToolBar_isAreaAllowed");

procedure QToolBar_setOrientation(handle: not null  QToolBarH; orientation: QtOrientation);   
pragma Import(C,QToolBar_setOrientation,"QToolBar_setOrientation");

function QToolBar_orientation(handle: not null  QToolBarH) return  QtOrientation;   
pragma Import(C,QToolBar_orientation,"QToolBar_orientation");

procedure QToolBar_clear(handle: not null  QToolBarH);   
pragma Import(C,QToolBar_clear,"QToolBar_clear");

function QToolBar_addAction(handle: not null  QToolBarH; text: QStringH) return  QActionH;    
pragma Import(C,QToolBar_addAction,"QToolBar_addAction");

function QToolBar_addAction2(handle: not null  QToolBarH; icon: QIconH; text: QStringH) return  QActionH;
pragma Import(C,QToolBar_addAction2,"QToolBar_addAction2");

function QToolBar_addAction3(handle: not null  QToolBarH; text: QStringH; receiver: QObjectH; member: zstring) return  QActionH;
pragma Import(C,QToolBar_addAction3,"QToolBar_addAction3");

function QToolBar_addAction4(handle: not null  QToolBarH; icon: QIconH; text: QStringH; receiver: QObjectH; member: zstring) return  QActionH;
pragma Import(C,QToolBar_addAction4,"QToolBar_addAction4");

procedure QToolBar_addAction5(handle: not null  QToolBarH; action:QActionH);
pragma Import(C,QToolBar_addAction5,"QToolBar_addAction5");

function QToolBar_addSeparator(handle: not null  QToolBarH) return  QActionH;   
pragma Import(C,QToolBar_addSeparator,"QToolBar_addSeparator");

function QToolBar_insertSeparator(handle: not null  QToolBarH; before: QActionH) return  QActionH;   
pragma Import(C,QToolBar_insertSeparator,"QToolBar_insertSeparator");

function QToolBar_addWidget(handle: not null  QToolBarH; widget: QWidgetH) return  QActionH;   
pragma Import(C,QToolBar_addWidget,"QToolBar_addWidget");

function QToolBar_insertWidget(handle: not null  QToolBarH; before: QActionH; widget: QWidgetH) return  QActionH;   
pragma Import(C,QToolBar_insertWidget,"QToolBar_insertWidget");

function  QToolBar_actionGeometry(handle: not null  QToolBarH; action: QActionH) return QRectH;
pragma Import(C,QToolBar_actionGeometry,"QToolBar_actionGeometry");

function QToolBar_actionAt(handle: not null  QToolBarH; p: QPointH) return  QActionH;    
pragma Import(C,QToolBar_actionAt,"QToolBar_actionAt");

function QToolBar_actionAt2(handle: not null  QToolBarH; x: Integer; y: Integer) return  QActionH;
pragma Import(C,QToolBar_actionAt2,"QToolBar_actionAt2");

function QToolBar_toggleViewAction(handle: not null  QToolBarH) return  QActionH;   
pragma Import(C,QToolBar_toggleViewAction,"QToolBar_toggleViewAction");

function  QToolBar_iconSize(handle: not null  QToolBarH) return QSizeH;
pragma Import(C,QToolBar_iconSize,"QToolBar_iconSize");

function QToolBar_toolButtonStyle(handle: not null  QToolBarH) return  QtToolButtonStyle;   
pragma Import(C,QToolBar_toolButtonStyle,"QToolBar_toolButtonStyle");

function QToolBar_widgetForAction(handle: not null  QToolBarH; action: QActionH) return  QWidgetH;   
pragma Import(C,QToolBar_widgetForAction,"QToolBar_widgetForAction");

function QToolBar_isFloatable(handle: not null  QToolBarH) return  Boolean;   
pragma Import(C,QToolBar_isFloatable,"QToolBar_isFloatable");

procedure QToolBar_setFloatable(handle: not null  QToolBarH; floatable: Boolean);   
pragma Import(C,QToolBar_setFloatable,"QToolBar_setFloatable");

function QToolBar_isFloating(handle: not null  QToolBarH) return  Boolean;   
pragma Import(C,QToolBar_isFloating,"QToolBar_isFloating");

procedure QToolBar_setIconSize(handle: not null  QToolBarH; iconSize: QSizeH);   
pragma Import(C,QToolBar_setIconSize,"QToolBar_setIconSize");

procedure QToolBar_setToolButtonStyle(handle: not null  QToolBarH; toolButtonStyle: QtToolButtonStyle);   
pragma Import(C,QToolBar_setToolButtonStyle,"QToolBar_setToolButtonStyle");

type QToolBar_actionTriggeredEvent is access procedure (action: QActionH);
pragma Convention(C,QToolBar_actionTriggeredEvent);

type QToolBar_movableChangedEvent is access procedure (movable: Boolean);
pragma Convention(C,QToolBar_movableChangedEvent);

type QToolBar_allowedAreasChangedEvent is access procedure (allowedAreas: QtToolBarAreas);
pragma Convention(C,QToolBar_allowedAreasChangedEvent);

type QToolBar_orientationChangedEvent is access procedure (orientation: QtOrientation);
pragma Convention(C,QToolBar_orientationChangedEvent);

type QToolBar_iconSizeChangedEvent is access procedure (iconSize: QSizeH);
pragma Convention(C, QToolBar_iconSizeChangedEvent);

type QToolBar_toolButtonStyleChangedEvent is access procedure (toolButtonStyle: QtToolButtonStyle);
pragma Convention(C, QToolBar_toolButtonStyleChangedEvent);
 
procedure QToolBar_signal_slot_actionTriggered(handle: not null QToolBarH; hook:QToolBar_actionTriggeredEvent);
pragma Import(C,QToolBar_signal_slot_actionTriggered, "QToolBar_signal_slot_actionTriggered");

procedure QToolBar_signal_slot_movableChanged(handle: not null QToolBarH; hook:QToolBar_movableChangedEvent);
pragma Import(C,QToolBar_signal_slot_movableChanged, "QToolBar_signal_slot_movableChanged");

procedure QToolBar_signal_slot_allowedAreasChanged(handle: not null QToolBarH; hook:QToolBar_allowedAreasChangedEvent);
pragma Import(C,QToolBar_signal_slot_allowedAreasChanged, "QToolBar_signal_slot_allowedAreasChanged");

procedure QToolBar_signal_slot_orientationChanged(handle: not null QToolBarH; hook:QToolBar_orientationChangedEvent);
pragma Import(C,QToolBar_signal_slot_orientationChanged, "QToolBar_signal_slot_orientationChanged");

procedure QToolBar_signal_slot_iconSizeChanged(handle: not null QToolBarH; hook:QToolBar_iconSizeChangedEvent);
pragma Import(C,QToolBar_signal_slot_iconSizeChanged, "QToolBar_signal_slot_iconSizeChanged");

procedure QToolBar_signal_slot_toolButtonStyleChanged(handle: not null QToolBarH; hook:QToolBar_toolButtonStyleChangedEvent);
pragma Import(C,QToolBar_signal_slot_toolButtonStyleChanged, "QToolBar_signal_slot_toolButtonStyleChanged");
 
------------------------------------------------------------------------
function QToolBar_create(parent: QWidgetH := null) return QToolBarH;
function QToolBar_addAction(handle: not null  QToolBarH; icon: QIconH; text: QStringH) return  QActionH;
function QToolBar_addAction(handle: not null  QToolBarH; text: QStringH; receiver: QObjectH; member: zstring) return  QActionH;
function QToolBar_addAction(handle: not null  QToolBarH; icon: QIconH; text: QStringH; receiver: QObjectH; member: zstring) return  QActionH;
function QToolBar_actionAt(handle: not null  QToolBarH; x: Integer; y: Integer) return  QActionH;
procedure QToolBar_addAction(handle: not null  QToolBarH; action:QActionH);

end  Qt.QToolBar;
