--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QPainter; use Qt.QPainter;
package Qt.QGraphics            is

subtype  QGraphicsSceneSceneLayer  is cardinal;
subtype  QGraphicsSceneSceneLayers is cardinal;

QGraphicsSceneItemLayer       : constant QGraphicsSceneSceneLayer := 16#1#;
QGraphicsSceneBackgroundLayer : constant QGraphicsSceneSceneLayer := 16#2#;
QGraphicsSceneForegroundLayer : constant QGraphicsSceneSceneLayer := 16#4#;
QGraphicsSceneAllLayers       : constant QGraphicsSceneSceneLayer := 16#ffff#;

type QGraphicsViewViewportAnchor is (QGraphicsViewNoAnchor, QGraphicsViewAnchorViewCenter, QGraphicsViewAnchorUnderMouse );
pragma Convention(C,QGraphicsViewViewportAnchor);

type QGraphicsViewDragMode is (QGraphicsViewNoDrag, QGraphicsViewScrollHandDrag, QGraphicsViewRubberBandDrag );
pragma Convention(C,QGraphicsViewDragMode);

type QGraphicsViewViewportUpdateMode is (QGraphicsViewFullViewportUpdate, QGraphicsViewMinimalViewportUpdate, QGraphicsViewSmartViewportUpdate, QGraphicsViewNoViewportUpdate );
pragma Convention(C,QGraphicsViewViewportUpdateMode);

subtype QGraphicsViewCacheModeFlag  is cardinal;
subtype QGraphicsViewCacheMode      is cardinal;

QGraphicsViewCacheNone       : constant QGraphicsViewCacheMode := 16#0#;
QGraphicsViewCacheBackground : constant QGraphicsViewCacheMode := 16#1#;

subtype QGraphicsViewOptimizationFlag  is cardinal;
subtype QGraphicsViewOptimizationFlags is cardinal;

QGraphicsViewDontClipPainter           : constant QGraphicsViewOptimizationFlag := 1;
QGraphicsViewDontSavePainterState      : constant QGraphicsViewOptimizationFlag := 2;
QGraphicsViewDontAdjustForAntialiasing : constant QGraphicsViewOptimizationFlag := 4;

function QGraphicsView_create(parent: QWidgetH := null) return QGraphicsViewH;    
pragma Import(C,QGraphicsView_create,"QGraphicsView_create");

procedure QGraphicsView_destroy(handle: not null  QGraphicsViewH);   
pragma Import(C,QGraphicsView_destroy,"QGraphicsView_destroy");

function QGraphicsView_create2(scene: QGraphicsSceneH; parent: QWidgetH := null) return QGraphicsViewH;
pragma Import(C,QGraphicsView_create2,"QGraphicsView_create2");

function  QGraphicsView_sizeHint(handle: not null  QGraphicsViewH) return QSizeH;
pragma Import(C,QGraphicsView_sizeHint,"QGraphicsView_sizeHint");

function QGraphicsView_renderHints(handle: not null  QGraphicsViewH) return  QPainterRenderHints;   
pragma Import(C,QGraphicsView_renderHints,"QGraphicsView_renderHints");

procedure QGraphicsView_setRenderHint(handle: not null  QGraphicsViewH; hint: QPainterRenderHint; enabled: Boolean := True);   
pragma Import(C,QGraphicsView_setRenderHint,"QGraphicsView_setRenderHint");

procedure QGraphicsView_setRenderHints(handle: not null  QGraphicsViewH; hints: QPainterRenderHints);   
pragma Import(C,QGraphicsView_setRenderHints,"QGraphicsView_setRenderHints");

function QGraphicsView_alignment(handle: not null  QGraphicsViewH) return  QtAlignment;   
pragma Import(C,QGraphicsView_alignment,"QGraphicsView_alignment");

procedure QGraphicsView_setAlignment(handle: not null  QGraphicsViewH; alignment: QtAlignment);   
pragma Import(C,QGraphicsView_setAlignment,"QGraphicsView_setAlignment");

function QGraphicsView_transformationAnchor(handle: not null  QGraphicsViewH) return  QGraphicsViewViewportAnchor;   
pragma Import(C,QGraphicsView_transformationAnchor,"QGraphicsView_transformationAnchor");

procedure QGraphicsView_setTransformationAnchor(handle: not null  QGraphicsViewH; anchor: QGraphicsViewViewportAnchor);   
pragma Import(C,QGraphicsView_setTransformationAnchor,"QGraphicsView_setTransformationAnchor");

function QGraphicsView_resizeAnchor(handle: not null  QGraphicsViewH) return  QGraphicsViewViewportAnchor;   
pragma Import(C,QGraphicsView_resizeAnchor,"QGraphicsView_resizeAnchor");

procedure QGraphicsView_setResizeAnchor(handle: not null  QGraphicsViewH; anchor: QGraphicsViewViewportAnchor);   
pragma Import(C,QGraphicsView_setResizeAnchor,"QGraphicsView_setResizeAnchor");

