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

with Qt.QSsl; use Qt.QSsl;
with Qt.QSslSocket; use Qt.QSslSocket;
with Qt.QRegExp;         use  Qt.QRegExp;     
with Qt.QIODEvice;       use  Qt.QIODevice;
with Qt.QString;         use  Qt.QString;
with Qt.QByteArray;      use  Qt.QByteArray;

package Qt.QSslCertificate is

 type cryptoAlgorithm is (Md4,Md5,Sha1,Sha224,Sha256,Sha384,Sha512,Sha3_224,Sha3_256,Sha3_384,Sha3_512);
 pragma convention(C,cryptoAlgorithm); 

 function  QSslCertificate_create(device:QIODeviceH; format : Qt.QSsl.EncodingFormat := Pem ) return QSslCertificateH;
 pragma Import(C,QSslCertificate_create, "QSslCertificate_create");
 
 function  QSslCertificate_create2(data:QByteArrayH := QByteArray_create;format : Qt.QSsl.EncodingFormat := Pem ) return QSslCertificateH; 
 pragma Import(C,QSslCertificate_create2, "QSslCertificate_create2");
 
 function  QSslCertificate_create3(otheCertificate:QSslCertificateH) return QSslCertificateH;
 pragma Import(C,QSslCertificate_create3, "QSslCertificate_create3");
 
 procedure QSslCertificate_destroy(handle: not null QSslCertificateH);
 pragma Import(C,QSslCertificate_destroy, "QSslCertificate_destroy");
 
 procedure QSslCertificate_swap(handle: not null QSslCertificateH;otheCertificate:QSslCertificateH);
 pragma Import(C,QSslCertificate_swap, "QSslCertificate_swap");
 
 function  QSslCertificate_isNull(handle: not null QSslCertificateH) return boolean;
 pragma Import(C,QSslCertificate_isNull, "QSslCertificate_isNull");
 
 function  QSslCertificate_isBlacklisted(handle: not null QSslCertificateH) return boolean;
 pragma Import(C,QSslCertificate_isBlacklisted, "QSslCertificate_isBlacklisted");
 
 procedure QSslCertificate_clear(handle: not null QSslCertificateH);
 pragma Import(C,QSslCertificate_clear, "QSslCertificate_clear");
 
 function  QSslCertificate_version(handle: not null QSslCertificateH) return QByteArrayH;
 pragma Import(C,QSslCertificate_version, "QSslCertificate_version");
 
 function  QSslCertificate_serialNumber(handle: not null QSslCertificateH) return QByteArrayH;
 pragma Import(C,QSslCertificate_serialNumber, "QSslCertificate_serialNumber");
 
 function  QSslCertificate_digest(handle: not null QSslCertificateH; algorithm:cryptoAlgorithm := Md5) return QByteArrayH;
 pragma Import(C,QSslCertificate_digest, "QSslCertificate_digest");
 
 function  QSslCertificate_issuerInfo(handle: not null QSslCertificateH;info:integer) return QStringListH;
 pragma Import(C,QSslCertificate_issuerInfo, "QSslCertificate_issuerInfo");
 
 function  QSslCertificate_issuerInfo2(handle: not null QSslCertificateH;attribute :QByteArrayH) return QStringListH;
 pragma Import(C,QSslCertificate_issuerInfo2, "QSslCertificate_issuerInfo2");
 
 function  QSslCertificate_subjectInfo(handle: not null QSslCertificateH; info:integer) return QStringListH;
 pragma Import(C,QSslCertificate_subjectInfo, "QSslCertificate_subjectInfo");
 
 function  QSslCertificate_subjectInfo2(handle: not null QSslCertificateH;attribute:QByteArrayH) return QStringListH;
 pragma Import(C,QSslCertificate_subjectInfo2, "QSslCertificate_subjectInfo2");
 
 function  QSslCertificate_subjectInfoAttributes(handle: not null QSslCertificateH) return QByteArrayListH;
 pragma Import(C,QSslCertificate_subjectInfoAttributes, "QSslCertificate_subjectInfoAttributes");
 
 function  QSslCertificate_issuerInfoAttributes(handle: not null QSslCertificateH) return QByteArrayListH;
 pragma Import(C,QSslCertificate_issuerInfoAttributes, "QSslCertificate_issuerInfoAttributes");
 
 function  QSslCertificate_subjectAlternativeNames(handle: not null QSslCertificateH) return QObjectMapH ;
 pragma Import(C,QSslCertificate_subjectAlternativeNames, "QSslCertificate_subjectAlternativeNames");
 
 function  QSslCertificate_effectiveDate(handle: not null QSslCertificateH) return QDateTimeH;
 pragma Import(C,QSslCertificate_effectiveDate, "QSslCertificate_effectiveDate");
 
 function  QSslCertificate_expiryDate(handle: not null QSslCertificateH) return QDateTimeH;
 pragma Import(C,QSslCertificate_expiryDate, "QSslCertificate_expiryDate");
 
 function  QSslCertificate_publicKey(handle: not null QSslCertificateH) return QSslKeyH;
 pragma Import(C,QSslCertificate_publicKey, "QSslCertificate_publicKey");
 
 function  QSslCertificate_extensions(handle: not null QSslCertificateH) return QSslCertificateListH;
 pragma Import(C,QSslCertificate_extensions, "QSslCertificate_extensions");
 
 function  QSslCertificate_toPem(handle: not null QSslCertificateH) return QByteArrayH;
 pragma Import(C,QSslCertificate_toPem, "QSslCertificate_toPem");
 
 function  QSslCertificate_toDer(handle: not null QSslCertificateH) return QByteArrayH;
 pragma Import(C,QSslCertificate_toDer, "QSslCertificate_toDer");
 
 function  QSslCertificate_toText(handle: not null QSslCertificateH) return QStringH;
 pragma Import(C,QSslCertificate_toText, "QSslCertificate_toText");
 
 function  QSslCertificate_handle(handle: not null QSslCertificateH) return qint64;
 pragma Import(C,QSslCertificate_handle, "QSslCertificate_handle");
 
 function  QSslCertificate_fromPath(path:QStringH;format : Qt.QSsl.EncodingFormat := Pem ;syntax:Qt.QRegExp.PatternSyntax := FixedString) return QSslCertificateListH;
 pragma Import(C,QSslCertificate_fromPath, "QSslCertificate_fromPath");
 
 function  QSslCertificate_fromDevice(device:QIODeviceH;format : Qt.QSsl.EncodingFormat := Pem) return QSslCertificateListH;
 pragma Import(C,QSslCertificate_fromDevice, "QSslCertificate_fromDevice");
 
 function QSslCertificate_fromData(data:QByteArrayH; format : Qt.QSsl.EncodingFormat := Pem) return  QSslCertificateListH ;
 pragma Import(C,QSslCertificate_fromData, "QSslCertificate_fromData");
 
 function  QSslCertificate_verify(certificateChain:QSslCertificateListH; hostName: QStringH := QString_create) return QSslCertificateListH;
 pragma Import(C,QSslCertificate_verify, "QSslCertificate_verify");
 
------------------------------------------------------------------------
 function  QSslCertificate_create(data:QByteArrayH := QByteArray_create;format : Qt.QSsl.EncodingFormat := Pem ) return QSslCertificateH; 
 function  QSslCertificate_create(otheCertificate:QSslCertificateH) return QSslCertificateH;
 function  QSslCertificate_issuerInfo(handle: not null QSslCertificateH;attribute :QByteArrayH) return QStringListH;
 function  QSslCertificate_subjectInfo(handle: not null QSslCertificateH;attribute:QByteArrayH) return QStringListH;

end;
