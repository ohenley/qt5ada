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
package body Qt.QDomNodeList is

function  QDomNodeList_create(list:QDomNodeListH) return QDomNodeListH is
begin
 return QDomNodeList_create1(list);
end;

end Qt.QDomNodeList;
