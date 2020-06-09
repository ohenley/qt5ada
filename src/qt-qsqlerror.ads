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

package Qt.QSqlError is

 SQLERROR_None        : constant :=  0;
 SQLERROR_NoError     : constant :=  0;
 SQLERROR_Connection  : constant :=  1;
 SQLERROR_Statement   : constant :=  2;
 SQLERROR_Transaction : constant :=  3;
 SQLERROR_Unknown     : constant :=  4;

function  QSqlError_create(driverText,dbText:QStringH;typ,number:integer) return QSqlErrorH;
pragma Import(C,QSqlError_create, "QSqlError_create");

function  QSqlError_create1(error:QSqlErrorH) return QSqlErrorH;
pragma Import(C,QSqlError_create1, "QSqlError_create1");

procedure del_QSqlError(p:QSqlErrorH);
pragma Import(C,del_QSqlError, "del_QSqlError");

function  QSqlError_driverText(error:QSqlErrorH) return QStringH;
pragma Import(C,QSqlError_driverText, "QSqlError_driverText");

procedure QSqlError_setDriverText(error:QSqlErrorH;driverText:QStringH);
pragma Import(C,QSqlError_setDriverText, "QSqlError_setDriverText");

function  QSqlError_databaseText(error:QSqlErrorH) return QStringH;
pragma Import(C,QSqlError_databaseText, "QSqlError_databaseText");

procedure QSqlError_setDatabaseText(error:QSqlErrorH;dbText:QStringH);
pragma Import(C,QSqlError_setDatabaseText, "QSqlError_setDatabaseText");

function  QSqlError_type(error:QSqlErrorH) return integer;
pragma Import(C,QSqlError_type, "QSqlError_type");

procedure QSqlError_setType(error:QSqlErrorH;typ:integer);
pragma Import(C,QSqlError_setType, "QSqlError_setType");

function  QSqlError_number(error:QSqlErrorH) return integer;
pragma Import(C,QSqlError_number, "QSqlError_number");

procedure QSqlError_setNumber(error:QSqlErrorH;number:integer);
pragma Import(C,QSqlError_setNumber, "QSqlError_setNumber");

function  QSqlError_text(handle: not null QSqlErrorH)return QStringH;
pragma Import(C,QSqlError_text, "QSqlError_text");
 
function  QSqlError_nativeErrorCode(handle: not null QSqlErrorH)return QStringH;
pragma Import(C,QSqlError_nativeErrorCode, "QSqlError_nativeErrorCode");
 
function  QSqlError_isValid(handle: not null QSqlErrorH) return boolean;
pragma Import(C,QSqlError_isValid, "QSqlError_isValid");

 function  QSslError_errorStringAt(sslErrorList: QObjectListH;index:integer) return QStringH;
 pragma Import(C,QSslError_errorStringAt, "QSslError_errorStringAt");
 
-----------------------------------------------------------------------------------
function  QSqlError_create(error:QSqlErrorH) return QSqlErrorH;

end Qt.QSqlError;
