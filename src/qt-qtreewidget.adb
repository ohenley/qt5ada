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

package body Qt.QTreeWidget          is

function QTreeWidgetItem_create(strings: QStringListH; qtype: QTreeWidgetItemItemType  := QTreeWidgetItemType) return QTreeWidgetItemH is
begin
 return QTreeWidgetItem_create2(strings, qtype);
end;

function QTreeWidgetItem_create(view: QTreeWidgetH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH is
begin
 return  QTreeWidgetItem_create3(view, qtype);
end;

function QTreeWidgetItem_create(view: QTreeWidgetH; strings: QStringListH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH is
begin
 return  QTreeWidgetItem_create4(view, strings, qtype);
end;

function QTreeWidgetItem_create(view: QTreeWidgetH; after: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH is
begin
 return QTreeWidgetItem_create5(view, after, qtype);
end;

function QTreeWidgetItem_create(parent: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH is
begin
 return  QTreeWidgetItem_create6(parent, qtype);
end;

function QTreeWidgetItem_create(parent: QTreeWidgetItemH; strings: QStringListH; qtype: QTreeWidgetItemItemType  := QTreeWidgetItemType) return QTreeWidgetItemH is
begin
 return QTreeWidgetItem_create7(parent,strings, qtype);
end;

function QTreeWidgetItem_create(parent: QTreeWidgetItemH; after: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH is
begin
 return QTreeWidgetItem_create8(parent, after, qtype);
end;

function QTreeWidgetItem_create(other: QTreeWidgetItemH) return  QTreeWidgetItemH is
begin
 return QTreeWidgetItem_create9(other);
end;

procedure QTreeWidget_setCurrentItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer) is
begin
 QTreeWidget_setCurrentItem2(handle, item, column);
end;

function QTreeWidget_itemAt(handle: not null  QTreeWidgetH; x: Integer; y: Integer) return  QTreeWidgetItemH is
begin
 return QTreeWidget_itemAt2(handle, x, y);
end;

end Qt.QTreeWidget;
