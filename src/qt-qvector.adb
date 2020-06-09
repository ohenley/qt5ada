--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QVector  is

 function  QIntVector_create(size:integer) return QVectorH is
 begin
  return QIntVector_create2(size);
 end;

 procedure QIntVector_append(handle:not null QVectorH;value:QVectorH) is
 begin
   QIntVector_append2(handle,value);
 end;

 procedure QIntVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  integer) is
 begin
   QIntVector_insert2(handle,i,count,value);
 end;

 procedure QIntVector_remove(handle:not null QVectorH;i:integer;count: integer) is
 begin
   QIntVector_remove2(handle,i,count);
 end;

 function  QIntVector_count(handle:not null QVectorH;value:integer)  return integer is
 begin
   return  QIntVector_count2(handle,value);
 end;

 function  QObjectVector_create(size:integer) return QVectorH is
 begin
   return  QObjectVector_create2(size);
 end;

 procedure QObjectVector_append(handle:not null QVectorH;value: QVectorH) is
 begin
   QObjectVector_append2(handle,value);
 end;

 procedure QObjectVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  QObjectH) is
 begin
   QObjectVector_insert2(handle,i,count,value);
 end;

 procedure QObjectVector_remove(handle:not null QVectorH;i:integer;count: integer) is
 begin
   QObjectVector_remove2(handle,i,count);
 end;

 function  QObjectVector_count(handle:not null QVectorH;value: QObjectH)  return integer is
 begin
   return QObjectVector_count2(handle,value);
 end;

 function  QStringVector_create(size:integer) return QVectorH is
 begin
   return  QStringVector_create2(size);
 end;

 procedure QStringVector_append(handle:not null QVectorH;value: QVectorH) is
 begin
   QStringVector_append2(handle,value);
 end;

 procedure QStringVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  QStringH) is
 begin
   QStringVector_insert2(handle,i,count,value);
 end;

 procedure QStringVector_remove(handle:not null QVectorH;i:integer;count: integer) is
 begin
   QStringVector_remove2(handle,i,count);
 end;

 function  QStringVector_count(handle:not null QVectorH;value: QStringH)  return integer is
 begin
   return  QStringVector_count2(handle,value);
 end;
 function  QRealVector_create(size:integer) return QVectorH is
 begin
   return  QRealVector_create2(size);
 end;

 procedure QRealVector_append(handle:not null QVectorH;value:QVectorH) is
 begin
   QRealVector_append2(handle,value);
 end;

 procedure QRealVector_insert(handle:not null QVectorH;i:integer;count: integer;value:  qreal) is
 begin
   QRealVector_insert2(handle,i,count,value);
 end;

 procedure QRealVector_remove(handle:not null QVectorH;i:integer;count: integer) is
 begin
   QRealVector_remove2(handle,i,count);
 end;

end; 
