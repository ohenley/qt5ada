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

package Qt.QBluetoothServiceDiscoveryAgent is

 type DiscoveryMode is (MinimalDiscovery,FullDiscovery); 
 pragma convention(C,DiscoveryMode);

 type Error is new Cardinal;

 NoError                      : constant Error := 0;
 InputOutputError             : constant Error := 1;
 PoweredOffError              : constant Error := 2;
 InvalidBluetoothAdapterError : constant Error := 3;
 UnknownError                 : constant Error := 16#100#; 

 function  QBluetoothServiceDiscoveryAgent_create(parent:QObjectH := null) return QBluetoothServiceDiscoveryAgentH;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_create, "QBluetoothServiceDiscoveryAgent_create");
 
 function  QBluetoothServiceDiscoveryAgent_create2(deviceAdapter:QBluetoothAddressH; parent:QObjectH := null) return QBluetoothServiceDiscoveryAgentH;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_create2, "QBluetoothServiceDiscoveryAgent_create2");
 
 procedure QBluetoothServiceDiscoveryAgent_delete(handle:not null QBluetoothServiceDiscoveryAgentH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_delete, "QBluetoothServiceDiscoveryAgent_delete");
 
 function  QBluetoothServiceDiscoveryAgent_isActive(handle:not null QBluetoothServiceDiscoveryAgentH) return boolean;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_isActive, "QBluetoothServiceDiscoveryAgent_isActive");
 
 function  QBluetoothServiceDiscoveryAgent_error(handle:not null QBluetoothServiceDiscoveryAgentH) return Error;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_error, "QBluetoothServiceDiscoveryAgent_error");
 
 function  QBluetoothServiceDiscoveryAgent_errorString(handle:not null QBluetoothServiceDiscoveryAgentH) return QStringH;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_errorString, "QBluetoothServiceDiscoveryAgent_errorString");
 
 function  QBluetoothServiceDiscoveryAgent_discoveredServices(handle:not null QBluetoothServiceDiscoveryAgentH) return QObjectListH;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_discoveredServices, "QBluetoothServiceDiscoveryAgent_discoveredServices");
 
 procedure QBluetoothServiceDiscoveryAgent_setUuidFilter(handle:not null QBluetoothServiceDiscoveryAgentH;uuids:QObjectListH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_setUuidFilter, "QBluetoothServiceDiscoveryAgent_setUuidFilter");
 
 procedure QBluetoothServiceDiscoveryAgent_setUuidFilter2(handle:not null QBluetoothServiceDiscoveryAgentH;uuid:QBluetoothUuidH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_setUuidFilter2, "QBluetoothServiceDiscoveryAgent_setUuidFilter2");
 
 function  QBluetoothServiceDiscoveryAgent_uuidFilter(handle:not null QBluetoothServiceDiscoveryAgentH) return QObjectListH;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_uuidFilter, "QBluetoothServiceDiscoveryAgent_uuidFilter");
 
 function  QBluetoothServiceDiscoveryAgent_setRemoteAddress(handle:not null QBluetoothServiceDiscoveryAgentH;address:QBluetoothAddressH) return boolean;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_setRemoteAddress, "QBluetoothServiceDiscoveryAgent_setRemoteAddress");
 
 function  QBluetoothServiceDiscoveryAgent_remoteAddress(handle:not null QBluetoothServiceDiscoveryAgentH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothServiceDiscoveryAgent_remoteAddress, "QBluetoothServiceDiscoveryAgent_remoteAddress");
 
 procedure QBluetoothServiceDiscoveryAgent_start(handle:not null QBluetoothServiceDiscoveryAgentH;mode:DiscoveryMode := MinimalDiscovery);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_start, "QBluetoothServiceDiscoveryAgent_start");
 
 procedure QBluetoothServiceDiscoveryAgent_stop(handle:not null QBluetoothServiceDiscoveryAgentH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_stop, "QBluetoothServiceDiscoveryAgent_stop");
 
 procedure QBluetoothServiceDiscoveryAgent_clear(handle:not null QBluetoothServiceDiscoveryAgentH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_clear, "QBluetoothServiceDiscoveryAgent_clear");

 type serviceInfoCallbackH is access procedure(info:QBluetoothServiceInfoH);
 pragma convention(C,serviceInfoCallbackH);
 
 procedure QBluetoothServiceDiscoveryAgent_signal_slot_serviceDiscovered(handle:not null QBluetoothServiceDiscoveryAgentH; hook :serviceInfoCallbackH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_signal_slot_serviceDiscovered, "QBluetoothServiceDiscoveryAgent_signal_slot_serviceDiscovered");
 
 procedure QBluetoothServiceDiscoveryAgent_signal_slot_finished(handle:not null QBluetoothServiceDiscoveryAgentH; hook:voidCallbackH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_signal_slot_finished, "QBluetoothServiceDiscoveryAgent_signal_slot_finished");
 
 procedure QBluetoothServiceDiscoveryAgent_signal_slot_canceled(handle:not null QBluetoothServiceDiscoveryAgentH; hook:voidCallbackH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_signal_slot_canceled, "QBluetoothServiceDiscoveryAgent_signal_slot_canceled");
 
 procedure QBluetoothServiceDiscoveryAgent_signal_slot_error(handle:not null QBluetoothServiceDiscoveryAgentH; hook:intCallbackH);
 pragma Import(C,QBluetoothServiceDiscoveryAgent_signal_slot_error, "QBluetoothServiceDiscoveryAgent_signal_slot_error");
 
 -----------------------------------------------------------------------
 function  QBluetoothServiceDiscoveryAgent_create(deviceAdapter:QBluetoothAddressH; parent:QObjectH := null) return QBluetoothServiceDiscoveryAgentH;
 procedure QBluetoothServiceDiscoveryAgent_setUuidFilter(handle:not null QBluetoothServiceDiscoveryAgentH;uuid:QBluetoothUuidH);

end;
