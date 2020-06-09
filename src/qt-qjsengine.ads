-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString;     use Qt.QString;
with Qt.QObjectList; use Qt.QObjectlist;
with builtin;        use builtin;
package Qt.QJSEngine is

 type SpecialValue is (NullValue,UndefinedValue);
 pragma Convention(C,SpecialValue); 
    
 type ErrorType is (NoError,GenericError,EvalError, RangeError, ReferenceError, SyntaxError, TypeError, URIError);
 pragma Convention(C,ErrorType);    

 type Extension is new quint;
  TranslationExtension       : constant Extension := 1;
  ConsoleExtension           : constant Extension := 2;
  GarbageCollectionExtension : constant Extension := 4;
  AllExtensions              : constant Extension := 16#ffffffff#; 
 subtype Extensions is Extension;

 type ExecutionEngineH is new QObjectH;

 function  QJSValue_create(value:SpecialValue := UndefinedValue) return QJSValueH;
 pragma Import(C,QJSValue_create, "QJSValue_create");
 

 function  QJSEngine_create return QJSEngineH ;
 pragma Import(C,QJSEngine_create, "QJSEngine_create");
 
 function  QJSEngine_create2(parent:QObjectH) return QJSEngineH;
 pragma Import(C,QJSEngine_create2, "QJSEngine_create2");
 
 procedure QJSEngine_destroy(handle:not null QJSEngineH);
 pragma Import(C,QJSEngine_destroy, "QJSEngine_destroy");
 
 function  QJSEngine_globalObject(handle:not null QJSEngineH) return QJSValueH;
 pragma Import(C,QJSEngine_globalObject, "QJSEngine_globalObject");
 
 function  QJSEngine_evaluate(handle:not null QJSEngineH;program:QStringH;fileName :QStringH := QString_create;lineNumber :integer:=  1) return QJSValueH;
 pragma Import(C,QJSEngine_evaluate, "QJSEngine_evaluate");
 
 function  QJSEngine_importModule(handle:not null QJSEngineH ;fileName:QStringH) return QJSValueH;
 pragma Import(C,QJSEngine_importModule, "QJSEngine_importModule");
 
 function  QJSEngine_newObject(handle:not null QJSEngineH) return QJSValueH;
 pragma Import(C,QJSEngine_newObject, "QJSEngine_newObject");
 
 function  QJSEngine_newQObject(handle:not null QJSEngineH;object:QObjectH) return QJSValueH;
 pragma Import(C,QJSEngine_newQObject, "QJSEngine_newQObject");
 
 function  QJSEngine_newArray(handle:not null QJSEngineH;length :quint :=  0) return QJSValueH;
 pragma Import(C,QJSEngine_newArray, "QJSEngine_newArray");
 
 function  QJSEngine_newQMetaObject(handle:not null QJSEngineH;metaObject:QMetaObjectH) return QJSValueH;
 pragma Import(C,QJSEngine_newQMetaObject, "QJSEngine_newQMetaObject");
 
 function  QJSEngine_newErrorObject(handle:not null QJSEngineH;errorTp:ErrorType;message :QStringH := QString_create) return QJSValueH;
 pragma Import(C,QJSEngine_newErrorObject, "QJSEngine_newErrorObject");
 
 procedure QJSEngine_collectGarbage(handle:not null QJSEngineH);
 pragma Import(C,QJSEngine_collectGarbage, "QJSEngine_collectGarbage");
 
 procedure QJSEngine_installExtensions(handle:not null QJSEngineH;ext:Extensions;object : QJSValueH := QJSValue_create);
 pragma Import(C,QJSEngine_installExtensions, "QJSEngine_installExtensions");
 
 function  QJSEngine_handle(handle:not null QJSEngineH) return ExecutionEngineH;
 pragma Import(C,QJSEngine_handle, "QJSEngine_handle");
 
 procedure QJSEngine_throwError(handle:not null QJSEngineH;message:QStringH);
 pragma Import(C,QJSEngine_throwError, "QJSEngine_throwError");
 
 procedure QJSEngine_throwError2(handle:not null QJSEngineH;errorTp:ErrorType;message :  QStringH := QString_create);
 pragma Import(C,QJSEngine_throwError2, "QJSEngine_throwError2");

---------------------------------------------------
 function  QJSEngine_create(parent:QObjectH) return QJSEngineH;
 procedure QJSEngine_throwError(handle:not null QJSEngineH;errorTp:ErrorType;message :  QStringH := QString_create);
