--
-- 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
-- �       D E S I G N   E N G I N E E R I N G            �D�S�        �
-- �            S O F T W A R E                           藩瞥�        �
-- �                                                                   �
-- �        QtAda - Ada to QT5 interface                               �
-- �                                                                   �
-- �        Author :  Leonid Dulman     2012                           �
-- � Copyright (C) 2012                                                �
-- 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
--
package body Qt.QSqlDriver is

function  QSqlDriver_open(handle: not null QSqlDriverH;dbName:QStringH;user,password,host: QStringH; port:integer; connOpts:QStringH) return boolean is
begin
  return  QSqlDriver_open2(handle,dbName,user,password,host,port,connOpts);
end;

end Qt.QSqlDriver;
