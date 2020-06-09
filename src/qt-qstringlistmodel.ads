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

package Qt.QStringListModel is

 function  QStringListModel_create(parent:QObjectH) return  QAbstractItemModelH;
 pragma Import(C,QStringListModel_create,"QStringListModel_create");

 function  QStringListModel_create2( strings: QStringListH; parent:QObjectH) return  QAbstractItemModelH;
 pragma Import(C,QStringListModel_create2,"QStringListModel_create2");

 procedure QStringListModel_destroy(handle: not null  QAbstractItemModelH);
 pragma Import(C,QStringListModel_destroy,"QStringListModel_destroy");

 function  QStringListModel_stringList(handle: not null  QAbstractItemModelH) return  QStringListH;
 pragma Import(C,QStringListModel_stringList,"QStringListModel_stringList");

 function  QStringListModel_data(handle: not null  QAbstractItemModelH; index: QModelIndexH; role : QtItemDataRole := QtEditRole) return  QVariantH;
 pragma Import(C,QStringListModel_data,"QStringListModel_data");

 function  QStringListModel_insertRows(handle: not null  QAbstractItemModelH ;row:integer; count:integer; parent: QModelIndexH) return boolean;
 pragma Import(C,QStringListModel_insertRows,"QStringListModel_insertRows");

 function  QStringListModel_removeRows(handle: not null  QAbstractItemModelH ;row:integer; count:integer; parent: QModelIndexH) return boolean;
 pragma Import(C,QStringListModel_removeRows,"QStringListModel_removeRows");

 function  QStringListModel_setData(handle: not null  QAbstractItemModelH; index: QModelIndexH; value:QVariantH; role : QtItemDataRole := QtEditRole) return boolean;
 pragma Import(C,QStringListModel_setData,"QStringListModel_setData");

 function  QStringListModel_rowCount(handle: not null  QAbstractItemModelH ; parent: QModelIndexH) return  integer;
 pragma Import(C,QStringListModel_rowCount,"QStringListModel_rowCount");

 procedure QStringListModel_setStringList(handle: not null  QAbstractItemModelH ; strings: QStringListH);
 pragma Import(C,QStringListModel_setStringList,"QStringListModel_setStringList");

 procedure QStringListModel_sort(handle: not null  QAbstractItemModelH ;column:integer;order: QtSortOrder := QtAscendingOrder);
 pragma Import(C,QStringListModel_sort,"QStringListModel_sort");

 function  QStringListModel_create( strings: QStringListH; parent:QObjectH) return  QAbstractItemModelH;

end Qt.QStringListModel;
