--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QPrinterInfo ; use Qt.QPrinterInfo;
package Qt.QPrintPreviewWidget is

 function  QPrintPreviewWidget_create(printer: QPrinterH ; parent:QWidgetH; flags: quint) return QPrintPreviewWidgetH;
 pragma Import(C,QPrintPreviewWidget_create , "QPrintPreviewWidget_create");

 procedure QPrintPreviewWidget_destroy(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_destroy, "QPrintPreviewWidget_destroy");

 function  QPrintPreviewWidget_create2(parent:QWidgetH; flags: quint) return QPrintPreviewWidgetH;
 pragma Import(C,QPrintPreviewWidget_create2, "QPrintPreviewWidget_create2");

 function  QPrintPreviewWidget_zoomFactor(handle: not null QPrintPreviewWidgetH) return float;
 pragma Import(C,QPrintPreviewWidget_zoomFactor, "QPrintPreviewWidget_zoomFactor");

 function  QPrintPreviewWidget_orientation(handle: not null QPrintPreviewWidgetH) return QPrinterOrientation;
 pragma Import(C,QPrintPreviewWidget_orientation, "QPrintPreviewWidget_orientation");

 function  QPrintPreviewWidget_viewMode(handle: not null QPrintPreviewWidgetH) return QPrintPreviewWidgetViewMode;
 pragma Import(C,QPrintPreviewWidget_viewMode, "QPrintPreviewWidget_viewMode");

 function  QPrintPreviewWidget_zoomMode(handle: not null QPrintPreviewWidgetH) return QPrintPreviewWidgetZoomMode;
 pragma Import(C,QPrintPreviewWidget_zoomMode, "QPrintPreviewWidget_zoomMode");

 function  QPrintPreviewWidget_currentPage(handle: not null QPrintPreviewWidgetH) return integer;
 pragma Import(C,QPrintPreviewWidget_currentPage, "QPrintPreviewWidget_currentPage");

 function  QPrintPreviewWidget_pageCount(handle: not null QPrintPreviewWidgetH) return integer;
 pragma Import(C,QPrintPreviewWidget_pageCount, "QPrintPreviewWidget_pageCount");

 procedure QPrintPreviewWidget_setVisible(handle: not null QPrintPreviewWidgetH; visible:boolean);
 pragma Import(C,QPrintPreviewWidget_setVisible, "QPrintPreviewWidget_setVisible");

 procedure QPrintPreviewWidget_print(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_print, "QPrintPreviewWidget_print");

 procedure QPrintPreviewWidget_zoomIn(handle: not null QPrintPreviewWidgetH; zoom: float);
 pragma Import(C,QPrintPreviewWidget_zoomIn, "QPrintPreviewWidget_zoomIn");

 procedure QPrintPreviewWidget_zoomOut(handle: not null QPrintPreviewWidgetH; zoom: float);
 pragma Import(C,QPrintPreviewWidget_zoomOut, "QPrintPreviewWidget_zoomOut");

 procedure QPrintPreviewWidget_setZoomFactor(handle: not null QPrintPreviewWidgetH; zoomFactor: float);
 pragma Import(C,QPrintPreviewWidget_setZoomFactor, "QPrintPreviewWidget_setZoomFactor");

 procedure QPrintPreviewWidget_setOrientation(handle: not null QPrintPreviewWidgetH; orientation: QPrinterOrientation);
 pragma Import(C,QPrintPreviewWidget_setOrientation, "QPrintPreviewWidget_setOrientation");

 procedure QPrintPreviewWidget_setViewMode(handle: not null QPrintPreviewWidgetH; viewMode: QPrintPreviewWidgetViewMode);
 pragma Import(C,QPrintPreviewWidget_setViewMode, "QPrintPreviewWidget_setViewMode");

 procedure QPrintPreviewWidget_setZoomMode(handle: not null QPrintPreviewWidgetH; zoomMode: QPrintPreviewWidgetZoomMode);
 pragma Import(C,QPrintPreviewWidget_setZoomMode , "QPrintPreviewWidget_setZoomMode");

 procedure QPrintPreviewWidget_setCurrentPage(handle: not null QPrintPreviewWidgetH; pageNumber: integer);
 pragma Import(C,QPrintPreviewWidget_setCurrentPage, "QPrintPreviewWidget_setCurrentPage");

 procedure QPrintPreviewWidget_fitToWidth(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_fitToWidth, "QPrintPreviewWidget_fitToWidth");

 procedure QPrintPreviewWidget_fitInView(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_fitInView, "QPrintPreviewWidget_fitInView");

 procedure QPrintPreviewWidget_setLandscapeOrientation(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_setLandscapeOrientation, "QPrintPreviewWidget_setLandscapeOrientation");

 procedure QPrintPreviewWidget_setPortraitOrientation(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_setPortraitOrientation , "QPrintPreviewWidget_setPortraitOrientation");

 procedure QPrintPreviewWidget_setSinglePageViewMode(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_setSinglePageViewMode  , "QPrintPreviewWidget_setSinglePageViewMode");

 procedure QPrintPreviewWidget_setFacingPagesViewMode(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_setFacingPagesViewMode , "QPrintPreviewWidget_setFacingPagesViewMode");

 procedure QPrintPreviewWidget_setAllPagesViewMode(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_setAllPagesViewMode, "QPrintPreviewWidget_setAllPagesViewMode");

 procedure QPrintPreviewWidget_updatePreview(handle: not null QPrintPreviewWidgetH);
 pragma Import(C,QPrintPreviewWidget_updatePreview, "QPrintPreviewWidget_updatePreview");

 type QPrintPreviewWidget_paintRequestedEvent is access procedure(printer:QPrinterH);
 pragma Convention(C,QPrintPreviewWidget_paintRequestedEvent);

 type QPrintPreviewWidget_previewChangedEvent is access procedure;
 pragma Convention(C,QPrintPreviewWidget_previewChangedEvent);
 
 procedure QPrintPreviewWidget_signal_slot_paintRequested(handle: not null QPrintPreviewWidgetH; hook:QPrintPreviewWidget_paintRequestedEvent);
 pragma Import(C,QPrintPreviewWidget_signal_slot_paintRequested, "QPrintPreviewWidget_signal_slot_paintRequested");
 
 procedure QPrintPreviewWidget_signal_slot_previewChanged(handle: not null QPrintPreviewWidgetH; hook:QPrintPreviewWidget_previewChangedEvent);
 pragma Import(C,QPrintPreviewWidget_signal_slot_previewChanged, "QPrintPreviewWidget_signal_slot_previewChanged");
 
---------------------------------------------------------------------------------------------------------------------
 function  QPrintPreviewWidget_create(parent:QWidgetH; flags: quint) return QPrintPreviewWidgetH;

 end Qt.QPrintPreviewWidget;
