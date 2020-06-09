-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QCryptographicHash is

 type  QCryptographicHashAlgorithm is (Md4,Md5,Sha1,Sha224,Sha256,Sha384,Sha51);
 pragma Convention(C,QCryptographicHashAlgorithm);

 function  QCryptographicHash_create(method:QCryptographicHashAlgorithm) return QCryptographicHashH;
 pragma Import(C,QCryptographicHash_create, "QCryptographicHash_create");

 procedure QCryptographicHash_destroy(handle: not null QCryptographicHashH);
 pragma Import(C,QCryptographicHash_destroy, "QCryptographicHash_destroy");
 
 procedure QCryptographicHash_reset(handle: not null QCryptographicHashH);
 pragma Import(C,QCryptographicHash_reset, "QCryptographicHash_reset");
 
 procedure QCryptographicHash_addData(handle: not null QCryptographicHashH;data: zstring; length:integer);
 pragma Import(C,QCryptographicHash_addData, "QCryptographicHash_addData");
 
 procedure QCryptographicHash_addData2(handle: not null QCryptographicHashH;data:QByteArrayH);
 pragma Import(C,QCryptographicHash_addData2, "QCryptographicHash_addData2");
 
 function  QCryptographicHash_addData3(handle: not null QCryptographicHashH;data:QIODeviceH) return boolean;
 pragma Import(C,QCryptographicHash_addData3, "QCryptographicHash_addData3");
 
 function  QCryptographicHash_result(handle: not null QCryptographicHashH) return QByteArrayH;
 pragma Import(C,QCryptographicHash_result, "QCryptographicHash_result");
 
 function  QCryptographicHash_hash(data:QByteArrayH;method: QCryptographicHashAlgorithm) return QByteArrayH;
 pragma Import(C,QCryptographicHash_hash, "QCryptographicHash_hash");
--------------------------------------------------------------------------------------------------
 procedure QCryptographicHash_addData(handle: not null QCryptographicHashH;data:QByteArrayH);
 function  QCryptographicHash_addData(handle: not null QCryptographicHashH;data:QIODeviceH) return boolean;
end;
