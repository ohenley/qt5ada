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

package body Qt.QStandardItemModel  is

 function  QStandardItem_create(text:QStringH) return  QStandardItemH is
 begin
   return  QStandardItem_create2(text);
 end;

 function  QStandardItem_create(icon:QIconH; text:QStringH) return  QStandardItemH is
 begin
   return  QStandardItem_create3(icon,  text);
 end;

 function  QStandardItem_create(rows:integer; columns:integer) return  QStandardItemH is
 begin
   return  QStandardItem_create4(rows,  columns);
 end;

 procedure QStandardItem_setChild(handle: not null  QStandardItemH; row:integer; item: QStandardItemH) is
 begin
   QStandardItem_setChild2(handle, row, item);
 end;

 procedure QStandardItem_insertRows(handle: not null  QStandardItemH; row:integer; count: integer) is
 begin
   QStandardItem_insertRows2(handle, row, count);
 end;

 procedure QStandardItem_insertRow(handle: not null  QStandardItemH; row:integer; item: QStandardItemH) is
 begin
   QStandardItem_insertRow2(handle,  row,  item);
 end;

 procedure QStandardItem_appendRow(handle: not null  QStandardItemH; item: QStandardItemH) is
 begin
    QStandardItem_appendRow2(handle, item);
 end;

 function  QStandardItemModel_create(rows:integer; columns:integer; parent:QObjectH) return  QStandardItemModelH is
 begin
   return  QStandardItemModel_create2(rows,  columns, parent);
 end;

 procedure QStandardItemModel_setItem(handle: not null  QStandardItemModelH; row:integer; item: QStandardItemH) is
 begin
   QStandardItemModel_setItem2(handle, row, item);
 end;

 procedure QStandardItemModel_appendRow(handle: not null  QStandardItemModelH; item: QStandardItemH) is
 begin
   QStandardItemModel_appendRow2(handle, item);
 end;

 procedure QStandardItemModel_insertRow(handle: not null  QStandardItemModelH; row:integer; item: QStandardItemH) is
 begin
   QStandardItemModel_insertRow2(handle, row, item);
 end;

 function  QStandardItemModel_insertRow(handle: not null  QStandardItemModelH; row:integer; parent: QModelIndexH) return  boolean is
 begin
    return  QStandardItemModel_insertRow3(handle, row,  parent);
 end;

 function  QStandardItemModel_index(handle: not null QStandardItemModelH;row,column:integer) return QModelIndexH is
 begin
   return  QStandardItemModel_index2(handle,row,column);
 end;

 function  QStandardItemModel_columnCount(handle: not null QStandardItemModelH) return integer is
 begin
   return  QStandardItemModel_columnCount2(handle);
 end;

 function  QStandardItemModel_hasChildren(handle: not null QStandardItemModelH) return boolean is
 begin
   return  QStandardItemModel_hasChildren2(handle);
 end;

 function  QStandardItemModel_insertRows(handle: not null QStandardItemModelH;row,count:integer)return boolean is
 begin
   return  QStandardItemModel_insertRows2(handle,row,count);
 end;

 function  QStandardItemModel_insertColumns(handle: not null QStandardItemModelH; column,count:integer)return boolean is
 begin
   return  QStandardItemModel_insertColumns2(handle,column,count);
 end;

 function  QStandardItemModel_removeRows(handle: not null QStandardItemModelH;row,count:integer) return boolean is
 begin
   return  QStandardItemModel_removeRows2(handle,row,count);
 end;

 function  QStandardItemModel_removeColumns(handle: not null QStandardItemModelH;column,count:integer) return boolean is
 begin
   return  QStandardItemModel_removeColumns2(handle,column,count);
 end;

 function  QStandardItemModel_insertRow(handle: not null QStandardItemModelH;row:integer) return boolean is
 begin
   return  QStandardItemModel_insertRow4(handle,row);
 end;

 function  QStandardItemModel_insertColumn(handle: not null QStandardItemModelH;column:integer) return boolean is
 begin
   return  QStandardItemModel_insertColumn3(handle,column);
 end;

end  Qt.QStandardItemModel;
