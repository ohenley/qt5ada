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

with Qt.QBluetoothServiceInfo;
with Qt.QAbstractSocket;  use Qt.QAbstractSocket;    
with Qt.QIODevice;  use Qt.QIODevice;
package Qt.QBluetoothSocket  is

 subtype OpenMode is Qt.QIODevice.QIODeviceOpenMode;


 type SocketError is (NoSocketError,UnknownSocketError,HostNotFoundError,
       NetworkError, UnsupportedProtocolError,ServiceNotFoundError,OperationError);
 pragma convention(C,SocketError);
  -- New enums (independent of QAbstractSocket) should be added from 100 onwards
 for SocketError use (
        NoSocketError =>           -2,
        UnknownSocketError =>      -1,
        HostNotFoundError =>        2,
        NetworkError =>             7,
        UnsupportedProtocolError => 8,
        ServiceNotFoundError =>     9,
        OperationError =>           19);
 -- New enums (independent of QAbstractSocket) should be added from 100 onwards

 function  QBluetoothSocket_create(parent:QObjectH := null) return QIODeviceH;
 pragma Import(C,QBluetoothSocket_create, "QBluetoothSocket_create");
 
 function  QBluetoothSocket_create2(socketType:Qt.QBluetoothServiceInfo.Protocol;parent:QObjectH := null) return QIODeviceH;
 pragma Import(C,QBluetoothSocket_create2, "QBluetoothSocket_create2");
 
 procedure QBluetoothSocket_delete(handle:not null QIODeviceH);
 pragma Import(C,QBluetoothSocket_delete, "QBluetoothSocket_delete");
 
 procedure QBluetoothSocket_abort(handle:not null QIODeviceH);
 pragma Import(C,QBluetoothSocket_abort, "QBluetoothSocket_abort");
 
 procedure QBluetoothSocket_close(handle:not null QIODeviceH);
 pragma Import(C,QBluetoothSocket_close, "QBluetoothSocket_close");
 
 function  QBluetoothSocket_isSequential(handle:not null QIODeviceH) return boolean;
 pragma Import(C,QBluetoothSocket_isSequential, "QBluetoothSocket_isSequential");
 
 function  QBluetoothSocket_bytesAvailable(handle:not null QIODeviceH) return qint64;
 pragma Import(C,QBluetoothSocket_bytesAvailable, "QBluetoothSocket_bytesAvailable");
 
 function  QBluetoothSocket_bytesToWrite(handle:not null QIODeviceH) return qint64;
 pragma Import(C,QBluetoothSocket_bytesToWrite, "QBluetoothSocket_bytesToWrite");
 
 function  QBluetoothSocket_canReadLine(handle:not null QIODeviceH) return boolean;
 pragma Import(C,QBluetoothSocket_canReadLine, "QBluetoothSocket_canReadLine");
 
 procedure QBluetoothSocket_connectToService(handle:not null QIODeviceH;service:QBluetoothServiceInfoH; openMd:OpenMode := QIODeviceReadWrite);
 pragma Import(C,QBluetoothSocket_connectToService, "QBluetoothSocket_connectToService");
 
 procedure QBluetoothSocket_connectToService2(handle:not null QIODeviceH;address:QBluetoothAddressH;uuid: QBluetoothUuidH;openMd:OpenMode := QIODeviceReadWrite);
 pragma Import(C,QBluetoothSocket_connectToService2, "QBluetoothSocket_connectToService2");
 
 procedure QBluetoothSocket_connectToService3(handle:not null QIODeviceH;address:QBluetoothAddressH;port: Unsigned_short;openMd: OpenMode := QIODeviceReadWrite);
 pragma Import(C,QBluetoothSocket_connectToService3, "QBluetoothSocket_connectToService3");
 
 procedure QBluetoothSocket_disconnectFromService(handle:not null QIODeviceH);
 pragma Import(C,QBluetoothSocket_disconnectFromService, "QBluetoothSocket_disconnectFromService");
 
 function  QBluetoothSocket_localName(handle:not null QIODeviceH) return QStringH;
 pragma Import(C,QBluetoothSocket_localName, "QBluetoothSocket_localName");
 
 function  QBluetoothSocket_localAddress(handle:not null QIODeviceH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothSocket_localAddress, "QBluetoothSocket_localAddress");
 
 function  QBluetoothSocket_localPort(handle:not null QIODeviceH) return Unsigned_short;
 pragma Import(C,QBluetoothSocket_localPort, "QBluetoothSocket_localPort");
 
 function  QBluetoothSocket_peerName(handle:not null QIODeviceH) return QStringH;
 pragma Import(C,QBluetoothSocket_peerName, "QBluetoothSocket_peerName");
 
 function  QBluetoothSocket_peerAddress(handle:not null QIODeviceH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothSocket_peerAddress, "QBluetoothSocket_peerAddress");
 
 function  QBluetoothSocket_peerPort(handle:not null QIODeviceH) return Unsigned_short;
 pragma Import(C,QBluetoothSocket_peerPort, "QBluetoothSocket_peerPort");
 
 function  QBluetoothSocket_setSocketDescriptor(handle:not null QIODeviceH;socketDescriptor:integer;socketType: Qt.QBluetoothServiceInfo.Protocol; state:QtSocketState := ConnectedState;openMd:OpenMode := QIODeviceReadWrite) return boolean;
 pragma Import(C,QBluetoothSocket_setSocketDescriptor, "QBluetoothSocket_setSocketDescriptor");
 
 function  QBluetoothSocket_socketDescriptor(handle:not null QIODeviceH) return integer;
 pragma Import(C,QBluetoothSocket_socketDescriptor, "QBluetoothSocket_socketDescriptor");
 
 function  QBluetoothSocket_socketType(handle:not null QIODeviceH) return Qt.QBluetoothServiceInfo.Protocol;
 pragma Import(C,QBluetoothSocket_socketType, "QBluetoothSocket_socketType");
 
 function  QBluetoothSocket_state(handle:not null QIODeviceH) return QtSocketState;
 pragma Import(C,QBluetoothSocket_state, "QBluetoothSocket_state");
 
 function  QBluetoothSocket_error(handle:not null QIODeviceH) return QtSocketError;
 pragma Import(C,QBluetoothSocket_error, "QBluetoothSocket_error");
 
 function  QBluetoothSocket_errorString(handle:not null QIODeviceH) return QStringH;
 pragma Import(C,QBluetoothSocket_errorString, "QBluetoothSocket_errorString");
 
 procedure QBluetoothSocket_setPreferredSecurityFlags(handle:not null QIODeviceH;flags:integer);
 pragma Import(C,QBluetoothSocket_setPreferredSecurityFlags, "QBluetoothSocket_setPreferredSecurityFlags");
 
 function  QBluetoothSocket_preferredSecurityFlags(handle:not null QIODeviceH) return integer;
 pragma Import(C,QBluetoothSocket_preferredSecurityFlags, "QBluetoothSocket_preferredSecurityFlags");
 
 procedure QBluetoothSocket_signal_slot_connected(handle:not null QBluetoothSocketH;hook: voidCallbackH);
 pragma Import(C,QBluetoothSocket_signal_slot_connected, "QBluetoothSocket_signal_slot_connected");
 
 procedure QBluetoothSocket_signal_slot_disconnected(handle:not null QBluetoothSocketH;hook: voidCallbackH);
 pragma Import(C,QBluetoothSocket_signal_slot_disconnected, "QBluetoothSocket_signal_slot_disconnected");
 
 procedure QBluetoothSocket_signal_slot_error(handle:not null QBluetoothSocketH;hook: intCallbackH);
 pragma Import(C,QBluetoothSocket_signal_slot_error, "QBluetoothSocket_signal_slot_error");
 
 procedure QBluetoothSocket_signal_slot_stateChanged(handle:not null QBluetoothSocketH;hook: intCallbackH);
 pragma Import(C,QBluetoothSocket_signal_slot_stateChanged, "QBluetoothSocket_signal_slot_stateChanged");
 
---------------------------------------------------------------------
 function  QBluetoothSocket_create(socketType:Qt.QBluetoothServiceInfo.Protocol;parent:QObjectH := null) return QIODeviceH;
 procedure QBluetoothSocket_connectToService(handle:not null QIODeviceH;address:QBluetoothAddressH;uuid: QBluetoothUuidH;openMd:OpenMode := QIODeviceReadWrite);
 procedure QBluetoothSocket_connectToService(handle:not null QIODeviceH;address:QBluetoothAddressH;port: Unsigned_short;openMd: OpenMode := QIODeviceReadWrite);

end;