-----------------------------------------------------------------------------------------
 
 procedure QJSValue_destroy(handle:not null QJSValueH);
 pragma Import(C,QJSValue_destroy, "QJSValue_destroy");
 
 function  QJSValue_create2(other: not null QJSValueH) return QJSValueH;
 pragma Import(C,QJSValue_create2, "QJSValue_create2");
 
 function  QJSValue_create3(value:boolean) return QJSValueH;
 pragma Import(C,QJSValue_create3, "QJSValue_create3");
 
 function  QJSValue_create4(value:integer) return QJSValueH;
 pragma Import(C,QJSValue_create4, "QJSValue_create4");
 
 function  QJSValue_create5(value:quint) return QJSValueH;
 pragma Import(C,QJSValue_create5, "QJSValue_create5");
 
 function  QJSValue_create6(value:double) return QJSValueH;
 pragma Import(C,QJSValue_create6, "QJSValue_create6");
 
 function  QJSValue_create7(value:QStringH) return QJSValueH;
 pragma Import(C,QJSValue_create7, "QJSValue_create7");
 
 function  QJSValue_create8(value:QLatin1StringH) return QJSValueH;
 pragma Import(C,QJSValue_create8, "QJSValue_create8");
 
 function  QJSValue_create9(str:zstring) return QJSValueH;
 pragma Import(C,QJSValue_create9, "QJSValue_create9");
 
 function  QJSValue_create10(e:ExecutionEngineH;val:quint64) return QJSValueH;
 pragma Import(C,QJSValue_create10, "QJSValue_create10");
 
 function  QJSValue_isBool(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isBool, "QJSValue_isBool");
 
 function  QJSValue_isNumber(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isNumber, "QJSValue_isNumber");
 
 function  QJSValue_isNull(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isNull, "QJSValue_isNull");
 
 function  QJSValue_isString(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isString, "QJSValue_isString");
 
 function  QJSValue_isUndefined(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isUndefined, "QJSValue_isUndefined");
 
 function  QJSValue_isVariant(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isVariant, "QJSValue_isVariant");
 
 function  QJSValue_isQObject(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isQObject, "QJSValue_isQObject");
 
 function  QJSValue_isQMetaObject(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isQMetaObject, "QJSValue_isQMetaObject");
 
 function  QJSValue_isObject(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isObject, "QJSValue_isObject");
 
 function  QJSValue_isDate(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isDate, "QJSValue_isDate");
 
 function  QJSValue_isRegExp(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isRegExp, "QJSValue_isRegExp");
 
 function  QJSValue_isArray(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isArray, "QJSValue_isArray");
 
 function  QJSValue_isError(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isError, "QJSValue_isError");
 
 function  QJSValue_toString(handle:not null QJSValueH) return QStringH;
 pragma Import(C,QJSValue_toString, "QJSValue_toString");
 
 function  QJSValue_toNumber(handle:not null QJSValueH) return double;
 pragma Import(C,QJSValue_toNumber, "QJSValue_toNumber");
 
 function  QJSValue_toInt(handle:not null QJSValueH) return integer;
 pragma Import(C,QJSValue_toInt, "QJSValue_toInt");
 
 function  QJSValue_toUInt(handle:not null QJSValueH) return quint32;
 pragma Import(C,QJSValue_toUInt, "QJSValue_toUInt");
 
 function  QJSValue_toBool(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_toBool, "QJSValue_toBool");
 
 function  QJSValue_toVariant(handle:not null QJSValueH) return QVariantH;
 pragma Import(C,QJSValue_toVariant, "QJSValue_toVariant");
 
 function  QJSValue_toQObject(handle:not null QJSValueH) return QObjectH;
 pragma Import(C,QJSValue_toQObject, "QJSValue_toQObject");
 
 function QJSValue_toQMetaObject(handle:not null QJSValueH) return QMetaObjectH;
 pragma Import(C,QJSValue_toQMetaObject, "QJSValue_toQMetaObject");
 
 function  QJSValue_toDateTime(handle:not null QJSValueH) return QDateTimeH;
 pragma Import(C,QJSValue_toDateTime, "QJSValue_toDateTime");
 
 function  QJSValue_equals(handle:not null QJSValueH;other:QJSValueH) return boolean;
 pragma Import(C,QJSValue_equals, "QJSValue_equals");
 
 function  QJSValue_strictlyEquals(handle:not null QJSValueH;other:QJSValueH) return boolean;
 pragma Import(C,QJSValue_strictlyEquals, "QJSValue_strictlyEquals");
 
 function  QJSValue_prototype(handle:not null QJSValueH) return QJSValueH;
 pragma Import(C,QJSValue_prototype, "QJSValue_prototype");
 
 procedure QJSValue_setPrototype(handle:not null QJSValueH;prototype:QJSValueH);
 pragma Import(C,QJSValue_setPrototype, "QJSValue_setPrototype");
 
 function  QJSValue_property(handle:not null QJSValueH;name:QStringH) return QJSValueH;
 pragma Import(C,QJSValue_property, "QJSValue_property");
 
 procedure QJSValue_setProperty(handle:not null QJSValueH;name:QStringH;value: QJSValueH);
 pragma Import(C,QJSValue_setProperty, "QJSValue_setProperty");
 
 function  QJSValue_hasProperty(handle:not null QJSValueH;name:QStringH) return boolean;
 pragma Import(C,QJSValue_hasProperty, "QJSValue_hasProperty");
 
 function  QJSValue_hasOwnProperty(handle:not null QJSValueH;name:QStringH) return boolean;
 pragma Import(C,QJSValue_hasOwnProperty, "QJSValue_hasOwnProperty");
 
 function  QJSValue_property2(handle:not null QJSValueH;arrayIndex:quint32) return QJSValueH;
 pragma Import(C,QJSValue_property2, "QJSValue_property2");
 
 procedure QJSValue_setProperty2(handle:not null QJSValueH;arrayIndex:quint32;value: QJSValueH);
 pragma Import(C,QJSValue_setProperty2, "QJSValue_setProperty2");
 
 function  QJSValue_deleteProperty(handle:not null QJSValueH;name:QStringH) return boolean;
 pragma Import(C,QJSValue_deleteProperty, "QJSValue_deleteProperty");
 
 function  QJSValue_isCallable(handle:not null QJSValueH) return boolean;
 pragma Import(C,QJSValue_isCallable, "QJSValue_isCallable");
 
 function  QJSValue_call(handle:not null QJSValueH;args :QObjectListH := QObjectList_create) return QJSValueH;
 pragma Import(C,QJSValue_call, "QJSValue_call");
 
 function  QJSValue_callWithInstance(handle:not null QJSValueH;instance:QJSValueH;args : QObjectListH := QObjectList_create) return QJSValueH;
 pragma Import(C,QJSValue_callWithInstance, "QJSValue_callWithInstance");
 
 function  QJSValue_callAsConstructor(handle:not null QJSValueH;args :QObjectListH := QObjectList_create) return QJSValueH;
 pragma Import(C,QJSValue_callAsConstructor, "QJSValue_callAsConstructor");
 
 function  QJSValue_errorType(handle:not null QJSValueH) return ErrorType;
 pragma Import(C,QJSValue_errorType, "QJSValue_errorType");
 
 function  QJSValueList_at(args:QObjectListH;index:int) return QJSValueH;
 pragma Import(C,QJSValueList_at, "QJSValueList_at");
