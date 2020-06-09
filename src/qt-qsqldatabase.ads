--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QSqlDatabase is

type QSqlNumericalPrecisionPolicy is (HighPrecision,LowPrecisionInt32,LowPrecisionInt64,LowPrecisionDouble);
pragma Convention(C,QSqlNumericalPrecisionPolicy);
for QSqlNumericalPrecisionPolicy  use (
        HighPrecision        => 0,
        LowPrecisionInt32    => 1,
        LowPrecisionInt64    => 2,
        LowPrecisionDouble   => 4);

procedure del_QSqlDatabase(p:QSqlDatabaseH);
pragma Import(C,del_QSqlDatabase, "del_QSqlDatabase");

function  QSqlDatabase_open(db:QSqlDatabaseH) return integer;
pragma Import(C,QSqlDatabase_open, "QSqlDatabase_open");

function  QSqlDatabase_open1(db:QSqlDatabaseH;user,password:QStringH) return integer;
pragma Import(C,QSqlDatabase_open1, "QSqlDatabase_open1");

procedure QSqlDatabase_close(db:QSqlDatabaseH);
pragma Import(C,QSqlDatabase_close, "QSqlDatabase_close");

function  QSqlDatabase_isOpen(db:QSqlDatabaseH) return integer;
pragma Import(C,QSqlDatabase_isOpen, "QSqlDatabase_isOpen");

function  QSqlDatabase_isOpenError(db:QSqlDatabaseH) return integer;
pragma Import(C,QSqlDatabase_isOpenError, "QSqlDatabase_isOpenError");

function  QSqlDatabase_tables(db:QSqlDatabaseH) return QStringListH;
pragma Import(C,QSqlDatabase_tables, "QSqlDatabase_tables");

function  QSqlDatabase_primaryIndex(db:QSqlDatabaseH;tablename:QStringH) return QSqlIndexH;
pragma Import(C,QSqlDatabase_primaryIndex, "QSqlDatabase_primaryIndex");

function  QSqlDatabase_record(db:QSqlDatabaseH;tablename:QStringH) return QSqlRecordH;
pragma Import(C,QSqlDatabase_record, "QSqlDatabase_record");

function  QSqlDatabase_exec(db:QSqlDatabaseH;query:QStringH) return QSqlQueryH;
pragma Import(C,QSqlDatabase_exec, "QSqlDatabase_exec");

function  QSqlDatabase_lastError(db:QSqlDatabaseH) return QSqlErrorH;
pragma Import(C,QSqlDatabase_lastError, "QSqlDatabase_lastError");

function  QSqlDatabase_transaction(db:QSqlDatabaseH) return integer;
pragma Import(C,QSqlDatabase_transaction, "QSqlDatabase_transaction");

function  QSqlDatabase_commit(db:QSqlDatabaseH) return integer;
pragma Import(C,QSqlDatabase_commit, "QSqlDatabase_commit");

function  QSqlDatabase_rollback(db:QSqlDatabaseH) return integer;
pragma Import(C,QSqlDatabase_rollback, "QSqlDatabase_rollback");

procedure QSqlDatabase_setDatabaseName(db:QSqlDatabaseH;database:QStringH);
pragma Import(C,QSqlDatabase_setDatabaseName, "QSqlDatabase_setDatabaseName");

procedure QSqlDatabase_setUserName(db:QSqlDatabaseH;user:QStringH);
pragma Import(C,QSqlDatabase_setUserName, "QSqlDatabase_setUserName");

procedure QSqlDatabase_setPassword(db:QSqlDatabaseH;password:QStringH);
pragma Import(C,QSqlDatabase_setPassword, "QSqlDatabase_setPassword");

procedure QSqlDatabase_setHostName(db:QSqlDatabaseH;host:QStringH);
pragma Import(C,QSqlDatabase_setHostName, "QSqlDatabase_setHostName");

procedure QSqlDatabase_setPort(db:QSqlDatabaseH;p:integer);
pragma Import(C,QSqlDatabase_setPort, "QSqlDatabase_setPort");

function  QSqlDatabase_databaseName(db:QSqlDatabaseH) return QStringH;
pragma Import(C,QSqlDatabase_databaseName, "QSqlDatabase_databaseName");

function  QSqlDatabase_userName(db:QSqlDatabaseH) return QStringH;
pragma Import(C,QSqlDatabase_userName, "QSqlDatabase_userName");

function  QSqlDatabase_password(db:QSqlDatabaseH) return QStringH;
pragma Import(C,QSqlDatabase_password, "QSqlDatabase_password");

function  QSqlDatabase_hostName(db:QSqlDatabaseH) return QStringH;
pragma Import(C,QSqlDatabase_hostName, "QSqlDatabase_hostName");

function  QSqlDatabase_driverName(db:QSqlDatabaseH) return QStringH;
pragma Import(C,QSqlDatabase_driverName, "QSqlDatabase_driverName");

