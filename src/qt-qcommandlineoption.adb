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

package body Qt.QCommandLineOption  is

 function  QCommandLineOption_create(names:QStringListH; description,valueName,defaultValue:QStringH := QString_create) return QCommandLineOptionH is
 begin
   return  QCommandLineOption_create2(names,description,valueName,defaultValue);
 end;

 function  QCommandLineOption_create(other:not null QCommandLineOptionH) return QCommandLineOptionH is
 begin
  return  QCommandLineOption_create3(other);
 end;

end;
