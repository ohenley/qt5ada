--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QIODevice            is

function  QIODevice_read(handle: not null  QIODeviceH;maxlen: int64) return QByteArrayH is
begin
 return QIODevice_read2(handle, maxlen);
end;

function  QIODevice_readLine(handle: not null  QIODeviceH; maxlen: int64 := 0) return QByteArrayH is
begin
  return QIODevice_readLine2(handle, maxlen);
end;

function QIODevice_write(handle: not null  QIODeviceH; data: QByteArrayH) return  int64 is
begin
 return QIODevice_write2(handle, data);
end;

function  QIODevice_peek(handle: not null  QIODeviceH; maxlen: int64) return QByteArrayH is
begin
 return QIODevice_peek2(handle, maxlen);
end;

function  QIODevice_read(handle: not null  QIODeviceH; maxlen: int64) return QStringH is
begin
  return   QIODevice_read3(handle, maxlen);
end;

function  QIODevice_readAll(handle: not null  QIODeviceH) return QStringH is
begin
  return  QIODevice_readAll2(handle);
end;

function  QIODevice_readLine(handle: not null  QIODeviceH; maxlen: int64 := 0) return QStringH is
begin
  return  QIODevice_readLine3(handle, maxlen);
end;

function QIODevice_write(handle: not null  QIODeviceH; data: zstring) return  int64 is
begin
   return  QIODevice_write3(handle,  data);
end;

function  QIODevice_readAll(handle:not null QIODeviceH) return zstring is
begin
  return  QIODevice_readAll3(handle);
end;

function  QIODevice_readLine(handle:not null QIODeviceH; maxlen:qint64) return zstring is
begin
  return  QIODevice_readLine4(handle,maxlen);
end;

end  Qt.QIODevice;
