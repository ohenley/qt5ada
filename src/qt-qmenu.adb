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

with Qt.QObject; use Qt.QObject;
with Qt.QString; use Qt.QString;
package body Qt.QMenu                is

function QMenu_create(title: QStringH; parent: QWidgetH := null) return QMenuH is
begin
 return QMenu_create2(title, parent);
end;

function QMenu_addAction(handle: not null  QMenuH; icon: QIconH; text: QStringH) return  QActionH is
begin
 return QMenu_addAction2(handle, icon, text);
end;

function QMenu_addAction(handle: not null  QMenuH; text: QStringH; receiver: QObjectH; slotAction: string := "quit()"; shortcut: QKeySequenceH := null) return QActionH is
rc : boolean;
action: QActionH;
begin
 action := QMenu_addAction(handle, text);
 if shortcut /= null then 
   QAction_setShortcut(handle => action, shortcut => shortcut);   
 end if;
 rc := QObject_connect(sender => QObjectH(action),signal => SIGNAL("triggered()"),receiver => receiver,slot => SLOT(slotAction)); 
 return action;
end;

function QMenu_addAction(handle: not null  QMenuH; icon: QIconH; text: QStringH; receiver: QObjectH; slotAction: string := "quit()"; shortcut: QKeySequenceH := null) return QActionH is
action: QActionH;
rc : boolean;
begin
 action :=  QMenu_addAction2(handle, icon, text);
 if shortcut /= null then 
   QAction_setShortcut(handle => action, shortcut => shortcut);   
 end if;
 rc := QObject_connect(sender => QObjectH(action),signal => SIGNAL("triggered()"),receiver => receiver,slot => SLOT(slotAction)); 
 return action;
end;

function QMenu_addAction(handle: not null  QMenuH; text: QStringH; slotAction: QAction_triggered_Event; shortcut: QKeySequenceH := null) return QActionH is
action: QActionH;
begin
 action := QMenu_addAction(handle, text);
 if shortcut /= null then 
   QAction_setShortcut(handle => action, shortcut => shortcut);   
 end if;
 QAction_signal_slot_triggered(handle => action, hook => slotAction); 
 return action;
end;

function QMenu_addAction(handle: not null  QMenuH; icon: QIconH; text: QStringH; slotAction: QAction_triggered_Event; shortcut: QKeySequenceH := null) return QActionH is
action: QActionH;
begin
 action :=  QMenu_addAction2(handle, icon, text);
 if shortcut /= null then 
   QAction_setShortcut(handle => action, shortcut => shortcut);   
 end if;
 QAction_signal_slot_triggered(handle => action, hook => slotAction); 
 return action;
end;

function QMenu_addMenu(handle: not null  QMenuH; title: QStringH) return  QMenuH is
begin
 return QMenu_addMenu2(handle, title);
end;

function QMenu_addMenu(handle: not null  QMenuH; icon: QIconH; title: QStringH) return  QMenuH is
begin
 return QMenu_addMenu3(handle, icon, title);
end;

function QMenu_exec(handle: not null  QMenuH; pos: QPointH; act: QActionH := null) return QActionH is
begin
 return  QMenu_exec2(handle, pos, act);
end;

function QMenu_exec(actions: QObjectListH; pos: QPointH; act: QActionH := null) return QActionH is
begin
 return QMenu_exec3(actions, pos, act);
end;

function  QMenu_insertSection(handle:not null QMenuH;before:QActionH;icon: QIconH;text: QStringH) return QActionH is
begin
  return QMenu_insertSection2(handle,before,icon,text);
end;

function QMenuBar_addAction(handle: not null  QMenuBarH; text: QStringH; receiver: QObjectH; slotAction: string := "quit()") return  QActionH is
rc : boolean;
action: QActionH;
begin
 action :=  QMenuBar_addAction(handle, text);
 rc := QObject_connect(sender => QObjectH(action),signal => SIGNAL("triggered()"),receiver => receiver,slot => SLOT(slotAction)); 
 return action;
end;

function QMenuBar_addAction(handle: not null  QMenuBarH; text: QStringH; slotAction: QAction_triggered_Event) return QActionH is
action: QActionH;
begin
 action := QMenuBar_addAction(handle, text);
 QAction_signal_slot_triggered(handle => action, hook => slotAction); 
 return action;
end;

function QMenuBar_addMenu(handle: not null  QMenuBarH; title: QStringH) return  QMenuH is
begin
 return QMenuBar_addMenu2(handle, title);
end;

function QMenuBar_addMenu(handle: not null  QMenuBarH; icon: QIconH; title: QStringH) return  QMenuH is
begin
 return QMenuBar_addMenu3(handle, icon, title);
end;

procedure QMenu_addAction(handle: not null  QMenuH;action:QActionH) is
begin
  QMenu_addAction5(handle,action);
end;

procedure QMenuBar_addAction(handle: not null  QMenuBarH;action:QActionH) is
begin
  QMenuBar_addAction5(handle,action);
end;

end Qt.QMenu;
