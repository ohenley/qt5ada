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

package body Qt.QSslSocket is

 procedure QSslSocket_connectToHostEncrypted(handle:not null QSslSocketH;hostName:QStringH; port:quint16;sslPeerName:QStringH ; mode:QIODeviceOpenMode := QIODeviceReadWrite; protocol:Qt.QAbstractSocket.QtNetworkLayerProtocol  := AnyIPProtocol) is
 begin
   QSslSocket_connectToHostEncrypted2(handle,hostName,port,sslPeerName, mode, protocol);
 end;

 procedure QSslSocket_setLocalCertificate(handle:not null QSslSocketH;fileName: QStringH;format: Qt.QSsl.EncodingFormat) is
 begin
  QSslSocket_setLocalCertificate2(handle,fileName,format);
 end;

 procedure QSslSocket_setPrivateKey(handle:not null QSslSocketH;fileName: QStringH;algorithm: Qt.QSsl.KeyAlgorithm ;format: Qt.QSsl.EncodingFormat;passPhrase :QByteArrayH ) is
 begin
  QSslSocket_setPrivateKey2(handle,fileName,algorithm,format,passPhrase);
 end;

 procedure QSslSocket_setCiphers(handle:not null QSslSocketH;ciphers: QSslCipherListH) is
 begin
  QSslSocket_setCiphers2(handle,ciphers);
 end;

 procedure QSslSocket_addCaCertificates(handle:not null QSslSocketH;certificates: QSslCertificateListH) is
 begin
   QSslSocket_addCaCertificates2(handle,certificates);
 end;

 procedure QSslSocket_ignoreSslErrors(handle:not null QSslSocketH;errors: QSslErrorListH) is
 begin
   QSslSocket_ignoreSslErrors2(handle,errors);
 end;

 procedure QSslSocket_addDefaultCaCertificates(certificates:QSslCertificateListH) is
 begin
  QSslSocket_addDefaultCaCertificates2(certificates);
 end;

end;
