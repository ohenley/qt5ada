--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015,2018                 บ
-- บ Copyright (C) 2012,2015,2018                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QAbstractItemModel  is

 type  QAbstractItemModel_CheckIndexOption  is new integer;
 NoOption        : constant QAbstractItemModel_CheckIndexOption := 0;
 IndexIsValid    : constant QAbstractItemModel_CheckIndexOption := 1;
 DoNotUseParent  : constant QAbstractItemModel_CheckIndexOption := 2;
 ParentIsInvalid : constant QAbstractItemModel_CheckIndexOption := 4;

 type QAbstractItemModel_dataChangedEvent is access procedure(p1,p2: QModelIndexH);
 pragma Convention(C,QAbstractItemModel_dataChangedEvent );

 type QAbstractItemModel_headerDataChangedEvent is access procedure(p1,p2,p3 : integer);
 pragma Convention(C,QAbstractItemModel_headerDataChangedEvent );

 type QAbstractItemModel_layoutChangedEvent is access procedure;
 pragma Convention(C,QAbstractItemModel_layoutChangedEvent );

 type QAbstractItemModel_layoutAboutToBeChangedEvent is access procedure;
 pragma Convention(C,QAbstractItemModel_layoutAboutToBeChangedEvent );

 type QAbstractItemModel_rowsAboutToBeInsertedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_rowsAboutToBeInsertedEvent );

 type QAbstractItemModel_rowsInsertedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_rowsInsertedEvent );

 type QAbstractItemModel_rowsAboutToBeRemovedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_rowsAboutToBeRemovedEvent );

 type QAbstractItemModel_rowsRemovedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_rowsRemovedEvent );

 type QAbstractItemModel_columnsAboutToBeInsertedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_columnsAboutToBeInsertedEvent );

 type QAbstractItemModel_columnsInsertedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_columnsInsertedEvent );

 type QAbstractItemModel_columnsAboutToBeRemovedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_columnsAboutToBeRemovedEvent );

 type QAbstractItemModel_columnsRemovedEvent is access procedure(p1:QModelIndexH;p2,p3:integer);
 pragma Convention(C,QAbstractItemModel_columnsRemovedEvent );

 type QAbstractItemModel_modelAboutToBeResetEvent is access procedure;
 pragma Convention(C,QAbstractItemModel_modelAboutToBeResetEvent );

 type QAbstractItemModel_modelResetEvent is access procedure;
 pragma Convention(C,QAbstractItemModel_modelResetEvent );


 function  QModelIndex_create return  QModelIndexH;
 pragma Import(C,QModelIndex_create,"QModelIndex_create");

 procedure QModelIndex_destroy(handle: not null  QModelIndexH);
 pragma Import(C,QModelIndex_destroy,"QModelIndex_destroy");

 function  QModelIndex_create2(handle: not null  QModelIndexH) return  QModelIndexH;
 pragma Import(C,QModelIndex_create2,"QModelIndex_create2");

 function  QModelIndex_row(handle: not null  QModelIndexH) return  integer;
 pragma Import(C,QModelIndex_row,"QModelIndex_row");

 function  QModelIndex_column(handle: not null  QModelIndexH) return  integer;
 pragma Import(C,QModelIndex_column,"QModelIndex_column");

 function  QModelIndex_internalPointer(handle: not null  QModelIndexH) return void_Star;
 pragma Import(C,QModelIndex_internalPointer,"QModelIndex_internalPointer");

 function  QModelIndex_internalId(handle: not null  QModelIndexH) return  qint64;
 pragma Import(C,QModelIndex_internalId,"QModelIndex_internalId");

 function  QModelIndex_parent(handle: not null  QModelIndexH) return  QModelIndexH;
 pragma Import(C,QModelIndex_parent,"QModelIndex_parent");

 function  QModelIndex_sibling(handle: not null  QModelIndexH; row:integer; column:integer) return  QModelIndexH;
 pragma Import(C,QModelIndex_sibling,"QModelIndex_sibling");

 function  QModelIndex_child(handle: not null  QModelIndexH; row:integer; column:integer) return  QModelIndexH;
 pragma Import(C,QModelIndex_child,"QModelIndex_child");

 function  QModelIndex_data(handle: not null  QModelIndexH; role: QtItemDataRole) return  QVariantH;
 pragma Import(C,QModelIndex_data,"QModelIndex_data");

 function  QModelIndex_flags(handle: not null  QModelIndexH) return  quint;
 pragma Import(C,QModelIndex_flags,"QModelIndex_flags");

 function  QModelIndex_model(handle: not null  QModelIndexH) return  QAbstractItemModelH;
 pragma Import(C,QModelIndex_model,"QModelIndex_model");

 function QModelIndex_rowCount(handle: not null  QModelIndexH) return integer;   
 pragma Import(C,QModelIndex_rowCount,"QModelIndex_rowCount");

 function QModelIndex_columnCount(handle: not null  QModelIndexH) return integer;  
 pragma Import(C,QModelIndex_columnCount,"QModelIndex_columnCount");

 function  QModelIndex_isValid(handle: not null  QModelIndexH) return  boolean;
 pragma Import(C,QModelIndex_isValid,"QModelIndex_isValid");

 function  QPersistentModelIndex_create return  QPersistentModelIndexH;
 pragma Import(C,QPersistentModelIndex_create,"QPersistentModelIndex_create");

 procedure QPersistentModelIndex_destroy(handle: not null  QPersistentModelIndexH);
 pragma Import(C,QPersistentModelIndex_destroy,"QPersistentModelIndex_destroy");

 function  QPersistentModelIndex_create2(parent: QModelIndexH) return  QPersistentModelIndexH;
 pragma Import(C,QPersistentModelIndex_create2,"QPersistentModelIndex_create2");

 function  QPersistentModelIndex_create3( parent: QPersistentModelIndexH) return  QPersistentModelIndexH;
 pragma Import(C,QPersistentModelIndex_create3,"QPersistentModelIndex_create3");

 function  QPersistentModelIndex_row(handle: not null  QPersistentModelIndexH) return  integer;
 pragma Import(C,QPersistentModelIndex_row,"QPersistentModelIndex_row");

 function  QPersistentModelIndex_column(handle: not null  QPersistentModelIndexH) return  integer;
 pragma Import(C,QPersistentModelIndex_column,"QPersistentModelIndex_column");

 function  QPersistentModelIndex_internalPointer(handle: not null  QPersistentModelIndexH) return void_Star;
 pragma Import(C,QPersistentModelIndex_internalPointer,"QPersistentModelIndex_internalPointer");

 function  QPersistentModelIndex_internalId(handle: not null  QPersistentModelIndexH) return  qint64;
 pragma Import(C,QPersistentModelIndex_internalId,"QPersistentModelIndex_internalId");

 function  QPersistentModelIndex_parent(handle: not null  QPersistentModelIndexH) return  QModelIndexH;
 pragma Import(C,QPersistentModelIndex_parent,"QPersistentModelIndex_parent");

 function  QPersistentModelIndex_sibling(handle: not null  QPersistentModelIndexH; row:integer; column:integer) return  QModelIndexH;
 pragma Import(C,QPersistentModelIndex_sibling,"QPersistentModelIndex_sibling");

 function  QPersistentModelIndex_child(handle: not null  QPersistentModelIndexH; row:integer; column:integer) return  QModelIndexH;
 pragma Import(C,QPersistentModelIndex_child,"QPersistentModelIndex_child");

 function  QPersistentModelIndex_data(handle: not null  QPersistentModelIndexH; role: QtItemDataRole) return  QVariantH;
 pragma Import(C,QPersistentModelIndex_data,"QPersistentModelIndex_data");

 function  QPersistentModelIndex_flags(handle: not null  QPersistentModelIndexH) return quint;
 pragma Import(C,QPersistentModelIndex_flags,"QPersistentModelIndex_flags");

 function  QPersistentModelIndex_model(handle: not null  QPersistentModelIndexH) return  QAbstractItemModelH;
 pragma Import(C,QPersistentModelIndex_model,"QPersistentModelIndex_model");

 function  QPersistentModelIndex_isValid(handle: not null  QPersistentModelIndexH) return  boolean;
 pragma Import(C,QPersistentModelIndex_isValid,"QPersistentModelIndex_isValid");

 function  QAbstractItemModel_hasIndex(handle: not null  QAbstractItemModelH; row:integer; column:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_hasIndex,"QAbstractItemModel_hasIndex");

 function  QAbstractItemModel_index(handle: not null  QAbstractItemModelH; row:integer; column:integer; parent: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QAbstractItemModel_index,"QAbstractItemModel_index");

 function  QAbstractItemModel_index2(handle: not null  QAbstractItemModelH; row:integer; column:integer) return  QModelIndexH;
 pragma Import(C,QAbstractItemModel_index2,"QAbstractItemModel_index2");

 function  QAbstractItemModel_parent(handle: not null  QAbstractItemModelH; child: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QAbstractItemModel_parent,"QAbstractItemModel_parent");

 function  QAbstractItemModel_sibling(handle: not null  QAbstractItemModelH; row:integer; column:integer;indx: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QAbstractItemModel_sibling,"QAbstractItemModel_sibling");

 function  QAbstractItemModel_rowCount(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  integer;
 pragma Import(C,QAbstractItemModel_rowCount,"QAbstractItemModel_rowCount");

 function  QAbstractItemModel_columnCount(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  integer;
 pragma Import(C,QAbstractItemModel_columnCount,"QAbstractItemModel_columnCount");

 function  QAbstractItemModel_hasChildren(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_hasChildren,"QAbstractItemModel_hasChildren");

 function  QAbstractItemModel_data(handle: not null  QAbstractItemModelH; index: QModelIndexH; role: QtItemDataRole) return  QVariantH;
 pragma Import(C,QAbstractItemModel_data,"QAbstractItemModel_data");

 function  QAbstractItemModel_setData(handle: not null  QAbstractItemModelH; indx: QModelIndexH;value: QVariantH; role: QtItemDataRole) return  boolean;
 pragma Import(C,QAbstractItemModel_setData,"QAbstractItemModel_setData");

 function  QAbstractItemModel_headerData(handle: not null  QAbstractItemModelH; section: integer; orientation: QtOrientation;role: QtItemDataRole ) return  QVariantH;
 pragma Import(C,QAbstractItemModel_headerData,"QAbstractItemModel_headerData");

 function  QAbstractItemModel_setHeaderData(handle: not null  QAbstractItemModelH; section: integer; orientation: QtOrientation; value: QVariantH; role: QtItemDataRole := QtEditRole) return  boolean;
 pragma Import(C,QAbstractItemModel_setHeaderData,"QAbstractItemModel_setHeaderData");

 function  QAbstractItemModel_mimeTypes(handle: not null  QAbstractItemModelH) return  QStringListH;
 pragma Import(C,QAbstractItemModel_mimeTypes,"QAbstractItemModel_mimeTypes");

 function  QAbstractItemModel_dropMimeData(handle: not null  QAbstractItemModelH;data: QMimeDataH; action: QtDropAction; row:integer; column:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_dropMimeData,"QAbstractItemModel_dropMimeData");

 function  QAbstractItemModel_supportedDropActions(handle: not null  QAbstractItemModelH) return quint;
 pragma Import(C,QAbstractItemModel_supportedDropActions,"QAbstractItemModel_supportedDropActions");

 function  QAbstractItemModel_supportedDragActions(handle: not null  QAbstractItemModelH) return quint;
 pragma Import(C,QAbstractItemModel_supportedDragActions,"QAbstractItemModel_supportedDragActions");

 function  QAbstractItemModel_insertRows(handle: not null  QAbstractItemModelH; row:integer; count: integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_insertRows,"QAbstractItemModel_insertRows");

 function  QAbstractItemModel_insertColumns(handle: not null  QAbstractItemModelH; column:integer; count: integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_insertColumns,"QAbstractItemModel_insertColumns");

 function  QAbstractItemModel_removeRows(handle: not null  QAbstractItemModelH; row:integer; count: integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_removeRows,"QAbstractItemModel_removeRows");

 function  QAbstractItemModel_removeColumns(handle: not null  QAbstractItemModelH; column:integer; count: integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_removeColumns,"QAbstractItemModel_removeColumns");

 function  QAbstractItemModel_insertRow(handle: not null  QAbstractItemModelH; row:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_insertRow,"QAbstractItemModel_insertRow");

 function  QAbstractItemModel_insertColumn(handle: not null  QAbstractItemModelH; column:integer; parent: QModelIndexH) return boolean;
 pragma Import(C,QAbstractItemModel_insertColumn,"QAbstractItemModel_insertColumn");

 function  QAbstractItemModel_removeRow(handle: not null  QAbstractItemModelH; row:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_removeRow,"QAbstractItemModel_removeRow");

 function  QAbstractItemModel_removeColumn(handle: not null  QAbstractItemModelH; column:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_removeColumn,"QAbstractItemModel_removeColumn");

 procedure QAbstractItemModel_fetchMore(handle: not null  QAbstractItemModelH; parent: QModelIndexH);
 pragma Import(C,QAbstractItemModel_fetchMore,"QAbstractItemModel_fetchMore");

 function  QAbstractItemModel_canFetchMore(handle: not null  QAbstractItemModelH; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractItemModel_canFetchMore,"QAbstractItemModel_canFetchMore");

 function  QAbstractItemModel_flags(handle: not null  QAbstractItemModelH;indx: QModelIndexH) return quint;
 pragma Import(C,QAbstractItemModel_flags,"QAbstractItemModel_flags");

 procedure QAbstractItemModel_sort(handle: not null  QAbstractItemModelH; column:integer; order: QtSortOrder);
 pragma Import(C,QAbstractItemModel_sort,"QAbstractItemModel_sort");

 function  QAbstractItemModel_buddy(handle: not null  QAbstractItemModelH;indx: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QAbstractItemModel_buddy,"QAbstractItemModel_buddy");

 function  QAbstractItemModel_span(handle: not null  QAbstractItemModelH; indx: QModelIndexH) return  QSizeH;
 pragma Import(C,QAbstractItemModel_span,"QAbstractItemModel_span");

 function  QAbstractItemModel_submit(handle: not null  QAbstractItemModelH) return  boolean;
 pragma Import(C,QAbstractItemModel_submit,"QAbstractItemModel_submit");

 procedure QAbstractItemModel_revert(handle: not null  QAbstractItemModelH);
 pragma Import(C,QAbstractItemModel_revert,"QAbstractItemModel_revert");

 function  QAbstractTableModel_index(handle: not null  QAbstractTableModelH; row:integer; column:integer; parent: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QAbstractTableModel_index,"QAbstractTableModel_index");

 function  QAbstractTableModel_dropMimeData(handle: not null  QAbstractTableModelH;data: QMimeDataH;action: QtDropAction; row:integer; column:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractTableModel_dropMimeData,"QAbstractTableModel_dropMimeData");

 function  QAbstractListModel_index( handle: not null  QAbstractListModelH; row:integer; column:integer; parent: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QAbstractListModel_index,"QAbstractListModel_index");

 function  QAbstractListModel_dropMimeData( handle: not null  QAbstractListModelH;data: QMimeDataH; action: QtDropAction; row:integer; column:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QAbstractListModel_dropMimeData,"QAbstractListModel_dropMimeData");

 function  QTableModel_create(rows,columns :integer; parent : QObjectH) return  QAbstractTableModelH;
 pragma Import(C,QTableModel_create ,"QTableModel_create");

 procedure QTableModel_destroy(handle: not null QAbstractTableModelH);
 pragma Import(C,QTableModel_destroy ,"QTableModel_destroy");

 function  QTableModel_data(handle: not null QAbstractTableModelH; index: QModelIndexH; role: integer) return  QVariantH;
 pragma Import(C,QTableModel_data ,"QTableModel_data");

 function  QTableModel_setData(handle: not null QAbstractTableModelH;index: QModelIndexH;value: QVariantH; role: integer ) return boolean;
 pragma Import(C,QTableModel_setData  ,"QTableModel_setData");

 function  QTableModel_rowCount(handle: not null QAbstractTableModelH; index: QModelIndexH) return integer;
 pragma Import(C,QTableModel_rowCount ,"QTableModel_rowCount");

 function  QTableModel_columnCount(handle: not null QAbstractTableModelH; index: QModelIndexH) return integer;
 pragma Import(C,QTableModel_columnCount ,"QTableModel_columnCount");


procedure QAbstractItemModel_signal_slot_dataChanged(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_dataChangedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_dataChanged, "QAbstractItemModel_signal_slot_dataChanged");

procedure QAbstractItemModel_signal_slot_headerDataChanged(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_headerDataChangedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_headerDataChanged, "QAbstractItemModel_signal_slot_headerDataChanged");

procedure QAbstractItemModel_signal_slot_layoutChanged(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_layoutChangedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_layoutChanged, "QAbstractItemModel_signal_slot_layoutChanged");

procedure QAbstractItemModel_signal_slot_layoutAboutToBeChanged(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_layoutAboutToBeChangedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_layoutAboutToBeChanged, "QAbstractItemModel_signal_slot_layoutAboutToBeChanged");

procedure QAbstractItemModel_signal_slot_rowsAboutToBeInserted(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_rowsAboutToBeInsertedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_rowsAboutToBeInserted, "QAbstractItemModel_signal_slot_rowsAboutToBeInserted");

procedure QAbstractItemModel_signal_slot_rowsInserted(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_rowsInsertedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_rowsInserted, "QAbstractItemModel_signal_slot_rowsInserted");

procedure QAbstractItemModel_signal_slot_rowsAboutToBeRemoved(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_rowsAboutToBeRemovedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_rowsAboutToBeRemoved, "QAbstractItemModel_signal_slot_rowsAboutToBeRemoved");

procedure QAbstractItemModel_signal_slot_rowsRemoved(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_rowsRemovedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_rowsRemoved, "QAbstractItemModel_signal_slot_rowsRemoved");

procedure QAbstractItemModel_signal_slot_columnsAboutToBeInserted(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_columnsAboutToBeInsertedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_columnsAboutToBeInserted, "QAbstractItemModel_signal_slot_columnsAboutToBeInserted");

procedure QAbstractItemModel_signal_slot_columnsInserted(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_columnsInsertedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_columnsInserted, "QAbstractItemModel_signal_slot_columnsInserted");

procedure QAbstractItemModel_signal_slot_columnsAboutToBeRemoved(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_columnsAboutToBeRemovedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_columnsAboutToBeRemoved, "QAbstractItemModel_signal_slot_columnsAboutToBeRemoved");

procedure QAbstractItemModel_signal_slot_columnsRemoved(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_columnsRemovedEvent);
pragma Import(C,QAbstractItemModel_signal_slot_columnsRemoved, "QAbstractItemModel_signal_slot_columnsRemoved");

procedure QAbstractItemModel_signal_slot_modelAboutToBeReset(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_modelAboutToBeResetEvent);
pragma Import(C,QAbstractItemModel_signal_slot_modelAboutToBeReset, "QAbstractItemModel_signal_slot_modelAboutToBeReset");

procedure QAbstractItemModel_signal_slot_modelReset(handle: not null QAbstractItemModelH; hook:QAbstractItemModel_modelResetEvent);
pragma Import(C,QAbstractItemModel_signal_slot_modelReset, "QAbstractItemModel_signal_slot_modelReset");

------------------------------------------------------------------------------------------
 function  QModelIndex_create(handle: not null  QModelIndexH) return  QModelIndexH;
 function  QPersistentModelIndex_create(parent: QModelIndexH) return  QPersistentModelIndexH;
 function  QPersistentModelIndex_create( parent: QPersistentModelIndexH) return  QPersistentModelIndexH;
 function  QAbstractItemModel_index(handle: not null  QAbstractItemModelH; row:integer; column:integer) return  QModelIndexH;

 procedure QAbstractProxyModel_destroy(handle:QAbstractProxyModelH);
 pragma Import(C,QAbstractProxyModel_destroy, "QAbstractProxyModel_destroy");
 
 procedure QAbstractProxyModel_setSourceModel(handle:QAbstractProxyModelH; sourceModel:QAbstractItemModelH);
 pragma Import(C,QAbstractProxyModel_setSourceModel, "QAbstractProxyModel_setSourceModel");
 
 function  QAbstractProxyModel_sourceModel(handle:QAbstractProxyModelH) return QAbstractItemModelH;
 pragma Import(C,QAbstractProxyModel_sourceModel, "QAbstractProxyModel_sourceModel");
 
 function  QAbstractProxyModel_mapToSource(handle:QAbstractProxyModelH; proxyIndex:QModelIndexH) return QModelIndexH;
 pragma Import(C,QAbstractProxyModel_mapToSource, "QAbstractProxyModel_mapToSource");
 
 function  QAbstractProxyModel_mapFromSource(handle:QAbstractProxyModelH; sourceIndex:QModelIndexH) return QModelIndexH;
 pragma Import(C,QAbstractProxyModel_mapFromSource, "QAbstractProxyModel_mapFromSource");
 
 function  QAbstractProxyModel_mapSelectionToSource(handle:QAbstractProxyModelH; selection:QItemSelectionH) return QItemSelectionH;
 pragma Import(C,QAbstractProxyModel_mapSelectionToSource, "QAbstractProxyModel_mapSelectionToSource");
 
 function  QAbstractProxyModel_mapSelectionFromSource(handle:QAbstractProxyModelH; selection:QItemSelectionH) return QItemSelectionH;
 pragma Import(C,QAbstractProxyModel_mapSelectionFromSource, "QAbstractProxyModel_mapSelectionFromSource");
 
 function  QAbstractProxyModel_submit(handle:QAbstractProxyModelH) return boolean;
 pragma Import(C,QAbstractProxyModel_submit, "QAbstractProxyModel_submit");
 
 procedure QAbstractProxyModel_revert(handle:QAbstractProxyModelH);
 pragma Import(C,QAbstractProxyModel_revert, "QAbstractProxyModel_revert");
 
 function  QAbstractProxyModel_data(handle:QAbstractProxyModelH; proxyIndex :QModelIndexH; role : Qt_ItemDataRole := DisplayRole) return QVariantH;
 pragma Import(C,QAbstractProxyModel_data, "QAbstractProxyModel_data");
 
 function  QAbstractProxyModel_headerData(handle:QAbstractProxyModelH;section:integer;  orientation:QtOrientation; role: integer) return QVariantH;
 pragma Import(C,QAbstractProxyModel_headerData, "QAbstractProxyModel_headerData");
 
 function  QAbstractProxyModel_itemData(handle:QAbstractProxyModelH;index:QModelIndexH) return QObjectMapH;
 pragma Import(C,QAbstractProxyModel_itemData, "QAbstractProxyModel_itemData");
 
 function  QAbstractProxyModel_flags(handle:QAbstractProxyModelH;index:QModelIndexH) return integer;
 pragma Import(C,QAbstractProxyModel_flags, "QAbstractProxyModel_flags");
 
 function  QAbstractProxyModel_setData(handle:QAbstractProxyModelH;index:QModelIndexH; value:QVariantH; role: Qt_ItemDataRole := EditRole) return boolean;
 pragma Import(C,QAbstractProxyModel_setData, "QAbstractProxyModel_setData");
 
 function  QAbstractProxyModel_setItemData(handle:QAbstractProxyModelH;index:QModelIndexH; roles:QObjectMapH) return boolean;
 pragma Import(C,QAbstractProxyModel_setItemData, "QAbstractProxyModel_setItemData");
 
 function  QAbstractProxyModel_setHeaderData(handle:QAbstractProxyModelH; section:integer; orientation:QtOrientation; value:QVariantH; role: Qt_ItemDataRole := EditRole) return boolean;
 pragma Import(C,QAbstractProxyModel_setHeaderData, "QAbstractProxyModel_setHeaderData");
 
 function  QAbstractProxyModel_buddy(handle:QAbstractProxyModelH;index:QModelIndexH) return QModelIndexH;
 pragma Import(C,QAbstractProxyModel_buddy, "QAbstractProxyModel_buddy");
 
 function  QAbstractProxyModel_canFetchMore(handle:QAbstractProxyModelH;parent:QModelIndexH) return boolean;
 pragma Import(C,QAbstractProxyModel_canFetchMore, "QAbstractProxyModel_canFetchMore");
 
 procedure QAbstractProxyModel_fetchMore(handle:QAbstractProxyModelH;parent:QModelIndexH);
 pragma Import(C,QAbstractProxyModel_fetchMore, "QAbstractProxyModel_fetchMore");
 
 procedure QAbstractProxyModel_sort(handle:QAbstractProxyModelH;column: integer; order : QtSortOrder := QtAscendingOrder);
 pragma Import(C,QAbstractProxyModel_sort, "QAbstractProxyModel_sort");
 
 function  QAbstractProxyModel_span(handle:QAbstractProxyModelH;index:QModelIndexH) return QSizeH;
 pragma Import(C,QAbstractProxyModel_span, "QAbstractProxyModel_span");
 
 function  QAbstractProxyModel_hasChildren(handle:QAbstractProxyModelH; parent:QModelIndexH := QModelIndex_create) return boolean;
 pragma Import(C,QAbstractProxyModel_hasChildren, "QAbstractProxyModel_hasChildren");
 
 function  QAbstractProxyModel_mimeData(handle:QAbstractProxyModelH;indexes:QModelIndexListH) return QMimeDataH;
 pragma Import(C,QAbstractProxyModel_mimeData, "QAbstractProxyModel_mimeData");
 
 function  QAbstractProxyModel_mimeTypes(handle:QAbstractProxyModelH) return QStringListH;
 pragma Import(C,QAbstractProxyModel_mimeTypes, "QAbstractProxyModel_mimeTypes");
 
 function  QAbstractProxyModel_supportedDropActions(handle:QAbstractProxyModelH) return integer;
 pragma Import(C,QAbstractProxyModel_supportedDropActions, "QAbstractProxyModel_supportedDropActions");
 
 type voidProc is access procedure;
 pragma Convention(C,voidProc);

 procedure QAbstractProxyModel_signal_slot_sourceModelChanged(handle:QAbstractProxyModelH; hook: voidProc);
 pragma Import(C,QAbstractProxyModel_signal_slot_sourceModelChanged, "QAbstractProxyModel_signal_slot_sourceModelChanged");
 
 function  QAbstractItemModel_checkIndex(handle:not null QAbstractItemModelH;index:QModelIndexH;options : QAbstractItemModel_CheckIndexOption :=  NoOption) return boolean;
 pragma Import(C,QAbstractItemModel_checkIndex, "QAbstractItemModel_checkIndex");
 
 function  QModelIndex_siblingAtColumn(handle:not null QModelIndexH;column: int) return QModelIndexH;
 pragma Import(C,QModelIndex_siblingAtColumn, "QModelIndex_siblingAtColumn");
 
 function  QModelIndex_siblingAtRow(handle:not null QModelIndexH;row: int) return QModelIndexH;
 pragma Import(C,QModelIndex_siblingAtRow, "QModelIndex_siblingAtRow");

end  Qt.QAbstractItemModel;
