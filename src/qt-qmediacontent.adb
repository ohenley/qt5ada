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

package body Qt.QMediaContent is

 function  QMediaContent_create(contentUrl: QUrlH) return QMediaContentH is
 begin
   return  QMediaContent_create2(contentUrl);
 end;

 function  QMediaContent_create(contentRequest:QNetworkRequestH) return QMediaContentH is
 begin
   return  QMediaContent_create3(contentRequest);
 end;

 function  QMediaContent_create(contentResource:QMediaResourceH) return QMediaContentH is
 begin
   return  QMediaContent_create4(contentResource);
 end;

 function  QMediaContent_create(resources:QMediaResourceListH) return QMediaContentH is
 begin
   return  QMediaContent_create5(resources);
 end;

 function  QMediaContent_create(otherContenet:QMediaContentH) return QMediaContentH is
 begin
   return  QMediaContent_create6(otherContenet);
 end;

 function  QMediaContent_create(playlist:QMediaPlaylistH; contentUrl:QUrlH := QUrl_create;takeOwnership: boolean := false) return QMediaContentH is
 begin
   return  QMediaContent_create7(playlist,contentUrl,takeOwnership);
 end;

end;
