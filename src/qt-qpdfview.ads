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

package Qt.QPdfView is

 type PageMode is (SinglePage,MultiPage);
 pragma convention(C,PageMode);
    
 type ZoomMode is (CustomZoom,FitToWidth,FitInView);
 pragma convention(C,ZoomMode);

 function  QPdfView_create(parent:QWidgetH := null) return QPdfViewH;
 pragma Import(C,QPdfView_create, "QPdfView_create");
 
 procedure QPdfView_destroy(handle:not null QPdfViewH);
 pragma Import(C,QPdfView_destroy, "QPdfView_destroy");
 
 procedure QPdfView_setDocument(handle:not null QPdfViewH;document:QPdfDocumentH);
 pragma Import(C,QPdfView_setDocument, "QPdfView_setDocument");
 
 function  QPdfView_document(handle:not null QPdfViewH) return QPdfDocumentH;
 pragma Import(C,QPdfView_document, "QPdfView_document");
 
 function  QPdfView_pageNavigation(handle:not null QPdfViewH) return QPdfPageNavigationH;
 pragma Import(C,QPdfView_pageNavigation, "QPdfView_pageNavigation");
 
 function  QPdfView_pageMode(handle:not null QPdfViewH) return PageMode;
 pragma Import(C,QPdfView_pageMode, "QPdfView_pageMode");
 
 function  QPdfView_zoomMode(handle:not null QPdfViewH) return ZoomMode;
 pragma Import(C,QPdfView_zoomMode, "QPdfView_zoomMode");
 
 function  QPdfView_zoomFactor(handle:not null QPdfViewH) return qreal;
 pragma Import(C,QPdfView_zoomFactor, "QPdfView_zoomFactor");
 
 function  QPdfView_pageSpacing(handle:not null QPdfViewH) return integer;
 pragma Import(C,QPdfView_pageSpacing, "QPdfView_pageSpacing");
 
 procedure QPdfView_setPageSpacing(handle:not null QPdfViewH;spacing:integer);
 pragma Import(C,QPdfView_setPageSpacing, "QPdfView_setPageSpacing");
 
 function  QPdfView_documentMargins(handle:not null QPdfViewH) return QMarginsH;
 pragma Import(C,QPdfView_documentMargins, "QPdfView_documentMargins");
 
 procedure QPdfView_setDocumentMargins(handle:not null QPdfViewH;margins:QMarginsH);
 pragma Import(C,QPdfView_setDocumentMargins, "QPdfView_setDocumentMargins");
 
 procedure QPdfView_setPageMode(handle:not null QPdfViewH;mode:PageMode);
 pragma Import(C,QPdfView_setPageMode, "QPdfView_setPageMode");
 
 procedure QPdfView_setZoomMode(handle:not null QPdfViewH;mode:ZoomMode);
 pragma Import(C,QPdfView_setZoomMode, "QPdfView_setZoomMode");
 
 procedure QPdfView_setZoomFactor(handle:not null QPdfViewH;factor:qreal);
 pragma Import(C,QPdfView_setZoomFactor, "QPdfView_setZoomFactor");
 
 procedure QPdfView_signal_slot_pageModeChanged(handle:not null QPdfViewH;hook: intCallbackH);
 pragma Import(C,QPdfView_signal_slot_pageModeChanged, "QPdfView_signal_slot_pageModeChanged");
 
 procedure QPdfView_signal_slot_pageSpacingChanged(handle:not null QPdfViewH;hook: intCallbackH);
 pragma Import(C,QPdfView_signal_slot_pageSpacingChanged, "QPdfView_signal_slot_pageSpacingChanged");
 
 procedure QPdfView_signal_slot_zoomFactorChanged(handle:not null QPdfViewH;hook: qrealCallbackH);
 pragma Import(C,QPdfView_signal_slot_zoomFactorChanged, "QPdfView_signal_slot_zoomFactorChanged");
 
 procedure QPdfView_signal_slot_zoomModeChanged(handle:not null QPdfViewH;hook: intCallbackH);
 pragma Import(C,QPdfView_signal_slot_zoomModeChanged, "QPdfView_signal_slot_zoomModeChanged");
 
 
 type documentCallbackH is access procedure(document:QPdfDocumentH);
 pragma convention(C,documentCallbackH); 
 
 type marginsCallbackH  is access procedure(margins:QMarginsH);
 pragma convention(C,marginsCallbackH); 
  
 procedure QPdfView_signal_slot_documentChanged(handle:not null QPdfViewH;hook:marginsCallbackH);
 pragma Import(C,QPdfView_signal_slot_documentChanged, "QPdfView_signal_slot_documentChanged");
 
 procedure QPdfView_signal_slot_documentMarginsChanged(handle:not null QPdfViewH;hook:marginsCallbackH);
 pragma Import(C,QPdfView_signal_slot_documentMarginsChanged, "QPdfView_signal_slot_documentMarginsChanged");
 
end;
