-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QBluetoothSocket  is

 function  QBluetoothSocket_create(socketType:Qt.QBluetoothServiceInfo.Protocol;parent:QObjectH := null) return QIODeviceH is
 begin
  return QBluetoothSocket_create2(socketType,parent);
 end;

 procedure QBluetoothSocket_connectToService(handle:not null QIODeviceH;address:QBluetoothAddressH;uuid: QBluetoothUuidH;openMd:OpenMode := QIODeviceReadWrite) is
 begin
  QBluetoothSocket_connectToService2(handle,address,uuid,openMd);
 end;

 procedure QBluetoothSocket_connectToService(handle:not null QIODeviceH;address:QBluetoothAddressH;port: Unsigned_short;openMd: OpenMode := QIODeviceReadWrite) is
 begin
  QBluetoothSocket_connectToService3(handle,address,port,openMd);
 end;

end;
