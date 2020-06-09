--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPainter; use Qt.QPainter;

package Qt.QDeclarativeView        is

subtype  QGraphicsSceneSceneLayer  is cardinal;
subtype  QGraphicsSceneSceneLayers is cardinal;

QGraphicsSceneItemLayer       : constant QGraphicsSceneSceneLayer := 16#1#;
QGraphicsSceneBackgroundLayer : constant QGraphicsSceneSceneLayer := 16#2#;
QGraphicsSceneForegroundLayer : constant QGraphicsSceneSceneLayer := 16#4#;
QGraphicsSceneAllLayers       : constant QGraphicsSceneSceneLayer := 16#ffff#;

subtype QGraphicsSceneItemIndexMethod is cardinal;

QGraphicsSceneBspTreeIndex : constant QGraphicsSceneItemIndexMethod := 0;
QGraphicsSceneNoIndex      : constant QGraphicsSceneItemIndexMethod := 16#ffffffff#;

type QDeclarativeViewViewportAnchor is (QDeclarativeViewNoAnchor, QDeclarativeViewAnchorViewCenter, QDeclarativeViewAnchorUnderMouse );
pragma Convention(C,QDeclarativeViewViewportAnchor);

type QDeclarativeViewDragMode is (QDeclarativeViewNoDrag, QDeclarativeViewScrollHandDrag, QDeclarativeViewRubberBandDrag );
pragma Convention(C,QDeclarativeViewDragMode);

type QDeclarativeViewViewportUpdateMode is (QDeclarativeViewFullViewportUpdate, QDeclarativeViewMinimalViewportUpdate, QDeclarativeViewSmartViewportUpdate, QDeclarativeViewNoViewportUpdate );
pragma Convention(C,QDeclarativeViewViewportUpdateMode);

subtype QDeclarativeViewCacheModeFlag  is cardinal;
subtype QDeclarativeViewCacheMode      is cardinal;

QDeclarativeViewCacheNone       : constant QDeclarativeViewCacheMode := 16#0#;
QDeclarativeViewCacheBackground : constant QDeclarativeViewCacheMode := 16#1#;

subtype QDeclarativeViewOptimizationFlag  is cardinal;
subtype QDeclarativeViewOptimizationFlags is cardinal;

QDeclarativeViewDontClipPainter           : constant QDeclarativeViewOptimizationFlag := 1;
QDeclarativeViewDontSavePainterState      : constant QDeclarativeViewOptimizationFlag := 2;
QDeclarativeViewDontAdjustForAntialiasing : constant QDeclarativeViewOptimizationFlag := 4;

function QDeclarativeView_create(parent: QWidgetH := null) return QDeclarativeViewH;    
pragma Import(C,QDeclarativeView_create,"QDeclarativeView_create");

procedure QDeclarativeView_destroy(handle: not null  QDeclarativeViewH);   
pragma Import(C,QDeclarativeView_destroy,"QDeclarativeView_destroy");

function QDeclarativeView_create2(url: QUrlH; parent: QWidgetH := null) return QDeclarativeViewH;
pragma Import(C,QDeclarativeView_create2,"QDeclarativeView_create2");

function  QDeclarativeView_sizeHint(handle: not null  QDeclarativeViewH) return QSizeH;
pragma Import(C,QDeclarativeView_sizeHint,"QDeclarativeView_sizeHint");

function QDeclarativeView_renderHints(handle: not null  QDeclarativeViewH) return  QPainterRenderHints;   
pragma Import(C,QDeclarativeView_renderHints,"QDeclarativeView_renderHints");

procedure QDeclarativeView_setRenderHint(handle: not null  QDeclarativeViewH; hint: QPainterRenderHint; enabled: Boolean := True);   
pragma Import(C,QDeclarativeView_setRenderHint,"QDeclarativeView_setRenderHint");

procedure QDeclarativeView_setRenderHints(handle: not null  QDeclarativeViewH; hints: QPainterRenderHints);   
pragma Import(C,QDeclarativeView_setRenderHints,"QDeclarativeView_setRenderHints");

