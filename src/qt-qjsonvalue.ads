-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2017                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QJsonValue is

type jsonValueType is new integer; 
  NullType      : constant jsonValueType := 0;
  BoolType      : constant jsonValueType := 0;
  DoubleType    : constant jsonValueType := 0;
  StringType    : constant jsonValueType := 0;
  ArrayType     : constant jsonValueType := 0;
  ObjectType    : constant jsonValueType := 0;
  UndefinedType : constant jsonValueType := 16#80#;

 function  QJsonValue_create(tp: jsonValueType := NullType) return QJsonValueH;
 pragma Import(C,QJsonValue_create, "QJsonValue_create");
 
 function  QJsonValue_create2(b:boolean) return QJsonValueH;
 pragma Import(C,QJsonValue_create2, "QJsonValue_create2");
 
 function  QJsonValue_create3(n:double) return QJsonValueH;
 pragma Import(C,QJsonValue_create3, "QJsonValue_create3");
 
 function  QJsonValue_create4(n:integer) return QJsonValueH;
 pragma Import(C,QJsonValue_create4, "QJsonValue_create4");
 
 function  QJsonValue_create5(n:qint64) return QJsonValueH;
 pragma Import(C,QJsonValue_create5, "QJsonValue_create5");
 
 function  QJsonValue_create6(s:QStringH) return QJsonValueH;
 pragma Import(C,QJsonValue_create6, "QJsonValue_create6");
 
 function  QJsonValue_create7(s:QLatin1StringH) return QJsonValueH;
 pragma Import(C,QJsonValue_create7, "QJsonValue_create7");
 
 function  QJsonValue_create8(a:QJsonArrayH) return QJsonValueH;
 pragma Import(C,QJsonValue_create8, "QJsonValue_create8");
 
 function  QJsonValue_create9(obj:QJsonObjectH) return QJsonValueH;
 pragma Import(C,QJsonValue_create9, "QJsonValue_create9");
 
 function  QJsonValue_create10(other:QJsonValueH) return QJsonValueH;
 pragma Import(C,QJsonValue_create10, "QJsonValue_create10");
 
 procedure QJsonValue_destroy(handle:not null QJsonValueH);
 pragma Import(C,QJsonValue_destroy, "QJsonValue_destroy");
 
 function  QJsonValue_toVariant(handle:not null QJsonValueH) return QVariantH;
 pragma Import(C,QJsonValue_toVariant, "QJsonValue_toVariant");
 
 function  QJsonValue_type(handle:not null QJsonValueH) return jsonValueType;
 pragma Import(C,QJsonValue_type, "QJsonValue_type");
 
 function  QJsonValue_isNull(handle:not null QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_isNull, "QJsonValue_isNull");
 
 function  QJsonValue_isBool(handle:not null QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_isBool, "QJsonValue_isBool");
 
 function  QJsonValue_isDouble(handle:not null QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_isDouble, "QJsonValue_isDouble");
 
 function  QJsonValue_isString(handle:not null QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_isString, "QJsonValue_isString");
 
 function  QJsonValue_isArray(handle:not null QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_isArray, "QJsonValue_isArray");
 
 function  QJsonValue_isObject(handle:not null QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_isObject, "QJsonValue_isObject");
 
 function  QJsonValue_isUndefined(handle:not null QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_isUndefined, "QJsonValue_isUndefined");
 
 function  QJsonValue_toBool(handle:not null QJsonValueH;defaultValue :boolean :=  false) return boolean;
 pragma Import(C,QJsonValue_toBool, "QJsonValue_toBool");
 
 function  QJsonValue_toInt(handle:not null QJsonValueH;defaultValue :integer :=  0) return integer;
 pragma Import(C,QJsonValue_toInt, "QJsonValue_toInt");
 
 function  QJsonValue_toDouble(handle:not null QJsonValueH;defaultValue :qt.double :=  0.0) return qt.double;
 pragma Import(C,QJsonValue_toDouble, "QJsonValue_toDouble");
 
 function  QJsonValue_toString(handle:not null QJsonValueH) return QStringH;
 pragma Import(C,QJsonValue_toString, "QJsonValue_toString");
 
 function  QJsonValue_toString2(handle:not null QJsonValueH;defaultValue:QStringH) return QStringH;
 pragma Import(C,QJsonValue_toString2, "QJsonValue_toString2");
 
 function  QJsonValue_toArray(handle:not null QJsonValueH) return QJsonArrayH;
 pragma Import(C,QJsonValue_toArray, "QJsonValue_toArray");
 
 function  QJsonValue_toArray2(handle:not null QJsonValueH;defaultValue:QJsonArrayH) return QJsonArrayH;
 pragma Import(C,QJsonValue_toArray2, "QJsonValue_toArray2");
 
 function  QJsonValue_toObject(handle:not null QJsonValueH) return QJsonObjectH;
 pragma Import(C,QJsonValue_toObject, "QJsonValue_toObject");
 
 function  QJsonValue_toObject2(handle:not null QJsonValueH;defaultValue:QJsonObjectH) return QJsonObjectH;
 pragma Import(C,QJsonValue_toObject2, "QJsonValue_toObject2");
 
 function  QJsonValue_equal(handle:not null QJsonValueH;other:QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_equal, "QJsonValue_equal");
 
 function  QJsonValue_notequal(handle:not null QJsonValueH;other:QJsonValueH) return boolean;
 pragma Import(C,QJsonValue_notequal, "QJsonValue_notequal");
 
 function  QJsonValue_fromVariant(handle:not null QJsonValueH;var:QVariantH) return QJsonValueH;
 pragma Import(C,QJsonValue_fromVariant, "QJsonValue_fromVariant");
 
 function  QJsonValue_create(b:boolean) return QJsonValueH;
 function  QJsonValue_create(n:qt.double) return QJsonValueH;
 function  QJsonValue_create(n:integer) return QJsonValueH;
 function  QJsonValue_create(n:qint64) return QJsonValueH;
 function  QJsonValue_create(s:QStringH) return QJsonValueH;
 function  QJsonValue_create(s:QLatin1StringH) return QJsonValueH;
 function  QJsonValue_create(a:QJsonArrayH) return QJsonValueH;
 function  QJsonValue_create(obj:QJsonObjectH) return QJsonValueH;
 function  QJsonValue_create(other:QJsonValueH) return QJsonValueH;
 function  QJsonValue_toString(handle:not null QJsonValueH;defaultValue:QStringH) return QStringH;
 function  QJsonValue_toArray(handle:not null QJsonValueH;defaultValue:QJsonArrayH) return QJsonArrayH;
 function  QJsonValue_toObject(handle:not null QJsonValueH;defaultValue:QJsonObjectH) return QJsonObjectH;


end;
