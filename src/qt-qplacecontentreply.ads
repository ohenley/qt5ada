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
with Qt.QPlaceReply;   use Qt.QPlaceReply;
package Qt.QPlaceContentReply is

 function  QPlaceContentReply_create(parent:QObjectH := Null) return QPlaceReplyH;
 pragma Import(C,QPlaceContentReply_create, "QPlaceContentReply_create");
 
 procedure QPlaceContentReply_delete(handle:not null QPlaceReplyH);
 pragma Import(C,QPlaceContentReply_delete, "QPlaceContentReply_delete");
 
 function  QPlaceContentReply_type(handle:not null QPlaceReplyH) return QPlaceReplyType;
 pragma Import(C,QPlaceContentReply_type, "QPlaceContentReply_type");
 
 function  QPlaceContentReply_content(handle:not null QPlaceReplyH) return QPlaceContentCollectionH;
 pragma Import(C,QPlaceContentReply_content, "QPlaceContentReply_content");
 
 function  QPlaceContentReply_totalCount(handle:not null QPlaceReplyH) return integer;
 pragma Import(C,QPlaceContentReply_totalCount, "QPlaceContentReply_totalCount");
 
 function  QPlaceContentReply_request(handle:not null QPlaceReplyH) return QPlaceContentRequestH;
 pragma Import(C,QPlaceContentReply_request, "QPlaceContentReply_request");
 
 function  QPlaceContentReply_previousPageRequest(handle:not null QPlaceReplyH) return QPlaceContentRequestH;
 pragma Import(C,QPlaceContentReply_previousPageRequest, "QPlaceContentReply_previousPageRequest");
 
 function  QPlaceContentReply_nextPageRequest(handle:not null QPlaceReplyH) return QPlaceContentRequestH;
 pragma Import(C,QPlaceContentReply_nextPageRequest, "QPlaceContentReply_nextPageRequest");
 
 procedure QPlaceContentReply_setContent(handle:not null QPlaceReplyH;contenet:QPlaceContentCollectionH);
 pragma Import(C,QPlaceContentReply_setContent, "QPlaceContentReply_setContent");
 
 procedure QPlaceContentReply_setTotalCount(handle:not null QPlaceReplyH;total:integer);
 pragma Import(C,QPlaceContentReply_setTotalCount, "QPlaceContentReply_setTotalCount");
 
 procedure QPlaceContentReply_setRequest(handle:not null QPlaceReplyH;request:QPlaceContentRequestH);
 pragma Import(C,QPlaceContentReply_setRequest, "QPlaceContentReply_setRequest");
 
 procedure QPlaceContentReply_setPreviousPageRequest(handle:not null QPlaceReplyH;previous:QPlaceContentRequestH);
 pragma Import(C,QPlaceContentReply_setPreviousPageRequest, "QPlaceContentReply_setPreviousPageRequest");
 
 procedure QPlaceContentReply_setNextPageRequest(handle:not null QPlaceReplyH;next:QPlaceContentRequestH);
 pragma Import(C,QPlaceContentReply_setNextPageRequest, "QPlaceContentReply_setNextPageRequest");
 
end;
