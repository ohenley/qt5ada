--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2915                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QModel is

function QModelIndex_create return  QModelIndexH;    
pragma Import(C,QModelIndex_create,"QModelIndex_create");

procedure QModelIndex_destroy(handle: not null  QModelIndexH);   
pragma Import(C,QModelIndex_destroy,"QModelIndex_destroy");

function QModelIndex_create2(other: QModelIndexH) return  QModelIndexH;
pragma Import(C,QModelIndex_create2,"QModelIndex_create2");

function QModelIndex_row(handle: not null  QModelIndexH) return  Integer;   
pragma Import(C,QModelIndex_row,"QModelIndex_row");

function QModelIndex_column(handle: not null  QModelIndexH) return  Integer;   
pragma Import(C,QModelIndex_column,"QModelIndex_column");

function QModelIndex_internalvoid_Star(handle: not null  QModelIndexH) return  void_Star;   
pragma Import(C,QModelIndex_internalvoid_Star,"QModelIndex_internalvoid_Star");

function QModelIndex_internalId(handle: not null  QModelIndexH) return  int64;   
pragma Import(C,QModelIndex_internalId,"QModelIndex_internalId");

function  QModelIndex_parent(handle: not null  QModelIndexH) return QModelIndexH;
pragma Import(C,QModelIndex_parent,"QModelIndex_parent");

function  QModelIndex_sibling(handle: not null  QModelIndexH; row: Integer; column: Integer) return QModelIndexH;
pragma Import(C,QModelIndex_sibling,"QModelIndex_sibling");

function  QModelIndex_child(handle: not null  QModelIndexH; row: Integer; column: Integer) return QModelIndexH;
pragma Import(C,QModelIndex_child,"QModelIndex_child");

function  QModelIndex_data(handle: not null  QModelIndexH; role: QtItemDataRole := QtDisplayRole) return QVariantH;
pragma Import(C,QModelIndex_data,"QModelIndex_data");

function QModelIndex_flags(handle: not null  QModelIndexH) return  QtItemFlags;   
pragma Import(C,QModelIndex_flags,"QModelIndex_flags");

function QModelIndex_model(handle: not null  QModelIndexH) return  QAbstractItemModelH;   
pragma Import(C,QModelIndex_model,"QModelIndex_model");

function QModelIndex_rowCount(handle: not null  QModelIndexH) return integer;   
pragma Import(C,QModelIndex_rowCount,"QModelIndex_rowCount");

function QModelIndex_columnCount(handle: not null  QModelIndexH) return integer;   
pragma Import(C,QModelIndex_columnCount,"QModelIndex_columnCount");

function QModelIndex_isValid(handle: not null  QModelIndexH) return  Boolean;   
pragma Import(C,QModelIndex_isValid,"QModelIndex_isValid");

function QPersistentModelIndex_create return  QPersistentModelIndexH;    
pragma Import(C,QPersistentModelIndex_create,"QPersistentModelIndex_create");

procedure QPersistentModelIndex_destroy(handle: not null  QPersistentModelIndexH);   
pragma Import(C,QPersistentModelIndex_destroy,"QPersistentModelIndex_destroy");

function QPersistentModelIndex_create2(index: QModelIndexH) return  QPersistentModelIndexH;
pragma Import(C,QPersistentModelIndex_create2,"QPersistentModelIndex_create2");

function QPersistentModelIndex_create3(other: QPersistentModelIndexH) return  QPersistentModelIndexH;
pragma Import(C,QPersistentModelIndex_create3,"QPersistentModelIndex_create3");

function QPersistentModelIndex_row(handle: not null  QPersistentModelIndexH) return  Integer;   
pragma Import(C,QPersistentModelIndex_row,"QPersistentModelIndex_row");

function QPersistentModelIndex_column(handle: not null  QPersistentModelIndexH) return  Integer;   
pragma Import(C,QPersistentModelIndex_column,"QPersistentModelIndex_column");

function QPersistentModelIndex_internalvoid_Star(handle: not null  QPersistentModelIndexH) return  void_Star;   
pragma Import(C,QPersistentModelIndex_internalvoid_Star,"QPersistentModelIndex_internalvoid_Star");

function QPersistentModelIndex_internalId(handle: not null  QPersistentModelIndexH) return  int64;   
pragma Import(C,QPersistentModelIndex_internalId,"QPersistentModelIndex_internalId");

function  QPersistentModelIndex_parent(handle: not null  QPersistentModelIndexH) return QModelIndexH;
pragma Import(C,QPersistentModelIndex_parent,"QPersistentModelIndex_parent");

function  QPersistentModelIndex_sibling(handle: not null  QPersistentModelIndexH; row: Integer; column: Integer) return QModelIndexH;
pragma Import(C,QPersistentModelIndex_sibling,"QPersistentModelIndex_sibling");

function  QPersistentModelIndex_child(handle: not null  QPersistentModelIndexH; row: Integer; column: Integer) return QModelIndexH;
pragma Import(C,QPersistentModelIndex_child,"QPersistentModelIndex_child");

