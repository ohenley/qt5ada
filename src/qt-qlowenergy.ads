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

with Qt.QBluetoothUuid;
with builtin; use builtin;
package Qt.QLowEnergy is

 type PropertyType is new Cardinal;

 Unknown          : constant PropertyType := 16#00#;
 Broadcasting     : constant PropertyType := 16#01#;
 Read             : constant PropertyType := 16#02#;
 WriteNoResponse  : constant PropertyType := 16#04#;
 Write            : constant PropertyType := 16#08#;
 Notify           : constant PropertyType := 16#10#;
 Indicate         : constant PropertyType := 16#20#;
 WriteSigned      : constant PropertyType := 16#40#;
 ExtendedProperty : constant PropertyType := 16#80#; 

 function  QLowEnergyCharacteristic_create return QLowEnergyCharacteristicH;
 pragma Import(C,QLowEnergyCharacteristic_create, "QLowEnergyCharacteristic_create");
 
 function  QLowEnergyCharacteristic_create2(other:QLowEnergyCharacteristicH) return QLowEnergyCharacteristicH;
 pragma Import(C,QLowEnergyCharacteristic_create2, "QLowEnergyCharacteristic_create2");
 
 procedure QLowEnergyCharacteristic_delete(handle:not null QLowEnergyCharacteristicH);
 pragma Import(C,QLowEnergyCharacteristic_delete, "QLowEnergyCharacteristic_delete");
 
 function  QLowEnergyCharacteristic_name(handle:not null QLowEnergyCharacteristicH) return QStringH;
 pragma Import(C,QLowEnergyCharacteristic_name, "QLowEnergyCharacteristic_name");
 
 function  QLowEnergyCharacteristic_uuid(handle:not null QLowEnergyCharacteristicH) return QBluetoothUuidH;
 pragma Import(C,QLowEnergyCharacteristic_uuid, "QLowEnergyCharacteristic_uuid");
 
 function  QLowEnergyCharacteristic_value(handle:not null QLowEnergyCharacteristicH) return string;
 pragma Import(C,QLowEnergyCharacteristic_value, "QLowEnergyCharacteristic_value");
 
 function  QLowEnergyCharacteristic_properties(handle:not null QLowEnergyCharacteristicH) return integer;
 pragma Import(C,QLowEnergyCharacteristic_properties, "QLowEnergyCharacteristic_properties");
 
 function  QLowEnergyCharacteristic_handle(handle:not null QLowEnergyCharacteristicH) return QLowEnergyHandleH;
 pragma Import(C,QLowEnergyCharacteristic_handle, "QLowEnergyCharacteristic_handle");
 
 function  QLowEnergyCharacteristic_descriptor(handle:not null QLowEnergyCharacteristicH;uuid:QBluetoothUuidH) return QLowEnergyDescriptorH;
 pragma Import(C,QLowEnergyCharacteristic_descriptor, "QLowEnergyCharacteristic_descriptor");
 
 function  QLowEnergyCharacteristic_descriptors(handle:not null QLowEnergyCharacteristicH) return QObjectListH;
 pragma Import(C,QLowEnergyCharacteristic_descriptors, "QLowEnergyCharacteristic_descriptors");
 
 function  QLowEnergyCharacteristic_isValid(handle:not null QLowEnergyCharacteristicH) return boolean;
 pragma Import(C,QLowEnergyCharacteristic_isValid, "QLowEnergyCharacteristic_isValid");
 
