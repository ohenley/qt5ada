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

package Qt.QSqlRecord is

function QSqlRecord_create return QSqlRecordH;
pragma Import(C,QSqlRecord_create ,"QSqlRecord_create");

function QSqlRecord_create1(handle: not null QSqlRecordH) return QSqlRecordH;
pragma Import(C,QSqlRecord_create1 ,"QSqlRecord_create1");

procedure del_QSqlRecord(rec: QSqlRecordH);
pragma Import(C,del_QSqlRecord ,"del_QSqlRecord");

function QSqlRecord_value(handle: not null QSqlRecordH;i: integer) return QVariantH;
pragma Import(C,QSqlRecord_value ,"QSqlRecord_value");

function QSqlRecord_value1(handle: not null QSqlRecordH;name: QStringH ) return QVariantH;
pragma Import(C,QSqlRecord_value1 ,"QSqlRecord_value1");

procedure QSqlRecord_setValue( handle: not null QSqlRecordH;i: integer; value: QVariantH);
pragma Import(C,QSqlRecord_setValue ,"QSqlRecord_setValue");

procedure QSqlRecord_setValue1( handle: not null QSqlRecordH;name: QStringH; value: QVariantH);
pragma Import(C,QSqlRecord_setValue1 ,"QSqlRecord_setValue1");

procedure QSqlRecord_setNull( handle: not null QSqlRecordH;i: integer);
pragma Import(C,QSqlRecord_setNull ,"QSqlRecord_setNull");

procedure QSqlRecord_setNull1( handle: not null QSqlRecordH;name: QStringH);
pragma Import(C,QSqlRecord_setNull1 ,"QSqlRecord_setNull1");

function QSqlRecord_isNull( handle: not null QSqlRecordH;i: integer) return boolean;
pragma Import(C,QSqlRecord_isNull ,"QSqlRecord_isNull");

function QSqlRecord_isNull1( handle: not null QSqlRecordH;name: QStringH) return boolean;
pragma Import(C,QSqlRecord_isNull1 ,"QSqlRecord_isNull1");

function QSqlRecord_indexOf( handle: not null QSqlRecordH;name: QStringH) return integer;
pragma Import(C,QSqlRecord_indexOf ,"QSqlRecord_indexOf");

function QSqlRecord_fieldName(handle: not null QSqlRecordH;i: integer) return QStringH;
pragma Import(C,QSqlRecord_fieldName ,"QSqlRecord_fieldName");

function QSqlRecord_field(handle: not null QSqlRecordH;i: integer) return QSqlFieldH;
pragma Import(C,QSqlRecord_field ,"QSqlRecord_field");

function QSqlRecord_field1(handle: not null QSqlRecordH;name: QStringH) return QSqlFieldH;
pragma Import(C,QSqlRecord_field1 ,"QSqlRecord_field1");

function QSqlRecord_isGenerated( handle: not null QSqlRecordH;i: integer) return boolean;
pragma Import(C,QSqlRecord_isGenerated ,"QSqlRecord_isGenerated");

function QSqlRecord_isGenerated1( handle: not null QSqlRecordH;name: QStringH) return boolean;
pragma Import(C,QSqlRecord_isGenerated1 ,"QSqlRecord_isGenerated1");

procedure QSqlRecord_setGenerated( handle: not null QSqlRecordH;i: integer; generated: boolean);
pragma Import(C,QSqlRecord_setGenerated ,"QSqlRecord_setGenerated");

procedure QSqlRecord_setGenerated1( handle: not null QSqlRecordH;name: QStringH; generated: boolean);
pragma Import(C,QSqlRecord_setGenerated1 ,"QSqlRecord_setGenerated1");

procedure QSqlRecord_append( handle: not null QSqlRecordH;field: QSqlFieldH);
pragma Import(C,QSqlRecord_append ,"QSqlRecord_append");

procedure QSqlRecord_replace( handle: not null QSqlRecordH;pos: integer;field: QSqlFieldH);
pragma Import(C,QSqlRecord_replace ,"QSqlRecord_replace");

procedure QSqlRecord_insert( handle: not null QSqlRecordH;pos: integer;field: QSqlFieldH);
pragma Import(C,QSqlRecord_insert ,"QSqlRecord_insert");

procedure QSqlRecord_remove( handle: not null QSqlRecordH;pos: integer);
pragma Import(C,QSqlRecord_remove ,"QSqlRecord_remove");

function QSqlRecord_isEmpty( handle: not null QSqlRecordH) return boolean;
pragma Import(C,QSqlRecord_isEmpty ,"QSqlRecord_isEmpty");

function QSqlRecord_contains( handle: not null QSqlRecordH;name: QStringH) return boolean;
pragma Import(C,QSqlRecord_contains ,"QSqlRecord_contains");

procedure QSqlRecord_clear( handle: not null QSqlRecordH);
pragma Import(C,QSqlRecord_clear ,"QSqlRecord_clear");

procedure QSqlRecord_clearValues( handle: not null QSqlRecordH);
pragma Import(C,QSqlRecord_clearValues ,"QSqlRecord_clearValues");

function  QSqlRecord_count( handle: not null QSqlRecordH) return integer;
pragma Import(C,QSqlRecord_count ,"QSqlRecord_count");

function QSqlRecord_create(handle: not null QSqlRecordH) return QSqlRecordH;
function QSqlRecord_value(handle: not null QSqlRecordH;name: QStringH ) return QVariantH;
procedure QSqlRecord_setValue( handle: not null QSqlRecordH;name: QStringH; value: QVariantH);
procedure QSqlRecord_setNull( handle: not null QSqlRecordH;name: QStringH);
function QSqlRecord_isNull( handle: not null QSqlRecordH;name: QStringH) return boolean;
function QSqlRecord_field(handle: not null QSqlRecordH;name: QStringH) return QSqlFieldH;
function QSqlRecord_isGenerated( handle: not null QSqlRecordH;name: QStringH) return boolean;
procedure QSqlRecord_setGenerated( handle: not null QSqlRecordH;name: QStringH; generated: boolean);

end Qt.QSqlRecord;
