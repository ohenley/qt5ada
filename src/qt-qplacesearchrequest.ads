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

with Qt.QLocation; use Qt.QLocation;
package Qt.QPlaceSearchRequest is

 type QPlaceSearchRequestRelevanceHint is (UnspecifiedHint,DistanceHint,LexicalPlaceNameHint);
 pragma convention(C,QPlaceSearchRequestRelevanceHint);

 function  QPlaceSearchRequest_create return QPlaceSearchRequestH;
 pragma Import(C,QPlaceSearchRequest_create, "QPlaceSearchRequest_create");
 
 function  QPlaceSearchRequest_create2(otherRequest:QPlaceSearchRequestH) return QPlaceSearchRequestH;
 pragma Import(C,QPlaceSearchRequest_create2, "QPlaceSearchRequest_create2");
 
 procedure QPlaceSearchRequest_delete(handle:not null QPlaceSearchRequestH);
 pragma Import(C,QPlaceSearchRequest_delete, "QPlaceSearchRequest_delete");
 
 procedure QPlaceSearchRequest_clear(handle:not null QPlaceSearchRequestH);
 pragma Import(C,QPlaceSearchRequest_clear, "QPlaceSearchRequest_clear");
 
 function  QPlaceSearchRequest_searchTerm(handle:not null QPlaceSearchRequestH) return QStringH;
 pragma Import(C,QPlaceSearchRequest_searchTerm, "QPlaceSearchRequest_searchTerm");
 
 procedure QPlaceSearchRequest_setSearchTerm(handle:not null QPlaceSearchRequestH;term:QStringH);
 pragma Import(C,QPlaceSearchRequest_setSearchTerm, "QPlaceSearchRequest_setSearchTerm");
 
 function  QPlaceSearchRequest_categories(handle:not null QPlaceSearchRequestH) return QObjectListH;
 pragma Import(C,QPlaceSearchRequest_categories, "QPlaceSearchRequest_categories");
 
 procedure QPlaceSearchRequest_setCategory(handle:not null QPlaceSearchRequestH;category:QPlaceCategoryH);
 pragma Import(C,QPlaceSearchRequest_setCategory, "QPlaceSearchRequest_setCategory");
 
 procedure QPlaceSearchRequest_setCategories(handle:not null QPlaceSearchRequestH;categories:QObjectListH);
 pragma Import(C,QPlaceSearchRequest_setCategories, "QPlaceSearchRequest_setCategories");
 
 function  QPlaceSearchRequest_searchArea(handle:not null QPlaceSearchRequestH) return QGeoShapeH;
 pragma Import(C,QPlaceSearchRequest_searchArea, "QPlaceSearchRequest_searchArea");
 
 procedure QPlaceSearchRequest_setSearchArea(handle:not null QPlaceSearchRequestH;area:QGeoShapeH);
 pragma Import(C,QPlaceSearchRequest_setSearchArea, "QPlaceSearchRequest_setSearchArea");
 
 function  QPlaceSearchRequest_recommendationId(handle:not null QPlaceSearchRequestH) return QStringH;
 pragma Import(C,QPlaceSearchRequest_recommendationId, "QPlaceSearchRequest_recommendationId");
 
 procedure QPlaceSearchRequest_setRecommendationId(handle:not null QPlaceSearchRequestH;recommendationId:QStringH);
 pragma Import(C,QPlaceSearchRequest_setRecommendationId, "QPlaceSearchRequest_setRecommendationId");
 
 function  QPlaceSearchRequest_searchContext(handle:not null QPlaceSearchRequestH) return QVariantH;
 pragma Import(C,QPlaceSearchRequest_searchContext, "QPlaceSearchRequest_searchContext");
 
 procedure QPlaceSearchRequest_setSearchContext(handle:not null QPlaceSearchRequestH;context:QVariantH);
 pragma Import(C,QPlaceSearchRequest_setSearchContext, "QPlaceSearchRequest_setSearchContext");
 
 function  QPlaceSearchRequest_visibilityScope(handle:not null QPlaceSearchRequestH) return QLocationVisibility;
 pragma Import(C,QPlaceSearchRequest_visibilityScope, "QPlaceSearchRequest_visibilityScope");
 
 procedure QPlaceSearchRequest_setVisibilityScope(handle:not null QPlaceSearchRequestH;visibilityScopes:QLocationVisibility);
 pragma Import(C,QPlaceSearchRequest_setVisibilityScope, "QPlaceSearchRequest_setVisibilityScope");
 
 function  QPlaceSearchRequest_relevanceHint(handle:not null QPlaceSearchRequestH) return QPlaceSearchRequestRelevanceHint;
 pragma Import(C,QPlaceSearchRequest_relevanceHint, "QPlaceSearchRequest_relevanceHint");
 
 procedure QPlaceSearchRequest_setRelevanceHint(handle:not null QPlaceSearchRequestH;hint:QPlaceSearchRequestRelevanceHint);
 pragma Import(C,QPlaceSearchRequest_setRelevanceHint, "QPlaceSearchRequest_setRelevanceHint");
 
 function  QPlaceSearchRequest_limit(handle:not null QPlaceSearchRequestH) return integer;
 pragma Import(C,QPlaceSearchRequest_limit, "QPlaceSearchRequest_limit");
 
 procedure QPlaceSearchRequest_setLimit(handle:not null QPlaceSearchRequestH;limit:integer);
 pragma Import(C,QPlaceSearchRequest_setLimit, "QPlaceSearchRequest_setLimit");
 
 function  QPlaceSearchRequest_isEqual(handle,otherRequest:not null QPlaceSearchRequestH) return boolean;
 pragma Import(C,QPlaceSearchRequest_isEqual, "QPlaceSearchRequest_isEqual");
 
 function  QPlaceSearchRequest_create(otherRequest:QPlaceSearchRequestH) return QPlaceSearchRequestH;

end;
