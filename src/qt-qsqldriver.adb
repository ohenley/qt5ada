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
package body Qt.QSqlDriver is

function  QSqlDriver_open(handle: not null QSqlDriverH;dbName:QStringH;user,password,host: QStringH; port:integer; connOpts:QStringH) return boolean is
begin
  return  QSqlDriver_open2(handle,dbName,user,password,host,port,connOpts);
end;

end Qt.QSqlDriver;
