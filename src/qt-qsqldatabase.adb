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
package body Qt.QSqlDatabase is

function QSqlDatabase_create(driver : QSqlDriverH) return  QSqlDatabaseH is
begin
   return QSqlDatabase_create1(driver);
end QSqlDatabase_create;

function QSqlDatabase_create return  QSqlDatabaseH is
begin
   return QSqlDatabase_create2;
end QSqlDatabase_create;

function  QSqlDatabase_open(db:QSqlDatabaseH;user,password:QStringH) return integer is
begin
 return QSqlDatabase_open1(db,user,password);
end QSqlDatabase_open;

function  QSqlDatabase_addDatabase(driver: QStringH) return QSqlDatabaseH is
begin
  return  QSqlDatabase_addDatabase1(driver);
end;

function  QSqlDatabase_addDatabase(driver:QSqlDriverH; connectionName:QStringH) return QSqlDatabaseH is
begin
  return  QSqlDatabase_addDatabase2(driver,connectionName);
end;

end Qt.QSqlDatabase;
