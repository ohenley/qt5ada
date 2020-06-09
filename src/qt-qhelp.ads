-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractItemModel; use Qt.QAbstractItemModel;
with Qt.QString;            use Qt.QString;
package Qt.QHelp is 

 procedure QHelpContentItem_destroy(handle:not null QWidgetItemH);
 pragma Import(C,QHelpContentItem_destroy , "QHelpContentItem_destroy");
 
 function  QHelpContentItem_child(handle:not null QWidgetItemH;row:integer) return QWidgetItemH;
 pragma Import(C,QHelpContentItem_child, "QHelpContentItem_child");
 
 function  QHelpContentItem_childCount(handle:not null QWidgetItemH) return integer;
 pragma Import(C,QHelpContentItem_childCount, "QHelpContentItem_childCount");
 
 function  QHelpContentItem_title(handle:not null QWidgetItemH) return QStringH;
 pragma Import(C,QHelpContentItem_title, "QHelpContentItem_title");
 
 function  QHelpContentItem_url(handle:not null QWidgetItemH) return QUrlH;
 pragma Import(C,QHelpContentItem_url, "QHelpContentItem_url");
 
 function  QHelpContentItem_row(handle:not null QWidgetItemH) return integer;
 pragma Import(C,QHelpContentItem_row, "QHelpContentItem_row");
 
 function  QHelpContentItem_parent(handle:not null QWidgetItemH) return QWidgetItemH;
 pragma Import(C,QHelpContentItem_parent, "QHelpContentItem_parent");
 
 function  QHelpContentItem_childPosition(handle:not null QWidgetItemH;child:QWidgetItemH) return integer;
 pragma Import(C,QHelpContentItem_childPosition, "QHelpContentItem_childPosition");
 
 procedure QHelpContentModel_destroy(handle:not null QAbstractItemModelH);
 pragma Import(C,QHelpContentModel_destroy, "QHelpContentModel_destroy");
 
 procedure QHelpContentModel_createContents(handle:not null QAbstractItemModelH;customFilterName: QStringH);
 pragma Import(C,QHelpContentModel_createContents, "QHelpContentModel_createContents");
 
 function  QHelpContentModel_contentItemAt(handle:not null QAbstractItemModelH ;index:QModelIndexH) return QWidgetItemH;
 pragma Import(C,QHelpContentModel_contentItemAt, "QHelpContentModel_contentItemAt");
 
 function  QHelpContentModel_data(handle:not null QAbstractItemModelH;index: QModelIndexH;role: integer) return QVariantH;
 pragma Import(C,QHelpContentModel_data, "QHelpContentModel_data");
 
 function  QHelpContentModel_index(handle:not null QAbstractItemModelH;row:integer;column: integer;parent : QModelIndexH := QModelIndex_create) return QModelIndexH;
 pragma Import(C,QHelpContentModel_index, "QHelpContentModel_index");
 
 function  QHelpContentModel_parent(handle:not null QAbstractItemModelH;index:QModelIndexH) return QModelIndexH;
 pragma Import(C,QHelpContentModel_parent, "QHelpContentModel_parent");
 
 function  QHelpContentModel_rowCount(handle:not null QAbstractItemModelH;parent : QModelIndexH :=  QModelIndex_create) return integer;
 pragma Import(C,QHelpContentModel_rowCount, "QHelpContentModel_rowCount");
 
 function  QHelpContentModel_columnCount(handle:not null QAbstractItemModelH;parent : QModelIndexH :=  QModelIndex_create ) return integer;
 pragma Import(C,QHelpContentModel_columnCount, "QHelpContentModel_columnCount");
 
 function  QHelpContentModel_isCreatingContents(handle:not null QAbstractItemModelH) return boolean;
 pragma Import(C,QHelpContentModel_isCreatingContents, "QHelpContentModel_isCreatingContents");
 

 procedure QHelpContentModel_signal_slot_contentsCreationStarted(handle:not null QAbstractItemModelH;callback:voidCallbackH);
 pragma Import(C,QHelpContentModel_signal_slot_contentsCreationStarted, "QHelpContentModel_signal_slot_contentsCreationStarted");
 
 procedure QHelpContentModel_signal_slot_contentsCreated(handle:not null QAbstractItemModelH;callback:voidCallbackH);
 pragma Import(C,QHelpContentModel_signal_slot_contentsCreated, "QHelpContentModel_signal_slot_contentsCreated");
 

 function  QHelpContentWidget_indexOf(handle:not null QTreeViewH;link: QUrlH) return QModelIndexH;
 pragma Import(C,QHelpContentWidget_indexOf, "QHelpContentWidget_indexOf");
 

 type urlCallbackH is access procedure(link:QUrlH);
 pragma convention(C,urlCallbackH);
 
 procedure QHelpContentWidget_signal_slot_linkActivated(handle:not null QTreeViewH;callback:urlCallbackH);
 pragma Import(C,QHelpContentWidget_signal_slot_linkActivated, "QHelpContentWidget_signal_slot_linkActivated");
  
 procedure QHelpIndexModel_createIndex(handle:not null QAbstractItemModelH;customFilterName: QStringH);
 pragma Import(C,QHelpIndexModel_createIndex, "QHelpIndexModel_createIndex");
 
 function  QHelpIndexModel_filter(handle:not null QAbstractItemModelH;filter: QStringH;wildcard :QStringH :=  QString_create) return QModelIndexH;
 pragma Import(C,QHelpIndexModel_filter, "QHelpIndexModel_filter");
 
 function  QHelpIndexModel_linksForKeyword(handle:not null QAbstractItemModelH;keyword: QStringH) return QObjectMapH;
 pragma Import(C,QHelpIndexModel_linksForKeyword, "QHelpIndexModel_linksForKeyword");
 
 function  QHelpIndexModel_isCreatingIndex(handle:not null QAbstractItemModelH) return boolean;
 pragma Import(C,QHelpIndexModel_isCreatingIndex, "QHelpIndexModel_isCreatingIndex");
 

 procedure QHelpIndexModel_signal_slot_indexCreationStarted(handle:not null QAbstractItemModelH;callback:voidCallbackH);
 pragma Import(C,QHelpIndexModel_signal_slot_indexCreationStarted, "QHelpIndexModel_signal_slot_indexCreationStarted");
 
 procedure QHelpIndexModel_signal_slot_indexCreated(handle:not null QAbstractItemModelH;callback:voidCallbackH);
 pragma Import(C,QHelpIndexModel_signal_slot_indexCreated, "QHelpIndexModel_signal_slot_indexCreated");
 
 procedure QHelpIndexWidget_filterIndices(handle:not null QListViewH;filter: QStringH;wildcard : QStringH := QString_create);
 pragma Import(C,QHelpIndexWidget_filterIndices, "QHelpIndexWidget_filterIndices");
 
 procedure QHelpIndexWidget_activateCurrentItem(handle:not null QListViewH);
 pragma Import(C,QHelpIndexWidget_activateCurrentItem, "QHelpIndexWidget_activateCurrentItem");
 
 type callbackUrlStringH is access procedure(link:QUrlH;keyword:QStringH);
 pragma convention(C,callbackUrlStringH);
 
 type callbackMapUrlStringH is access procedure(map:QObjectMapH;keyword:QStringH);
 pragma convention(C,callbackMapUrlStringH);
 

 procedure QHelpIndexWidget_signal_slot_linkActivated(handle:not null QListViewH;callback:callbackUrlStringH);
 pragma Import(C,QHelpIndexWidget_signal_slot_linkActivated, "QHelpIndexWidget_signal_slot_linkActivated");
 
 procedure QHelpIndexWidget_signal_slot_linksActivated2(handle:not null QListViewH;callback:callbackMapUrlStringH);
 pragma Import(C,QHelpIndexWidget_signal_slot_linksActivated2, "QHelpIndexWidget_signal_slot_linksActivated2");

