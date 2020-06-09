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

with Qt.QString;   use Qt.QString;
with Qt.QDateTime; use Qt.QDateTime;
package Qt.QWebBrowserHistory is

 function  QWebBrowserHistoryItem_create return QWebHistoryItemH;
 pragma Import(C,QWebBrowserHistoryItem_create, "QWebBrowserHistoryItem_create");
 
 function  QWebBrowserHistoryItem_create2(url:QStringH;dateTime:QDateTimeH := QDateTime_create;title: QStringH := QString_create ) return QWebHistoryItemH;
 pragma Import(C,QWebBrowserHistoryItem_create2, "QWebBrowserHistoryItem_create2");
 
 procedure QWebBrowserHistoryItem_delete(handle:not null QWebHistoryItemH);
 pragma Import(C,QWebBrowserHistoryItem_delete, "QWebBrowserHistoryItem_delete");
 
 function  QWebBrowserHistoryItem_equal(handle:not null QWebHistoryItemH;other:QWebHistoryItemH) return boolean;
 pragma Import(C,QWebBrowserHistoryItem_equal, "QWebBrowserHistoryItem_equal");
 
 function  QWebBrowserHistoryItem_lt(handle:not null QWebHistoryItemH;other:QWebHistoryItemH) return boolean;
 pragma Import(C,QWebBrowserHistoryItem_lt, "QWebBrowserHistoryItem_lt");
 
 function  QWebBrowserHistoryItem_title(handle:not null QWebHistoryItemH) return QStringH;
 pragma Import(C,QWebBrowserHistoryItem_title, "QWebBrowserHistoryItem_title");
 
 function  QWebBrowserHistoryItem_url(handle:not null QWebHistoryItemH) return QStringH;
 pragma Import(C,QWebBrowserHistoryItem_url, "QWebBrowserHistoryItem_url");
 
 function  QWebBrowserHistoryItem_dateTime(handle:not null QWebHistoryItemH) return QDateTimeH;
 pragma Import(C,QWebBrowserHistoryItem_dateTime, "QWebBrowserHistoryItem_dateTime");
 

 function  QWebBrowserHistoryManager_create(parent:QObjectH := null) return QWebHistoryManagerH;
 pragma Import(C,QWebBrowserHistoryManager_create, "QWebBrowserHistoryManager_create");
 
 procedure QWebBrowserHistoryManager_delete(handle:not null QWebHistoryManagerH);
 pragma Import(C,QWebBrowserHistoryManager_delete, "QWebBrowserHistoryManager_delete");
 
 function  QWebBrowserHistoryManager_historyContains(handle:not null QWebHistoryManagerH;url:QStringH) return boolean;
 pragma Import(C,QWebBrowserHistoryManager_historyContains, "QWebBrowserHistoryManager_historyContains");
 
 procedure QWebBrowserHistoryManager_addHistoryEntry(handle:not null QWebHistoryManagerH;url:QStringH);
 pragma Import(C,QWebBrowserHistoryManager_addHistoryEntry, "QWebBrowserHistoryManager_addHistoryEntry");
 
 procedure QWebBrowserHistoryManager_updateHistoryItem(handle:not null QWebHistoryManagerH;url:QUrlH;title: QStringH);
 pragma Import(C,QWebBrowserHistoryManager_updateHistoryItem, "QWebBrowserHistoryManager_updateHistoryItem");
 
 function  QWebBrowserHistoryManager_historyLimit(handle:not null QWebHistoryManagerH) return integer;
 pragma Import(C,QWebBrowserHistoryManager_historyLimit, "QWebBrowserHistoryManager_historyLimit");
 
 procedure QWebBrowserHistoryManager_setHistoryLimit(handle:not null QWebHistoryManagerH;limit:integer);
 pragma Import(C,QWebBrowserHistoryManager_setHistoryLimit, "QWebBrowserHistoryManager_setHistoryLimit");
 
 function  QWebBrowserHistoryManager_history(handle:not null QWebHistoryManagerH) return QObjectListH;
 pragma Import(C,QWebBrowserHistoryManager_history, "QWebBrowserHistoryManager_history");
 
 procedure QWebBrowserHistoryManager_setHistory(handle:not null QWebHistoryManagerH;history:QObjectListH; loadedAndSorted: boolean := false);
 pragma Import(C,QWebBrowserHistoryManager_setHistory, "QWebBrowserHistoryManager_setHistory");
 
 function  QWebBrowserHistoryManager_historyModel(handle:not null QWebHistoryManagerH) return QAbstractItemModelH;
 pragma Import(C,QWebBrowserHistoryManager_historyModel, "QWebBrowserHistoryManager_historyModel");
 
 function  QWebBrowserHistoryManager_historyFilterModel(handle:not null QWebHistoryManagerH) return QAbstractItemModelH;     
 pragma Import(C,QWebBrowserHistoryManager_historyFilterModel, "QWebBrowserHistoryManager_historyFilterModel");
 
 function  QWebBrowserHistoryManager_historyTreeModel(handle:not null QWebHistoryManagerH) return QAbstractItemModelH;     
 pragma Import(C,QWebBrowserHistoryManager_historyTreeModel, "QWebBrowserHistoryManager_historyTreeModel");
 
 procedure QWebBrowserHistoryManager_clear(handle:not null QWebHistoryManagerH);
 pragma Import(C,QWebBrowserHistoryManager_clear, "QWebBrowserHistoryManager_clear");
 
 procedure QWebBrowserHistoryManager_loadSettings(handle:not null QWebHistoryManagerH);
 pragma Import(C,QWebBrowserHistoryManager_loadSettings, "QWebBrowserHistoryManager_loadSettings");
 
 type historyItemCallbackH is access procedure(item: QWebHistoryItemH);
 pragma convention(C,historyItemCallbackH);
 
 procedure QWebBrowserHistoryManager_signal_slot_historyReset(handle:not null QWebHistoryManagerH; hook: voidCallbackH);
 pragma Import(C,QWebBrowserHistoryManager_signal_slot_historyReset, "QWebBrowserHistoryManager_signal_slot_historyReset");
 
 procedure QWebBrowserHistoryManager_signal_slot_entryUpdated(handle:not null QWebHistoryManagerH; hook: intCallbackH);
 pragma Import(C,QWebBrowserHistoryManager_signal_slot_entryUpdated, "QWebBrowserHistoryManager_signal_slot_entryUpdated");
 
 procedure QWebBrowserHistoryManager_signal_slot_entryAdded(handle:not null QWebHistoryManagerH; hook: historyItemCallbackH);
 pragma Import(C,QWebBrowserHistoryManager_signal_slot_entryAdded, "QWebBrowserHistoryManager_signal_slot_entryAdded");
 
 procedure QWebBrowserHistoryManager_signal_slot_entryRemoved(handle:not null QWebHistoryManagerH; hook: historyItemCallbackH);
 pragma Import(C,QWebBrowserHistoryManager_signal_slot_entryRemoved, "QWebBrowserHistoryManager_signal_slot_entryRemoved");
 
------------------------------------------------------------------------
 function  QWebBrowserHistoryItem_create(url:QStringH;dateTime:QDateTimeH := QDateTime_create;title: QStringH := QString_create ) return QWebHistoryItemH;

end;
