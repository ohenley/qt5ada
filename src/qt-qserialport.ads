--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2016                      บ
-- บ Copyright (C) 2012,2013,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QSerialPort  is

type QSerialPortOpenMode is new integer;

 NotOpen    : constant QSerialPortOpenMode := 0;
 ReadOnly   : constant QSerialPortOpenMode := 1;
 WriteOnly  : constant QSerialPortOpenMode := 2;
 ReadWrite  : constant QSerialPortOpenMode := 3;
 Append     : constant QSerialPortOpenMode := 4;
 Truncate   : constant QSerialPortOpenMode := 8;
 Text       : constant QSerialPortOpenMode := 16#0010#;
 Unbuffered : constant QSerialPortOpenMode := 16#0020#;
    
type QSerialPortDirection is new integer;
    
 Input         : constant QSerialPortDirection := 1;
 Output        : constant QSerialPortDirection := 2;
 AllDirections : constant QSerialPortDirection := 3;
    
type QSerialPortBaudRate is new integer;

 UnknownBaud: constant QSerialPortBaudRate := -1;
 Baud1200   : constant QSerialPortBaudRate := 1200;
 Baud2400   : constant QSerialPortBaudRate := 2400;
 Baud4800   : constant QSerialPortBaudRate := 4800;
 Baud9600   : constant QSerialPortBaudRate := 9600;
 Baud19200  : constant QSerialPortBaudRate := 19200;
 Baud38400  : constant QSerialPortBaudRate := 38400;
 Baud57600  : constant QSerialPortBaudRate := 57600;
 Baud115200 : constant QSerialPortBaudRate := 115200;

type QSerialPortDataBits is new integer;

 UnknownDataBits : constant QSerialPortDataBits := -1;
 Data5           : constant QSerialPortDataBits :=  5;
 Data6           : constant QSerialPortDataBits :=  6;
 Data7           : constant QSerialPortDataBits :=  7;
 Data8           : constant QSerialPortDataBits :=  8;

type  QSerialPortParity  is new integer;

 UnknownParity : constant QSerialPortParity  := -1;
 NoParity      : constant QSerialPortParity  :=  0;
 EvenParity    : constant QSerialPortParity  :=  2;
 OddParity     : constant QSerialPortParity  :=  3;
 SpaceParity   : constant QSerialPortParity  :=  4;
 MarkParity    : constant QSerialPortParity  :=  5;

type QSerialPortStopBits is new integer;

 UnknownStopBits: constant QSerialPortStopBits  :=-1;
 OneStop        : constant QSerialPortStopBits  := 1;
 TwoStop        : constant QSerialPortStopBits  := 2;
 OneAndHalfStop : constant QSerialPortStopBits  := 3;

type QSerialPortFlowControl is (UnknownFlowControl,NoFlowControl,HardwareControl,SoftwareControl);
pragma convention(C,QSerialPortFlowControl);

for QSerialPortFlowControl use (
        UnknownFlowControl => -1,
        NoFlowControl => 0,
        HardwareControl => 1,
        SoftwareControl => 2
    );

type QSerialPortPinoutSignal is (NoSignal,TransmittedDataSignal,
        ReceivedDataSignal,DataTerminalReadySignal,DataCarrierDetectSignal,DataSetReadySignal,RingIndicatorSignal,
        RequestToSendSignal,ClearToSendSignal,SecondaryTransmittedDataSignal,SecondaryReceivedDataSignal);
pragma convention(C,QSerialPortPinoutSignal);

for  QSerialPortPinoutSignal use (
        NoSignal => 16#00#,
        TransmittedDataSignal => 16#01#,
        ReceivedDataSignal => 16#02#,
        DataTerminalReadySignal => 16#04#,
        DataCarrierDetectSignal => 16#08#,
        DataSetReadySignal => 16#10#,
        RingIndicatorSignal => 16#20#,
        RequestToSendSignal => 16#40#,
        ClearToSendSignal => 16#80#,
        SecondaryTransmittedDataSignal => 16#100#,
        SecondaryReceivedDataSignal => 16#200#
    );

type  QSerialPortDataErrorPolicy is (UnknownPolicy,SkipPolicy,PassZeroPolicy,IgnorePolicy,StopReceivingPolicy);
pragma convention(C,QSerialPortDataErrorPolicy);

