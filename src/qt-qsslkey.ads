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

with Qt.QSsl;
package Qt.QSslKey is

 function  QSslKey_create return QSslKeyH;
 pragma Import(C,QSslKey_create, "QSslKey_create");
 
 function  QSslKey_create2(encoded:QByteArrayH; algorithm:Qt.QSsl.KeyAlgorithm; format:Qt.QSsl.EncodingFormat;keyTp:Qt.QSsl.KeyType; passPhrase:QByteArrayH) return QSslKeyH;
 pragma Import(C,QSslKey_create2, "QSslKey_create2");
 
 function  QSslKey_create3(device:QIODeviceH; algorithm:Qt.QSsl.KeyAlgorithm; format:Qt.QSsl.EncodingFormat;keyTp: Qt.QSsl.KeyType; passPhrase:QByteArrayH) return QSslKeyH;
 pragma Import(C,QSslKey_create3, "QSslKey_create3");
 
 function  QSslKey_create4(otherKey: QSslKeyH) return QSslKeyH;
 pragma Import(C,QSslKey_create4, "QSslKey_create4");
 
 procedure QSslKey_destroy(handle:not null QSslKeyH);
 pragma Import(C,QSslKey_destroy, "QSslKey_destroy");
 
 function  QSslKey_isNull(handle:not null QSslKeyH) return boolean;
 pragma Import(C,QSslKey_isNull, "QSslKey_isNull");
 
 procedure QSslKey_clear(handle:not null QSslKeyH);
 pragma Import(C,QSslKey_clear, "QSslKey_clear");
 
 function  QSslKey_length(handle:not null QSslKeyH) return integer;
 pragma Import(C,QSslKey_length, "QSslKey_length");
 
 function  QSslKey_type(handle:not null QSslKeyH) return Qt.QSsl.KeyType;
 pragma Import(C,QSslKey_type, "QSslKey_type");
 
 function  QSslKey_algorithm(handle:not null QSslKeyH) return Qt.QSsl.KeyAlgorithm;
 pragma Import(C,QSslKey_algorithm, "QSslKey_algorithm");
 
 function  QSslKey_toPem(handle:not null QSslKeyH; passPhrase:QByteArrayH) return QByteArrayH;
 pragma Import(C,QSslKey_toPem, "QSslKey_toPem");
 
 function  QSslKey_toDer(handle:not null QSslKeyH; passPhrase:QByteArrayH) return QByteArrayH;
 pragma Import(C,QSslKey_toDer, "QSslKey_toDer");
 
 function  QSslKey_handle(handle:not null QSslKeyH) return QtHANDLE;
 pragma Import(C,QSslKey_handle, "QSslKey_handle");
 
 procedure QSslKey_swap(handle,otherKey:not null QSslKeyH);
 pragma Import(C,QSslKey_swap, "QSslKey_swap");
 
---------------------------------------------------------------
 function  QSslKey_create(encoded:QByteArrayH; algorithm:Qt.QSsl.KeyAlgorithm; format:Qt.QSsl.EncodingFormat;keyTp:Qt.QSsl.KeyType; passPhrase:QByteArrayH) return QSslKeyH;
 function  QSslKey_create(device:QIODeviceH; algorithm:Qt.QSsl.KeyAlgorithm; format:Qt.QSsl.EncodingFormat;keyTp: Qt.QSsl.KeyType; passPhrase:QByteArrayH) return QSslKeyH;
 function  QSslKey_create(otherKey: QSslKeyH) return QSslKeyH;

end;