function QDeclarativeView_alignment(handle: not null  QDeclarativeViewH) return  QtAlignment;   
pragma Import(C,QDeclarativeView_alignment,"QDeclarativeView_alignment");

procedure QDeclarativeView_setAlignment(handle: not null  QDeclarativeViewH; alignment: QtAlignment);   
pragma Import(C,QDeclarativeView_setAlignment,"QDeclarativeView_setAlignment");

function QDeclarativeView_transformationAnchor(handle: not null  QDeclarativeViewH) return  QDeclarativeViewViewportAnchor;   
pragma Import(C,QDeclarativeView_transformationAnchor,"QDeclarativeView_transformationAnchor");

procedure QDeclarativeView_setTransformationAnchor(handle: not null  QDeclarativeViewH; anchor: QDeclarativeViewViewportAnchor);   
pragma Import(C,QDeclarativeView_setTransformationAnchor,"QDeclarativeView_setTransformationAnchor");

function QDeclarativeView_resizeAnchor(handle: not null  QDeclarativeViewH) return  QDeclarativeViewViewportAnchor;   
pragma Import(C,QDeclarativeView_resizeAnchor,"QDeclarativeView_resizeAnchor");

procedure QDeclarativeView_setResizeAnchor(handle: not null  QDeclarativeViewH; anchor: QDeclarativeViewViewportAnchor);   
pragma Import(C,QDeclarativeView_setResizeAnchor,"QDeclarativeView_setResizeAnchor");

function QDeclarativeView_viewportUpdateMode(handle: not null  QDeclarativeViewH) return  QDeclarativeViewViewportUpdateMode;   
pragma Import(C,QDeclarativeView_viewportUpdateMode,"QDeclarativeView_viewportUpdateMode");

procedure QDeclarativeView_setViewportUpdateMode(handle: not null  QDeclarativeViewH; mode: QDeclarativeViewViewportUpdateMode);   
pragma Import(C,QDeclarativeView_setViewportUpdateMode,"QDeclarativeView_setViewportUpdateMode");

function QDeclarativeView_optimizationFlags(handle: not null  QDeclarativeViewH) return  QDeclarativeViewOptimizationFlags;   
pragma Import(C,QDeclarativeView_optimizationFlags,"QDeclarativeView_optimizationFlags");

procedure QDeclarativeView_setOptimizationFlag(handle: not null  QDeclarativeViewH; flag: QDeclarativeViewOptimizationFlag; enabled: Boolean := True);   
pragma Import(C,QDeclarativeView_setOptimizationFlag,"QDeclarativeView_setOptimizationFlag");

procedure QDeclarativeView_setOptimizationFlags(handle: not null  QDeclarativeViewH; flags: QDeclarativeViewOptimizationFlags);   
pragma Import(C,QDeclarativeView_setOptimizationFlags,"QDeclarativeView_setOptimizationFlags");

function QDeclarativeView_dragMode(handle: not null  QDeclarativeViewH) return  QDeclarativeViewDragMode;   
pragma Import(C,QDeclarativeView_dragMode,"QDeclarativeView_dragMode");

procedure QDeclarativeView_setDragMode(handle: not null  QDeclarativeViewH; mode: QDeclarativeViewDragMode);   
pragma Import(C,QDeclarativeView_setDragMode,"QDeclarativeView_setDragMode");

function QDeclarativeView_rubberBandSelectionMode(handle: not null  QDeclarativeViewH) return  QtItemSelectionMode;   
pragma Import(C,QDeclarativeView_rubberBandSelectionMode,"QDeclarativeView_rubberBandSelectionMode");

procedure QDeclarativeView_setRubberBandSelectionMode(handle: not null  QDeclarativeViewH; mode: QtItemSelectionMode);   
pragma Import(C,QDeclarativeView_setRubberBandSelectionMode,"QDeclarativeView_setRubberBandSelectionMode");

function QDeclarativeView_cacheMode(handle: not null  QDeclarativeViewH) return  QDeclarativeViewCacheMode;   
pragma Import(C,QDeclarativeView_cacheMode,"QDeclarativeView_cacheMode");

