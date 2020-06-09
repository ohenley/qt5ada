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

package body Qt.QSslCipher is

 function  QSslCipher_create(name:QStringH; protocol :Qt.QSsl.SslProtocol) return QSslCipherH is
 begin
  return  QSslCipher_create2(name,protocol);
 end;

 function  QSslCipher_create(otherCipher:QSslCipherH) return QSslCipherH is
 begin
   return  QSslCipher_create3(otherCipher);
 end;

 function  QSslCipher_crearte(name:QStringH) return QSslCipherH is
 begin
   return  QSslCipher_crearte4(name);
 end;
 
end;
