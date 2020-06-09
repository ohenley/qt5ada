-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2016,2018                 บ
-- บ Copyright (C) 2014,2016,2018                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QSsl; use Qt.QSsl;
with Qt.QSslSocket; use Qt.QSslSocket;
with Qt.QObjectMap; use Qt.QObjectMap;
with builtin; use builtin;
package Qt.QSslConfiguration is

 type NextProtocolNegotiationStatus is (NextProtocolNegotiationNone, NextProtocolNegotiationNegotiated, NextProtocolNegotiationUnsupported); 
 pragma convention(C,NextProtocolNegotiationStatus);

 function  QSslConfiguration_create return QSslConfigurationH;
 pragma Import(C,QSslConfiguration_create, "QSslConfiguration_create");
 
 function  QSslConfiguration_create2(otherConfig: QSslConfigurationH) return QSslConfigurationH;
 pragma Import(C,QSslConfiguration_create2, "QSslConfiguration_create2");
 
 procedure QSslConfiguration_destroy(handle:not null QSslConfigurationH);
 pragma Import(C,QSslConfiguration_destroy, "QSslConfiguration_destroy");
 
 function  QSslConfiguration_isNull(handle:not null QSslConfigurationH) return boolean;
 pragma Import(C,QSslConfiguration_isNull, "QSslConfiguration_isNull");
 
 function  QSslConfiguration_protocol(handle:not null QSslConfigurationH) return Qt.QSsl.SslProtocol;
 pragma Import(C,QSslConfiguration_protocol, "QSslConfiguration_protocol");
 
 procedure QSslConfiguration_setProtocol(handle:not null QSslConfigurationH;protocol:Qt.QSsl.SslProtocol);
 pragma Import(C,QSslConfiguration_setProtocol, "QSslConfiguration_setProtocol");
 
 function  QSslConfiguration_peerVerifyMode(handle:not null QSslConfigurationH) return Qt.QSslSocket.PeerVerifyMode;
 pragma Import(C,QSslConfiguration_peerVerifyMode, "QSslConfiguration_peerVerifyMode");
 
 procedure QSslConfiguration_setPeerVerifyMode(handle:not null QSslConfigurationH;mode: Qt.QSslSocket.PeerVerifyMode);
 pragma Import(C,QSslConfiguration_setPeerVerifyMode, "QSslConfiguration_setPeerVerifyMode");
 
 function  QSslConfiguration_peerVerifyDepth(handle:not null QSslConfigurationH) return integer;
 pragma Import(C,QSslConfiguration_peerVerifyDepth, "QSslConfiguration_peerVerifyDepth");
 
 procedure QSslConfiguration_setPeerVerifyDepth(handle:not null QSslConfigurationH; depth:integer);
 pragma Import(C,QSslConfiguration_setPeerVerifyDepth, "QSslConfiguration_setPeerVerifyDepth");
 
 function  QSslConfiguration_localCertificate(handle:not null QSslConfigurationH) return QSslCertificateH;
 pragma Import(C,QSslConfiguration_localCertificate, "QSslConfiguration_localCertificate");
 
 procedure QSslConfiguration_setLocalCertificate(handle:not null QSslConfigurationH;certificate:QSslCertificateH);
 pragma Import(C,QSslConfiguration_setLocalCertificate, "QSslConfiguration_setLocalCertificate");
 
 function  QSslConfiguration_peerCertificate(handle:not null QSslConfigurationH) return QSslCertificateH;
 pragma Import(C,QSslConfiguration_peerCertificate, "QSslConfiguration_peerCertificate");
 
 function  QSslConfiguration_sessionCipher(handle:not null QSslConfigurationH) return QSslCipherH;
 pragma Import(C,QSslConfiguration_sessionCipher, "QSslConfiguration_sessionCipher");
 
 function  QSslConfiguration_privateKey(handle:not null QSslConfigurationH) return QSslKeyH;
 pragma Import(C,QSslConfiguration_privateKey, "QSslConfiguration_privateKey");
 
 procedure QSslConfiguration_setPrivateKey(handle:not null QSslConfigurationH;key:QSslKeyH);
 pragma Import(C,QSslConfiguration_setPrivateKey, "QSslConfiguration_setPrivateKey");
 
 function  QSslConfiguration_defaultConfiguration return QSslConfigurationH;
 pragma Import(C,QSslConfiguration_defaultConfiguration, "QSslConfiguration_defaultConfiguration");
 
 procedure QSslConfiguration_setDefaultConfiguration(configuration:QSslConfigurationH);
 pragma Import(C,QSslConfiguration_setDefaultConfiguration, "QSslConfiguration_setDefaultConfiguration");
  procedure QSslConfiguration_swap(handle,otherConfig:QSslConfigurationH);
 pragma Import(C,QSslConfiguration_swap, "QSslConfiguration_swap");
 
 function  QSslConfiguration_localCertificateChain(handle:not null QSslConfigurationH) return QSslCertificateListH;
 pragma Import(C,QSslConfiguration_localCertificateChain, "QSslConfiguration_localCertificateChain");
 
 procedure QSslConfiguration_setLocalCertificateChain(handle:not null QSslConfigurationH;localChain:QSslCertificateListH);
 pragma Import(C,QSslConfiguration_setLocalCertificateChain, "QSslConfiguration_setLocalCertificateChain");
 
 function  QSslConfiguration_peerCertificateChain(handle:not null QSslConfigurationH) return QSslCertificateListH;
 pragma Import(C,QSslConfiguration_peerCertificateChain, "QSslConfiguration_peerCertificateChain");
 
 function  QSslConfiguration_ciphers(handle:not null QSslConfigurationH) return QSslCipherListH;
 pragma Import(C,QSslConfiguration_ciphers, "QSslConfiguration_ciphers");
 
 procedure QSslConfiguration_setCiphers(handle:not null QSslConfigurationH;ciphers:QSslCipherListH);
 pragma Import(C,QSslConfiguration_setCiphers, "QSslConfiguration_setCiphers");
 
 function  QSslConfiguration_caCertificates(handle:not null QSslConfigurationH) return QSslCertificateListH;
 pragma Import(C,QSslConfiguration_caCertificates, "QSslConfiguration_caCertificates");
 
 procedure QSslConfiguration_setCaCertificates(handle:not null QSslConfigurationH; certificates:QSslCertificateListH);
 pragma Import(C,QSslConfiguration_setCaCertificates, "QSslConfiguration_setCaCertificates");
 
 procedure QSslConfiguration_setSslOption(handle:not null QSslConfigurationH;option:Qt.QSsl.SslOption;isSet:boolean);
 pragma Import(C,QSslConfiguration_setSslOption, "QSslConfiguration_setSslOption");
 
 function  QSslConfiguration_testSslOption(handle:not null QSslConfigurationH;option:Qt.QSsl.SslOption) return boolean;
 pragma Import(C,QSslConfiguration_testSslOption, "QSslConfiguration_testSslOption");
 
 function  QSslConfiguration_sessionTicket(handle:not null QSslConfigurationH) return QByteArrayH;
 pragma Import(C,QSslConfiguration_sessionTicket, "QSslConfiguration_sessionTicket");
 
 procedure QSslConfiguration_setSessionTicket(handle:not null QSslConfigurationH;sessionTicket:QByteArrayH);
 pragma Import(C,QSslConfiguration_setSessionTicket, "QSslConfiguration_setSessionTicket");
 
 function  QSslConfiguration_sessionTicketLifeTimeHint(handle:not null QSslConfigurationH) return integer;
 pragma Import(C,QSslConfiguration_sessionTicketLifeTimeHint, "QSslConfiguration_sessionTicketLifeTimeHint");
 
 procedure QSslConfiguration_setAllowedNextProtocols(handle:not null QSslConfigurationH;protocols:QByteArrayListH);
 pragma Import(C,QSslConfiguration_setAllowedNextProtocols, "QSslConfiguration_setAllowedNextProtocols");
 
 function  QSslConfiguration_allowedNextProtocols(handle:not null QSslConfigurationH) return QByteArrayListH;
 pragma Import(C,QSslConfiguration_allowedNextProtocols, "QSslConfiguration_allowedNextProtocols");
 
 function  QSslConfiguration_nextNegotiatedProtocol(handle:not null QSslConfigurationH) return QByteArrayH;
 pragma Import(C,QSslConfiguration_nextNegotiatedProtocol, "QSslConfiguration_nextNegotiatedProtocol");
 
 function  QSslConfiguration_nextProtocolNegotiationStatus(handle:not null QSslConfigurationH) return NextProtocolNegotiationStatus;
 pragma Import(C,QSslConfiguration_nextProtocolNegotiationStatus, "QSslConfiguration_nextProtocolNegotiationStatus");
 
 function  QSslConfiguration_NextProtocolSpdy3_0 return QByteArrayH;
 pragma Import(C,QSslConfiguration_NextProtocolSpdy3_0, "QSslConfiguration_NextProtocolSpdy3_0");
 
 function  QSslConfiguration_NextProtocolHttp1_1 return QByteArrayH;
 pragma Import(C,QSslConfiguration_NextProtocolHttp1_1, "QSslConfiguration_NextProtocolHttp1_1");
 
