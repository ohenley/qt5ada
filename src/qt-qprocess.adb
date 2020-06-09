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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QVariant; use Qt.QVariant;

package body Qt.QProcess   is

 procedure QProcess_start(handle: not null  QProcessH; program:QStringH; mode: QIODeviceOpenMode := QIODeviceReadWrite) is
 begin
       QProcess_start2(handle, program, mode);
 end;

 function  QProcess_execute(program:QStringH) return integer is
 begin
   return  QProcess_execute2(program);
 end;

 function  QProcess_startDetached(program:QStringH; arguments: QStringListH) return boolean is
 begin
   return  QProcess_startDetached2(program,arguments);
 end;

 function  QProcess_startDetached(program:QStringH) return boolean is
 begin
   return  QProcess_startDetached3(program);
 end;
 
 procedure QProcess_signal_slot_finished(handle: not null QProcessH; hook:QProcess_finished2Event)  is
 begin
   QProcess_signal_slot_finished2(handle,hook);
 end;  

 function  QProcessEnvironment_create(other:QObjectH) return QObjectH is
 begin
   return  QProcessEnvironment_create2(other);
 end;

 procedure QProcessEnvironment_insert(handle:not null QObjectH;e:QObjectH) is
 begin
   QProcessEnvironment_insert2(handle,e);
 end;

end Qt.QProcess;
