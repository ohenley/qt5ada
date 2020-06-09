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

package body QT.QScriptValue   is

 function  QScriptValue_create(value:SpecialValue) return QScriptValueH is
 begin
   return  QScriptValue_create2(value);
 end;

 function  QScriptValue_create(value:boolean) return QScriptValueH is
  begin
   return  QScriptValue_create3(value);
 end;

 function  QScriptValue_create(value:integer) return QScriptValueH is
  begin
   return  QScriptValue_create4(value);
 end;

 function  QScriptValue_create(value:quint) return QScriptValueH is
  begin
   return  QScriptValue_create5(value);
 end;

 function  QScriptValue_create(value:double) return QScriptValueH is
  begin
   return  QScriptValue_create6(value);
 end;

 function  QScriptValue_create(value:QStringH) return QScriptValueH is
  begin
   return  QScriptValue_create7(value);
 end;

 function  QScriptValue_create(value:zstring) return QScriptValueH is
  begin
   return  QScriptValue_create8(value);
 end;

 function  QScriptValue_create(engine:QScriptEngineH; value:SpecialValue) return QScriptValueH is
  begin
   return  QScriptValue_create9(engine,value);
 end;

 function  QScriptValue_create(engine:QScriptEngineH; value:boolean) return QScriptValueH is
  begin
   return  QScriptValue_create10(engine,value);
 end;

 function  QScriptValue_create(engine:QScriptEngineH; value:integer) return QScriptValueH is
  begin
   return  QScriptValue_create11(engine,value);
 end;

 function  QScriptValue_create(engine:QScriptEngineH; value:quint) return QScriptValueH is
  begin
   return  QScriptValue_create12(engine,value);
 end;

 function  QScriptValue_create(engine:QScriptEngineH; value:double) return QScriptValueH is
  begin
   return  QScriptValue_create13(engine,value);
 end;

 function  QScriptValue_create(engine:QScriptEngineH; value:QStringH) return QScriptValueH is
  begin
   return  QScriptValue_create14(engine,value);
 end;

 function  QScriptValue_create(engine:QScriptEngineH; value:zstring) return QScriptValueH is
  begin
   return  QScriptValue_create15(engine,value);
 end;

 function  QScriptValue_property(handle: not null QScriptValueH;name:QStringH) return QScriptValueH is
 begin
   return  QScriptValue_property2(handle,name);
 end;

 function  QScriptValue_property(handle: not null QScriptValueH; arrayIndex:quint; mode:integer := ResolvePrototype) return QScriptValueH is
 begin
   return  QScriptValue_property3(handle, arrayIndex, mode);
 end;

 function  QScriptValue_property(handle: not null QScriptValueH;name:QScriptStringH;mode:integer := ResolvePrototype) return QScriptValueH is
 begin
   return  QScriptValue_property4(handle,name,mode);
 end;

 procedure QScriptValue_setProperty(handle: not null QScriptValueH;name:QStringH;value: QScriptValueH) is
 begin
   QScriptValue_setProperty2(handle,name,value);
 end;

 procedure QScriptValue_setProperty(handle: not null QScriptValueH; arrayIndex:quint;value:QScriptValueH;flags:integer := KeepExistingFlags) is
 begin
   QScriptValue_setProperty3(handle, arrayIndex,value,flags);
 end;

 procedure QScriptValue_setProperty(handle: not null QScriptValueH;name:QScriptStringH;value:QScriptValueH;flags:integer := KeepExistingFlags) is
 begin
   QScriptValue_setProperty4(handle,name,value,flags);
 end;

 function  QScriptValue_propertyFlags(handle: not null QScriptValueH;name:QScriptStringH;mode:integer := ResolvePrototype) return integer is
 begin
   return  QScriptValue_propertyFlags2(handle,name,mode);
 end;

 function  QScriptValue_call(handle: not null QScriptValueH; thisObject:QScriptValueH; arguments:QScriptValueH) return QScriptValueH is
 begin
   return  QScriptValue_call2(handle, thisObject, arguments);
 end;

 function  QScriptValue_call(handle: not null QScriptValueH) return QScriptValueH is
 begin
   return  QScriptValue_call3(handle);
 end;

 function  QScriptValue_construct(handle: not null QScriptValueH; arguments:QScriptValueH) return QScriptValueH is
 begin
   return  QScriptValue_construct2(handle, arguments);
 end;

 function  QScriptValue_construct(handle: not null QScriptValueH) return QScriptValueH is
 begin
   return  QScriptValue_construct3(handle);
 end;

function  QScriptValueList_create(list:QScriptValueListH) return QScriptValueListH is
begin
  return  QScriptValueList_create2(list);
end;

end QT.QScriptValue;
