--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015                 บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QSqlDatabase;       use Qt.QSqlDatabase;
with Qt.QAbstractItemModel; use Qt.QAbstractItemModel;
package Qt.QSqlRelationalTableModel is

type JoinMode is (InnerJoin, LeftJoin); 
pragma convention(C,JoinMode);

function QSqlRelation_create return  QSqlRelationH;
pragma Import(C,QSqlRelation_create ,"QSqlRelation_create");

function QSqlRelation_create1(tableName:QStringH; indexCol: QStringH;displayCol: QStringH) return  QSqlRelationH;
pragma Import(C,QSqlRelation_create1 ,"QSqlRelation_create1");

procedure del_QSqlRelation(p: QSqlRelationH);
pragma Import(C,del_QSqlRelation ,"del_QSqlRelation");

 function  QSqlRelation_tableName(handle:not null QSqlRelationH) return QStringH;
 pragma Import(C,QSqlRelation_tableName, "QSqlRelation_tableName");
 
 function  QSqlRelation_indexColumn(handle:not null QSqlRelationH) return QStringH;
 pragma Import(C,QSqlRelation_indexColumn, "QSqlRelation_indexColumn");
 
 function  QSqlRelation_displayColumn(handle:not null QSqlRelationH) return QStringH;
 pragma Import(C,QSqlRelation_displayColumn, "QSqlRelation_displayColumn");
 
 function  QSqlRelation_isValid(handle:not null QSqlRelationH) return boolean;
 pragma Import(C,QSqlRelation_isValid, "QSqlRelation_isValid");

function QSqlRelationalTableModel_create( parent: QObjectH := null; db:QSqlDatabaseH := QSqlDatabase_create) return  QSqlRelationalTableModelH;
pragma Import(C,QSqlRelationalTableModel_create ,"QSqlRelationalTableModel_create");

procedure del_QSqlRelationalTableModel(tableModel: QSqlRelationalTableModelH);
pragma Import(C,del_QSqlRelationalTableModel ,"del_QSqlRelationalTableModel");

procedure  QSqlRelationalTableModel_setRelation(handle: not null  QSqlRelationalTableModelH; column: integer;relation: QSqlRelationH);
pragma Import(C,QSqlRelationalTableModel_setRelation, "QSqlRelationalTableModel_setRelation");

function  QSqlRelationalTableModel_relation(handle: not null  QSqlRelationalTableModelH; column: integer) return QSqlRelationH;
pragma Import(C,QSqlRelationalTableModel_relation  ,"QSqlRelationalTableModel_relation");

procedure QSqlRelationalTableModel_setTable(handle: not null  QSqlRelationalTableModelH; tableName: QStringH);
pragma Import(C,QSqlRelationalTableModel_setTable ,"QSqlRelationalTableModel_setTable");

function QSqlRelationalTableModel_tableName(handle: not null  QSqlRelationalTableModelH) return QStringH;
pragma Import(C,QSqlRelationalTableModel_tableName ,"QSqlRelationalTableModel_tableName");

function QSqlRelationalTableModel_select(handle: not null  QSqlRelationalTableModelH) return boolean;
pragma Import(C,QSqlRelationalTableModel_select ,"QSqlRelationalTableModel_select");

function QSqlRelationalTableModel_data(handle: not null  QSqlRelationalTableModelH;indx: QModelIndexH := QModelIndex_create;role: integer) return  QVariantH;
pragma Import(C,QSqlRelationalTableModel_data ,"QSqlRelationalTableModel_data");

function  QSqlRelationalTableModel_setData(handle: not null  QSqlRelationalTableModelH;indx: QModelIndexH := QModelIndex_create;value:QVariantH; role: integer) return boolean;
pragma Import(C,QSqlRelationalTableModel_setData ,"QSqlRelationalTableModel_setData");

