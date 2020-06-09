-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2014,2015                 บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2013,2014,2015                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QTextStream is

 function  QTextStream_create(device:QIODeviceH) return QTextStreamH is
 begin
  return  QTextStream_create2(device);
 end;

 function  QTextStream_create(str:QStringH;openMode: QIODeviceOpenMode := QIODeviceReadWrite) return QTextStreamH is
 begin
  return  QTextStream_create3(str,openMode);
 end;

 function  QTextStream_create(str:QByteArrayH;openMode: QIODeviceOpenMode := QIODeviceReadWrite) return QTextStreamH is
 begin
  return  QTextStream_create4(str,openMode);
 end;

 function  QTextStream_create(file:QFileH) return QTextStreamH is
 begin
  return  QTextStream_create7(file);
 end;

 procedure QTextStream_setCodec(handle:not null QTextStreamH;codec:QTextCodecH) is
 begin
   QTextStream_setCodec2(handle,codec);
 end;

 procedure QTextStream_setCodec(handle:not null QTextStreamH;codec:QByteArrayH) is
 begin
   QTextStream_setCodec3(handle,codec);
 end;

 function  QTextStream_read(handle:not null QTextStreamH) return QStringH is
 begin
   return  QTextStream_read2(handle);
 end;

end;
