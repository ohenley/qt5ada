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

with Qt.QPlaceReply;   use Qt.QPlaceReply;
package Qt.QPlaceMatchReply is

 function  QPlaceMatchReply_create(parent:QObjectH := Null) return QPlaceReplyH;
 pragma Import(C,QPlaceMatchReply_create, "QPlaceMatchReply_create");
 
 procedure QPlaceMatchReply_delete(handle:not null QPlaceReplyH);
 pragma Import(C,QPlaceMatchReply_delete, "QPlaceMatchReply_delete");
 
 function  QPlaceMatchReply_type(handle:not null QPlaceReplyH) return QPlaceReplyType;
 pragma Import(C,QPlaceMatchReply_type, "QPlaceMatchReply_type");
 
 function  QPlaceMatchReply_places(handle:not null QPlaceReplyH) return QObjectListH;
 pragma Import(C,QPlaceMatchReply_places, "QPlaceMatchReply_places");
 
 function  QPlaceMatchReply_request(handle:not null QPlaceReplyH) return QPlaceMatchRequestH;
 pragma Import(C,QPlaceMatchReply_request, "QPlaceMatchReply_request");
 
 procedure QPlaceMatchReply_setPlaces(handle:not null QPlaceReplyH;results:QObjectListH);
 pragma Import(C,QPlaceMatchReply_setPlaces, "QPlaceMatchReply_setPlaces");
 
 procedure QPlaceMatchReply_setRequest(handle:not null QPlaceReplyH;request:QPlaceMatchRequestH);
 pragma Import(C,QPlaceMatchReply_setRequest, "QPlaceMatchReply_setRequest");
 
end;
