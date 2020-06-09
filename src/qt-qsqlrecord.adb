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

package body Qt.QSqlRecord is


function QSqlRecord_create(handle: not null QSqlRecordH) return QSqlRecordH is
begin
  return QSqlRecord_create1(handle);
end;

function QSqlRecord_value(handle: not null QSqlRecordH;name: QStringH ) return QVariantH is
begin
  return QSqlRecord_value1(handle,name);
end;

procedure QSqlRecord_setValue( handle: not null QSqlRecordH;name: QStringH; value: QVariantH) is
begin
  QSqlRecord_setValue1(handle,name,value);
end;

procedure QSqlRecord_setNull( handle: not null QSqlRecordH;name: QStringH) is
begin
   QSqlRecord_setNull1(handle,name);
end;

function QSqlRecord_isNull( handle: not null QSqlRecordH;name: QStringH) return boolean is
begin
  return QSqlRecord_isNull1(handle,name);
end;

function QSqlRecord_field(handle: not null QSqlRecordH;name: QStringH) return QSqlFieldH is
begin
  return QSqlRecord_field1(handle,name);
end;

function QSqlRecord_isGenerated( handle: not null QSqlRecordH;name: QStringH) return boolean is
begin
  return QSqlRecord_isGenerated1(handle,name);
end;

procedure QSqlRecord_setGenerated( handle: not null QSqlRecordH;name: QStringH; generated: boolean) is
begin
  QSqlRecord_setGenerated1( handle,name,generated);
end;

end Qt.QSqlRecord;
