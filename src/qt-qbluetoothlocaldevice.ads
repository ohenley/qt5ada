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

package Qt.QBluetoothLocalDevice is

 type Pairing is (Unpaired,Paired,AuthorizedPaired);
 pragma convention(C,Pairing);

 type HostMode is (HostPoweredOff,HostConnectable,HostDiscoverable,HostDiscoverableLimitedInquiry);
 pragma convention(C,HostMode);
   
 type Error is new Cardinal;
 NoError      : constant Error := 0;
 PairingError : constant Error := 1;
 UnknownError : constant Error := 100;
   
 function  QBluetoothLocalDevice_create(parent:QObjectH := null) return QIODeviceH;
 pragma Import(C,QBluetoothLocalDevice_create, "QBluetoothLocalDevice_create");
 
 function  QBluetoothLocalDevice_create2(address:QBluetoothAddressH;parent:QObjectH := null) return QIODeviceH;
 pragma Import(C,QBluetoothLocalDevice_create2, "QBluetoothLocalDevice_create2");
 
 procedure  QBluetoothLocalDevice_delete(handle:not null QIODeviceH);
 pragma Import(C,QBluetoothLocalDevice_delete, "QBluetoothLocalDevice_delete");
 
 function  QBluetoothLocalDevice_isValid(handle:not null QIODeviceH) return boolean;
 pragma Import(C,QBluetoothLocalDevice_isValid, "QBluetoothLocalDevice_isValid");
 
 procedure QBluetoothLocalDevice_requestPairing(handle:not null QIODeviceH;address:QBluetoothAddressH; pair:Pairing);
 pragma Import(C,QBluetoothLocalDevice_requestPairing, "QBluetoothLocalDevice_requestPairing");
 
 function  QBluetoothLocalDevice_pairingStatus(handle:not null QIODeviceH;address:QBluetoothAddressH) return Pairing;
 pragma Import(C,QBluetoothLocalDevice_pairingStatus, "QBluetoothLocalDevice_pairingStatus");
 
 procedure QBluetoothLocalDevice_setHostMode(handle:not null QIODeviceH;mode:HostMode);
 pragma Import(C,QBluetoothLocalDevice_setHostMode, "QBluetoothLocalDevice_setHostMode");
 
 function  QBluetoothLocalDevice_hostMode(handle:not null QIODeviceH) return HostMode;
 pragma Import(C,QBluetoothLocalDevice_hostMode, "QBluetoothLocalDevice_hostMode");
 
 function  QBluetoothLocalDevice_connectedDevices(handle:not null QIODeviceH) return QObjectListH;
 pragma Import(C,QBluetoothLocalDevice_connectedDevices, "QBluetoothLocalDevice_connectedDevices");
 
 procedure QBluetoothLocalDevice_powerOn(handle:not null QIODeviceH);
 pragma Import(C,QBluetoothLocalDevice_powerOn, "QBluetoothLocalDevice_powerOn");
 
 function  QBluetoothLocalDevice_name(handle:not null QIODeviceH) return QStringH;
 pragma Import(C,QBluetoothLocalDevice_name, "QBluetoothLocalDevice_name");
 
 function  QBluetoothLocalDevice_address(handle:not null QIODeviceH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothLocalDevice_address, "QBluetoothLocalDevice_address");
 
 procedure QBluetoothLocalDevice_pairingConfirmation(handle:not null QIODeviceH;confirmation:boolean);
 pragma Import(C,QBluetoothLocalDevice_pairingConfirmation, "QBluetoothLocalDevice_pairingConfirmation");
 
 function  QBluetoothLocalDevice_allDevices return QObjectListH;
 pragma Import(C,QBluetoothLocalDevice_allDevices, "QBluetoothLocalDevice_allDevices");

 type addressCallbackH is access procedure(address: QBluetoothAddressH);
 pragma convention(C,addressCallbackH);
 
 type addressIntCallbackH is access procedure(address: QBluetoothAddressH; p:Pairing );
 pragma convention(C,addressIntCallbackH);
 
 type addressStringCallbackH is access procedure(address: QBluetoothAddressH; pin:QStringH );
 pragma convention(C,addressStringCallbackH);
 
 procedure QBluuetoothLocalDevice_signal_slot_hostModeStateChanged(handle:not null QObjectH;hook: intCallbackH);
 pragma Import(C,QBluuetoothLocalDevice_signal_slot_hostModeStateChanged, "QBluuetoothLocalDevice_signal_slot_hostModeStateChanged");
 
 procedure QBluuetoothLocalDevice_signal_slot_error(handle:not null QObjectH; hook: intCallbackH);
 pragma Import(C,QBluuetoothLocalDevice_signal_slot_error, "QBluuetoothLocalDevice_signal_slot_error");
 
 procedure QBluuetoothLocalDevice_signal_slot_deviceConnected(handle:not null QObjectH; hook : addressCallbackH);
 pragma Import(C,QBluuetoothLocalDevice_signal_slot_deviceConnected, "QBluuetoothLocalDevice_signal_slot_deviceConnected");
 
 procedure QBluuetoothLocalDevice_signal_slot_deviceDisonnected(handle:not null QObjectH;  hook : addressCallbackH);
 pragma Import(C,QBluuetoothLocalDevice_signal_slot_deviceDisonnected, "QBluuetoothLocalDevice_signal_slot_deviceDisonnected");
 
 procedure QBluuetoothLocalDevice_signal_slot_pairingFinished(handle:not null QObjectH; hook : addressIntCallbackH);
 pragma Import(C,QBluuetoothLocalDevice_signal_slot_pairingFinished, "QBluuetoothLocalDevice_signal_slot_pairingFinished");
 
 procedure QBluuetoothLocalDevice_signal_slot_pairingDisplayPinCode(handle:not null QObjectH; hook : addressStringCallbackH);
 pragma Import(C,QBluuetoothLocalDevice_signal_slot_pairingDisplayPinCode, "QBluuetoothLocalDevice_signal_slot_pairingDisplayPinCode");
 
 procedure QBluuetoothLocalDevice_signal_slot_pairingDisplayConfirmation(handle:not null QObjectH; hook : addressStringCallbackH); 
 pragma Import(C,QBluuetoothLocalDevice_signal_slot_pairingDisplayConfirmation, "QBluuetoothLocalDevice_signal_slot_pairingDisplayConfirmation");
 
 
 function  QBluetoothLocalDevice_create(address:QBluetoothAddressH;parent:QObjectH := null) return QIODeviceH;

end;
