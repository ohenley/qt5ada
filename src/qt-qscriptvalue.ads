--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package QT.QScriptValue   is

 ResolveLocal      : constant := 0;
 ResolvePrototype  : constant := 1;
 ResolveScope      : constant := 2;
 ResolveFull       : constant := 3;
 
 ReadOnly          : constant := 16#00000001#;
 Undeletable       : constant := 16#00000002#;
 SkipInEnumeration : constant := 16#00000004#;
 PropertyGetter    : constant := 16#00000008#;
 PropertySetter    : constant := 16#00000010#;
 QObjectMember     : constant := 16#00000020#;
 KeepExistingFlags : constant := 16#00000800#;
 UserRange         : constant := 16#ff000000#;

 type  SpecialValue is (NullValue, UndefinedValue);
 pragma Convention(C,SpecialValue);

 function  QScriptValue_create  return QScriptValueH;
 pragma Import(C,QScriptValue_create, "QScriptValue_create");
 
 function  QScriptValue_create2(value:SpecialValue) return QScriptValueH;
 pragma Import(C,QScriptValue_create2, "QScriptValue_create2");
 
 function  QScriptValue_create3(value:boolean) return QScriptValueH;
 pragma Import(C,QScriptValue_create3, "QScriptValue_create3");
 
 function  QScriptValue_create4(value:integer) return QScriptValueH;
 pragma Import(C,QScriptValue_create4, "QScriptValue_create4");
 
 function  QScriptValue_create5(value:quint) return QScriptValueH;
 pragma Import(C,QScriptValue_create5, "QScriptValue_create5");
 
 function  QScriptValue_create6(value:double) return QScriptValueH;
 pragma Import(C,QScriptValue_create6, "QScriptValue_create6");
 
 function  QScriptValue_create7(value:QStringH) return QScriptValueH;
 pragma Import(C,QScriptValue_create7, "QScriptValue_create7");
 
 function  QScriptValue_create8(value:zstring) return QScriptValueH;
 pragma Import(C,QScriptValue_create8, "QScriptValue_create8");
 
 function  QScriptValue_create9(engine:QScriptEngineH; value:SpecialValue) return QScriptValueH;
 pragma Import(C,QScriptValue_create9, "QScriptValue_create9");
 
 function  QScriptValue_create10(engine:QScriptEngineH;value:boolean) return QScriptValueH;
 pragma Import(C,QScriptValue_create10, "QScriptValue_create10");
 
 function  QScriptValue_create11(engine:QScriptEngineH;value:integer) return QScriptValueH;
 pragma Import(C,QScriptValue_create11, "QScriptValue_create11");
 
 function  QScriptValue_create12(engine:QScriptEngineH;value:quint) return QScriptValueH;
 pragma Import(C,QScriptValue_create12, "QScriptValue_create12");
 
 function  QScriptValue_create13(engine:QScriptEngineH;value:double) return QScriptValueH;
 pragma Import(C,QScriptValue_create13, "QScriptValue_create13");
 
 function  QScriptValue_create14(engine:QScriptEngineH;value:QStringH) return QScriptValueH;
 pragma Import(C,QScriptValue_create14, "QScriptValue_create14");
 
 function  QScriptValue_create15(engine:QScriptEngineH;value:zstring) return QScriptValueH;
 pragma Import(C,QScriptValue_create15, "QScriptValue_create15");
 
 procedure QScriptValue_destroy(handle: not null QScriptValueH);
 pragma Import(C,QScriptValue_destroy, "QScriptValue_destroy");
 
 function  QScriptValue_engine(handle: not null QScriptValueH) return QScriptEngineH;
 pragma Import(C,QScriptValue_engine, "QScriptValue_engine");
 
 function  QScriptValue_isValid(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isValid, "QScriptValue_isValid");
 
 function  QScriptValue_isBool(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isBool, "QScriptValue_isBool");
 
 function  QScriptValue_isBoolean(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isBoolean, "QScriptValue_isBoolean");
 
 function  QScriptValue_isNumber(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isNumber, "QScriptValue_isNumber");
 
 function  QScriptValue_isFunction(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isFunction, "QScriptValue_isFunction");
 
 function  QScriptValue_isNull(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isNull, "QScriptValue_isNull");
 
 function  QScriptValue_isString(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isString, "QScriptValue_isString");
 
 function  QScriptValue_isUndefined(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isUndefined, "QScriptValue_isUndefined");
 
 function  QScriptValue_isVariant(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isVariant, "QScriptValue_isVariant");
 
 function  QScriptValue_isQObject(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isQObject, "QScriptValue_isQObject");
 
 function  QScriptValue_isQMetaObject(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isQMetaObject, "QScriptValue_isQMetaObject");
 
 function  QScriptValue_isObject(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isObject, "QScriptValue_isObject");
 
 function  QScriptValue_isDate(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isDate, "QScriptValue_isDate");
 
 function  QScriptValue_isRegExp(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isRegExp, "QScriptValue_isRegExp");
 
 function  QScriptValue_isArray(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isArray, "QScriptValue_isArray");
 
 function  QScriptValue_isError(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_isError, "QScriptValue_isError");
 
 function  QScriptValue_toString(handle: not null QScriptValueH) return QStringH;
 pragma Import(C,QScriptValue_toString, "QScriptValue_toString");
 
 function  QScriptValue_toNumber(handle: not null QScriptValueH) return double;
 pragma Import(C,QScriptValue_toNumber, "QScriptValue_toNumber");
 
 function  QScriptValue_toBool(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_toBool, "QScriptValue_toBool");
 
 function  QScriptValue_toBoolean(handle: not null QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_toBoolean, "QScriptValue_toBoolean");
 
 function  QScriptValue_toInteger(handle: not null QScriptValueH) return double;
 pragma Import(C,QScriptValue_toInteger, "QScriptValue_toInteger");
 
 function  QScriptValue_toInt32(handle: not null QScriptValueH) return integer;
 pragma Import(C,QScriptValue_toInt32, "QScriptValue_toInt32");
 
 function  QScriptValue_toUInt32(handle: not null QScriptValueH) return quint;
 pragma Import(C,QScriptValue_toUInt32, "QScriptValue_toUInt32");
 
 function  QScriptValue_toUInt16(handle: not null QScriptValueH) return quint16;
 pragma Import(C,QScriptValue_toUInt16, "QScriptValue_toUInt16");
 
 function  QScriptValue_toVariant(handle: not null QScriptValueH) return QVariantH;
 pragma Import(C,QScriptValue_toVariant, "QScriptValue_toVariant");
 
 function  QScriptValue_toQObject(handle: not null QScriptValueH) return QObjectH;
 pragma Import(C,QScriptValue_toQObject, "QScriptValue_toQObject");
 
 function  QScriptValue_toQMetaObject(handle: not null QScriptValueH) return QMetaObjectH;
 pragma Import(C,QScriptValue_toQMetaObject, "QScriptValue_toQMetaObject");
 
 function  QScriptValue_toObject(handle: not null QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_toObject, "QScriptValue_toObject");
 
 function  QScriptValue_toDateTime(handle: not null QScriptValueH) return QDateTimeH;
 pragma Import(C,QScriptValue_toDateTime, "QScriptValue_toDateTime");
 
 function  QScriptValue_instanceOf(handle: not null QScriptValueH;other:QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_instanceOf, "QScriptValue_instanceOf");
 
 function  QScriptValue_lessThan(handle: not null QScriptValueH;other:QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_lessThan, "QScriptValue_lessThan");
 
 function  QScriptValue_equals(handle: not null QScriptValueH;other:QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_equals, "QScriptValue_equals");
 
 function  QScriptValue_strictlyEquals(handle: not null QScriptValueH;other:QScriptValueH) return boolean;
 pragma Import(C,QScriptValue_strictlyEquals, "QScriptValue_strictlyEquals");
 
 function  QScriptValue_prototype(handle: not null QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_prototype, "QScriptValue_prototype");
 
 procedure QScriptValue_setPrototype(handle: not null QScriptValueH;prototype:QScriptValueH);
 pragma Import(C,QScriptValue_setPrototype, "QScriptValue_setPrototype");
 
 function  QScriptValue_scope(handle: not null QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_scope, "QScriptValue_scope");
 
 procedure QScriptValue_setScope(handle: not null QScriptValueH;scope:QScriptValueH);
 pragma Import(C,QScriptValue_setScope, "QScriptValue_setScope");
 
 function  QScriptValue_property(handle: not null QScriptValueH;name:QStringH; mode: integer := ResolvePrototype) return QScriptValueH;
 pragma Import(C,QScriptValue_property, "QScriptValue_property");
 
 function  QScriptValue_property2(handle: not null QScriptValueH;name:QStringH) return QScriptValueH;
 pragma Import(C,QScriptValue_property2, "QScriptValue_property2");
 
 procedure QScriptValue_setProperty(handle: not null QScriptValueH;name:QStringH;value: QScriptValueH; flags: integer);
 pragma Import(C,QScriptValue_setProperty, "QScriptValue_setProperty");
 
 procedure QScriptValue_setProperty2(handle: not null QScriptValueH;name:QStringH;value: QScriptValueH);
 pragma Import(C,QScriptValue_setProperty2, "QScriptValue_setProperty2");
 
 function  QScriptValue_property3(handle: not null QScriptValueH; arrayIndex:quint; mode:integer := ResolvePrototype) return QScriptValueH;
 pragma Import(C,QScriptValue_property3, "QScriptValue_property3");
 
 procedure QScriptValue_setProperty3(handle: not null QScriptValueH; arrayIndex:quint;value:QScriptValueH;flags:integer := KeepExistingFlags);
 pragma Import(C,QScriptValue_setProperty3, "QScriptValue_setProperty3");
 
 function  QScriptValue_property4(handle: not null QScriptValueH;name:QScriptStringH;mode:integer := ResolvePrototype) return QScriptValueH;
 pragma Import(C,QScriptValue_property4, "QScriptValue_property4");
 
 procedure QScriptValue_setProperty4(handle: not null QScriptValueH;name:QScriptStringH;value:QScriptValueH;flags:integer := KeepExistingFlags);
 pragma Import(C,QScriptValue_setProperty4, "QScriptValue_setProperty4");
 
 function  QScriptValue_propertyFlags(handle: not null QScriptValueH;name:QStringH;mode:integer := ResolvePrototype) return integer;
 pragma Import(C,QScriptValue_propertyFlags, "QScriptValue_propertyFlags");
 
 function  QScriptValue_propertyFlags2(handle: not null QScriptValueH;name:QScriptStringH;mode:integer := ResolvePrototype) return integer;
 pragma Import(C,QScriptValue_propertyFlags2, "QScriptValue_propertyFlags2");
 
 function  QScriptValue_call(handle: not null QScriptValueH; thisObject:QScriptValueH; args:QScriptValueListH) return QScriptValueH;
 pragma Import(C,QScriptValue_call, "QScriptValue_call");
 
 function  QScriptValue_call2(handle: not null QScriptValueH; thisObject:QScriptValueH; arguments:QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_call2, "QScriptValue_call2");
 
 function  QScriptValue_call3(handle: not null QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_call3, "QScriptValue_call3");
 
 function  QScriptValue_construct(handle: not null QScriptValueH;args:QScriptValueListH) return QScriptValueH;
 pragma Import(C,QScriptValue_construct, "QScriptValue_construct");
 
 function  QScriptValue_construct2(handle: not null QScriptValueH; arguments:QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_construct2, "QScriptValue_construct2");
 
 function  QScriptValue_construct3(handle: not null QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_construct3, "QScriptValue_construct3");
 
 function  QScriptValue_data(handle: not null QScriptValueH) return QScriptValueH;
 pragma Import(C,QScriptValue_data, "QScriptValue_data");
 
 procedure QScriptValue_setData(handle: not null QScriptValueH;data:QScriptValueH);
 pragma Import(C,QScriptValue_setData, "QScriptValue_setData");
 
 function  QScriptValue_scriptClass(handle: not null QScriptValueH) return QScriptClassH;
 pragma Import(C,QScriptValue_scriptClass, "QScriptValue_scriptClass");
 
 procedure QScriptValue_setScriptClass(handle: not null QScriptValueH; scriptClass:QScriptClassH);
 pragma Import(C,QScriptValue_setScriptClass, "QScriptValue_setScriptClass");
 
 function  QScriptValue_objectId(handle: not null QScriptValueH) return qint64;
 pragma Import(C,QScriptValue_objectId, "QScriptValue_objectId");
 
 ----------------------------  2019 ---------------------------------------------------------
 function  QScriptValueList_create return QScriptValueListH;
 pragma Import(C,QScriptValueList_create, "QScriptValueList_create");
 
 function  QScriptValueList_create2(list:QScriptValueListH) return QScriptValueListH;
 pragma Import(C,QScriptValueList_create2, "QScriptValueList_create2");
 
 procedure QScriptValueList_destroy(handle:not null QScriptValueListH);
 pragma Import(C,QScriptValueList_destroy, "QScriptValueList_destroy");
 
 function  QScriptValueList_size(handle:not null QScriptValueListH) return integer;
 pragma Import(C,QScriptValueList_size, "QScriptValueList_size");
 
 procedure QScriptValueList_clear(handle:not null QScriptValueListH);
 pragma Import(C,QScriptValueList_clear, "QScriptValueList_clear");
 
 function  QScriptValueList_isEmpty(handle:not null QScriptValueListH) return boolean;
 pragma Import(C,QScriptValueList_isEmpty, "QScriptValueList_isEmpty");
 
 procedure QScriptValueList_append(handle:not null QScriptValueListH;val: QScriptValueH);
 pragma Import(C,QScriptValueList_append, "QScriptValueList_append");
 
 procedure QScriptValueList_append2(handle:not null QScriptValueListH;list: QScriptValueListH);
 pragma Import(C,QScriptValueList_append2, "QScriptValueList_append2");
 
 procedure QScriptValueList_prepend(handle:not null QScriptValueListH;val: QScriptValueH);
 pragma Import(C,QScriptValueList_prepend, "QScriptValueList_prepend");
 
 procedure QScriptValueList_insert(handle:not null QScriptValueListH;i: integer;val: QScriptValueH);
 pragma Import(C,QScriptValueList_insert, "QScriptValueList_insert");
 
 procedure QScriptValueList_move(handle:not null QScriptValueListH;fromIndex,toIndex: integer);
 pragma Import(C,QScriptValueList_move, "QScriptValueList_move");
 
 procedure QScriptValueList_swap(handle:not null QScriptValueListH;fromIndex,toIndex: integer);
 pragma Import(C,QScriptValueList_swap, "QScriptValueList_swap");
 
 function  QScriptValueList_at(handle:not null QScriptValueListH;index: integer) return QScriptValueH;
 pragma Import(C,QScriptValueList_at, "QScriptValueList_at");
 
 procedure QScriptValueList_detach(handle:not null QScriptValueListH);
 pragma Import(C,QScriptValueList_detach, "QScriptValueList_detach");
 
 procedure QScriptValueList_reserve(handle:not null QScriptValueListH;size:integer);
 pragma Import(C,QScriptValueList_reserve, "QScriptValueList_reserve");
 
 procedure QScriptValueList_removeAt(handle:not null QScriptValueListH;index:integer);
 pragma Import(C,QScriptValueList_removeAt, "QScriptValueList_removeAt");
 
 procedure QScriptValueList_replace(handle:not null QScriptValueListH;index:integer;val: QScriptValueH);
 pragma Import(C,QScriptValueList_replace, "QScriptValueList_replace");
 
 function  QScriptValueList_takeAt(handle:not null QScriptValueListH;index:integer) return QScriptValueH;
 pragma Import(C,QScriptValueList_takeAt, "QScriptValueList_takeAt");
 
 function  QScriptValueList_takeFirst(handle:not null QScriptValueListH) return QScriptValueH;
 pragma Import(C,QScriptValueList_takeFirst, "QScriptValueList_takeFirst");
 
 function  QScriptValueList_takeLast(handle:not null QScriptValueListH) return QScriptValueH;
 pragma Import(C,QScriptValueList_takeLast, "QScriptValueList_takeLast");
 
 function  QScriptValueList_count(handle:not null QScriptValueListH) return integer;
 pragma Import(C,QScriptValueList_count, "QScriptValueList_count");
 

 
