-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2012,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QVariant;     use Qt.QVariant;
with Qt.QString;      use Qt.QString;
with Qt.QObjectList;  use Qt.QObjectList;
with builtin; use builtin;
package Qt.QDBus is

 type ElementType is (BasicType,VariantType,ArrayType,StructureType,MapType,MapEntryType,UnknownType);
 pragma convention(C,ElementType);
 for ElementType use (
    BasicType     => 0,
    VariantType   => 1,
    ArrayType     => 2,
    StructureType => 3,
    MapType       => 4,
    MapEntryType  => 5,
    UnknownType   => 16#ffff#
  ); 
 type CallMode is (NoBlock,Block,BlockWithGui,AutoDetect); 
 pragma convention(C,CallMode);  

 type BusType  is ( SessionBus, SystemBus, ActivationBus );
 pragma convention(C,BusType);

 type RegisterOption is new integer;
 subtype RegisterOptions is RegisterOption;

  ExportAdaptors               :constant RegisterOption := 16#01#;
  ExportScriptableSlots        :constant RegisterOption := 16#10#;
  ExportScriptableSignals      :constant RegisterOption := 16#20#;
  ExportScriptableProperties   :constant RegisterOption := 16#40#;
  ExportScriptableInvokables   :constant RegisterOption := 16#80#;
  ExportScriptableContents     :constant RegisterOption := 16#f0#;
  ExportNonScriptableSlots     :constant RegisterOption := 16#100#;
  ExportNonScriptableSignals   :constant RegisterOption := 16#200#;
  ExportNonScriptableProperties:constant RegisterOption := 16#400#;
  ExportNonScriptableInvokables:constant RegisterOption := 16#800#;
  ExportNonScriptableContents  :constant RegisterOption := 16#f00#;
  ExportAllSlots               :constant RegisterOption := ExportScriptableSlots + ExportNonScriptableSlots;
  ExportAllSignals             :constant RegisterOption := ExportScriptableSignals + ExportNonScriptableSignals;
  ExportAllProperties          :constant RegisterOption := ExportScriptableProperties + ExportNonScriptableProperties;
  ExportAllInvokables          :constant RegisterOption := ExportScriptableInvokables + ExportNonScriptableInvokables;
  ExportAllContents            :constant RegisterOption := ExportScriptableContents + ExportNonScriptableContents;
  ExportChildObjects           :constant RegisterOption := 16#1000#;

 type UnregisterMode is (UnregisterNode,UnregisterTree);
 pragma convention(C,UnregisterMode);
  
 type VirtualObjectRegisterOption  is (SingleNode,SubPath);
 pragma convention(C,VirtualObjectRegisterOption);
 
 type ConnectionCapability is new integer;
 type ConnectionCapabilities is new ConnectionCapability;
 UnixFileDescriptorPassing : constant ConnectionCapability := 1;

 type ServiceQueueOptions is (DontQueueService,QueueService,ReplaceExistingService);
 pragma convention(C,ServiceQueueOptions);
 
 type ServiceReplacementOptions is (DontAllowReplacement,AllowReplacement);
 pragma convention(C,ServiceReplacementOptions);
 
 type RegisterServiceReply is (ServiceNotRegistered,ServiceRegistered,ServiceQueued);
 pragma convention(C,RegisterServiceReply); 

 type ErrorType is (NoError,Other,Failed,NoMemory,ServiceUnknown,NoReply,
        BadAddress,NotSupported,LimitsExceeded,AccessDenied,NoServer,
        Timeout,NoNetwork,AddressInUse,Disconnected,InvalidArgs,UnknownMethod,TimedOut,
        InvalidSignature,UnknownInterface,UnknownObject,UnknownProperty,PropertyReadOnly,
        InternalError,InvalidService,InvalidObjectPath,InvalidInterface,InvalidMember); 
 pragma convention(C,ErrorType);

 type MessageType is (InvalidMessage,MethodCallMessage,ReplyMessage,ErrorMessage,SignalMessage);
 pragma convention(C,MessageType);
 
 type WatchModeFlag is (WatchReserve,WatchForRegistration,WatchForUnregistration,WatchForOwnerChange);
 pragma convention(C,WatchModeFlag);

 function  QDBusAbstractAdaptor_create(parent:QObjectH) return QAdaptorH;
 pragma Import(C,QDBusAbstractAdaptor_create, "QDBusAbstractAdaptor_create");
 
 procedure QDBusAbstractAdaptor_destroy(handle:not null QAdaptorH);
 pragma Import(C,QDBusAbstractAdaptor_destroy, "QDBusAbstractAdaptor_destroy");
 
 procedure QDBusAbstractAdaptor_setAutoRelaySignals(handle:not null QAdaptorH;enable:boolean);
 pragma Import(C,QDBusAbstractAdaptor_setAutoRelaySignals, "QDBusAbstractAdaptor_setAutoRelaySignals");
 
 function  QDBusAbstractAdaptor_autoRelaySignals(handle:not null QAdaptorH) return boolean;
 pragma Import(C,QDBusAbstractAdaptor_autoRelaySignals, "QDBusAbstractAdaptor_autoRelaySignals");
 

 procedure QDBusAbstractInterface_destroy(handle:not null QInterfaceH);
 pragma Import(C,QDBusAbstractInterface_destroy, "QDBusAbstractInterface_destroy");
 
 function  QDBusAbstractInterface_isValid(handle:not null QInterfaceH) return boolean;
 pragma Import(C,QDBusAbstractInterface_isValid, "QDBusAbstractInterface_isValid");
 
 function  QDBusAbstractInterface_connection(handle:not null QInterfaceH) return QConnectionH;
 pragma Import(C,QDBusAbstractInterface_connection, "QDBusAbstractInterface_connection");
 
 function  QDBusAbstractInterface_service(handle:not null QInterfaceH) return QStringH;
 pragma Import(C,QDBusAbstractInterface_service, "QDBusAbstractInterface_service");
 
 function  QDBusAbstractInterface_path(handle:not null QInterfaceH) return QStringH;
 pragma Import(C,QDBusAbstractInterface_path, "QDBusAbstractInterface_path");
 
 function  QDBusAbstractInterface_interface(handle:not null QInterfaceH) return QStringH;
 pragma Import(C,QDBusAbstractInterface_interface, "QDBusAbstractInterface_interface");
 
 function  QDBusAbstractInterface_lastError(handle:not null QInterfaceH) return QErrorH;
 pragma Import(C,QDBusAbstractInterface_lastError, "QDBusAbstractInterface_lastError");
 
 procedure QDBusAbstractInterface_setTimeout(handle:not null QInterfaceH; timeout:integer);
 pragma Import(C,QDBusAbstractInterface_setTimeout, "QDBusAbstractInterface_setTimeout");
 
 function  QDBusAbstractInterface_timeout(handle:not null QInterfaceH) return integer;
 pragma Import(C,QDBusAbstractInterface_timeout, "QDBusAbstractInterface_timeout");
 
 function  QDBusAbstractInterface_call(handle:not null QInterfaceH;method:QStringH; arg1:QVariantH := QVariant_create;arg2:QVariantH := QVariant_create; arg3:QVariantH := QVariant_create; arg4:QVariantH := QVariant_create; arg5:QVariantH := QVariant_create; arg6:QVariantH := QVariant_create; arg7:QVariantH := QVariant_create; arg8:QVariantH := QVariant_create) return QMessageH;
 pragma Import(C,QDBusAbstractInterface_call, "QDBusAbstractInterface_call");
 
 function  QDBusAbstractInterface_call2(handle:not null QInterfaceH;mode:CallMode;method:QStringH; arg1:QVariantH := QVariant_create;arg2:QVariantH := QVariant_create; arg3:QVariantH := QVariant_create; arg4:QVariantH := QVariant_create; arg5:QVariantH := QVariant_create; arg6:QVariantH := QVariant_create; arg7:QVariantH := QVariant_create; arg8:QVariantH := QVariant_create) return QMessageH;                
 pragma Import(C,QDBusAbstractInterface_call2, "QDBusAbstractInterface_call2");
 
 function  QDBusAbstractInterface_callWithArgumentList(handle:not null QInterfaceH;mode:CallMode;method:QStringH;args:QObjectListH) return QMessageH;
 pragma Import(C,QDBusAbstractInterface_callWithArgumentList, "QDBusAbstractInterface_callWithArgumentList");
 
 function  QDBusAbstractInterface_callWithCallback(handle:not null QInterfaceH; method:QStringH;args:QObjectListH;receiver:QObjectH; member,errorSlot:zstring) return boolean;
 pragma Import(C,QDBusAbstractInterface_callWithCallback, "QDBusAbstractInterface_callWithCallback");
 
 function  QDBusAbstractInterface_callWithCallback2(handle:not null QInterfaceH;method:QStringH;args:QObjectListH;receiver:QInterfaceH;member:zstring) return boolean;
 pragma Import(C,QDBusAbstractInterface_callWithCallback2, "QDBusAbstractInterface_callWithCallback2");
 
 function  QDBusAbstractInterface_asyncCall(handle:not null QInterfaceH;method:QStringH;arg1: QVariantH := QVariant_create; arg2:QVariantH := QVariant_create; arg3:QVariantH := QVariant_create; arg4:QVariantH := QVariant_create; arg5:QVariantH := QVariant_create; arg6:QVariantH := QVariant_create; arg7:QVariantH := QVariant_create; arg8:QVariantH := QVariant_create) return QCallH;
 pragma Import(C,QDBusAbstractInterface_asyncCall, "QDBusAbstractInterface_asyncCall");
 
 function  QDBusAbstractInterface_asyncCallWithArgumentList(handle:not null QInterfaceH; method:QStringH;args:QObjectListH) return QCallH;
 pragma Import(C,QDBusAbstractInterface_asyncCallWithArgumentList, "QDBusAbstractInterface_asyncCallWithArgumentList");
 

 function  QDBusConnectionInterface_registeredServiceNames(handle:not null QInterfaceH) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_registeredServiceNames, "QDBusConnectionInterface_registeredServiceNames");
 
 function  QDBusConnectionInterface_isServiceRegistered(handle:not null QInterfaceH;serviceName:QStringH) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_isServiceRegistered, "QDBusConnectionInterface_isServiceRegistered");
 
 function  QDBusConnectionInterface_serviceOwner(handle:not null QInterfaceH;name:QStringH) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_serviceOwner, "QDBusConnectionInterface_serviceOwner");
 
 function  QDBusConnectionInterface_unregisterService(handle:not null QInterfaceH; serviceName:QStringH) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_unregisterService, "QDBusConnectionInterface_unregisterService");
 
 function  QDBusConnectionInterface_registerService(handle:not null QInterfaceH; serviceName:QStringH; qoption:ServiceQueueOptions := DontQueueService; roption:ServiceReplacementOptions := DontAllowReplacement) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_registerService, "QDBusConnectionInterface_registerService");
 
 function  QDBusConnectionInterface_servicePid(handle:not null QInterfaceH; serviceName:QStringH) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_servicePid, "QDBusConnectionInterface_servicePid");
 
 function  QDBusConnectionInterface_serviceUid(handle:not null QInterfaceH;serviceName:QStringH) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_serviceUid, "QDBusConnectionInterface_serviceUid");
 
 function  QDBusConnectionInterface_startService(handle:not null QInterfaceH;name:QStringH) return QObjectH;
 pragma Import(C,QDBusConnectionInterface_startService, "QDBusConnectionInterface_startService");
 

 function  QDBusServer_create(address:QStringH;parent: QObjectH := null) return QDBusServerH;
 pragma Import(C,QDBusServer_create, "QDBusServer_create");
 
 function  QDBusServer_create3(parent:QObjectH := null) return QDBusServerH;
 pragma Import(C,QDBusServer_create3, "QDBusServer_create3");
 
 procedure QDBusServer_destroy(handle:not null QDBusServerH);
 pragma Import(C,QDBusServer_destroy, "QDBusServer_destroy");
 
 function  QDBusServer_isConnected(handle:not null QDBusServerH) return boolean;
 pragma Import(C,QDBusServer_isConnected, "QDBusServer_isConnected");
 
 function  QDBusServer_lastError(handle:not null QDBusServerH) return QErrorH;
 pragma Import(C,QDBusServer_lastError, "QDBusServer_lastError");
 
 function  QDBusServer_address(handle:not null QDBusServerH) return QStringH;
 pragma Import(C,QDBusServer_address, "QDBusServer_address");
 
 procedure QDBusServer_setAnonymousAuthenticationAllowed(handle:not null QDBusServerH;value:boolean);
 pragma Import(C,QDBusServer_setAnonymousAuthenticationAllowed, "QDBusServer_setAnonymousAuthenticationAllowed");
 
 function  QDBusServer_isAnonymousAuthenticationAllowed(handle:not null QDBusServerH) return boolean;
 pragma Import(C,QDBusServer_isAnonymousAuthenticationAllowed, "QDBusServer_isAnonymousAuthenticationAllowed");
 

 function  QDBusConnection_create(name:QStringH) return QConnectionH;
 pragma Import(C,QDBusConnection_create, "QDBusConnection_create");
 
 function  QDBusConnection_create2(other:QConnectionH) return QConnectionH;
 pragma Import(C,QDBusConnection_create2, "QDBusConnection_create2");
 
 procedure QDBusConnection_destroy(handle:not null QConnectionH);
 pragma Import(C,QDBusConnection_destroy, "QDBusConnection_destroy");
 
 procedure QDBusConnection_swap(handle,other:not null QConnectionH);
 pragma Import(C,QDBusConnection_swap, "QDBusConnection_swap");
 
 function  QDBusConnection_isConnected(handle:not null QConnectionH) return boolean;
 pragma Import(C,QDBusConnection_isConnected, "QDBusConnection_isConnected");
 
 function  QDBusConnection_baseService(handle:not null QConnectionH) return QStringH;
 pragma Import(C,QDBusConnection_baseService, "QDBusConnection_baseService");
 
 function  QDBusConnection_lastError(handle:not null QConnectionH) return QErrorH;
 pragma Import(C,QDBusConnection_lastError, "QDBusConnection_lastError");
 
 function  QDBusConnection_name(handle:not null QConnectionH) return QStringH;
 pragma Import(C,QDBusConnection_name, "QDBusConnection_name");
 
 function  QDBusConnection_connectionCapabilities(handle:not null QConnectionH) return ConnectionCapabilities;
 pragma Import(C,QDBusConnection_connectionCapabilities, "QDBusConnection_connectionCapabilities");
 
 function  QDBusConnection_send(handle:not null QConnectionH ;message:QMessageH) return boolean;
 pragma Import(C,QDBusConnection_send, "QDBusConnection_send");
 
 function  QDBusConnection_callWithCallback(handle:not null QConnectionH;message:QMessageH;receiver:QObjectH; returnMethod,errorMethod:zstring;timeout: integer := -1) return boolean;
 pragma Import(C,QDBusConnection_callWithCallback, "QDBusConnection_callWithCallback");
 
 function  QDBusConnection_callWithCallback2(handle:not null QConnectionH;message:QMessageH;receiver:QObjectH;slot:zstring;timeout:integer := -1) return boolean;
 pragma Import(C,QDBusConnection_callWithCallback2, "QDBusConnection_callWithCallback2");
 
 function  QDBusConnection_call(handle:not null QConnectionH ;message:QMessageH;mode:CallMode := Block;timeout:integer := -1) return QMessageH;
 pragma Import(C,QDBusConnection_call, "QDBusConnection_call");
 
 function  QDBusConnection_asyncCall(handle:not null QConnectionH;message:QMessageH;timeout:integer := -1) return QCallH;
 pragma Import(C,QDBusConnection_asyncCall, "QDBusConnection_asyncCall");
 
 function  QDBusConnection_connect(handle:not null QConnectionH;service,path,inter_face,name: QStringH;receiver:QObjectH;slot:zstring) return boolean;
 pragma Import(C,QDBusConnection_connect, "QDBusConnection_connect");
 
 function  QDBusConnection_connect2(handle:not null QConnectionH ;service,path,inter_face,name,signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 pragma Import(C,QDBusConnection_connect2, "QDBusConnection_connect2");
 
 function  QDBusConnection_connect3(handle:not null QConnectionH;service,path,inter_face,name:QStringH; argumentMatch:QStringListH;signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 pragma Import(C,QDBusConnection_connect3, "QDBusConnection_connect3");
 
 function  QDBusConnection_disconnect(handle:not null QConnectionH;service,path,inter_face,name:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 pragma Import(C,QDBusConnection_disconnect, "QDBusConnection_disconnect");
 
 function  QDBusConnection_disconnect2(handle:not null QConnectionH;service,path,inter_face,name,signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 pragma Import(C,QDBusConnection_disconnect2, "QDBusConnection_disconnect2");
 
 function  QDBusConnection_disconnect3(handle:not null QConnectionH;service,path,inter_face,name:QStringH;argumentMatch:QStringListH;signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 pragma Import(C,QDBusConnection_disconnect3, "QDBusConnection_disconnect3");
 
 function  QDBusConnection_registerObject(handle:not null QConnectionH;path:QStringH; object:QObjectH;options:RegisterOptions := ExportAdaptors) return boolean;
 pragma Import(C,QDBusConnection_registerObject, "QDBusConnection_registerObject");
 
 function  QDBusConnection_registerObject2(handle:not null QConnectionH;path,inter_face:QStringH;object:QObjectH;options:RegisterOptions := ExportAdaptors) return boolean;
 pragma Import(C,QDBusConnection_registerObject2, "QDBusConnection_registerObject2");
 
 procedure QDBusConnection_unregisterObject(handle:not null QConnectionH;path:QStringH;mode:UnregisterMode := UnregisterNode);
 pragma Import(C,QDBusConnection_unregisterObject, "QDBusConnection_unregisterObject");
 
 function  QDBusConnection_objectRegisteredAt( handle:not null QConnectionH;path:QStringH) return QObjectH;
 pragma Import(C,QDBusConnection_objectRegisteredAt, "QDBusConnection_objectRegisteredAt");
 
 function  QDBusConnection_registerVirtualObject( handle:not null QConnectionH;path:QStringH;object:QObjectH;options: VirtualObjectRegisterOption := SingleNode) return boolean;
 pragma Import(C,QDBusConnection_registerVirtualObject, "QDBusConnection_registerVirtualObject");
 
 function  QDBusConnection_registerService(handle:not null QConnectionH;serviceName:QStringH) return boolean;
 pragma Import(C,QDBusConnection_registerService, "QDBusConnection_registerService");
 
 function  QDBusConnection_unregisterService(handle:not null QConnectionH;serviceName:QStringH) return boolean;
 pragma Import(C,QDBusConnection_unregisterService, "QDBusConnection_unregisterService");
 
 function  QDBusConnection_inter_face(handle:not null QConnectionH) return QInterfaceH;
 pragma Import(C,QDBusConnection_inter_face, "QDBusConnection_inter_face");
 
 procedure QDBusConnection_internalPointer(handle:not null QConnectionH);
 pragma Import(C,QDBusConnection_internalPointer, "QDBusConnection_internalPointer");
 
 function  QDBusConnection_connectToBus(tp:BusType;name:QStringH) return QConnectionH;
 pragma Import(C,QDBusConnection_connectToBus, "QDBusConnection_connectToBus");
 
 function  QDBusConnection_connectToBus2(address,name:QStringH) return QConnectionH;
 pragma Import(C,QDBusConnection_connectToBus2, "QDBusConnection_connectToBus2");
 
 function  QDBusConnection_connectToPeer(address,name:QStringH) return QConnectionH;
 pragma Import(C,QDBusConnection_connectToPeer, "QDBusConnection_connectToPeer");
 
 procedure QDBusConnection_disconnectFromBus(name:QStringH);
 pragma Import(C,QDBusConnection_disconnectFromBus, "QDBusConnection_disconnectFromBus");
 
 procedure QDBusConnection_disconnectFromPeer(name:QStringH);
 pragma Import(C,QDBusConnection_disconnectFromPeer, "QDBusConnection_disconnectFromPeer");
 
 function  QDBusConnection_localMachineId return QByteArrayH;
 pragma Import(C,QDBusConnection_localMachineId, "QDBusConnection_localMachineId");
 
 function  QDBusConnection_sessionBus return QConnectionH;
 pragma Import(C,QDBusConnection_sessionBus, "QDBusConnection_sessionBus");
 
 function  QDBusConnection_systemBus return QConnectionH;
 pragma Import(C,QDBusConnection_systemBus, "QDBusConnection_systemBus");
 

 function  QDBusArgument_create return QArgumentH;
 pragma Import(C,QDBusArgument_create, "QDBusArgument_create");
 
 function  QDBusArgument_create2(other:QArgumentH) return QArgumentH;
 pragma Import(C,QDBusArgument_create2, "QDBusArgument_create2");
 
 procedure QDBusArgument_destroy(handle:not null QArgumentH);
 pragma Import(C,QDBusArgument_destroy, "QDBusArgument_destroy");
 
 procedure QDBusArgument_swap(handle,other:not null QArgumentH);
 pragma Import(C,QDBusArgument_swap, "QDBusArgument_swap");
 
 procedure QDBusArgument_beginStructure(handle:not null QArgumentH);
 pragma Import(C,QDBusArgument_beginStructure, "QDBusArgument_beginStructure");
 
 procedure QDBusArgument_endStructure(handle:not null QArgumentH);
 pragma Import(C,QDBusArgument_endStructure, "QDBusArgument_endStructure");
 
 procedure QDBusArgument_beginArray(handle:not null QArgumentH;elementMetaTypeId:integer);
 pragma Import(C,QDBusArgument_beginArray, "QDBusArgument_beginArray");
 
 procedure QDBusArgument_endArray(handle:not null QArgumentH);
 pragma Import(C,QDBusArgument_endArray, "QDBusArgument_endArray");
 
 procedure QDBusArgument_beginMap(handle:not null QArgumentH;keyMetaTypeId,valueMetaTypeId:integer);
 pragma Import(C,QDBusArgument_beginMap, "QDBusArgument_beginMap");
 
 procedure QDBusArgument_endMap(handle:not null QArgumentH);
 pragma Import(C,QDBusArgument_endMap, "QDBusArgument_endMap");
 
 procedure QDBusArgument_beginMapEntry(handle:not null QArgumentH);
 pragma Import(C,QDBusArgument_beginMapEntry, "QDBusArgument_beginMapEntry");
 
 procedure QDBusArgument_endMapEntry(handle:not null QArgumentH);
 pragma Import(C,QDBusArgument_endMapEntry, "QDBusArgument_endMapEntry");
 
 procedure QDBusArgument_appendVariant(handle:not null QArgumentH;var:QVariantH);
 pragma Import(C,QDBusArgument_appendVariant, "QDBusArgument_appendVariant");
 
 function  QDBusArgument_currentSignature(handle:not null QArgumentH) return QStringH;
 pragma Import(C,QDBusArgument_currentSignature, "QDBusArgument_currentSignature");
 
 function  QDBusArgument_currentType(handle:not null QArgumentH) return ElementType;
 pragma Import(C,QDBusArgument_currentType, "QDBusArgument_currentType");
 
 function  QDBusArgument_atEnd(handle:not null QArgumentH) return boolean;
 pragma Import(C,QDBusArgument_atEnd, "QDBusArgument_atEnd");
 
 function  QDBusArgument_asVariant(handle:not null QConnectionH) return QVariantH;
 pragma Import(C,QDBusArgument_asVariant, "QDBusArgument_asVariant");
 
 function  QDBusInterface_create(service,path:QStringH;inter_face: QStringH := QString_create;connection: QConnectionH := QDBusConnection_create2(QDBusConnection_sessionBus);parent:QObjectH := null) return QInterfaceH;
 pragma Import(C,QDBusInterface_create, "QDBusInterface_create");
 

 function  QDBusError_create return QErrorH;
 pragma Import(C,QDBusError_create, "QDBusError_create");
 
 function  QDBusError_create2(error:ErrorType;message: QStringH) return QErrorH;
 pragma Import(C,QDBusError_create2, "QDBusError_create2");
 
 function  QDBusError_create3(other:QErrorH) return QErrorH;
 pragma Import(C,QDBusError_create3, "QDBusError_create3");
 
 procedure QDBusError_swap(handle,other:not null QErrorH);
 pragma Import(C,QDBusError_swap, "QDBusError_swap");
 
 function  QDBusError_type(handle:not null QErrorH) return ErrorType;
 pragma Import(C,QDBusError_type, "QDBusError_type");
 
 function  QDBusError_name(handle:not null QErrorH) return QStringH;
 pragma Import(C,QDBusError_name, "QDBusError_name");
 
 function  QDBusError_message(handle:not null QErrorH) return QStringH;
 pragma Import(C,QDBusError_message, "QDBusError_message");
 
 function  QDBusError_isValid(handle:not null QErrorH) return boolean;
 pragma Import(C,QDBusError_isValid, "QDBusError_isValid");
 
 function QDBusError_errorString(error:ErrorType) return QStringH;
 pragma Import(C,QDBusError_errorString, "QDBusError_errorString");
 

 function  QDBusContext_create return QContextH ;
 pragma Import(C,QDBusContext_create, "QDBusContext_create");
 
 procedure QDBusContext_desroy(handle:not null QContextH);
 pragma Import(C,QDBusContext_desroy, "QDBusContext_desroy");
 
 function  QDBusContext_calledFromDBus(handle:not null QContextH) return boolean;
 pragma Import(C,QDBusContext_calledFromDBus, "QDBusContext_calledFromDBus");
 
 function  QDBusContext_connection(handle:not null QContextH) return QConnectionH;
 pragma Import(C,QDBusContext_connection, "QDBusContext_connection");
 
 function  QDBusContext_message(handle:not null QContextH) return QMessageH;
 pragma Import(C,QDBusContext_message, "QDBusContext_message");
 
 function  QDBusContext_isDelayedReply(handle:not null QContextH) return boolean;
 pragma Import(C,QDBusContext_isDelayedReply, "QDBusContext_isDelayedReply");
 
 procedure QDBusContext_setDelayedReply(handle:not null QContextH;enable:boolean);
 pragma Import(C,QDBusContext_setDelayedReply, "QDBusContext_setDelayedReply");
 
 procedure QDBusContext_sendErrorReply(handle:not null QContextH;name:QStringH;msg:QStringH := QString_create);
 pragma Import(C,QDBusContext_sendErrorReply, "QDBusContext_sendErrorReply");
 
 procedure QDBusContext_sendErrorReply2(handle:not null QContextH;tp:ErrorType;msg: QStringH := QString_create);
 pragma Import(C,QDBusContext_sendErrorReply2, "QDBusContext_sendErrorReply2");
 

 function  QDBusObjectPath_create return QPathH;
 pragma Import(C,QDBusObjectPath_create, "QDBusObjectPath_create");
 
 function  QDBusObjectPath_create2(path: zstring) return QPathH;
 pragma Import(C,QDBusObjectPath_create2, "QDBusObjectPath_create2");
 
 function  QDBusObjectPath_create3(path:QLatin1StringH) return QPathH;
 pragma Import(C,QDBusObjectPath_create3, "QDBusObjectPath_create3");
 
 function  QDBusObjectPath_create4(path:QStringH) return QPathH;
 pragma Import(C,QDBusObjectPath_create4, "QDBusObjectPath_create4");
 
 procedure QDBusObjectPath_swap(handle,other:not null QPathH);
 pragma Import(C,QDBusObjectPath_swap, "QDBusObjectPath_swap");
 
 procedure QDBusObjectPath_setPath(handle:not null QPathH;path:QStringH);
 pragma Import(C,QDBusObjectPath_setPath, "QDBusObjectPath_setPath");
 
 function  QDBusObjectPath_path(handle:not null QPathH) return QStringH;
 pragma Import(C,QDBusObjectPath_path, "QDBusObjectPath_path");
 

 function  QDBusSignature_create return QSignatureH;
 pragma Import(C,QDBusSignature_create, "QDBusSignature_create");
 
 function  QDBusSignature_create2(signature:zstring) return QSignatureH;
 pragma Import(C,QDBusSignature_create2, "QDBusSignature_create2");
 
 function  QDBusSignature_create3(signature:QLatin1StringH) return QSignatureH;
 pragma Import(C,QDBusSignature_create3, "QDBusSignature_create3");
 
 function  QDBusSignature_create4(signature:QStringH) return QSignatureH;
 pragma Import(C,QDBusSignature_create4, "QDBusSignature_create4");
 
 procedure QDBusSignature_swap(handle,other:not null QSignatureH);
 pragma Import(C,QDBusSignature_swap, "QDBusSignature_swap");
 
 procedure QDBusSignature_setSignature(handle:not null QSignatureH;signature:QStringH);
 pragma Import(C,QDBusSignature_setSignature, "QDBusSignature_setSignature");
 
 function  QDBusSignature_signature(handle:not null QSignatureH) return QStringH;
 pragma Import(C,QDBusSignature_signature, "QDBusSignature_signature");
 
 function  QDBusSignature_qHash(signature:QSignatureH;seed: quint := 0) return quint;
 pragma Import(C,QDBusSignature_qHash, "QDBusSignature_qHash");
 

 function  QDBusVariant_create return QVariantH;
 pragma Import(C,QDBusVariant_create, "QDBusVariant_create");
 
 function  QDBusVariant_create2(variant:QVariantH) return QVariantH;
 pragma Import(C,QDBusVariant_create2, "QDBusVariant_create2");
 
 procedure QDBusVariant_swap(handle,other:not null QVariantH);
 pragma Import(C,QDBusVariant_swap, "QDBusVariant_swap");
 
 procedure QDBusVariant_setVariant(handle:not null QObjectH;variant:QVariantH);
 pragma Import(C,QDBusVariant_setVariant, "QDBusVariant_setVariant");
 
 function  QDBusVariant_variant(handle:not null QVariantH) return QVariantH;
 pragma Import(C,QDBusVariant_variant, "QDBusVariant_variant");
 

 function  QDBusMessage_create return QMessageH;
 pragma Import(C,QDBusMessage_create, "QDBusMessage_create");
 
 function  QDBusMessage_create2(other:QMessageH) return QMessageH;
 pragma Import(C,QDBusMessage_create2, "QDBusMessage_create2");
 
 procedure QDBusMessage_destroy(handle:not null QMessageH);
 pragma Import(C,QDBusMessage_destroy, "QDBusMessage_destroy");
 
 procedure QDBusMessage_swap(handle,other:not null QMessageH);
 pragma Import(C,QDBusMessage_swap, "QDBusMessage_swap");
 
 function  QDBusMessage_createSignal(path,inter_face,name:QStringH) return QMessageH;
 pragma Import(C,QDBusMessage_createSignal, "QDBusMessage_createSignal");
 
 function  QDBusMessage_createTargetedSignal(service,path,inter_face,name:QStringH) return QMessageH;
 pragma Import(C,QDBusMessage_createTargetedSignal, "QDBusMessage_createTargetedSignal");
 
 function  QDBusMessage_createMethodCall(destination,path,inter_face,method:QStringH) return QMessageH;
 pragma Import(C,QDBusMessage_createMethodCall, "QDBusMessage_createMethodCall");
 
 function  QDBusMessage_createError(name,msg:QStringH) return QMessageH;
 pragma Import(C,QDBusMessage_createError, "QDBusMessage_createError");
 
 function  QDBusMessage_createError2(err:QErrorH) return QMessageH;
 pragma Import(C,QDBusMessage_createError2, "QDBusMessage_createError2");
 
 function  QDBusMessage_createError3(tp:ErrorType;msg:QStringH) return QMessageH;
 pragma Import(C,QDBusMessage_createError3, "QDBusMessage_createError3");
 
 function  QDBusMessage_createReply(handle:not null QMessageH;arguments:QObjectListH := QObjectList_create) return QMessageH;
 pragma Import(C,QDBusMessage_createReply, "QDBusMessage_createReply");
 
 function  QDBusMessage_createReply2(handle:not null QMessageH;argument:QVariantH) return QMessageH;
 pragma Import(C,QDBusMessage_createReply2, "QDBusMessage_createReply2");
 
 function  QDBusMessage_createErrorReply(handle:not null QMessageH;name,msg:QStringH) return QMessageH;
 pragma Import(C,QDBusMessage_createErrorReply, "QDBusMessage_createErrorReply");
 
 function  QDBusMessage_createErrorReply2(handle:not null QMessageH;err:QErrorH) return QMessageH;
 pragma Import(C,QDBusMessage_createErrorReply2, "QDBusMessage_createErrorReply2");
 
 function  QDBusMessage_createErrorReply3(handle:not null QMessageH;tp:ErrorType;msg:QStringH) return QMessageH;
 pragma Import(C,QDBusMessage_createErrorReply3, "QDBusMessage_createErrorReply3");
 
 function  QDBusMessage_service(handle:not null QMessageH) return QStringH;
 pragma Import(C,QDBusMessage_service, "QDBusMessage_service");
 
 function  QDBusMessage_path(handle:not null QMessageH) return QStringH;
 pragma Import(C,QDBusMessage_path, "QDBusMessage_path");
 
 function  QDBusMessage_inter_face(handle:not null QMessageH) return QStringH;
 pragma Import(C,QDBusMessage_inter_face, "QDBusMessage_inter_face");
 
 function  QDBusMessage_member(handle:not null QMessageH) return QStringH;
 pragma Import(C,QDBusMessage_member, "QDBusMessage_member");
 
 function  QDBusMessage_errorName(handle:not null QMessageH) return QStringH;
 pragma Import(C,QDBusMessage_errorName, "QDBusMessage_errorName");
 
 function  QDBusMessage_errorMessage(handle:not null QMessageH) return QStringH;
 pragma Import(C,QDBusMessage_errorMessage, "QDBusMessage_errorMessage");
 
 function  QDBusMessage_type(handle:not null QMessageH) return MessageType;
 pragma Import(C,QDBusMessage_type, "QDBusMessage_type");
 
 function  QDBusMessage_signature(handle:not null QMessageH) return QStringH;
 pragma Import(C,QDBusMessage_signature, "QDBusMessage_signature");
 
 function  QDBusMessage_isReplyRequired(handle:not null QMessageH) return boolean;
 pragma Import(C,QDBusMessage_isReplyRequired, "QDBusMessage_isReplyRequired");
 
 procedure QDBusMessage_setDelayedReply(handle:not null QMessageH; enable:boolean);
 pragma Import(C,QDBusMessage_setDelayedReply, "QDBusMessage_setDelayedReply");
 
 function  QDBusMessage_isDelayedReply(handle:not null QMessageH) return boolean;
 pragma Import(C,QDBusMessage_isDelayedReply, "QDBusMessage_isDelayedReply");
 
 procedure QDBusMessage_setAutoStartService(handle:not null QMessageH;enable:boolean);
 pragma Import(C,QDBusMessage_setAutoStartService, "QDBusMessage_setAutoStartService");
 
 function  QDBusMessage_autoStartService(handle:not null QMessageH) return boolean;
 pragma Import(C,QDBusMessage_autoStartService, "QDBusMessage_autoStartService");
 
 procedure QDBusMessage_setArguments(handle:not null QMessageH;arguments:QObjectListH);
 pragma Import(C,QDBusMessage_setArguments, "QDBusMessage_setArguments");
 
 function  QDBusMessage_arguments(handle:not null QObjectH) return QObjectListH;
 pragma Import(C,QDBusMessage_arguments, "QDBusMessage_arguments");
 

 function  QDBusPendingCall_create(other:QCallH) return QCallH;
 pragma Import(C,QDBusPendingCall_create, "QDBusPendingCall_create");
 
 procedure QDBusPendingCall_destroy(handle:not null QCallH);
 pragma Import(C,QDBusPendingCall_destroy, "QDBusPendingCall_destroy");
 
 procedure QDBusPendingCall_swap(handle,other:not null QCallH);
 pragma Import(C,QDBusPendingCall_swap, "QDBusPendingCall_swap");
 
 function  QDBusPendingCall_fromError(error:QErrorH) return QCallH;
 pragma Import(C,QDBusPendingCall_fromError, "QDBusPendingCall_fromError");
 
 function  QDBusPendingCall_fromCompletedCall(message:QMessageH) return QCallH;
 pragma Import(C,QDBusPendingCall_fromCompletedCall, "QDBusPendingCall_fromCompletedCall");
 

 function  QDBusServiceWatcher_create(service:QStringH;connection:QConnectionH;watchMd:WatchModeFlag := WatchForOwnerChange; parent:QWatcherH := null) return QWatcherH;
 pragma Import(C,QDBusServiceWatcher_create, "QDBusServiceWatcher_create");
 
 procedure QDBusServiceWatcher_destroy(handle:not null QWatcherH);
 pragma Import(C,QDBusServiceWatcher_destroy, "QDBusServiceWatcher_destroy");
 
 function  QDBusServiceWatcher_watchedServices(handle:not null QWatcherH) return QStringListH;
 pragma Import(C,QDBusServiceWatcher_watchedServices, "QDBusServiceWatcher_watchedServices");
 
 procedure QDBusServiceWatcher_setWatchedServices(handle:not null QWatcherH;services:QStringListH);
 pragma Import(C,QDBusServiceWatcher_setWatchedServices, "QDBusServiceWatcher_setWatchedServices");
 
 procedure QDBusServiceWatcher_addWatchedService(handle:not null QWatcherH;newService:QStringH);
 pragma Import(C,QDBusServiceWatcher_addWatchedService, "QDBusServiceWatcher_addWatchedService");
 
 function  QDBusServiceWatcher_removeWatchedService(handle:not null QWatcherH;service:QStringH) return boolean;
 pragma Import(C,QDBusServiceWatcher_removeWatchedService, "QDBusServiceWatcher_removeWatchedService");
 
 function  QDBusServiceWatcher_watchMode(handle:not null QWatcherH) return WatchModeFlag;
 pragma Import(C,QDBusServiceWatcher_watchMode, "QDBusServiceWatcher_watchMode");
 
 procedure QDBusServiceWatcher_setWatchMode(handle:not null QWatcherH;mode:WatchModeFlag);
 pragma Import(C,QDBusServiceWatcher_setWatchMode, "QDBusServiceWatcher_setWatchMode");
 
 function  QDBusServiceWatcher_connection(handle:not null QWatcherH) return QConnectionH;
 pragma Import(C,QDBusServiceWatcher_connection, "QDBusServiceWatcher_connection");
 
 procedure QDBusServiceWatcher_setConnection(handle:not null QWatcherH;connection:QConnectionH);
 pragma Import(C,QDBusServiceWatcher_setConnection, "QDBusServiceWatcher_setConnection");
 
 function  QDBusPendingReply_create return QReplyH;
 pragma Import(C,QDBusPendingReply_create, "QDBusPendingReply_create");
 
 function  QDBusPendingReply_create2(other:QReplyH) return QReplyH;
 pragma Import(C,QDBusPendingReply_create2, "QDBusPendingReply_create2");
 
 function  QDBusPendingReply_create3(call:QCallH) return QReplyH;
 pragma Import(C,QDBusPendingReply_create3, "QDBusPendingReply_create3");
 
 function  QDBusPendingReply_create4(message:QMessageH) return QReplyH;
 pragma Import(C,QDBusPendingReply_create4, "QDBusPendingReply_create4");
 
 function  QDBusPendingReply_count(handle:not null QReplyH) return integer;
 pragma Import(C,QDBusPendingReply_count, "QDBusPendingReply_count");
 
 function  QDBusPendingReply_argumentAt(handle:not null QReplyH;index:integer) return QVariantH;
 pragma Import(C,QDBusPendingReply_argumentAt, "QDBusPendingReply_argumentAt");
 
 function  QDBusPendingReply_isFinished(handle:not null QReplyH) return boolean;
 pragma Import(C,QDBusPendingReply_isFinished, "QDBusPendingReply_isFinished");
 
 procedure QDBusPendingReply_waitForFinished(handle:not null QReplyH);
 pragma Import(C,QDBusPendingReply_waitForFinished, "QDBusPendingReply_waitForFinished");
 
 function  QDBusPendingReply_isValid(handle:not null QReplyH) return boolean;
 pragma Import(C,QDBusPendingReply_isValid, "QDBusPendingReply_isValid");
 
 function  QDBusPendingReply_isError(handle:not null QReplyH) return boolean;
 pragma Import(C,QDBusPendingReply_isError, "QDBusPendingReply_isError");
 
 function  QDBusPendingReply_error(handle:not null QReplyH) return QErrorH;
 pragma Import(C,QDBusPendingReply_error, "QDBusPendingReply_error");
 
 function  QDBusPendingReply_reply(handle:not null QReplyH) return QMessageH;
 pragma Import(C,QDBusPendingReply_reply, "QDBusPendingReply_reply");
 
 type connectionCallbackH is access procedure(connection: QConnectionH);
 pragma convention(C,connectionCallbackH);

 type stringCallbackH is access procedure(str: QStringH);
 pragma convention(C,stringCallbackH);

 type ssstringCallbackH is access procedure(s1,s2,s3: QStringH);
 pragma convention(C,ssstringCallbackH);

 procedure QDBusServer_signal_slot_newConnection(handle:not null QDBusServerH; hook: connectionCallbackH);
 pragma Import(C,QDBusServer_signal_slot_newConnection, "QDBusServer_signal_slot_newConnection");
 
 procedure QDBusServiceWatcher_signal_slot_serviceRegistered(handle:not null QWatcherH; hook: stringCallBackH);
 pragma Import(C,QDBusServiceWatcher_signal_slot_serviceRegistered, "QDBusServiceWatcher_signal_slot_serviceRegistered");
 
 procedure QDBusServiceWatcher_signal_slot_serviceUnregistered(handle:not null QWatcherH; hook: stringCallBackH);
 pragma Import(C,QDBusServiceWatcher_signal_slot_serviceUnregistered, "QDBusServiceWatcher_signal_slot_serviceUnregistered");
 
 procedure QDBusServiceWatcher_signal_slot_serviceOwnerChanged(handle:not null QWatcherH; hook: ssstringCallbackH);
 pragma Import(C,QDBusServiceWatcher_signal_slot_serviceOwnerChanged, "QDBusServiceWatcher_signal_slot_serviceOwnerChanged");

-------------------------------------------------------------------
 function  QDBusAbstractInterface_call(handle:not null QInterfaceH;mode:CallMode;method:QStringH; arg1:QVariantH := QVariant_create;arg2:QVariantH := QVariant_create; arg3:QVariantH := QVariant_create; arg4:QVariantH := QVariant_create; arg5:QVariantH := QVariant_create; arg6:QVariantH := QVariant_create; arg7:QVariantH := QVariant_create; arg8:QVariantH := QVariant_create) return QMessageH;                
 function  QDBusAbstractInterface_callWithCallback(handle:not null QInterfaceH;method:QStringH;args:QObjectListH;receiver:QInterfaceH;member:zstring) return boolean;
 function  QDBusServer_create(parent:QObjectH := null) return QDBusServerH;
 function  QDBusConnection_create(other:QConnectionH) return QConnectionH;
 function  QDBusConnection_callWithCallback(handle:not null QConnectionH;message:QMessageH;receiver:QObjectH;slot:zstring;timeout:integer := -1) return boolean;
 function  QDBusConnection_connect(handle:not null QConnectionH ;service,path,inter_face,name,signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 function  QDBusConnection_connect(handle:not null QConnectionH;service,path,inter_face,name:QStringH; argumentMatch:QStringListH;signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 function  QDBusConnection_disconnect(handle:not null QConnectionH;service,path,inter_face,name,signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 function  QDBusConnection_disconnect(handle:not null QConnectionH;service,path,inter_face,name:QStringH;argumentMatch:QStringListH;signature:QStringH;receiver:QObjectH;slot:zstring) return boolean;
 function  QDBusConnection_registerObject(handle:not null QConnectionH;path,inter_face:QStringH;object:QObjectH;options:RegisterOptions := ExportAdaptors) return boolean;
 function  QDBusConnection_connectToBus(address,name:QStringH) return QConnectionH;
 function  QDBusArgument_create(other:QArgumentH) return QArgumentH;
 function  QDBusError_create(error:ErrorType;message: QStringH) return QErrorH;
 function  QDBusError_create(other:QErrorH) return QErrorH;
 procedure QDBusContext_sendErrorReply(handle:not null QContextH;tp:ErrorType;msg: QStringH := QString_create);
 function  QDBusObjectPath_create(path: zstring) return QPathH;
 function  QDBusObjectPath_create(path:QLatin1StringH) return QPathH;
 function  QDBusObjectPath_create(path:QStringH) return QPathH;
 function  QDBusSignature_create(signature:zstring) return QSignatureH;
 function  QDBusSignature_create(signature:QLatin1StringH) return QSignatureH;
 function  QDBusSignature_create(signature:QStringH) return QSignatureH;
 function  QDBusVariant_create(variant:QVariantH) return QVariantH;
 function  QDBusMessage_create(other:QMessageH) return QMessageH;
 function  QDBusMessage_createError(err:QErrorH) return QMessageH;
 function  QDBusMessage_createError(tp:ErrorType;msg:QStringH) return QMessageH;
 function  QDBusMessage_createReply(handle:not null QMessageH;argument:QVariantH) return QMessageH;
 function  QDBusMessage_createErrorReply(handle:not null QMessageH;err:QErrorH) return QMessageH;
 function  QDBusMessage_createErrorReply(handle:not null QMessageH;tp:ErrorType;msg:QStringH) return QMessageH;
  function  QDBusPendingReply_create(other:QReplyH) return QReplyH;
 function  QDBusPendingReply_create(call:QCallH) return QReplyH;
 function  QDBusPendingReply_create(message:QMessageH) return QReplyH;

end; 