procedure QDeclarativeView_setCacheMode(handle: not null  QDeclarativeViewH; mode: QDeclarativeViewCacheMode);   
pragma Import(C,QDeclarativeView_setCacheMode,"QDeclarativeView_setCacheMode");

procedure QDeclarativeView_resetCachedContent(handle: not null  QDeclarativeViewH);   
pragma Import(C,QDeclarativeView_resetCachedContent,"QDeclarativeView_resetCachedContent");

function QDeclarativeView_isInteractive(handle: not null  QDeclarativeViewH) return  Boolean;   
pragma Import(C,QDeclarativeView_isInteractive,"QDeclarativeView_isInteractive");

procedure QDeclarativeView_setInteractive(handle: not null  QDeclarativeViewH; allowed: Boolean);   
pragma Import(C,QDeclarativeView_setInteractive,"QDeclarativeView_setInteractive");

function QDeclarativeView_scene(handle: not null  QDeclarativeViewH) return  QGraphicsSceneH;   
pragma Import(C,QDeclarativeView_scene,"QDeclarativeView_scene");

procedure QDeclarativeView_setScene(handle: not null  QDeclarativeViewH; scene: QGraphicsSceneH);   
pragma Import(C,QDeclarativeView_setScene,"QDeclarativeView_setScene");

function  QDeclarativeView_sceneRect(handle: not null  QDeclarativeViewH) return QRectFH;
pragma Import(C,QDeclarativeView_sceneRect,"QDeclarativeView_sceneRect");

procedure QDeclarativeView_setSceneRect(handle: not null  QDeclarativeViewH; rect: QRectFH);    
pragma Import(C,QDeclarativeView_setSceneRect,"QDeclarativeView_setSceneRect");

procedure QDeclarativeView_setSceneRect2(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double);
pragma Import(C,QDeclarativeView_setSceneRect2,"QDeclarativeView_setSceneRect2");

function  QDeclarativeView_matrix(handle: not null  QDeclarativeViewH) return QMatrixH;
pragma Import(C,QDeclarativeView_matrix,"QDeclarativeView_matrix");

procedure QDeclarativeView_setMatrix(handle: not null  QDeclarativeViewH; matrix: QMatrixH; combine: Boolean := False);   
pragma Import(C,QDeclarativeView_setMatrix,"QDeclarativeView_setMatrix");

procedure QDeclarativeView_resetMatrix(handle: not null  QDeclarativeViewH);   
pragma Import(C,QDeclarativeView_resetMatrix,"QDeclarativeView_resetMatrix");

function  QDeclarativeView_transform(handle: not null  QDeclarativeViewH) return QTransformH;
pragma Import(C,QDeclarativeView_transform,"QDeclarativeView_transform");

function  QDeclarativeView_viewportTransform(handle: not null  QDeclarativeViewH) return QTransformH;
pragma Import(C,QDeclarativeView_viewportTransform,"QDeclarativeView_viewportTransform");

procedure QDeclarativeView_setTransform(handle: not null  QDeclarativeViewH; matrix: QTransformH; combine: Boolean := False);   
pragma Import(C,QDeclarativeView_setTransform,"QDeclarativeView_setTransform");

procedure QDeclarativeView_resetTransform(handle: not null  QDeclarativeViewH);   
pragma Import(C,QDeclarativeView_resetTransform,"QDeclarativeView_resetTransform");

procedure QDeclarativeView_rotate(handle: not null  QDeclarativeViewH; angle: Double);   
pragma Import(C,QDeclarativeView_rotate,"QDeclarativeView_rotate");

procedure QDeclarativeView_scale(handle: not null  QDeclarativeViewH; sx: Double; sy: Double);   
pragma Import(C,QDeclarativeView_scale,"QDeclarativeView_scale");

procedure QDeclarativeView_shear(handle: not null  QDeclarativeViewH; sh: Double; sv: Double);   
pragma Import(C,QDeclarativeView_shear,"QDeclarativeView_shear");

