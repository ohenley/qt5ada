-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QJsonValue;  use  Qt.QJsonValue;
with Qt.QAbstractItemModel; use  Qt.QAbstractItemModel;
package Qt.QJsonTreeItem is

 function  QJsonTreeItem_create(parent:QJsonTreeItemH := null) return QJsonTreeItemH;
 pragma Import(C,QJsonTreeItem_create, "QJsonTreeItem_create");
 
 procedure QJsonTreeItem_destroy(handle:not null QJsonTreeItemH);
 pragma Import(C,QJsonTreeItem_destroy, "QJsonTreeItem_destroy");
 
 procedure QJsonTreeItem_appendChild(handle:not null QJsonTreeItemH;item:QJsonTreeItemH);
 pragma Import(C,QJsonTreeItem_appendChild, "QJsonTreeItem_appendChild");
 
 function  QJsonTreeItem_child(handle:not null QJsonTreeItemH;row:integer) return QJsonTreeItemH;
 pragma Import(C,QJsonTreeItem_child, "QJsonTreeItem_child");
 
 function  QJsonTreeItem_parent(handle:not null QJsonTreeItemH) return QJsonTreeItemH;
 pragma Import(C,QJsonTreeItem_parent, "QJsonTreeItem_parent");
 
 function  QJsonTreeItem_childCount(handle:not null QJsonTreeItemH) return integer;
 pragma Import(C,QJsonTreeItem_childCount, "QJsonTreeItem_childCount");
 
 function  QJsonTreeItem_row(handle:not null QJsonTreeItemH) return integer;
 pragma Import(C,QJsonTreeItem_row, "QJsonTreeItem_row");
 
 procedure QJsonTreeItem_setKey(handle:not null QJsonTreeItemH;key: QStringH);
 pragma Import(C,QJsonTreeItem_setKey, "QJsonTreeItem_setKey");
 
 procedure QJsonTreeItem_setValue(handle:not null QJsonTreeItemH;value: QStringH);
 pragma Import(C,QJsonTreeItem_setValue, "QJsonTreeItem_setValue");
 
 procedure QJsonTreeItem_setType(handle:not null QJsonTreeItemH;tp: jsonValueType);
 pragma Import(C,QJsonTreeItem_setType, "QJsonTreeItem_setType");
 
 function  QJsonTreeItem_key(handle:not null QJsonTreeItemH) return QStringH;
 pragma Import(C,QJsonTreeItem_key, "QJsonTreeItem_key");
 
 function  QJsonTreeItem_value(handle:not null QJsonTreeItemH) return QStringH;
 pragma Import(C,QJsonTreeItem_value, "QJsonTreeItem_value");
 
 function  QJsonTreeItem_type(handle:not null QJsonTreeItemH) return jsonValueType;
 pragma Import(C,QJsonTreeItem_type, "QJsonTreeItem_type");
 
 function  QJsonTreeItem_load(value:QJsonValueH;parent : QJsonTreeItemH := null) return QJsonTreeItemH;
 pragma Import(C,QJsonTreeItem_load, "QJsonTreeItem_load");
 

end;