function QGraphicsView_viewportUpdateMode(handle: not null  QGraphicsViewH) return  QGraphicsViewViewportUpdateMode;   
pragma Import(C,QGraphicsView_viewportUpdateMode,"QGraphicsView_viewportUpdateMode");

procedure QGraphicsView_setViewportUpdateMode(handle: not null  QGraphicsViewH; mode: QGraphicsViewViewportUpdateMode);   
pragma Import(C,QGraphicsView_setViewportUpdateMode,"QGraphicsView_setViewportUpdateMode");

function QGraphicsView_optimizationFlags(handle: not null  QGraphicsViewH) return  QGraphicsViewOptimizationFlags;   
pragma Import(C,QGraphicsView_optimizationFlags,"QGraphicsView_optimizationFlags");

procedure QGraphicsView_setOptimizationFlag(handle: not null  QGraphicsViewH; flag: QGraphicsViewOptimizationFlag; enabled: Boolean := True);   
pragma Import(C,QGraphicsView_setOptimizationFlag,"QGraphicsView_setOptimizationFlag");

procedure QGraphicsView_setOptimizationFlags(handle: not null  QGraphicsViewH; flags: QGraphicsViewOptimizationFlags);   
pragma Import(C,QGraphicsView_setOptimizationFlags,"QGraphicsView_setOptimizationFlags");

function QGraphicsView_dragMode(handle: not null  QGraphicsViewH) return  QGraphicsViewDragMode;   
pragma Import(C,QGraphicsView_dragMode,"QGraphicsView_dragMode");

procedure QGraphicsView_setDragMode(handle: not null  QGraphicsViewH; mode: QGraphicsViewDragMode);   
pragma Import(C,QGraphicsView_setDragMode,"QGraphicsView_setDragMode");

function QGraphicsView_rubberBandSelectionMode(handle: not null  QGraphicsViewH) return  QtItemSelectionMode;   
pragma Import(C,QGraphicsView_rubberBandSelectionMode,"QGraphicsView_rubberBandSelectionMode");

procedure QGraphicsView_setRubberBandSelectionMode(handle: not null  QGraphicsViewH; mode: QtItemSelectionMode);   
pragma Import(C,QGraphicsView_setRubberBandSelectionMode,"QGraphicsView_setRubberBandSelectionMode");

function QGraphicsView_cacheMode(handle: not null  QGraphicsViewH) return  QGraphicsViewCacheMode;   
pragma Import(C,QGraphicsView_cacheMode,"QGraphicsView_cacheMode");

procedure QGraphicsView_setCacheMode(handle: not null  QGraphicsViewH; mode: QGraphicsViewCacheMode);   
pragma Import(C,QGraphicsView_setCacheMode,"QGraphicsView_setCacheMode");

procedure QGraphicsView_resetCachedContent(handle: not null  QGraphicsViewH);   
pragma Import(C,QGraphicsView_resetCachedContent,"QGraphicsView_resetCachedContent");

function QGraphicsView_isInteractive(handle: not null  QGraphicsViewH) return  Boolean;   
pragma Import(C,QGraphicsView_isInteractive,"QGraphicsView_isInteractive");

procedure QGraphicsView_setInteractive(handle: not null  QGraphicsViewH; allowed: Boolean);   
pragma Import(C,QGraphicsView_setInteractive,"QGraphicsView_setInteractive");

function QGraphicsView_scene(handle: not null  QGraphicsViewH) return  QGraphicsSceneH;   
pragma Import(C,QGraphicsView_scene,"QGraphicsView_scene");

procedure QGraphicsView_setScene(handle: not null  QGraphicsViewH; scene: QGraphicsSceneH);   
pragma Import(C,QGraphicsView_setScene,"QGraphicsView_setScene");

function  QGraphicsView_sceneRect(handle: not null  QGraphicsViewH) return QRectFH;
pragma Import(C,QGraphicsView_sceneRect,"QGraphicsView_sceneRect");

procedure QGraphicsView_setSceneRect(handle: not null  QGraphicsViewH; rect: QRectFH);    
pragma Import(C,QGraphicsView_setSceneRect,"QGraphicsView_setSceneRect");

procedure QGraphicsView_setSceneRect2(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double);
pragma Import(C,QGraphicsView_setSceneRect2,"QGraphicsView_setSceneRect2");

function  QGraphicsView_matrix(handle: not null  QGraphicsViewH) return QMatrixH;
pragma Import(C,QGraphicsView_matrix,"QGraphicsView_matrix");

procedure QGraphicsView_setMatrix(handle: not null  QGraphicsViewH; matrix: QMatrixH; combine: Boolean := False);   
pragma Import(C,QGraphicsView_setMatrix,"QGraphicsView_setMatrix");

procedure QGraphicsView_resetMatrix(handle: not null  QGraphicsViewH);   
pragma Import(C,QGraphicsView_resetMatrix,"QGraphicsView_resetMatrix");