----------------------- controller ---------------------------------------
 type ControllerError is (NoError,UnknownError,UnknownRemoteDeviceError,
        NetworkError,InvalidBluetoothAdapterError,ConnectionError);
 pragma convention(C,ControllerError);
   
 type ControllerState is (UnconnectedState,ConnectingState,ConnectedState,
        DiscoveringState,DiscoveredState,ClosingState);
 pragma convention(C,ControllerState);
   
 type RemoteAddressType is (PublicAddress,RandomAddress);
 pragma convention(C,RemoteAddressType);
  
 function  QLowEnergyController_create(remoteDevice:QBluetoothAddressH;parent:QObjectH := null) return QLowEnergyControllerH;
 pragma Import(C,QLowEnergyController_create, "QLowEnergyController_create");
 
 function  QLowEnergyController_create2( remoteDevice:QBluetoothDeviceInfoH;parent:QObjectH := null) return QLowEnergyControllerH;
 pragma Import(C,QLowEnergyController_create2, "QLowEnergyController_create2");
 
 function  QLowEnergyController_create3(remoteDevice,localDevice:QBluetoothAddressH;parent:QObjectH := null) return QLowEnergyControllerH;
 pragma Import(C,QLowEnergyController_create3, "QLowEnergyController_create3");
 
 procedure QLowEnergyController_delete(handle:not null QLowEnergyControllerH);
 pragma Import(C,QLowEnergyController_delete, "QLowEnergyController_delete");
 
 function  QLowEnergyController_localAddress(handle:not null QLowEnergyControllerH) return QBluetoothAddressH;
 pragma Import(C,QLowEnergyController_localAddress, "QLowEnergyController_localAddress");
 
 function  QLowEnergyController_remoteAddress(handle:not null QLowEnergyControllerH) return QBluetoothAddressH;
 pragma Import(C,QLowEnergyController_remoteAddress, "QLowEnergyController_remoteAddress");
 
 function  QLowEnergyController_remoteName(handle:not null QLowEnergyControllerH) return QStringH;
 pragma Import(C,QLowEnergyController_remoteName, "QLowEnergyController_remoteName");
 
 function  QLowEnergyController_state(handle:not null QLowEnergyControllerH) return ControllerState;
 pragma Import(C,QLowEnergyController_state, "QLowEnergyController_state");
 
 function  QLowEnergyController_remoteAddressType(handle:not null QLowEnergyControllerH) return RemoteAddressType;
 pragma Import(C,QLowEnergyController_remoteAddressType, "QLowEnergyController_remoteAddressType");
 
 procedure QLowEnergyController_setRemoteAddressType(handle:not null QLowEnergyControllerH;tp:RemoteAddressType);
 pragma Import(C,QLowEnergyController_setRemoteAddressType, "QLowEnergyController_setRemoteAddressType");
 
 procedure QLowEnergyController_connectToDevice(handle:not null QLowEnergyControllerH);
 pragma Import(C,QLowEnergyController_connectToDevice, "QLowEnergyController_connectToDevice");
 
 procedure QLowEnergyController_disconnectFromDevice(handle:not null QLowEnergyControllerH);
 pragma Import(C,QLowEnergyController_disconnectFromDevice, "QLowEnergyController_disconnectFromDevice");
 
 procedure QLowEnergyController_discoverServices(handle:not null QLowEnergyControllerH);
 pragma Import(C,QLowEnergyController_discoverServices, "QLowEnergyController_discoverServices");
 
 function  QLowEnergyController_services(handle:not null QLowEnergyControllerH) return QObjectListH;
 pragma Import(C,QLowEnergyController_services, "QLowEnergyController_services");
 
 function  QLowEnergyController_createServiceObject(handle:not null QLowEnergyControllerH;service:QBluetoothUuidH;parent:QObjectH := null) return QLowEnergyServiceH;
 pragma Import(C,QLowEnergyController_createServiceObject, "QLowEnergyController_createServiceObject");
 
 function  QLowEnergyController_error(handle:not null QLowEnergyControllerH) return ControllerError;
 pragma Import(C,QLowEnergyController_error, "QLowEnergyController_error");
 
 function  QLowEnergyController_errorString(handle:not null QLowEnergyControllerH) return QStringH;
 pragma Import(C,QLowEnergyController_errorString, "QLowEnergyController_errorString");

 type bluetoothUuiCallbackH is access procedure(p: QBluetoothUuidH);
 pragma convention(C,bluetoothUuiCallbackH);
 
 procedure QLowEnergyController_signal_slot_disconnected(handle:not null QLowEnergyControllerH; hook: voidCallbackH);
 pragma Import(C,QLowEnergyController_signal_slot_disconnected, "QLowEnergyController_signal_slot_disconnected");
 
 procedure QLowEnergyController_signal_slot_connected(handle:not null QLowEnergyControllerH; hook: voidCallbackH);
 pragma Import(C,QLowEnergyController_signal_slot_connected, "QLowEnergyController_signal_slot_connected");
 
 procedure QLowEnergyController_signal_slot_discoveryFinished(handle:not null QLowEnergyControllerH; hook: voidCallbackH);
 pragma Import(C,QLowEnergyController_signal_slot_discoveryFinished, "QLowEnergyController_signal_slot_discoveryFinished");
 
 procedure QLowEnergyController_signal_slot_stateChanged(handle:not null QLowEnergyControllerH; hook: intCallbackH);
 pragma Import(C,QLowEnergyController_signal_slot_stateChanged, "QLowEnergyController_signal_slot_stateChanged");
 
 procedure QLowEnergyController_signal_slot_error(handle:not null QLowEnergyControllerH; hook: intCallbackH);
 pragma Import(C,QLowEnergyController_signal_slot_error, "QLowEnergyController_signal_slot_error");
 
 procedure QLowEnergyController_signal_slot_serviceDiscovered(handle:not null QLowEnergyControllerH; hook :bluetoothUuiCallbackH);
 pragma Import(C,QLowEnergyController_signal_slot_serviceDiscovered, "QLowEnergyController_signal_slot_serviceDiscovered");
 
