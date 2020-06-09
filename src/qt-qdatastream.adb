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
package body Qt.QDataStream is

function  QDataStream_create(dev:QIODeviceH) return QDataStreamH is
begin
 return QDataStream_create1(dev);
end;

function QDataStream_create(ba:QByteArrayH;mode:integer) return QDataStreamH is
begin
 return QDataStream_create2(ba,mode);
end;

end Qt.QDataStream;
