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

package Qt.QDirModel  is

 QDirFileIconRole : constant := 1;
 QDirFileNameRole : constant := 2;
 QDirFilePathRole : constant := 33;

 subtype QDirSortFlags is integer;

 function  QDirModel_create( nameFilters: QStringListH; filters: integer; sort: QDirSortFlags; parent:QObjectH := null) return QDirModelH;
 pragma Import(C,QDirModel_create,"QDirModel_create");

 function  QDirModel_create2(parent:QObjectH := null) return QDirModelH;
 pragma Import(C,QDirModel_create2,"QDirModel_create2");

 procedure QDirModel_destroy(handle: not null  QDirModelH);
 pragma Import(C,QDirModel_destroy,"QDirModel_destroy");

 function  QDirModel_fileInfo(handle: not null  QDirModelH; index: QModelIndexH) return QFileInfoH;
 pragma Import(C,QDirModel_fileInfo,"QDirModel_fileInfo");

 function  QDirModel_fileIcon(handle: not null  QDirModelH; index: QModelIndexH) return QIconH;
 pragma Import(C,QDirModel_fileIcon,"QDirModel_fileIcon");

 function  QDirModel_mimeData(handle: not null  QDirModelH; indexes: QModelIndexListH) return QMimeDataH;
 pragma Import(C,QDirModel_mimeData,"QDirModel_mimeData");

 function  QDirModel_index(handle: not null  QDirModelH;row:integer; column:integer; parent: QModelIndexH) return QModelIndexH;
 pragma Import(C,QDirModel_index,"QDirModel_index");

 function  QDirModel_index2(handle: not null  QDirModelH;row:integer; column:integer) return QModelIndexH;
 pragma Import(C,QDirModel_index2,"QDirModel_index2");

 function  QDirModel_index3(handle: not null  QDirModelH; path: QStringH; column:integer := 0) return QModelIndexH;
 pragma Import(C,QDirModel_index3,"QDirModel_index3");

 function  QDirModel_mkdir(handle: not null  QDirModelH; parent: QModelIndexH; name:QStringH) return QModelIndexH;
 pragma Import(C,QDirModel_mkdir,"QDirModel_mkdir");

 function  QDirModel_parent(handle: not null  QDirModelH; child: QModelIndexH) return QModelIndexH;
 pragma Import(C,QDirModel_parent,"QDirModel_parent");

 function  QDirModel_fileName(handle: not null  QDirModelH; index: QModelIndexH) return QStringH;
 pragma Import(C,QDirModel_fileName,"QDirModel_fileName");

 function  QDirModel_filePath(handle: not null  QDirModelH; index: QModelIndexH) return QStringH;
 pragma Import(C,QDirModel_filePath,"QDirModel_filePath");

 function  QDirModel_mimeTypes(handle: not null  QDirModelH) return   QStringListH;
 pragma Import(C,QDirModel_mimeTypes,"QDirModel_mimeTypes");

 function  QDirModel_nameFilters(handle: not null  QDirModelH) return QStringListH;
 pragma Import(C,QDirModel_nameFilters,"QDirModel_nameFilters");

 function  QDirModel_data(handle: not null  QDirModelH; index: QModelIndexH; role: QtItemDataRole := QtDisplayRole) return QVariantH;
 pragma Import(C,QDirModel_data,"QDirModel_data");

 function  QDirModel_headerData(handle: not null  QDirModelH; section: integer; orientation: QtOrientation; role: QtItemDataRole := QtDisplayRole) return QVariantH;
 pragma Import(C,QDirModel_headerData,"QDirModel_headerData");

 function  QDirModel_dropMimeData(handle: not null  QDirModelH; data: QMimeDataH; action: QtDropAction; row:integer; column:integer; parent: QModelIndexH) return boolean;
 pragma Import(C,QDirModel_dropMimeData,"QDirModel_dropMimeData");

 function  QDirModel_hasChildren(handle: not null  QDirModelH;index: QModelIndexH) return boolean;
 pragma Import(C,QDirModel_hasChildren,"QDirModel_hasChildren");

 function  QDirModel_hasChildren2(handle: not null  QDirModelH) return boolean;
 pragma Import(C,QDirModel_hasChildren2,"QDirModel_hasChildren2");

 function  QDirModel_isDir(handle: not null  QDirModelH ; index: QModelIndexH) return boolean;
 pragma Import(C,QDirModel_isDir,"QDirModel_isDir");

 function  QDirModel_isReadOnly(handle: not null  QDirModelH) return boolean;
 pragma Import(C,QDirModel_isReadOnly,"QDirModel_isReadOnly");

 function  QDirModel_lazyChildCount(handle: not null  QDirModelH) return boolean;
 pragma Import(C,QDirModel_lazyChildCount,"QDirModel_lazyChildCount");

 function  QDirModel_remove(handle: not null  QDirModelH; index: QModelIndexH) return boolean;
 pragma Import(C,QDirModel_remove,"QDirModel_remove");

 function  QDirModel_resolveSymlinks(handle: not null  QDirModelH) return boolean;
 pragma Import(C,QDirModel_resolveSymlinks,"QDirModel_resolveSymlinks");

 function  QDirModel_rmdir(handle: not null  QDirModelH ; index: QModelIndexH) return boolean;
 pragma Import(C,QDirModel_rmdir,"QDirModel_rmdir");

 function  QDirModel_setData(handle: not null  QDirModelH; index: QModelIndexH; value:QVariantH; role: QtItemDataRole := QtEditRole) return boolean;
 pragma Import(C,QDirModel_setData,"QDirModel_setData");

 function QDirModel_columnCount(handle: not null  QDirModelH; parent: QModelIndexH) return integer;
 pragma Import(C,QDirModel_columnCount,"QDirModel_columnCount");

 function QDirModel_columnCount2(handle: not null  QDirModelH) return integer;
 pragma Import(C,QDirModel_columnCount2,"QDirModel_columnCount2");

 function QDirModel_rowCount(handle: not null  QDirModelH; parent: QModelIndexH) return integer;
 pragma Import(C,QDirModel_rowCount,"QDirModel_rowCount");

 function QDirModel_rowCount2(handle: not null  QDirModelH) return integer;
 pragma Import(C,QDirModel_rowCount2,"QDirModel_rowCount2");

 procedure QDirModel_setLazyChildCount(handle: not null  QDirModelH; enable: boolean);
 pragma Import(C,QDirModel_setLazyChildCount,"QDirModel_setLazyChildCount");

 procedure QDirModel_setNameFilters(handle: not null  QDirModelH; filters: QStringListH);
 pragma Import(C,QDirModel_setNameFilters,"QDirModel_setNameFilters");

 procedure QDirModel_setReadOnly(handle: not null  QDirModelH; enable: boolean);
 pragma Import(C,QDirModel_setReadOnly,"QDirModel_setReadOnly");

 procedure QDirModel_setResolveSymlinks(handle: not null  QDirModelH; enable: boolean);
 pragma Import(C,QDirModel_setResolveSymlinks,"QDirModel_setResolveSymlinks");

 procedure QDirModel_setSorting(handle: not null  QDirModelH; sort: QDirSortFlags);
 pragma Import(C,QDirModel_setSorting,"QDirModel_setSorting");

 procedure QDirModel_sort(handle: not null  QDirModelH;column:integer; order:  QtSortOrder:= QtAscendingOrder);
 pragma Import(C,QDirModel_sort,"QDirModel_sort");
-------------------------------------------------------------------------------------
 function  QDirModel_create(parent:QObjectH := null) return QDirModelH;
 function  QDirModel_index(handle: not null  QDirModelH;row:integer; column:integer) return QModelIndexH;
 function  QDirModel_index(handle: not null  QDirModelH; path: QStringH; column:integer := 0) return QModelIndexH;
 function  QDirModel_hasChildren(handle: not null  QDirModelH) return boolean;
 function QDirModel_columnCount(handle: not null  QDirModelH) return integer;
 function QDirModel_rowCount(handle: not null  QDirModelH) return integer;

end Qt.QDirModel;