function  QGraphicsView_transform(handle: not null  QGraphicsViewH) return QTransformH;
pragma Import(C,QGraphicsView_transform,"QGraphicsView_transform");

function  QGraphicsView_viewportTransform(handle: not null  QGraphicsViewH) return QTransformH;
pragma Import(C,QGraphicsView_viewportTransform,"QGraphicsView_viewportTransform");

procedure QGraphicsView_setTransform(handle: not null  QGraphicsViewH; matrix: QTransformH; combine: Boolean := False);   
pragma Import(C,QGraphicsView_setTransform,"QGraphicsView_setTransform");

procedure QGraphicsView_resetTransform(handle: not null  QGraphicsViewH);   
pragma Import(C,QGraphicsView_resetTransform,"QGraphicsView_resetTransform");

procedure QGraphicsView_rotate(handle: not null  QGraphicsViewH; angle: Double);   
pragma Import(C,QGraphicsView_rotate,"QGraphicsView_rotate");

procedure QGraphicsView_scale(handle: not null  QGraphicsViewH; sx: Double; sy: Double);   
pragma Import(C,QGraphicsView_scale,"QGraphicsView_scale");

procedure QGraphicsView_shear(handle: not null  QGraphicsViewH; sh: Double; sv: Double);   
pragma Import(C,QGraphicsView_shear,"QGraphicsView_shear");

procedure QGraphicsView_translate(handle: not null  QGraphicsViewH; dx: Double; dy: Double);   
pragma Import(C,QGraphicsView_translate,"QGraphicsView_translate");

procedure QGraphicsView_centerOn(handle: not null  QGraphicsViewH; pos: QPointFH);    
pragma Import(C,QGraphicsView_centerOn,"QGraphicsView_centerOn");

procedure QGraphicsView_centerOn2(handle: not null  QGraphicsViewH; x: Double; y: Double);
pragma Import(C,QGraphicsView_centerOn2,"QGraphicsView_centerOn2");

procedure QGraphicsView_centerOn3(handle: not null  QGraphicsViewH; item: QGraphicsItemH);
pragma Import(C,QGraphicsView_centerOn3,"QGraphicsView_centerOn3");

procedure QGraphicsView_ensureVisible(handle: not null  QGraphicsViewH; rect: QRectFH; xmargin: Integer := 50; ymargin: Integer := 50);    
pragma Import(C,QGraphicsView_ensureVisible,"QGraphicsView_ensureVisible");

procedure QGraphicsView_ensureVisible2(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double; xmargin: Integer := 50; ymargin: Integer := 50);
pragma Import(C,QGraphicsView_ensureVisible2,"QGraphicsView_ensureVisible2");

procedure QGraphicsView_ensureVisible3(handle: not null  QGraphicsViewH; item: QGraphicsItemH; xmargin: Integer := 50; ymargin: Integer := 50);
pragma Import(C,QGraphicsView_ensureVisible3,"QGraphicsView_ensureVisible3");

procedure QGraphicsView_fitInView(handle: not null  QGraphicsViewH; rect: QRectFH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);    
pragma Import(C,QGraphicsView_fitInView,"QGraphicsView_fitInView");

procedure QGraphicsView_fitInView2(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
pragma Import(C,QGraphicsView_fitInView2,"QGraphicsView_fitInView2");

procedure QGraphicsView_fitInView3(handle: not null  QGraphicsViewH; item: QGraphicsItemH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
pragma Import(C,QGraphicsView_fitInView3,"QGraphicsView_fitInView3");

procedure QGraphicsView_render(handle: not null  QGraphicsViewH; painter: QPainterH; target: QRectFH := null; source: QRectH := null; aspectRatioMode: QtAspectRatioMode := QtKeepAspectRatio);   
pragma Import(C,QGraphicsView_render,"QGraphicsView_render");

function QGraphicsView_itemAt(handle: not null  QGraphicsViewH; pos: QPointH) return  QGraphicsItemH;    
pragma Import(C,QGraphicsView_itemAt,"QGraphicsView_itemAt");

function QGraphicsView_itemAt2(handle: not null  QGraphicsViewH; x: Integer; y: Integer) return  QGraphicsItemH;
pragma Import(C,QGraphicsView_itemAt2,"QGraphicsView_itemAt2");

function  QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; point: QPointH) return QPointFH;
pragma Import(C,QGraphicsView_mapToScene,"QGraphicsView_mapToScene");

function  QGraphicsView_mapToScene2(handle: not null  QGraphicsViewH; rect: QRectH) return QPolygonFH;
pragma Import(C,QGraphicsView_mapToScene2,"QGraphicsView_mapToScene2");

function  QGraphicsView_mapToScene3(handle: not null  QGraphicsViewH; polygon: QPolygonH) return QPolygonFH;
pragma Import(C,QGraphicsView_mapToScene3,"QGraphicsView_mapToScene3");

function  QGraphicsView_mapToScene4(handle: not null  QGraphicsViewH; path: QPainterPathH) return QPainterPathH;
pragma Import(C,QGraphicsView_mapToScene4,"QGraphicsView_mapToScene4");

function  QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; point: QPointFH) return QPointH;
pragma Import(C,QGraphicsView_mapFromScene,"QGraphicsView_mapFromScene");

