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

package body Qt.QSslCertificate is

 function  QSslCertificate_create(data:QByteArrayH := QByteArray_create;format : Qt.QSsl.EncodingFormat := Pem ) return QSslCertificateH is  
 begin
  return  QSslCertificate_create2(data,format);
 end;

 function  QSslCertificate_create(otheCertificate:QSslCertificateH) return QSslCertificateH is
 begin
  return QSslCertificate_create3(otheCertificate);
 end;

 function  QSslCertificate_issuerInfo(handle: not null QSslCertificateH;attribute :QByteArrayH) return QStringListH is
 begin
  return  QSslCertificate_issuerInfo2(handle,attribute);
 end;

 function  QSslCertificate_subjectInfo(handle: not null QSslCertificateH;attribute:QByteArrayH) return QStringListH is
 begin
  return QSslCertificate_subjectInfo2(handle,attribute);
 end;

end;