-------------------------------------------------------------------------
 function  QHelpSearchQueryWidget_create(parent:QWidgetH := null) return QWidgetH;
 pragma Import(C,QHelpSearchQueryWidget_create, "QHelpSearchQueryWidget_create");
 
 procedure QHelpSearchQueryWidget_destroy(handle:not null QWidgetH);
 pragma Import(C,QHelpSearchQueryWidget_destroy, "QHelpSearchQueryWidget_destroy");
 
 procedure QHelpSearchQueryWidget_expandExtendedSearch(handle:not null QWidgetH);
 pragma Import(C,QHelpSearchQueryWidget_expandExtendedSearch, "QHelpSearchQueryWidget_expandExtendedSearch");
 
 procedure QHelpSearchQueryWidget_collapseExtendedSearch(handle:not null QWidgetH);
 pragma Import(C,QHelpSearchQueryWidget_collapseExtendedSearch, "QHelpSearchQueryWidget_collapseExtendedSearch");
 
 function  QHelpSearchQueryWidget_query(handle:not null QWidgetH) return QObjectListH;
 pragma Import(C,QHelpSearchQueryWidget_query, "QHelpSearchQueryWidget_query");
 
 procedure QHelpSearchQueryWidget_setQuery(handle:not null QWidgetH;queryList: QObjectListH);
 pragma Import(C,QHelpSearchQueryWidget_setQuery, "QHelpSearchQueryWidget_setQuery");
 
 function  QHelpSearchQueryWidget_isCompactMode(handle:not null QWidgetH) return boolean;
 pragma Import(C,QHelpSearchQueryWidget_isCompactMode, "QHelpSearchQueryWidget_isCompactMode");
 
 procedure QHelpSearchQueryWidget_setCompactMode(handle:not null QWidgetH;on:boolean);
 pragma Import(C,QHelpSearchQueryWidget_setCompactMode, "QHelpSearchQueryWidget_setCompactMode");

 procedure QHelpSearchQueryWidget_signal_slot_search(handle:not null QWidgetH;callback:voidCallbackH);
 pragma Import(C,QHelpSearchQueryWidget_signal_slot_search, "QHelpSearchQueryWidget_signal_slot_search");

 procedure QHelpSearchResultWidget_destroy(handle:not null QWidgetH);
 pragma Import(C,QHelpSearchResultWidget_destroy, "QHelpSearchResultWidget_destroy");
 
 function  QHelpSearchResultWidget_linkAt(handle:not null QWidgetH ;point:QPointH) return QUrlH;
 pragma Import(C,QHelpSearchResultWidget_linkAt, "QHelpSearchResultWidget_linkAt");
 
 procedure QHelpSearchResultWidget_signal_slot_requestShowLink(handle:not null QWidgetH;callback:urlCallbackH);
 pragma Import(C,QHelpSearchResultWidget_signal_slot_requestShowLink, "QHelpSearchResultWidget_signal_slot_requestShowLink");

 function  QHelpBrowser_create(collectionFile:QStringH;parent:QWidgetH) return QTextBrowserH;
 pragma Import(C,QHelpBrowser_create, "QHelpBrowser_create");
 
 procedure QHelpBrowser_showHelpForKeyword(handle:not null QTextBrowserH;id:QStringH);
 pragma Import(C,QHelpBrowser_showHelpForKeyword, "QHelpBrowser_showHelpForKeyword");

end;
