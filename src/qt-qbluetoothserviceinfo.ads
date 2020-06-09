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
with Qt.QBluetoothAddress; use Qt.QBluetoothAddress;
package Qt.QBluetoothServiceInfo  is

 type AttributeId is new Cardinal;

 ServiceRecordHandle              : constant AttributeId := 16#0000#;
 ServiceClassIds                  : constant AttributeId := 16#0001#;
 ServiceRecordState               : constant AttributeId := 16#0002#;
 ServiceId                        : constant AttributeId := 16#0003#;
 ProtocolDescriptorList           : constant AttributeId := 16#0004#;
 BrowseGroupList                  : constant AttributeId := 16#0005#;
 LanguageBaseAttributeIdList      : constant AttributeId := 16#0006#;
 ServiceInfoTimeToLive            : constant AttributeId := 16#0007#;
 ServiceAvailability              : constant AttributeId := 16#0008#;
 BluetoothProfileDescriptorList   : constant AttributeId := 16#0009#;
 DocumentationUrl                 : constant AttributeId := 16#000A#;
 ClientExecutableUrl              : constant AttributeId := 16#000B#;
 IconUrl                          : constant AttributeId := 16#000C#;
 AdditionalProtocolDescriptorList : constant AttributeId := 16#000D#;
 PrimaryLanguageBase              : constant AttributeId := 16#0100#;
 ServiceName                      : constant AttributeId := PrimaryLanguageBase;
 ServiceDescription               : constant AttributeId := PrimaryLanguageBase + 1;
 ServiceProvider                  : constant AttributeId := PrimaryLanguageBase + 2;

 type Protocol is (UnknownProtocol,L2capProtocol,RfcommProtocol);
 pragma convention(C,Protocol);

 function  QBluetoothServiceInfo_create return QBluetoothServiceInfoH;
 pragma Import(C,QBluetoothServiceInfo_create, "QBluetoothServiceInfo_create");
 
 function  QBluetoothServiceInfo_create2(other:QBluetoothServiceInfoH) return QBluetoothServiceInfoH;
 pragma Import(C,QBluetoothServiceInfo_create2, "QBluetoothServiceInfo_create2");
 
 procedure QBluetoothServiceInfo_delete(handle:not null QBluetoothServiceInfoH);
 pragma Import(C,QBluetoothServiceInfo_delete, "QBluetoothServiceInfo_delete");
 
 function  QBluetoothServiceInfo_isValid(handle:not null QBluetoothServiceInfoH) return boolean;
 pragma Import(C,QBluetoothServiceInfo_isValid, "QBluetoothServiceInfo_isValid");
 
 function  QBluetoothServiceInfo_isComplete(handle:not null QBluetoothServiceInfoH) return boolean;
 pragma Import(C,QBluetoothServiceInfo_isComplete, "QBluetoothServiceInfo_isComplete");
 
 procedure QBluetoothServiceInfo_setDevice(handle:not null QBluetoothServiceInfoH;info:QBluetoothDeviceInfoH);
 pragma Import(C,QBluetoothServiceInfo_setDevice, "QBluetoothServiceInfo_setDevice");
 
 function  QBluetoothServiceInfo_device(handle:not null QBluetoothServiceInfoH) return QBluetoothDeviceInfoH;
 pragma Import(C,QBluetoothServiceInfo_device, "QBluetoothServiceInfo_device");
 
 procedure QBluetoothServiceInfo_setAttribute(handle:not null QBluetoothServiceInfoH;attributeId: unsigned_Short;value: QVariantH);
 pragma Import(C,QBluetoothServiceInfo_setAttribute, "QBluetoothServiceInfo_setAttribute");
 
 procedure QBluetoothServiceInfo_setAttribute2(handle:not null QBluetoothServiceInfoH;attributeId: unsigned_Short; value:QBluetoothUuidH);
 pragma Import(C,QBluetoothServiceInfo_setAttribute2, "QBluetoothServiceInfo_setAttribute2");
 
 function  QBluetoothServiceInfo_attribute(handle:not null QBluetoothServiceInfoH;attributeId: unsigned_Short) return QVariantH;
 pragma Import(C,QBluetoothServiceInfo_attribute, "QBluetoothServiceInfo_attribute");
 
 function  QBluetoothServiceInfo_attributes(handle:not null QBluetoothServiceInfoH) return QObjectListH;
 pragma Import(C,QBluetoothServiceInfo_attributes, "QBluetoothServiceInfo_attributes");
 
 function  QBluetoothServiceInfo_contains(handle:not null QBluetoothServiceInfoH;attributeId: unsigned_Short) return boolean;
 pragma Import(C,QBluetoothServiceInfo_contains, "QBluetoothServiceInfo_contains");
 
 procedure QBluetoothServiceInfo_removeAttribute(handle:not null QBluetoothServiceInfoH;attributeId: unsigned_Short);
 pragma Import(C,QBluetoothServiceInfo_removeAttribute, "QBluetoothServiceInfo_removeAttribute");
 
 procedure QBluetoothServiceInfo_setServiceName(handle:not null QBluetoothServiceInfoH;name:QStringH);
 pragma Import(C,QBluetoothServiceInfo_setServiceName, "QBluetoothServiceInfo_setServiceName");
 
 function  QBluetoothServiceInfo_serviceName(handle:not null QBluetoothServiceInfoH) return QStringH;
 pragma Import(C,QBluetoothServiceInfo_serviceName, "QBluetoothServiceInfo_serviceName");
 
 procedure QBluetoothServiceInfo_setServiceDescription(handle:not null QBluetoothServiceInfoH;description:QStringH);
 pragma Import(C,QBluetoothServiceInfo_setServiceDescription, "QBluetoothServiceInfo_setServiceDescription");
 
 function  QBluetoothServiceInfo_serviceDescription(handle:not null QBluetoothServiceInfoH) return QStringH;
 pragma Import(C,QBluetoothServiceInfo_serviceDescription, "QBluetoothServiceInfo_serviceDescription");
 
 procedure QBluetoothServiceInfo_setServiceProvider(handle:not null QBluetoothServiceInfoH;provider:QStringH);
 pragma Import(C,QBluetoothServiceInfo_setServiceProvider, "QBluetoothServiceInfo_setServiceProvider");
 
 function  QBluetoothServiceInfo_serviceProvider(handle:not null QBluetoothServiceInfoH) return QStringH;
 pragma Import(C,QBluetoothServiceInfo_serviceProvider, "QBluetoothServiceInfo_serviceProvider");
 
 function  QBluetoothServiceInfo_socketProtocol(handle:not null QBluetoothServiceInfoH) return Qt.QBluetoothServiceInfo.Protocol;
 pragma Import(C,QBluetoothServiceInfo_socketProtocol, "QBluetoothServiceInfo_socketProtocol");
 
 function  QBluetoothServiceInfo_protocolServiceMultiplexer(handle:not null QBluetoothServiceInfoH) return integer;
 pragma Import(C,QBluetoothServiceInfo_protocolServiceMultiplexer, "QBluetoothServiceInfo_protocolServiceMultiplexer");
 
 function  QBluetoothServiceInfo_serverChannel(handle:not null QBluetoothServiceInfoH) return integer;
 pragma Import(C,QBluetoothServiceInfo_serverChannel, "QBluetoothServiceInfo_serverChannel");
 
 function  QBluetoothServiceInfo_protocolDescriptor(handle:not null QBluetoothServiceInfoH;protocol:Qt.QBluetoothUuid.ProtocolUuid) return QObjectH;
 pragma Import(C,QBluetoothServiceInfo_protocolDescriptor, "QBluetoothServiceInfo_protocolDescriptor");
 
 procedure QBluetoothServiceInfo_setServiceAvailability(handle:not null QBluetoothServiceInfoH; availability:unsigned_char);
 pragma Import(C,QBluetoothServiceInfo_setServiceAvailability, "QBluetoothServiceInfo_setServiceAvailability");
 
 function  QBluetoothServiceInfo_serviceAvailability(handle:not null QBluetoothServiceInfoH) return unsigned_char;
 pragma Import(C,QBluetoothServiceInfo_serviceAvailability, "QBluetoothServiceInfo_serviceAvailability");
 
 procedure QBluetoothServiceInfo_setServiceUuid(handle:not null QBluetoothServiceInfoH;uuid:QBluetoothUuidH);
 pragma Import(C,QBluetoothServiceInfo_setServiceUuid, "QBluetoothServiceInfo_setServiceUuid");
 
 function  QBluetoothServiceInfo_serviceUuid(handle:not null QBluetoothServiceInfoH) return QBluetoothUuidH;
 pragma Import(C,QBluetoothServiceInfo_serviceUuid, "QBluetoothServiceInfo_serviceUuid");
 
 function  QBluetoothServiceInfo_serviceClassUuids(handle:not null QBluetoothServiceInfoH) return QObjectListH;
 pragma Import(C,QBluetoothServiceInfo_serviceClassUuids, "QBluetoothServiceInfo_serviceClassUuids");
 
 function  QBluetoothServiceInfo_isRegistered(handle:not null QBluetoothServiceInfoH) return boolean;
 pragma Import(C,QBluetoothServiceInfo_isRegistered, "QBluetoothServiceInfo_isRegistered");
 
 function  QBluetoothServiceInfo_registerService(handle:not null QBluetoothServiceInfoH;localAdapter:QBluetoothAddressH := QBluetoothAddress_create) return boolean;
 pragma Import(C,QBluetoothServiceInfo_registerService, "QBluetoothServiceInfo_registerService");
 
 function  QBluetoothServiceInfo_unregisterService(handle:not null QBluetoothServiceInfoH) return boolean;
 pragma Import(C,QBluetoothServiceInfo_unregisterService, "QBluetoothServiceInfo_unregisterService");

 procedure QBluetoothServiceInfo_setAttribute(handle:not null QBluetoothServiceInfoH;attributeId: unsigned_Short; value:QBluetoothUuidH);

end;
