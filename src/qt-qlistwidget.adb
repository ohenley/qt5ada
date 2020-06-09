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

with Qt.QString; use Qt.QString;
package body Qt.QListWidget          is

function QListWidgetItem_create(text: QStringH; view: QListWidgetH := null; qtype: QListWidgetItemItemType := QListWidgetItemType) return QListWidgetItemH is
begin
 return QListWidgetItem_create2(text, view, qtype);
end;

function QListWidgetItem_create(icon: QIconH; text: QStringH; view: QListWidgetH := null; qtype: QListWidgetItemItemType := QListWidgetItemType) return QListWidgetItemH is
begin
 return QListWidgetItem_create3(icon, text, view, qtype);
end;

function QListWidgetItem_create(other: QListWidgetItemH) return  QListWidgetItemH is
begin
 return QListWidgetItem_create4(other);
end;

procedure QListWidget_insertItem(handle: not null  QListWidgetH; row: Integer; label: QStringH) is
begin
  QListWidget_insertItem2(handle, row, label);
end;

procedure QListWidget_addItem(handle: not null  QListWidgetH; item: QListWidgetItemH) is
begin
  QListWidget_addItem2(handle, item);
end;

function QListWidget_itemAt(handle: not null  QListWidgetH; x: Integer; y: Integer) return  QListWidgetItemH is
begin
 return QListWidget_itemAt2(handle, x,y);
end;

procedure Put_Line(handle: not null  QListWidgetH := debugListWidget; line : string) is
begin
 QListWidget_addItem(handle => handle, label => s2qs(line));    
end;

procedure Put_Line(handle: not null  QListWidgetH := debugListWidget; line : QStringH) is
begin
 QListWidget_addItem(handle => handle, label => line);    
end;

end Qt.QListWidget;