function  QGraphicsView_mapFromScene2(handle: not null  QGraphicsViewH; rect: QRectFH) return QPolygonH;
pragma Import(C,QGraphicsView_mapFromScene2,"QGraphicsView_mapFromScene2");

function  QGraphicsView_mapFromScene3(handle: not null  QGraphicsViewH; polygon: QPolygonFH) return QPolygonH;
pragma Import(C,QGraphicsView_mapFromScene3,"QGraphicsView_mapFromScene3");

function  QGraphicsView_mapFromScene4(handle: not null  QGraphicsViewH; path: QPainterPathH) return QPainterPathH;
pragma Import(C,QGraphicsView_mapFromScene4,"QGraphicsView_mapFromScene4");

function  QGraphicsView_mapToScene5(handle: not null  QGraphicsViewH; x: Integer; y: Integer) return QPointFH;
pragma Import(C,QGraphicsView_mapToScene5,"QGraphicsView_mapToScene5");

function  QGraphicsView_mapToScene6(handle: not null  QGraphicsViewH; x: Integer; y: Integer; w: Integer; h: Integer) return QPolygonFH;
pragma Import(C,QGraphicsView_mapToScene6,"QGraphicsView_mapToScene6");

function  QGraphicsView_mapFromScene5(handle: not null  QGraphicsViewH; x: Double; y: Double) return QPointH;
pragma Import(C,QGraphicsView_mapFromScene5,"QGraphicsView_mapFromScene5");

function  QGraphicsView_mapFromScene6(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double) return QPolygonH;
pragma Import(C,QGraphicsView_mapFromScene6,"QGraphicsView_mapFromScene6");

function  QGraphicsView_inputMethodQuery(handle: not null  QGraphicsViewH; query: QtInputMethodQuery) return QVariantH;
pragma Import(C,QGraphicsView_inputMethodQuery,"QGraphicsView_inputMethodQuery");

function  QGraphicsView_backgroundBrush(handle: not null  QGraphicsViewH) return QBrushH;
pragma Import(C,QGraphicsView_backgroundBrush,"QGraphicsView_backgroundBrush");

procedure QGraphicsView_setBackgroundBrush(handle: not null  QGraphicsViewH; brush: QBrushH);   
pragma Import(C,QGraphicsView_setBackgroundBrush,"QGraphicsView_setBackgroundBrush");

function  QGraphicsView_foregroundBrush(handle: not null  QGraphicsViewH) return QBrushH;
pragma Import(C,QGraphicsView_foregroundBrush,"QGraphicsView_foregroundBrush");

procedure QGraphicsView_setForegroundBrush(handle: not null  QGraphicsViewH; brush: QBrushH);   
pragma Import(C,QGraphicsView_setForegroundBrush,"QGraphicsView_setForegroundBrush");

procedure QGraphicsView_invalidateScene(handle: not null  QGraphicsViewH; rect: QRectFH := null; layers: QGraphicsSceneSceneLayers := QGraphicsSceneAllLayers);   
pragma Import(C,QGraphicsView_invalidateScene,"QGraphicsView_invalidateScene");

procedure QGraphicsView_updateSceneRect(handle: not null  QGraphicsViewH; rect: QRectFH);   
pragma Import(C,QGraphicsView_updateSceneRect,"QGraphicsView_updateSceneRect");

procedure QGraphicsView_mousePressEvent(handle: not null QGraphicsViewH;event:QMouseEventH);
pragma Import(C,QGraphicsView_mousePressEvent, "QGraphicsView_mousePressEvent");

procedure QGraphicsView_mouseDoubleClickEvent(handle: not null QGraphicsViewH;event:QMouseEventH);
pragma Import(C,QGraphicsView_mouseDoubleClickEvent, "QGraphicsView_mouseDoubleClickEvent");

procedure QGraphicsView_mouseReleaseEvent(handle: not null QGraphicsViewH;event:QMouseEventH);
pragma Import(C,QGraphicsView_mouseReleaseEvent, "QGraphicsView_mouseReleaseEvent");

procedure QGraphicsView_mouseMoveEvent(handle: not null QGraphicsViewH;event:QMouseEventH);
pragma Import(C,QGraphicsView_mouseMoveEvent, "QGraphicsView_mouseMoveEvent");

procedure QGraphicsView_wheelEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_wheelEvent, "QGraphicsView_wheelEvent");

procedure QGraphicsView_keyPressEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_keyPressEvent, "QGraphicsView_keyPressEvent");

procedure QGraphicsView_keyReleaseEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_keyReleaseEvent, "QGraphicsView_keyReleaseEvent");

procedure QGraphicsView_contextMenuEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_contextMenuEvent, "QGraphicsView_contextMenuEvent");