function QSqlRelationalTableModel_headerData(handle: not null  QSqlRelationalTableModelH;section: integer; orientation: integer; role: integer) return QVariantH;
pragma Import(C,QSqlRelationalTableModel_headerData ,"QSqlRelationalTableModel_headerData");

function  QSqlRelationalTableModel_isDirty(handle: not null  QSqlRelationalTableModelH; indx: QModelIndexH := QModelIndex_create) return boolean;
pragma Import(C, QSqlRelationalTableModel_isDirty ,"QSqlRelationalTableModel_isDirty");

procedure QSqlRelationalTableModel_clear(handle: not null  QSqlRelationalTableModelH);
pragma Import(C,QSqlRelationalTableModel_clear ,"QSqlRelationalTableModel_clear");

function QSqlRelationalTableModel_primaryKey(handle: not null  QSqlRelationalTableModelH) return QSqlIndexH;
pragma Import(C,QSqlRelationalTableModel_primaryKey ,"QSqlRelationalTableModel_primaryKey");

function QSqlRelationalTableModel_database(handle: not null  QSqlRelationalTableModelH) return QSqlDatabaseH;
pragma Import(C,QSqlRelationalTableModel_database ,"QSqlRelationalTableModel_database");

function QSqlRelationalTableModel_fieldIndex(handle: not null  QSqlRelationalTableModelH; fieldName: QStringH) return integer;
pragma Import(C, QSqlRelationalTableModel_fieldIndex ,"QSqlRelationalTableModel_fieldIndex");

procedure QSqlRelationalTableModel_sort(handle: not null  QSqlRelationalTableModelH; column:integer; order: integer);
pragma Import(C, QSqlRelationalTableModel_sort ,"QSqlRelationalTableModel_sort");

procedure QSqlRelationalTableModel_setSort(handle: not null  QSqlRelationalTableModelH; column:integer; order: QtSortOrder);
pragma Import(C,QSqlRelationalTableModel_setSort ,"QSqlRelationalTableModel_setSort");

function QSqlRelationalTableModel_filter(handle: not null  QSqlRelationalTableModelH) return QStringH;
pragma Import(C,QSqlRelationalTableModel_filter ,"QSqlRelationalTableModel_filter");

procedure QSqlRelationalTableModel_setFilter(handle: not null  QSqlRelationalTableModelH; filter: QStringH);
pragma Import(C,QSqlRelationalTableModel_setFilter ,"QSqlRelationalTableModel_setFilter");

function QSqlRelationalTableModel_rowCount(handle: not null  QSqlRelationalTableModelH;parent: QModelIndexH := QModelIndex_create) return integer;
pragma Import(C,QSqlRelationalTableModel_rowCount ,"QSqlRelationalTableModel_rowCount");

function QSqlRelationalTableModel_rowCount1(handle: not null  QSqlRelationalTableModelH) return integer;
pragma Import(C,QSqlRelationalTableModel_rowCount1 ,"QSqlRelationalTableModel_rowCount1");

function  QSqlRelationalTableModel_removeColumns(handle: not null  QSqlRelationalTableModelH; column:integer;count: integer;parent: QModelIndexH := QModelIndex_create) return boolean;
pragma Import(C,QSqlRelationalTableModel_removeColumns ,"QSqlRelationalTableModel_removeColumns");

function  QSqlRelationalTableModel_removeRows(handle: not null  QSqlRelationalTableModelH; row:integer;count: integer;parent: QModelIndexH := QModelIndex_create) return boolean;
pragma Import(C,QSqlRelationalTableModel_removeRows ,"QSqlRelationalTableModel_removeRows");

function  QSqlRelationalTableModel_removeRow(handle: not null  QSqlRelationalTableModelH; row:integer) return boolean;
pragma Import(C,QSqlRelationalTableModel_removeRow ,"QSqlRelationalTableModel_removeRow");

function  QSqlRelationalTableModel_insertRow(handle: not null  QSqlRelationalTableModelH; row:integer) return boolean;
pragma Import(C,QSqlRelationalTableModel_insertRow ,"QSqlRelationalTableModel_insertRow");

