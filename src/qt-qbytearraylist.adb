--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString;     use Qt.QString;
with Qt.QStringList; use Qt.QStringList;
package body Qt.QByteArrayList is

 function  QByteArrayList_create(list:QByteArrayListH) return QByteArrayListH is
 begin
   return  QByteArrayList_create2(list);
 end;

 procedure QByteArrayList_append(handle: not null QByteArrayListH;list: QByteArrayListH) is
 begin
   QByteArrayList_append2(handle,list);
 end;

function  QByteArrayList_count(handle: not null QByteArrayListH) return integer is
begin
  return  QByteArrayList_count2(handle);
end;

 function  QByteArrayList_toStringlist(handle: not null QByteArrayListH) return QStringListH is
 str : QStringH;
 slist : QStringListH := QStringList_create;
 count : integer :=  QByteArrayList_count(handle);
 begin
  if count = 0 then return slist; end if;
  for i in 0 .. count - 1 loop
    str := QString_create(QByteArrayList_at(handle => handle, index => i));
    QStringList_append(handle => slist, s => str);
    QString_destroy(str);
  end loop;
  return slist;
end;

end Qt.QByteArrayList;