procedure QGraphicsView_dragEnterEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_dragEnterEvent, "QGraphicsView_dragEnterEvent");

procedure QGraphicsView_dragLeaveEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_dragLeaveEvent, "QGraphicsView_dragLeaveEvent");

procedure QGraphicsView_dragMoveEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_dragMoveEvent, "QGraphicsView_dragMoveEvent");

procedure QGraphicsView_dropEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_dropEvent, "QGraphicsView_dropEvent");

procedure QGraphicsView_focusInEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_focusInEvent, "QGraphicsView_focusInEvent");

procedure QGraphicsView_focusOutEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_focusOutEvent, "QGraphicsView_focusOutEvent");

procedure QGraphicsView_inputMethodEvent(handle: not null QGraphicsViewH;event:QEventH);
pragma Import(C,QGraphicsView_inputMethodEvent, "QGraphicsView_inputMethodEvent");

function  QGraphicsView_focusNextPrevChild(handle: not null QGraphicsViewH; next:boolean) return boolean;
pragma Import(C,QGraphicsView_focusNextPrevChild, "QGraphicsView_focusNextPrevChild");


type QGraphicsScene_updateViewRectEvent is access procedure (rect: QRectFH);
pragma Convention(C,QGraphicsScene_updateViewRectEvent);

type QGraphicsScene_invalidateViewEvent is access procedure (rect: QRectFH; p:integer);
pragma Convention(C,QGraphicsScene_invalidateViewEvent);

 procedure QGraphicsView_signal_slot_updateViewRect(handle: not null QGraphicsViewH; hook:QGraphicsScene_updateViewRectEvent);
 pragma Import(C,QGraphicsView_signal_slot_updateViewRect, "QGraphicsView_signal_slot_updateViewRect");
 
 procedure QGraphicsView_signal_slot_invalidateView(handle: not null QGraphicsViewH; hook:QGraphicsScene_invalidateViewEvent);
 pragma Import(C,QGraphicsView_signal_slot_invalidateView, "QGraphicsView_signal_slot_invalidateView");

------------------------------------------------------------------
function QGraphicsView_create(scene: QGraphicsSceneH; parent: QWidgetH := null) return QGraphicsViewH;
procedure QGraphicsView_setSceneRect(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double);
procedure QGraphicsView_centerOn(handle: not null  QGraphicsViewH; x: Double; y: Double);
procedure QGraphicsView_centerOn(handle: not null  QGraphicsViewH; item: QGraphicsItemH);
procedure QGraphicsView_ensureVisible(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double; xmargin: Integer := 50; ymargin: Integer := 50);
procedure QGraphicsView_ensureVisible(handle: not null  QGraphicsViewH; item: QGraphicsItemH; xmargin: Integer := 50; ymargin: Integer := 50);
procedure QGraphicsView_fitInView(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
procedure QGraphicsView_fitInView(handle: not null  QGraphicsViewH; item: QGraphicsItemH; aspectRadioMode: QtAspectRatioMode := QtIgnoreAspectRatio);
function QGraphicsView_itemAt(handle: not null  QGraphicsViewH; x: Integer; y: Integer) return  QGraphicsItemH;
function  QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; rect: QRectH) return QPolygonFH;
function QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; polygon: QPolygonH) return QPolygonFH;                                                                                                                                                                                                                                                                                                                                                                                                                               
function QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; path: QPainterPathH) return QPainterPathH;                                                                                                                                                                                                                                                                                                                                                                                                                           
function QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; rect: QRectFH) return QPolygonH;                                                                                                                                                                                                                                                                                                                                                                                                                                   
function QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; polygon: QPolygonFH) return QPolygonH;                                                                                                                                                                                                                                                                                                                                                                                                                             
function QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; path: QPainterPathH) return QPainterPathH;                                                                                                                                                                                                                                                                                                                                                                                                                         
function QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; x: Integer; y: Integer) return QPointFH;                                                                                                                                                                                                                                                                                                                                                                                                                             
function QGraphicsView_mapToScene(handle: not null  QGraphicsViewH; x: Integer; y: Integer; w: Integer; h: Integer) return QPolygonFH;                                                                                                                                                                                                                                                                                                                                                                                                   
function QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; x: Double; y: Double) return QPointH;                                                                                                                                                                                                                                                                                                                                                                                                                              
function QGraphicsView_mapFromScene(handle: not null  QGraphicsViewH; x: Double; y: Double; w: Double; h: Double) return QPolygonH;                                                                                                                                                                                                                                                                                                                                                                                                      
----------------------------------------------------------------------------------------------------------------                                                                                                                                                                                                                                                                                                                                                                                                               

