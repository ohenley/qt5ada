--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QStatusBar           is

statusBar : QStatusBarH := null;

function QStatusBar_create(parent: QWidgetH := null) return QStatusBarH;   
pragma Import(C,QStatusBar_create,"QStatusBar_create");

procedure QStatusBar_destroy(handle: not null  QStatusBarH);   
pragma Import(C,QStatusBar_destroy,"QStatusBar_destroy");

procedure QStatusBar_addWidget(handle: not null  QStatusBarH; widget: QWidgetH; stretch: Integer := 0);   
pragma Import(C,QStatusBar_addWidget,"QStatusBar_addWidget");

function QStatusBar_insertWidget(handle: not null  QStatusBarH; index: Integer; widget: QWidgetH; stretch: Integer := 0) return Integer;   
pragma Import(C,QStatusBar_insertWidget,"QStatusBar_insertWidget");

procedure QStatusBar_addPermanentWidget(handle: not null  QStatusBarH; widget: QWidgetH; stretch: Integer := 0);   
pragma Import(C,QStatusBar_addPermanentWidget,"QStatusBar_addPermanentWidget");

function QStatusBar_insertPermanentWidget(handle: not null  QStatusBarH; index: Integer; widget: QWidgetH; stretch: Integer := 0) return Integer;   
pragma Import(C,QStatusBar_insertPermanentWidget,"QStatusBar_insertPermanentWidget");

procedure QStatusBar_removeWidget(handle: not null  QStatusBarH; widget: QWidgetH);   
pragma Import(C,QStatusBar_removeWidget,"QStatusBar_removeWidget");

procedure QStatusBar_setSizeGripEnabled(handle: not null  QStatusBarH; p1: Boolean);   
pragma Import(C,QStatusBar_setSizeGripEnabled,"QStatusBar_setSizeGripEnabled");

function QStatusBar_isSizeGripEnabled(handle: not null  QStatusBarH) return  Boolean;   
pragma Import(C,QStatusBar_isSizeGripEnabled,"QStatusBar_isSizeGripEnabled");

function  QStatusBar_currentMessage(handle: not null  QStatusBarH) return QStringH;
pragma Import(C,QStatusBar_currentMessage,"QStatusBar_currentMessage");

procedure QStatusBar_showMessage(handle: not null  QStatusBarH; text: QStringH; timeout: Integer := 0);   
pragma Import(C,QStatusBar_showMessage,"QStatusBar_showMessage");

procedure QStatusBar_clearMessage(handle: not null  QStatusBarH);   
pragma Import(C,QStatusBar_clearMessage,"QStatusBar_clearMessage");

 type  QStatusBar_messageChangedEvent is access procedure (text: QStringH);
 pragma Convention(C,QStatusBar_messageChangedEvent);
 
 procedure QStatusBar_signal_slot_messageChanged(handle: not null QStatusBarH; hook:QStatusBar_messageChangedEvent);
 pragma Import(C,QStatusBar_signal_slot_messageChanged, "QStatusBar_signal_slot_messageChanged");

end Qt.QStatusBar;