function  QSqlDatabase_port(db:QSqlDatabaseH) return integer;
pragma Import(C,QSqlDatabase_port, "QSqlDatabase_port");

function  QSqlDatabase_driver(db:QSqlDatabaseH) return QSqlDriverH;
pragma Import(C,QSqlDatabase_driver, "QSqlDatabase_driver");

function  QSqlDatabase_addDatabase(driver,connectionName: QStringH) return QSqlDatabaseH;
pragma Import(C,QSqlDatabase_addDatabase, "QSqlDatabase_addDatabase");

function  QSqlDatabase_addDatabase1(driver: QStringH) return QSqlDatabaseH;
pragma Import(C,QSqlDatabase_addDatabase1, "QSqlDatabase_addDatabase1");

function  QSqlDatabase_database(connectionName:QStringH;open:integer) return QSqlDatabaseH;
pragma Import(C,QSqlDatabase_database, "QSqlDatabase_database");

procedure QSqlDatabase_removeDatabase(connectionName:QStringH);
pragma Import(C,QSqlDatabase_removeDatabase, "QSqlDatabase_removeDatabase");

function  QSqlDatabase_contains(connectionName:QStringH) return integer;
pragma Import(C,QSqlDatabase_contains, "QSqlDatabase_contains");

function  QSqlDatabase_drivers return QStringListH;
pragma Import(C,QSqlDatabase_drivers, "QSqlDatabase_drivers");

procedure QSqlDatabase_registerSqlDriver( name:QStringH;dcb:QSqlDriverCreatorBaseH);
pragma Import(C,QSqlDatabase_registerSqlDriver, "QSqlDatabase_registerSqlDriver");

function QSqlDatabase_create(dbtype : QStringH) return  QSqlDatabaseH;
pragma Import(C,QSqlDatabase_create, "QSqlDatabase_create");

function QSqlDatabase_create1(driver : QSqlDriverH) return  QSqlDatabaseH;
pragma Import(C,QSqlDatabase_create1, "QSqlDatabase_create1");

function QSqlDatabase_create2 return  QSqlDatabaseH;
pragma Import(C,QSqlDatabase_create2, "QSqlDatabase_create2");

-----------
 function  QSqlDatabase_isValid(handle: not null QSqlDatabaseH) return boolean;
 pragma Import(C,QSqlDatabase_isValid, "QSqlDatabase_isValid");
 
 function  QSqlDatabase_connectOptions(handle: not null QSqlDatabaseH) return QStringH;
 pragma Import(C,QSqlDatabase_connectOptions, "QSqlDatabase_connectOptions");
 
 function  QSqlDatabase_connectionName(handle: not null QSqlDatabaseH) return QStringH;
 pragma Import(C,QSqlDatabase_connectionName, "QSqlDatabase_connectionName");
 
 procedure QSqlDatabase_setNumericalPrecisionPolicy(handle: not null QSqlDatabaseH; precisionPolicy:QSqlNumericalPrecisionPolicy);
 pragma Import(C,QSqlDatabase_setNumericalPrecisionPolicy, "QSqlDatabase_setNumericalPrecisionPolicy");
 
 function  QSqlDatabase_numericalPrecisionPolicy(handle: not null QSqlDatabaseH) return QSqlNumericalPrecisionPolicy;
 pragma Import(C,QSqlDatabase_numericalPrecisionPolicy, "QSqlDatabase_numericalPrecisionPolicy");
 
-- function  QSqlDatabase_defaultConnection return QStringH;
-- pragma Import(C,QSqlDatabase_defaultConnection, "QSqlDatabase_defaultConnection");
 
 function  QSqlDatabase_addDatabase2(driver:QSqlDriverH; connectionName:QStringH) return QSqlDatabaseH;
 pragma Import(C,QSqlDatabase_addDatabase2, "QSqlDatabase_addDatabase2");
 
 function  QSqlDatabase_cloneDatabase(other:QSqlDatabaseH; connectionName: QStringH) return QSqlDatabaseH;
 pragma Import(C,QSqlDatabase_cloneDatabase, "QSqlDatabase_cloneDatabase");
 
 function  QSqlDatabase_connectionNames return QStringListH;
 pragma Import(C,QSqlDatabase_connectionNames, "QSqlDatabase_connectionNames");
 
 function  QSqlDatabase_isDriverAvailable(dbName:QStringH) return boolean;
 pragma Import(C,QSqlDatabase_isDriverAvailable, "QSqlDatabase_isDriverAvailable");
----------------------------------------------------------------------------------------------
function  QSqlDatabase_create return  QSqlDatabaseH;
function  QSqlDatabase_create(driver : QSqlDriverH) return  QSqlDatabaseH;
function  QSqlDatabase_open(db:QSqlDatabaseH;user,password:QStringH) return integer;
function  QSqlDatabase_addDatabase(driver: QStringH) return QSqlDatabaseH;
function  QSqlDatabase_addDatabase(driver:QSqlDriverH; connectionName:QStringH) return QSqlDatabaseH;

end Qt.QSqlDatabase;
