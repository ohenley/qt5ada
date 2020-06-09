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

with Qt.QAbstractItemModel; use Qt.QAbstractItemModel;
with Qt.QNamespace;         
package Qt.QFileSystemModel   is

 -- Roles
 FileIconRole    : constant := Qt.QNamespace.DecorationRole;
 FilePathRole    : constant := Qt.QNamespace.UserRole + 1;
 FileNameRole    : constant := Qt.QNamespace.UserRole + 2;
 FilePermissions : constant := Qt.QNamespace.UserRole + 3; 

 type StringProc is access procedure(p: QStringH);
 pragma Convention(C,StringProc);

 type StringStringStringProc is access procedure(p,p1,p2: QStringH);
 pragma Convention(C,StringStringStringProc);

 function  QFileSystemModel_create(parent:QObjectH := null) return QFileSystemModelH ;
 pragma Import(C,QFileSystemModel_create, "QFileSystemModel_create");
 
 procedure QFileSystemModel_destroy(handle: not null QFileSystemModelH);
 pragma Import(C,QFileSystemModel_destroy, "QFileSystemModel_destroy");
 
 function  QFileSystemModel_index(handle: not null QFileSystemModelH;row,column: integer; parent:QModelIndexH := QModelIndex_create) return QModelIndexH;
 pragma Import(C,QFileSystemModel_index, "QFileSystemModel_index");
 
 function  QFileSystemModel_index2(handle: not null QFileSystemModelH; path:QStringH; column: integer := 0) return QModelIndexH;
 pragma Import(C,QFileSystemModel_index2, "QFileSystemModel_index2");
 
 function  QFileSystemModel_parent(handle: not null QFileSystemModelH; child:QModelIndexH) return QModelIndexH;
 pragma Import(C,QFileSystemModel_parent, "QFileSystemModel_parent");
 
 function  QFileSystemModel_hasChildren(handle: not null QFileSystemModelH; parent:QModelIndexH := QModelIndex_create) return boolean;
 pragma Import(C,QFileSystemModel_hasChildren, "QFileSystemModel_hasChildren");
 
 function  QFileSystemModel_canFetchMore(handle: not null QFileSystemModelH; parent:QModelIndexH) return boolean;
 pragma Import(C,QFileSystemModel_canFetchMore, "QFileSystemModel_canFetchMore");
 
 procedure QFileSystemModel_fetchMore(handle: not null QFileSystemModelH; parent:QModelIndexH);
 pragma Import(C,QFileSystemModel_fetchMore, "QFileSystemModel_fetchMore");
 
 function  QFileSystemModel_rowCount(handle: not null QFileSystemModelH; parent:QModelIndexH := QModelIndex_create) return integer;
 pragma Import(C,QFileSystemModel_rowCount, "QFileSystemModel_rowCount");
 
 function  QFileSystemModel_columnCount(handle: not null QFileSystemModelH; parent:QModelIndexH := QModelIndex_create) return integer;
 pragma Import(C,QFileSystemModel_columnCount, "QFileSystemModel_columnCount");
 
 function  QFileSystemModel_myComputer(handle: not null QFileSystemModelH; role: Qt_ItemDataRole := DisplayRole) return QVariantH;
 pragma Import(C,QFileSystemModel_myComputer, "QFileSystemModel_myComputer");
 
 function  QFileSystemModel_data(handle: not null QFileSystemModelH; index:QModelIndexH; role: Qt_ItemDataRole := DisplayRole) return QVariantH;
 pragma Import(C,QFileSystemModel_data, "QFileSystemModel_data");
 
 function  QFileSystemModel_setData(handle: not null QFileSystemModelH; index:QModelIndexH;value: QVariantH; role: Qt_ItemDataRole := EditRole) return boolean;
 pragma Import(C,QFileSystemModel_setData, "QFileSystemModel_setData");
 
 function  QFileSystemModel_headerData(handle: not null QFileSystemModelH;section,orientation: integer;role: Qt_ItemDataRole := DisplayRole) return QVariantH;
 pragma Import(C,QFileSystemModel_headerData, "QFileSystemModel_headerData");
 
 function  QFileSystemModel_flags(handle: not null QFileSystemModelH; index:QModelIndexH) return integer;
 pragma Import(C,QFileSystemModel_flags, "QFileSystemModel_flags");
 
 procedure QFileSystemModel_sort(handle: not null QFileSystemModelH;column: integer; order: QtSortOrder  := QtAscendingOrder);
 pragma Import(C,QFileSystemModel_sort, "QFileSystemModel_sort");
 
 function  QFileSystemModel_mimeTypes(handle: not null QFileSystemModelH) return QStringListH;
 pragma Import(C,QFileSystemModel_mimeTypes, "QFileSystemModel_mimeTypes");
 
 function  QFileSystemModel_mimeData(handle: not null QFileSystemModelH; indexes:QModelIndexListH) return QMimeDataH;
 pragma Import(C,QFileSystemModel_mimeData, "QFileSystemModel_mimeData");
 
 function  QFileSystemModel_dropMimeData(handle: not null QFileSystemModelH; data: QMimeDataH; action,row,column: integer; parent:QModelIndexH) return boolean;
 pragma Import(C,QFileSystemModel_dropMimeData, "QFileSystemModel_dropMimeData");
 
 function  QFileSystemModel_supportedDropActions(handle: not null QFileSystemModelH) return integer;
 pragma Import(C,QFileSystemModel_supportedDropActions, "QFileSystemModel_supportedDropActions");
 
 function  QFileSystemModel_setRootPath(handle: not null QFileSystemModelH; path:QStringH) return QModelIndexH;
 pragma Import(C,QFileSystemModel_setRootPath, "QFileSystemModel_setRootPath");
 
 function  QFileSystemModel_rootPath(handle: not null QFileSystemModelH) return QStringH;
 pragma Import(C,QFileSystemModel_rootPath, "QFileSystemModel_rootPath");
 
 function  QFileSystemModel_rootDirectory(handle: not null QFileSystemModelH) return QDirH;
 pragma Import(C,QFileSystemModel_rootDirectory, "QFileSystemModel_rootDirectory");
 
 procedure QFileSystemModel_setIconProvider(handle: not null QFileSystemModelH; provider:QFileIconProviderH);
 pragma Import(C,QFileSystemModel_setIconProvider, "QFileSystemModel_setIconProvider");
 
 function  QFileSystemModel_iconProvider(handle: not null QFileSystemModelH) return QFileIconProviderH;
 pragma Import(C,QFileSystemModel_iconProvider, "QFileSystemModel_iconProvider");
 
 procedure QFileSystemModel_setFilter(handle: not null QFileSystemModelH;filters:integer);
 pragma Import(C,QFileSystemModel_setFilter, "QFileSystemModel_setFilter");
 
 function  QFileSystemModel_filter(handle: not null QFileSystemModelH) return integer;
 pragma Import(C,QFileSystemModel_filter, "QFileSystemModel_filter");
 
 procedure QFileSystemModel_setResolveSymlinks(handle: not null QFileSystemModelH; isEnable: boolean);
 pragma Import(C,QFileSystemModel_setResolveSymlinks, "QFileSystemModel_setResolveSymlinks");
 
 function  QFileSystemModel_resolveSymlinks(handle: not null QFileSystemModelH) return boolean;
 pragma Import(C,QFileSystemModel_resolveSymlinks, "QFileSystemModel_resolveSymlinks");
 
 procedure QFileSystemModel_setReadOnly(handle: not null QFileSystemModelH; isEnable: boolean);
 pragma Import(C,QFileSystemModel_setReadOnly, "QFileSystemModel_setReadOnly");
 
 function  QFileSystemModel_isReadOnly(handle: not null QFileSystemModelH) return boolean;
 pragma Import(C,QFileSystemModel_isReadOnly, "QFileSystemModel_isReadOnly");
 
 procedure QFileSystemModel_setNameFilterDisables(handle: not null QFileSystemModelH; isEnable: boolean);
 pragma Import(C,QFileSystemModel_setNameFilterDisables, "QFileSystemModel_setNameFilterDisables");
 
 function  QFileSystemModel_nameFilterDisables(handle: not null QFileSystemModelH) return boolean;
 pragma Import(C,QFileSystemModel_nameFilterDisables, "QFileSystemModel_nameFilterDisables");
 
 procedure QFileSystemModel_setNameFilters(handle: not null QFileSystemModelH; filters:QStringListH);
 pragma Import(C,QFileSystemModel_setNameFilters, "QFileSystemModel_setNameFilters");
 
 function  QFileSystemModel_nameFilters(handle: not null QFileSystemModelH) return QStringListH;
 pragma Import(C,QFileSystemModel_nameFilters, "QFileSystemModel_nameFilters");
 
 function  QFileSystemModel_filePath(handle: not null QFileSystemModelH; index:QModelIndexH) return QStringH;
 pragma Import(C,QFileSystemModel_filePath, "QFileSystemModel_filePath");
 
 function  QFileSystemModel_isDir(handle: not null QFileSystemModelH; index:QModelIndexH) return boolean;
 pragma Import(C,QFileSystemModel_isDir, "QFileSystemModel_isDir");
 
 function  QFileSystemModel_size(handle: not null QFileSystemModelH; index:QModelIndexH) return qint64;
 pragma Import(C,QFileSystemModel_size, "QFileSystemModel_size");
 
 function  QFileSystemModel_type(handle: not null QFileSystemModelH; index:QModelIndexH) return QStringH;
 pragma Import(C,QFileSystemModel_type, "QFileSystemModel_type");
 
 function  QFileSystemModel_lastModified(handle: not null QFileSystemModelH; index:QModelIndexH) return QDateTimeH;
 pragma Import(C,QFileSystemModel_lastModified, "QFileSystemModel_lastModified");
 
 function  QFileSystemModel_mkdir(handle: not null QFileSystemModelH; parent:QModelIndexH; name:QStringH) return QModelIndexH;
 pragma Import(C,QFileSystemModel_mkdir, "QFileSystemModel_mkdir");
 
 function  QFileSystemModel_rmdir(handle: not null QFileSystemModelH; index:QModelIndexH) return boolean;
 pragma Import(C,QFileSystemModel_rmdir, "QFileSystemModel_rmdir");
 
 function  QFileSystemModel_fileName(handle: not null QFileSystemModelH; index:QModelIndexH) return QStringH;
 pragma Import(C,QFileSystemModel_fileName, "QFileSystemModel_fileName");
 
 function  QFileSystemModel_fileIcon(handle: not null QFileSystemModelH; index:QModelIndexH) return QIconH;
 pragma Import(C,QFileSystemModel_fileIcon, "QFileSystemModel_fileIcon");
 
 function  QFileSystemModel_permissions(handle: not null QFileSystemModelH; index:QModelIndexH) return integer;
 pragma Import(C,QFileSystemModel_permissions, "QFileSystemModel_permissions");
 
 function  QFileSystemModel_fileInfo(handle: not null QFileSystemModelH; index:QModelIndexH) return QFileInfoH;
 pragma Import(C,QFileSystemModel_fileInfo, "QFileSystemModel_fileInfo");
 
 function  QFileSystemModel_remove(handle: not null QFileSystemModelH; index:QModelIndexH) return boolean;
 pragma Import(C,QFileSystemModel_remove, "QFileSystemModel_remove");

 procedure QFileSystemModel_signal_slot_rootPathChanged(handle: not null QFileSystemModelH; hook: StringProc);
 pragma Import(C,QFileSystemModel_signal_slot_rootPathChanged, "QFileSystemModel_signal_slot_rootPathChanged");
 
 procedure QFileSystemModel_signal_slot_directoryLoaded(handle: not null QFileSystemModelH; hook: StringProc);      
 pragma Import(C,QFileSystemModel_signal_slot_directoryLoaded, "QFileSystemModel_signal_slot_directoryLoaded");
 
 procedure QFileSystemModel_signal_slot_fileRenamed(handle: not null QFileSystemModelH; hook: StringStringStringProc);
 pragma Import(C,QFileSystemModel_signal_slot_fileRenamed, "QFileSystemModel_signal_slot_fileRenamed");
--------------------------------------------------------------------------------------------------------------
 function  QFileSystemModel_index(handle: not null QFileSystemModelH; path:QStringH; column: integer := 0) return QModelIndexH;

end;
