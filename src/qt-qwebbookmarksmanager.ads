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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QWebBookmarksManager is

 function  QWebBookmarksManager_create(parent:QObjectH := null) return QWebBookmarksManagerH;
 pragma Import(C,QWebBookmarksManager_create, "QWebBookmarksManager_create");
 
 procedure QWebBookmarksManager_delete(handle:not null QWebBookmarksManagerH);
 pragma Import(C,QWebBookmarksManager_delete, "QWebBookmarksManager_delete");
 
 procedure QWebBookmarksManager_changeExpanded(handle:not null QWebBookmarksManagerH);
 pragma Import(C,QWebBookmarksManager_changeExpanded, "QWebBookmarksManager_changeExpanded");
 
 procedure QWebBookmarksManager_addBookmark(handle:not null QWebBookmarksManagerH;parent,node: QWebBookmarkNodeH; row: integer := -1);
 pragma Import(C,QWebBookmarksManager_addBookmark, "QWebBookmarksManager_addBookmark");
 
 procedure QWebBookmarksManager_removeBookmark(handle:not null QWebBookmarksManagerH;node:QWebBookmarkNodeH);
 pragma Import(C,QWebBookmarksManager_removeBookmark, "QWebBookmarksManager_removeBookmark");
 
 procedure QWebBookmarksManager_setTitle(handle:not null QWebBookmarksManagerH;node:QWebBookmarkNodeH; newTitle:QStringH);
 pragma Import(C,QWebBookmarksManager_setTitle, "QWebBookmarksManager_setTitle");
 
 procedure QWebBookmarksManager_setUrl(handle:not null QWebBookmarksManagerH;node:QWebBookmarkNodeH;newUrl: QStringH);
 pragma Import(C,QWebBookmarksManager_setUrl, "QWebBookmarksManager_setUrl");
 
 function  QWebBookmarksManager_bookmarks(handle:not null QWebBookmarksManagerH) return QWebBookmarkNodeH;
 pragma Import(C,QWebBookmarksManager_bookmarks, "QWebBookmarksManager_bookmarks");
 
 function  QWebBookmarksManager_menu(handle:not null QWebBookmarksManagerH) return QWebBookmarkNodeH;
 pragma Import(C,QWebBookmarksManager_menu, "QWebBookmarksManager_menu");
 
 function  QWebBookmarksManager_toolbar(handle:not null QWebBookmarksManagerH) return QWebBookmarkNodeH;
 pragma Import(C,QWebBookmarksManager_toolbar, "QWebBookmarksManager_toolbar");
 
 function  QWebBookmarksManager_bookmarksModel(handle:not null QWebBookmarksManagerH) return QAbstractItemModelH;
 pragma Import(C,QWebBookmarksManager_bookmarksModel, "QWebBookmarksManager_bookmarksModel");
 
 function  QWebBookmarksManager_undoRedoStack(handle:not null QWebBookmarksManagerH) return QUndoStackH;
 pragma Import(C,QWebBookmarksManager_undoRedoStack, "QWebBookmarksManager_undoRedoStack");
 
 procedure QWebBookmarksManager_importBookmarks(handle:not null QWebBookmarksManagerH);
 pragma Import(C,QWebBookmarksManager_importBookmarks, "QWebBookmarksManager_importBookmarks");
 
 procedure QWebBookmarksManager_exportBookmarks(handle:not null QWebBookmarksManagerH);
 pragma Import(C,QWebBookmarksManager_exportBookmarks, "QWebBookmarksManager_exportBookmarks");
 
 type pointerCallbackH is access procedure(item : QWebBookmarkNodeH);
 pragma convention(C,pointerCallbackH);
 
 type pointerIntPointerCallbackH is access procedure(parent : QWebBookmarkNodeH;row:integer ;item : QWebBookmarkNodeH);
 pragma convention(C,pointerIntPointerCallbackH);

 procedure QWebBookmarksManager_signal_slot_entryAdded(handle:not null QWebBookmarksManagerH; hook:pointerCallbackH);
 pragma Import(C,QWebBookmarksManager_signal_slot_entryAdded, "QWebBookmarksManager_signal_slot_entryAdded");
 
 procedure QWebBookmarksManager_signal_slot_entryChanged(handle:not null QWebBookmarksManagerH; hook:pointerCallbackH);      
 pragma Import(C,QWebBookmarksManager_signal_slot_entryChanged, "QWebBookmarksManager_signal_slot_entryChanged");
 
 procedure QWebBookmarksManager_signal_slot_entryRemoved(handle:not null QWebBookmarksManagerH; hook:pointerIntPointerCallbackH);
 pragma Import(C,QWebBookmarksManager_signal_slot_entryRemoved, "QWebBookmarksManager_signal_slot_entryRemoved");

end;
