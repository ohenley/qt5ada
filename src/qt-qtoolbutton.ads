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

package Qt.QToolButton          is

type QToolButtonToolButtonPopupMode is (QToolButtonDelayedPopup, QToolButtonMenuButtonPopup, QToolButtonInstantPopup );

function QToolButton_create(parent: QWidgetH := null) return QToolButtonH;   
pragma Import(C,QToolButton_create,"QToolButton_create");

procedure QToolButton_destroy(handle: not null  QToolButtonH);   
pragma Import(C,QToolButton_destroy,"QToolButton_destroy");

function  QToolButton_sizeHint(handle: not null  QToolButtonH) return QSizeH;
pragma Import(C,QToolButton_sizeHint,"QToolButton_sizeHint");

function  QToolButton_minimumSizeHint(handle: not null  QToolButtonH) return QSizeH;
pragma Import(C,QToolButton_minimumSizeHint,"QToolButton_minimumSizeHint");

function QToolButton_toolButtonStyle(handle: not null  QToolButtonH) return  QtToolButtonStyle;   
pragma Import(C,QToolButton_toolButtonStyle,"QToolButton_toolButtonStyle");

function QToolButton_arrowType(handle: not null  QToolButtonH) return  QtArrowType;   
pragma Import(C,QToolButton_arrowType,"QToolButton_arrowType");

procedure QToolButton_setArrowType(handle: not null  QToolButtonH; qtype: QtArrowType);   
pragma Import(C,QToolButton_setArrowType,"QToolButton_setArrowType");

procedure QToolButton_setMenu(handle: not null  QToolButtonH; menu: QMenuH);   
pragma Import(C,QToolButton_setMenu,"QToolButton_setMenu");

function QToolButton_menu(handle: not null  QToolButtonH) return  QMenuH;   
pragma Import(C,QToolButton_menu,"QToolButton_menu");

procedure QToolButton_setPopupMode(handle: not null  QToolButtonH; mode: QToolButtonToolButtonPopupMode);   
pragma Import(C,QToolButton_setPopupMode,"QToolButton_setPopupMode");

function QToolButton_popupMode(handle: not null  QToolButtonH) return  QToolButtonToolButtonPopupMode;   
pragma Import(C,QToolButton_popupMode,"QToolButton_popupMode");

function QToolButton_defaultAction(handle: not null  QToolButtonH) return  QActionH;   
pragma Import(C,QToolButton_defaultAction,"QToolButton_defaultAction");

procedure QToolButton_setAutoRaise(handle: not null  QToolButtonH; enable: Boolean);   
pragma Import(C,QToolButton_setAutoRaise,"QToolButton_setAutoRaise");

function QToolButton_autoRaise(handle: not null  QToolButtonH) return  Boolean;   
pragma Import(C,QToolButton_autoRaise,"QToolButton_autoRaise");

procedure QToolButton_showMenu(handle: not null  QToolButtonH);   
pragma Import(C,QToolButton_showMenu,"QToolButton_showMenu");

procedure QToolButton_setToolButtonStyle(handle: not null  QToolButtonH; style: QtToolButtonStyle);   
pragma Import(C,QToolButton_setToolButtonStyle,"QToolButton_setToolButtonStyle");

procedure QToolButton_setDefaultAction(handle: not null  QToolButtonH; p1: QActionH);   
pragma Import(C,QToolButton_setDefaultAction,"QToolButton_setDefaultAction");

type QToolButton_triggeredEvent is access procedure (p1: QActionH);
pragma Convention(C, QToolButton_triggeredEvent);
 
 procedure QToolButton_signal_slot_triggered(handle: not null QToolButtonH; hook:QToolButton_triggeredEvent);
 pragma Import(C,QToolButton_signal_slot_triggered, "QToolButton_signal_slot_triggered");
 
end Qt.QToolButton;