-----------------------------------------------------------------------
 function  QSslConfiguration_equal(handle:not null QSslConfigurationH;other:QSslConfigurationH) return boolean;
 pragma Import(C,QSslConfiguration_equal, "QSslConfiguration_equal");
 
 function  QSslConfiguration_notEqual(handle:not null QSslConfigurationH;other:QSslConfigurationH) return boolean;
 pragma Import(C,QSslConfiguration_notEqual, "QSslConfiguration_notEqual");
 
 function  QSslConfiguration_sessionProtocol(handle:not null QSslConfigurationH) return Qt.QSsl.SslProtocol;
 pragma Import(C,QSslConfiguration_sessionProtocol, "QSslConfiguration_sessionProtocol");
 
 function  QSslConfiguration_ephemeralServerKey(handle:not null QSslConfigurationH) return QSslKeyH;
 pragma Import(C,QSslConfiguration_ephemeralServerKey, "QSslConfiguration_ephemeralServerKey");
 
 function  QSslConfiguration_ellipticCurves(handle:not null QSslConfigurationH) return QVectorH;
 pragma Import(C,QSslConfiguration_ellipticCurves, "QSslConfiguration_ellipticCurves");
 
 procedure QSslConfiguration_setEllipticCurves(handle:not null QSslConfigurationH;curves:QVectorH);
 pragma Import(C,QSslConfiguration_setEllipticCurves, "QSslConfiguration_setEllipticCurves");
 
 function  QSslConfiguration_preSharedKeyIdentityHint(handle:not null QSslConfigurationH) return zstring;
 pragma Import(C,QSslConfiguration_preSharedKeyIdentityHint, "QSslConfiguration_preSharedKeyIdentityHint");
 
 procedure QSslConfiguration_setPreSharedKeyIdentityHint(handle:not null QSslConfigurationH;hint:zstring);
 pragma Import(C,QSslConfiguration_setPreSharedKeyIdentityHint, "QSslConfiguration_setPreSharedKeyIdentityHint");
 
 procedure QSslConfiguration_setDiffieHellmanParameters(handle:not null QSslConfigurationH;dhparams:QObjectH);
 pragma Import(C,QSslConfiguration_setDiffieHellmanParameters, "QSslConfiguration_setDiffieHellmanParameters");
 
 function  QSslConfiguration_supportedCiphers return QObjectListH;
 pragma Import(C,QSslConfiguration_supportedCiphers, "QSslConfiguration_supportedCiphers");
 
 function  QSslConfiguration_systemCaCertificates return QObjectListH;
 pragma Import(C,QSslConfiguration_systemCaCertificates, "QSslConfiguration_systemCaCertificates");
 
 function  QSslConfiguration_supportedEllipticCurves return QVectorH;
 pragma Import(C,QSslConfiguration_supportedEllipticCurves, "QSslConfiguration_supportedEllipticCurves");
 
 function  QSslConfiguration_ALPNProtocolHTTP2 return QByteArrayH;
 pragma Import(C,QSslConfiguration_ALPNProtocolHTTP2, "QSslConfiguration_ALPNProtocolHTTP2");

 function  QSslConfiguration_backendConfiguration(handle:not null QSslConfigurationH) return QObjectMapH;
 pragma Import(C,QSslConfiguration_backendConfiguration, "QSslConfiguration_backendConfiguration");
 
 procedure QSslConfiguration_setBackendConfigurationOption(handle:not null QSslConfigurationH;name: QByteArrayH;value: QVariantH);
 pragma Import(C,QSslConfiguration_setBackendConfigurationOption, "QSslConfiguration_setBackendConfigurationOption");
 
 procedure QSslConfiguration_setBackendConfiguration(handle:not null QSslConfigurationH; backendConfiguration : QObjectMapH :=  QObjectMap_create);
 pragma Import(C,QSslConfiguration_setBackendConfiguration, "QSslConfiguration_setBackendConfiguration");
 
end;
