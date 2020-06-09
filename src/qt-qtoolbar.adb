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

package body Qt.QToolBar             is

function QToolBar_create(parent: QWidgetH := null) return QToolBarH is
begin
 return QToolBar_create2(parent);
end;

function QToolBar_addAction(handle: not null  QToolBarH; icon: QIconH; text: QStringH) return  QActionH is
begin
 return QToolBar_addAction2(handle, icon, text);
end;

function QToolBar_addAction(handle: not null  QToolBarH; text: QStringH; receiver: QObjectH; member: zstring) return  QActionH is
begin
 return QToolBar_addAction3(handle, text, receiver, member);
end;

function QToolBar_addAction(handle: not null  QToolBarH; icon: QIconH; text: QStringH; receiver: QObjectH; member: zstring) return  QActionH is
begin
 return  QToolBar_addAction4(handle, icon, text, receiver, member);
end;

function QToolBar_actionAt(handle: not null  QToolBarH; x: Integer; y: Integer) return  QActionH is
begin
 return QToolBar_actionAt2(handle, x, y);
end;

procedure QToolBar_addAction(handle: not null  QToolBarH; action:QActionH) is
begin
  QToolBar_addAction5(handle,action);
end;

end  Qt.QToolBar;
