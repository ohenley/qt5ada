--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *    
--   License, or (at your option) any later version.                       *    

with builtin;
with Ada.Command_Line;

package body Qt.QWebBrowserApplication is

function QWebBrowserApplication_create return QApplicationH is
begin
 builtin.Argv_fill;
 Qt.argc := builtin.argc;
 Qt.argv := builtin.argv;
 return QWebBrowserApplication_create(argc => Qt.argc'access,argv => qt.argv);
end;

procedure QWebBrowserApplication_invoke(p : QApplicationH:= app; rc:integer := 0) is
begin
  if QWebBrowserApplication_exec = 0 then null; end if;
  QWebBrowserApplication_delete(p);
end QWebBrowserApplication_invoke;
end  Qt.QWebBrowserApplication;
