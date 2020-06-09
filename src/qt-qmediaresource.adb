--
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

package body Qt.QMediaResource is

 function  QMediaResource_create(url:QUrlH;mimeType:QStringH := QString_create) return QMediaResourceH is
 begin
   return  QMediaResource_create2(url,mimeType);
 end;

 function  QMediaResource_create(request:QNetworkRequestH;mimeType:QStringH := QString_create) return QMediaResourceH  is
 begin
   return  QMediaResource_create3(request,mimeType);
 end;

 function  QMediaResource_create(other: not null QMediaResourceH) return QMediaResourceH is
 begin
   return  QMediaResource_create4(other);
 end;

 procedure QMediaResource_setResolution(handle: not null QMediaResourceH;resolution:QSizeH) is
 begin
  QMediaResource_setResolution2(handle,resolution);
 end;

end;
