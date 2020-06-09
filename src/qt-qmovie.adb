--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman          2012                      บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
with Qt.QByteArrayList; use Qt.QByteArrayList;
with Qt.QString       ; use Qt.QString;

package body Qt.QMovie is

function QMovie_create(device : QIODeviceH; format : QByteArrayH := QByteArray_create; parent : QObjectH := null) return  QMovieH is
begin
 return QMovie_create1(device, format, parent);
end;

function QMovie_create(fileName : QStringH; format : QByteArrayH := QByteArray_create; parent : QObjectH := null) return  QMovieH is
begin
 return QMovie_create2(fileName, format, parent);
end;

function QMovie_numberOfSupportedFormats return integer is
begin
  return QByteArrayList_count(handle => QMovie_supportedFormats);
end;

function QMovie_SupportedFormatAt(index: integer) return QStringH is
 format : QByteArrayH;
begin
 format := QByteArrayList_takeAt(handle => QMovie_supportedFormats, index => index);
 return QString_create(arg1 => format);
end;
end Qt.QMovie;