function  QPersistentModelIndex_data(handle: not null  QPersistentModelIndexH; role: QtItemDataRole := QtDisplayRole) return QVariantH;
pragma Import(C,QPersistentModelIndex_data,"QPersistentModelIndex_data");

function QPersistentModelIndex_flags(handle: not null  QPersistentModelIndexH) return  QtItemFlags;   
pragma Import(C,QPersistentModelIndex_flags,"QPersistentModelIndex_flags");

function QPersistentModelIndex_model(handle: not null  QPersistentModelIndexH) return  QAbstractItemModelH;   
pragma Import(C,QPersistentModelIndex_model,"QPersistentModelIndex_model");

function QPersistentModelIndex_isValid(handle: not null  QPersistentModelIndexH) return  Boolean;   
pragma Import(C,QPersistentModelIndex_isValid,"QPersistentModelIndex_isValid");

function QAbstractItemModel_hasIndex(handle: not null  QAbstractItemModelH; row: Integer; column: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_hasIndex,"QAbstractItemModel_hasIndex");

function  QAbstractItemModel_index(handle: not null  QAbstractItemModelH; row: Integer; column: Integer; parent: QModelIndexH := null) return QModelIndexH;
pragma Import(C,QAbstractItemModel_index,"QAbstractItemModel_index");

function  QAbstractItemModel_parent(handle: not null  QAbstractItemModelH; child: QModelIndexH) return QModelIndexH;
pragma Import(C,QAbstractItemModel_parent,"QAbstractItemModel_parent");

function  QAbstractItemModel_sibling(handle: not null  QAbstractItemModelH; row: Integer; column: Integer; idx: QModelIndexH) return QModelIndexH;
pragma Import(C,QAbstractItemModel_sibling,"QAbstractItemModel_sibling");

function QAbstractItemModel_rowCount(handle: not null  QAbstractItemModelH; parent: QModelIndexH := null) return Integer;   
pragma Import(C,QAbstractItemModel_rowCount,"QAbstractItemModel_rowCount");

function QAbstractItemModel_columnCount(handle: not null  QAbstractItemModelH; parent: QModelIndexH := null) return Integer;   
pragma Import(C,QAbstractItemModel_columnCount,"QAbstractItemModel_columnCount");

function QAbstractItemModel_hasChildren(handle: not null  QAbstractItemModelH; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_hasChildren,"QAbstractItemModel_hasChildren");

function  QAbstractItemModel_data(handle: not null  QAbstractItemModelH; index: QModelIndexH; role: QtItemDataRole := QtDisplayRole) return QVariantH;
pragma Import(C,QAbstractItemModel_data,"QAbstractItemModel_data");

function QAbstractItemModel_setData(handle: not null  QAbstractItemModelH; index: QModelIndexH; value: QVariantH; role: QtItemDataRole := QtEditRole) return Boolean;   
pragma Import(C,QAbstractItemModel_setData,"QAbstractItemModel_setData");

function  QAbstractItemModel_headerData(handle: not null  QAbstractItemModelH; section: Integer; orientation: QtOrientation; role: QtItemDataRole := QtDisplayRole) return QVariantH;
pragma Import(C,QAbstractItemModel_headerData,"QAbstractItemModel_headerData");

function QAbstractItemModel_setHeaderData(handle: not null  QAbstractItemModelH; section: Integer; orientation: QtOrientation; value: QVariantH; role: QtItemDataRole := QtEditRole) return Boolean;   
pragma Import(C,QAbstractItemModel_setHeaderData,"QAbstractItemModel_setHeaderData");

function  QAbstractItemModel_mimeTypes(handle: not null  QAbstractItemModelH) return QStringListH;
pragma Import(C,QAbstractItemModel_mimeTypes,"QAbstractItemModel_mimeTypes");

function QAbstractItemModel_dropMimeData(handle: not null  QAbstractItemModelH; data: QMimeDataH; action: QtDropAction; row: Integer; column: Integer; parent: QModelIndexH) return  Boolean;   
pragma Import(C,QAbstractItemModel_dropMimeData,"QAbstractItemModel_dropMimeData");

function QAbstractItemModel_supportedDropActions(handle: not null  QAbstractItemModelH) return  QtDropActions;   
pragma Import(C,QAbstractItemModel_supportedDropActions,"QAbstractItemModel_supportedDropActions");

function QAbstractItemModel_supportedDragActions(handle: not null  QAbstractItemModelH) return  QtDropActions;   
pragma Import(C,QAbstractItemModel_supportedDragActions,"QAbstractItemModel_supportedDragActions");

function QAbstractItemModel_insertRows(handle: not null  QAbstractItemModelH; row: Integer; count: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_insertRows,"QAbstractItemModel_insertRows");

function QAbstractItemModel_insertColumns(handle: not null  QAbstractItemModelH; column: Integer; count: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_insertColumns,"QAbstractItemModel_insertColumns");

