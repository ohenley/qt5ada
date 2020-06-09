-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016 ,2017,2018                บ
-- บ Copyright (C) 2012,2016, 2017,2018                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

-- Thanks a lot for Stefan Frings  QtWebApp http://stefanfrings.de
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QSerialBus is

 type CanBusError  is (NoError,ReadError,WriteError,ConnectionError,ConfigurationError,UnknownError);
 pragma convention(C,CanBusError); 
    
 type CanBusDeviceState is (UnconnectedState,ConnectingState,ConnectedState,ClosingState);
 pragma convention(C,CanBusDeviceState);    

 type ConfigurationKey is new integer;
     
  RawFilterKey   : constant ConfigurationKey  := 0;
  ErrorFilterKey : constant ConfigurationKey  := 1;
  LoopbackKey    : constant ConfigurationKey  := 2;
  ReceiveOwnKey  : constant ConfigurationKey  := 3;
  BitRateKey     : constant ConfigurationKey  := 4;
  CanFdKey       : constant ConfigurationKey  := 5;
  UserKey        : constant ConfigurationKey  :=30;
  
 type FrameType is (UnknownFrame,DataFrame,ErrorFrame,RemoteRequestFrame,InvalidFrame);
 pragma convention(C,FrameType); 
 
  type FrameError is new integer;  
  subtype FrameErrors is FrameError; -- only 29 bits usable
        NoErrorS                   : constant FrameError :=  0;
        TransmissionTimeoutError   : constant FrameError :=  1;
        LostArbitrationError       : constant FrameError :=  2#10#;
        ControllerError            : constant FrameError :=  2#100#;
        ProtocolViolationError     : constant FrameError :=  2#1000#;
        TransceiverError           : constant FrameError :=  2#10000#;
        MissingAcknowledgmentError : constant FrameError :=  2#100000#;
        BusOffError                : constant FrameError :=  2#1000000#;
        BusError                   : constant FrameError :=  2#10000000#;
        ControllerRestartError     : constant FrameError :=  2#100000000#;
        UnknownErrorS              : constant FrameError :=  2#1000000000#;
        AnyError                   : constant FrameError := 16#1FFFFFFF#;
          

  type Direction is new integer;
    Input        : constant Direction := 1;
    Output       : constant Direction := 2;
    AllDirections: constant Direction := Input + Output;

  type BaudRate is new long_long_integer;
        
  Baud1200   : constant BaudRate := 1200;
  Baud2400   : constant BaudRate := 2400;
  Baud4800   : constant BaudRate := 4800;
  Baud9600   : constant BaudRate := 9600;
  Baud19200  : constant BaudRate := 19200;
  Baud38400  : constant BaudRate := 38400;
  Baud57600  : constant BaudRate := 57600;
  Baud115200 : constant BaudRate := 115200;
  UnknownBaud: constant BaudRate := -1;      

  type DataBits is (Data5,Data6,Data7,Data8,UnknownDataBits);
  pragma convention(C,DataBits);
  for DataBits use (
        Data5 => 5,
        Data6 => 6,
        Data7 => 7,
        Data8 => 8,
        UnknownDataBits => 16#ffff#
  );

  type Parity is (NoParity,EvenParity,OddParity,SpaceParity,MarkParity,UnknownParity);
  pragma convention(C,Parity);
  for Parity use (
        NoParity => 0,
        EvenParity => 2,
        OddParity => 3,
        SpaceParity => 4,
        MarkParity => 5,
        UnknownParity => 16#ffff#
  );

  type StopBits is (OneStop,TwoStop,OneAndHalfStop,UnknownStopBits);
  pragma convention(C,StopBits);
  for StopBits use (
    OneStop => 1,
    TwoStop => 2,
    OneAndHalfStop => 3,
    UnknownStopBits => 16#ffff#
  );

  type FlowControl is (NoFlowControl,HardwareControl,SoftwareControl,UnknownFlowControl);
  pragma convention(C,FlowControl);
    
  for FlowControl use (
        NoFlowControl      => 0,
        HardwareControl    => 1,
        SoftwareControl    => 2,
        UnknownFlowControl => 16#ffff#
  );

  type PinoutSignal is new integer;
    NoSignal                      :constant PinoutSignal  := 0;
    TransmittedDataSignal         :constant PinoutSignal  := 16#01#;
    ReceivedDataSignal            :constant PinoutSignal  := 16#02#;
    DataTerminalReadySignal       :constant PinoutSignal  := 16#04#;
    DataCarrierDetectSignal       :constant PinoutSignal  := 16#08#;
    DataSetReadySignal            :constant PinoutSignal  := 16#10#;
    RingIndicatorSignal           :constant PinoutSignal  := 16#20#;
    RequestToSendSignal           :constant PinoutSignal  := 16#40#;
    ClearToSendSignal             :constant PinoutSignal  := 16#80#;
    SecondaryTransmittedDataSignal:constant PinoutSignal  := 16#100#;
    SecondaryReceivedDataSignal   :constant PinoutSignal  := 16#200#;


  type DataErrorPolicy is (SkipPolicy,PassZeroPolicy,IgnorePolicy,StopReceivingPolicy,UnknownPolicy); 
  pragma convention(C,DataErrorPolicy);
  for DataErrorPolicy use (
    SkipPolicy          => 0,
    PassZeroPolicy      => 1,
    IgnorePolicy        => 2,
    StopReceivingPolicy => 3,
    UnknownPolicy       => 16#ffff#
  );

  type SerialPortError is (NoError,DeviceNotFoundError,PermissionError,OpenError,ParityError,
        FramingError,BreakConditionError,WriteError,ReadError,ResourceError,
        UnsupportedOperationError,UnknownError,TimeoutError,NotOpenError);
  pragma convention(C,SerialPortError);

  type Option is (DiagnosticRegister,ExceptionStatusOffset,DeviceBusy,AsciiInputDelimiter,ListenOnlyMode,ServerIdentifier,
        RunIndicatorStatus,AdditionalData,DeviceIdentification,UserOption); 
  pragma convention(C,Option);        
  for Option use (
        DiagnosticRegister => 0,
        ExceptionStatusOffset => 1,
        DeviceBusy => 2,
        AsciiInputDelimiter => 3,
        ListenOnlyMode => 4,
        ServerIdentifier => 5,
        RunIndicatorStatus => 6,
        AdditionalData => 7,
        DeviceIdentification => 8,
        UserOption => 16#100#); -- Reserved         

 function  QCanBus_instance return QCanbusDeviceH;
 pragma Import(C,QCanBus_instance, "QCanBus_instance");
 
 function  QCanBus_plugins(handle:not null QCanbusDeviceH) return QStringListH;
 pragma Import(C,QCanBus_plugins, "QCanBus_plugins");
 
 function  QCanBus_createDevice(handle:not null QCanbusDeviceH;plugin:QStringH; interfaceName:QStringH;errorMessage :QStringH := null) return QCanbusDeviceH;
 pragma Import(C,QCanBus_createDevice, "QCanBus_createDevice");
 

 procedure QCanBusDevice_destroy(handle:not null QCanbusDeviceH);
 pragma Import(C,QCanBusDevice_destroy, "QCanBusDevice_destroy");
 
 procedure QCanBusDevice_setConfigurationParameter(handle:not null QCanbusDeviceH;key:integer;value:QVariantH);
 pragma Import(C,QCanBusDevice_setConfigurationParameter, "QCanBusDevice_setConfigurationParameter");
 
 function  QCanBusDevice_configurationParameter(handle:not null QCanbusDeviceH; key:integer) return QVariantH;
 pragma Import(C,QCanBusDevice_configurationParameter, "QCanBusDevice_configurationParameter");
 
 function  QCanBusDevice_configurationKeys(handle:not null QCanbusDeviceH) return QVectorH;
 pragma Import(C,QCanBusDevice_configurationKeys, "QCanBusDevice_configurationKeys");
 
 function  QCanBusDevice_writeFrame(handle:not null QCanbusDeviceH;frame:QFrameH) return boolean;
 pragma Import(C,QCanBusDevice_writeFrame, "QCanBusDevice_writeFrame");
 
 function  QCanBusDevice_readFrame(handle:not null QCanbusDeviceH) return QFrameH;
 pragma Import(C,QCanBusDevice_readFrame, "QCanBusDevice_readFrame");
 
 function  QCanBusDevice_framesAvailable(handle:not null QCanbusDeviceH) return qint64;
 pragma Import(C,QCanBusDevice_framesAvailable, "QCanBusDevice_framesAvailable");
 
 function  QCanBusDevice_framesToWrite(handle:not null QCanbusDeviceH) return qint64;
 pragma Import(C,QCanBusDevice_framesToWrite, "QCanBusDevice_framesToWrite");
 
 function  QCanBusDevice_connectDevice(handle:not null QCanbusDeviceH) return boolean;
 pragma Import(C,QCanBusDevice_connectDevice, "QCanBusDevice_connectDevice");
 
 procedure QCanBusDevice_disconnectDevice(handle:not null QCanbusDeviceH);
 pragma Import(C,QCanBusDevice_disconnectDevice, "QCanBusDevice_disconnectDevice");
 
 function  QCanBusDevice_state(handle:not null QCanbusDeviceH) return CanBusDeviceState;
 pragma Import(C,QCanBusDevice_state, "QCanBusDevice_state");
 
 function  QCanBusDevice_error(handle:not null QCanbusDeviceH) return CanBusError;
 pragma Import(C,QCanBusDevice_error, "QCanBusDevice_error");
 
 function  QCanBusDevice_errorString(handle:not null QCanbusDeviceH) return QStringH;
 pragma Import(C,QCanBusDevice_errorString, "QCanBusDevice_errorString");
 
 function  QCanBusDevice_interpretErrorFrame(handle:not null QCanbusDeviceH; errorFrame:QFrameH) return QStringH;
 pragma Import(C,QCanBusDevice_interpretErrorFrame, "QCanBusDevice_interpretErrorFrame");
 

 function  QCanBusFactory_createDevice(handle:not null QObjectH;interfaceName:QStringH;errorMessage :QStringH := null) return QCanbusDeviceH;
 pragma Import(C,QCanBusFactory_createDevice, "QCanBusFactory_createDevice");
 
 function  QCanBusFrame_isValid(handle:not null QFrameH) return boolean;
 pragma Import(C,QCanBusFrame_isValid, "QCanBusFrame_isValid");
 
 function  QCanBusFrame_create(tp: FrameType) return QFrameH;
 pragma Import(C,QCanBusFrame_create, "QCanBusFrame_create");
 
 function  QCanBusFrame_frameType(handle:not null QFrameH) return FrameType;
 pragma Import(C,QCanBusFrame_frameType, "QCanBusFrame_frameType");
 
 procedure QCanBusFrame_setFrameType(handle:not null QFrameH; newFormat:FrameType);
 pragma Import(C,QCanBusFrame_setFrameType, "QCanBusFrame_setFrameType");
 
 function  QCanBusFrame_hasExtendedFrameFormat(handle:not null QFrameH) return boolean;
 pragma Import(C,QCanBusFrame_hasExtendedFrameFormat, "QCanBusFrame_hasExtendedFrameFormat");
 
 procedure QCanBusFrame_setExtendedFrameFormat(handle:not null QFrameH;isExtended:boolean);
 pragma Import(C,QCanBusFrame_setExtendedFrameFormat, "QCanBusFrame_setExtendedFrameFormat");
 
 function  QCanBusFrame_frameId(handle:not null QFrameH) return quint;
 pragma Import(C,QCanBusFrame_frameId, "QCanBusFrame_frameId");
 
 procedure QCanBusFrame_setFrameId(handle:not null QFrameH; newFrameId:quint);
 pragma Import(C,QCanBusFrame_setFrameId, "QCanBusFrame_setFrameId");
 
 procedure QCanBusFrame_setPayload(handle:not null QFrameH;data:QByteArrayH);
 pragma Import(C,QCanBusFrame_setPayload, "QCanBusFrame_setPayload");
 
-- procedure QCanBusFrame_setTimeStamp(handle:not null QFrameH;ts:in out TimeStamp);
-- pragma Import(C,QCanBusFrame_setTimeStamp, "QCanBusFrame_setTimeStamp");
 
-- function  QCanBusFrame_timeStamp(handle:not null QFrameH) return TimeStamp;
-- pragma Import(C,QCanBusFrame_timeStamp, "QCanBusFrame_timeStamp");
 
 function  QCanBusFrame_payload(handle:not null QFrameH) return QByteArrayH;
 pragma Import(C,QCanBusFrame_payload, "QCanBusFrame_payload");
 
 function  QCanBusFrame_error(handle:not null QFrameH) return FrameErrors;
 pragma Import(C,QCanBusFrame_error, "QCanBusFrame_error");
 
 procedure QCanBusFrame_setError(handle:not null QFrameH;err:FrameErrors);
 pragma Import(C,QCanBusFrame_setError, "QCanBusFrame_setError");
 
 function  QCanBusDeviceInfo_create(other:QCanBusDeviceInfoH) return QCanBusDeviceInfoH;
 pragma Import(C,QCanBusDeviceInfo_create, "QCanBusDeviceInfo_create");
 
 procedure QCanBusDeviceInfo_destroy(handle:not null QCanBusDeviceInfoH);
 pragma Import(C,QCanBusDeviceInfo_destroy, "QCanBusDeviceInfo_destroy");
 
 procedure QCanBusDeviceInfo_swap(handle:not null QCanBusDeviceInfoH;other:QCanBusDeviceInfoH);
 pragma Import(C,QCanBusDeviceInfo_swap, "QCanBusDeviceInfo_swap");
 
 function  QCanBusDeviceInfo_name(handle:not null QCanBusDeviceInfoH) return QStringH;
 pragma Import(C,QCanBusDeviceInfo_name, "QCanBusDeviceInfo_name");
 
 function  QCanBusDeviceInfo_hasFlexibleDataRate(handle:not null QCanBusDeviceInfoH) return boolean;
 pragma Import(C,QCanBusDeviceInfo_hasFlexibleDataRate, "QCanBusDeviceInfo_hasFlexibleDataRate");
 
 function  QCanBusDeviceInfo_isVirtual(handle:not null QCanBusDeviceInfoH) return boolean;
 pragma Import(C,QCanBusDeviceInfo_isVirtual, "QCanBusDeviceInfo_isVirtual");

 function  QCanBusDeviceInfo_channel(handle:not null QCanBusDeviceInfoH) return QStringH;
 pragma Import(C,QCanBusDeviceInfo_channel, "QCanBusDeviceInfo_channel");
 
 function  QCanBusDeviceInfo_description(handle:not null QCanBusDeviceInfoH) return QStringH;
 pragma Import(C,QCanBusDeviceInfo_description, "QCanBusDeviceInfo_description");
 
 function  QCanBusDeviceInfo_serialNumber(handle:not null QCanBusDeviceInfoH) return QStringH;
 pragma Import(C,QCanBusDeviceInfo_serialNumber, "QCanBusDeviceInfo_serialNumber");
 
------------------------------------------------------------------------
 type RegisterType is (Invalid, DiscreteInputs, Coils, InputRegisters, HoldingRegisters);
 pragma convention(C,RegisterType);

 type Error is (NoError, ReadError, WriteError, ConnectionError, ConfigurationError, TimeoutError, ProtocolError, ReplyAbortedError, UnknownError); 
 pragma convention(C,Error);

 type State is (UnconnectedState, ConnectingState, ConnectedState, ClosingState);
 pragma convention(C,State); 

 type ConnectionParameter is (SerialPortNameParameter, SerialParityParameter,SerialBaudRateParameter,SerialDataBitsParameter,SerialStopBitsParameter,
        NetworkPortParameter,NetworkAddressParameter,UserParameter);
 pragma convention(C,ConnectionParameter); 
 for ConnectionParameter use (
        SerialPortNameParameter => 0,
        SerialParityParameter   => 1,
        SerialBaudRateParameter => 2,
        SerialDataBitsParameter => 3,
        SerialStopBitsParameter => 4,
        NetworkPortParameter    => 5,
        NetworkAddressParameter => 6,
        UserParameter           => 16#100#); -- reserved
      
 type ExceptionCode is new integer;
 IllegalFunction                   : constant ExceptionCode := 16#01#;
 IllegalDataAddress                : constant ExceptionCode := 16#02#;
 IllegalDataValue                  : constant ExceptionCode := 16#03#;
 ServerDeviceFailure               : constant ExceptionCode := 16#04#;
 Acknowledge                       : constant ExceptionCode := 16#05#;
 ServerDeviceBusy                  : constant ExceptionCode := 16#06#;
 NegativeAcknowledge               : constant ExceptionCode := 16#07#;
 MemoryParityError                 : constant ExceptionCode := 16#08#;
 GatewayPathUnavailable            : constant ExceptionCode := 16#0A#;
 GatewayTargetDeviceFailedToRespond: constant ExceptionCode := 16#0B#;
 ExtendedException                 : constant ExceptionCode := 16#FF#;

 type FunctionCode is new integer;
 InvalidCode                   : constant FunctionCode := 16#00#;
 ReadCoils                     : constant FunctionCode := 16#01#;
 ReadDiscreteInputs            : constant FunctionCode := 16#02#;
 ReadHoldingRegisters          : constant FunctionCode := 16#03#;
 ReadInputRegisters            : constant FunctionCode := 16#04#;
 WriteSingleCoil               : constant FunctionCode := 16#05#;
 WriteSingleRegister           : constant FunctionCode := 16#06#;
 ReadExceptionStatus           : constant FunctionCode := 16#07#;
 Diagnostics                   : constant FunctionCode := 16#08#;
 GetCommEventCounter           : constant FunctionCode := 16#0B#;
 GetCommEventLog               : constant FunctionCode := 16#0C#;
 WriteMultipleCoils            : constant FunctionCode := 16#0F#;
 WriteMultipleRegisters        : constant FunctionCode := 16#10#;
 ReportServerId                : constant FunctionCode := 16#11#;
 ReadFileRecord                : constant FunctionCode := 16#14#;
 WriteFileRecord               : constant FunctionCode := 16#15#;
 MaskWriteRegister             : constant FunctionCode := 16#16#;
 ReadWriteMultipleRegisters    : constant FunctionCode := 16#17#;
 ReadFifoQueue                 : constant FunctionCode := 16#18#;
 EncapsulatedInterfaceTransport: constant FunctionCode := 16#2B#;
 UndefinedFunctionCode         : constant FunctionCode := 16#100#;

 type ReplyType is ( Raw, Common); 
 pragma convention(C,ReplyType);

 type customOpenCallbackH is access function return boolean; 
 pragma convention(C,customOpenCallbackH);

 subtype customCloseCallbackH is voidCallbackH; 

 function  QModbusClient_create(open:customOpenCallbackH; close:customCloseCallbackH; parent:QObjectH := null) return QModbusDeviceH;
 pragma Import(C,QModbusClient_create, "QModbusClient_create");

 procedure QModbusClient_destroy(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusClient_destroy, "QModbusClient_destroy");
 
 function  QModbusClient_sendReadRequest(handle:not null QModbusDeviceH;read:QUnitH; serverAddress:integer) return QReplyH;
 pragma Import(C,QModbusClient_sendReadRequest, "QModbusClient_sendReadRequest");
 
 function  QModbusClient_sendWriteRequest(handle:not null QModbusDeviceH;write:QUnitH; serverAddress:integer) return QReplyH;
 pragma Import(C,QModbusClient_sendWriteRequest, "QModbusClient_sendWriteRequest");
 
 function  QModbusClient_sendReadWriteRequest(handle:not null QModbusDeviceH;read,write: QUnitH; serverAddress:integer) return QReplyH;
 pragma Import(C,QModbusClient_sendReadWriteRequest, "QModbusClient_sendReadWriteRequest");
 
 function  QModbusClient_sendRawRequest(handle:not null QModbusDeviceH;request:QRequestH;serverAddress:integer) return QReplyH;
 pragma Import(C,QModbusClient_sendRawRequest, "QModbusClient_sendRawRequest");
 
 function  QModbusClient_timeout(handle:not null QModbusDeviceH) return integer;
 pragma Import(C,QModbusClient_timeout, "QModbusClient_timeout");
 
 procedure QModbusClient_setTimeout(handle:not null QModbusDeviceH; newTimeout:integer);
 pragma Import(C,QModbusClient_setTimeout, "QModbusClient_setTimeout");
 
 function  QModbusClient_numberOfRetries(handle:not null QModbusDeviceH) return integer;
 pragma Import(C,QModbusClient_numberOfRetries, "QModbusClient_numberOfRetries");
 
 procedure QModbusClient_setNumberOfRetries(handle:not null QModbusDeviceH;number:integer);
 pragma Import(C,QModbusClient_setNumberOfRetries, "QModbusClient_setNumberOfRetries");
 

 function  QModbusDataUnit_create(regType:RegisterType; newStartAddress:integer; newValueCount:quint16) return QUnitH;
 pragma Import(C,QModbusDataUnit_create, "QModbusDataUnit_create");
 
 function  QModbusDataUnit_create2(regType:RegisterType; newStartAddress:integer; newValues:QObjectVectorH) return QUnitH;
 pragma Import(C,QModbusDataUnit_create2, "QModbusDataUnit_create2");
 
 function  QModbusDataUnit_registerType(handle:not null QUnitH) return RegisterType;
 pragma Import(C,QModbusDataUnit_registerType, "QModbusDataUnit_registerType");
 
 procedure QModbusDataUnit_setRegisterType(handle:not null QUnitH;regType:RegisterType);
 pragma Import(C,QModbusDataUnit_setRegisterType, "QModbusDataUnit_setRegisterType");
 
 function  QModbusDataUnit_startAddress(handle:not null QUnitH) return integer;
 pragma Import(C,QModbusDataUnit_startAddress, "QModbusDataUnit_startAddress");
 
 procedure QModbusDataUnit_setStartAddress(handle:not null QUnitH; newAddress:integer);
 pragma Import(C,QModbusDataUnit_setStartAddress, "QModbusDataUnit_setStartAddress");
 
 function  QModbusDataUnit_values(handle:not null QUnitH) return QObjectVectorH;
 pragma Import(C,QModbusDataUnit_values, "QModbusDataUnit_values");
 
 procedure QModbusDataUnit_setValues(handle:not null QUnitH; newValues:QObjectVectorH);
 pragma Import(C,QModbusDataUnit_setValues, "QModbusDataUnit_setValues");
 
 function  QModbusDataUnit_valueCount(handle:not null QUnitH) return quint;
 pragma Import(C,QModbusDataUnit_valueCount, "QModbusDataUnit_valueCount");
 
 procedure QModbusDataUnit_setValueCount(handle:not null QUnitH;newCount:quint);
 pragma Import(C,QModbusDataUnit_setValueCount, "QModbusDataUnit_setValueCount");
 
 procedure QModbusDataUnit_setValue(handle:not null QUnitH;index:integer; newValue :quint16);
 pragma Import(C,QModbusDataUnit_setValue, "QModbusDataUnit_setValue");
 
 function  QModbusDataUnit_value(handle:not null QUnitH; index:integer) return quint16;
 pragma Import(C,QModbusDataUnit_value, "QModbusDataUnit_value");
 
 function  QModbusDataUnit_isValid(handle:not null QUnitH) return boolean;
 pragma Import(C,QModbusDataUnit_isValid, "QModbusDataUnit_isValid");
 
 function  QModbusServer_create(open:customOpenCallbackH; close:customCloseCallbackH; parent:QObjectH := null) return QModbusDeviceH;
 pragma Import(C,QModbusServer_create, "QModbusServer_create");

 procedure QModbusServer_destroy(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusServer_destroy, "QModbusServer_destroy");
 
 function  QModbusServer_serverAddress(handle:not null QModbusDeviceH) return integer;
 pragma Import(C,QModbusServer_serverAddress, "QModbusServer_serverAddress");
 
 procedure QModbusServer_setServerAddress(handle:not null QModbusDeviceH; serverAddress:integer);
 pragma Import(C,QModbusServer_setServerAddress, "QModbusServer_setServerAddress");
 
 function  QModbusServer_setMap(handle:not null QModbusDeviceH;map:QObjectMapH) return boolean;
 pragma Import(C,QModbusServer_setMap, "QModbusServer_setMap");
 
 function  QModbusServer_processesBroadcast(handle:not null QModbusDeviceH) return boolean;
 pragma Import(C,QModbusServer_processesBroadcast, "QModbusServer_processesBroadcast");
 
 function  QModbusServer_value(handle:not null QModbusDeviceH; option:integer) return QVariantH;
 pragma Import(C,QModbusServer_value, "QModbusServer_value");
 
 function  QModbusServer_setValue(handle:not null QModbusDeviceH;option:integer; value:QVariantH) return boolean;
 pragma Import(C,QModbusServer_setValue, "QModbusServer_setValue");
 
 function  QModbusServer_setData(handle:not null QModbusDeviceH;unit:QUnitH) return boolean;
 pragma Import(C,QModbusServer_setData, "QModbusServer_setData");
 
 function  QModbusServer_setData2(handle:not null QModbusDeviceH;table:RegisterType; address,data: quint16) return boolean;
 pragma Import(C,QModbusServer_setData2, "QModbusServer_setData2");
 
 function  QModbusServer_data(handle:not null QModbusDeviceH;newData:QUnitH) return boolean;
 pragma Import(C,QModbusServer_data, "QModbusServer_data");
 
 function  QModbusServer_data2(handle:not null QModbusDeviceH;table:RegisterType; address,data: in out quint16) return boolean;
 pragma Import(C,QModbusServer_data2, "QModbusServer_data2");
 
 function  QModbusServer_writeData(handle:not null QModbusDeviceH;unit:in out QUnitH) return boolean;
 pragma Import(C,QModbusServer_writeData, "QModbusServer_writeData");
 
 function  QModbusServer_readData(handle:not null QModbusDeviceH;newData:in out QUnitH) return boolean;
 pragma Import(C,QModbusServer_readData, "QModbusServer_readData");
 
 function  QModbusServer_processRequest(handle:not null QModbusDeviceH;request:QPduH) return QResponseH;
 pragma Import(C,QModbusServer_processRequest, "QModbusServer_processRequest");
 
 function  QModbusServer_processPrivateRequest(handle:not null QModbusDeviceH;request:QPduH) return QResponseH;
 pragma Import(C,QModbusServer_processPrivateRequest, "QModbusServer_processPrivateRequest");
 
 function  QModbusTcpClient_create(parent:QObjectH := null) return QModbusDeviceH;
 pragma Import(C,QModbusTcpClient_create, "QModbusTcpClient_create");

 procedure QModbusTcpClient_destroy(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusTcpClient_destroy, "QModbusTcpClient_destroy");
 
 function  QModbusTcpClient_open(handle:not null QModbusDeviceH) return boolean;
 pragma Import(C,QModbusTcpClient_open, "QModbusTcpClient_open");
 
 procedure QModbusTcpClient_close(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusTcpClient_close, "QModbusTcpClient_close");
 
 function  QModbusTcpServer_create(parent:QObjectH := null) return QModbusDeviceH;
 pragma Import(C,QModbusTcpServer_create, "QModbusTcpServer_create");
 
 procedure QModbusTcpServer_destroy(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusTcpServer_destroy, "QModbusTcpServer_destroy");
 
 function  QModbusTcpServer_open(handle:not null QModbusDeviceH) return boolean;
 pragma Import(C,QModbusTcpServer_open, "QModbusTcpServer_open");
 
 procedure QModbusTcpServer_close(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusTcpServer_close, "QModbusTcpServer_close");

 function  QModbusDevice_create(open:customOpenCallbackH; close:customCloseCallbackH; parent:QObjectH := null) return QModbusDeviceH;
 pragma Import(C,QModbusDevice_create, "QModbusDevice_create");

 procedure QModbusDevice_destroy(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusDevice_destroy, "QModbusDevice_destroy");
 
 procedure QModbusDevice_setState(handle:not null QModbusDeviceH; newState:State);
 pragma Import(C,QModbusDevice_setState, "QModbusDevice_setState");
 
 procedure QModbusDevice_setError(handle:not null QModbusDeviceH; errorText:QStringH; err:Error);
 pragma Import(C,QModbusDevice_setError, "QModbusDevice_setError");
 
 function  QModbusDevice_connectionParameter(handle:not null QModbusDeviceH; parameter:integer) return QVariantH;
 pragma Import(C,QModbusDevice_connectionParameter, "QModbusDevice_connectionParameter");
 
 procedure QModbusDevice_setConnectionParameter(handle:not null QModbusDeviceH; parameter:ConnectionParameter;value: QVariantH);
 pragma Import(C,QModbusDevice_setConnectionParameter, "QModbusDevice_setConnectionParameter");
 
 function  QModbusDevice_connectDevice(handle:not null QModbusDeviceH) return boolean;
 pragma Import(C,QModbusDevice_connectDevice, "QModbusDevice_connectDevice");
 
 procedure QModbusDevice_disconnectDevice(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusDevice_disconnectDevice, "QModbusDevice_disconnectDevice");
 
 procedure QModbusDevice_disconnect(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusDevice_disconnect, "QModbusDevice_disconnect");
 
 function  QModbusDevice_state(handle:not null QModbusDeviceH) return State;
 pragma Import(C,QModbusDevice_state, "QModbusDevice_state");
 
 function  QModbusDevice_error(handle:not null QModbusDeviceH) return Error;
 pragma Import(C,QModbusDevice_error, "QModbusDevice_error");
 
 function  QModbusDevice_errorString(handle:not null QModbusDeviceH) return QStringH;
 pragma Import(C,QModbusDevice_errorString, "QModbusDevice_errorString");
 

 function  QModbusPdu_create(code:FunctionCode;newData:QByteArrayH) return QPduH;
 pragma Import(C,QModbusPdu_create, "QModbusPdu_create");
 
 function  QModbusPdu_ExceptionByte return quint8;
 pragma Import(C,QModbusPdu_ExceptionByte, "QModbusPdu_ExceptionByte");
 
 function  QModbusPdu_isValid(handle:not null QPduH) return boolean;
 pragma Import(C,QModbusPdu_isValid, "QModbusPdu_isValid");
 
 function  QModbusPdu_exceptionCode(handle:not null QPduH) return ExceptionCode;
 pragma Import(C,QModbusPdu_exceptionCode, "QModbusPdu_exceptionCode");
 
 function  QModbusPdu_isException(handle:not null QPduH) return boolean;
 pragma Import(C,QModbusPdu_isException, "QModbusPdu_isException");
 
 function  QModbusPdu_size(handle:not null QPduH) return qint16;
 pragma Import(C,QModbusPdu_size, "QModbusPdu_size");
 
 function  QModbusPdu_dataSize(handle:not null QPduH) return qint16;
 pragma Import(C,QModbusPdu_dataSize, "QModbusPdu_dataSize");
 
 function  QModbusPdu_functionCode(handle:not null QPduH) return FunctionCode;
 pragma Import(C,QModbusPdu_functionCode, "QModbusPdu_functionCode");
 
 procedure QModbusPdu_setFunctionCode(handle:not null QPduH;code:FunctionCode);
 pragma Import(C,QModbusPdu_setFunctionCode, "QModbusPdu_setFunctionCode");
 
 function  QModbusPdu_data(handle:not null QPduH) return QByteArrayH;
 pragma Import(C,QModbusPdu_data, "QModbusPdu_data");
 
 procedure QModbusPdu_setData(handle:not null QPduH;newData:QByteArrayH);
 pragma Import(C,QModbusPdu_setData, "QModbusPdu_setData");
 

 function  QModbusRequest_create(pdu:QPduH) return QRequestH;
 pragma Import(C,QModbusRequest_create, "QModbusRequest_create");
 
 function  QModbusRequest_minimumDataSize(pdu:not null QRequestH) return integer;
 pragma Import(C,QModbusRequest_minimumDataSize, "QModbusRequest_minimumDataSize");
 
 function  QModbusRequest_calculateDataSize(pdu:not null QRequestH) return integer;
 pragma Import(C,QModbusRequest_calculateDataSize, "QModbusRequest_calculateDataSize");
 
 function  QModbusResponse_create(pdu:QPduH) return QResponseH;
 pragma Import(C,QModbusResponse_create, "QModbusResponse_create");
 
 function  QModbusResponse_minimumDataSize(pdu:not null QResponseH) return integer;
 pragma Import(C,QModbusResponse_minimumDataSize, "QModbusResponse_minimumDataSize");
 
 function  QModbusResponse_calculateDataSize(pdu:not null QResponseH) return integer;
 pragma Import(C,QModbusResponse_calculateDataSize, "QModbusResponse_calculateDataSize");
 
 function  QModbusExceptionResponse_create(pdu:QPduH) return QResponseH;
 pragma Import(C,QModbusExceptionResponse_create, "QModbusExceptionResponse_create");
 
 function  QModbusExceptionResponse_create2(fc:FunctionCode;ec:ExceptionCode) return QResponseH;
 pragma Import(C,QModbusExceptionResponse_create2, "QModbusExceptionResponse_create2");
 
 procedure QModbusExceptionResponse_setFunctionCode(handle:not null QResponseH;fc:FunctionCode);
 pragma Import(C,QModbusExceptionResponse_setFunctionCode, "QModbusExceptionResponse_setFunctionCode");
 
 procedure QModbusExceptionResponse_setExceptionCode(handle:not null QResponseH;ec:ExceptionCode);
 pragma Import(C,QModbusExceptionResponse_setExceptionCode, "QModbusExceptionResponse_setExceptionCode");

 function  QModbusRtuSerialSlave_create(parent:QModbusDeviceH := null) return QModbusDeviceH;
 pragma Import(C,QModbusRtuSerialSlave_create, "QModbusRtuSerialSlave_create");

 procedure QModbusRtuSerialSlave_destroy(handle:not null QModbusDeviceH);
 pragma Import(C,QModbusRtuSerialSlave_destroy, "QModbusRtuSerialSlave_destroy");
 
 function  QModbusRtuSerialSlave_processesBroadcast(handle:not null QModbusDeviceH) return boolean;
 pragma Import(C,QModbusRtuSerialSlave_processesBroadcast, "QModbusRtuSerialSlave_processesBroadcast");
 
 function  QModbusReply_create(tp:ReplyType; serverAddress:integer;parent:QObjectH := null) return QReplyH;
 pragma Import(C,QModbusReply_create, "QModbusReply_create");
 
 function  QModbusReply_type(handle:not null QReplyH) return ReplyType;
 pragma Import(C,QModbusReply_type, "QModbusReply_type");
 
 function  QModbusReply_serverAddress(handle:not null QReplyH) return integer;
 pragma Import(C,QModbusReply_serverAddress, "QModbusReply_serverAddress");
 
 function  QModbusReply_isFinished(handle:not null QReplyH) return boolean;
 pragma Import(C,QModbusReply_isFinished, "QModbusReply_isFinished");
 
 function  QModbusReply_result(handle:not null QReplyH) return QUnitH;
 pragma Import(C,QModbusReply_result, "QModbusReply_result");
 
 function  QModbusReply_rawResult(handle:not null QReplyH) return QResponseH;
 pragma Import(C,QModbusReply_rawResult, "QModbusReply_rawResult");
 
 function  QModbusReply_errorString(handle:not null QReplyH) return QStringH;
 pragma Import(C,QModbusReply_errorString, "QModbusReply_errorString");
 
 function  QModbusReply_error(handle:not null QReplyH) return Error;
 pragma Import(C,QModbusReply_error, "QModbusReply_error");
 
 procedure QModbusReply_setResult(handle:not null QReplyH;unit:QUnitH);
 pragma Import(C,QModbusReply_setResult, "QModbusReply_setResult");
 
 procedure QModbusReply_setRawResult(handle:not null QReplyH;unit:QResponseH);
 pragma Import(C,QModbusReply_setRawResult, "QModbusReply_setRawResult");
 
 procedure QModbusReply_setFinished(handle:not null QReplyH;isFinished:boolean);
 pragma Import(C,QModbusReply_setFinished, "QModbusReply_setFinished");
 
 procedure QModbusReply_setError(handle:not null QReplyH;err:Error; errorText :QStringH);
 pragma Import(C,QModbusReply_setError, "QModbusReply_setError");
 
 function  QModbusRtuSerialMaster_create(parent:QModbusDeviceH := null) return QModbusDeviceH;
 pragma Import(C,QModbusRtuSerialMaster_create, "QModbusRtuSerialMaster_create");

 procedure QModbusRtuSerialMaster_destroy(handle:not null QMasterH);
 pragma Import(C,QModbusRtuSerialMaster_destroy, "QModbusRtuSerialMaster_destroy");
 
 function  QModbusRtuSerialMaster_interFrameDelay(handle:not null QMasterH) return integer;
 pragma Import(C,QModbusRtuSerialMaster_interFrameDelay, "QModbusRtuSerialMaster_interFrameDelay");
 
 procedure QModbusRtuSerialMaster_setInterFrameDelay(handle:not null QMasterH;microseconds:integer);
 pragma Import(C,QModbusRtuSerialMaster_setInterFrameDelay, "QModbusRtuSerialMaster_setInterFrameDelay");
 
 procedure QModbusClient_signal_slot_timeoutChanged(handle:not null QModbusDeviceH; hook: intCallbackH);
 pragma Import(C,QModbusClient_signal_slot_timeoutChanged, "QModbusClient_signal_slot_timeoutChanged");

 type errorCallbackH is access procedure(err: Error);
 pragma convention(C,errorCallbackH);
 
 procedure QModbusDevice_signal_slot_errorOccurred(handle:not null QModbusDeviceH; hook: errorCallbackH);
 pragma Import(C,QModbusDevice_signal_slot_errorOccurred, "QModbusDevice_signal_slot_errorOccurred");

 type stateCallbackH is access procedure(st: State);
 pragma convention(C,stateCallbackH);
 
 procedure QModbusDevice_signal_slot_stateChanged(handle:not null QModbusDeviceH; hook: stateCallbackH);
 pragma Import(C,QModbusDevice_signal_slot_stateChanged, "QModbusDevice_signal_slot_stateChanged");

 procedure QModbusReply_signal_slot_finished(handle:not null QReplyH; hook:voidCallbackH);
 pragma Import(C,QModbusReply_signal_slot_finished, "QModbusReply_signal_slot_finished");

 procedure QModbusReply_signal_slot_errorOccurred(handle:not null QReplyH; hook: errorCallbackH);
 pragma Import(C,QModbusReply_signal_slot_errorOccurred, "QModbusReply_signal_slot_errorOccurred");

 type dataCallbackH is access procedure(table:RegisterType;address,size: integer); 
 pragma convention(C,dataCallbackH);
 
 procedure QModbusServer_signal_slot_dataWritten(handle:not null QModbusDeviceH; hook: dataCallbackH);
 pragma Import(C,QModbusServer_signal_slot_dataWritten, "QModbusServer_signal_slot_dataWritten");
 

 type canbusErrorCallbackH is access procedure(err:CanBusError);
 pragma convention(C,canbusErrorCallbackH);
 
 procedure QCanbusDevice_signal_slot_errorOccurred(handle:not null QCanbusDeviceH; hook: canbusErrorCallbackH);
 pragma Import(C,QCanbusDevice_signal_slot_errorOccurred, "QCanbusDevice_signal_slot_errorOccurred");

 type canbusStateCallbackH is access procedure(state: CanBusDeviceState);
 pragma convention(C,canbusStateCallbackH);
 
 procedure QCanbusDevice_signal_slot_stateChanged(handle:not null QCanbusDeviceH; hook:canbusStateCallbackH);
 pragma Import(C,QCanbusDevice_signal_slot_stateChanged, "QCanbusDevice_signal_slot_stateChanged");

 procedure QCanbusDevice_signal_slot_framesReceived(handle:not null QCanbusDeviceH; hook: voidCallbackH);
 pragma Import(C,QCanbusDevice_signal_slot_framesReceived, "QCanbusDevice_signal_slot_framesReceived");

 type int64CallbackH is access procedure(frames:qint64);
 pragma convention(C,int64CallbackH);
 
 procedure QCanbusDevice_signal_slot_framesWritten(handle:not null QCanbusDeviceH; hook: int64CallbackH);
 pragma Import(C,QCanbusDevice_signal_slot_framesWritten, "QCanbusDevice_signal_slot_framesWritten");

 function  QModbusDataUnitMap_create return QObjectMapH ;
 pragma Import(C,QModbusDataUnitMap_create, "QModbusDataUnitMap_create");
 
 procedure QModbusDataUnitMap_insertCoils(handle:not null QObjectMapH;addr:integer;count:quint16);
 pragma Import(C,QModbusDataUnitMap_insertCoils, "QModbusDataUnitMap_insertCoils");
 
 procedure QModbusDataUnitMap_insertDiscreteInputs(handle:not null QObjectMapH;addr:integer;count:quint16);                           
 pragma Import(C,QModbusDataUnitMap_insertDiscreteInputs, "QModbusDataUnitMap_insertDiscreteInputs");
 
 procedure QModbusDataUnitMap_insertInputRegisters(handle:not null QObjectMapH;addr:integer;count:quint16);                           
 pragma Import(C,QModbusDataUnitMap_insertInputRegisters, "QModbusDataUnitMap_insertInputRegisters");
 
 procedure QModbusDataUnitMap_insertHoldingRegisters(handle:not null QObjectMapH;addr:integer;count:quint16);                           
 pragma Import(C,QModbusDataUnitMap_insertHoldingRegisters, "QModbusDataUnitMap_insertHoldingRegisters");
 
-------------------------------------------------------------------------
 function  QModbusServer_setData(handle:not null QModbusDeviceH;table:RegisterType; address,data: quint16) return boolean;
 function  QModbusServer_data(handle:not null QModbusDeviceH;table:RegisterType; address,data: in out quint16) return boolean;
end;
