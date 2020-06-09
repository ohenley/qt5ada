--
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

package Qt.QWebEngineCertificateError is

 SslPinnedKeyNotInCertificateChain  : constant := -150;
 CertificateCommonNameInvalid       : constant := -200;
 CertificateDateInvalid             : constant := -201;
 CertificateAuthorityInvalid        : constant := -202;
 CertificateContainsErrors          : constant := -203;
 CertificateNoRevocationMechanism   : constant := -204;
 CertificateUnableToCheckRevocation : constant := -205;
 CertificateRevoked                 : constant := -206;
 CertificateInvalid                 : constant := -207;
 CertificateWeakSignatureAlgorithm  : constant := -208;
 CertificateNonUniqueName           : constant := -210;
 CertificateWeakKey                 : constant := -211;
 CertificateNameConstraintViolation : constant := -212;

 function  QWebEngineCertificateError_create(error:integer;url:QUrlH; overridable:boolean;errorDescription:QStringH) return QWebCertificateErrorH;
 pragma Import(C,QWebEngineCertificateError_create, "QWebEngineCertificateError_create");
 
 procedure QWebEngineCertificateError_delete(handle:not null QWebCertificateErrorH);
 pragma Import(C,QWebEngineCertificateError_delete, "QWebEngineCertificateError_delete");
 
 function  QWebEngineCertificateError_error(handle:not null QWebCertificateErrorH) return integer;
 pragma Import(C,QWebEngineCertificateError_error, "QWebEngineCertificateError_error");
 
 function  QWebEngineCertificateError_url(handle:not null QWebCertificateErrorH) return QUrlH;
 pragma Import(C,QWebEngineCertificateError_url, "QWebEngineCertificateError_url");
 
 function  QWebEngineCertificateError_isOverridable(handle:not null QWebCertificateErrorH) return boolean;
 pragma Import(C,QWebEngineCertificateError_isOverridable, "QWebEngineCertificateError_isOverridable");
 
 function  QWebEngineCertificateError_errorDescription(handle:not null QWebCertificateErrorH) return QStringH;
 pragma Import(C,QWebEngineCertificateError_errorDescription, "QWebEngineCertificateError_errorDescription");
 
end;
