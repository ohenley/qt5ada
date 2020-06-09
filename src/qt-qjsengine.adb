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

package body Qt.QJSEngine is

 function  QJSEngine_create(parent:QObjectH) return QJSEngineH is
 begin
   return  QJSEngine_create2(parent);
 end;

 procedure QJSEngine_throwError(handle:not null QJSEngineH;errorTp:ErrorType;message :  QStringH := QString_create) is
 begin
  QJSEngine_throwError2(handle,errorTp,message);
 end;

 function  QJSValue_create(other: not null QJSValueH) return QJSValueH is
 begin
   return  QJSValue_create2(other);
 end;

 function  QJSValue_create(value:boolean) return QJSValueH is
 begin
   return  QJSValue_create3(value);
 end;

 function  QJSValue_create(value:integer) return QJSValueH is
 begin
   return  QJSValue_create4(value);
 end;

 function  QJSValue_create(value:quint) return QJSValueH is
 begin
   return  QJSValue_create5(value);
 end;

 function  QJSValue_create(value:double) return QJSValueH is
 begin
   return  QJSValue_create6(value);
 end;

 function  QJSValue_create(value:QStringH) return QJSValueH is
 begin
   return  QJSValue_create7(value);
 end;

 function  QJSValue_create(value:QLatin1StringH) return QJSValueH is
 begin
   return  QJSValue_create8(value);
 end;

 function  QJSValue_create(str:zstring) return QJSValueH is
 begin
   return  QJSValue_create9(str);
 end;

 function  QJSValue_create(e:ExecutionEngineH;val:quint64) return QJSValueH is
 begin
   return  QJSValue_create10(e,val);
 end;

 function  QJSValue_property(handle:not null QJSValueH;arrayIndex:quint32) return QJSValueH is
 begin
   return  QJSValue_property2(handle,arrayIndex);
 end;

 procedure QJSValue_setProperty(handle:not null QJSValueH;arrayIndex:quint32;value: QJSValueH) is
 begin
   QJSValue_setProperty2(handle,arrayIndex,value);
 end;

end;
