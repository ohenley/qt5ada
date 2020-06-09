--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QTcpServer is

 function  QTcpServer_create(parent:QObjectH := null) return  QServerH;
 pragma Import(C,QTcpServer_create,"QTcpServer_create");

 procedure QTcpServer_destroy(handle: not null  QServerH);
 pragma Import(C,QTcpServer_destroy,"QTcpServer_destroy");

 function  QTcpServer_listen(handle: not null  QServerH; address: quint; port: integer) return boolean;
 pragma Import(C,QTcpServer_listen,"QTcpServer_listen");

 function  QTcpServer_listen2(handle: not null  QServerH) return boolean;
 pragma Import(C,QTcpServer_listen2,"QTcpServer_listen2");

 function  QTcpServer_listen3(handle: not null  QServerH; port: integer) return boolean;
 pragma Import(C,QTcpServer_listen3,"QTcpServer_listen3");

 procedure QTcpServer_close(handle: not null  QServerH);
 pragma Import(C,QTcpServer_close,"QTcpServer_close");

 function QTcpServer_isListening(handle: not null  QServerH) return  boolean;
 pragma Import(C,QTcpServer_isListening,"QTcpServer_isListening");

 procedure QTcpServer_setMaxPendingConnections(handle: not null  QServerH; numConnections: integer);
 pragma Import(C,QTcpServer_setMaxPendingConnections,"QTcpServer_setMaxPendingConnections");

 function QTcpServer_maxPendingConnections(handle: not null  QServerH) return  integer;
 pragma Import(C,QTcpServer_maxPendingConnections,"QTcpServer_maxPendingConnections");

 function QTcpServer_serverPort(handle: not null  QServerH) return  integer;
 pragma Import(C,QTcpServer_serverPort,"QTcpServer_serverPort");

 function  QTcpServer_serverAddress(handle: not null  QServerH) return QHostAddressH;
 pragma Import(C,QTcpServer_serverAddress,"QTcpServer_serverAddress");

 function QTcpServer_socketDescriptor(handle: not null  QServerH) return  integer;
 pragma Import(C,QTcpServer_socketDescriptor,"QTcpServer_socketDescriptor");

 function QTcpServer_setSocketDescriptor(handle: not null  QServerH; socketDescriptor: integer) return  boolean;
 pragma Import(C,QTcpServer_setSocketDescriptor,"QTcpServer_setSocketDescriptor");

 function QTcpServer_waitForNewConnection(handle: not null  QServerH; msec: integer := 0; timedOut:  pboolean := null) return  boolean;
 pragma Import(C,QTcpServer_waitForNewConnection,"QTcpServer_waitForNewConnection");

 function QTcpServer_hasPendingConnections(handle: not null  QServerH) return  boolean;
 pragma Import(C,QTcpServer_hasPendingConnections,"QTcpServer_hasPendingConnections");

 function  QTcpServer_nextPendingConnection(handle: not null  QServerH) return QSocketH;
 pragma Import(C,QTcpServer_nextPendingConnection,"QTcpServer_nextPendingConnection");

 function  QTcpServer_serverError(handle: not null  QServerH) return  integer;
 pragma Import(C,QTcpServer_serverError,"QTcpServer_serverError");

 function QTcpServer_errorString(handle: not null  QServerH) return  QStringH;
 pragma Import(C,QTcpServer_errorString,"QTcpServer_errorString");

 procedure QTcpServer_setProxy(handle: not null  QServerH; networkProxy: QNetworkProxyH);
 pragma Import(C,QTcpServer_setProxy,"QTcpServer_setProxy");

 function QTcpServer_proxy(handle: not null  QServerH) return  QNetworkProxyH;
 pragma Import(C,QTcpServer_proxy,"QTcpServer_proxy");
 
 function  QTcpServer_sender(handle: not null  QServerH) return QObjectH;
 pragma Import(C,QTcpServer_sender,"QTcpServer_sender");

 function QTcpServer_event(handle: not null  QServerH; p1: QEventH) return  Boolean;
 pragma Import(C,QTcpServer_event,"QTcpServer_event");

 function QTcpServer_eventFilter(handle: not null  QServerH; p1: QServerH; p2: QEventH) return  Boolean;
 pragma Import(C,QTcpServer_eventFilter,"QTcpServer_eventFilter");

 function  QTcpServer_tr(sourceText: zstring; comment: zstring := s2zs(""); n: Integer := -1) return QStringH;
 pragma Import(C,QTcpServer_tr,"QTcpServer_tr");

 function  QTcpServer_trUtf8(sourceText: zstring; comment: zstring := s2zs(""); n: Integer := -1) return  QStringH;
 pragma Import(C,QTcpServer_trUtf8,"QTcpServer_trUtf8");

 function QTcpServer_metaObject(handle: not null  QServerH) return  QMetaObjectH;
 pragma Import(C,QTcpServer_metaObject,"QTcpServer_metaObject");

 function  QTcpServer_objectName(handle: not null  QServerH) return QStringH;
 pragma Import(C,QTcpServer_objectName,"QTcpServer_objectName");

 procedure QTcpServer_setObjectName(handle: not null  QServerH; name: QStringH);
 pragma Import(C,QTcpServer_setObjectName,"QTcpServer_setObjectName");

 function QTcpServer_isWidgetType(handle: not null  QServerH) return  Boolean;
 pragma Import(C,QTcpServer_isWidgetType,"QTcpServer_isWidgetType");

 function QTcpServer_signalsBlocked(handle: not null  QServerH) return  Boolean;
 pragma Import(C,QTcpServer_signalsBlocked,"QTcpServer_signalsBlocked");

 function QTcpServer_blockSignals(handle: not null  QServerH; b: Boolean) return  Boolean;
 pragma Import(C,QTcpServer_blockSignals,"QTcpServer_blockSignals");

 function QTcpServer_thread(handle: not null  QServerH) return  QThreadH;
 pragma Import(C,QTcpServer_thread,"QTcpServer_thread");

 procedure QTcpServer_moveToThread(handle: not null  QServerH; thread: QThreadH);
 pragma Import(C,QTcpServer_moveToThread,"QTcpServer_moveToThread");

 function QTcpServer_startTimer(handle: not null  QServerH; interval: Integer) return  Integer;
 pragma Import(C,QTcpServer_startTimer,"QTcpServer_startTimer");

 procedure QTcpServer_killTimer(handle: not null  QServerH; id: Integer);
 pragma Import(C,QTcpServer_killTimer,"QTcpServer_killTimer");

 procedure QTcpServer_setParent(handle: not null  QServerH; p1: QServerH);
 pragma Import(C,QTcpServer_setParent,"QTcpServer_setParent");

 procedure QTcpServer_installEventFilter(handle: not null  QServerH; p1: QServerH);
 pragma Import(C,QTcpServer_installEventFilter,"QTcpServer_installEventFilter");

 procedure QTcpServer_removeEventFilter(handle: not null  QServerH; p1: QServerH);
 pragma Import(C,QTcpServer_removeEventFilter,"QTcpServer_removeEventFilter");

 function QTcpServer_connect(sender: QServerH; signal: zstring; receiver: QServerH; slot: zstring; p5: QtConnectionType := QtAutoConnection) return Boolean;
 pragma Import(C,QTcpServer_connect,"QTcpServer_connect");

 function QTcpServer_connect2(handle: not null  QServerH; sender: QServerH; signal: zstring; member: zstring; Connection: QtConnectionType := QtAutoConnection) return Boolean;
 pragma Import(C,QTcpServer_connect2,"QTcpServer_connect2");

 function QTcpServer_disconnect(sender: QServerH; signal: zstring; receiver: QServerH; member: zstring) return  Boolean;
 pragma Import(C,QTcpServer_disconnect,"QTcpServer_disconnect");

 function QTcpServer_disconnect3(handle: not null  QServerH; receiver: QServerH; member: zstring := s2zs("")) return Boolean;
 pragma Import(C,QTcpServer_disconnect3,"QTcpServer_disconnect3");

 procedure QTcpServer_dumpObjectTree(handle: not null  QServerH);
 pragma Import(C,QTcpServer_dumpObjectTree,"QTcpServer_dumpObjectTree");

 procedure QTcpServer_dumpObjectInfo(handle: not null  QServerH);
 pragma Import(C,QTcpServer_dumpObjectInfo,"QTcpServer_dumpObjectInfo");

 function QTcpServer_setProperty(handle: not null  QServerH; name: zstring; value: QVariantH) return  Boolean;
 pragma Import(C,QTcpServer_setProperty,"QTcpServer_setProperty");

 function  QTcpServer_property(handle: not null  QServerH; name: zstring) return QVariantH;
 pragma Import(C,QTcpServer_property,"QTcpServer_property");

 function QTcpServer_registerUserData return  LongWord;
 pragma Import(C,QTcpServer_registerUserData,"QTcpServer_registerUserData");

 function QTcpServer_parent(handle: not null  QServerH) return  QServerH;
 pragma Import(C,QTcpServer_parent,"QTcpServer_parent");

 function QTcpServer_inherits(handle: not null  QServerH; classname: zstring) return  Boolean;
 pragma Import(C,QTcpServer_inherits,"QTcpServer_inherits");

 procedure QTcpServer_deleteLater(handle: not null  QServerH);
 pragma Import(C,QTcpServer_deleteLater,"QTcpServer_deleteLater");

 procedure QTcpServer_connectSlotsByName(handle: not null  QServerH);
 pragma Import(C,QTcpServer_connectSlotsByName ,"QTcpServer_connectSlotsByName");
 
 type QTcpServernewConnectionEvent is access procedure;
 pragma Convention(C,QTcpServernewConnectionEvent);
 
 procedure QTcpServer_signal_slot_newConnection(handle: not null QServerH; hook:QTcpServernewConnectionEvent);
 pragma Import(C,QTcpServer_signal_slot_newConnection, "QTcpServer_signal_slot_newConnection");

----------------------------------------------------------------------------------------------------
 function  QTcpServer_listen(handle: not null  QServerH) return boolean;
 function  QTcpServer_listen(handle: not null  QServerH; port: integer) return boolean;
 function QTcpServer_connect(handle: not null  QServerH; sender: QServerH; signal: zstring; member: zstring; Connection: QtConnectionType := QtAutoConnection) return Boolean;
 function QTcpServer_disconnect(handle: not null  QServerH; receiver: QServerH; member: zstring := s2zs("")) return Boolean;

end  Qt.QTcpServer;
