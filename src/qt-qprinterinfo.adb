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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QPrinterInfo is
function  QPrinterInfo_create(handle: not null QPrinterInfoH) return QPrinterInfoH is
begin
  return  QPrinterInfo_create2(handle);
end;

function  QPrinterInfo_create(printer: QPrinterH) return QPrinterInfoH is
begin
 return QPrinterInfo_create3(printer);
end;

end Qt.QPrinterInfo;
