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

with Interfaces.C;  use Interfaces.C;
package Qt.QSortFilterProxyModel  is

 function  QSortFilterProxyModel_create(parent: QObjectH := QObjectH(app)) return QAbstractItemModelH;
 pragma Import(C,QSortFilterProxyModel_create,"QSortFilterProxyModel_create");

 procedure QSortFilterProxyModel_destroy(handle: not null  QAbstractItemModelH);
 pragma Import(C,QSortFilterProxyModel_destroy,"QSortFilterProxyModel_destroy");

 function  QSortFilterProxyModel_mapSelectionFromSource(handle: not null  QAbstractItemModelH; sourceSelection: QItemSelectionH) return QItemSelectionH;
 pragma Import(C,QSortFilterProxyModel_mapSelectionFromSource,"QSortFilterProxyModel_mapSelectionFromSource");

 function  QSortFilterProxyModel_mapSelectionToSource(handle: not null  QAbstractItemModelH; proxySelection: QItemSelectionH) return QItemSelectionH;
 pragma Import(C,QSortFilterProxyModel_mapSelectionToSource,"QSortFilterProxyModel_mapSelectionToSource");

 function  QSortFilterProxyModel_mimeData(handle: not null  QAbstractItemModelH; indexes: QModelIndexListH) return QMimeDataH;
 pragma Import(C,QSortFilterProxyModel_mimeData,"QSortFilterProxyModel_mimeData");

 function  QSortFilterProxyModel_buddy(handle: not null  QAbstractItemModelH; index: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QSortFilterProxyModel_buddy,"QSortFilterProxyModel_buddy");

 function  QSortFilterProxyModel_index(handle: not null  QAbstractItemModelH;row:integer; column:integer;  parent: QModelIndexH) return QModelIndexH;
 pragma Import(C,QSortFilterProxyModel_index,"QSortFilterProxyModel_index");

 function  QSortFilterProxyModel_mapFromSource(handle: not null  QAbstractItemModelH; sourceIndex: QModelIndexH) return   QModelIndexH;
 pragma Import(C,QSortFilterProxyModel_mapFromSource,"QSortFilterProxyModel_mapFromSource");

 function  QSortFilterProxyModel_mapToSource(handle: not null  QAbstractItemModelH; proxyIndex: QModelIndexH) return   QModelIndexH;
 pragma Import(C,QSortFilterProxyModel_mapToSource,"QSortFilterProxyModel_mapToSource");

 function  QSortFilterProxyModel_parent(handle: not null  QAbstractItemModelH;child: QModelIndexH) return QModelIndexH;
 pragma Import(C,QSortFilterProxyModel_parent,"QSortFilterProxyModel_parent");

 function  QSortFilterProxyModel_match(handle: not null  QAbstractItemModelH; start: QModelIndexH; role: QtItemDataRole:= QtEditRole;  value:QVariantH; hits:integer := 1; flags : QtMatchFlags := QtMatchStartsWith + QtMatchWrap) return  QModelIndexListH;
 pragma Import(C,QSortFilterProxyModel_match,"QSortFilterProxyModel_match");

 function  QSortFilterProxyModel_filterRegExp(handle: not null  QAbstractItemModelH) return  QRegExpH;
 pragma Import(C,QSortFilterProxyModel_filterRegExp,"QSortFilterProxyModel_filterRegExp");

 function  QSortFilterProxyModel_span(handle: not null  QAbstractItemModelH; index: QModelIndexH) return  QSizeH;
 pragma Import(C,QSortFilterProxyModel_span,"QSortFilterProxyModel_span");

 function  QSortFilterProxyModel_mimeTypes(handle: not null  QAbstractItemModelH) return  QStringListH;
 pragma Import(C,QSortFilterProxyModel_mimeTypes,"QSortFilterProxyModel_mimeTypes");

 function  QSortFilterProxyModel_data(handle: not null  QAbstractItemModelH; index: QModelIndexH; role: QtItemDataRole:= QtDisplayRole) return  QVariantH;
 pragma Import(C,QSortFilterProxyModel_data,"QSortFilterProxyModel_data");

 function  QSortFilterProxyModel_headerData(handle: not null  QAbstractItemModelH; section: integer; orientation: QtOrientation; role: QtItemDataRole:= QtDisplayRole) return  QVariantH;
 pragma Import(C,QSortFilterProxyModel_headerData,"QSortFilterProxyModel_headerData");

 function  QSortFilterProxyModel_canFetchMore(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_canFetchMore,"QSortFilterProxyModel_canFetchMore");

 function  QSortFilterProxyModel_dropMimeData(handle: not null  QAbstractItemModelH; data: QMimeDataH;action: QtDropAction; row:integer; column:integer;  parent: QModelIndexH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_dropMimeData,"QSortFilterProxyModel_dropMimeData");

 function  QSortFilterProxyModel_dynamicSortFilter(handle: not null  QAbstractItemModelH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_dynamicSortFilter,"QSortFilterProxyModel_dynamicSortFilter");

 function  QSortFilterProxyModel_hasChildren(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_hasChildren,"QSortFilterProxyModel_hasChildren");

 function  QSortFilterProxyModel_insertColumns(handle: not null  QAbstractItemModelH;column:integer; count:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_insertColumns,"QSortFilterProxyModel_insertColumns");

 function  QSortFilterProxyModel_insertRows(handle: not null  QAbstractItemModelH;row:integer; count:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_insertRows,"QSortFilterProxyModel_insertRows");

 function  QSortFilterProxyModel_isSortLocaleAware(handle: not null  QAbstractItemModelH) return boolean;
 pragma Import(C,QSortFilterProxyModel_isSortLocaleAware,"QSortFilterProxyModel_isSortLocaleAware");

 function  QSortFilterProxyModel_removeColumns(handle: not null  QAbstractItemModelH;column:integer; count:integer;  parent: QModelIndexH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_removeColumns,"QSortFilterProxyModel_removeColumns");

 function  QSortFilterProxyModel_removeRows(handle: not null  QAbstractItemModelH;row:integer; count:integer;  parent: QModelIndexH) return  boolean;
 pragma Import(C,QSortFilterProxyModel_removeRows,"QSortFilterProxyModel_removeRows");

 function  QSortFilterProxyModel_setData(handle: not null  QAbstractItemModelH; index: QModelIndexH;  value:QVariantH; role: QtItemDataRole:= QtEditRole) return  boolean;
 pragma Import(C,QSortFilterProxyModel_setData,"QSortFilterProxyModel_setData");

 function  QSortFilterProxyModel_setHeaderData(handle: not null  QAbstractItemModelH;section: integer; orientation: QtOrientation; value:QVariantH; role: QtItemDataRole:= QtEditRole) return  boolean;
 pragma Import(C,QSortFilterProxyModel_setHeaderData,"QSortFilterProxyModel_setHeaderData");

 function  QSortFilterProxyModel_filterCaseSensitivity(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_filterCaseSensitivity,"QSortFilterProxyModel_filterCaseSensitivity");

 function  QSortFilterProxyModel_columnCount(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_columnCount,"QSortFilterProxyModel_columnCount");

 function  QSortFilterProxyModel_filterKeyColumn(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_filterKeyColumn,"QSortFilterProxyModel_filterKeyColumn");

 function  QSortFilterProxyModel_filterRole(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_filterRole,"QSortFilterProxyModel_filterRole");

 function  QSortFilterProxyModel_flags(handle: not null  QAbstractItemModelH; index: QModelIndexH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_flags,"QSortFilterProxyModel_flags");

 function  QSortFilterProxyModel_rowCount(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_rowCount,"QSortFilterProxyModel_rowCount");

 function  QSortFilterProxyModel_sortCaseSensitivity(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_sortCaseSensitivity,"QSortFilterProxyModel_sortCaseSensitivity");

 function  QSortFilterProxyModel_sortColumn(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_sortColumn,"QSortFilterProxyModel_sortColumn");

 function  QSortFilterProxyModel_sortOrder(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_sortOrder,"QSortFilterProxyModel_sortOrder");

 function  QSortFilterProxyModel_sortRole(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_sortRole,"QSortFilterProxyModel_sortRole");

 function  QSortFilterProxyModel_supportedDropActions(handle: not null  QAbstractItemModelH) return  integer ;
 pragma Import(C,QSortFilterProxyModel_supportedDropActions,"QSortFilterProxyModel_supportedDropActions");

 procedure QSortFilterProxyModel_fetchMore(handle: not null  QAbstractItemModelH; parent: QModelIndexH);
 pragma Import(C,QSortFilterProxyModel_fetchMore,"QSortFilterProxyModel_fetchMore");

 procedure QSortFilterProxyModel_setDynamicSortFilter(handle: not null  QAbstractItemModelH; enable: boolean);
 pragma Import(C,QSortFilterProxyModel_setDynamicSortFilter,"QSortFilterProxyModel_setDynamicSortFilter");

 procedure QSortFilterProxyModel_setFilterCaseSensitivity(handle: not null  QAbstractItemModelH; cs: QtCaseSensitivity);
 pragma Import(C,QSortFilterProxyModel_setFilterCaseSensitivity,"QSortFilterProxyModel_setFilterCaseSensitivity");

 procedure QSortFilterProxyModel_setFilterKeyColumn(handle: not null  QAbstractItemModelH;column:integer);
 pragma Import(C,QSortFilterProxyModel_setFilterKeyColumn,"QSortFilterProxyModel_setFilterKeyColumn");

 procedure QSortFilterProxyModel_setFilterRegExp(handle: not null  QAbstractItemModelH; regExp: QRegExpH);
 pragma Import(C,QSortFilterProxyModel_setFilterRegExp,"QSortFilterProxyModel_setFilterRegExp");

 procedure QSortFilterProxyModel_setFilterRole(handle: not null  QAbstractItemModelH;role: QtItemDataRole:= QtEditRole);
 pragma Import(C,QSortFilterProxyModel_setFilterRole,"QSortFilterProxyModel_setFilterRole");

 procedure QSortFilterProxyModel_setSortCaseSensitivity(handle: not null  QAbstractItemModelH;cs: QtCaseSensitivity);
 pragma Import(C,QSortFilterProxyModel_setSortCaseSensitivity,"QSortFilterProxyModel_setSortCaseSensitivity");

 procedure QSortFilterProxyModel_setSortLocaleAware(handle: not null  QAbstractItemModelH;on: boolean);
 pragma Import(C,QSortFilterProxyModel_setSortLocaleAware,"QSortFilterProxyModel_setSortLocaleAware");

 procedure QSortFilterProxyModel_setSortRole(handle: not null  QAbstractItemModelH;role: QtItemDataRole:= QtEditRole);
 pragma Import(C,QSortFilterProxyModel_setSortRole,"QSortFilterProxyModel_setSortRole");

 procedure QSortFilterProxyModel_setSourceModel(handle: not null  QAbstractItemModelH; sourceModel: QAbstractItemModelH);
 pragma Import(C,QSortFilterProxyModel_setSourceModel,"QSortFilterProxyModel_setSourceModel");

 procedure QSortFilterProxyModel_sort(handle: not null  QAbstractItemModelH;column:integer; order: QtSortOrder := QtAscendingOrder);
 pragma Import(C,QSortFilterProxyModel_sort,"QSortFilterProxyModel_sort");

 procedure QSortFilterProxyModel_setFilterRegExp2(handle: not null  QAbstractItemModelH; pattern: QStringH);
 pragma Import(C,QSortFilterProxyModel_setFilterRegExp2 ,"QSortFilterProxyModel_setFilterRegExp2");

 procedure QSortFilterProxyModel_setFilterWildcard(handle: not null  QAbstractItemModelH; pattern: QStringH);
 pragma Import(C,QSortFilterProxyModel_setFilterWildcard ,"QSortFilterProxyModel_setFilterWildcard");

 procedure QSortFilterProxyModel_setFilterFixedString(handle: not null  QAbstractItemModelH; pattern: QStringH);
 pragma Import(C,QSortFilterProxyModel_setFilterFixedString ,"QSortFilterProxyModel_setFilterFixedString");

 procedure QSortFilterProxyModel_clear(handle: not null  QAbstractItemModelH);
 pragma Import(C,QSortFilterProxyModel_clear ,"QSortFilterProxyModel_clear");

 procedure QSortFilterProxyModel_invalidate(handle: not null  QAbstractItemModelH);
 pragma Import(C,QSortFilterProxyModel_invalidate ,"QSortFilterProxyModel_invalidate");

 procedure QSortFilterProxyModel_setFilterRegExp(handle: not null  QAbstractItemModelH; pattern: QStringH);

end  Qt.QSortFilterProxyModel;
