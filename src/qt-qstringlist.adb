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

package body Qt.QStringList is


function QStringList_create(i: QStringH) return  QStringListH is
begin
 return QStringList_create2(i);
end;

function QStringList_create(l: QStringListH) return  QStringListH is
begin
 return QStringList_create3(l);
end;

function  QStringList_filter(handle: not null  QStringListH; rx: QRegExpH) return QStringListH is
begin
  return QStringList_filter2(handle, rx);
end;

function QStringList_replaceInStrings(handle: not null  QStringListH; rx: QRegExpH; after: QStringH) return  QStringListH is
begin
 return QStringList_replaceInStrings2(handle, rx, after);
end;

function  "+"(handle: not null  QStringListH; s: QStringH) return QStringListH is
begin
  QStringList_append(handle, s);
  return handle;
end;

function  QStringList_value(handle:not null QStringListH;i:integer;defaultValue:  QStringH) return QStringH  is
begin
  return  QStringList_value2(handle,i,defaultValue);
end;

 function  QStringList_indexOf(handle:not null QStringListH; str: zstring;from : integer :=  0) return integer is
 begin
   return  QStringList_indexOf2(handle,str,from);
 end;

 function  QStringList_indexOf(handle:not null QStringListH;str: QStringH;from : integer :=  0) return integer is
 begin
   return  QStringList_indexOf3(handle,str,from);
 end;

 function  QStringList_lastIndexOf(handle:not null QStringListH;str: zstring;from : integer :=  -1) return integer is
 begin
   return  QStringList_lastIndexOf2(handle,str,from);
 end;

 function  QStringList_lastIndexOf(handle:not null QStringListH;str: QStringH;from : integer :=  -1) return integer is
 begin
   return  QStringList_lastIndexOf3(handle,str,from);
 end;

end Qt.QStringList;
