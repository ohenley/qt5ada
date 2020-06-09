--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2015                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QWebEngineHistory is

 function  QWebEngineHistoryItem_create(otherItem:QWebHistoryItemH) return QWebHistoryItemH;
 pragma Import(C,QWebEngineHistoryItem_create, "QWebEngineHistoryItem_create");
 
 procedure QWebEngineHistoryItem_delete(handle:not null QWebHistoryItemH);
 pragma Import(C,QWebEngineHistoryItem_delete, "QWebEngineHistoryItem_delete");
 
 function  QWebEngineHistoryItem_isValid(handle:not null QWebHistoryItemH) return boolean;
 pragma Import(C,QWebEngineHistoryItem_isValid, "QWebEngineHistoryItem_isValid");
 
 function  QWebEngineHistoryItem_originalUrl(handle:not null QWebHistoryItemH) return QUrlH;
 pragma Import(C,QWebEngineHistoryItem_originalUrl, "QWebEngineHistoryItem_originalUrl");
 
 function  QWebEngineHistoryItem_url(handle:not null QWebHistoryItemH) return QUrlH;
 pragma Import(C,QWebEngineHistoryItem_url, "QWebEngineHistoryItem_url");
 
 function  QWebEngineHistoryItem_iconUrl(handle:not null QWebHistoryItemH) return QUrlH;
 pragma Import(C,QWebEngineHistoryItem_iconUrl, "QWebEngineHistoryItem_iconUrl");
 
 function  QWebEngineHistoryItem_title(handle:not null QWebHistoryItemH) return QStringH;
 pragma Import(C,QWebEngineHistoryItem_title, "QWebEngineHistoryItem_title");
 
 function  QWebEngineHistoryItem_lastVisited(handle:not null QWebHistoryItemH) return QDateTimeH;
 pragma Import(C,QWebEngineHistoryItem_lastVisited, "QWebEngineHistoryItem_lastVisited");
 
 function  QWebEngineHistoryItem_save(handle:not null QWebHistoryItemH) return QWebHistoryItemH;
 pragma Import(C,QWebEngineHistoryItem_save, "QWebEngineHistoryItem_save");
 
 procedure QWebEngineHistory_clear(handle:not null QWebHistoryH);
 pragma Import(C,QWebEngineHistory_clear, "QWebEngineHistory_clear");
 
 function  QWebEngineHistory_items(handle:not null QWebHistoryH) return QObjectListH;
 pragma Import(C,QWebEngineHistory_items, "QWebEngineHistory_items");
 
 function  QWebEngineHistory_backItems(handle:not null QWebHistoryH;maxItems:integer) return QObjectListH;
 pragma Import(C,QWebEngineHistory_backItems, "QWebEngineHistory_backItems");
 
 function  QWebEngineHistory_forwardItems(handle:not null QWebHistoryH;maxItems:integer) return QObjectListH;
 pragma Import(C,QWebEngineHistory_forwardItems, "QWebEngineHistory_forwardItems");
 
 function  QWebEngineHistory_canGoBack(handle:not null QWebHistoryH) return boolean;
 pragma Import(C,QWebEngineHistory_canGoBack, "QWebEngineHistory_canGoBack");
 
 function  QWebEngineHistory_canGoForward(handle:not null QWebHistoryH) return boolean;
 pragma Import(C,QWebEngineHistory_canGoForward, "QWebEngineHistory_canGoForward");
 
 procedure QWebEngineHistory_back(handle:not null QWebHistoryH);
 pragma Import(C,QWebEngineHistory_back, "QWebEngineHistory_back");
 
 procedure QWebEngineHistory_forward(handle:not null QWebHistoryH);
 pragma Import(C,QWebEngineHistory_forward, "QWebEngineHistory_forward");
 
 procedure QWebEngineHistory_goToItem(handle:not null QWebHistoryH;item:QWebHistoryItemH);
 pragma Import(C,QWebEngineHistory_goToItem, "QWebEngineHistory_goToItem");
 
 function  QWebEngineHistory_backItem(handle:not null QWebHistoryH) return QWebHistoryItemH;
 pragma Import(C,QWebEngineHistory_backItem, "QWebEngineHistory_backItem");
 
 function  QWebEngineHistory_currentItem(handle:not null QWebHistoryH) return QWebHistoryItemH;
 pragma Import(C,QWebEngineHistory_currentItem, "QWebEngineHistory_currentItem");
 
 function  QWebEngineHistory_forwardItem(handle:not null QWebHistoryH) return QWebHistoryItemH;
 pragma Import(C,QWebEngineHistory_forwardItem, "QWebEngineHistory_forwardItem");
 
 function  QWebEngineHistory_itemAt(handle:not null QWebHistoryH;index:integer) return QWebHistoryItemH;
 pragma Import(C,QWebEngineHistory_itemAt, "QWebEngineHistory_itemAt");
 
 function  QWebEngineHistory_currentItemIndex(handle:not null QWebHistoryH) return integer;
 pragma Import(C,QWebEngineHistory_currentItemIndex, "QWebEngineHistory_currentItemIndex");
 
 function  QWebEngineHistory_count(handle:not null QWebHistoryH) return integer;
 pragma Import(C,QWebEngineHistory_count, "QWebEngineHistory_count");
 
end;
