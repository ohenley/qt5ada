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
package body Qt.QSqlIndex is

function  QSqlIndex_create(indx:QSqlIndexH) return QSqlIndexH is
begin
 return QSqlIndex1_create(indx);
end QSqlIndex_create;

procedure QSqlIndex_append(indx:QSqlIndexH;field:QSqlFieldH;desc:integer) is
begin
  QSqlIndex_append1(indx,field,desc);
end QSqlIndex_append;

end Qt.QSqlIndex;
