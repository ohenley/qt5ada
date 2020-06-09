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

package body Qt.QDesktopWidget       is

function QDesktopWidget_screenNumber(handle: not null  QDesktopWidgetH; p1: QPointH) return  Integer is
begin
 return QDesktopWidget_screenNumber2(handle, p1);
end;

function  QDesktopWidget_screenGeometry(handle: not null  QDesktopWidgetH; widget: QWidgetH) return  QRectH is
begin
  return QDesktopWidget_screenGeometry2(handle, widget);
end;

function  QDesktopWidget_screenGeometry(handle: not null  QDesktopWidgetH; point: QPointH) return QRectH is
begin
  return QDesktopWidget_screenGeometry3(handle, point);
end;

function  QDesktopWidget_availableGeometry(handle: not null  QDesktopWidgetH; widget: QWidgetH) return QRectH is
begin
  return QDesktopWidget_availableGeometry2(handle, widget);
end;

function  QDesktopWidget_availableGeometry(handle: not null  QDesktopWidgetH; point: QPointH) return QRectH is
begin
  return QDesktopWidget_availableGeometry3(handle, point);
end;


end Qt.QDesktopWidget;

