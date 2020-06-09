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

package Qt.QDesktopWidget       is

function QDesktopWidget_create return  QDesktopWidgetH;   
pragma Import(C,QDesktopWidget_create,"QDesktopWidget_create");

procedure QDesktopWidget_destroy(handle: not null  QDesktopWidgetH);   
pragma Import(C,QDesktopWidget_destroy,"QDesktopWidget_destroy");

function QDesktopWidget_isVirtualDesktop(handle: not null  QDesktopWidgetH) return  Boolean;   
pragma Import(C,QDesktopWidget_isVirtualDesktop,"QDesktopWidget_isVirtualDesktop");

function QDesktopWidget_numScreens(handle: not null  QDesktopWidgetH) return  Integer;   
pragma Import(C,QDesktopWidget_numScreens,"QDesktopWidget_numScreens");

function QDesktopWidget_screenCount(handle: not null  QDesktopWidgetH) return  Integer;   
pragma Import(C,QDesktopWidget_screenCount,"QDesktopWidget_screenCount");

function QDesktopWidget_primaryScreen(handle: not null  QDesktopWidgetH) return  Integer;   
pragma Import(C,QDesktopWidget_primaryScreen,"QDesktopWidget_primaryScreen");

function QDesktopWidget_screenNumber(handle: not null  QDesktopWidgetH; widget: QWidgetH := null) return Integer;    
pragma Import(C,QDesktopWidget_screenNumber,"QDesktopWidget_screenNumber");

function QDesktopWidget_screenNumber2(handle: not null  QDesktopWidgetH; p1: QPointH) return  Integer;
pragma Import(C,QDesktopWidget_screenNumber2,"QDesktopWidget_screenNumber2");

function QDesktopWidget_screen(handle: not null  QDesktopWidgetH; screen: Integer := -1) return QWidgetH;   
pragma Import(C,QDesktopWidget_screen,"QDesktopWidget_screen");

function  QDesktopWidget_screenGeometry(handle: not null  QDesktopWidgetH; screen: Integer := -1) return QRectH;
pragma Import(C,QDesktopWidget_screenGeometry,"QDesktopWidget_screenGeometry");

function  QDesktopWidget_screenGeometry2(handle: not null  QDesktopWidgetH; widget: QWidgetH) return  QRectH;
pragma Import(C,QDesktopWidget_screenGeometry2,"QDesktopWidget_screenGeometry2");

function  QDesktopWidget_screenGeometry3(handle: not null  QDesktopWidgetH; point: QPointH) return QRectH;
pragma Import(C,QDesktopWidget_screenGeometry3,"QDesktopWidget_screenGeometry3");

function  QDesktopWidget_availableGeometry(handle: not null  QDesktopWidgetH; screen: Integer := -1) return QRectH;
pragma Import(C,QDesktopWidget_availableGeometry,"QDesktopWidget_availableGeometry");

function  QDesktopWidget_availableGeometry2(handle: not null  QDesktopWidgetH; widget: QWidgetH) return QRectH;
pragma Import(C,QDesktopWidget_availableGeometry2,"QDesktopWidget_availableGeometry2");

function  QDesktopWidget_availableGeometry3(handle: not null  QDesktopWidgetH; point: QPointH) return QRectH;
pragma Import(C,QDesktopWidget_availableGeometry3,"QDesktopWidget_availableGeometry3");

type QDesktopWidget_resizedEvent is access procedure (p1: Integer);
pragma Convention(C,QDesktopWidget_resizedEvent);

type QDesktopWidget_workAreaResizedEvent is access procedure (p1: Integer);
pragma Convention(C,QDesktopWidget_workAreaResizedEvent);
 
 procedure QDesktopWidget_signal_slot_resized(handle: not null QDesktopWidgetH; hook:QDesktopWidget_resizedEvent);
 pragma Import(C,QDesktopWidget_signal_slot_resized, "QDesktopWidget_signal_slot_resized");
 
 procedure QDesktopWidget_signal_slot_workAreaResized(handle: not null QDesktopWidgetH; hook:QDesktopWidget_workAreaResizedEvent);
 pragma Import(C,QDesktopWidget_signal_slot_workAreaResized, "QDesktopWidget_signal_slot_workAreaResized");
 
 procedure QDesktopWidget_signal_slot_screenCountChanged(handle:not null QDesktopWidgetH;hook: intCallbackH);
 pragma Import(C,QDesktopWidget_signal_slot_screenCountChanged, "QDesktopWidget_signal_slot_screenCountChanged");
 
--------------------------------------------------------------------------------------------------------
function  QDesktopWidget_screenNumber(handle: not null  QDesktopWidgetH; p1: QPointH) return  Integer;
function  QDesktopWidget_screenGeometry(handle: not null  QDesktopWidgetH; widget: QWidgetH) return QRectH;
function  QDesktopWidget_screenGeometry(handle: not null  QDesktopWidgetH; point: QPointH) return QRectH;
function  QDesktopWidget_availableGeometry(handle: not null  QDesktopWidgetH; widget: QWidgetH) return QRectH;
function  QDesktopWidget_availableGeometry(handle: not null  QDesktopWidgetH; point: QPointH) return QRectH;

end Qt.QDesktopWidget;
