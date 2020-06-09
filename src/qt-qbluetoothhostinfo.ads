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

package Qt.QBluetoothHostInfo  is

 function  QBluetoothHostInfo_create return QBluetoothHostInfoH;
 pragma Import(C,QBluetoothHostInfo_create, "QBluetoothHostInfo_create");
 
 function  QBluetoothHostInfo_create2(other:QBluetoothHostInfoH) return QBluetoothHostInfoH ;
 pragma Import(C,QBluetoothHostInfo_create2, "QBluetoothHostInfo_create2");
 
 procedure  QBluetoothHostInfo_delete(handle:not null QBluetoothHostInfoH);
 pragma Import(C,QBluetoothHostInfo_delete, "QBluetoothHostInfo_delete");
 
 procedure QBluetoothHostInfo_setName(handle:not null QBluetoothHostInfoH;name:QStringH);
 pragma Import(C,QBluetoothHostInfo_setName, "QBluetoothHostInfo_setName");
 
 function  QBluetoothHostInfo_name(handle:not null QBluetoothHostInfoH) return QStringH;
 pragma Import(C,QBluetoothHostInfo_name, "QBluetoothHostInfo_name");
 
 function  QBluetoothHostInfo_address(handle:not null QBluetoothHostInfoH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothHostInfo_address, "QBluetoothHostInfo_address");
 
 procedure QBluetoothHostInfo_setAddress(handle:not null QBluetoothHostInfoH;address:QBluetoothAddressH);
 pragma Import(C,QBluetoothHostInfo_setAddress, "QBluetoothHostInfo_setAddress");
 
 function  QBluetoothHostInfo_create(other:QBluetoothHostInfoH) return QBluetoothHostInfoH ;

end;
