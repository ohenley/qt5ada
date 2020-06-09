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

with Qt.QVariant; use Qt.QVariant;
package Qt.QSqlField is

subtype RequiredStatus is integer;

Unknown : constant := -1; 
Optional: constant :=  0; 
Required: constant :=  1;

function  QSqlField_create(fieldName:QStringH;typ:integer) return QSqlFieldH;
pragma Import(C,QSqlField_create, "QSqlField_create");

function  QSqlField_create1(field:QSqlFieldH) return QSqlFieldH;
pragma Import(C,QSqlField_create1, "QSqlField_create1");

procedure del_QSqlField(p:QSqlFieldH);
pragma Import(C,del_QSqlField, "del_QSqlField");

procedure QSqlField_setValue(field:QSqlFieldH;value:QVariantH);
pragma Import(C,QSqlField_setValue, "QSqlField_setValue");

function  QSqlField_value(field:QSqlFieldH) return QVariantH;
pragma Import(C,QSqlField_value, "QSqlField_value");

procedure QSqlField_setName(field:QSqlFieldH;name:QStringH);
pragma Import(C,QSqlField_setName, "QSqlField_setName");

function  QSqlField_name(field:QSqlFieldH) return QStringH;
pragma Import(C,QSqlField_name, "QSqlField_name");

function  QSqlField_isNull(field:QSqlFieldH) return integer;
pragma Import(C,QSqlField_isNull, "QSqlField_isNull");

procedure QSqlField_setReadOnly(field:QSqlFieldH;readOnly:integer);
pragma Import(C,QSqlField_setReadOnly, "QSqlField_setReadOnly");

function  QSqlField_isReadOnly(field:QSqlFieldH) return integer;
pragma Import(C,QSqlField_isReadOnly, "QSqlField_isReadOnly");

procedure QSqlField_clear(field:QSqlFieldH);
pragma Import(C,QSqlField_clear, "QSqlField_clear");

function  QSqlField_type(field:QSqlFieldH) return integer;
pragma Import(C,QSqlField_type, "QSqlField_type");

 function  QSqlField_isAutoValue(handle: not null QSqlFieldH) return boolean;
 pragma Import(C,QSqlField_isAutoValue, "QSqlField_isAutoValue");
 
 procedure QSqlField_setType(handle: not null QSqlFieldH;fieldType:QVariantType);
 pragma Import(C,QSqlField_setType, "QSqlField_setType");
 
 procedure QSqlField_setRequiredStatus(handle: not null QSqlFieldH; status:RequiredStatus);
 pragma Import(C,QSqlField_setRequiredStatus, "QSqlField_setRequiredStatus");
 
 procedure QSqlField_setRequired(handle: not null QSqlFieldH; required:boolean);
 pragma Import(C,QSqlField_setRequired, "QSqlField_setRequired");
 
 procedure QSqlField_setLength(handle: not null QSqlFieldH;fieldLength:integer);
 pragma Import(C,QSqlField_setLength, "QSqlField_setLength");
 
 procedure QSqlField_setPrecision(handle: not null QSqlFieldH;precision:integer);
 pragma Import(C,QSqlField_setPrecision, "QSqlField_setPrecision");
 
 procedure QSqlField_setDefaultValue(handle: not null QSqlFieldH;value:QVariantH);
 pragma Import(C,QSqlField_setDefaultValue, "QSqlField_setDefaultValue");
 
 procedure QSqlField_setSqlType(handle: not null QSqlFieldH; sqlType:integer);
 pragma Import(C,QSqlField_setSqlType, "QSqlField_setSqlType");
 
 procedure QSqlField_setGenerated(handle: not null QSqlFieldH; gen:boolean);
 pragma Import(C,QSqlField_setGenerated, "QSqlField_setGenerated");
 
 procedure QSqlField_setAutoValue(handle: not null QSqlFieldH; autoVal:boolean);
 pragma Import(C,QSqlField_setAutoValue, "QSqlField_setAutoValue");
 
 function  QSqlField_requiredStatus(handle: not null QSqlFieldH) return RequiredStatus;
 pragma Import(C,QSqlField_requiredStatus, "QSqlField_requiredStatus");
 
 function  QSqlField_length(handle: not null QSqlFieldH) return integer;
 pragma Import(C,QSqlField_length, "QSqlField_length");
 
 function  QSqlField_precision(handle: not null QSqlFieldH) return integer;
 pragma Import(C,QSqlField_precision, "QSqlField_precision");
 
 function  QSqlField_defaultValue(handle: not null QSqlFieldH) return QVariantH;
 pragma Import(C,QSqlField_defaultValue, "QSqlField_defaultValue");
 
 function  QSqlField_typeID(handle: not null QSqlFieldH) return integer;
 pragma Import(C,QSqlField_typeID, "QSqlField_typeID");
 
 function  QSqlField_isGenerated(handle: not null QSqlFieldH) return boolean;
 pragma Import(C,QSqlField_isGenerated, "QSqlField_isGenerated");
 
 function  QSqlField_isValid(handle: not null QSqlFieldH) return boolean;
 pragma Import(C,QSqlField_isValid, "QSqlField_isValid");
 
----------------------------------------------------------------------------------------------
function  QSqlField_create(field:QSqlFieldH) return QSqlFieldH;

end Qt.QSqlField;
