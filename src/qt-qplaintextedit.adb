--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QPlainTextEdit   is

 function  QPlainTextEdit_create(parent:QWidgetH := null) return  QPlainTextEditH is
 begin
   return  QPlainTextEdit_create2(parent);
 end;

 function  QPlainTextEdit_find(handle:not null QPlainTextEditH;exp:QRegExpH;options: quint) return boolean is
 begin
   return QPlainTextEdit_find2(handle,exp,options);
 end;

 function  QPlainTextEdit_find(handle:not null QPlainTextEditH;exp:QRegularExpressionH;options: quint) return boolean is 
 begin
   return QPlainTextEdit_find3(handle,exp,options);
 end;

 function  QPlainTextEdit_inputMethodQuery(handle:not null QPlainTextEditH;property:QtInputMethodQuery) return QVariantH is
 begin
   return  QPlainTextEdit_inputMethodQuery2(handle,property);
 end;
 
end Qt.QPlainTextEdit;