for   QSerialPortDataErrorPolicy use (
        UnknownPolicy => -1,
        SkipPolicy => 0,
        PassZeroPolicy => 1,
        IgnorePolicy => 2,
        StopReceivingPolicy => 3
    );

type QSerialPortError is (NoError,DeviceNotFoundError,PermissionError,OpenError,ParityError,FramingError,
        BreakConditionError,WriteError,ReadError,ResourceError,UnsupportedOperationError,UnknownError);
pragma convention(C,QSerialPortError);

 function  QSerialPort_create(parent:QObjectH := null) return QSerialPortH;
 pragma Import(C,QSerialPort_create, "QSerialPort_create");
 
 function  QSerialPort_create2(name:QStringH;parent:QObjectH := null) return QSerialPortH;
 pragma Import(C,QSerialPort_create2, "QSerialPort_create2");
 
 function  QSerialPort_create3(info:QSerialPortInfoH;parent:QObjectH := null) return QSerialPortH ;
 pragma Import(C,QSerialPort_create3, "QSerialPort_create3");
 
 procedure QSerialPort_destroy(handle:QSerialPortH);
 pragma Import(C,QSerialPort_destroy, "QSerialPort_destroy");
 
 procedure QSerialPort_setPortName(handle:QSerialPortH;name:QStringH);
 pragma Import(C,QSerialPort_setPortName, "QSerialPort_setPortName");
 
 function  QSerialPort_portName(handle:QSerialPortH) return QStringH;
 pragma Import(C,QSerialPort_portName, "QSerialPort_portName");
 
 procedure QSerialPort_setPort(handle:QSerialPortH;info:QSerialPortInfoH);
 pragma Import(C,QSerialPort_setPort, "QSerialPort_setPort");
 
 function  QSerialPort_open(handle:QSerialPortH;mode: QSerialPortOpenMode) return boolean;
 pragma Import(C,QSerialPort_open, "QSerialPort_open");
 
 procedure QSerialPort_close(handle:QSerialPortH);
 pragma Import(C,QSerialPort_close, "QSerialPort_close");
 
 procedure QSerialPort_setSettingsRestoredOnClose(handle:QSerialPortH; restore:boolean);
 pragma Import(C,QSerialPort_setSettingsRestoredOnClose, "QSerialPort_setSettingsRestoredOnClose");
 
 function  QSerialPort_settingsRestoredOnClose(handle:QSerialPortH) return boolean;
 pragma Import(C,QSerialPort_settingsRestoredOnClose, "QSerialPort_settingsRestoredOnClose");
 
 function  QSerialPort_setBaudRate(handle:QSerialPortH; baudRate:integer;direction: QSerialPortDirection := AllDirections) return boolean;
 pragma Import(C,QSerialPort_setBaudRate, "QSerialPort_setBaudRate");
 
 function  QSerialPort_baudRate(handle:QSerialPortH;direction:QSerialPortDirection := AllDirections) return integer;
 pragma Import(C,QSerialPort_baudRate, "QSerialPort_baudRate");
 
 function  QSerialPort_setDataBits(handle:QSerialPortH; dataBits:QSerialPortDataBits) return boolean;
 pragma Import(C,QSerialPort_setDataBits, "QSerialPort_setDataBits");
 
 function  QSerialPort_dataBits(handle:QSerialPortH) return QSerialPortDataBits;
 pragma Import(C,QSerialPort_dataBits, "QSerialPort_dataBits");
 
 function  QSerialPort_setParity(handle:QSerialPortH;party:QSerialPortParity) return boolean;
 pragma Import(C,QSerialPort_setParity, "QSerialPort_setParity");
 
 function  QSerialPort_parity(handle:QSerialPortH) return QSerialPortParity;
 pragma Import(C,QSerialPort_parity, "QSerialPort_parity");
 
 function  QSerialPort_setStopBits(handle:QSerialPortH;stopBits:QSerialPortStopBits) return boolean;
 pragma Import(C,QSerialPort_setStopBits, "QSerialPort_setStopBits");
 
 function  QSerialPort_stopBits(handle:QSerialPortH) return QSerialPortStopBits;
 pragma Import(C,QSerialPort_stopBits, "QSerialPort_stopBits");
 
 function  QSerialPort_setFlowControl(handle:QSerialPortH;flow:QSerialPortFlowControl) return boolean;
 pragma Import(C,QSerialPort_setFlowControl, "QSerialPort_setFlowControl");
 
 function  QSerialPort_flowControl(handle:QSerialPortH) return QSerialPortFlowControl;
 pragma Import(C,QSerialPort_flowControl, "QSerialPort_flowControl");
 
 function  QSerialPort_setDataTerminalReady(handle:QSerialPortH;isSet:boolean) return boolean;
 pragma Import(C,QSerialPort_setDataTerminalReady, "QSerialPort_setDataTerminalReady");
 
 function  QSerialPort_isDataTerminalReady(handle:QSerialPortH) return boolean;
 pragma Import(C,QSerialPort_isDataTerminalReady, "QSerialPort_isDataTerminalReady");
 
 function  QSerialPort_setRequestToSend(handle:QSerialPortH;isSet:boolean) return boolean;
 pragma Import(C,QSerialPort_setRequestToSend, "QSerialPort_setRequestToSend");
 
 function  QSerialPort_isRequestToSend(handle:QSerialPortH) return boolean;
 pragma Import(C,QSerialPort_isRequestToSend, "QSerialPort_isRequestToSend");
 
 function  QSerialPort_pinoutSignals(handle:QSerialPortH) return integer;
 pragma Import(C,QSerialPort_pinoutSignals, "QSerialPort_pinoutSignals");
 
 function  QSerialPort_flush(handle:QSerialPortH) return boolean;
 pragma Import(C,QSerialPort_flush, "QSerialPort_flush");
 
 function  QSerialPort_clear(handle:QSerialPortH;direction:QSerialPortDirection := AllDirections) return boolean;
 pragma Import(C,QSerialPort_clear, "QSerialPort_clear");
 
 function  QSerialPort_atEnd(handle:QSerialPortH) return boolean;
 pragma Import(C,QSerialPort_atEnd, "QSerialPort_atEnd");
 
 function  QSerialPort_setDataErrorPolicy(handle:QSerialPortH;policy:QSerialPortDataErrorPolicy := IgnorePolicy) return boolean;
 pragma Import(C,QSerialPort_setDataErrorPolicy, "QSerialPort_setDataErrorPolicy");
 
 function  QSerialPort_dataErrorPolicy(handle:QSerialPortH) return QSerialPortDataErrorPolicy;
 pragma Import(C,QSerialPort_dataErrorPolicy, "QSerialPort_dataErrorPolicy");
 
 function  QSerialPort_error(handle:QSerialPortH) return QSerialPortError;
 pragma Import(C,QSerialPort_error, "QSerialPort_error");
 
 procedure QSerialPort_clearError(handle:QSerialPortH);
 pragma Import(C,QSerialPort_clearError, "QSerialPort_clearError");
 
 function  QSerialPort_readBufferSize(handle:QSerialPortH) return qint64;
 pragma Import(C,QSerialPort_readBufferSize, "QSerialPort_readBufferSize");
 
 procedure QSerialPort_setReadBufferSize(handle:QSerialPortH; size:qint64);
 pragma Import(C,QSerialPort_setReadBufferSize, "QSerialPort_setReadBufferSize");
 
 function  QSerialPort_isSequential(handle:QSerialPortH) return boolean;
 pragma Import(C,QSerialPort_isSequential, "QSerialPort_isSequential");
 
 function  QSerialPort_bytesAvailable(handle:QSerialPortH) return qint64;
 pragma Import(C,QSerialPort_bytesAvailable, "QSerialPort_bytesAvailable");
 
 function  QSerialPort_bytesToWrite(handle:QSerialPortH) return qint64;
 pragma Import(C,QSerialPort_bytesToWrite, "QSerialPort_bytesToWrite");
 
 function  QSerialPort_canReadLine(handle:QSerialPortH) return boolean;
 pragma Import(C,QSerialPort_canReadLine, "QSerialPort_canReadLine");
 
 function  QSerialPort_waitForReadyRead(handle:QSerialPortH;msecs:integer) return boolean;
 pragma Import(C,QSerialPort_waitForReadyRead, "QSerialPort_waitForReadyRead");
 
 function  QSerialPort_waitForBytesWritten(handle:QSerialPortH;msecs:integer) return boolean;
 pragma Import(C,QSerialPort_waitForBytesWritten, "QSerialPort_waitForBytesWritten");
 
 function  QSerialPort_sendBreak(handle:QSerialPortH; forDuration : integer := 0) return boolean;
 pragma Import(C,QSerialPort_sendBreak, "QSerialPort_sendBreak");
 
 function  QSerialPort_setBreakEnabled(handle:QSerialPortH;isSet:boolean := true) return boolean;
 pragma Import(C,QSerialPort_setBreakEnabled, "QSerialPort_setBreakEnabled");
 
 function  QSerialPort_readData(handle: not null QSerialPortH;data:zstring; maxSize:qint64) return qint64;
 pragma Import(C,QSerialPort_readData, "QSerialPort_readData");
 
 function  QSerialPort_readLineData(handle: not null QSerialPortH;data:zstring; maxSize:qint64) return qint64;
 pragma Import(C,QSerialPort_readLineData, "QSerialPort_readLineData");
 
 function  QSerialPort_writeData(handle: not null QSerialPortH;data:zstring; maxSize:qint64) return qint64;
 pragma Import(C,QSerialPort_writeData, "QSerialPort_writeData");
 

 type IntIntProc is access procedure(p1,p2:integer);
 pragma convention(C,IntIntProc);

 type IntProc is access procedure(p:integer);
 pragma convention(C,IntProc);

 type BoolProc is access procedure(p:boolean);
 pragma convention(C,BoolProc);

 procedure QSerialPort_signal_slot_baudRateChanged(handle: not null QSerialPortH; hook: IntIntProc);
 pragma Import(C,QSerialPort_signal_slot_baudRateChanged, "QSerialPort_signal_slot_baudRateChanged");
 
 procedure QSerialPort_signal_slot_dataBitsChanged(handle: not null QSerialPortH; hook: IntProc);
 pragma Import(C,QSerialPort_signal_slot_dataBitsChanged, "QSerialPort_signal_slot_dataBitsChanged");
 
 procedure QSerialPort_signal_slot_parityChanged(handle: not null QSerialPortH; hook: IntProc);    
 pragma Import(C,QSerialPort_signal_slot_parityChanged, "QSerialPort_signal_slot_parityChanged");
 
 procedure QSerialPort_signal_slot_stopBitsModeChanged(handle: not null QSerialPortH; hook: IntProc);    
 pragma Import(C,QSerialPort_signal_slot_stopBitsModeChanged, "QSerialPort_signal_slot_stopBitsModeChanged");
 
 procedure QSerialPort_signal_slot_flowControlChanged(handle: not null QSerialPortH; hook: IntProc);    
 pragma Import(C,QSerialPort_signal_slot_flowControlChanged, "QSerialPort_signal_slot_flowControlChanged");
 
 procedure QSerialPort_signal_slot_dataErrorPolicyChanged(handle: not null QSerialPortH; hook: IntProc);    
 pragma Import(C,QSerialPort_signal_slot_dataErrorPolicyChanged, "QSerialPort_signal_slot_dataErrorPolicyChanged");
 
 procedure QSerialPort_signal_slot_error(handle: not null QSerialPortH; hook: IntProc);    
 pragma Import(C,QSerialPort_signal_slot_error, "QSerialPort_signal_slot_error");
 
 procedure QSerialPort_signal_slot_dataTerminalReadyChanged(handle: not null QSerialPortH; hook: BoolProc);    
 pragma Import(C,QSerialPort_signal_slot_dataTerminalReadyChanged, "QSerialPort_signal_slot_dataTerminalReadyChanged");
 
 procedure QSerialPort_signal_slot_requestToSendChanged(handle: not null QSerialPortH; hook: BoolProc); 
 pragma Import(C,QSerialPort_signal_slot_requestToSendChanged, "QSerialPort_signal_slot_requestToSendChanged");
 
 procedure QSerialPort_signal_slot_settingsRestoredOnCloseChanged(handle: not null QSerialPortH; hook: BoolProc); 
 pragma Import(C,QSerialPort_signal_slot_settingsRestoredOnCloseChanged, "QSerialPort_signal_slot_settingsRestoredOnCloseChanged");
 
------------------------------------------------------------------------------------------------------
 function  QSerialPort_create(name:QStringH;parent:QObjectH := null) return QSerialPortH;
 function  QSerialPort_create(info:QSerialPortInfoH;parent:QObjectH := null) return QSerialPortH ;

 end;
