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

package Qt.QBluetoothAddress  is

 function  QBluetoothAddress_create return QBluetoothAddressH;
 pragma Import(C,QBluetoothAddress_create, "QBluetoothAddress_create");
 
 function  QBluetoothAddress_create2(address:QStringH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothAddress_create2, "QBluetoothAddress_create2");
 
 function  QBluetoothAddress_create3(address:quint64) return QBluetoothAddressH ;
 pragma Import(C,QBluetoothAddress_create3, "QBluetoothAddress_create3");
 
 function  QBluetoothAddress_create4(other:QBluetoothAddressH) return QBluetoothAddressH ;
 pragma Import(C,QBluetoothAddress_create4, "QBluetoothAddress_create4");
 
 procedure QBluetoothAddress_delete(handle:not null QBluetoothAddressH);
 pragma Import(C,QBluetoothAddress_delete, "QBluetoothAddress_delete");
 
 function  QBluetoothAddress_isNull(handle:not null QBluetoothAddressH) return boolean;
 pragma Import(C,QBluetoothAddress_isNull, "QBluetoothAddress_isNull");
 
 procedure QBluetoothAddress_clear(handle:not null QBluetoothAddressH);
 pragma Import(C,QBluetoothAddress_clear, "QBluetoothAddress_clear");
 
 function  QBluetoothAddress_toUInt64(handle:not null QBluetoothAddressH) return quint64;
 pragma Import(C,QBluetoothAddress_toUInt64, "QBluetoothAddress_toUInt64");
 
 function  QBluetoothAddress_toString(handle:not null QBluetoothAddressH) return QStringH;
 pragma Import(C,QBluetoothAddress_toString, "QBluetoothAddress_toString");
 
 function  QBluetoothAddress_letter(handle,other:not null QBluetoothAddressH) return  boolean;
 pragma Import(C,QBluetoothAddress_letter, "QBluetoothAddress_letter");
 
 function  QBluetoothAddress_equal(handle,other:not null QBluetoothAddressH) return  boolean;
 pragma Import(C,QBluetoothAddress_equal, "QBluetoothAddress_equal");

--------------------------------------------------------------------------
 function  QBluetoothAddress_create(address:QStringH) return QBluetoothAddressH;
 function  QBluetoothAddress_create(address:quint64) return QBluetoothAddressH ;
 function  QBluetoothAddress_create(other:QBluetoothAddressH) return QBluetoothAddressH ;

end;
