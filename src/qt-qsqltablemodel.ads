--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015                 บ
-- บ Copyright (C) 2012,2014 ,2015                                     บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QSqlDatabase;       use Qt.QSqlDatabase;
with Qt.QAbstractItemModel; use Qt.QAbstractItemModel;
package Qt.QSqlTableModel is

type EditStrategy is (OnFieldChange, OnRowChange, OnManualSubmit);
pragma Convention(C,EditStrategy);

function QSqlTableModel_create(parent: QObjectH := null;db:QSqlDatabaseH := QSqlDatabase_create) return  QSqlTableModelH;
pragma Import(C,QSqlTableModel_create ,"QSqlTableModel_create");

procedure del_QSqlTableModel(tableModel: QSqlTableModelH);
pragma Import(C,del_QSqlTableModel ,"del_QSqlTableModel");

procedure QSqlTableModel_setTable(handle: not null  QSqlTableModelH; tableName: QStringH);
pragma Import(C,QSqlTableModel_setTable ,"QSqlTableModel_setTable");

function QSqlTableModel_tableName(handle: not null  QSqlTableModelH) return QStringH;
pragma Import(C,QSqlTableModel_tableName ,"QSqlTableModel_tableName");

function QSqlTableModel_select(handle: not null  QSqlTableModelH) return boolean;
pragma Import(C,QSqlTableModel_select ,"QSqlTableModel_select");

function QSqlTableModel_data(handle: not null  QSqlTableModelH;indx: QModelIndexH;role: integer :=  QtDisplayRole) return  QVariantH;
pragma Import(C,QSqlTableModel_data ,"QSqlTableModel_data");

function  QSqlTableModel_setData(handle: not null  QSqlTableModelH;indx: QModelIndexH;value:QVariantH; role: integer := QtEditRole) return boolean;
pragma Import(C,QSqlTableModel_setData ,"QSqlTableModel_setData");

function QSqlTableModel_headerData(handle: not null  QSqlTableModelH;section: integer; orientation: integer; role: integer :=  QtDisplayRole) return QVariantH;
pragma Import(C,QSqlTableModel_headerData ,"QSqlTableModel_headerData");

function  QSqlTableModel_isDirty(handle: not null  QSqlTableModelH; indx: QModelIndexH) return boolean;
pragma Import(C, QSqlTableModel_isDirty ,"QSqlTableModel_isDirty");

function  QSqlTableModel_isDirty2(handle: not null  QSqlTableModelH) return boolean;
pragma Import(C, QSqlTableModel_isDirty2 ,"QSqlTableModel_isDirty2");

procedure QSqlTableModel_clear(handle: not null  QSqlTableModelH);
pragma Import(C,QSqlTableModel_clear ,"QSqlTableModel_clear");

procedure QSqlTableModel_setEditStrategy(handle: not null  QSqlTableModelH; strategy: EditStrategy);
pragma Import(C,QSqlTableModel_setEditStrategy ,"QSqlTableModel_setEditStrategy");

function QSqlTableModel_editStrategy(handle: not null  QSqlTableModelH) return EditStrategy;
pragma Import(C, QSqlTableModel_editStrategy ,"QSqlTableModel_editStrategy");

function QSqlTableModel_primaryKey(handle: not null  QSqlTableModelH) return QSqlIndexH;
pragma Import(C,QSqlTableModel_primaryKey ,"QSqlTableModel_primaryKey");

function QSqlTableModel_database(handle: not null  QSqlTableModelH) return QSqlDatabaseH;
pragma Import(C,QSqlTableModel_database ,"QSqlTableModel_database");

function QSqlTableModel_fieldIndex(handle: not null  QSqlTableModelH; fieldName: QStringH) return integer;
pragma Import(C, QSqlTableModel_fieldIndex ,"QSqlTableModel_fieldIndex");

procedure QSqlTableModel_sort(handle: not null  QSqlTableModelH; column:integer; order: integer);
pragma Import(C, QSqlTableModel_sort ,"QSqlTableModel_sort");

