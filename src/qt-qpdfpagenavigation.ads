-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2020                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPdfView; use Qt.QPdfView;
package Qt.QPdfPageNavigation is

 function  QPdfPageNavigation_create(parent:QObjectH := null) return QPdfPageNavigationH;
 pragma Import(C,QPdfPageNavigation_create, "QPdfPageNavigation_create");
 
 procedure QPdfPageNavigation_destroy(handle:not null QPdfPageNavigationH);
 pragma Import(C,QPdfPageNavigation_destroy, "QPdfPageNavigation_destroy");
 
 function  QPdfPageNavigation_document(handle:not null QPdfPageNavigationH) return QPdfDocumentH;
 pragma Import(C,QPdfPageNavigation_document, "QPdfPageNavigation_document");
 
 procedure QPdfPageNavigation_setDocument(handle:not null QPdfPageNavigationH;document:QPdfDocumentH);
 pragma Import(C,QPdfPageNavigation_setDocument, "QPdfPageNavigation_setDocument");
 
 function  QPdfPageNavigation_currentPage(handle:not null QPdfPageNavigationH) return integer;
 pragma Import(C,QPdfPageNavigation_currentPage, "QPdfPageNavigation_currentPage");
 
 procedure QPdfPageNavigation_setCurrentPage(handle:not null QPdfPageNavigationH;currentPage:integer);
 pragma Import(C,QPdfPageNavigation_setCurrentPage, "QPdfPageNavigation_setCurrentPage");
 
 function  QPdfPageNavigation_pageCount(handle:not null QPdfPageNavigationH) return integer;
 pragma Import(C,QPdfPageNavigation_pageCount, "QPdfPageNavigation_pageCount");
 
 function  QPdfPageNavigation_canGoToPreviousPage(handle:not null QPdfPageNavigationH) return boolean;
 pragma Import(C,QPdfPageNavigation_canGoToPreviousPage, "QPdfPageNavigation_canGoToPreviousPage");
 
 function  QPdfPageNavigation_canGoToNextPage(handle:not null QPdfPageNavigationH) return boolean;
 pragma Import(C,QPdfPageNavigation_canGoToNextPage, "QPdfPageNavigation_canGoToNextPage");
 
 procedure QPdfPageNavigation_goToPreviousPage(handle:not null QPdfPageNavigationH);
 pragma Import(C,QPdfPageNavigation_goToPreviousPage, "QPdfPageNavigation_goToPreviousPage");
 
 procedure QPdfPageNavigation_goToNextPage(handle:not null QPdfPageNavigationH);
 pragma Import(C,QPdfPageNavigation_goToNextPage, "QPdfPageNavigation_goToNextPage");
 
  procedure QPdfPageNavigation_signal_slot_documentChanged(handle:not null QPdfPageNavigationH;hook:documentCallbackH);
 pragma Import(C,QPdfPageNavigation_signal_slot_documentChanged, "QPdfPageNavigation_signal_slot_documentChanged");
 
 procedure QPdfPageNavigation_signal_slot_currentPageChanged(handle:not null QPdfPageNavigationH;hook:intCallbackH);
 pragma Import(C,QPdfPageNavigation_signal_slot_currentPageChanged, "QPdfPageNavigation_signal_slot_currentPageChanged");
 
 procedure QPdfPageNavigation_signal_slot_pageCountChanged(handle:not null QPdfPageNavigationH;hook:intCallbackH);
 pragma Import(C,QPdfPageNavigation_signal_slot_pageCountChanged, "QPdfPageNavigation_signal_slot_pageCountChanged");
 
 procedure QPdfPageNavigation_signal_slot_canGoToPreviousPageChanged(handle:not null QPdfPageNavigationH;hook:boolCallbackH );
 pragma Import(C,QPdfPageNavigation_signal_slot_canGoToPreviousPageChanged, "QPdfPageNavigation_signal_slot_canGoToPreviousPageChanged");
 
 procedure QPdfPageNavigation_signal_slot_canGoToNextPageChanged(handle:not null QPdfPageNavigationH;hook:boolCallbackH);
 pragma Import(C,QPdfPageNavigation_signal_slot_canGoToNextPageChanged, "QPdfPageNavigation_signal_slot_canGoToNextPageChanged");
 
end;
