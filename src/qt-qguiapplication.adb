--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2014                      บ
-- บ Copyright (C) 2013,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin;
with Ada.Command_Line;

package body Qt.QGuiApplication is

function QGuiApplication_create return QApplicationH is
begin
 builtin.Argv_fill;
 Qt.argc := builtin.argc;
 Qt.argv := builtin.argv;
 return QGuiApplication_create(argc => Qt.argc'access,argv => qt.argv);
end;

procedure QGuiApplication_processEvents(flags: QEventLoopProcessEventsFlags; maxtime: Integer) is 
begin
  QGuiApplication_processEvents2(flags,maxtime);
end;

procedure QGuiApplication_postEvent(receiver: QObjectH; event: QEventH; priority: Integer) is 
begin
  QGuiApplication_postEvent2(receiver,event,priority);
end;

procedure QGuiApplication_sendPostedEvents  is 
begin
  QGuiApplication_sendPostedEvents2;
end;

procedure QGuiApplication_removePostedEvents(receiver: QObjectH; eventType: Integer) is 
begin
  QGuiApplication_removePostedEvents2(receiver,eventType);
end;

procedure QGuiApplication_invoke(p : QApplicationH:= app; rc:integer := 0) is
begin
  if QGuiApplication_exec = 0 then null; end if;
  QGuiApplication_destroy(p);
end QGuiApplication_invoke;

function  QGuiApplication_exec(handle:QApplicationH) return  Integer is 
begin
  return  QGuiApplication_exec2(handle);
end;
end Qt.QGuiApplication;
