--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2007,2011                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QMdi                 is

type QMdiAreaWindowOrder is (QMdiAreaCreationOrder, QMdiAreaStackingOrder);
pragma Convention(C, QMdiAreaWindowOrder);

subtype  QMdiAreaAreaOption  is cardinal;
subtype  QMdiAreaAreaOptions is cardinal;

QMdiAreaDontMaximizeSubWindowOnActivation : constant QMdiAreaAreaOption := 1;

function QMdiArea_create(parent: QWidgetH := null) return QMdiAreaH;   
pragma Import(C,QMdiArea_create,"QMdiArea_create");

procedure QMdiArea_destroy(handle: not null  QMdiAreaH);   
pragma Import(C,QMdiArea_destroy,"QMdiArea_destroy");

function  QMdiArea_sizeHint(handle: not null  QMdiAreaH) return QSizeH;
pragma Import(C,QMdiArea_sizeHint,"QMdiArea_sizeHint");

function  QMdiArea_minimumSizeHint(handle: not null  QMdiAreaH) return QSizeH;
pragma Import(C,QMdiArea_minimumSizeHint,"QMdiArea_minimumSizeHint");

function QMdiArea_currentSubWindow(handle: not null  QMdiAreaH) return  QMdiSubWindowH;   
pragma Import(C,QMdiArea_currentSubWindow,"QMdiArea_currentSubWindow");

function QMdiArea_activeSubWindow(handle: not null  QMdiAreaH) return  QMdiSubWindowH;   
pragma Import(C,QMdiArea_activeSubWindow,"QMdiArea_activeSubWindow");

function  QMdiArea_subWindowList(handle: not null  QMdiAreaH; order: QMdiAreaWindowOrder := QMdiAreaCreationOrder) return QObjectListH;
pragma Import(C,QMdiArea_subWindowList,"QMdiArea_subWindowList");

function QMdiArea_addSubWindow(handle: not null  QMdiAreaH; widget: QWidgetH; flags: QtWindowFlags := 0) return QMdiSubWindowH;   
pragma Import(C,QMdiArea_addSubWindow,"QMdiArea_addSubWindow");

procedure QMdiArea_removeSubWindow(handle: not null  QMdiAreaH; widget: QWidgetH);   
pragma Import(C,QMdiArea_removeSubWindow,"QMdiArea_removeSubWindow");

function  QMdiArea_background(handle: not null  QMdiAreaH) return QBrushH;
pragma Import(C,QMdiArea_background,"QMdiArea_background");

procedure QMdiArea_setBackground(handle: not null  QMdiAreaH; background: QBrushH);   
pragma Import(C,QMdiArea_setBackground,"QMdiArea_setBackground");

procedure QMdiArea_setOption(handle: not null  QMdiAreaH; option: QMdiAreaAreaOption; on: Boolean := True);   
pragma Import(C,QMdiArea_setOption,"QMdiArea_setOption");

function QMdiArea_testOption(handle: not null  QMdiAreaH; opton: QMdiAreaAreaOption) return  Boolean;   
pragma Import(C,QMdiArea_testOption,"QMdiArea_testOption");

procedure QMdiArea_setActiveSubWindow(handle: not null  QMdiAreaH; window: QMdiSubWindowH);   
pragma Import(C,QMdiArea_setActiveSubWindow,"QMdiArea_setActiveSubWindow");

procedure QMdiArea_tileSubWindows(handle: not null  QMdiAreaH);   
pragma Import(C,QMdiArea_tileSubWindows,"QMdiArea_tileSubWindows");

procedure QMdiArea_cascadeSubWindows(handle: not null  QMdiAreaH);   
pragma Import(C,QMdiArea_cascadeSubWindows,"QMdiArea_cascadeSubWindows");

procedure QMdiArea_closeActiveSubWindow(handle: not null  QMdiAreaH);   
pragma Import(C,QMdiArea_closeActiveSubWindow,"QMdiArea_closeActiveSubWindow");

procedure QMdiArea_closeAllSubWindows(handle: not null  QMdiAreaH);   
pragma Import(C,QMdiArea_closeAllSubWindows,"QMdiArea_closeAllSubWindows");

procedure QMdiArea_activateNextSubWindow(handle: not null  QMdiAreaH);   
pragma Import(C,QMdiArea_activateNextSubWindow,"QMdiArea_activateNextSubWindow");

procedure QMdiArea_activatePreviousSubWindow(handle: not null  QMdiAreaH);   
pragma Import(C,QMdiArea_activatePreviousSubWindow,"QMdiArea_activatePreviousSubWindow");

type  QMdiArea_subWindowActivatedEvent is access procedure (p1: QMdiSubWindowH);
pragma Convention(C, QMdiArea_subWindowActivatedEvent);
 
 procedure QMdiArea_signal_slot_subWindowActivated(handle: not null QMdiAreaH; hook:QMdiArea_subWindowActivatedEvent);
 pragma Import(C,QMdiArea_signal_slot_subWindowActivated, "QMdiArea_signal_slot_subWindowActivated");
 

subtype QMdiSubWindowSubWindowOption  is cardinal;
subtype QMdiSubWindowSubWindowOptions is cardinal;

QMdiSubWindowAllowOutsideAreaHorizontally : constant QMdiSubWindowSubWindowOption := 1;
QMdiSubWindowAllowOutsideAreaVertically   : constant QMdiSubWindowSubWindowOption := 2;
QMdiSubWindowRubberBandResize             : constant QMdiSubWindowSubWindowOption := 4;
QMdiSubWindowRubberBandMove               : constant QMdiSubWindowSubWindowOption := 8;