-- ChangeFlag 
    SourceAttached            : constant := 1;
    SourceDetached            : constant := 2;
    SourceBoundingRectChanged : constant := 4;
    SourceInvalidated         : constant := 8; 

 -- PixmapPadMode              
    NoPad                      : constant := 0;
    PadToTransparentBorder     : constant := 1;
    PadToEffectiveBoundingRect : constant := 2;

 type enableChanged is access procedure(isEnabled: boolean);
 pragma Convention(C,enableChanged);

 procedure QGraphicsEffect_destroy(handle:QGraphicsEffectH);
 pragma Import(C,QGraphicsEffect_destroy, "QGraphicsEffect_destroy");
 
 function  QGraphicsEffect_boundingRectFor(handle:QGraphicsEffectH; sourceRect: QRectFH) return QRectFH;
 pragma Import(C,QGraphicsEffect_boundingRectFor, "QGraphicsEffect_boundingRectFor");
 
 function  QGraphicsEffect_boundingRect(handle:QGraphicsEffectH) return QRectFH;
 pragma Import(C,QGraphicsEffect_boundingRect, "QGraphicsEffect_boundingRect");
 
 function  QGraphicsEffect_isEnabled(handle:QGraphicsEffectH) return boolean;
 pragma Import(C,QGraphicsEffect_isEnabled, "QGraphicsEffect_isEnabled");
 
 procedure QGraphicsEffect_signal_slot_enabledChanged(handle:QGraphicsEffectH; hook: enableChanged);  
 pragma Import(C,QGraphicsEffect_signal_slot_enabledChanged, "QGraphicsEffect_signal_slot_enabledChanged");

