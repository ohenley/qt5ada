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

with Qt.QPlaceContent; use Qt.QPlaceContent;
package Qt.QPlaceContentRequest is

 function  QPlaceContentRequest_create return QPlaceContentRequestH;
 pragma Import(C,QPlaceContentRequest_create, "QPlaceContentRequest_create");
 
 function  QPlaceContentRequest_create2(otherRequest:QPlaceContentRequestH) return QPlaceContentRequestH;
 pragma Import(C,QPlaceContentRequest_create2, "QPlaceContentRequest_create2");
 
 procedure QPlaceContentRequest_delete(handle:not null QPlaceContentRequestH);
 pragma Import(C,QPlaceContentRequest_delete, "QPlaceContentRequest_delete");
 
 procedure QPlaceContentRequest_clear(handle:not null QPlaceContentRequestH);
 pragma Import(C,QPlaceContentRequest_clear, "QPlaceContentRequest_clear");
 
 function  QPlaceContentRequest_contentType(handle:not null QPlaceContentRequestH) return QPlaceContentType;
 pragma Import(C,QPlaceContentRequest_contentType, "QPlaceContentRequest_contentType");
 
 procedure QPlaceContentRequest_setContentType(handle:not null QPlaceContentRequestH;contentType:QPlaceContentType);
 pragma Import(C,QPlaceContentRequest_setContentType, "QPlaceContentRequest_setContentType");
 
 function  QPlaceContentRequest_placeId(handle:not null QPlaceContentRequestH) return QStringH;
 pragma Import(C,QPlaceContentRequest_placeId, "QPlaceContentRequest_placeId");
 
 procedure QPlaceContentRequest_setPlaceId(handle:not null QPlaceContentRequestH;identifier:QStringH);
 pragma Import(C,QPlaceContentRequest_setPlaceId, "QPlaceContentRequest_setPlaceId");
 
 function  QPlaceContentRequest_contentContext(handle:not null QPlaceContentRequestH) return QVariantH;
 pragma Import(C,QPlaceContentRequest_contentContext, "QPlaceContentRequest_contentContext");
 
 procedure QPlaceContentRequest_setContentContext(handle:not null QPlaceContentRequestH;context:QVariantH);
 pragma Import(C,QPlaceContentRequest_setContentContext, "QPlaceContentRequest_setContentContext");
 
 function  QPlaceContentRequest_limit(handle:not null QPlaceContentRequestH) return integer;
 pragma Import(C,QPlaceContentRequest_limit, "QPlaceContentRequest_limit");
 
 procedure QPlaceContentRequest_setLimit(handle:not null QPlaceContentRequestH;limit:integer);
 pragma Import(C,QPlaceContentRequest_setLimit, "QPlaceContentRequest_setLimit");
 
 function  QPlaceContentRequest_isEqual(handle,otherRequest:QPlaceContentRequestH) return boolean;
 pragma Import(C,QPlaceContentRequest_isEqual, "QPlaceContentRequest_isEqual");
 
 function  QPlaceContentRequest_create(otherRequest:QPlaceContentRequestH) return QPlaceContentRequestH;

end;