-------------------   descriptor ------------------------------------------

 type ServiceType is (PrimaryService,IncludedService); 
 pragma convention(C,ServiceType);
 for ServiceType use (PrimaryService  => 1,
                      IncludedService => 2);
    
 type ServiceError is (NoError,OperationError,CharacteristicWriteError,DescriptorWriteError,UnknownError,CharacteristicReadError, DescriptorReadError);
 pragma convention(C,ServiceError);
   
 type ServiceState is (InvalidService,DiscoveryRequired,DiscoveringServices,ServiceDiscovered);   
 pragma convention(C,ServiceState);

 type WriteMode is (WriteWithResponse,WriteWithoutResponse); 
 pragma convention(C,WriteMode);

 function  QLowEnergyDescriptor_create return QLowEnergyDescriptorH;
 pragma Import(C,QLowEnergyDescriptor_create, "QLowEnergyDescriptor_create");
 
 function  QLowEnergyDescriptor_create2(other:QLowEnergyDescriptorH) return QLowEnergyDescriptorH;
 pragma Import(C,QLowEnergyDescriptor_create2, "QLowEnergyDescriptor_create2");
 
 procedure QLowEnergyDescriptor_delete(handle:not null QLowEnergyDescriptorH);
 pragma Import(C,QLowEnergyDescriptor_delete, "QLowEnergyDescriptor_delete");
 
 function  QLowEnergyDescriptor_name(handle:not null QLowEnergyDescriptorH) return QStringH;
 pragma Import(C,QLowEnergyDescriptor_name, "QLowEnergyDescriptor_name");
 
 function  QLowEnergyDescriptor_isValid(handle:not null QLowEnergyDescriptorH) return boolean;
 pragma Import(C,QLowEnergyDescriptor_isValid, "QLowEnergyDescriptor_isValid");
 
 function  QLowEnergyDescriptor_value(handle:not null QLowEnergyDescriptorH) return string;
 pragma Import(C,QLowEnergyDescriptor_value, "QLowEnergyDescriptor_value");
 
 function  QLowEnergyDescriptor_uuid(handle:not null QLowEnergyDescriptorH) return QBluetoothUuidH;
 pragma Import(C,QLowEnergyDescriptor_uuid, "QLowEnergyDescriptor_uuid");
 
 function  QLowEnergyDescriptor_handle(handle:not null QLowEnergyDescriptorH) return QLowEnergyHandleH;
 pragma Import(C,QLowEnergyDescriptor_handle, "QLowEnergyDescriptor_handle");
 
 function  QLowEnergyDescriptor_type(handle:not null QLowEnergyDescriptorH) return Qt.QBluetoothUuid.DescriptorType;
 pragma Import(C,QLowEnergyDescriptor_type, "QLowEnergyDescriptor_type");

 procedure QLowEnergyService_delete(handle:not null QLowEnergyServiceH);
 pragma Import(C,QLowEnergyService_delete, "QLowEnergyService_delete");
 
 function  QLowEnergyService_serviceName(handle:not null QLowEnergyServiceH) return QStringH;
 pragma Import(C,QLowEnergyService_serviceName, "QLowEnergyService_serviceName");
 
 procedure QLowEnergyService_discoverDetails(handle:not null QLowEnergyServiceH);
 pragma Import(C,QLowEnergyService_discoverDetails, "QLowEnergyService_discoverDetails");
 
 function  QLowEnergyService_includedServices(handle:not null QLowEnergyServiceH) return QObjectListH;
 pragma Import(C,QLowEnergyService_includedServices, "QLowEnergyService_includedServices");
 
 function  QLowEnergyService_type(handle:not null QLowEnergyServiceH) return integer;
 pragma Import(C,QLowEnergyService_type, "QLowEnergyService_type");
 
 function  QLowEnergyService_state(handle:not null QLowEnergyServiceH) return ServiceState;
 pragma Import(C,QLowEnergyService_state, "QLowEnergyService_state");
 
 function  QLowEnergyService_characteristic(handle:not null QLowEnergyServiceH;uuid:QBluetoothUuidH) return QLowEnergyCharacteristicH;
 pragma Import(C,QLowEnergyService_characteristic, "QLowEnergyService_characteristic");
 
 function  QLowEnergyService_characteristics(handle:not null QLowEnergyServiceH) return QObjectListH;
 pragma Import(C,QLowEnergyService_characteristics, "QLowEnergyService_characteristics");
 
 function  QLowEnergyService_serviceUuid(handle:not null QLowEnergyServiceH) return QBluetoothUuidH;
 pragma Import(C,QLowEnergyService_serviceUuid, "QLowEnergyService_serviceUuid");
 
 function  QLowEnergyService_error(handle:not null QLowEnergyServiceH) return ServiceError;
 pragma Import(C,QLowEnergyService_error, "QLowEnergyService_error");
 
 function  QLowEnergyService_contains(handle:not null QLowEnergyServiceH;characteristic:QLowEnergyCharacteristicH) return boolean;
 pragma Import(C,QLowEnergyService_contains, "QLowEnergyService_contains");
 
 procedure QLowEnergyService_readCharacteristic(handle:not null QLowEnergyServiceH; characteristic:QLowEnergyCharacteristicH);
 pragma Import(C,QLowEnergyService_readCharacteristic, "QLowEnergyService_readCharacteristic");
 
 procedure QLowEnergyService_writeCharacteristic(handle:not null QLowEnergyServiceH;characteristic:QLowEnergyCharacteristicH;newValue:zstring;mode: WriteMode := WriteWithResponse);
 pragma Import(C,QLowEnergyService_writeCharacteristic, "QLowEnergyService_writeCharacteristic");
 
 function  QLowEnergyService_contains2(handle:not null QLowEnergyServiceH;descriptor:QLowEnergyDescriptorH) return boolean;
 pragma Import(C,QLowEnergyService_contains2, "QLowEnergyService_contains2");
 
 procedure QLowEnergyService_readDescriptor(handle:not null QLowEnergyServiceH;descriptor:QLowEnergyDescriptorH);
 pragma Import(C,QLowEnergyService_readDescriptor, "QLowEnergyService_readDescriptor");
 
 procedure QLowEnergyService_writeDescriptor(handle:not null QLowEnergyServiceH;descriptor:QLowEnergyDescriptorH;newValue:zstring);
 pragma Import(C,QLowEnergyService_writeDescriptor, "QLowEnergyService_writeDescriptor");
 
 type characteristicCallbackH is access procedure(info:QLowEnergyCharacteristicH; value:zstring);
 pragma convention(C,characteristicCallbackH);
 
 type descriptorCallbackH is access procedure(info:QLowEnergyDescriptorH; value:zstring);
 pragma convention(C,descriptorCallbackH);

 procedure QLowEnergyService_signal_slot_error(handle:not null QLowEnergyServiceH; hook: intCallbackH);
 pragma Import(C,QLowEnergyService_signal_slot_error, "QLowEnergyService_signal_slot_error");
 
 procedure QLowEnergyService_signal_slot_stateChanged(handle:not null QLowEnergyServiceH; hook: intCallbackH);
 pragma Import(C,QLowEnergyService_signal_slot_stateChanged, "QLowEnergyService_signal_slot_stateChanged");
 
 procedure QLowEnergyService_signal_slot_characteristicChanged(handle:not null QLowEnergyServiceH; hook: characteristicCallbackH);
 pragma Import(C,QLowEnergyService_signal_slot_characteristicChanged, "QLowEnergyService_signal_slot_characteristicChanged");
 
 procedure QLowEnergyService_signal_slot_characteristicRead(handle:not null QLowEnergyServiceH; hook: characteristicCallbackH);
 pragma Import(C,QLowEnergyService_signal_slot_characteristicRead, "QLowEnergyService_signal_slot_characteristicRead");
 
 procedure QLowEnergyService_signal_slot_characteristicWritten(handle:not null QLowEnergyServiceH; hook: characteristicCallbackH);
 pragma Import(C,QLowEnergyService_signal_slot_characteristicWritten, "QLowEnergyService_signal_slot_characteristicWritten");
 
 procedure QLowEnergyService_signal_slot_descriptorRead(handle:not null QLowEnergyServiceH; hook: descriptorCallbackH);
 pragma Import(C,QLowEnergyService_signal_slot_descriptorRead, "QLowEnergyService_signal_slot_descriptorRead");
 
 procedure QLowEnergyService_signal_slot_descriptorWritten(handle:not null QLowEnergyServiceH; hook: descriptorCallbackH);
 pragma Import(C,QLowEnergyService_signal_slot_descriptorWritten, "QLowEnergyService_signal_slot_descriptorWritten");
 

 -----------------------------------------------------------------
 function  QLowEnergyCharacteristic_create(other:QLowEnergyCharacteristicH) return QLowEnergyCharacteristicH;
 function  QLowEnergyController_create( remoteDevice:QBluetoothDeviceInfoH;parent:QObjectH := null) return QLowEnergyControllerH;
 function  QLowEnergyController_create(remoteDevice,localDevice:QBluetoothAddressH;parent:QObjectH := null) return QLowEnergyControllerH;
 function  QLowEnergyDescriptor_create(other:QLowEnergyDescriptorH) return QLowEnergyDescriptorH;
 function  QLowEnergyService_contains(handle:not null QLowEnergyServiceH;descriptor:QLowEnergyDescriptorH) return boolean;

end;
