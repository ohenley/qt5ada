-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractItemModel; use Qt.QAbstractItemModel;
package Qt.QWebDownloadModel is

 function  QWebDownloadModel_create(manager:QWebDownloadManagerH;parent:QObjectH := null) return QAbstractListModelH;
 pragma Import(C,QWebDownloadModel_create, "QWebDownloadModel_create");
 
 function  QWebDownloadModel_removeRows(handle:not null QAbstractListModelH;row, count:integer;parent: QModelIndexH := QModelIndex_create) return boolean;
 pragma Import(C,QWebDownloadModel_removeRows, "QWebDownloadModel_removeRows");
 
 function  QWebDownloadModel_data(handle:not null QAbstractListModelH; index:QModelIndexH; role: integer := QtDisplayRole) return QVariantH;
 pragma Import(C,QWebDownloadModel_data, "QWebDownloadModel_data");
 
 function  QWebDownloadModel_rowCount(handle:not null QAbstractListModelH;parent:QModelIndexH := QModelIndex_create) return integer;
 pragma Import(C,QWebDownloadModel_rowCount, "QWebDownloadModel_rowCount");
 

end;
