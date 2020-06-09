--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2020                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QMessageBox; use Qt.QMessageBox;
package body Qt.QResource  is


 function  QResource_regResource(rccFilename: QStringH;resourceRoot: QStringH := QString_create) return boolean is
 rc : boolean;
 n  : integer;
 begin
   rc := QResource_registerResource(rccFilename,resourceRoot);
   if not rc
   then
    n := QMessageBox_warning(parent => null, title => s2qs("Register resource file"),
       text => s2qs("Can not register Resource File(rcc)" & LF & " Check if it built right " &  " You can use RCBIN script" ),
       button0Text => s2qs("Yes"), button1Text => s2qs("No"), button2Text => s2qs(""), 
       defaultButtonNumber => 0, escapeButtonNumber => 1);
   end if;
   return rc;
 end;

 function  QResource_unregResource(rccFilename: QStringH;resourceRoot: QStringH := QString_create) return boolean is
 rc : boolean;
 n  : integer;
 begin
   rc := QResource_unregisterResource(rccFilename,resourceRoot);
   if not rc
   then
    n := QMessageBox_warning(parent => null, title => s2qs("Unregister resource file"),
       text => s2qs("Can not unregister Resource File(rcc)" & LF & " Check if it built right " &  " You can use RCBIN script" ),
       button0Text => s2qs("Yes"), button1Text => s2qs("No"), button2Text => s2qs(""), 
       defaultButtonNumber => 0, escapeButtonNumber => 1);
   end if;
   return rc;
 end;

 function  QResource_registerResource(rccData : charp;resourceRoot: QStringH := QString_create) return boolean is
 begin
   return QResource_registerResource2(rccData,resourceRoot);
 end;

 function  QResource_unregisterResource(rccData: charp;resourceRoot: QStringH := QString_create) return boolean is
 begin
   return  QResource_unregisterResource2(rccData,resourceRoot);
 end;

end;
