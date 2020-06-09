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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QSplitter            is

function QSplitter_create(parent: QWidgetH := null) return QSplitterH;    
pragma Import(C,QSplitter_create,"QSplitter_create");

procedure QSplitter_destroy(handle: not null  QSplitterH);   
pragma Import(C,QSplitter_destroy,"QSplitter_destroy");

function QSplitter_create2(p1: QtOrientation; parent: QWidgetH := null) return QSplitterH;
pragma Import(C,QSplitter_create2,"QSplitter_create2");

procedure QSplitter_addWidget(handle: not null  QSplitterH; widget: QWidgetH);   
pragma Import(C,QSplitter_addWidget,"QSplitter_addWidget");

procedure QSplitter_insertWidget(handle: not null  QSplitterH; index: Integer; widget: QWidgetH);   
pragma Import(C,QSplitter_insertWidget,"QSplitter_insertWidget");

procedure QSplitter_setOrientation(handle: not null  QSplitterH; p1: QtOrientation);   
pragma Import(C,QSplitter_setOrientation,"QSplitter_setOrientation");

function QSplitter_orientation(handle: not null  QSplitterH) return  QtOrientation;   
pragma Import(C,QSplitter_orientation,"QSplitter_orientation");

procedure QSplitter_setChildrenCollapsible(handle: not null  QSplitterH; p1: Boolean);   
pragma Import(C,QSplitter_setChildrenCollapsible,"QSplitter_setChildrenCollapsible");

function QSplitter_childrenCollapsible(handle: not null  QSplitterH) return  Boolean;   
pragma Import(C,QSplitter_childrenCollapsible,"QSplitter_childrenCollapsible");

procedure QSplitter_setCollapsible(handle: not null  QSplitterH; index: Integer; p2: Boolean);   
pragma Import(C,QSplitter_setCollapsible,"QSplitter_setCollapsible");

function QSplitter_isCollapsible(handle: not null  QSplitterH; index: Integer) return  Boolean;   
pragma Import(C,QSplitter_isCollapsible,"QSplitter_isCollapsible");

procedure QSplitter_setOpaqueResize(handle: not null  QSplitterH; opaque: Boolean := True);   
pragma Import(C,QSplitter_setOpaqueResize,"QSplitter_setOpaqueResize");

function QSplitter_opaqueResize(handle: not null  QSplitterH) return  Boolean;   
pragma Import(C,QSplitter_opaqueResize,"QSplitter_opaqueResize");

procedure QSplitter_refresh(handle: not null  QSplitterH);   
pragma Import(C,QSplitter_refresh,"QSplitter_refresh");

function  QSplitter_sizeHint(handle: not null  QSplitterH) return QSizeH;
pragma Import(C,QSplitter_sizeHint,"QSplitter_sizeHint");

function  QSplitter_minimumSizeHint(handle: not null  QSplitterH) return QSizeH;
pragma Import(C,QSplitter_minimumSizeHint,"QSplitter_minimumSizeHint");

function  QSplitter_sizes(handle: not null  QSplitterH) return QIntListH;
pragma Import(C,QSplitter_sizes,"QSplitter_sizes");

procedure QSplitter_setSizes(handle: not null  QSplitterH; list: QIntListH);   
pragma Import(C,QSplitter_setSizes,"QSplitter_setSizes");

function  QSplitter_saveState(handle: not null  QSplitterH) return QByteArrayH;
pragma Import(C,QSplitter_saveState,"QSplitter_saveState");

function QSplitter_restoreState(handle: not null  QSplitterH; state: QByteArrayH) return  Boolean;   
pragma Import(C,QSplitter_restoreState,"QSplitter_restoreState");

function QSplitter_handleWidth(handle: not null  QSplitterH) return  Integer;   
pragma Import(C,QSplitter_handleWidth,"QSplitter_handleWidth");

procedure QSplitter_setHandleWidth(handle: not null  QSplitterH; p1: Integer);   
pragma Import(C,QSplitter_setHandleWidth,"QSplitter_setHandleWidth");

function QSplitter_indexOf(handle: not null  QSplitterH; w: QWidgetH) return  Integer;   
pragma Import(C,QSplitter_indexOf,"QSplitter_indexOf");

function QSplitter_widget(handle: not null  QSplitterH; index: Integer) return  QWidgetH;   
pragma Import(C,QSplitter_widget,"QSplitter_widget");

function QSplitter_count(handle: not null  QSplitterH) return  Integer;   
pragma Import(C,QSplitter_count,"QSplitter_count");

procedure QSplitter_getRange(handle: not null  QSplitterH; index: Integer; p2: PInteger; p3: PInteger);   
pragma Import(C,QSplitter_getRange,"QSplitter_getRange");

function QSplitter_handle(handle: not null  QSplitterH; index: Integer) return  QSplitterHandleH;   
pragma Import(C,QSplitter_handle,"QSplitter_handle");

procedure QSplitter_setStretchFactor(handle: not null  QSplitterH; index: Integer; stretch: Integer);   
pragma Import(C,QSplitter_setStretchFactor,"QSplitter_setStretchFactor");
------------------------------------------------------------------------
function QSplitterHandle_create(o: QtOrientation; parent: QSplitterH) return  QSplitterHandleH;   
pragma Import(C,QSplitterHandle_create,"QSplitterHandle_create");

procedure QSplitterHandle_destroy(handle: not null  QSplitterHandleH);   
pragma Import(C,QSplitterHandle_destroy,"QSplitterHandle_destroy");

procedure QSplitterHandle_setOrientation(handle: not null  QSplitterHandleH; o: QtOrientation);   
pragma Import(C,QSplitterHandle_setOrientation,"QSplitterHandle_setOrientation");

function QSplitterHandle_orientation(handle: not null  QSplitterHandleH) return  QtOrientation;   
pragma Import(C,QSplitterHandle_orientation,"QSplitterHandle_orientation");

function QSplitterHandle_opaqueResize(handle: not null  QSplitterHandleH) return  Boolean;   
pragma Import(C,QSplitterHandle_opaqueResize,"QSplitterHandle_opaqueResize");

function QSplitterHandle_splitter(handle: not null  QSplitterHandleH) return  QSplitterH;   
pragma Import(C,QSplitterHandle_splitter,"QSplitterHandle_splitter");

function  QSplitterHandle_sizeHint(handle: not null  QSplitterHandleH) return QSizeH;
pragma Import(C,QSplitterHandle_sizeHint,"QSplitterHandle_sizeHint");

 type  QSplitter_splitterMovedEvent is access procedure (pos: Integer; index: Integer);
 pragma Convention(C,QSplitter_splitterMovedEvent);
 
 procedure QSplitter_signal_slot_splitterMoved(handle: not null QSplitterH; hook:QSplitter_splitterMovedEvent);
 pragma Import(C,QSplitter_signal_slot_splitterMoved, "QSplitter_signal_slot_splitterMoved");
 
-------------------------------------------------------------------------------------------------------------
function QSplitter_create(p1: QtOrientation; parent: QWidgetH := null) return QSplitterH;

end Qt.QSplitter;