function  QSqlRelationalTableModel_insertRows(handle: not null  QSqlRelationalTableModelH; row:integer;count: integer;parent: QModelIndexH := QModelIndex_create) return boolean;
pragma Import(C,QSqlRelationalTableModel_insertRows ,"QSqlRelationalTableModel_insertRows");

function  QSqlRelationalTableModel_setRecord(handle: not null  QSqlRelationalTableModelH; row:integer;rec: QSqlRecordH) return boolean;
pragma Import(C,QSqlRelationalTableModel_setRecord ,"QSqlRelationalTableModel_setRecord");

procedure  QSqlRelationalTableModel_revertRow(handle: not null  QSqlRelationalTableModelH; row:integer);
pragma Import(C,QSqlRelationalTableModel_revertRow ,"QSqlRelationalTableModel_revertRow");

function  QSqlRelationalTableModel_submit(handle: not null  QSqlRelationalTableModelH) return boolean;
pragma Import(C,QSqlRelationalTableModel_submit ,"QSqlRelationalTableModel_submit");

procedure  QSqlRelationalTableModel_revert(handle: not null  QSqlRelationalTableModelH);
pragma Import(C,QSqlRelationalTableModel_revert ,"QSqlRelationalTableModel_revert");

function  QSqlRelationalTableModel_submitAll(handle: not null  QSqlRelationalTableModelH) return boolean;
pragma Import(C,QSqlRelationalTableModel_submitAll ,"QSqlRelationalTableModel_submitAll");

procedure  QSqlRelationalTableModel_revertAll(handle: not null  QSqlRelationalTableModelH);
pragma Import(C,QSqlRelationalTableModel_revertAll ,"QSqlRelationalTableModel_revertAll");

function  QSqlRelationalTableModel_record(handle: not null  QSqlRelationalTableModelH; row: integer) return QSqlRecordH;
pragma Import(C,QSqlRelationalTableModel_record ,"QSqlRelationalTableModel_record");

function  QSqlRelationalTableModel_relationModel(handle: not null QSqlRelationalTableModelH; column:integer) return QSqlTableModelH;
pragma Import(C,QSqlRelationalTableModel_relationModel, "QSqlRelationalTableModel_relationModel");

 procedure QSqlRelationalTableModel_setJoinMode(handle: not null QSqlRelationalTableModelH; join:JoinMode);
 pragma Import(C,QSqlRelationalTableModel_setJoinMode, "QSqlRelationalTableModel_setJoinMode");
 
 function  QSqlRelationalTableModel_selectStatement(handle: not null QSqlRelationalTableModelH) return QStringH;
 pragma Import(C,QSqlRelationalTableModel_selectStatement, "QSqlRelationalTableModel_selectStatement");
 
 function  QSqlRelationalTableModel_updateRowInTable(handle: not null QSqlRelationalTableModelH;row:integer; values:QSqlRecordH) return boolean;
 pragma Import(C,QSqlRelationalTableModel_updateRowInTable, "QSqlRelationalTableModel_updateRowInTable");
 
 function  QSqlRelationalTableModel_insertRowIntoTable(handle: not null QSqlRelationalTableModelH;values:QSqlRecordH) return boolean;
 pragma Import(C,QSqlRelationalTableModel_insertRowIntoTable, "QSqlRelationalTableModel_insertRowIntoTable");
 
 function  QSqlRelationalTableModel_orderByClause(handle: not null QSqlRelationalTableModelH) return QStringH;
 pragma Import(C,QSqlRelationalTableModel_orderByClause, "QSqlRelationalTableModel_orderByClause");
 

------------------------------------------------------------------------------------------------------------------------
function QSqlRelation_create(tableName,indexCol,displayCol: QStringH) return  QSqlRelationH;
function QSqlRelationalTableModel_rowCount(handle: not null  QSqlRelationalTableModelH) return integer;

end  Qt.QSqlRelationalTableModel;
