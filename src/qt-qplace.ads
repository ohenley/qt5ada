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
with Qt.QPlaceContent; use Qt.QPlaceContent;
package Qt.QPlace is

 function  QPlace_create return QPlaceH;
 pragma Import(C,QPlace_create, "QPlace_create");
 
 function  QPlace_create2(otherPlace:QPlaceH) return QPlaceH;
 pragma Import(C,QPlace_create2, "QPlace_create2");
 
 procedure QPlace_delete(handle:not null QPlaceH);
 pragma Import(C,QPlace_delete, "QPlace_delete");
 
 function  QPlace_isEmpty(handle:not null QPlaceH) return boolean;
 pragma Import(C,QPlace_isEmpty, "QPlace_isEmpty");
 
 function  QPlace_categories(handle:not null QPlaceH) return QObjectListH;
 pragma Import(C,QPlace_categories, "QPlace_categories");
 
 procedure QPlace_setCategory(handle:not null QPlaceH;category:QPlaceCategoryH);
 pragma Import(C,QPlace_setCategory, "QPlace_setCategory");
 
 procedure QPlace_setCategories(handle:not null QPlaceH;categories:QObjectListH);
 pragma Import(C,QPlace_setCategories, "QPlace_setCategories");
 
 function  QPlace_location(handle:not null QPlaceH) return QGeoLocationH;
 pragma Import(C,QPlace_location, "QPlace_location");
 
 procedure QPlace_setLocation(handle:not null QPlaceH; location:QGeoLocationH);
 pragma Import(C,QPlace_setLocation, "QPlace_setLocation");
 
 function  QPlace_ratings(handle:not null QPlaceH) return QPlaceRatingsH;
 pragma Import(C,QPlace_ratings, "QPlace_ratings");
 
 procedure QPlace_setRatings(handle:not null QPlaceH;ratings:QPlaceRatingsH);
 pragma Import(C,QPlace_setRatings, "QPlace_setRatings");
 
 function  QPlace_supplier(handle:not null QPlaceH) return QPlaceSupplierH;
 pragma Import(C,QPlace_supplier, "QPlace_supplier");
 
 procedure QPlace_setSupplier(handle:not null QPlaceH; supplier:QPlaceSupplierH);
 pragma Import(C,QPlace_setSupplier, "QPlace_setSupplier");
 
 function  QPlace_attribution(handle:not null QPlaceH) return QStringH;
 pragma Import(C,QPlace_attribution, "QPlace_attribution");
 
 procedure QPlace_setAttribution(handle:not null QPlaceH;attribution:QStringH);
 pragma Import(C,QPlace_setAttribution, "QPlace_setAttribution");
 
 function  QPlace_icon(handle:not null QPlaceH) return QPlaceIconH;
 pragma Import(C,QPlace_icon, "QPlace_icon");
 
 procedure QPlace_setIcon(handle:not null QPlaceH;icon:QPlaceIconH);
 pragma Import(C,QPlace_setIcon, "QPlace_setIcon");
 
 function  QPlace_content(handle:not null QPlaceH;contentType:QPlaceContentType) return QPlaceContentCollectionH;
 pragma Import(C,QPlace_content, "QPlace_content");
 
 procedure QPlace_setContent(handle:not null QPlaceH;contentType:QPlaceContentType; content:QPlaceContentCollectionH);
 pragma Import(C,QPlace_setContent, "QPlace_setContent");
 
 procedure QPlace_insertContent(handle:not null QPlaceH;contentType:QPlaceContentType; content:QPlaceContentCollectionH);
 pragma Import(C,QPlace_insertContent, "QPlace_insertContent");
 
 function  QPlace_totalContentCount(handle:not null QPlaceH;contentType:QPlaceContentType) return integer;
 pragma Import(C,QPlace_totalContentCount, "QPlace_totalContentCount");
 
 procedure QPlace_setTotalContentCount(handle:not null QPlaceH;contentType:QPlaceContentType;total:integer);
 pragma Import(C,QPlace_setTotalContentCount, "QPlace_setTotalContentCount");
 
 function  QPlace_name(handle:not null QPlaceH) return QStringH;
 pragma Import(C,QPlace_name, "QPlace_name");
 
 procedure QPlace_setName(handle:not null QPlaceH;name:QStringH);
 pragma Import(C,QPlace_setName, "QPlace_setName");
 
 function  QPlace_placeId(handle:not null QPlaceH) return QStringH;
 pragma Import(C,QPlace_placeId, "QPlace_placeId");
 
 procedure QPlace_setPlaceId(handle:not null QPlaceH;identifier:QStringH);
 pragma Import(C,QPlace_setPlaceId, "QPlace_setPlaceId");
 
 function  QPlace_primaryPhone(handle:not null QPlaceH) return QStringH;
 pragma Import(C,QPlace_primaryPhone, "QPlace_primaryPhone");
 
 function  QPlace_primaryFax(handle:not null QPlaceH) return QStringH;
 pragma Import(C,QPlace_primaryFax, "QPlace_primaryFax");
 
 function  QPlace_primaryEmail(handle:not null QPlaceH) return QStringH;
 pragma Import(C,QPlace_primaryEmail, "QPlace_primaryEmail");
 
 function  QPlace_primaryWebsite(handle:not null QPlaceH) return QUrlH;
 pragma Import(C,QPlace_primaryWebsite, "QPlace_primaryWebsite");
 
 function  QPlace_detailsFetched(handle:not null QPlaceH) return boolean;
 pragma Import(C,QPlace_detailsFetched, "QPlace_detailsFetched");
 
 procedure QPlace_setDetailsFetched(handle:not null QPlaceH; fetched:boolean);
 pragma Import(C,QPlace_setDetailsFetched, "QPlace_setDetailsFetched");
 
 function  QPlace_extendedAttributeTypes(handle:not null QPlaceH) return QStringListH;
 pragma Import(C,QPlace_extendedAttributeTypes, "QPlace_extendedAttributeTypes");
 
 function  QPlace_extendedAttribute(handle:not null QPlaceH;attributeType:QStringH) return QPlaceAttributeH;
 pragma Import(C,QPlace_extendedAttribute, "QPlace_extendedAttribute");
 
 procedure QPlace_setExtendedAttribute(handle:not null QPlaceH;attributeType:QStringH; attribute:QPlaceAttributeH);
 pragma Import(C,QPlace_setExtendedAttribute, "QPlace_setExtendedAttribute");
 
 procedure QPlace_removeExtendedAttribute(handle:not null QPlaceH;attributeType:QStringH);
 pragma Import(C,QPlace_removeExtendedAttribute, "QPlace_removeExtendedAttribute");
 
 function  QPlace_contactTypes(handle:not null QPlaceH) return QStringListH;
 pragma Import(C,QPlace_contactTypes, "QPlace_contactTypes");
 
 function  QPlace_contactDetails(handle:not null QPlaceH;contactType:QStringH) return QObjectListH;
 pragma Import(C,QPlace_contactDetails, "QPlace_contactDetails");
 
 procedure QPlace_setContactDetails(handle:not null QPlaceH;contactType:QStringH ;details:QObjectListH);
 pragma Import(C,QPlace_setContactDetails, "QPlace_setContactDetails");
 
 procedure QPlace_appendContactDetail(handle:not null QPlaceH;contactType:QStringH ;detail: QPlaceContactDetailH);
 pragma Import(C,QPlace_appendContactDetail, "QPlace_appendContactDetail");
 
 procedure QPlace_removeContactDetails(handle:not null QPlaceH;contactType:QStringH);
 pragma Import(C,QPlace_removeContactDetails, "QPlace_removeContactDetails");
 
 function  QPlace_visibility(handle:not null QPlaceH) return QLocationVisibility;
 pragma Import(C,QPlace_visibility, "QPlace_visibility");
 
 procedure QPlace_setVisibility(handle:not null QPlaceH;visibility:QLocationVisibility);
 pragma Import(C,QPlace_setVisibility, "QPlace_setVisibility");
 
 function  QPlace_isEqual(handle,otherPlace:QPlaceH) return boolean;
 pragma Import(C,QPlace_isEqual, "QPlace_isEqual");
 
 function  QPlace_create(otherPlace:QPlaceH) return QPlaceH;

end;
