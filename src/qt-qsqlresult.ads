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

with Qt.QSql;    
package Qt.QSqlResult is

 procedure QSqlResult_destroy(handle: not null QSqlResultH);
 pragma Import(C,QSqlResult_destroy, "QSqlResult_destroy");
 
 function  QSqlResult_handle(handle: not null  QSqlResultH)return QVariantH;
 pragma Import(C,QSqlResult_handle, "QSqlResult_handle");
 
 function  QSqlResult_isValid(handle: not null QSqlResultH)return boolean;
 pragma Import(C,QSqlResult_isValid, "QSqlResult_isValid");
 
 function  QSqlResult_at(handle: not null QSqlResultH) return integer;
 pragma Import(C,QSqlResult_at, "QSqlResult_at");
 
 function  QSqlResult_lastQuery(handle: not null QSqlResultH) return QStringH;
 pragma Import(C,QSqlResult_lastQuery, "QSqlResult_lastQuery");
 
 function  QSqlResult_lastError(handle: not null QSqlResultH) return QSqlErrorH;
 pragma Import(C,QSqlResult_lastError, "QSqlResult_lastError");
 
 function  QSqlResult_isActive(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_isActive, "QSqlResult_isActive");
 
 function  QSqlResult_isSelect(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_isSelect, "QSqlResult_isSelect");
 
 function  QSqlResult_isForwardOnly(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_isForwardOnly, "QSqlResult_isForwardOnly");
 
 function  QSqlResult_driver(handle: not null QSqlResultH) return QSqlDriverH;
 pragma Import(C,QSqlResult_driver, "QSqlResult_driver");
 
 procedure QSqlResult_setAt(handle: not null QSqlResultH; index:integer);
 pragma Import(C,QSqlResult_setAt, "QSqlResult_setAt");
 
 procedure QSqlResult_setActive(handle: not null QSqlResultH;isActive:boolean);
 pragma Import(C,QSqlResult_setActive, "QSqlResult_setActive");
 
 procedure QSqlResult_setLastError(handle: not null QSqlResultH; error:QSqlErrorH);
 pragma Import(C,QSqlResult_setLastError, "QSqlResult_setLastError");
 
 procedure QSqlResult_setQuery(handle: not null QSqlResultH;query:QStringH);
 pragma Import(C,QSqlResult_setQuery, "QSqlResult_setQuery");
 
 procedure QSqlResult_setSelect(handle: not null QSqlResultH;isSelect:boolean);
 pragma Import(C,QSqlResult_setSelect, "QSqlResult_setSelect");
 
 procedure QSqlResult_setForwardOnly(handle: not null QSqlResultH;forward:boolean);
 pragma Import(C,QSqlResult_setForwardOnly, "QSqlResult_setForwardOnly");
 
 function  QSqlResult_exec(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_exec, "QSqlResult_exec");
 
 function  QSqlResult_prepare(handle: not null QSqlResultH;query:QStringH) return boolean;
 pragma Import(C,QSqlResult_prepare, "QSqlResult_prepare");
 
 function  QSqlResult_savePrepare(handle: not null QSqlResultH; sqlquery:QStringH) return boolean;
 pragma Import(C,QSqlResult_savePrepare, "QSqlResult_savePrepare");
 
 procedure QSqlResult_bindValue(handle: not null QSqlResultH; position:integer; value:QVariantH; prmType:Qt.QSql.ParamTypeFlag);
 pragma Import(C,QSqlResult_bindValue, "QSqlResult_bindValue");
 
 procedure QSqlResult_bindValue2(handle: not null QSqlResultH;placeholder:QStringH;value:QVariantH;prmType:Qt.QSql.ParamTypeFlag);
 pragma Import(C,QSqlResult_bindValue2, "QSqlResult_bindValue2");
 
 procedure QSqlResult_addBindValue(handle: not null QSqlResultH;value:QVariantH;prmType:Qt.QSql.ParamTypeFlag);
 pragma Import(C,QSqlResult_addBindValue, "QSqlResult_addBindValue");
 
 function  QSqlResult_boundValue(handle: not null QSqlResultH; placeholder:QStringH) return QVariantH;
 pragma Import(C,QSqlResult_boundValue, "QSqlResult_boundValue");
 
 function  QSqlResult_boundValue2(handle: not null QSqlResultH;position:integer) return QVariantH;
 pragma Import(C,QSqlResult_boundValue2, "QSqlResult_boundValue2");
 
 function  QSqlResult_bindValueType(handle: not null QSqlResultH; placeholder:QStringH) return integer;
 pragma Import(C,QSqlResult_bindValueType, "QSqlResult_bindValueType");
 
 function  QSqlResult_bindValueType2(handle: not null QSqlResultH;position:integer) return integer;
 pragma Import(C,QSqlResult_bindValueType2, "QSqlResult_bindValueType2");
 
 function  QSqlResult_boundValueCount(handle: not null QSqlResultH) return integer;
 pragma Import(C,QSqlResult_boundValueCount, "QSqlResult_boundValueCount");
 
 function  QSqlResult_boundValues(handle: not null QSqlResultH) return QVectorH;
 pragma Import(C,QSqlResult_boundValues, "QSqlResult_boundValues");
 
 function  QSqlResult_executedQuery(handle: not null QSqlResultH) return QStringH;
 pragma Import(C,QSqlResult_executedQuery, "QSqlResult_executedQuery");
 
 function  QSqlResult_boundValueName(handle: not null QSqlResultH;position:integer) return QStringH;
 pragma Import(C,QSqlResult_boundValueName, "QSqlResult_boundValueName");
 
 procedure QSqlResult_clear(handle: not null QSqlResultH);
 pragma Import(C,QSqlResult_clear, "QSqlResult_clear");
 
 function  QSqlResult_hasOutValues(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_hasOutValues, "QSqlResult_hasOutValues");
 
 function  QSqlResult_bindingSyntax(handle: not null QSqlResultH) return integer;
 pragma Import(C,QSqlResult_bindingSyntax, "QSqlResult_bindingSyntax");
 
 function  QSqlResult_data(handle: not null QSqlResultH;index:integer) return QVariantH;
 pragma Import(C,QSqlResult_data, "QSqlResult_data");
 
 function  QSqlResult_isNull(handle: not null QSqlResultH;index:integer) return boolean;
 pragma Import(C,QSqlResult_isNull, "QSqlResult_isNull");
 
 function  QSqlResult_reset(handle: not null QSqlResultH; sqlquery:QStringH) return boolean;
 pragma Import(C,QSqlResult_reset, "QSqlResult_reset");
 
 function  QSqlResult_fetch(handle: not null QSqlResultH;index:integer) return boolean;
 pragma Import(C,QSqlResult_fetch, "QSqlResult_fetch");
 
 function  QSqlResult_fetchNext(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_fetchNext, "QSqlResult_fetchNext");
 
 function  QSqlResult_fetchPrevious(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_fetchPrevious, "QSqlResult_fetchPrevious");
 
 function  QSqlResult_fetchFirst(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_fetchFirst, "QSqlResult_fetchFirst");
 
 function  QSqlResult_fetchLast(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_fetchLast, "QSqlResult_fetchLast");
 
 function  QSqlResult_size(handle: not null QSqlResultH) return integer;
 pragma Import(C,QSqlResult_size, "QSqlResult_size");
 
 function  QSqlResult_numRowsAffected(handle: not null QSqlResultH) return integer;
 pragma Import(C,QSqlResult_numRowsAffected, "QSqlResult_numRowsAffected");
 
 function  QSqlResult_record(handle: not null QSqlResultH) return QSqlRecordH;
 pragma Import(C,QSqlResult_record, "QSqlResult_record");
 
 function  QSqlResult_lastInsertId(handle: not null QSqlResultH) return QVariantH;
 pragma Import(C,QSqlResult_lastInsertId, "QSqlResult_lastInsertId");
 
 procedure QSqlResult_virtual_hook(handle: not null QSqlResultH;index:integer; data:void_Star);
 pragma Import(C,QSqlResult_virtual_hook, "QSqlResult_virtual_hook");
 
 function  QSqlResult_execBatch(handle: not null QSqlResultH; arrayBind : boolean := false) return boolean;
 pragma Import(C,QSqlResult_execBatch, "QSqlResult_execBatch");
 
 procedure QSqlResult_detachFromResultSet(handle: not null QSqlResultH);
 pragma Import(C,QSqlResult_detachFromResultSet, "QSqlResult_detachFromResultSet");
 
 procedure QSqlResult_setNumericalPrecisionPolicy(handle: not null QSqlResultH;policy: Qt.QSql.NumericalPrecisionPolicy);
 pragma Import(C,QSqlResult_setNumericalPrecisionPolicy, "QSqlResult_setNumericalPrecisionPolicy");
 
 function  QSqlResult_numericalPrecisionPolicy(handle: not null QSqlResultH) return Qt.QSql.NumericalPrecisionPolicy;
 pragma Import(C,QSqlResult_numericalPrecisionPolicy, "QSqlResult_numericalPrecisionPolicy");
 
 function  QSqlResult_nextResult(handle: not null QSqlResultH) return boolean;
 pragma Import(C,QSqlResult_nextResult, "QSqlResult_nextResult");

-------------------------------------------------------------------------- 
 procedure QSqlResult_bindValue(handle: not null QSqlResultH;placeholder:QStringH;value:QVariantH;prmType:Qt.QSql.ParamTypeFlag);
 function  QSqlResult_boundValue(handle: not null QSqlResultH;position:integer) return QVariantH;
 function  QSqlResult_bindValueType(handle: not null QSqlResultH;position:integer) return integer;

end;
