-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPlaceImage is

 function  QPlaceImage_create return QPlaceImageH;
 pragma Import(C,QPlaceImage_create, "QPlaceImage_create");
 
 function  QPlaceImage_create2(otherContent:QPlaceContentH) return QPlaceImageH;
 pragma Import(C,QPlaceImage_create2, "QPlaceImage_create2");
 
 procedure QPlaceImage_delete(handle:not null QPlaceImageH);
 pragma Import(C,QPlaceImage_delete, "QPlaceImage_delete");
 
 function  QPlaceImage_url(handle:not null QPlaceImageH) return QUrlH;
 pragma Import(C,QPlaceImage_url, "QPlaceImage_url");
 
 procedure QPlaceImage_setUrl(handle:not null QPlaceImageH;url:QUrlH);
 pragma Import(C,QPlaceImage_setUrl, "QPlaceImage_setUrl");
 
 function  QPlaceImage_imageId(handle:not null QPlaceImageH) return QStringH;
 pragma Import(C,QPlaceImage_imageId, "QPlaceImage_imageId");
 
 procedure QPlaceImage_setImageId(handle:not null QPlaceImageH;identifier:QStringH);
 pragma Import(C,QPlaceImage_setImageId, "QPlaceImage_setImageId");
 
 function  QPlaceImage_mimeType(handle:not null QPlaceImageH) return QStringH;
 pragma Import(C,QPlaceImage_mimeType, "QPlaceImage_mimeType");
 
 procedure QPlaceImage_setMimeType(handle:not null QPlaceImageH;data:QStringH);
 pragma Import(C,QPlaceImage_setMimeType, "QPlaceImage_setMimeType");

 function  QPlaceImage_create(otherContent:QPlaceContentH) return QPlaceImageH;

end;
