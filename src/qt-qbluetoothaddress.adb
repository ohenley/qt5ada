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

package body Qt.QBluetoothAddress  is

 function  QBluetoothAddress_create(address:QStringH) return QBluetoothAddressH is
 begin
  return QBluetoothAddress_create2(address);
 end;

 function  QBluetoothAddress_create(address:quint64) return QBluetoothAddressH is
 begin
  return  QBluetoothAddress_create3(address);
 end;

 function  QBluetoothAddress_create(other:QBluetoothAddressH) return QBluetoothAddressH is
 begin
  return  QBluetoothAddress_create4(other);
 end;

end;