---------------------------------  2019 ---------------------------------

 type BlurHints is new integer; 
 PerformanceHint : constant BlurHints := 0;
 QualityHint     : constant BlurHints := 0;
 AnimationHint   : constant BlurHints := 0;

 procedure QGraphicsEffect_setEnabled(handle:not null QGraphicsEffectH;enable:boolean);
 pragma Import(C,QGraphicsEffect_setEnabled, "QGraphicsEffect_setEnabled");
 
 procedure QGraphicsEffect_update(handle:not null QGraphicsEffectH);
 pragma Import(C,QGraphicsEffect_update, "QGraphicsEffect_update");
 
 function  QGraphicsEffect_source(handle:not null QGraphicsEffectH) return QGraphicsEffectH;
 pragma Import(C,QGraphicsEffect_source, "QGraphicsEffect_source");
 
 function  QGraphicsColorizeEffect_create(parent: QObjectH  := null) return QGraphicsEffectH;
 pragma Import(C,QGraphicsColorizeEffect_create, "QGraphicsColorizeEffect_create");
 
 procedure QGraphicsColorizeEffect_destroy(handle:not null QGraphicsEffectH);
 pragma Import(C,QGraphicsColorizeEffect_destroy, "QGraphicsColorizeEffect_destroy");
 
 function  QGraphicsColorizeEffect_color(handle:not null QGraphicsEffectH) return QColorH;
 pragma Import(C,QGraphicsColorizeEffect_color, "QGraphicsColorizeEffect_color");
 
 function  QGraphicsColorizeEffect_strength(handle:not null QGraphicsEffectH) return qreal;
 pragma Import(C,QGraphicsColorizeEffect_strength, "QGraphicsColorizeEffect_strength");
 
 procedure QGraphicsColorizeEffect_setColor(handle:not null QGraphicsEffectH;color:QColorH);
 pragma Import(C,QGraphicsColorizeEffect_setColor, "QGraphicsColorizeEffect_setColor");
 
 procedure QGraphicsColorizeEffect_setStrength(handle:not null QGraphicsEffectH;strength:qreal);
 pragma Import(C,QGraphicsColorizeEffect_setStrength, "QGraphicsColorizeEffect_setStrength");
 
 function  QGraphicsBlurEffect_create(parent:QObjectH := null) return QGraphicsEffectH;
 pragma Import(C,QGraphicsBlurEffect_create, "QGraphicsBlurEffect_create");
 
 procedure QGraphicsBlurEffect_destroy(handle:not null QGraphicsEffectH);
 pragma Import(C,QGraphicsBlurEffect_destroy, "QGraphicsBlurEffect_destroy");
 
 function  QGraphicsBlurEffect_boundingRectFor(handle:not null QGraphicsEffectH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsBlurEffect_boundingRectFor, "QGraphicsBlurEffect_boundingRectFor");
 
 function  QGraphicsBlurEffect_blurRadius(handle:not null QGraphicsEffectH) return qreal;
 pragma Import(C,QGraphicsBlurEffect_blurRadius, "QGraphicsBlurEffect_blurRadius");
 
 function  QGraphicsBlurEffect_blurHints(handle:not null QGraphicsEffectH) return BlurHints;
 pragma Import(C,QGraphicsBlurEffect_blurHints, "QGraphicsBlurEffect_blurHints");
 
 procedure QGraphicsBlurEffect_setBlurRadius(handle:not null QGraphicsEffectH;blurRadius:qreal);
 pragma Import(C,QGraphicsBlurEffect_setBlurRadius, "QGraphicsBlurEffect_setBlurRadius");
 
 procedure QGraphicsBlurEffect_setBlurHints(handle:not null QGraphicsEffectH;hints:BlurHints);
 pragma Import(C,QGraphicsBlurEffect_setBlurHints, "QGraphicsBlurEffect_setBlurHints");
 
 function  QGraphicsDropShadowEffect_create(parent:QObjectH := null) return QGraphicsEffectH;
 pragma Import(C,QGraphicsDropShadowEffect_create, "QGraphicsDropShadowEffect_create");
 
 procedure QGraphicsDropShadowEffect_destroy(handle:not null QGraphicsEffectH);
 pragma Import(C,QGraphicsDropShadowEffect_destroy, "QGraphicsDropShadowEffect_destroy");
 
 function  QGraphicsDropShadowEffect_boundingRectFor(handle:not null QGraphicsEffectH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsDropShadowEffect_boundingRectFor, "QGraphicsDropShadowEffect_boundingRectFor");
 
 function  QGraphicsDropShadowEffect_offset(handle:not null QGraphicsEffectH) return QPointFH;
 pragma Import(C,QGraphicsDropShadowEffect_offset, "QGraphicsDropShadowEffect_offset");
 
 function  QGraphicsDropShadowEffect_xOffset(handle:not null QGraphicsEffectH) return qreal;
 pragma Import(C,QGraphicsDropShadowEffect_xOffset, "QGraphicsDropShadowEffect_xOffset");
 
 function  QGraphicsDropShadowEffect_yOffset(handle:not null QGraphicsEffectH) return qreal;
 pragma Import(C,QGraphicsDropShadowEffect_yOffset, "QGraphicsDropShadowEffect_yOffset");
 
 function  QGraphicsDropShadowEffect_blurRadius(handle:not null QGraphicsEffectH) return qreal;
 pragma Import(C,QGraphicsDropShadowEffect_blurRadius, "QGraphicsDropShadowEffect_blurRadius");
 
 function  QGraphicsDropShadowEffect_color(handle:not null QGraphicsEffectH) return QColorH;
 pragma Import(C,QGraphicsDropShadowEffect_color, "QGraphicsDropShadowEffect_color");
 
 procedure QGraphicsDropShadowEffect_setOffset(handle:not null QGraphicsEffectH;offset:QPointFH);
 pragma Import(C,QGraphicsDropShadowEffect_setOffset, "QGraphicsDropShadowEffect_setOffset");
 
 procedure QGraphicsDropShadowEffect_setOffset2(handle:not null QGraphicsEffectH;dx:qreal;dy: qreal);
 pragma Import(C,QGraphicsDropShadowEffect_setOffset2, "QGraphicsDropShadowEffect_setOffset2");
 
 procedure QGraphicsDropShadowEffect_setOffset3(handle:not null QGraphicsEffectH;d:qreal);
 pragma Import(C,QGraphicsDropShadowEffect_setOffset3, "QGraphicsDropShadowEffect_setOffset3");
 
 procedure QGraphicsDropShadowEffect_setXOffset(handle:not null QGraphicsEffectH;dx:qreal);
 pragma Import(C,QGraphicsDropShadowEffect_setXOffset, "QGraphicsDropShadowEffect_setXOffset");
 
 procedure QGraphicsDropShadowEffect_setYOffset(handle:not null QGraphicsEffectH;dy:qreal);
 pragma Import(C,QGraphicsDropShadowEffect_setYOffset, "QGraphicsDropShadowEffect_setYOffset");
 
 procedure QGraphicsDropShadowEffect_setBlurRadius(handle:not null QGraphicsEffectH;blurRadius:qreal);
 pragma Import(C,QGraphicsDropShadowEffect_setBlurRadius, "QGraphicsDropShadowEffect_setBlurRadius");
 
 procedure QGraphicsDropShadowEffect_setColor(handle:not null QGraphicsEffectH;color:QColorH);
 pragma Import(C,QGraphicsDropShadowEffect_setColor, "QGraphicsDropShadowEffect_setColor");
 
 function  QGraphicsOpacityEffect_create(parent:QObjectH := null) return QGraphicsEffectH;
 pragma Import(C,QGraphicsOpacityEffect_create, "QGraphicsOpacityEffect_create");
 
 procedure QGraphicsOpacityEffect_destroy(handle:not null QGraphicsEffectH);
 pragma Import(C,QGraphicsOpacityEffect_destroy, "QGraphicsOpacityEffect_destroy");
 
 function  QGraphicsOpacityEffect_opacity(handle:not null QGraphicsEffectH) return qreal;
 pragma Import(C,QGraphicsOpacityEffect_opacity, "QGraphicsOpacityEffect_opacity");
 
 function  QGraphicsOpacityEffect_opacityMask(handle:not null QGraphicsEffectH) return QBrushH;
 pragma Import(C,QGraphicsOpacityEffect_opacityMask, "QGraphicsOpacityEffect_opacityMask");
 
 procedure QGraphicsOpacityEffect_setOpacity(handle:not null QGraphicsEffectH;opacity:qreal);
 pragma Import(C,QGraphicsOpacityEffect_setOpacity, "QGraphicsOpacityEffect_setOpacity");
 
 procedure QGraphicsOpacityEffect_setOpacityMask(handle:not null QGraphicsEffectH;mask:QBrushH);
 pragma Import(C,QGraphicsOpacityEffect_setOpacityMask, "QGraphicsOpacityEffect_setOpacityMask");
 
