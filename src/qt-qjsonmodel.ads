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
package Qt.QJsonModel is
 
 function  QJsonModel_create(parent:QObjectH := null) return QJsonModelH;
 pragma Import(C,QJsonModel_create, "QJsonModel_create");
 
 function  QJsonModel_load(handle:not null QJsonModelH;fileName:QStringH) return boolean;
 pragma Import(C,QJsonModel_load, "QJsonModel_load");
 
 function  QJsonModel_load2(handle:not null QJsonModelH;device:QIODeviceH) return boolean;
 pragma Import(C,QJsonModel_load2, "QJsonModel_load2");
 
 function  QJsonModel_loadJson(handle:not null QJsonModelH;json: QByteArrayH) return boolean;
 pragma Import(C,QJsonModel_loadJson, "QJsonModel_loadJson");
 
 function  QJsonModel_data(handle:not null QJsonModelH;index: QModelIndexH;role: integer) return QVariantH;
 pragma Import(C,QJsonModel_data, "QJsonModel_data");
 
 function  QJsonModel_headerData(handle:not null QJsonModelH;section:integer;orientation: QtOrientation;role: integer) return QVariantH;
 pragma Import(C,QJsonModel_headerData, "QJsonModel_headerData");
 
 function  QJsonModel_index(handle:not null QJsonModelH;row:integer;column: integer;parent : QModelIndexH := QModelIndex_create) return QModelIndexH;
 pragma Import(C,QJsonModel_index, "QJsonModel_index");
 
 function  QJsonModel_parent(handle:not null QJsonModelH;index: QModelIndexH) return QModelIndexH;
 pragma Import(C,QJsonModel_parent, "QJsonModel_parent");
 
 function  QJsonModel_rowCount(handle:not null QJsonModelH;parent : QModelIndexH :=  QModelIndex_create) return integer;
 pragma Import(C,QJsonModel_rowCount, "QJsonModel_rowCount");
 
 function  QJsonModel_columnCount(handle:not null QJsonModelH;parent : QModelIndexH :=  QModelIndex_create) return integer;
 pragma Import(C,QJsonModel_columnCount, "QJsonModel_columnCount");
 
 function  QJsonModel_load(handle:not null QJsonModelH;device:QIODeviceH) return boolean;

end;
