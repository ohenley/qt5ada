--
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

package Qt.QSslError is

 subtype SslError  is integer range -1 .. 24;
  NoError                             : constant :=  0;
  UnableToGetIssuerCertificate        : constant :=  1;
  UnableToDecryptCertificateSignature : constant :=  2;
  UnableToDecodeIssuerPublicKey       : constant :=  3;
  CertificateSignatureFailed          : constant :=  4;
  CertificateNotYetValid              : constant :=  5;
  CertificateExpired                  : constant :=  6;
  InvalidNotBeforeField               : constant :=  7;
  InvalidNotAfterField                : constant :=  8;
  SelfSignedCertificate               : constant :=  9;
  SelfSignedCertificateInChain        : constant := 10;
  UnableToGetLocalIssuerCertificate   : constant := 11;
  UnableToVerifyFirstCertificate      : constant := 12;
  CertificateRevoked                  : constant := 13;
  InvalidCaCertificate                : constant := 14;
  PathLengthExceeded                  : constant := 15;
  InvalidPurpose                      : constant := 16;
  CertificateUntrusted                : constant := 17;
  CertificateRejected                 : constant := 18;
  SubjectIssuerMismatch               : constant := 19; -- hostname mismatch?
  AuthorityIssuerSerialNumberMismatch : constant := 20;
  NoPeerCertificate                   : constant := 21;
  HostNameMismatch                    : constant := 22;
  NoSslSupport                        : constant := 23;
  CertificateBlacklisted              : constant := 24;
  UnspecifiedError                    : constant := -1;

 function  QSslError_create(error:SslError;  certificate:QSslCertificateH) return QSslErrorH;
 pragma Import(C,QSslError_create, "QSslError_create");
 
 function  QSslError_create2(error:SslError) return QSslErrorH;
 pragma Import(C,QSslError_create2, "QSslError_create2");
 
 function  QSslError_create3(otherError:QSslErrorH) return QSslErrorH;
 pragma Import(C,QSslError_create3, "QSslError_create3");
 
 function  QSslError_create4 return QSslErrorH;
 pragma Import(C,QSslError_create4, "QSslError_create4");
 
 procedure QSslError_destroy(handle: not null QSslErrorH);
 pragma Import(C,QSslError_destroy, "QSslError_destroy");
 
 function  QSslError_error(handle: not null QSslErrorH) return SslError;
 pragma Import(C,QSslError_error, "QSslError_error");
 
 function  QSslError_errorString(handle: not null QSslErrorH) return QStringH ;
 pragma Import(C,QSslError_errorString, "QSslError_errorString");
 
 function  QSslError_certificate(handle: not null QSslErrorH) return QSslCertificateH;
 pragma Import(C,QSslError_certificate, "QSslError_certificate");
 
---------------------------------------------------------------------
 function  QSslError_create(error:SslError) return QSslErrorH;
 function  QSslError_create(otherError:QSslErrorH) return QSslErrorH;
 function  QSslError_create return QSslErrorH;

end;
