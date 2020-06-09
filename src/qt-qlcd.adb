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

package body Qt.QLCD                 is

function QLCDNumber_create(numDigits: LongWord; parent: QWidgetH := null) return QLCDNumberH is
begin
 return QLCDNumber_create2(numDigits, parent);
end;

function QLCDNumber_checkOverflow(handle: not null  QLCDNumberH; num: Integer) return  Boolean is
begin
 return QLCDNumber_checkOverflow2(handle, num);
end;

procedure QLCDNumber_display(handle: not null  QLCDNumberH; num: Integer) is
begin
 QLCDNumber_display2(handle, num);
end;

procedure QLCDNumber_display(handle: not null  QLCDNumberH; num: Double) is
begin
  QLCDNumber_display3(handle, num);
end;

end Qt.QLCD;