procedure QDeclarativeView_translate(handle: not null  QDeclarativeViewH; dx: Double; dy: Double);   
pragma Import(C,QDeclarativeView_translate,"QDeclarativeView_translate");

procedure QDeclarativeView_centerOn(handle: not null  QDeclarativeViewH; pos: QPointFH);    
pragma Import(C,QDeclarativeView_centerOn,"QDeclarativeView_centerOn");

procedure QDeclarativeView_show(handle: not null  QDeclarativeViewH);
pragma Import(C,QDeclarativeView_show,"QDeclarativeView_show");

procedure QDeclarativeView_centerOn2(handle: not null  QDeclarativeViewH; x: Double; y: Double);
pragma Import(C,QDeclarativeView_centerOn2,"QDeclarativeView_centerOn2");

procedure QDeclarativeView_centerOn3(handle: not null  QDeclarativeViewH; item: QGraphicsItemH);
pragma Import(C,QDeclarativeView_centerOn3,"QDeclarativeView_centerOn3");

procedure QDeclarativeView_ensureVisible(handle: not null  QDeclarativeViewH; rect: QRectFH; xmargin: Integer := 50; ymargin: Integer := 50);    
pragma Import(C,QDeclarativeView_ensureVisible,"QDeclarativeView_ensureVisible");

procedure QDeclarativeView_ensureVisible2(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double; xmargin: Integer := 50; ymargin: Integer := 50);
pragma Import(C,QDeclarativeView_ensureVisible2,"QDeclarativeView_ensureVisible2");

procedure QDeclarativeView_ensureVisible3(handle: not null  QDeclarativeViewH; item: QGraphicsItemH; xmargin: Integer := 50; ymargin: Integer := 50);
pragma Import(C,QDeclarativeView_ensureVisible3,"QDeclarativeView_ensureVisible3");

procedure QDeclarativeView_fitInView(handle: not null  QDeclarativeViewH; rect: QRectFH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);    
pragma Import(C,QDeclarativeView_fitInView,"QDeclarativeView_fitInView");

procedure QDeclarativeView_fitInView2(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
pragma Import(C,QDeclarativeView_fitInView2,"QDeclarativeView_fitInView2");

procedure QDeclarativeView_fitInView3(handle: not null  QDeclarativeViewH; item: QGraphicsItemH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
pragma Import(C,QDeclarativeView_fitInView3,"QDeclarativeView_fitInView3");

procedure QDeclarativeView_render(handle: not null  QDeclarativeViewH; painter: QPainterH; target: QRectFH := null; source: QRectH := null; aspectRatioMode: QtAspectRatioMode := QtKeepAspectRatio);   
pragma Import(C,QDeclarativeView_render,"QDeclarativeView_render");

function QDeclarativeView_itemAt(handle: not null  QDeclarativeViewH; pos: QPointH) return  QGraphicsItemH;    
pragma Import(C,QDeclarativeView_itemAt,"QDeclarativeView_itemAt");

function QDeclarativeView_itemAt2(handle: not null  QDeclarativeViewH; x: Integer; y: Integer) return  QGraphicsItemH;
pragma Import(C,QDeclarativeView_itemAt2,"QDeclarativeView_itemAt2");

function  QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; point: QPointH) return QPointFH;
pragma Import(C,QDeclarativeView_mapToScene,"QDeclarativeView_mapToScene");

function  QDeclarativeView_mapToScene2(handle: not null  QDeclarativeViewH; rect: QRectH) return QPolygonFH;
pragma Import(C,QDeclarativeView_mapToScene2,"QDeclarativeView_mapToScene2");

function  QDeclarativeView_mapToScene3(handle: not null  QDeclarativeViewH; polygon: QPolygonH) return QPolygonFH;
pragma Import(C,QDeclarativeView_mapToScene3,"QDeclarativeView_mapToScene3");

function  QDeclarativeView_mapToScene4(handle: not null  QDeclarativeViewH; path: QPainterPathH) return QPainterPathH;
pragma Import(C,QDeclarativeView_mapToScene4,"QDeclarativeView_mapToScene4");

function  QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; point: QPointFH) return QPointH;
pragma Import(C,QDeclarativeView_mapFromScene,"QDeclarativeView_mapFromScene");

