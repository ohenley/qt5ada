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

package Qt.QPlaceSearchResult is

 type QPlaceSearchResultSearchResultType is (UnknownSearchResult,PlaceResult,ProposedSearchResult);
 pragma convention(C,QPlaceSearchResultSearchResultType);

 function  QPlaceSearchResult_create return QPlaceSearchResultH;
 pragma Import(C,QPlaceSearchResult_create, "QPlaceSearchResult_create");
 
 function  QPlaceSearchResult_create2(otherResult:QPlaceSearchResultH) return QPlaceSearchResultH;
 pragma Import(C,QPlaceSearchResult_create2, "QPlaceSearchResult_create2");
 
 procedure QPlaceSearchResult_delete(handle:not null QPlaceSearchResultH);
 pragma Import(C,QPlaceSearchResult_delete, "QPlaceSearchResult_delete");
 
 function  QPlaceSearchResult_type(handle:not null QPlaceSearchResultH) return QPlaceSearchResultSearchResultType;
 pragma Import(C,QPlaceSearchResult_type, "QPlaceSearchResult_type");
 
 function  QPlaceSearchResult_title(handle:not null QPlaceSearchResultH) return QStringH;
 pragma Import(C,QPlaceSearchResult_title, "QPlaceSearchResult_title");
 
 procedure QPlaceSearchResult_setTitle(handle:not null QPlaceSearchResultH;title:QStringH);
 pragma Import(C,QPlaceSearchResult_setTitle, "QPlaceSearchResult_setTitle");
 
 function  QPlaceSearchResult_icon(handle:not null QPlaceSearchResultH) return QPlaceIconH;
 pragma Import(C,QPlaceSearchResult_icon, "QPlaceSearchResult_icon");
 
 procedure QPlaceSearchResult_setIcon(handle:not null QPlaceSearchResultH;icon:QPlaceIconH);
 pragma Import(C,QPlaceSearchResult_setIcon, "QPlaceSearchResult_setIcon");
 
 function  QPlaceSearchResult_isEqual(handle,otherResult:not null QPlaceSearchResultH) return boolean;
 pragma Import(C,QPlaceSearchResult_isEqual, "QPlaceSearchResult_isEqual");
 
 function  QPlaceResult_create return QPlaceSearchResultH;
 pragma Import(C,QPlaceResult_create, "QPlaceResult_create");
 
 function  QPlaceResult_create2(otherResult:QPlaceSearchResultH) return QPlaceSearchResultH;
 pragma Import(C,QPlaceResult_create2, "QPlaceResult_create2");
 
 procedure QPlaceResult_delete(handle:not null QPlaceSearchResultH);
 pragma Import(C,QPlaceResult_delete, "QPlaceResult_delete");
 
 function  QPlaceResult_distance(handle:not null QPlaceSearchResultH) return qreal;
 pragma Import(C,QPlaceResult_distance, "QPlaceResult_distance");
 
 procedure QPlaceResult_setDistance(handle:not null QPlaceSearchResultH; distance:qreal);
 pragma Import(C,QPlaceResult_setDistance, "QPlaceResult_setDistance");
 
 function  QPlaceResult_place(handle:not null QPlaceSearchResultH) return QPlaceH;
 pragma Import(C,QPlaceResult_place, "QPlaceResult_place");
 
 procedure QPlaceResult_setPlace(handle:not null QPlaceSearchResultH;place:QPlaceH);
 pragma Import(C,QPlaceResult_setPlace, "QPlaceResult_setPlace");
 
 function  QPlaceResult_isSponsored(handle:not null QPlaceSearchResultH) return boolean;
 pragma Import(C,QPlaceResult_isSponsored, "QPlaceResult_isSponsored");
 
 procedure QPlaceResult_setSponsored(handle:not null QPlaceSearchResultH;sponsored:boolean);
 pragma Import(C,QPlaceResult_setSponsored, "QPlaceResult_setSponsored");

 function  QPlaceProposedSearchResult_create return QPlaceSearchResultH;
 pragma Import(C,QPlaceProposedSearchResult_create, "QPlaceProposedSearchResult_create");
 
 function  QPlaceProposedSearchResult_create2(otherResult:QPlaceSearchResultH) return QPlaceSearchResultH;
 pragma Import(C,QPlaceProposedSearchResult_create2, "QPlaceProposedSearchResult_create2");
 
 procedure QPlaceProposedSearchResult_delete(handle:not null QPlaceSearchResultH);
 pragma Import(C,QPlaceProposedSearchResult_delete, "QPlaceProposedSearchResult_delete");
 
 procedure QPlaceProposedSearchResult_setSearchRequest(handle:not null QPlaceSearchResultH;request:QPlaceSearchRequestH);
 pragma Import(C,QPlaceProposedSearchResult_setSearchRequest, "QPlaceProposedSearchResult_setSearchRequest");
 
 function  QPlaceProposedSearchResult_searchRequest(handle:not null QPlaceSearchResultH) return QPlaceSearchRequestH ;
 pragma Import(C,QPlaceProposedSearchResult_searchRequest, "QPlaceProposedSearchResult_searchRequest");
 
-------------------------------------------------------------------
 function  QPlaceSearchResult_create(otherResult:QPlaceSearchResultH) return QPlaceSearchResultH;
 function  QPlaceResult_create(otherResult:QPlaceSearchResultH) return QPlaceSearchResultH;
 function  QPlaceProposedSearchResult_create(otherResult:QPlaceSearchResultH) return QPlaceSearchResultH;

end;
