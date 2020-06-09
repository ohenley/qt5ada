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

package body Qt.QBluetoothDeviceInfo  is

 function  QBluetoothDeviceInfo_create(address:QBluetoothAddressH;name:QStringH;classOfDevice:quint) return QBluetoothDeviceInfoH  is
 begin
  return QBluetoothDeviceInfo_create2(address,name,classOfDevice);
 end;

 function  QBluetoothDeviceInfo_create(other:QBluetoothDeviceInfoH) return QBluetoothDeviceInfoH is
 begin
  return  QBluetoothDeviceInfo_create3(other);
 end;

end;
