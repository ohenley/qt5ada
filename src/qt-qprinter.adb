--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QPrinter   is

function  QPrinter_create( printer:QPrinterInfoH;mode:QPrinterPrinterMode := QPrinterScreenResolution) return QPrinterH is
begin
 return  QPrinter_create2( printer,mode);
end;

function  QPrinter_paperRect(handle: not null  QPrinterH) return QRectFH is
begin
  return  QPrinter_paperRect2(handle);
end;

function  QPrinter_pageRect(handle: not null  QPrinterH) return QRectFH is
begin
  return  QPrinter_pageRect2(handle);
end;

 function  QPrinter_setPageSize(handle:not null QPrinterH;pageSize:QPageSizeH) return boolean is
 begin
   return  QPrinter_setPageSize2(handle,pageSize);
 end;

 function  QPrinter_setPageMargins(handle:not null QPrinterH;margins:QMarginsFH;units: Qt.QPageLayout.Unit) return boolean is
 begin
   return  QPrinter_setPageMargins2(handle,margins,units);
 end;

end Qt.QPrinter;
