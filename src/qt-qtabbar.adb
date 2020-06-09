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

package body Qt.QTabBar              is

function QTabBar_addTab(handle: not null  QTabBarH; icon: QIconH; text: QStringH) return  Integer is
begin
 return QTabBar_addTab2(handle, icon, text);
end;

function QTabBar_insertTab(handle: not null  QTabBarH; index: Integer; icon: QIconH; text: QStringH) return  Integer is
begin
 return QTabBar_insertTab2(handle, index, icon, text);
end;

end Qt.QTabBar;