function QAbstractItemModel_removeRows(handle: not null  QAbstractItemModelH; row: Integer; count: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_removeRows,"QAbstractItemModel_removeRows");

function QAbstractItemModel_removeColumns(handle: not null  QAbstractItemModelH; column: Integer; count: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_removeColumns,"QAbstractItemModel_removeColumns");

function QAbstractItemModel_insertRow(handle: not null  QAbstractItemModelH; row: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_insertRow,"QAbstractItemModel_insertRow");

function QAbstractItemModel_insertColumn(handle: not null  QAbstractItemModelH; column: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_insertColumn,"QAbstractItemModel_insertColumn");

function QAbstractItemModel_removeRow(handle: not null  QAbstractItemModelH; row: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_removeRow,"QAbstractItemModel_removeRow");

function QAbstractItemModel_removeColumn(handle: not null  QAbstractItemModelH; column: Integer; parent: QModelIndexH := null) return Boolean;   
pragma Import(C,QAbstractItemModel_removeColumn,"QAbstractItemModel_removeColumn");

procedure QAbstractItemModel_fetchMore(handle: not null  QAbstractItemModelH; parent: QModelIndexH);   
pragma Import(C,QAbstractItemModel_fetchMore,"QAbstractItemModel_fetchMore");

function QAbstractItemModel_canFetchMore(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  Boolean;   
pragma Import(C,QAbstractItemModel_canFetchMore,"QAbstractItemModel_canFetchMore");

function QAbstractItemModel_flags(handle: not null  QAbstractItemModelH; index: QModelIndexH) return  QtItemFlags;   
pragma Import(C,QAbstractItemModel_flags,"QAbstractItemModel_flags");

procedure QAbstractItemModel_sort(handle: not null  QAbstractItemModelH; column: Integer; order: QtSortOrder := QtAscendingOrder);   
pragma Import(C,QAbstractItemModel_sort,"QAbstractItemModel_sort");

function  QAbstractItemModel_buddy(handle: not null  QAbstractItemModelH; index: QModelIndexH) return QModelIndexH;
pragma Import(C,QAbstractItemModel_buddy,"QAbstractItemModel_buddy");

function  QAbstractItemModel_span(handle: not null  QAbstractItemModelH; index: QModelIndexH) return QSizeH;
pragma Import(C,QAbstractItemModel_span,"QAbstractItemModel_span");

function QAbstractItemModel_submit(handle: not null  QAbstractItemModelH) return  Boolean;   
pragma Import(C,QAbstractItemModel_submit,"QAbstractItemModel_submit");

procedure QAbstractItemModel_revert(handle: not null  QAbstractItemModelH);   
pragma Import(C,QAbstractItemModel_revert,"QAbstractItemModel_revert");

function  QAbstractTableModel_index(handle: not null  QAbstractTableModelH; row: Integer; column: Integer; parent: QModelIndexH := null) return QModelIndexH;
pragma Import(C,QAbstractTableModel_index,"QAbstractTableModel_index");

function QAbstractTableModel_dropMimeData(handle: not null  QAbstractTableModelH; data: QMimeDataH; action: QtDropAction; row: Integer; column: Integer; parent: QModelIndexH) return  Boolean;   
pragma Import(C,QAbstractTableModel_dropMimeData,"QAbstractTableModel_dropMimeData");

function  QAbstractListModel_index(handle: not null  QAbstractListModelH; row: Integer; column: Integer := 0; parent: QModelIndexH := null) return QModelIndexH;
pragma Import(C,QAbstractListModel_index,"QAbstractListModel_index");

function QAbstractListModel_dropMimeData(handle: not null  QAbstractListModelH; data: QMimeDataH; action: QtDropAction; row: Integer; column: Integer; parent: QModelIndexH) return  Boolean;   
pragma Import(C,QAbstractListModel_dropMimeData,"QAbstractListModel_dropMimeData");

type QAbstractItemModel_dataChanged_Event is access procedure (topLeft: QModelIndexH; bottomRight: QModelIndexH);
type QAbstractItemModel_headerDataChanged_Event is access procedure (orientation: QtOrientation; first: Integer; last: Integer);
type QAbstractItemModel_layoutChanged_Event is access procedure;
type QAbstractItemModel_layoutAboutToBeChanged_Event is access procedure;
type QAbstractItemModel_rowsAboutToBeInserted_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_rowsInserted_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_rowsAboutToBeRemoved_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_rowsRemoved_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_columnsAboutToBeInserted_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_columnsInserted_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_columnsAboutToBeRemoved_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_columnsRemoved_Event is access procedure (parent: QModelIndexH; first: Integer; last: Integer);
type QAbstractItemModel_modelAboutToBeReset_Event is access procedure;
type QAbstractItemModel_modelReset_Event is access procedure;

function QModelIndex_create(other: QModelIndexH) return  QModelIndexH; 
function QPersistentModelIndex_create(index: QModelIndexH) return  QPersistentModelIndexH;
function QPersistentModelIndex_create(other: QPersistentModelIndexH) return  QPersistentModelIndexH;

end Qt.QModel;
