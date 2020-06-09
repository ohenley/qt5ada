-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QSsl;            use  Qt.QSsl;        
with Qt.QSslCipher;      use  Qt.QSslCipher;  
with Qt.QSslError;       use  Qt.QSslError;   
with Qt.QSslKey;         use  Qt.QSslKey;     
with Qt.QRegExp;         use  Qt.QRegExp;     
with Qt.QAbstractSocket; use  Qt.QAbstractSocket;
with Qt.QIODEvice;       use  Qt.QIODevice;

package Qt.QSslSocket is

 type SslMode is (UnencryptedMode,SslClientMode,SslServerMode);
 pragma convention(C,SslMode);

 type PeerVerifyMode is (VerifyNone,QueryPeer, VerifyPeer, AutoVerifyPeer);
 pragma convention(C,PeerVerifyMode); 

 function  QSslSocket_create(parent:QObjectH) return QSslSocketH;
 pragma Import(C,QSslSocket_create, "QSslSocket_create");
 
 procedure QSslSocket_destroy(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_destroy, "QSslSocket_destroy");
 
 procedure QSslSocket_resume(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_resume, "QSslSocket_resume");
 
 procedure QSslSocket_connectToHostEncrypted(handle:not null QSslSocketH;hostName:QStringH ; port:quint16; mode:quint);
 pragma Import(C,QSslSocket_connectToHostEncrypted, "QSslSocket_connectToHostEncrypted");
 
 procedure QSslSocket_connectToHostEncrypted2(handle:not null QSslSocketH;hostName:QStringH; port:quint16;sslPeerName:QStringH ; mode:QIODeviceOpenMode := QIODeviceReadWrite; protocol:Qt.QAbstractSocket.QtNetworkLayerProtocol  := AnyIPProtocol);
 pragma Import(C,QSslSocket_connectToHostEncrypted2, "QSslSocket_connectToHostEncrypted2");
 
 function  QSslSocket_mode(handle:not null QSslSocketH) return SslMode;
 pragma Import(C,QSslSocket_mode, "QSslSocket_mode");
 
 function  QSslSocket_isEncrypted(handle:not null QSslSocketH) return boolean;
 pragma Import(C,QSslSocket_isEncrypted, "QSslSocket_isEncrypted");
 
 function  QSslSocket_protocol(handle:not null QSslSocketH) return Qt.QSsl.SslProtocol;
 pragma Import(C,QSslSocket_protocol, "QSslSocket_protocol");
 
 procedure QSslSocket_setProtocol(handle:not null QSslSocketH;protocol: Qt.QSsl.SslProtocol);
 pragma Import(C,QSslSocket_setProtocol, "QSslSocket_setProtocol");
 
 function  QSslSocket_peerVerifyMode(handle:not null QSslSocketH) return PeerVerifyMode;
 pragma Import(C,QSslSocket_peerVerifyMode, "QSslSocket_peerVerifyMode");
 
 procedure QSslSocket_setPeerVerifyMode(handle:not null QSslSocketH;mode: PeerVerifyMode);
 pragma Import(C,QSslSocket_setPeerVerifyMode, "QSslSocket_setPeerVerifyMode");
 
 function  QSslSocket_peerVerifyDepth(handle:not null QSslSocketH) return integer;
 pragma Import(C,QSslSocket_peerVerifyDepth, "QSslSocket_peerVerifyDepth");
 
 procedure QSslSocket_setPeerVerifyDepth(handle:not null QSslSocketH; depth:integer);
 pragma Import(C,QSslSocket_setPeerVerifyDepth, "QSslSocket_setPeerVerifyDepth");
 
 function  QSslSocket_bytesAvailable(handle:not null QSslSocketH) return qint64;
 pragma Import(C,QSslSocket_bytesAvailable, "QSslSocket_bytesAvailable");
 
 function  QSslSocket_bytesToWrite(handle:not null QSslSocketH) return qint64;
 pragma Import(C,QSslSocket_bytesToWrite, "QSslSocket_bytesToWrite");
 
 function  QSslSocket_canReadLine(handle:not null QSslSocketH) return boolean;
 pragma Import(C,QSslSocket_canReadLine, "QSslSocket_canReadLine");
 
 procedure QSslSocket_close(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_close, "QSslSocket_close");
 
 function  QSslSocket_atEnd(handle:not null QSslSocketH) return boolean;
 pragma Import(C,QSslSocket_atEnd, "QSslSocket_atEnd");
 
 function  QSslSocket_flush(handle:not null QSslSocketH) return boolean;
 pragma Import(C,QSslSocket_flush, "QSslSocket_flush");
 
 procedure QSslSocket_abort(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_abort, "QSslSocket_abort");
 
 procedure QSslSocket_setReadBufferSize(handle:not null QSslSocketH; size:qint64);
 pragma Import(C,QSslSocket_setReadBufferSize, "QSslSocket_setReadBufferSize");
 
 function  QSslSocket_encryptedBytesAvailable(handle:not null QSslSocketH) return qint64;
 pragma Import(C,QSslSocket_encryptedBytesAvailable, "QSslSocket_encryptedBytesAvailable");
 
 function  QSslSocket_encryptedBytesToWrite(handle:not null QSslSocketH) return qint64;
 pragma Import(C,QSslSocket_encryptedBytesToWrite, "QSslSocket_encryptedBytesToWrite");
 
 function  QSslSocket_sslConfiguration(handle:not null QSslSocketH) return QSslConfigurationH;
 pragma Import(C,QSslSocket_sslConfiguration, "QSslSocket_sslConfiguration");
 
 procedure QSslSocket_setSslConfiguration(handle:not null QSslSocketH; config:QSslConfigurationH);
 pragma Import(C,QSslSocket_setSslConfiguration, "QSslSocket_setSslConfiguration");
 
 procedure QSslSocket_setLocalCertificate(handle:not null QSslSocketH; certificate:QSslCertificateH);
 pragma Import(C,QSslSocket_setLocalCertificate, "QSslSocket_setLocalCertificate");
 
 procedure QSslSocket_setLocalCertificate2(handle:not null QSslSocketH;fileName: QStringH;format: Qt.QSsl.EncodingFormat);
 pragma Import(C,QSslSocket_setLocalCertificate2, "QSslSocket_setLocalCertificate2");
 
 function  QSslSocket_localCertificate(handle:not null QSslSocketH) return QSslCertificateH;
 pragma Import(C,QSslSocket_localCertificate, "QSslSocket_localCertificate");
 
 function  QSslSocket_peerCertificate(handle:not null QSslSocketH) return QSslCertificateH;
 pragma Import(C,QSslSocket_peerCertificate, "QSslSocket_peerCertificate");
 
 function  QSslSocket_sessionCipher(handle:not null QSslSocketH) return QSslCipherH;
 pragma Import(C,QSslSocket_sessionCipher, "QSslSocket_sessionCipher");
 
 procedure QSslSocket_setPrivateKey(handle:not null QSslSocketH;key:QSslKeyH);
 pragma Import(C,QSslSocket_setPrivateKey, "QSslSocket_setPrivateKey");
 
 procedure QSslSocket_setPrivateKey2(handle:not null QSslSocketH;fileName: QStringH;algorithm: Qt.QSsl.KeyAlgorithm ;format: Qt.QSsl.EncodingFormat;passPhrase :QByteArrayH );
 pragma Import(C,QSslSocket_setPrivateKey2, "QSslSocket_setPrivateKey2");
 
 function  QSslSocket_privateKey(handle:not null QSslSocketH) return QSslKeyH;
 pragma Import(C,QSslSocket_privateKey, "QSslSocket_privateKey");
 
 procedure QSslSocket_setCiphers(handle:not null QSslSocketH;ciphers:QStringH);
 pragma Import(C,QSslSocket_setCiphers, "QSslSocket_setCiphers");
 
 procedure QSslSocket_setCiphers2(handle:not null QSslSocketH;ciphers: QSslCipherListH);
 pragma Import(C,QSslSocket_setCiphers2, "QSslSocket_setCiphers2");
 
 procedure QSslSocket_addCaCertificate(handle:not null QSslSocketH; certificate:QSslCertificateH);
 pragma Import(C,QSslSocket_addCaCertificate, "QSslSocket_addCaCertificate");
 
 procedure QSslSocket_addDefaultCaCertificate(certificate:QSslCertificateH);    
 pragma Import(C,QSslSocket_addDefaultCaCertificate, "QSslSocket_addDefaultCaCertificate");
 
 function  QSslSocket_waitForConnected(handle:not null QSslSocketH; msecs: integer := 30000 ) return boolean;
 pragma Import(C,QSslSocket_waitForConnected, "QSslSocket_waitForConnected");
 
 function  QSslSocket_waitForEncrypted(handle:not null QSslSocketH; msecs: integer := 30000) return boolean;
 pragma Import(C,QSslSocket_waitForEncrypted, "QSslSocket_waitForEncrypted");
 
 function  QSslSocket_waitForReadyRead(handle:not null QSslSocketH; msecs: integer := 30000) return boolean;
 pragma Import(C,QSslSocket_waitForReadyRead, "QSslSocket_waitForReadyRead");
 
 function  QSslSocket_waitForBytesWritten(handle:not null QSslSocketH; msecs: integer := 30000) return boolean;
 pragma Import(C,QSslSocket_waitForBytesWritten, "QSslSocket_waitForBytesWritten");
 
 function  QSslSocket_waitForDisconnected(handle:not null QSslSocketH; msecs: integer := 30000) return boolean;
 pragma Import(C,QSslSocket_waitForDisconnected, "QSslSocket_waitForDisconnected");
 
 function  QSslSocket_supportsSsl return boolean;
 pragma Import(C,QSslSocket_supportsSsl, "QSslSocket_supportsSsl");
 
 procedure QSslSocket_startClientEncryption(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_startClientEncryption, "QSslSocket_startClientEncryption");
 
 procedure QSslSocket_startServerEncryption(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_startServerEncryption, "QSslSocket_startServerEncryption");
 
 procedure QSslSocket_ignoreSslErrors(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_ignoreSslErrors, "QSslSocket_ignoreSslErrors");
 
 function  QSslSocket_setSocketDescriptor(handle:not null QSslSocketH; socketDescriptor:pinteger; state:Qt.QAbstractSocket.QtSocketState := ConnectedState;mode:QIODeviceOpenMode := QIODeviceReadWrite) return boolean;
 pragma Import(C,QSslSocket_setSocketDescriptor, "QSslSocket_setSocketDescriptor");
 
 procedure QSslSocket_connectToHost(handle:not null QSslSocketH;hostName:QStringH;port: quint16; mode:QIODeviceOpenMode := QIODeviceReadWrite; protocol:QtNetworkLayerProtocol := AnyIPProtocol);
 pragma Import(C,QSslSocket_connectToHost, "QSslSocket_connectToHost");
 
 procedure QSslSocket_disconnectFromHost(handle:not null QSslSocketH);
 pragma Import(C,QSslSocket_disconnectFromHost, "QSslSocket_disconnectFromHost");
 
 procedure QSslSocket_setSocketOption(handle:not null QSslSocketH;option:Qt.QAbstractSocket.QtSocketOption;value:QVariantH);
 pragma Import(C,QSslSocket_setSocketOption, "QSslSocket_setSocketOption");
 
 function  QSslSocket_socketOption(handle:not null QSslSocketH;option:Qt.QAbstractSocket.QtSocketOption) return QVariantH;
 pragma Import(C,QSslSocket_socketOption, "QSslSocket_socketOption");
 
 procedure QSslSocket_setLocalCertificateChain(handle:not null QSslSocketH; localChain: QSslCertificateListH);
 pragma Import(C,QSslSocket_setLocalCertificateChain, "QSslSocket_setLocalCertificateChain");
 
 function  QSslSocket_localCertificateChain(handle:not null QSslSocketH) return QSslCertificateListH;
 pragma Import(C,QSslSocket_localCertificateChain, "QSslSocket_localCertificateChain");
 
 function  QSslSocket_ciphers(handle:not null QSslSocketH) return QSslCipherListH;
 pragma Import(C,QSslSocket_ciphers, "QSslSocket_ciphers");
 
 function  QSslSocket_addCaCertificates(handle:not null QSslSocketH;path:QStringH;format: Qt.QSsl.EncodingFormat := Qt.QSsl.Pem; syntax:Qt.QRegExp.PatternSyntax := FixedString) return boolean;
 pragma Import(C,QSslSocket_addCaCertificates, "QSslSocket_addCaCertificates");
 
 procedure QSslSocket_addCaCertificates2(handle:not null QSslSocketH;certificates: QSslCertificateListH);
 pragma Import(C,QSslSocket_addCaCertificates2, "QSslSocket_addCaCertificates2");
 
 procedure QSslSocket_setCaCertificates(handle:not null QSslSocketH; certificates: QSslCertificateListH);
 pragma Import(C,QSslSocket_setCaCertificates, "QSslSocket_setCaCertificates");
 
 function  QSslSocket_caCertificates(handle:not null QSslSocketH) return QSslCertificateListH;
 pragma Import(C,QSslSocket_caCertificates, "QSslSocket_caCertificates");
 
 function  QSslSocket_sslErrors(handle:not null QSslSocketH) return QSslErrorListH;
 pragma Import(C,QSslSocket_sslErrors, "QSslSocket_sslErrors");
 
 procedure QSslSocket_ignoreSslErrors2(handle:not null QSslSocketH;errors: QSslErrorListH);
 pragma Import(C,QSslSocket_ignoreSslErrors2, "QSslSocket_ignoreSslErrors2");
 
 procedure QSslSocket_setDefaultCiphers(ciphers:QSslCipherListH);
 pragma Import(C,QSslSocket_setDefaultCiphers, "QSslSocket_setDefaultCiphers");
 
 function  QSslSocket_defaultCiphers return QSslCipherListH;
 pragma Import(C,QSslSocket_defaultCiphers, "QSslSocket_defaultCiphers");
 
 function  QSslSocket_supportedCiphers return QSslCipherListH;
 pragma Import(C,QSslSocket_supportedCiphers, "QSslSocket_supportedCiphers");
 
 function  QSslSocket_addDefaultCaCertificates(path:QStringH;format: Qt.QSsl.EncodingFormat := Pem;syntax:Qt.QRegExp.PatternSyntax := FixedString) return boolean;
 pragma Import(C,QSslSocket_addDefaultCaCertificates, "QSslSocket_addDefaultCaCertificates");
 
 procedure QSslSocket_addDefaultCaCertificates2(certificates:QSslCertificateListH);
 pragma Import(C,QSslSocket_addDefaultCaCertificates2, "QSslSocket_addDefaultCaCertificates2");
 
 procedure QSslSocket_setDefaultCaCertificates( certificates:QSslCertificateListH);
 pragma Import(C,QSslSocket_setDefaultCaCertificates, "QSslSocket_setDefaultCaCertificates");
 
 function  QSslSocket_defaultCaCertificates return QSslCertificateListH;
 pragma Import(C,QSslSocket_defaultCaCertificates, "QSslSocket_defaultCaCertificates");
 
 function  QSslSocket_systemCaCertificates return QSslCertificateListH;
 pragma Import(C,QSslSocket_systemCaCertificates, "QSslSocket_systemCaCertificates");


 type  voidSlotProc         is access procedure;
 pragma convention(C,voidSlotProc);

 type  voidIntProc          is access procedure(newMode:Qt.QSslSocket.SslMode);
 pragma convention(C,voidIntProc);

 type  voidInt64Proc        is access procedure(totalBytes:qint64);
 pragma convention(C,voidInt64Proc);

 type  voidListSslErrorProc is access procedure(errors:QSslErrorListH);
 pragma convention(C,voidListSslErrorProc);

 type  voidSslErrorProc     is access procedure(error:QSslErrorH);
 pragma convention(C,voidSslErrorProc);

 procedure QSslSocket_signal_slot_encrypted(handle:not null QSslSocketH;hook: voidSlotProc);
 pragma Import(C,QSslSocket_signal_slot_encrypted, "QSslSocket_signal_slot_encrypted");
 
 procedure QSslSocket_signal_slot_modeChanged(handle:not null QSslSocketH; hook: voidIntProc);
 pragma Import(C,QSslSocket_signal_slot_modeChanged, "QSslSocket_signal_slot_modeChanged");
 
 procedure QSslSocket_signal_slot_bytesWritten(handle:not null QSslSocketH; hook: voidInt64Proc);
 pragma Import(C,QSslSocket_signal_slot_bytesWritten, "QSslSocket_signal_slot_bytesWritten");
 
 procedure QSslSocket_signal_slot_sslErrors(handle:not null QSslSocketH; hook: voidListSslErrorProc);
 pragma Import(C,QSslSocket_signal_slot_sslErrors, "QSslSocket_signal_slot_sslErrors");
 
 procedure QSslSocket_signal_slot_peerVerifyError(handle:not null QSslSocketH; hook:voidSslErrorProc);
 pragma Import(C,QSslSocket_signal_slot_peerVerifyError, "QSslSocket_signal_slot_peerVerifyError");

-----------------------------------------------------------------------
 procedure QSslSocket_connectToHostEncrypted(handle:not null QSslSocketH;hostName:QStringH; port:quint16;sslPeerName:QStringH ; mode:QIODeviceOpenMode := QIODeviceReadWrite; protocol:Qt.QAbstractSocket.QtNetworkLayerProtocol  := AnyIPProtocol);
 procedure QSslSocket_setLocalCertificate(handle:not null QSslSocketH;fileName: QStringH;format: Qt.QSsl.EncodingFormat);
 procedure QSslSocket_setPrivateKey(handle:not null QSslSocketH;fileName: QStringH;algorithm: Qt.QSsl.KeyAlgorithm ;format: Qt.QSsl.EncodingFormat;passPhrase :QByteArrayH );
 procedure QSslSocket_setCiphers(handle:not null QSslSocketH;ciphers: QSslCipherListH);
 procedure QSslSocket_addCaCertificates(handle:not null QSslSocketH;certificates: QSslCertificateListH);
 procedure QSslSocket_ignoreSslErrors(handle:not null QSslSocketH;errors: QSslErrorListH);
 procedure QSslSocket_addDefaultCaCertificates(certificates:QSslCertificateListH);

end;