function QMdiSubWindow_create(parent: QWidgetH := null; flags: QtWindowFlags := 0) return QMdiSubWindowH;   
pragma Import(C,QMdiSubWindow_create,"QMdiSubWindow_create");

procedure QMdiSubWindow_destroy(handle: not null  QMdiSubWindowH);   
pragma Import(C,QMdiSubWindow_destroy,"QMdiSubWindow_destroy");

function  QMdiSubWindow_sizeHint(handle: not null  QMdiSubWindowH) return QSizeH;
pragma Import(C,QMdiSubWindow_sizeHint,"QMdiSubWindow_sizeHint");

function  QMdiSubWindow_minimumSizeHint(handle: not null  QMdiSubWindowH) return QSizeH;
pragma Import(C,QMdiSubWindow_minimumSizeHint,"QMdiSubWindow_minimumSizeHint");

procedure QMdiSubWindow_setWidget(handle: not null  QMdiSubWindowH; widget: QWidgetH);   
pragma Import(C,QMdiSubWindow_setWidget,"QMdiSubWindow_setWidget");

function QMdiSubWindow_widget(handle: not null  QMdiSubWindowH) return  QWidgetH;   
pragma Import(C,QMdiSubWindow_widget,"QMdiSubWindow_widget");

function QMdiSubWindow_maximizedButtonsWidget(handle: not null  QMdiSubWindowH) return  QWidgetH;   
pragma Import(C,QMdiSubWindow_maximizedButtonsWidget,"QMdiSubWindow_maximizedButtonsWidget");

function QMdiSubWindow_maximizedSystemMenuIconWidget(handle: not null  QMdiSubWindowH) return  QWidgetH;   
pragma Import(C,QMdiSubWindow_maximizedSystemMenuIconWidget,"QMdiSubWindow_maximizedSystemMenuIconWidget");

function QMdiSubWindow_isShaded(handle: not null  QMdiSubWindowH) return  Boolean;   
pragma Import(C,QMdiSubWindow_isShaded,"QMdiSubWindow_isShaded");

procedure QMdiSubWindow_setOption(handle: not null  QMdiSubWindowH; option: QMdiSubWindowSubWindowOption; on: Boolean := True);   
pragma Import(C,QMdiSubWindow_setOption,"QMdiSubWindow_setOption");

function QMdiSubWindow_testOption(handle: not null  QMdiSubWindowH; p1: QMdiSubWindowSubWindowOption) return  Boolean;   
pragma Import(C,QMdiSubWindow_testOption,"QMdiSubWindow_testOption");

procedure QMdiSubWindow_setKeyboardSingleStep(handle: not null  QMdiSubWindowH; step: Integer);   
pragma Import(C,QMdiSubWindow_setKeyboardSingleStep,"QMdiSubWindow_setKeyboardSingleStep");

function QMdiSubWindow_keyboardSingleStep(handle: not null  QMdiSubWindowH) return  Integer;   
pragma Import(C,QMdiSubWindow_keyboardSingleStep,"QMdiSubWindow_keyboardSingleStep");

procedure QMdiSubWindow_setKeyboardPageStep(handle: not null  QMdiSubWindowH; step: Integer);   
pragma Import(C,QMdiSubWindow_setKeyboardPageStep,"QMdiSubWindow_setKeyboardPageStep");

function QMdiSubWindow_keyboardPageStep(handle: not null  QMdiSubWindowH) return  Integer;   
pragma Import(C,QMdiSubWindow_keyboardPageStep,"QMdiSubWindow_keyboardPageStep");

procedure QMdiSubWindow_setSystemMenu(handle: not null  QMdiSubWindowH; systemMenu: QMenuH);   
pragma Import(C,QMdiSubWindow_setSystemMenu,"QMdiSubWindow_setSystemMenu");

function QMdiSubWindow_systemMenu(handle: not null  QMdiSubWindowH) return  QMenuH;   
pragma Import(C,QMdiSubWindow_systemMenu,"QMdiSubWindow_systemMenu");

procedure QMdiSubWindow_showSystemMenu(handle: not null  QMdiSubWindowH);   
pragma Import(C,QMdiSubWindow_showSystemMenu,"QMdiSubWindow_showSystemMenu");

procedure QMdiSubWindow_showShaded(handle: not null  QMdiSubWindowH);   
pragma Import(C,QMdiSubWindow_showShaded,"QMdiSubWindow_showShaded");

type QMdiSubWindow_windowStateChangedEvent is access procedure (oldState: QtWindowStates; newState: QtWindowStates);
pragma Convention(C, QMdiSubWindow_windowStateChangedEvent);

type QMdiSubWindow_aboutToActivateEvent is access procedure ;
pragma Convention(C, QMdiSubWindow_aboutToActivateEvent);
 
 procedure QMdiSubWindow_signal_slot_windowStateChanged(handle: not null QMdiSubWindowH; hook:QMdiSubWindow_windowStateChangedEvent);
 pragma Import(C,QMdiSubWindow_signal_slot_windowStateChanged, "QMdiSubWindow_signal_slot_windowStateChanged");
 
 procedure QMdiSubWindow_signal_slot_aboutToActivate(handle: not null QMdiSubWindowH; hook:QMdiSubWindow_aboutToActivateEvent);
 pragma Import(C,QMdiSubWindow_signal_slot_aboutToActivate, "QMdiSubWindow_signal_slot_aboutToActivate");
  
end Qt.QMdi;
