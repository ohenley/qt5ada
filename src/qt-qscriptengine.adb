--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body QT.QScriptEngine  is

 function  QScriptEngine_evaluate(handle: not null QScriptEngineH; program: QScriptProgramH) return QScriptValueH is
 begin
   return  QScriptEngine_evaluate2(handle, program);
 end;

 procedure QScriptEngine_abortEvaluation(handle: not null QScriptEngineH) is
 begin
   QScriptEngine_abortEvaluation2(handle);
 end;

 function  QScriptEngine_newFunction(handle: not null QScriptEngineH; signature:FunctionSignature; prototype:QScriptValueH; length:integer := 0) return QScriptValueH is
 begin
   return  QScriptEngine_newFunction2(handle, signature, prototype, length);
 end;

 function  QScriptEngine_newFunction(handle: not null QScriptEngineH; signature:FunctionWithArgSignature; arg:void_Star) return QScriptValueH is
 begin
   return  QScriptEngine_newFunction3(handle, signature, arg);
 end;

 function  QScriptEngine_newVariant(handle: not null QScriptEngineH;object:QScriptValueH;value: QVariantH) return QScriptValueH is
 begin
   return  QScriptEngine_newVariant2(handle,object,value);
 end;

 function  QScriptEngine_newObject(handle: not null QScriptEngineH; scriptClass:QScriptClassH; data:QScriptValueH) return QScriptValueH is
 begin
   return  QScriptEngine_newObject2(handle, scriptClass, data);
 end;

 function  QScriptEngine_newObject(handle: not null QScriptEngineH; scriptClass:QScriptClassH) return QScriptValueH is
 begin
   return  QScriptEngine_newObject3(handle, scriptClass);
 end;

 function  QScriptEngine_newDate(handle: not null QScriptEngineH;value: QDateTimeH) return QScriptValueH is
 begin
   return  QScriptEngine_newDate2(handle,value);
 end;

 function  QScriptEngine_newQObject(handle:not null QScriptEngineH; scriptObject:QScriptValueH; object:QObjectH;ownership:integer := QtOwnership;options: integer := 0) return QScriptValueH is
 begin
   return  QScriptEngine_newQObject2(handle,scriptObject,object,ownership,options);
 end;
 
end QT.QScriptEngine;