------------------------------------------------------------------------------------------------------------
 procedure QGraphicsAnchor_destroy(handle: not null QGraphicsAnchorH);
 pragma Import(C,QGraphicsAnchor_destroy, "QGraphicsAnchor_destroy");
 
 procedure QGraphicsAnchor_setSpacing(handle: not null QGraphicsAnchorH; spacing:qreal);
 pragma Import(C,QGraphicsAnchor_setSpacing, "QGraphicsAnchor_setSpacing");
 
 procedure QGraphicsAnchor_unsetSpacing(handle: not null QGraphicsAnchorH);
 pragma Import(C,QGraphicsAnchor_unsetSpacing, "QGraphicsAnchor_unsetSpacing");
 
 function  QGraphicsAnchor_spacing(handle: not null QGraphicsAnchorH) return qreal;
 pragma Import(C,QGraphicsAnchor_spacing, "QGraphicsAnchor_spacing");
 
 procedure QGraphicsAnchor_setSizePolicy(handle: not null QGraphicsAnchorH; policy: integer);
 pragma Import(C,QGraphicsAnchor_setSizePolicy, "QGraphicsAnchor_setSizePolicy");
 
 function  QGraphicsAnchor_sizePolicy(handle: not null QGraphicsAnchorH) return integer;
 pragma Import(C,QGraphicsAnchor_sizePolicy, "QGraphicsAnchor_sizePolicy");

----------------------------------------------------------------------
 type colorCallbackH is access procedure(p: QColorH);
 pragma convention(C,colorCallbackH);

 type brushCallbackH is access procedure(p: QBrushH);
 pragma convention(C,brushCallbackH);

 procedure QGraphicsColorizeEffect_signal_slot_colorChanged(handle:not null QGraphicsEffectH;hook: colorCallbackH);
 pragma Import(C,QGraphicsColorizeEffect_signal_slot_colorChanged, "QGraphicsColorizeEffect_signal_slot_colorChanged");
 
 procedure QGraphicsColorizeEffect_signal_slot_strengthChanged(handle:not null QGraphicsEffectH;hook: qrealCallbackH); 
 pragma Import(C,QGraphicsColorizeEffect_signal_slot_strengthChanged, "QGraphicsColorizeEffect_signal_slot_strengthChanged");
 
 procedure QGraphicsBlurEffect_signal_slot_blurRadiusChanged(handle:not null QGraphicsEffectH;hook: qrealCallbackH); 
 pragma Import(C,QGraphicsBlurEffect_signal_slot_blurRadiusChanged, "QGraphicsBlurEffect_signal_slot_blurRadiusChanged");
 
 procedure QGraphicsBlurEffect_signal_slot_blurHintsChanged(handle:not null QGraphicsEffectH;hook: intCallbackH);
 pragma Import(C,QGraphicsBlurEffect_signal_slot_blurHintsChanged, "QGraphicsBlurEffect_signal_slot_blurHintsChanged");
 
 procedure QGraphicsDropShadowEffect_signal_slot_offsetChanged(handle:not null QGraphicsEffectH;hook: qpointCallbackH);
 pragma Import(C,QGraphicsDropShadowEffect_signal_slot_offsetChanged, "QGraphicsDropShadowEffect_signal_slot_offsetChanged");
 
 procedure QGraphicsDropShadowEffect_signal_slot_blurRadiusChanged(handle:not null QGraphicsEffectH;hook: qrealCallbackH);     
 pragma Import(C,QGraphicsDropShadowEffect_signal_slot_blurRadiusChanged, "QGraphicsDropShadowEffect_signal_slot_blurRadiusChanged");
 
 procedure QGraphicsDropShadowEffect_signal_slot_colorChanged(handle:not null QGraphicsEffectH;hook: colorCallbackH);    
 pragma Import(C,QGraphicsDropShadowEffect_signal_slot_colorChanged, "QGraphicsDropShadowEffect_signal_slot_colorChanged");
 
 procedure QGraphicsOpacityEffect_signal_slot_opacityChanged(handle:not null QGraphicsEffectH;hook: qrealCallbackH);
 pragma Import(C,QGraphicsOpacityEffect_signal_slot_opacityChanged, "QGraphicsOpacityEffect_signal_slot_opacityChanged");
 
 procedure QGraphicsOpacityEffect_signal_slot_opacityMaskChanged(handle:not null QGraphicsEffectH;hook: brushCallbackH);
 pragma Import(C,QGraphicsOpacityEffect_signal_slot_opacityMaskChanged, "QGraphicsOpacityEffect_signal_slot_opacityMaskChanged");
 

end Qt.QGraphics;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