function  QDeclarativeView_mapFromScene2(handle: not null  QDeclarativeViewH; rect: QRectFH) return QPolygonH;
pragma Import(C,QDeclarativeView_mapFromScene2,"QDeclarativeView_mapFromScene2");

function  QDeclarativeView_mapFromScene3(handle: not null  QDeclarativeViewH; polygon: QPolygonFH) return QPolygonH;
pragma Import(C,QDeclarativeView_mapFromScene3,"QDeclarativeView_mapFromScene3");

function  QDeclarativeView_mapFromScene4(handle: not null  QDeclarativeViewH; path: QPainterPathH) return QPainterPathH;
pragma Import(C,QDeclarativeView_mapFromScene4,"QDeclarativeView_mapFromScene4");

function  QDeclarativeView_mapToScene5(handle: not null  QDeclarativeViewH; x: Integer; y: Integer) return QPointFH;
pragma Import(C,QDeclarativeView_mapToScene5,"QDeclarativeView_mapToScene5");

function  QDeclarativeView_mapToScene6(handle: not null  QDeclarativeViewH; x: Integer; y: Integer; w: Integer; h: Integer) return QPolygonFH;
pragma Import(C,QDeclarativeView_mapToScene6,"QDeclarativeView_mapToScene6");

function  QDeclarativeView_mapFromScene5(handle: not null  QDeclarativeViewH; x: Double; y: Double) return QPointH;
pragma Import(C,QDeclarativeView_mapFromScene5,"QDeclarativeView_mapFromScene5");

function  QDeclarativeView_mapFromScene6(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double) return QPolygonH;
pragma Import(C,QDeclarativeView_mapFromScene6,"QDeclarativeView_mapFromScene6");

function  QDeclarativeView_inputMethodQuery(handle: not null  QDeclarativeViewH; query: QtInputMethodQuery) return QVariantH;
pragma Import(C,QDeclarativeView_inputMethodQuery,"QDeclarativeView_inputMethodQuery");

function  QDeclarativeView_backgroundBrush(handle: not null  QDeclarativeViewH) return QBrushH;
pragma Import(C,QDeclarativeView_backgroundBrush,"QDeclarativeView_backgroundBrush");

procedure QDeclarativeView_setBackgroundBrush(handle: not null  QDeclarativeViewH; brush: QBrushH);   
pragma Import(C,QDeclarativeView_setBackgroundBrush,"QDeclarativeView_setBackgroundBrush");

function  QDeclarativeView_foregroundBrush(handle: not null  QDeclarativeViewH) return QBrushH;
pragma Import(C,QDeclarativeView_foregroundBrush,"QDeclarativeView_foregroundBrush");

procedure QDeclarativeView_setForegroundBrush(handle: not null  QDeclarativeViewH; brush: QBrushH);   
pragma Import(C,QDeclarativeView_setForegroundBrush,"QDeclarativeView_setForegroundBrush");

procedure QDeclarativeView_invalidateScene(handle: not null  QDeclarativeViewH; rect: QRectFH := null; layers: QGraphicsSceneSceneLayers := QGraphicsSceneAllLayers);   
pragma Import(C,QDeclarativeView_invalidateScene,"QDeclarativeView_invalidateScene");

procedure QDeclarativeView_updateSceneRect(handle: not null  QDeclarativeViewH; rect: QRectFH);   
pragma Import(C,QDeclarativeView_updateSceneRect,"QDeclarativeView_updateSceneRect");

procedure QDeclarativeView_mousePressEvent(handle: not null QDeclarativeViewH;event:QMouseEventH);
pragma Import(C,QDeclarativeView_mousePressEvent, "QDeclarativeView_mousePressEvent");

