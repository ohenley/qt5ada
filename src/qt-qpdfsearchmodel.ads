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

package Qt.QPdfSearchModel is

 function  QPdfSearchModel_create(parent:QObjectH := null) return QPdfSearchModelH;
 pragma Import(C,QPdfSearchModel_create, "QPdfSearchModel_create");
 
 procedure QPdfSearchModel_destroy(handle:not null QPdfSearchModelH);
 pragma Import(C,QPdfSearchModel_destroy, "QPdfSearchModel_destroy");
 
 function  QPdfSearchModel_document(handle:not null QPdfSearchModelH) return QPdfDocumentH;
 pragma Import(C,QPdfSearchModel_document, "QPdfSearchModel_document");
 
 procedure QPdfSearchModel_setDocument(handle:not null QPdfSearchModelH;document:QPdfDocumentH);
 pragma Import(C,QPdfSearchModel_setDocument, "QPdfSearchModel_setDocument");
 
 function  QPdfSearchModel_resultAt(vector:not null QVectorH;index:integer) return QPdfSearchResultH;
 pragma Import(C,QPdfSearchModel_resultAt, "QPdfSearchModel_resultAt");
 
  function  QPdfSearchModel_resultsOnPage(handle:not null QPdfSearchModelH;page:int) return QVectorH;
 pragma Import(C,QPdfSearchModel_resultsOnPage, "QPdfSearchModel_resultsOnPage");
 
 function   QPdfSearchModel_roleNames(handle:not null QPdfSearchModelH) return QHashH;
 pragma Import(C,QPdfSearchModel_roleNames, "QPdfSearchModel_roleNames");
 
 function  QPdfSearchModel_rowCount(handle:not null QPdfSearchModelH;parent:QModelIndexH) return integer;
 pragma Import(C,QPdfSearchModel_rowCount, "QPdfSearchModel_rowCount");
 
 function  QPdfSearchModel_data(handle:not null QPdfSearchModelH;index: QModelIndexH;role: integer) return QVariantH;
 pragma Import(C,QPdfSearchModel_data, "QPdfSearchModel_data");
 
 function  QPdfSearchModel_roolNameAt(handle:QHashH;index:integer) return QByteArrayH;
 pragma Import(C,QPdfSearchModel_roolNameAt, "QPdfSearchModel_roolNameAt");
 
   procedure QPdfSearchModel_signal_slot_documentChanged(handle:not null QPdfSearchModelH;hook:voidCallbackH);
 pragma Import(C,QPdfSearchModel_signal_slot_documentChanged, "QPdfSearchModel_signal_slot_documentChanged");
 
  procedure QPdfSearchModel_signal_slot_searchStringChanged(handle:not null QPdfSearchModelH;hook:voidCallbackH);
 pragma Import(C,QPdfSearchModel_signal_slot_searchStringChanged, "QPdfSearchModel_signal_slot_searchStringChanged");

 function  QPdfSearchResult_create return QPdfSearchResultH;
 pragma Import(C,QPdfSearchResult_create, "QPdfSearchResult_create");
 
 function  QPdfSearchResult_contextBefore(handle:not null QPdfSearchResultH) return QStringH;
 pragma Import(C,QPdfSearchResult_contextBefore, "QPdfSearchResult_contextBeforeBefore");
 
 function  QPdfSearchResult_contextAfter(handle:not null QPdfSearchResultH) return QStringH;
 pragma Import(C,QPdfSearchResult_contextAfter, "QPdfSearchResult_contextAfterAfter");
 
 function  QPdfSearchResult_rectangles(handle:not null QPdfSearchResultH) return QVectorH;
 pragma Import(C,QPdfSearchResult_rectangles, "QPdfSearchResult_rectangles");
 
 function  QPdfSearchResult_rectangAt(handle:not null QVectorH;index:int) return QRectFH;
 pragma Import(C,QPdfSearchResult_rectangAt, "QPdfSearchResult_rectangAt");
 
end;
