-- 浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
-- �       D E S I G N   E N G I N E E R I N G            �D�S�        �
-- �            S O F T W A R E                           藩瞥�        �
-- �                                                                   �
-- �        QtAda - Ada to QT5 interface                               �
-- �                                                                   �
-- �        Author :  Leonid Dulman     2017                           �
-- � Copyright (C) 2017                                                �
-- 藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様様�

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.
--

package body  Qt.QAbstractItemModelTester is
 
 function  QAbstractItemModelTester_create(model:QAbstractItemModelH;mode: FailureReportingMode;parent : QObjectH := null) return QAbstractItemModelTesterH is
 begin
   return  QAbstractItemModelTester_create2(model,mode,parent);
 end;

end;
