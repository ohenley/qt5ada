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

package Qt.QSystemTray          is

type  QSystemTrayIconActivationReason is (QSystemTrayIconUnknown, QSystemTrayIconContext, QSystemTrayIconDoubleClick, QSystemTrayIconTrigger, QSystemTrayIconMiddleClick );
pragma Convention(C, QSystemTrayIconActivationReason);

type  QSystemTrayIconMessageIcon is (QSystemTrayIconNoIcon, QSystemTrayIconInformation, QSystemTrayIconWarning, QSystemTrayIconCritical );
pragma Convention(C, QSystemTrayIconMessageIcon);

function QSystemTrayIcon_create(parent: QObjectH := null) return QSystemTrayIconH;    
pragma Import(C,QSystemTrayIcon_create,"QSystemTrayIcon_create");

procedure QSystemTrayIcon_destroy(handle: not null  QSystemTrayIconH);   
pragma Import(C,QSystemTrayIcon_destroy,"QSystemTrayIcon_destroy");

function QSystemTrayIcon_create2(icon: QIconH; parent: QObjectH := null) return QSystemTrayIconH;
pragma Import(C,QSystemTrayIcon_create2,"QSystemTrayIcon_create2");

procedure QSystemTrayIcon_setContextMenu(handle: not null  QSystemTrayIconH; menu: QMenuH);   
pragma Import(C,QSystemTrayIcon_setContextMenu,"QSystemTrayIcon_setContextMenu");

function QSystemTrayIcon_contextMenu(handle: not null  QSystemTrayIconH) return  QMenuH;   
pragma Import(C,QSystemTrayIcon_contextMenu,"QSystemTrayIcon_contextMenu");

function  QSystemTrayIcon_icon(handle: not null  QSystemTrayIconH) return QIconH;
pragma Import(C,QSystemTrayIcon_icon,"QSystemTrayIcon_icon");

procedure QSystemTrayIcon_setIcon(handle: not null  QSystemTrayIconH; icon: QIconH);   
pragma Import(C,QSystemTrayIcon_setIcon,"QSystemTrayIcon_setIcon");

function  QSystemTrayIcon_toolTip(handle: not null  QSystemTrayIconH) return QStringH;
pragma Import(C,QSystemTrayIcon_toolTip,"QSystemTrayIcon_toolTip");

procedure QSystemTrayIcon_setToolTip(handle: not null  QSystemTrayIconH; tip: QStringH);   
pragma Import(C,QSystemTrayIcon_setToolTip,"QSystemTrayIcon_setToolTip");

function QSystemTrayIcon_isSystemTrayAvailable return  Boolean;   
pragma Import(C,QSystemTrayIcon_isSystemTrayAvailable,"QSystemTrayIcon_isSystemTrayAvailable");

function QSystemTrayIcon_supportsMessages return  Boolean;   
pragma Import(C,QSystemTrayIcon_supportsMessages,"QSystemTrayIcon_supportsMessages");

procedure QSystemTrayIcon_showMessage(handle: not null  QSystemTrayIconH; title: QStringH; msg: QStringH; icon: QSystemTrayIconMessageIcon := QSystemTrayIconInformation; msecs: Integer := 10000);   
pragma Import(C,QSystemTrayIcon_showMessage,"QSystemTrayIcon_showMessage");

function  QSystemTrayIcon_geometry(handle: not null  QSystemTrayIconH) return QRectH;
pragma Import(C,QSystemTrayIcon_geometry,"QSystemTrayIcon_geometry");

function QSystemTrayIcon_isVisible(handle: not null  QSystemTrayIconH) return  Boolean;   
pragma Import(C,QSystemTrayIcon_isVisible,"QSystemTrayIcon_isVisible");

procedure QSystemTrayIcon_setVisible(handle: not null  QSystemTrayIconH; visible: Boolean);   
pragma Import(C,QSystemTrayIcon_setVisible,"QSystemTrayIcon_setVisible");

procedure QSystemTrayIcon_show(handle: not null  QSystemTrayIconH);   
pragma Import(C,QSystemTrayIcon_show,"QSystemTrayIcon_show");

procedure QSystemTrayIcon_hide(handle: not null  QSystemTrayIconH);   
pragma Import(C,QSystemTrayIcon_hide,"QSystemTrayIcon_hide");

 type QSystemTrayIcon_activatedEvent is access procedure (reason: QSystemTrayIconActivationReason);
 pragma Convention(C,QSystemTrayIcon_activatedEvent);

 type QSystemTrayIcon_messageClickedEvent is access procedure ;
 pragma Convention(C,QSystemTrayIcon_messageClickedEvent);
 
 procedure QSystemTrayIcon_signal_slot_activated(handle: not null QSystemTrayIconH; hook:QSystemTrayIcon_activatedEvent);
 pragma Import(C,QSystemTrayIcon_signal_slot_activated, "QSystemTrayIcon_signal_slot_activated");
 
 procedure QSystemTrayIcon_signal_slot_messageClicked(handle: not null QSystemTrayIconH; hook:QSystemTrayIcon_messageClickedEvent);
 pragma Import(C,QSystemTrayIcon_signal_slot_messageClicked, "QSystemTrayIcon_signal_slot_messageClicked");
 
---------------------------------------------------------------------------------------------------------------------------
function QSystemTrayIcon_create(icon: QIconH; parent: QObjectH := null) return QSystemTrayIconH;

end Qt.QSystemTray;