------------------------------------------------------ 
 function  QJSValue_create(other: not null QJSValueH) return QJSValueH;
 function  QJSValue_create(value:boolean) return QJSValueH;
 function  QJSValue_create(value:integer) return QJSValueH;
 function  QJSValue_create(value:quint) return QJSValueH;
 function  QJSValue_create(value:double) return QJSValueH;
 function  QJSValue_create(value:QStringH) return QJSValueH;
 function  QJSValue_create(value:QLatin1StringH) return QJSValueH;
 function  QJSValue_create(str:zstring) return QJSValueH;
 function  QJSValue_create(e:ExecutionEngineH;val:quint64) return QJSValueH;
 function  QJSValue_property(handle:not null QJSValueH;arrayIndex:quint32) return QJSValueH;
 procedure QJSValue_setProperty(handle:not null QJSValueH;arrayIndex:quint32;value: QJSValueH); 
-------------------------------------------------
 function  QJSValueIterator_create(value:QJSValueH) return QJSValueIteratorH;
 pragma Import(C,QJSValueIterator_create, "QJSValueIterator_create");
 
 procedure QJSValueIterator_destroy(handle:not null QJSValueIteratorH);
 pragma Import(C,QJSValueIterator_destroy, "QJSValueIterator_destroy");
 
 function  QJSValueIterator_hasNext(handle:not null QJSValueIteratorH) return boolean;
 pragma Import(C,QJSValueIterator_hasNext, "QJSValueIterator_hasNext");
 
 function  QJSValueIterator_next(handle:not null QJSValueIteratorH) return boolean;
 pragma Import(C,QJSValueIterator_next, "QJSValueIterator_next");
 
 function  QJSValueIterator_name(handle:not null QJSValueIteratorH) return QStringH;
 pragma Import(C,QJSValueIterator_name, "QJSValueIterator_name");
 
 function  QJSValueIterator_value(handle:not null QJSValueIteratorH) return QJSValueH;
 pragma Import(C,QJSValueIterator_value, "QJSValueIterator_value");
 

 end;
