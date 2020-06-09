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

package Qt.QSqlQueryModel is

function  QSqlQueryModel_create(parent: QObjectH := null) return QSqlQueryModelH;
pragma Import(C,QSqlQueryModel_create,"QSqlQueryModel_create");

procedure QSqlQueryModel_destroy(model: QSqlQueryModelH);
pragma Import(C,QSqlQueryModel_destroy,"QSqlQueryModel_destroy");

function  QSqlQueryModel_rowCount(model: QSqlQueryModelH; parent: QModelIndexH) return integer;
pragma Import(C,QSqlQueryModel_rowCount,"QSqlQueryModel_rowCount");

function  QSqlQueryModel_columnCount(model: QSqlQueryModelH;parent: QModelIndexH) return integer;
pragma Import(C,QSqlQueryModel_columnCount,"QSqlQueryModel_columnCount");

function  QSqlQueryModel_record(model: QSqlQueryModelH;row: integer) return QSqlRecordH;
pragma Import(C,QSqlQueryModel_record,"QSqlQueryModel_record");

function  QSqlQueryModel_record2(model: QSqlQueryModelH) return QSqlRecordH;
pragma Import(C,QSqlQueryModel_record2,"QSqlQueryModel_record2");

function  QSqlQueryModel_data(model: QSqlQueryModelH; item: QModelIndexH; role: QtItemDataRole := QtDisplayRole) return QVariantH;
pragma Import(C,QSqlQueryModel_data,"QSqlQueryModel_data");

function  QSqlQueryModel_headerData(model: QSqlQueryModelH;section:integer ;orientation: QtOrientation; role: QtItemDataRole := QtDisplayRole) return QVariantH;
pragma Import(C,QSqlQueryModel_headerData,"QSqlQueryModel_headerData");

function  QSqlQueryModel_setHeaderData(model: QSqlQueryModelH;section: integer ;orientation: QtOrientation ;value: QVariantH; role: QtItemDataRole := QtEditRole) return boolean;
pragma Import(C,QSqlQueryModel_setHeaderData,"QSqlQueryModel_setHeaderData");

function  QSqlQueryModel_insertColumns(model: QSqlQueryModelH;column:integer ;count: integer; parent: QModelIndexH) return boolean;
pragma Import(C,QSqlQueryModel_insertColumns,"QSqlQueryModel_insertColumns");

function  QSqlQueryModel_removeColumns(model: QSqlQueryModelH;column:integer; count: integer; parent: QModelIndexH) return boolean;
pragma Import(C,QSqlQueryModel_removeColumns,"QSqlQueryModel_removeColumns");

procedure QSqlQueryModel_setQuery(model: QSqlQueryModelH; query: QSqlQueryH);
pragma Import(C,QSqlQueryModel_setQuery,"QSqlQueryModel_setQuery");

procedure QSqlQueryModel_setQuery2(model: QSqlQueryModelH;query: QStringH; db: QSqlDatabaseH);
pragma Import(C,QSqlQueryModel_setQuery2,"QSqlQueryModel_setQuery2");

function  QSqlQueryModel_query(model: QSqlQueryModelH) return QSqlQueryH;
pragma Import(C,QSqlQueryModel_query,"QSqlQueryModel_query");

procedure QSqlQueryModel_clear(model: QSqlQueryModelH);
pragma Import(C,QSqlQueryModel_clear,"QSqlQueryModel_clear");

function  QSqlQueryModel_lastError(model: QSqlQueryModelH) return QSqlErrorH;
pragma Import(C,QSqlQueryModel_lastError,"QSqlQueryModel_lastError");

procedure QSqlQueryModel_fetchMore(model: QSqlQueryModelH; parent: QModelIndexH);
pragma Import(C,QSqlQueryModel_fetchMore,"QSqlQueryModel_fetchMore");

function  QSqlQueryModel_canFetchMore(model: QSqlQueryModelH; parent: QModelIndexH) return boolean;
pragma Import(C,QSqlQueryModel_canFetchMore,"QSqlQueryModel_canFetchMore");

---------------------------------------------------------------------------------------------------
function  QSqlQueryModel_record(model: QSqlQueryModelH) return QSqlRecordH;
procedure QSqlQueryModel_setQuery(model: QSqlQueryModelH;query: QStringH; db: QSqlDatabaseH);

end Qt.QSqlQueryModel;
