--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.


package body Qt.QCommandLineParser  is

 procedure QCommandLineParser_process(handle:QCommandLineParserH;app:QCoreApplicationH) is
 begin
  QCommandLineParser_process2(handle,app);
 end;

 function  QCommandLineParser_isSet(handle:QCommandLineParserH;option:QCommandLineOptionH) return boolean is
 begin
   return  QCommandLineParser_isSet2(handle,option);
 end;

 function  QCommandLineParser_value(handle:QCommandLineParserH;option:QCommandLineOptionH) return QStringH is
 begin
   return  QCommandLineParser_value2(handle,option);
 end;

 function  QCommandLineParser_values(handle:QCommandLineParserH;option:QCommandLineOptionH) return QStringListH is
 begin
   return  QCommandLineParser_values2(handle,option);
 end;

end;