procedure QSqlTableModel_setSort(handle: not null  QSqlTableModelH; column:integer; order: integer);
pragma Import(C,QSqlTableModel_setSort ,"QSqlTableModel_setSort");

function QSqlTableModel_filter(handle: not null  QSqlTableModelH) return QStringH;
pragma Import(C,QSqlTableModel_filter ,"QSqlTableModel_filter");

procedure QSqlTableModel_setFilter(handle: not null  QSqlTableModelH; filter: QStringH);
pragma Import(C,QSqlTableModel_setFilter ,"QSqlTableModel_setFilter");

function QSqlTableModel_rowCount(handle: not null  QSqlTableModelH;parent: QModelIndexH := QModelIndex_create) return integer;
pragma Import(C,QSqlTableModel_rowCount ,"QSqlTableModel_rowCount");

function QSqlTableModel_rowCount1(handle: not null  QSqlTableModelH) return integer;
pragma Import(C,QSqlTableModel_rowCount1 ,"QSqlTableModel_rowCount1");

function  QSqlTableModel_removeColumns(handle: not null  QSqlTableModelH; column:integer;count: integer;parent: QModelIndexH := QModelIndex_create) return boolean;
pragma Import(C,QSqlTableModel_removeColumns ,"QSqlTableModel_removeColumns");

function  QSqlTableModel_removeRows(handle: not null  QSqlTableModelH; row:integer;count: integer;parent: QModelIndexH := QModelIndex_create) return boolean;
pragma Import(C,QSqlTableModel_removeRows ,"QSqlTableModel_removeRows");

function  QSqlTableModel_removeRow(handle: not null  QSqlTableModelH; row:integer) return boolean;
pragma Import(C,QSqlTableModel_removeRow ,"QSqlTableModel_removeRow");

function  QSqlTableModel_insertRow(handle: not null  QSqlTableModelH; row:integer) return boolean;
pragma Import(C,QSqlTableModel_insertRow ,"QSqlTableModel_insertRow");

function  QSqlTableModel_insertRows(handle: not null  QSqlTableModelH; row:integer;count: integer;parent: QModelIndexH := QModelIndex_create) return boolean;
pragma Import(C,QSqlTableModel_insertRows ,"QSqlTableModel_insertRows");

function  QSqlTableModel_setRecord(handle: not null  QSqlTableModelH; row:integer;rec: QSqlRecordH) return boolean;
pragma Import(C,QSqlTableModel_setRecord ,"QSqlTableModel_setRecord");

procedure  QSqlTableModel_revertRow(handle: not null  QSqlTableModelH; row:integer);
pragma Import(C,QSqlTableModel_revertRow ,"QSqlTableModel_revertRow");

function  QSqlTableModel_submit(handle: not null  QSqlTableModelH) return boolean;
pragma Import(C,QSqlTableModel_submit ,"QSqlTableModel_submit");

procedure  QSqlTableModel_revert(handle: not null  QSqlTableModelH);
pragma Import(C,QSqlTableModel_revert ,"QSqlTableModel_revert");

function  QSqlTableModel_submitAll(handle: not null  QSqlTableModelH) return boolean;
pragma Import(C,QSqlTableModel_submitAll ,"QSqlTableModel_submitAll");

procedure  QSqlTableModel_revertAll(handle: not null  QSqlTableModelH);
pragma Import(C,QSqlTableModel_revertAll ,"QSqlTableModel_revertAll");

function  QSqlTableModel_record(handle: not null  QSqlTableModelH; row: integer) return QSqlRecordH;
pragma Import(C,QSqlTableModel_record ,"QSqlTableModel_record");

