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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QFtp is

function  QFtp_list(handle: not null QFtpH) return integer is
begin
  return  QFtp_list1(handle);
end;

function  QFtp_get(handle: not null QFtph;  file: QStringH) return integer is
begin
  return  QFtp_get1(handle,file);
end;

function  QFtp_put(handle: not null QFtph; data: QByteArrayH; file: QStringH) return integer is
begin
  return  QFtp_put1(handle, data, file);
end;

function  QFtp_login(handle: not null QFtpH; user: QStringH) return integer is
begin
 return  QFtp_login2(handle, user);
end;

function  QFtp_login(handle: not null QFtpH) return integer is
begin
 return  QFtp_login3(handle);
end;

function  QFtp_get(handle: not null QFtpH;  fileName: QStringH; file: QFileH; trType:TransferType := Binary) return integer is
begin
  return  QFtp_get2(handle,fileName,file, trType);
end;

function  QFtp_put(handle: not null QFtpH; file: QFileH;  fileName: QStringH; trType:TransferType := Binary) return integer is
begin
  return  QFtp_put2(handle,file,fileName,trType);
end;

end Qt.QFtp;
