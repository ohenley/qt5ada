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
package Qt.QPlaceSearchReply is

 function  QPlaceSearchReply_create(parent:QObjectH := Null) return QPlaceReplyH;
 pragma Import(C,QPlaceSearchReply_create, "QPlaceSearchReply_create");
 
 procedure QPlaceSearchReply_delete(handle:not null QPlaceReplyH);
 pragma Import(C,QPlaceSearchReply_delete, "QPlaceSearchReply_delete");
 
 function  QPlaceSearchReply_type(handle:not null QPlaceReplyH) return QPlaceReplyType;
 pragma Import(C,QPlaceSearchReply_type, "QPlaceSearchReply_type");
 
 function  QPlaceSearchReply_request(handle:not null QPlaceReplyH) return QPlaceSearchRequestH;
 pragma Import(C,QPlaceSearchReply_request, "QPlaceSearchReply_request");
 
 function  QPlaceSearchReply_results(handle:not null QPlaceReplyH) return QObjectListH;
 pragma Import(C,QPlaceSearchReply_results, "QPlaceSearchReply_results");
 
 function  QPlaceSearchReply_previousPageRequest(handle:not null QPlaceReplyH) return QPlaceSearchRequestH;
 pragma Import(C,QPlaceSearchReply_previousPageRequest, "QPlaceSearchReply_previousPageRequest");
 
 function  QPlaceSearchReply_nextPageRequest(handle:not null QPlaceReplyH) return QPlaceSearchRequestH;
 pragma Import(C,QPlaceSearchReply_nextPageRequest, "QPlaceSearchReply_nextPageRequest");
 
 procedure QPlaceSearchReply_setResults(handle:not null QPlaceReplyH;results:QObjectListH);
 pragma Import(C,QPlaceSearchReply_setResults, "QPlaceSearchReply_setResults");
 
 procedure QPlaceSearchReply_setRequest(handle:not null QPlaceReplyH;request:QPlaceSearchRequestH);
 pragma Import(C,QPlaceSearchReply_setRequest, "QPlaceSearchReply_setRequest");
 
 procedure QPlaceSearchReply_setPreviousPageRequest(handle:not null QPlaceReplyH; previous:QPlaceSearchRequestH);
 pragma Import(C,QPlaceSearchReply_setPreviousPageRequest, "QPlaceSearchReply_setPreviousPageRequest");
 
 procedure QPlaceSearchReply_setNextPageRequest(handle:not null QPlaceReplyH;next:QPlaceSearchRequestH);
 pragma Import(C,QPlaceSearchReply_setNextPageRequest, "QPlaceSearchReply_setNextPageRequest");

 function  QPlaceSearchSuggestionReply_create(parent:QObjectH := Null) return QPlaceReplyH;
 pragma Import(C,QPlaceSearchSuggestionReply_create, "QPlaceSearchSuggestionReply_create");
 
 procedure QPlaceSearchSuggestionReply_delete(handle:not null QPlaceReplyH);
 pragma Import(C,QPlaceSearchSuggestionReply_delete, "QPlaceSearchSuggestionReply_delete");
 
 function  QPlaceSearchSuggestionReply_type(handle:not null QPlaceReplyH) return QPlaceReplyType;
 pragma Import(C,QPlaceSearchSuggestionReply_type, "QPlaceSearchSuggestionReply_type");
 
 function  QPlaceSearchSuggestionReply_suggestions(handle:not null QPlaceReplyH) return QStringListH;
 pragma Import(C,QPlaceSearchSuggestionReply_suggestions, "QPlaceSearchSuggestionReply_suggestions");
 
 procedure QPlaceSearchSuggestionReply_setSuggestions(handle:not null QPlaceReplyH;suggestions:QStringListH);
 pragma Import(C,QPlaceSearchSuggestionReply_setSuggestions, "QPlaceSearchSuggestionReply_setSuggestions");
 
end;