function  QSqlTableModel_record2(handle: not null  QSqlTableModelH) return QSqlRecordH;
pragma Import(C,QSqlTableModel_record2 ,"QSqlTableModel_record2");

 function  QSqlTableModel_updateRowInTable(handle:not null QSqlTableModelH;row:integer;values:QSqlRecordH) return boolean;
 pragma Import(C,QSqlTableModel_updateRowInTable, "QSqlTableModel_updateRowInTable");
 
 function  QSqlTableModel_insertRowIntoTable(handle:not null QSqlTableModelH; values:QSqlRecordH) return boolean;
 pragma Import(C,QSqlTableModel_insertRowIntoTable, "QSqlTableModel_insertRowIntoTable");
 
 function  QSqlTableModel_deleteRowFromTable(handle:not null QSqlTableModelH;row:integer) return boolean;
 pragma Import(C,QSqlTableModel_deleteRowFromTable, "QSqlTableModel_deleteRowFromTable");
 
 function  QSqlTableModel_orderByClause(handle:not null QSqlTableModelH) return QStringH;
 pragma Import(C,QSqlTableModel_orderByClause, "QSqlTableModel_orderByClause");
 
 function  QSqlTableModel_selectStatement(handle:not null QSqlTableModelH) return QStringH;
 pragma Import(C,QSqlTableModel_selectStatement, "QSqlTableModel_selectStatement");
 
 procedure QSqlTableModel_setPrimaryKey(handle:not null QSqlTableModelH;key:QSqlIndexH);
 pragma Import(C,QSqlTableModel_setPrimaryKey, "QSqlTableModel_setPrimaryKey");
 
 procedure QSqlTableModel_setQuery(handle:not null QSqlTableModelH; query: QSqlQueryH);
 pragma Import(C,QSqlTableModel_setQuery, "QSqlTableModel_setQuery");
 
 function  QSqlTableModel_indexInQuery(handle:not null QSqlTableModelH;item: QModelIndexH) return QModelIndexH;
 pragma Import(C,QSqlTableModel_indexInQuery, "QSqlTableModel_indexInQuery");
 
 function  QSqlTableModel_primaryValues(handle:not null QSqlTableModelH;row:integer) return QSqlRecordH;
 pragma Import(C,QSqlTableModel_primaryValues, "QSqlTableModel_primaryValues");

 function  QSqlTableModel_insertRecord(handle:not null QSqlTableModelH;row:integer; rec:QSqlRecordH) return boolean;
 pragma Import(C,QSqlTableModel_insertRecord, "QSqlTableModel_insertRecord");
 
 type  IntProc is access procedure(row:integer);
 type  SqlRecordProc is access procedure(sqlrecord:QSqlRecordH);
 type  IntSqlRecordProc is access procedure(row:integer;sqlrecord:QSqlRecordH);

 procedure QSqlTableModel_signal_slot_primeInsert(handle:QSqlTableModelH;  hook:IntSqlRecordProc);
 pragma Import(C,QSqlTableModel_signal_slot_primeInsert, "QSqlTableModel_signal_slot_primeInsert");
 
 procedure QSqlTableModel_signal_slot_beforeUpdate(handle:QSqlTableModelH; hook:IntSqlRecordProc);
 pragma Import(C,QSqlTableModel_signal_slot_beforeUpdate, "QSqlTableModel_signal_slot_beforeUpdate");
 
 procedure QSqlTableModel_signal_slot_beforeInsert(handle:QSqlTableModelH; hook:SqlRecordProc);      
 pragma Import(C,QSqlTableModel_signal_slot_beforeInsert, "QSqlTableModel_signal_slot_beforeInsert");
 
 procedure QSqlTableModel_signal_slot_beforeDelete(handle:QSqlTableModelH; hook:IntProc);
 pragma Import(C,QSqlTableModel_signal_slot_beforeDelete, "QSqlTableModel_signal_slot_beforeDelete");
 
------------------------------------------------------------------------
function QSqlTableModel_rowCount(handle: not null  QSqlTableModelH) return integer;
function  QSqlTableModel_record(handle: not null  QSqlTableModelH) return QSqlRecordH;
function  QSqlTableModel_isDirty(handle: not null  QSqlTableModelH) return boolean;

end  Qt.QSqlTableModel;
