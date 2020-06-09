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

package body Qt.QStandardItem        is

function QStandardItem_create(text: QStringH) return  QStandardItemH is
begin
 return QStandardItem_create2(text);
end;

function QStandardItem_create(icon: QIconH; text: QStringH) return  QStandardItemH is
begin
  return QStandardItem_create3(icon, text);
end;

function QStandardItem_create(rows: Integer; columns: Integer := 1) return QStandardItemH is
begin
  return QStandardItem_create4(rows, columns);
end;

procedure QStandardItem_setChild(handle: not null  QStandardItemH; row: Integer; item: QStandardItemH) is
begin
 QStandardItem_setChild2(handle, row, item);
end;

procedure QStandardItem_insertRows(handle: not null  QStandardItemH; row: Integer; count: Integer) is
begin
 QStandardItem_insertRows2(handle, row, count);
end;

procedure QStandardItem_insertRow(handle: not null  QStandardItemH; row: Integer; item: QStandardItemH) is
begin
  QStandardItem_insertRow2(handle, row, item);
end;

procedure QStandardItem_appendRow(handle: not null  QStandardItemH; item: QStandardItemH) is
begin
  QStandardItem_appendRow2(handle, item);
end;

function QStandardItemModel_create(rows: Integer; columns: Integer; parent: QObjectH := null) return QStandardItemModelH is
begin
 return QStandardItemModel_create2(rows, columns, parent);
end;

procedure QStandardItemModel_setItem(handle: not null  QStandardItemModelH; row: Integer; item: QStandardItemH) is
begin
  QStandardItemModel_setItem2(handle, row, item);
end;

procedure QStandardItemModel_appendRow(handle: not null  QStandardItemModelH; item: QStandardItemH) is
begin
  QStandardItemModel_appendRow2(handle, item);
end;

procedure QStandardItemModel_insertRow(handle: not null  QStandardItemModelH; row: Integer; item: QStandardItemH) is
begin
  QStandardItemModel_insertRow2(handle, row, item);
end;

function QStandardItemModel_insertRow(handle: not null  QStandardItemModelH; row: Integer; parent: QModelIndexH := null) return Boolean is
begin
 return QStandardItemModel_insertRow3(handle, row, parent);
end;

function QStandardItemModel_insertColumn(handle: not null  QStandardItemModelH; column: Integer; parent: QModelIndexH := null) return Boolean is
begin
 return QStandardItemModel_insertColumn2(handle, column, parent);
end;

end Qt.QStandardItem;
