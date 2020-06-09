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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package  body Qt.QPicture             is

function QPicture_create(p1: QPictureH) return  QPictureH is
begin
 return QPicture_create2(p1);
end;

function QPicture_load(handle: not null  QPictureH; fileName: QStringH; format: zstring := null_ZStr) return Boolean is
begin
 return  QPicture_load2(handle, fileName, format);
end;

function QPicture_save(handle: not null  QPictureH; fileName: QStringH; format: zstring := null_ZStr) return Boolean is
begin
 return QPicture_save2(handle, fileName, format);
end;

function QPictureIO_create(ioDevice: QIODeviceH; format: zstring) return  QPictureIOH is
begin
 return  QPictureIO_create2(ioDevice, format);
end;

function QPictureIO_create(fileName: QStringH; format: zstring) return  QPictureIOH is
begin
 return  QPictureIO_create3(fileName, format);
end;

function  QPictureIO_pictureFormat(p1: QIODeviceH) return  QByteArrayH is
begin
 return QPictureIO_pictureFormat2(p1);
end;

end Qt.QPicture;
