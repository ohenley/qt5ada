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

with Qt.QString;     use Qt.QString;
with Qt.QPlaceReply; use Qt.QPlaceReply;
package Qt.QPlaceManager is

 procedure QPlaceManager_delete(handle:not null QPlaceManagerH);
 pragma Import(C,QPlaceManager_delete, "QPlaceManager_delete");
 
 function  QPlaceManager_managerName(handle:not null QPlaceManagerH) return QStringH;
 pragma Import(C,QPlaceManager_managerName, "QPlaceManager_managerName");
 
 function  QPlaceManager_managerVersion(handle:not null QPlaceManagerH) return integer;
 pragma Import(C,QPlaceManager_managerVersion, "QPlaceManager_managerVersion");
 
 function  QPlaceManager_getPlaceDetails(handle:not null QPlaceManagerH;placeId:QStringH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_getPlaceDetails, "QPlaceManager_getPlaceDetails");
 
 function  QPlaceManager_getPlaceContent(handle:not null QPlaceManagerH; request:QPlaceContentRequestH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_getPlaceContent, "QPlaceManager_getPlaceContent");
 
 function  QPlaceManager_search(handle:not null QPlaceManagerH;query:QPlaceSearchRequestH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_search, "QPlaceManager_search");
 
 function  QPlaceManager_searchSuggestions(handle:not null QPlaceManagerH;request:QPlaceSearchRequestH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_searchSuggestions, "QPlaceManager_searchSuggestions");
 
 function  QPlaceManager_savePlace(handle:not null QPlaceManagerH;place:QPlaceH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_savePlace, "QPlaceManager_savePlace");
 
 function  QPlaceManager_removePlace(handle:not null QPlaceManagerH;placeId:QStringH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_removePlace, "QPlaceManager_removePlace");
 
 function  QPlaceManager_saveCategory(handle:not null QPlaceManagerH;category:QPlaceCategoryH; parentId: QStringH := QString_create) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_saveCategory, "QPlaceManager_saveCategory");
 
 function  QPlaceManager_removeCategory(handle:not null QPlaceManagerH;categoryId:QStringH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_removeCategory, "QPlaceManager_removeCategory");
 
 function  QPlaceManager_initializeCategories(handle:not null QPlaceManagerH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_initializeCategories, "QPlaceManager_initializeCategories");
 
 function  QPlaceManager_parentCategoryId(handle:not null QPlaceManagerH;categoryId:QStringH) return QStringH;
 pragma Import(C,QPlaceManager_parentCategoryId, "QPlaceManager_parentCategoryId");
 
 function  QPlaceManager_childCategoryIds(handle:not null QPlaceManagerH; parentId:QStringH := QString_create) return QStringListH;
 pragma Import(C,QPlaceManager_childCategoryIds, "QPlaceManager_childCategoryIds");
 
 function  QPlaceManager_category(handle:not null QPlaceManagerH;categoryId:QStringH) return QPlaceCategoryH;
 pragma Import(C,QPlaceManager_category, "QPlaceManager_category");
 
 function  QPlaceManager_childCategories(handle:not null QPlaceManagerH; parentId:QStringH := QString_create) return QObjectListH;
 pragma Import(C,QPlaceManager_childCategories, "QPlaceManager_childCategories");
 
 function  QPlaceManager_locales(handle:not null QPlaceManagerH) return QObjectListH;
 pragma Import(C,QPlaceManager_locales, "QPlaceManager_locales");
 
 procedure QPlaceManager_setLocale(handle:not null QPlaceManagerH;locale:QLocaleH);
 pragma Import(C,QPlaceManager_setLocale, "QPlaceManager_setLocale");
 
 procedure QPlaceManager_setLocales(handle:not null QPlaceManagerH;locales:QObjectListH);
 pragma Import(C,QPlaceManager_setLocales, "QPlaceManager_setLocales");
 
 function  QPlaceManager_compatiblePlace(handle:not null QPlaceManagerH;place:QPlaceH) return QPlaceH;
 pragma Import(C,QPlaceManager_compatiblePlace, "QPlaceManager_compatiblePlace");
 
 function  QPlaceManager_matchingPlaces(handle:not null QPlaceManagerH;request:QPlaceMatchRequestH) return QPlaceReplyH;
 pragma Import(C,QPlaceManager_matchingPlaces, "QPlaceManager_matchingPlaces");
 
 type stringStringCallbackH is access procedure(p1,p2:QStringH);
 pragma convention(C,stringStringCallbackH);

 type errorCallbackH is access procedure(reply:QPlaceReplyH;error:QPlaceReplyError;errorString: QStringH);
 pragma convention(C,errorCallbackH);

 type placeCallbackH is access procedure(category:QPlaceCategoryH;str: QStringH);
 pragma convention(C,placeCallbackH);

 procedure QPlaceManager_signal_slot_finished(handle:QPlaceManagerH; hook: QObjectCallbackH);
 pragma Import(C,QPlaceManager_signal_slot_finished, "QPlaceManager_signal_slot_finished");
 
 procedure QPlaceManager_signal_slot_error(handle:QPlaceManagerH;hook:errorCallbackH);
 pragma Import(C,QPlaceManager_signal_slot_error, "QPlaceManager_signal_slot_error");
 
 procedure QPlaceManager_signal_slot_placeAdded(handle:QPlaceManagerH; hook : QStringCallbackH);
 pragma Import(C,QPlaceManager_signal_slot_placeAdded, "QPlaceManager_signal_slot_placeAdded");
 
 procedure QPlaceManager_signal_slot_placeUpdated(handle:QPlaceManagerH; hook : QStringCallbackH); 
 pragma Import(C,QPlaceManager_signal_slot_placeUpdated, "QPlaceManager_signal_slot_placeUpdated");
 
 procedure QPlaceManager_signal_slot_placeRemoved(handle:QPlaceManagerH; hook : QStringCallbackH); 
 pragma Import(C,QPlaceManager_signal_slot_placeRemoved, "QPlaceManager_signal_slot_placeRemoved");
 
 procedure QPlaceManager_signal_slot_categoryAdded(handle:QPlaceManagerH; hook: placeCallbackH);
 pragma Import(C,QPlaceManager_signal_slot_categoryAdded, "QPlaceManager_signal_slot_categoryAdded");
 
 procedure QPlaceManager_signal_slot_categoryUpdated(handle:QPlaceManagerH;hook: placeCallbackH);
 pragma Import(C,QPlaceManager_signal_slot_categoryUpdated, "QPlaceManager_signal_slot_categoryUpdated");
 
 procedure QPlaceManager_signal_slot_categoryRemoved(handle:QPlaceManagerH; hook: stringStringCallbackH);
 pragma Import(C,QPlaceManager_signal_slot_categoryRemoved, "QPlaceManager_signal_slot_categoryRemoved");
 
 procedure QPlaceManager_signal_slot_dataChanged(handle:QPlaceManagerH; hook: voidCallbackH);
 pragma Import(C,QPlaceManager_signal_slot_dataChanged, "QPlaceManager_signal_slot_dataChanged");
 
end;
