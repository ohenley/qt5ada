--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015                 บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QSqlDatabase; use Qt.QSqldatabase;
with Qt.QString;      use Qt.QString;
package Qt.QSqlQuery is

function  QSqlQuery_create(res:QSqlResultH) return QSqlQueryH;
pragma Import(C,QSqlQuery_create, "QSqlQuery_create");

function  QSqlQuery_create1(query:not null QStringH; db:QSqlDatabaseH := QSqlDataBase_create) return QSqlQueryH;
pragma Import(C,QSqlQuery_create1, "QSqlQuery_create1");

function  QSqlQuery_create2(query:not null QSqlQueryH) return QSqlQueryH;
pragma Import(C,QSqlQuery_create2, "QSqlQuery_create2");

function  QSqlQuery_create3(db:QSqlDatabaseH) return QSqlQueryH;
pragma Import(C,QSqlQuery_create3, "QSqlQuery_create3");

procedure del_QSqlQuery(p:QSqlQueryH);
pragma Import(C,del_QSqlQuery, "del_QSqlQuery");

function  QSqlQuery_isValid(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_isValid, "QSqlQuery_isValid");

function  QSqlQuery_isActive(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_isActive, "QSqlQuery_isActive");

function  QSqlQuery_isNull(query:not null QSqlQueryH;field:integer) return integer;
pragma Import(C,QSqlQuery_isNull, "QSqlQuery_isNull");

function  QSqlQuery_at(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_at, "QSqlQuery_at");

function  QSqlQuery_lastQuery(query:not null QSqlQueryH) return QStringH;
pragma Import(C,QSqlQuery_lastQuery, "QSqlQuery_lastQuery");

function  QSqlQuery_numRowsAffected(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_numRowsAffected, "QSqlQuery_numRowsAffected");

function  QSqlQuery_lastError(query:not null QSqlQueryH) return QSqlErrorH;
pragma Import(C,QSqlQuery_lastError, "QSqlQuery_lastError");

function  QSqlQuery_isSelect(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_isSelect, "QSqlQuery_isSelect");

function  QSqlQuery_size(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_size, "QSqlQuery_size");

function  QSqlQuery_driver(query:not null QSqlQueryH) return QSqlDriverH;
pragma Import(C,QSqlQuery_driver, "QSqlQuery_driver");

function  QSqlQuery_result(query:not null QSqlQueryH) return QSqlResultH;
pragma Import(C,QSqlQuery_result, "QSqlQuery_result");

function  QSqlQuery_record(query:not null QSqlQueryH) return QSqlRecordH;
pragma Import(C,QSqlQuery_record, "QSqlQuery_record");

function  QSqlQuery_exec(query:not null QSqlQueryH;squery:QStringH) return integer;
pragma Import(C,QSqlQuery_exec, "QSqlQuery_exec");

function  QSqlQuery_exec1(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_exec1, "QSqlQuery_exec1");

function  QSqlQuery_prepare(query:not null QSqlQueryH;squery:QStringH) return integer;
pragma Import(C,QSqlQuery_prepare, "QSqlQuery_prepare");

function  QSqlQuery_value(query:not null QSqlQueryH;i:integer) return QVariantH;
pragma Import(C,QSqlQuery_value, "QSqlQuery_value");

function  QSqlQuery_seek(query:not null QSqlQueryH;i,relative:integer) return integer;
pragma Import(C,QSqlQuery_seek, "QSqlQuery_seek");

function  QSqlQuery_next(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_next, "QSqlQuery_next");

function  QSqlQuery_previous(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_previous, "QSqlQuery_previous");

function  QSqlQuery_first(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_first, "QSqlQuery_first");

function  QSqlQuery_last(query:not null QSqlQueryH) return integer;
pragma Import(C,QSqlQuery_last, "QSqlQuery_last");

procedure QSqlQuery_addBindValue(query : QSqlQueryH; value : QVariantH);
pragma Import(C,QSqlQuery_addBindValue , "QSqlQuery_addBindValue");

procedure QSqlQuery_bindValue(query : QSqlQueryH; field: QStringH; value: QVariantH);
pragma Import(C,QSqlQuery_bindValue , "QSqlQuery_bindValue");

 procedure QSqlQuery_clear(query:not null QSqlQueryH);
 pragma Import(C,QSqlQuery_clear, "QSqlQuery_clear");
 
 function  QSqlQuery_isForwardOnly(query:not null QSqlQueryH) return boolean;
 pragma Import(C,QSqlQuery_isForwardOnly, "QSqlQuery_isForwardOnly");
 
 procedure QSqlQuery_setForwardOnly(query:not null QSqlQueryH;isForward:boolean);
 pragma Import(C,QSqlQuery_setForwardOnly, "QSqlQuery_setForwardOnly");
 
---------------------------------------------------------------------
function  QSqlQuery_create(query:not null QStringH;db:QSqlDatabaseH := QSqlDataBase_create) return QSqlQueryH;
function  QSqlQuery_create(query:not null QSqlQueryH) return QSqlQueryH;
function  QSqlQuery_create(db:QSqlDatabaseH) return QSqlQueryH;

function  QSqlQuery_exec(query:not null QSqlQueryH) return integer;
end Qt.QSqlQuery;
