-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2015                      บ
-- บ Copyright (C) 2014,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QWebSocketProtocol; use Qt.QWebSocketProtocol;
with Qt.QString;            use Qt.QString;
with Qt.QByteArray;         use Qt.QByteArray;
with Qt.QAbstractSocket;    use Qt.QAbstractSocket;
with Qt.QSsl;               use Qt.QSsl;

package Qt.QWebSocket is

 function  QWebSocket_create(origin:QStringH := QString_create;version : QWebSocketProtocolVersion := VersionLatest;parent:QObjectH := null) return QWebSocketH;
 pragma Import(C,QWebSocket_create, "QWebSocket_create");
 
 procedure QWebSocket_delete(handle:not null QWebSocketH);
 pragma Import(C,QWebSocket_delete, "QWebSocket_delete");
 
 procedure QWebSocket_abort(handle:not null QWebSocketH);
 pragma Import(C,QWebSocket_abort, "QWebSocket_abort");
 
 function  QWebSocket_error(handle:not null QWebSocketH) return Qt.QAbstractSocket.QtSocketError;
 pragma Import(C,QWebSocket_error, "QWebSocket_error");
 
 function  QWebSocket_errorString(handle:not null QWebSocketH) return QStringH;
 pragma Import(C,QWebSocket_errorString, "QWebSocket_errorString");
 
 function  QWebSocket_flush(handle:not null QWebSocketH) return boolean;
 pragma Import(C,QWebSocket_flush, "QWebSocket_flush");
 
 function  QWebSocket_isValid(handle:not null QWebSocketH) return boolean;
 pragma Import(C,QWebSocket_isValid, "QWebSocket_isValid");
 
 function  QWebSocket_localAddress(handle:not null QWebSocketH) return QHostAddressH;
 pragma Import(C,QWebSocket_localAddress, "QWebSocket_localAddress");
 
 function  QWebSocket_localPort(handle:not null QWebSocketH) return quint16;
 pragma Import(C,QWebSocket_localPort, "QWebSocket_localPort");
 
 function  QWebSocket_pauseMode(handle:not null QWebSocketH) return Qt.QAbstractSocket.QtPauseModes;
 pragma Import(C,QWebSocket_pauseMode, "QWebSocket_pauseMode");
 
 function  QWebSocket_peerAddress(handle:not null QWebSocketH) return QHostAddressH;
 pragma Import(C,QWebSocket_peerAddress, "QWebSocket_peerAddress");
 
 function  QWebSocket_peerName(handle:not null QWebSocketH) return QStringH;
 pragma Import(C,QWebSocket_peerName, "QWebSocket_peerName");
 
 function  QWebSocket_peerPort(handle:not null QWebSocketH) return quint16;
 pragma Import(C,QWebSocket_peerPort, "QWebSocket_peerPort");
 
 function  QWebSocket_proxy(handle:not null QWebSocketH) return QNetworkProxyH;
 pragma Import(C,QWebSocket_proxy, "QWebSocket_proxy");
 
 procedure QWebSocket_setProxy(handle:not null QWebSocketH; networkProxy:QNetworkProxyH);
 pragma Import(C,QWebSocket_setProxy, "QWebSocket_setProxy");
 
 procedure QWebSocket_setMaskGenerator(handle:not null QWebSocketH; maskGenerator:QMaskGeneratorH);
 pragma Import(C,QWebSocket_setMaskGenerator, "QWebSocket_setMaskGenerator");
 
 function  QWebSocket_maskGenerator(handle:not null QWebSocketH) return QMaskGeneratorH;
 pragma Import(C,QWebSocket_maskGenerator, "QWebSocket_maskGenerator");
 
 function  QWebSocket_readBufferSize(handle:not null QWebSocketH) return qint64;
 pragma Import(C,QWebSocket_readBufferSize, "QWebSocket_readBufferSize");
 
 procedure QWebSocket_setReadBufferSize(handle:not null QWebSocketH;size:qint64);
 pragma Import(C,QWebSocket_setReadBufferSize, "QWebSocket_setReadBufferSize");
 
 procedure QWebSocket_resume(handle:not null QWebSocketH);
 pragma Import(C,QWebSocket_resume, "QWebSocket_resume");
 
 procedure QWebSocket_setPauseMode(handle:not null QWebSocketH; pauseMode:Qt.QAbstractSocket.QtPauseModes);
 pragma Import(C,QWebSocket_setPauseMode, "QWebSocket_setPauseMode");
 
 function  QWebSocket_state(handle:not null QWebSocketH) return Qt.QAbstractSocket.QtSocketState;
 pragma Import(C,QWebSocket_state, "QWebSocket_state");
 
 function  QWebSocket_version(handle:not null QWebSocketH) return QWebSocketProtocolVersion;
 pragma Import(C,QWebSocket_version, "QWebSocket_version");
 
 function  QWebSocket_resourceName(handle:not null QWebSocketH) return QStringH;
 pragma Import(C,QWebSocket_resourceName, "QWebSocket_resourceName");
 
 function  QWebSocket_requestUrl(handle:not null QWebSocketH) return QUrlH;
 pragma Import(C,QWebSocket_requestUrl, "QWebSocket_requestUrl");
 
 function  QWebSocket_origin(handle:not null QWebSocketH) return QStringH;
 pragma Import(C,QWebSocket_origin, "QWebSocket_origin");
 
 function  QWebSocket_closeCode(handle:not null QWebSocketH) return QWebSocketProtocolCloseCode;
 pragma Import(C,QWebSocket_closeCode, "QWebSocket_closeCode");
 
 function  QWebSocket_closeReason(handle:not null QWebSocketH) return QStringH;
 pragma Import(C,QWebSocket_closeReason, "QWebSocket_closeReason");
 
 function  QWebSocket_sendTextMessage(handle:not null QWebSocketH; message :QStringH) return qint64;
 pragma Import(C,QWebSocket_sendTextMessage, "QWebSocket_sendTextMessage");
 
 function  QWebSocket_sendBinaryMessage(handle:not null QWebSocketH; data:QByteArrayH) return qint64;
 pragma Import(C,QWebSocket_sendBinaryMessage, "QWebSocket_sendBinaryMessage");
 
 procedure QWebSocket_ignoreSslErrors(handle:not null QWebSocketH; errors:QSslErrorListH);
 pragma Import(C,QWebSocket_ignoreSslErrors, "QWebSocket_ignoreSslErrors");
 
 procedure QWebSocket_ignoreSslErrors2(handle:not null QWebSocketH);
 pragma Import(C,QWebSocket_ignoreSslErrors2, "QWebSocket_ignoreSslErrors2");
 
 procedure QWebSocket_setSslConfiguration(handle:not null QWebSocketH; sslConfiguration :QSslConfigurationH);
 pragma Import(C,QWebSocket_setSslConfiguration, "QWebSocket_setSslConfiguration");
 
 function  QWebSocket_sslConfiguration(handle:not null QWebSocketH) return QSslConfigurationH;
 pragma Import(C,QWebSocket_sslConfiguration, "QWebSocket_sslConfiguration");
 
 procedure QWebSocket_close(handle:not null QWebSocketH;closeCode: QWebSocketProtocolCloseCode := CloseCodeNormal; reason: QStringH := QString_create);
 pragma Import(C,QWebSocket_close, "QWebSocket_close");
 
 procedure QWebSocket_open(handle:not null QWebSocketH;url:QUrlH);
 pragma Import(C,QWebSocket_open, "QWebSocket_open");
 
 procedure QWebSocket_ping(handle:not null QWebSocketH;payload:QByteArrayH := QByteArray_create);
 pragma Import(C,QWebSocket_ping, "QWebSocket_ping");

 procedure QWebSocket_open2(handle:not null QWebSocketH;request: QNetworkRequestH);
 pragma Import(C,QWebSocket_open2, "QWebSocket_open2");
 
 function  QWebSocket_request(handle:not null QWebSocketH) return QNetworkRequestH;
 pragma Import(C,QWebSocket_request, "QWebSocket_request");

 type voidSlotProc is access procedure;
 pragma convention(C,voidSlotProc);

 type intSlotProc is access procedure(i:integer);
 pragma convention(C,intSlotProc);

 type NetworkProxyAuthenticatorSlotProc is access procedure(network:QNetworkProxyAuthenticatorH);
 pragma convention(C,NetworkProxyAuthenticatorSlotProc);

 type int64SlotProc is access procedure(i: qint64);
 pragma convention(C,int64SlotProc);

 type StringBoolSlotProc is access procedure(s:QStringH; b: boolean);
 pragma convention(C,StringBoolSlotProc);

 type ByteArrayBoolSlotProc is access procedure(s:QByteArrayH; b: boolean);
 pragma convention(C,ByteArrayBoolSlotProc);

 type uint64ByteArraySlotProc is access procedure(i: quint64);
 pragma convention(C,uint64ByteArraySlotProc);

 type SslErrorListSlotProc is access procedure(errors:QSslErrorListH);
 pragma convention(C,SslErrorListSlotProc);

 type StringSlotProc is access procedure(s:QStringH);
 pragma convention(C,StringSlotProc);

 type ByteArraySlotProc is access procedure(s:QByteArrayH);
 pragma convention(C,ByteArraySlotProc);

 procedure QWebSocket_signal_slot_aboutToClose(handle:not null QWebSocketH; hook:voidSlotProc);
 pragma Import(C,QWebSocket_signal_slot_aboutToClose, "QWebSocket_signal_slot_aboutToClose");
 
 procedure QWebSocket_signal_slot_connected(handle:not null QWebSocketH; hook:voidSlotProc);
 pragma Import(C,QWebSocket_signal_slot_connected, "QWebSocket_signal_slot_connected");
 
 procedure QWebSocket_signal_slot_disconnected(handle:not null QWebSocketH; hook:voidSlotProc);
 pragma Import(C,QWebSocket_signal_slot_disconnected, "QWebSocket_signal_slot_disconnected");
 
 procedure QWebSocket_signal_slot_stateChanged(handle:not null QWebSocketH; hook:intSlotProc);
 pragma Import(C,QWebSocket_signal_slot_stateChanged, "QWebSocket_signal_slot_stateChanged");
 
 procedure QWebSocket_signal_slot_error(handle:not null QWebSocketH; hook:intSlotProc);
 pragma Import(C,QWebSocket_signal_slot_error, "QWebSocket_signal_slot_error");
 
 procedure QWebSocket_signal_slot_proxyAuthenticationRequired(handle:not null QWebSocketH; hook: NetworkProxyAuthenticatorSlotProc);
 pragma Import(C,QWebSocket_signal_slot_proxyAuthenticationRequired, "QWebSocket_signal_slot_proxyAuthenticationRequired");
 
 procedure QWebSocket_signal_slot_readChannelFinished(handle:not null QWebSocketH; hook:voidSlotProc);
 pragma Import(C,QWebSocket_signal_slot_readChannelFinished, "QWebSocket_signal_slot_readChannelFinished");
 
 procedure QWebSocket_signal_slot_bytesWritten(handle:not null QWebSocketH; hook: int64SlotProc);
 pragma Import(C,QWebSocket_signal_slot_bytesWritten, "QWebSocket_signal_slot_bytesWritten");
 
 procedure QWebSocket_signal_slot_textFrameReceived(handle:not null QWebSocketH; hook: StringBoolSlotProc);
 pragma Import(C,QWebSocket_signal_slot_textFrameReceived, "QWebSocket_signal_slot_textFrameReceived");
 
 procedure QWebSocket_signal_slot_binaryFrameReceived(handle:not null QWebSocketH; hook: ByteArrayBoolSlotProc);
 pragma Import(C,QWebSocket_signal_slot_binaryFrameReceived, "QWebSocket_signal_slot_binaryFrameReceived");
 
 procedure QWebSocket_signal_slot_pong(handle:not null QWebSocketH; hook: uint64ByteArraySlotProc);
 pragma Import(C,QWebSocket_signal_slot_pong, "QWebSocket_signal_slot_pong");
 
 procedure QWebSocket_signal_slot_sslErrors(handle:not null QWebSocketH; hook: SslErrorListSlotProc);
 pragma Import(C,QWebSocket_signal_slot_sslErrors, "QWebSocket_signal_slot_sslErrors");
 
 procedure QWebSocket_signal_slot_textMessageReceived(handle:not null QWebSocketH; hook: StringSlotProc);
 pragma Import(C,QWebSocket_signal_slot_textMessageReceived, "QWebSocket_signal_slot_textMessageReceived");
 
 procedure QWebSocket_signal_slot_binaryMessageReceived(handle:not null QWebSocketH; hook: ByteArraySlotProc);
 pragma Import(C,QWebSocket_signal_slot_binaryMessageReceived, "QWebSocket_signal_slot_binaryMessageReceived");
 
------------------------------------------------------------------------
 procedure QWebSocket_ignoreSslErrors(handle:not null QWebSocketH);
 procedure QWebSocket_open(handle:not null QWebSocketH;request: QNetworkRequestH);

end;