procedure QDeclarativeView_mouseDoubleClickEvent(handle: not null QDeclarativeViewH;event:QMouseEventH);
pragma Import(C,QDeclarativeView_mouseDoubleClickEvent, "QDeclarativeView_mouseDoubleClickEvent");

procedure QDeclarativeView_mouseReleaseEvent(handle: not null QDeclarativeViewH;event:QMouseEventH);
pragma Import(C,QDeclarativeView_mouseReleaseEvent, "QDeclarativeView_mouseReleaseEvent");

procedure QDeclarativeView_mouseMoveEvent(handle: not null QDeclarativeViewH;event:QMouseEventH);
pragma Import(C,QDeclarativeView_mouseMoveEvent, "QDeclarativeView_mouseMoveEvent");

procedure QDeclarativeView_wheelEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_wheelEvent, "QDeclarativeView_wheelEvent");

procedure QDeclarativeView_keyPressEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_keyPressEvent, "QDeclarativeView_keyPressEvent");

procedure QDeclarativeView_keyReleaseEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_keyReleaseEvent, "QDeclarativeView_keyReleaseEvent");

procedure QDeclarativeView_contextMenuEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_contextMenuEvent, "QDeclarativeView_contextMenuEvent");

procedure QDeclarativeView_dragEnterEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_dragEnterEvent, "QDeclarativeView_dragEnterEvent");

procedure QDeclarativeView_dragLeaveEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_dragLeaveEvent, "QDeclarativeView_dragLeaveEvent");

procedure QDeclarativeView_dragMoveEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_dragMoveEvent, "QDeclarativeView_dragMoveEvent");

procedure QDeclarativeView_dropEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_dropEvent, "QDeclarativeView_dropEvent");

procedure QDeclarativeView_focusInEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_focusInEvent, "QDeclarativeView_focusInEvent");

procedure QDeclarativeView_focusOutEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_focusOutEvent, "QDeclarativeView_focusOutEvent");

procedure QDeclarativeView_inputMethodEvent(handle: not null QDeclarativeViewH;event:QEventH);
pragma Import(C,QDeclarativeView_inputMethodEvent, "QDeclarativeView_inputMethodEvent");

function  QDeclarativeView_focusNextPrevChild(handle: not null QDeclarativeViewH; next:boolean) return boolean;
pragma Import(C,QDeclarativeView_focusNextPrevChild, "QDeclarativeView_focusNextPrevChild");


type QGraphicsScene_updateViewRectEvent is access procedure (rect: QRectFH);
pragma Convention(C,QGraphicsScene_updateViewRectEvent);

