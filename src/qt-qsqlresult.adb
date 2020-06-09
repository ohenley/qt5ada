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

package body Qt.QSqlResult is

 procedure QSqlResult_bindValue(handle: not null QSqlResultH;placeholder:QStringH;value:QVariantH;prmType:Qt.QSql.ParamTypeFlag) is
 begin
   QSqlResult_bindValue2(handle,placeholder,value,prmType);
 end;

 function  QSqlResult_boundValue(handle: not null QSqlResultH;position:integer) return QVariantH is
 begin
   return QSqlResult_boundValue2(handle,position);
 end;

 function  QSqlResult_bindValueType(handle: not null QSqlResultH;position:integer) return integer is
 begin
   return  QSqlResult_bindValueType2(handle,position);
 end;

end;
