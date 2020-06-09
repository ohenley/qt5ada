-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2016                      บ
-- บ Copyright (C) 2014,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QSsl;
package Qt.QSslCipher is

 function  QSslCipher_create return QSslCipherH;
 pragma Import(C,QSslCipher_create, "QSslCipher_create");
 
 function  QSslCipher_create2(name:QStringH; protocol :Qt.QSsl.SslProtocol) return QSslCipherH;
 pragma Import(C,QSslCipher_create2, "QSslCipher_create2");
 
 function  QSslCipher_create3(otherCipher:QSslCipherH) return QSslCipherH;
 pragma Import(C,QSslCipher_create3, "QSslCipher_create3");

 function  QSslCipher_crearte4(name:QStringH) return QSslCipherH;
 pragma Import(C,QSslCipher_crearte4, "QSslCipher_crearte4");
 
 function  QSslCipher_equal(handle : not null QSslCipherH;other: QSslCipherH) return boolean;
 pragma Import(C,QSslCipher_equal, "QSslCipher_equal");
 
 function  QSslCipher_notEqual(handle : not null QSslCipherH;other: QSslCipherH) return boolean;
 pragma Import(C,QSslCipher_notEqual, "QSslCipher_notEqual");
 
 procedure QSslCipher_destroy(handle:not null QSslCipherH);
 pragma Import(C,QSslCipher_destroy, "QSslCipher_destroy");
 
 function  QSslCipher_isNull(handle:not null QSslCipherH) return boolean;
 pragma Import(C,QSslCipher_isNull, "QSslCipher_isNull");
 
 function  QSslCipher_name(handle:not null QSslCipherH) return QStringH;
 pragma Import(C,QSslCipher_name, "QSslCipher_name");
 
 function  QSslCipher_supportedBits(handle:not null QSslCipherH) return integer;
 pragma Import(C,QSslCipher_supportedBits, "QSslCipher_supportedBits");
 
 function  QSslCipher_usedBits(handle:not null QSslCipherH) return integer;
 pragma Import(C,QSslCipher_usedBits, "QSslCipher_usedBits");
 
 function  QSslCipher_keyExchangeMethod(handle:not null QSslCipherH) return QStringH;
 pragma Import(C,QSslCipher_keyExchangeMethod, "QSslCipher_keyExchangeMethod");
 
 function  QSslCipher_authenticationMethod(handle:not null QSslCipherH) return QStringH;
 pragma Import(C,QSslCipher_authenticationMethod, "QSslCipher_authenticationMethod");
 
 function  QSslCipher_encryptionMethod(handle:not null QSslCipherH) return QStringH;
 pragma Import(C,QSslCipher_encryptionMethod, "QSslCipher_encryptionMethod");
 
 function  QSslCipher_protocolString(handle:not null QSslCipherH) return QStringH;
 pragma Import(C,QSslCipher_protocolString, "QSslCipher_protocolString");
 
 function  QSslCipher_protocol(handle:not null QSslCipherH) return Qt.QSsl.SslProtocol;
 pragma Import(C,QSslCipher_protocol, "QSslCipher_protocol");
 
 procedure QSslCipher_swap(handle,otherCipher:QSslCipherH);
 pragma Import(C,QSslCipher_swap, "QSslCipher_swap");

---------------------------------------------------------------------
 function  QSslCipher_create(name:QStringH; protocol :Qt.QSsl.SslProtocol) return QSslCipherH;
 function  QSslCipher_create(otherCipher:QSslCipherH) return QSslCipherH;
 function  QSslCipher_crearte(name:QStringH) return QSslCipherH;
 
end;
