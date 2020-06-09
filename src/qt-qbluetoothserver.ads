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

with Qt.QString;  use  Qt.QString;             
with Qt.QBluetoothServiceInfo;
with Qt.QBluetoothAddress;  use  Qt.QBluetoothAddress;
package Qt.QBluetoothServer  is

 type Error is (NoError,UnknownError,PoweredOffError,InputOutputError,ServiceAlreadyRegisteredError,UnsupportedProtocolError);
 pragma convention(C,Error);

 function  QBluetoothServer_create(serverType:Qt.QBluetoothServiceInfo.Protocol; parent:QObjectH := null) return QBluetoothServerH;
 pragma Import(C,QBluetoothServer_create, "QBluetoothServer_create");
 
 procedure QBluetoothServer_delete(handle:not null QBluetoothServerH);
 pragma Import(C,QBluetoothServer_delete, "QBluetoothServer_delete");
 
 procedure QBluetoothServer_close(handle:not null QBluetoothServerH);
 pragma Import(C,QBluetoothServer_close, "QBluetoothServer_close");
 
 function  QBluetoothServer_isListening(handle:not null QBluetoothServerH) return boolean;
 pragma Import(C,QBluetoothServer_isListening, "QBluetoothServer_isListening");
 
 function  QBluetoothServer_listen(handle:not null QBluetoothServerH;address:QBluetoothAddressH := QBluetoothAddress_create;port: integer := 0) return boolean;
 pragma Import(C,QBluetoothServer_listen, "QBluetoothServer_listen");
 
 function  QBluetoothServer_listen2(handle:not null QBluetoothServerH;uuid:QBluetoothUuidH; serviceName: QStringH := QString_create) return QBluetoothServiceInfoH;
 pragma Import(C,QBluetoothServer_listen2, "QBluetoothServer_listen2");
 
 procedure QBluetoothServer_setMaxPendingConnections(handle:not null QBluetoothServerH;numConnections:integer);
 pragma Import(C,QBluetoothServer_setMaxPendingConnections, "QBluetoothServer_setMaxPendingConnections");
 
 function  QBluetoothServer_maxPendingConnections(handle:not null QBluetoothServerH) return integer;
 pragma Import(C,QBluetoothServer_maxPendingConnections, "QBluetoothServer_maxPendingConnections");
 
 function  QBluetoothServer_hasPendingConnections(handle:not null QBluetoothServerH) return boolean;
 pragma Import(C,QBluetoothServer_hasPendingConnections, "QBluetoothServer_hasPendingConnections");
 
 function  QBluetoothServer_nextPendingConnection(handle:not null QBluetoothServerH) return QBluetoothSocketH;
 pragma Import(C,QBluetoothServer_nextPendingConnection, "QBluetoothServer_nextPendingConnection");
 
 function  QBluetoothServer_serverAddress(handle:not null QBluetoothServerH) return QBluetoothAddressH;
 pragma Import(C,QBluetoothServer_serverAddress, "QBluetoothServer_serverAddress");
 
 function  QBluetoothServer_serverPort(handle:not null QBluetoothServerH) return quint;
 pragma Import(C,QBluetoothServer_serverPort, "QBluetoothServer_serverPort");
 
 procedure QBluetoothServer_setSecurityFlags(handle:not null QBluetoothServerH; security: integer);
 pragma Import(C,QBluetoothServer_setSecurityFlags, "QBluetoothServer_setSecurityFlags");
 
 function  QBluetoothServer_securityFlags(handle:not null QBluetoothServerH) return integer;
 pragma Import(C,QBluetoothServer_securityFlags, "QBluetoothServer_securityFlags");
 
 function  QBluetoothServer_serverType(handle:not null QBluetoothServerH) return Qt.QBluetoothServiceInfo.Protocol;
 pragma Import(C,QBluetoothServer_serverType, "QBluetoothServer_serverType");
 
 function  QBluetoothServer_error(handle:not null QBluetoothServerH) return Error;
 pragma Import(C,QBluetoothServer_error, "QBluetoothServer_error");
 
 procedure QBluetoothServer_signal_slot_newConnection(handle:not null QObjectH; hook: voidCallbackH);
 pragma Import(C,QBluetoothServer_signal_slot_newConnection, "QBluetoothServer_signal_slot_newConnection");
 
 procedure QBluetoothServer_signal_slot_error(handle:not null QObjectH; hook: intCallbackH);
 pragma Import(C,QBluetoothServer_signal_slot_error, "QBluetoothServer_signal_slot_error");

end;
