-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2016                      บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QRegExp is

 function  QRegExp_create( pattern:QStringH;cs: QtCaseSensitivity := QtCaseSensitive; syntax: PatternSyntax := RegExp) return QRegExpH is
 begin
   return  QRegExp_create2( pattern,cs,syntax);
 end;

 function  QRegExp_create(regExp:QRegExpH) return QRegExpH  is
 begin
   return  QRegExp_create3(regExp);
 end;
end;  
