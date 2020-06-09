--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QKeySequence   ; use Qt.QKeySequence;
package body Qt.QAction              is

function QAction_create(text: QStringH; parent: QObjectH := null) return  QActionH is
begin
 return QAction_create2(text, parent);
end;

function QAction_create(icon: QIconH; text: QStringH; parent: QObjectH := null) return  QActionH is
begin
 return QAction_create3(icon, text, parent);
end;

procedure QAction_setShortcuts(handle: not null  QActionH; p1: QKeySequenceStandardKey) is
begin
  QAction_setShortcuts2(handle, p1);
end;

procedure QAction_setShortcut(handle: not null QActionH; shortcut: quint) is
begin
  QAction_setShortcut2(handle, shortcut);
end;

procedure QAction_setShortcut(handle: not null QActionH; shortcut: QStringH) is
keys : QKeySequenceH;
begin
 keys := QKeySequence_create(key => shortcut);
 QAction_setShortcut(handle,keys); 
end;

procedure QAction_signal_slot_triggered(handle: not null QActionH; hook:QAction_triggered2_Event) is
begin
  QAction_signal_slot_triggered2(handle,hook);
end;

end Qt.QAction;