-----------------------------------------------------------------------------------------------------------
 function  QScriptValue_create(value:SpecialValue) return QScriptValueH;
 function  QScriptValue_create(value:boolean) return QScriptValueH;
 function  QScriptValue_create(value:integer) return QScriptValueH;
 function  QScriptValue_create(value:quint) return QScriptValueH;
 function  QScriptValue_create(value:double) return QScriptValueH;
 function  QScriptValue_create(value:QStringH) return QScriptValueH;
 function  QScriptValue_create(value:zstring) return QScriptValueH;
 function  QScriptValue_create(engine:QScriptEngineH; value:SpecialValue) return QScriptValueH;
 function  QScriptValue_create(engine:QScriptEngineH;value:boolean) return QScriptValueH;
 function  QScriptValue_create(engine:QScriptEngineH;value:integer) return QScriptValueH;
 function  QScriptValue_create(engine:QScriptEngineH;value:quint) return QScriptValueH;
 function  QScriptValue_create(engine:QScriptEngineH;value:double) return QScriptValueH;
 function  QScriptValue_create(engine:QScriptEngineH;value:QStringH) return QScriptValueH;
 function  QScriptValue_create(engine:QScriptEngineH;value:zstring) return QScriptValueH;

 function  QScriptValue_property(handle: not null QScriptValueH;name:QStringH) return QScriptValueH;
 function  QScriptValue_property(handle: not null QScriptValueH; arrayIndex:quint; mode:integer := ResolvePrototype) return QScriptValueH;
 function  QScriptValue_property(handle: not null QScriptValueH;name:QScriptStringH;mode:integer := ResolvePrototype) return QScriptValueH;
 procedure QScriptValue_setProperty(handle: not null QScriptValueH;name:QStringH;value: QScriptValueH);
 procedure QScriptValue_setProperty(handle: not null QScriptValueH; arrayIndex:quint;value:QScriptValueH;flags:integer := KeepExistingFlags);
 procedure QScriptValue_setProperty(handle: not null QScriptValueH;name:QScriptStringH;value:QScriptValueH;flags:integer := KeepExistingFlags);
 function  QScriptValue_propertyFlags(handle: not null QScriptValueH;name:QScriptStringH;mode:integer := ResolvePrototype) return integer;
 function  QScriptValue_call(handle: not null QScriptValueH; thisObject:QScriptValueH; arguments:QScriptValueH) return QScriptValueH;
 function  QScriptValue_call(handle: not null QScriptValueH) return QScriptValueH;
 function  QScriptValue_construct(handle: not null QScriptValueH; arguments:QScriptValueH) return QScriptValueH;
 function  QScriptValue_construct(handle: not null QScriptValueH) return QScriptValueH;
 function  QScriptValueList_create(list:QScriptValueListH) return QScriptValueListH;

end QT.QScriptValue;
