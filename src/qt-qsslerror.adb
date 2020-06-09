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

package body Qt.QSslError is

 function  QSslError_create(error:SslError) return QSslErrorH is
 begin
  return QSslError_create2(error);
 end;

 function  QSslError_create(otherError:QSslErrorH) return QSslErrorH is
 begin
   return  QSslError_create3(otherError);
 end;

 function  QSslError_create return QSslErrorH is
 begin
  return  QSslError_create4;
 end;


end;
