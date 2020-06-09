--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QTimer is

procedure QTimer_start(handle: not null  QTimerH) is
begin
    QTimer_start2(handle);
end;

procedure QTimer_singleShot(msec: Integer; receiver: QObjectH; member: zstring) is   
begin
  QTimer_singleShot2(msec,receiver,member);   
end;

procedure QTimer_singleShot(msec:integer;timerType: integer;receiver:QObjectH;member: zstring) is
begin
 QTimer_singleShot3(msec,timerType,receiver,member);
end; 
 
end Qt.Qtimer;
