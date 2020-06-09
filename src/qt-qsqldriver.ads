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

with Qt.QSqlDatabase; use Qt.QSqlDatabase;
package Qt.QSqlDriver is

 SQLDRIVER_Transactions : constant := 0;
 SQLDRIVER_QuerySize    : constant := 1;
 SQLDRIVER_BLOB         : constant := 2;

 type DriverFeature is (Transactions, QuerySize, BLOB, Unicode, PreparedQueries,
                        NamedPlaceholders, PositionalPlaceholders, LastInsertId,
                        BatchOperations, SimpleLocking, LowPrecisionNumbers,
                        EventNotifications, FinishQuery, MultipleResultSets);
 pragma Covention(C,DriverFeature);

 type StatementType is (WhereStatement, SelectStatement, UpdateStatement, InsertStatement, DeleteStatement);
 pragma Covention(C,StatementType);
 
 type  IdentifierType is (FieldName, TableName);
 pragma Covention(C,IdentifierType);

procedure del_QSqlDriver(p:QSqlDriverH);
pragma Import(C,del_QSqlDriver, "del_QSqlDriver");

function  QSqlDriver_isOpen(driver:QSqlDriverH) return integer;
pragma Import(C,QSqlDriver_isOpen, "QSqlDriver_isOpen");

function  QSqlDriver_isOpenError(driver:QSqlDriverH) return integer;
pragma Import(C,QSqlDriver_isOpenError, "QSqlDriver_isOpenError");

function  QSqlDriver_beginTransaction(driver:QSqlDriverH) return integer;
pragma Import(C,QSqlDriver_beginTransaction, "QSqlDriver_beginTransaction");

function  QSqlDriver_commitTransaction(driver:QSqlDriverH) return integer;
pragma Import(C,QSqlDriver_commitTransaction, "QSqlDriver_commitTransaction");

function  QSqlDriver_rollbackTransaction(driver:QSqlDriverH) return integer;
pragma Import(C,QSqlDriver_rollbackTransaction, "QSqlDriver_rollbackTransaction");

function  QSqlDriver_tables(driver:QSqlDriverH) return QStringListH;
pragma Import(C,QSqlDriver_tables, "QSqlDriver_tables");

function  QSqlDriver_primaryIndex(driver:QSqlDriverH;tableName:QStringH) return QSqlIndexH;
pragma Import(C,QSqlDriver_primaryIndex, "QSqlDriver_primaryIndex");

function  QSqlDriver_record(driver:QSqlDriverH;tableName:QStringH) return QSqlRecordH;
pragma Import(C,QSqlDriver_record, "QSqlDriver_record");

function  QSqlDriver_formatValue(driver:QSqlDriverH;field:QSqlFieldH;trimStrings:integer) return QStringH;
pragma Import(C,QSqlDriver_formatValue, "QSqlDriver_formatValue");

function  QSqlDriver_lastError(driver:QSqlDriverH) return QSqlErrorH;
pragma Import(C,QSqlDriver_lastError, "QSqlDriver_lastError");

function  QSqlDriver_hasFeature(driver:QSqlDriverH;f:integer) return integer;
pragma Import(C,QSqlDriver_hasFeature, "QSqlDriver_hasFeature");

function  QSqlDriver_open(driver:QSqlDriverH;db,user,password,host:QStringH;port:integer := -1) return integer;
pragma Import(C,QSqlDriver_open, "QSqlDriver_open");

procedure QSqlDriver_close(driver:QSqlDriverH);
pragma Import(C,QSqlDriver_close, "QSqlDriver_close");

-- function  QSqlDriver_createQuery(driver:QSqlDriverH) return QSqlQueryH;
-- pragma Import(C,QSqlDriver_createQuery, "QSqlDriver_createQuery");

 function  QSqlDriver_open2(handle: not null QSqlDriverH;dbName:QStringH;user,password,host: QStringH; port:integer; connOpts:QStringH) return boolean;
 pragma Import(C,QSqlDriver_open2, "QSqlDriver_open2");
 
 function  QSqlDriver_escapeIdentifier(handle: not null QSqlDriverH; identifier :QStringH;identType:IdentifierType) return QStringH;
 pragma Import(C,QSqlDriver_escapeIdentifier, "QSqlDriver_escapeIdentifier");
 
 function  QSqlDriver_sqlStatement(handle: not null QSqlDriverH;stmtType:StatementType;  tableName:QStringH; rec:QSqlRecordH; preparedStatement:boolean) return QStringH;
 pragma Import(C,QSqlDriver_sqlStatement, "QSqlDriver_sqlStatement");
 
 function  QSqlDriver_handle(handle: not null QSqlDriverH) return QVariantH;
 pragma Import(C,QSqlDriver_handle, "QSqlDriver_handle");
 
 function  QSqlDriver_createResult(handle: not null QSqlDriverH) return QSqlResultH;
 pragma Import(C,QSqlDriver_createResult, "QSqlDriver_createResult");
 
 function  QSqlDriver_subscribeToNotification(handle: not null QSqlDriverH;name: QStringH) return boolean;
 pragma Import(C,QSqlDriver_subscribeToNotification, "QSqlDriver_subscribeToNotification");
 
 function  QSqlDriver_unsubscribeFromNotification(handle: not null QSqlDriverH;name: QStringH) return boolean;
 pragma Import(C,QSqlDriver_unsubscribeFromNotification, "QSqlDriver_unsubscribeFromNotification");
 
 function  QSqlDriver_subscribedToNotifications(handle: not null QSqlDriverH) return QStringListH;
 pragma Import(C,QSqlDriver_subscribedToNotifications, "QSqlDriver_subscribedToNotifications");
 
 function  QSqlDriver_isIdentifierEscaped(handle: not null QSqlDriverH; identifier :QStringH;identType:IdentifierType) return boolean;
 pragma Import(C,QSqlDriver_isIdentifierEscaped, "QSqlDriver_isIdentifierEscaped");
 
 function  QSqlDriver_stripDelimiters(handle: not null QSqlDriverH; identifier:QStringH;identType:IdentifierType) return QStringH;
 pragma Import(C,QSqlDriver_stripDelimiters, "QSqlDriver_stripDelimiters");
 
 procedure QSqlDriver_setNumericalPrecisionPolicy(handle: not null QSqlDriverH; precisionPolicy:QSqlNumericalPrecisionPolicy);
 pragma Import(C,QSqlDriver_setNumericalPrecisionPolicy, "QSqlDriver_setNumericalPrecisionPolicy");
 
 function  QSqlDriver_numericalPrecisionPolicy(handle: not null QSqlDriverH) return QSqlNumericalPrecisionPolicy;
 pragma Import(C,QSqlDriver_numericalPrecisionPolicy, "QSqlDriver_numericalPrecisionPolicy");
 
-----------------------------------------------------------------------------------------------------------
function  QSqlDriver_open(handle: not null QSqlDriverH;dbName:QStringH;user,password,host: QStringH; port:integer; connOpts:QStringH) return boolean;

end Qt.QSqlDriver;
