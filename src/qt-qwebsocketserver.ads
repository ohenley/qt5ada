-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป 
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QHostAddress; use Qt.QHostAddress;
with Qt.QSsl; use Qt.QSsl;
with Qt.QWebSocketProtocol;
package Qt.QWebSocketServer is

 type SslMode is (SecureMode,NonSecureMode);
 pragma convention(C,SslMode);
 
 function  QWebSocketServer_create( serverName:QStringH;secureMode:SslMode;parent :QObjectH := null) return QWebSocketServerH;
 pragma Import(C,QWebSocketServer_create, "QWebSocketServer_create");
 
 procedure QWebSocketServer_destroy(handle:not null QWebSocketServerH);
 pragma Import(C,QWebSocketServer_destroy, "QWebSocketServer_destroy");
 
 function  QWebSocketServer_listen(handle:not null QWebSocketServerH;address :QHostAddressH := QHostAddress_create(Any); port :quint16 :=  0) return boolean;
 pragma Import(C,QWebSocketServer_listen, "QWebSocketServer_listen");
 
 procedure QWebSocketServer_close(handle:not null QWebSocketServerH);
 pragma Import(C,QWebSocketServer_close, "QWebSocketServer_close");
 
 function  QWebSocketServer_isListening(handle:not null QWebSocketServerH) return boolean;
 pragma Import(C,QWebSocketServer_isListening, "QWebSocketServer_isListening");
 
 procedure QWebSocketServer_setMaxPendingConnections(handle:not null QWebSocketServerH;numConnections:integer);
 pragma Import(C,QWebSocketServer_setMaxPendingConnections, "QWebSocketServer_setMaxPendingConnections");
 
 function  QWebSocketServer_maxPendingConnections(handle:not null QWebSocketServerH) return integer;
 pragma Import(C,QWebSocketServer_maxPendingConnections, "QWebSocketServer_maxPendingConnections");
 
 function  QWebSocketServer_serverPort(handle:not null QWebSocketServerH) return quint16;
 pragma Import(C,QWebSocketServer_serverPort, "QWebSocketServer_serverPort");
 
 function  QWebSocketServer_serverAddress(handle:not null QWebSocketServerH) return QHostAddressH;
 pragma Import(C,QWebSocketServer_serverAddress, "QWebSocketServer_serverAddress");
 
 function  QWebSocketServer_serverUrl(handle:not null QWebSocketServerH) return QUrlH;
 pragma Import(C,QWebSocketServer_serverUrl, "QWebSocketServer_serverUrl");
 
 function  QWebSocketServer_secureMode(handle:not null QWebSocketServerH) return SslMode;
 pragma Import(C,QWebSocketServer_secureMode, "QWebSocketServer_secureMode");
 
 function  QWebSocketServer_setSocketDescriptor(handle:not null QWebSocketServerH;socketDescriptor:integer) return boolean;
 pragma Import(C,QWebSocketServer_setSocketDescriptor, "QWebSocketServer_setSocketDescriptor");
 
 function  QWebSocketServer_socketDescriptor(handle:not null QWebSocketServerH) return integer;
 pragma Import(C,QWebSocketServer_socketDescriptor, "QWebSocketServer_socketDescriptor");
 
 function  QWebSocketServer_hasPendingConnections(handle:not null QWebSocketServerH) return boolean;
 pragma Import(C,QWebSocketServer_hasPendingConnections, "QWebSocketServer_hasPendingConnections");
 
 function  QWebSocketServer_nextPendingConnection(handle:not null QWebSocketServerH) return QWebSocketH;
 pragma Import(C,QWebSocketServer_nextPendingConnection, "QWebSocketServer_nextPendingConnection");
 
 function  QWebSocketServer_error(handle:not null QWebSocketServerH) return Qt.QWebSocketProtocol.QWebSocketProtocolCloseCode;
 pragma Import(C,QWebSocketServer_error, "QWebSocketServer_error");
 
 function  QWebSocketServer_errorString(handle:not null QWebSocketServerH) return QStringH;
 pragma Import(C,QWebSocketServer_errorString, "QWebSocketServer_errorString");
 
 procedure QWebSocketServer_pauseAccepting(handle:not null QWebSocketServerH);
 pragma Import(C,QWebSocketServer_pauseAccepting, "QWebSocketServer_pauseAccepting");
 
 procedure QWebSocketServer_resumeAccepting(handle:not null QWebSocketServerH);
 pragma Import(C,QWebSocketServer_resumeAccepting, "QWebSocketServer_resumeAccepting");
 
 procedure QWebSocketServer_setServerName(handle:not null QWebSocketServerH;serverName:QStringH);
 pragma Import(C,QWebSocketServer_setServerName, "QWebSocketServer_setServerName");
 
 function  QWebSocketServer_serverName(handle:not null QWebSocketServerH) return QStringH;
 pragma Import(C,QWebSocketServer_serverName, "QWebSocketServer_serverName");
 
 procedure QWebSocketServer_setProxy(handle:not null QWebSocketServerH;networkProxy:QNetworkProxyH);
 pragma Import(C,QWebSocketServer_setProxy, "QWebSocketServer_setProxy");
 
 function  QWebSocketServer_proxy(handle:not null QWebSocketServerH) return QNetworkProxyH;
 pragma Import(C,QWebSocketServer_proxy, "QWebSocketServer_proxy");
 
 procedure QWebSocketServer_setSslConfiguration(handle:not null QWebSocketServerH;sslConfiguration:QSslConfigurationH);
 pragma Import(C,QWebSocketServer_setSslConfiguration, "QWebSocketServer_setSslConfiguration");
 
 function  QWebSocketServer_sslConfiguration(handle:not null QWebSocketServerH) return QSslConfigurationH;
 pragma Import(C,QWebSocketServer_sslConfiguration, "QWebSocketServer_sslConfiguration");
 
 function  QWebSocketServer_supportedVersions(handle:not null QWebSocketServerH) return QIntListH;
 pragma Import(C,QWebSocketServer_supportedVersions, "QWebSocketServer_supportedVersions");
 
 procedure QWebSocketServer_handleConnection(handle:not null QWebSocketServerH;socket:QSocketH); -- socket is tcpsocket
 pragma Import(C,QWebSocketServer_handleConnection, "QWebSocketServer_handleConnection");
 
 type  voidListSslErrorProc is access procedure(errors:QSslErrorListH);
 pragma convention(C,voidListSslErrorProc);

 type  voidSslErrorProc     is access procedure(error:QSslErrorH);
 pragma convention(C,voidSslErrorProc);

 procedure QWebSocketServer_signal_slot_newConnection(handle:not null QWebSocketServerH;hook:voidCallbackH);
 pragma Import(C,QWebSocketServer_signal_slot_newConnection, "QWebSocketServer_signal_slot_newConnection");
 
 procedure QWebSocketServer_signal_slot_closed(handle:not null QWebSocketServerH;hook:voidCallbackH);
 pragma Import(C,QWebSocketServer_signal_slot_closed, "QWebSocketServer_signal_slot_closed");
 
 procedure QWebSocketServer_signal_slot_acceptError(handle:not null QWebSocketServerH;hook:intCallbackH);
 pragma Import(C,QWebSocketServer_signal_slot_acceptError, "QWebSocketServer_signal_slot_acceptError");
 
 procedure QWebSocketServer_signal_slot_serverError(handle:not null QWebSocketServerH;hook:intCallbackH);
 pragma Import(C,QWebSocketServer_signal_slot_serverError, "QWebSocketServer_signal_slot_serverError");
 
 procedure QWebSocketServer_signal_slot_originAuthenticationRequired(handle:not null QWebSocketServerH;hook:anyParameterCallbackH);
 pragma Import(C,QWebSocketServer_signal_slot_originAuthenticationRequired, "QWebSocketServer_signal_slot_originAuthenticationRequired");
 
 procedure QWebSocketServer_signal_slot_preSharedKeyAuthenticationRequired(handle:not null QWebSocketServerH;hook:anyParameterCallbackH);
 pragma Import(C,QWebSocketServer_signal_slot_preSharedKeyAuthenticationRequired, "QWebSocketServer_signal_slot_preSharedKeyAuthenticationRequired");
 
 procedure QWebSocketServer_signal_slot_peerVerifyError(handle:not null QSslSocketH; hook: voidSslErrorProc);
 pragma Import(C,QWebSocketServer_signal_slot_peerVerifyError, "QWebSocketServer_signal_slot_peerVerifyError");
 
 procedure QWebSocketServer_signal_slot_sslErrors(handle:not null QWebSocketServerH; hook: voidListSslErrorProc);
 pragma Import(C,QWebSocketServer_signal_slot_sslErrors, "QWebSocketServer_signal_slot_sslErrors");
 

end;
