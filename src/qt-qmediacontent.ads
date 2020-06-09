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

with Qt.QUrl; use Qt.QUrl;
package Qt.QMediaContent is

 function  QMediaContent_create return QMediaContentH ;
 pragma Import(C,QMediaContent_create, "QMediaContent_create");
 
 function  QMediaContent_create2(contentUrl: QUrlH) return QMediaContentH;
 pragma Import(C,QMediaContent_create2, "QMediaContent_create2");
 
 function  QMediaContent_create3(contentRequest:QNetworkRequestH) return QMediaContentH;
 pragma Import(C,QMediaContent_create3, "QMediaContent_create3");
 
 function  QMediaContent_create4(contentResource:QMediaResourceH) return QMediaContentH;
 pragma Import(C,QMediaContent_create4, "QMediaContent_create4");
 
 function  QMediaContent_create5(resources:QMediaResourceListH) return QMediaContentH;
 pragma Import(C,QMediaContent_create5, "QMediaContent_create5");
 
 function  QMediaContent_create6(otherContenet:QMediaContentH) return QMediaContentH;
 pragma Import(C,QMediaContent_create6, "QMediaContent_create6");
 
 function  QMediaContent_create7(playlist:QMediaPlaylistH; contentUrl:QUrlH := QUrl_create;takeOwnership: boolean := false) return QMediaContentH ;
 pragma Import(C,QMediaContent_create7, "QMediaContent_create7");
 
 procedure QMediaContent_destroy(handle: not null QMediaContentH);
 pragma Import(C,QMediaContent_destroy, "QMediaContent_destroy");
 
 function  QMediaContent_isNull(handle: not null QMediaContentH) return boolean;
 pragma Import(C,QMediaContent_isNull, "QMediaContent_isNull");
 
 function  QMediaContent_canonicalUrl(handle: not null QMediaContentH) return QUrlH;
 pragma Import(C,QMediaContent_canonicalUrl, "QMediaContent_canonicalUrl");
 
 function  QMediaContent_canonicalRequest(handle: not null QMediaContentH) return QNetworkRequestH;
 pragma Import(C,QMediaContent_canonicalRequest, "QMediaContent_canonicalRequest");
 
 function  QMediaContent_canonicalResource(handle: not null QMediaContentH) return QMediaResourceH;
 pragma Import(C,QMediaContent_canonicalResource, "QMediaContent_canonicalResource");
 
 function  QMediaContent_resources(handle: not null QMediaContentH) return QMediaResourceListH;
 pragma Import(C,QMediaContent_resources, "QMediaContent_resources");
 
 function  QMediaContent_playlist(handle: not null QMediaContentH) return QMediaPlaylistH;
 pragma Import(C,QMediaContent_playlist, "QMediaContent_playlist");
 
-------------------------------------------------------------------------------------------------------
 function  QMediaContent_create(contentUrl: QUrlH) return QMediaContentH;
 function  QMediaContent_create(contentRequest:QNetworkRequestH) return QMediaContentH;
 function  QMediaContent_create(contentResource:QMediaResourceH) return QMediaContentH;
 function  QMediaContent_create(resources:QMediaResourceListH) return QMediaContentH;
 function  QMediaContent_create(otherContenet:QMediaContentH) return QMediaContentH;
 function  QMediaContent_create(playlist:QMediaPlaylistH; contentUrl:QUrlH := QUrl_create;takeOwnership: boolean := false) return QMediaContentH;

end;