type QGraphicsScene_invalidateViewEvent is access procedure (rect: QRectFH; p:integer);
pragma Convention(C,QGraphicsScene_invalidateViewEvent);

 procedure QDeclarativeView_signal_slot_updateViewRect(handle: not null QDeclarativeViewH; hook:QGraphicsScene_updateViewRectEvent);
 pragma Import(C,QDeclarativeView_signal_slot_updateViewRect, "QDeclarativeView_signal_slot_updateViewRect");
 
 procedure QDeclarativeView_signal_slot_invalidateView(handle: not null QDeclarativeViewH; hook:QGraphicsScene_invalidateViewEvent);
 pragma Import(C,QDeclarativeView_signal_slot_invalidateView, "QDeclarativeView_signal_slot_invalidateView");

 function  QDeclarativeView_source(handle: not null QDeclarativeViewH) return QUrlH;
 pragma Import(C,QDeclarativeView_source, "QDeclarativeView_source");
 
 procedure QDeclarativeView_setSource(handle: not null QDeclarativeViewH;url: QUrlH);
 pragma Import(C,QDeclarativeView_setSource, "QDeclarativeView_setSource");
 
 function  QDeclarativeView_engine(handle: not null QDeclarativeViewH) return QDeclarativeEngineH;
 pragma Import(C,QDeclarativeView_engine, "QDeclarativeView_engine");
 
 function  QDeclarativeView_rootContext(handle: not null QDeclarativeViewH) return QDeclarativeContextH;
 pragma Import(C,QDeclarativeView_rootContext, "QDeclarativeView_rootContext");
 
 function  QDeclarativeView_rootObject(handle: not null QDeclarativeViewH) return QGraphicsObjectH;
 pragma Import(C,QDeclarativeView_rootObject, "QDeclarativeView_rootObject");
 
 function  QDeclarativeView_resizeMode(handle: not null QDeclarativeViewH) return integer;
 pragma Import(C,QDeclarativeView_resizeMode, "QDeclarativeView_resizeMode");
 
 SizeViewToRootObject :constant := 0; 
 SizeRootObjectToView :constant := 1;  

 procedure QDeclarativeView_setResizeMode(handle: not null QDeclarativeViewH;mode:integer) with pre => mode in SizeViewToRootObject .. SizeRootObjectToView;
 pragma Import(C,QDeclarativeView_setResizeMode, "QDeclarativeView_setResizeMode");
 
 type Status is (Null_Status, Ready_Status, Loading_Status, Error_Status);
 pragma Convention(C,Status);

 function  QDeclarativeView_status(handle: not null QDeclarativeViewH) return integer;
 pragma Import(C,QDeclarativeView_status, "QDeclarativeView_status");
 
 function  QDeclarativeView_errors(handle: not null QDeclarativeViewH) return QStringListH;
 pragma Import(C,QDeclarativeView_errors, "QDeclarativeView_errors");
 
 function  QDeclarativeView_initialSize(handle: not null QDeclarativeViewH) return QSizeH;
 pragma Import(C,QDeclarativeView_initialSize, "QDeclarativeView_initialSize");
 
------------------------------------------------------------------
function QDeclarativeView_create(url: QUrlH; parent: QWidgetH := null) return QDeclarativeViewH;
procedure QDeclarativeView_setSceneRect(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double);
procedure QDeclarativeView_centerOn(handle: not null  QDeclarativeViewH; x: Double; y: Double);
procedure QDeclarativeView_centerOn(handle: not null  QDeclarativeViewH; item: QGraphicsItemH);
procedure QDeclarativeView_ensureVisible(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double; xmargin: Integer := 50; ymargin: Integer := 50);
procedure QDeclarativeView_ensureVisible(handle: not null  QDeclarativeViewH; item: QGraphicsItemH; xmargin: Integer := 50; ymargin: Integer := 50);
procedure QDeclarativeView_fitInView(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
procedure QDeclarativeView_fitInView(handle: not null  QDeclarativeViewH; item: QGraphicsItemH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
function QDeclarativeView_itemAt(handle: not null  QDeclarativeViewH; x: Integer; y: Integer) return  QGraphicsItemH;
function  QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; rect: QRectH) return QPolygonFH;
function QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; polygon: QPolygonH) return QPolygonFH;                                                                                                                                                                                                                                                                                                                                                                                                                               
function QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; path: QPainterPathH) return QPainterPathH;                                                                                                                                                                                                                                                                                                                                                                                                                           
function QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; rect: QRectFH) return QPolygonH;                                                                                                                                                                                                                                                                                                                                                                                                                                   
function QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; polygon: QPolygonFH) return QPolygonH;                                                                                                                                                                                                                                                                                                                                                                                                                             
function QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; path: QPainterPathH) return QPainterPathH;                                                                                                                                                                                                                                                                                                                                                                                                                         
function QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; x: Integer; y: Integer) return QPointFH;                                                                                                                                                                                                                                                                                                                                                                                                                             
function QDeclarativeView_mapToScene(handle: not null  QDeclarativeViewH; x: Integer; y: Integer; w: Integer; h: Integer) return QPolygonFH;                                                                                                                                                                                                                                                                                                                                                                                                   
function QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; x: Double; y: Double) return QPointH;                                                                                                                                                                                                                                                                                                                                                                                                                              
function QDeclarativeView_mapFromScene(handle: not null  QDeclarativeViewH; x: Double; y: Double; w: Double; h: Double) return QPolygonH;                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
end Qt.QDeclarativeView;
