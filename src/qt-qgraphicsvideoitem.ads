--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QGraphicsItem; use Qt.QGraphicsItem;
package Qt.QGraphicsVideoItem is

 type sizeFProc is access procedure(size:QSizeFH);
 pragma convention(C,sizeFProc);

 function  QGraphicsVideoItem_create(parent:QGraphicsItemH := null) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_create, "QGraphicsVideoItem_create");
 
 procedure QGraphicsVideoItem_destroy(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_destroy, "QGraphicsVideoItem_destroy");
 
 function  QGraphicsVideoItem_mediaObject(handle: not null QGraphicsVideoItemH) return QMediaObjectH;
 pragma Import(C,QGraphicsVideoItem_mediaObject, "QGraphicsVideoItem_mediaObject");
 
 function  QGraphicsVideoItem_aspectRatioMode(handle: not null QGraphicsVideoItemH) return QtAspectRatioMode;
 pragma Import(C,QGraphicsVideoItem_aspectRatioMode, "QGraphicsVideoItem_aspectRatioMode");
 
 procedure QGraphicsVideoItem_setAspectRatioMode(handle: not null QGraphicsVideoItemH;mode:QtAspectRatioMode);
 pragma Import(C,QGraphicsVideoItem_setAspectRatioMode, "QGraphicsVideoItem_setAspectRatioMode");
 
 function  QGraphicsVideoItem_offset(handle: not null QGraphicsVideoItemH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_offset, "QGraphicsVideoItem_offset");
 
 procedure QGraphicsVideoItem_setOffset(handle: not null QGraphicsVideoItemH;offset:QPointFH);
 pragma Import(C,QGraphicsVideoItem_setOffset, "QGraphicsVideoItem_setOffset");
 
 function  QGraphicsVideoItem_size(handle: not null QGraphicsVideoItemH) return QSizeFH;
 pragma Import(C,QGraphicsVideoItem_size, "QGraphicsVideoItem_size");
 
 procedure QGraphicsVideoItem_setSize(handle: not null QGraphicsVideoItemH;size:QSizeFH);
 pragma Import(C,QGraphicsVideoItem_setSize, "QGraphicsVideoItem_setSize");
 
 function  QGraphicsVideoItem_nativeSize(handle: not null QGraphicsVideoItemH) return QSizeFH;
 pragma Import(C,QGraphicsVideoItem_nativeSize, "QGraphicsVideoItem_nativeSize");
 
 function  QGraphicsVideoItem_boundingRect(handle: not null QGraphicsVideoItemH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_boundingRect, "QGraphicsVideoItem_boundingRect");
 
 procedure QGraphicsVideoItem_paint(handle: not null QGraphicsVideoItemH;painter:QPainterH;option: QStyleOptionGraphicsItemH;widget:QWidgetH := null);
 pragma Import(C,QGraphicsVideoItem_paint, "QGraphicsVideoItem_paint");

 procedure QGraphicsVideoItem_rotate(handle: not null QGraphicsVideoItemH;angle:double);
 pragma Import(C,QGraphicsVideoItem_rotate, "QGraphicsVideoItem_rotate");
 
 procedure QGraphicsVideoItem_move(handle: not null QGraphicsVideoItemH;dx,dy:double);
 pragma Import(C,QGraphicsVideoItem_move, "QGraphicsVideoItem_move");
 
--------------------------------------------------------------------------------------------------------------------
function  QGraphicsVideoItem_isWidget(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isWidget, "QGraphicsVideoItem_isWidget");
 
 function  QGraphicsVideoItem_isWindow(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isWindow, "QGraphicsVideoItem_isWindow");
 
 function  QGraphicsVideoItem_QGraphicsVideoItem_isPanel(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_QGraphicsVideoItem_isPanel, "QGraphicsVideoItem_QGraphicsVideoItem_isPanel");
 
 function  QGraphicsVideoItem_parentItem(handle: not null QGraphicsVideoItemH) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_parentItem, "QGraphicsVideoItem_parentItem");
 
 function  QGraphicsVideoItem_topLevelItem(handle: not null QGraphicsVideoItemH) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_topLevelItem, "QGraphicsVideoItem_topLevelItem");
 
 function  QGraphicsVideoItem_parentObject(handle: not null QGraphicsVideoItemH) return QGraphicsObjectH;
 pragma Import(C,QGraphicsVideoItem_parentObject, "QGraphicsVideoItem_parentObject");
 
 function  QGraphicsVideoItem_parentWidget(handle: not null QGraphicsVideoItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsVideoItem_parentWidget, "QGraphicsVideoItem_parentWidget");
 
 function  QGraphicsVideoItem_topLevelWidget(handle: not null QGraphicsVideoItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsVideoItem_topLevelWidget, "QGraphicsVideoItem_topLevelWidget");
 
 function  QGraphicsVideoItem_window(handle: not null QGraphicsVideoItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsVideoItem_window, "QGraphicsVideoItem_window");
 
 function  QGraphicsVideoItem_panel(handle: not null QGraphicsVideoItemH) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_panel, "QGraphicsVideoItem_panel");
 
 procedure QGraphicsVideoItem_setParentItem(handle: not null QGraphicsVideoItemH; parent:QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_setParentItem, "QGraphicsVideoItem_setParentItem");
 
 function  QGraphicsVideoItem_toGraphicsObject(handle: not null QGraphicsVideoItemH) return QGraphicsObjectH;
 pragma Import(C,QGraphicsVideoItem_toGraphicsObject, "QGraphicsVideoItem_toGraphicsObject");
 
 function  QGraphicsVideoItem_group(handle: not null QGraphicsVideoItemH) return QGraphicsItemGroupH;
 pragma Import(C,QGraphicsVideoItem_group, "QGraphicsVideoItem_group");
 
 procedure QGraphicsVideoItem_setGroup(handle: not null QGraphicsVideoItemH;group:QGraphicsItemGroupH);
 pragma Import(C,QGraphicsVideoItem_setGroup, "QGraphicsVideoItem_setGroup");
 
 procedure QGraphicsVideoItem_setFlag(handle: not null QGraphicsVideoItemH;flag: GraphicsItemFlag := ItemIsMovable; enabled:boolean := true);
 pragma Import(C,QGraphicsVideoItem_setFlag, "QGraphicsVideoItem_setFlag");
 
 procedure QGraphicsVideoItem_setFlags(handle: not null QGraphicsVideoItemH; flags: GraphicsItemFlags);
 pragma Import(C,QGraphicsVideoItem_setFlags, "QGraphicsVideoItem_setFlags");
 
 function  QGraphicsVideoItem_cacheMode(handle: not null QGraphicsVideoItemH) return CacheMode;
 pragma Import(C,QGraphicsVideoItem_cacheMode, "QGraphicsVideoItem_cacheMode");
 
 procedure QGraphicsVideoItem_setCacheMode(handle: not null QGraphicsVideoItemH; mode:CacheMode);
 pragma Import(C,QGraphicsVideoItem_setCacheMode, "QGraphicsVideoItem_setCacheMode");
 
 procedure QGraphicsVideoItem_setCacheMode2(handle: not null QGraphicsVideoItemH;mode:CacheMode;cacheSize:QSizeH);
 pragma Import(C,QGraphicsVideoItem_setCacheMode2, "QGraphicsVideoItem_setCacheMode2");
 
 function  QGraphicsVideoItem_panelModality(handle: not null QGraphicsVideoItemH) return PanelModality;
 pragma Import(C,QGraphicsVideoItem_panelModality, "QGraphicsVideoItem_panelModality");
 
 procedure QGraphicsVideoItem_setPanelModality(handle: not null QGraphicsVideoItemH; modality:PanelModality);
 pragma Import(C,QGraphicsVideoItem_setPanelModality, "QGraphicsVideoItem_setPanelModality");
 
 function  QGraphicsVideoItem_isVisible(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isVisible, "QGraphicsVideoItem_isVisible");
 
 function  QGraphicsVideoItem_isVisibleTo(handle: not null QGraphicsVideoItemH;parent:QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isVisibleTo, "QGraphicsVideoItem_isVisibleTo");
 
 procedure QGraphicsVideoItem_setVisible(handle: not null QGraphicsVideoItemH; isVisible: boolean);
 pragma Import(C,QGraphicsVideoItem_setVisible, "QGraphicsVideoItem_setVisible");
 
 procedure QGraphicsVideoItem_hide(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_hide, "QGraphicsVideoItem_hide");
 
 procedure QGraphicsVideoItem_show(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_show, "QGraphicsVideoItem_show");
 
 function  QGraphicsVideoItem_isEnabled(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isEnabled, "QGraphicsVideoItem_isEnabled");
 
 procedure QGraphicsVideoItem_setEnabled(handle: not null QGraphicsVideoItemH; enabled:boolean);
 pragma Import(C,QGraphicsVideoItem_setEnabled, "QGraphicsVideoItem_setEnabled");
 
 function  QGraphicsVideoItem_isSelected(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isSelected, "QGraphicsVideoItem_isSelected");
 
 procedure QGraphicsVideoItem_setSelected(handle: not null QGraphicsVideoItemH; isSelected: boolean);
 pragma Import(C,QGraphicsVideoItem_setSelected, "QGraphicsVideoItem_setSelected");
 
 function  QGraphicsVideoItem_acceptDrops(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_acceptDrops, "QGraphicsVideoItem_acceptDrops");
 
 procedure QGraphicsVideoItem_setAcceptDrops(handle: not null QGraphicsVideoItemH;isOn:boolean);
 pragma Import(C,QGraphicsVideoItem_setAcceptDrops, "QGraphicsVideoItem_setAcceptDrops");
 
 function  QGraphicsVideoItem_opacity(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_opacity, "QGraphicsVideoItem_opacity");
 
 function  QGraphicsVideoItem_effectiveOpacity(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_effectiveOpacity, "QGraphicsVideoItem_effectiveOpacity");
 
 procedure QGraphicsVideoItem_setOpacity(handle: not null QGraphicsVideoItemH; opacity:qreal);
 pragma Import(C,QGraphicsVideoItem_setOpacity, "QGraphicsVideoItem_setOpacity");
 
 function  QGraphicsVideoItem_acceptedMouseButtons(handle: not null QGraphicsVideoItemH) return QtMouseButtonsH;
 pragma Import(C,QGraphicsVideoItem_acceptedMouseButtons, "QGraphicsVideoItem_acceptedMouseButtons");
 
 procedure QGraphicsVideoItem_setAcceptedMouseButtons(handle: not null QGraphicsVideoItemH; buttons:QtMouseButtonsH);
 pragma Import(C,QGraphicsVideoItem_setAcceptedMouseButtons, "QGraphicsVideoItem_setAcceptedMouseButtons");
 
 function  QGraphicsVideoItem_acceptHoverEvents(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_acceptHoverEvents, "QGraphicsVideoItem_acceptHoverEvents");
 
 procedure QGraphicsVideoItem_setAcceptHoverEvents(handle: not null QGraphicsVideoItemH;enabled:boolean);
 pragma Import(C,QGraphicsVideoItem_setAcceptHoverEvents, "QGraphicsVideoItem_setAcceptHoverEvents");
 
 function  QGraphicsVideoItem_acceptTouchEvents(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_acceptTouchEvents, "QGraphicsVideoItem_acceptTouchEvents");
 
 procedure QGraphicsVideoItem_setAcceptTouchEvents(handle: not null QGraphicsVideoItemH;enabled:boolean);
 pragma Import(C,QGraphicsVideoItem_setAcceptTouchEvents, "QGraphicsVideoItem_setAcceptTouchEvents");
 
 function  QGraphicsVideoItem_filtersChildEvents(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_filtersChildEvents, "QGraphicsVideoItem_filtersChildEvents");
 
 procedure QGraphicsVideoItem_setFiltersChildEvents(handle: not null QGraphicsVideoItemH;enabled:boolean);
 pragma Import(C,QGraphicsVideoItem_setFiltersChildEvents, "QGraphicsVideoItem_setFiltersChildEvents");
 
 function  QGraphicsVideoItem_handlesChildEvents(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_handlesChildEvents, "QGraphicsVideoItem_handlesChildEvents");
 
 procedure QGraphicsVideoItem_setHandlesChildEvents(handle: not null QGraphicsVideoItemH;enabled:boolean);
 pragma Import(C,QGraphicsVideoItem_setHandlesChildEvents, "QGraphicsVideoItem_setHandlesChildEvents");
 
 function  QGraphicsVideoItem_isActive(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isActive, "QGraphicsVideoItem_isActive");
 
 procedure QGraphicsVideoItem_setActive(handle: not null QGraphicsVideoItemH; active:boolean);
 pragma Import(C,QGraphicsVideoItem_setActive, "QGraphicsVideoItem_setActive");
 
 function  QGraphicsVideoItem_hasFocus(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_hasFocus, "QGraphicsVideoItem_hasFocus");
 
 procedure QGraphicsVideoItem_setFocus(handle: not null QGraphicsVideoItemH; focusReason:QtFocusReason := QtOtherFocusReason);
 pragma Import(C,QGraphicsVideoItem_setFocus, "QGraphicsVideoItem_setFocus");
 
 procedure QGraphicsVideoItem_clearFocus(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_clearFocus, "QGraphicsVideoItem_clearFocus");
 
 function  QGraphicsVideoItem_focusProxy(handle: not null QGraphicsVideoItemH) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_focusProxy, "QGraphicsVideoItem_focusProxy");
 
 procedure QGraphicsVideoItem_setFocusProxy(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_setFocusProxy, "QGraphicsVideoItem_setFocusProxy");
 
 function  QGraphicsVideoItem_focusItem(handle: not null QGraphicsVideoItemH) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_focusItem, "QGraphicsVideoItem_focusItem");
 
 function  QGraphicsVideoItem_focusScopeItem(handle: not null QGraphicsVideoItemH) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_focusScopeItem, "QGraphicsVideoItem_focusScopeItem");
 
 procedure QGraphicsVideoItem_grabMouse(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_grabMouse, "QGraphicsVideoItem_grabMouse");
 
 procedure QGraphicsVideoItem_ungrabMouse(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_ungrabMouse, "QGraphicsVideoItem_ungrabMouse");
 
 procedure QGraphicsVideoItem_grabKeyboard(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_grabKeyboard, "QGraphicsVideoItem_grabKeyboard");
 
 procedure QGraphicsVideoItem_ungrabKeyboard(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_ungrabKeyboard, "QGraphicsVideoItem_ungrabKeyboard");
 
 function  QGraphicsVideoItem_pos(handle: not null QGraphicsVideoItemH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_pos, "QGraphicsVideoItem_pos");
 
 function  QGraphicsVideoItem_x(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_x, "QGraphicsVideoItem_x");
 
 procedure QGraphicsVideoItem_setX(handle: not null QGraphicsVideoItemH; x:qreal);
 pragma Import(C,QGraphicsVideoItem_setX, "QGraphicsVideoItem_setX");
 
 function  QGraphicsVideoItem_y(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_y, "QGraphicsVideoItem_y");
 
 procedure QGraphicsVideoItem_setY(handle: not null QGraphicsVideoItemH;y:qreal);
 pragma Import(C,QGraphicsVideoItem_setY, "QGraphicsVideoItem_setY");
 
 function  QGraphicsVideoItem_scenePos(handle: not null QGraphicsVideoItemH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_scenePos, "QGraphicsVideoItem_scenePos");
 
 procedure QGraphicsVideoItem_setPos(handle: not null QGraphicsVideoItemH; x,y: qreal);
 pragma Import(C,QGraphicsVideoItem_setPos, "QGraphicsVideoItem_setPos");
 
 procedure QGraphicsVideoItem_setPos2(handle: not null QGraphicsVideoItemH;pos:QPointFH);
 pragma Import(C,QGraphicsVideoItem_setPos2, "QGraphicsVideoItem_setPos2");
 
 procedure QGraphicsVideoItem_moveBy(handle: not null QGraphicsVideoItemH; dx,dy: qreal);
 pragma Import(C,QGraphicsVideoItem_moveBy, "QGraphicsVideoItem_moveBy");
 
 procedure QGraphicsVideoItem_ensureVisible(handle: not null QGraphicsVideoItemH; x,y,w,h: qt.qreal; xmargin : integer := 50; ymargin:integer := 50);
 pragma Import(C,QGraphicsVideoItem_ensureVisible, "QGraphicsVideoItem_ensureVisible");
 
 procedure QGraphicsVideoItem_ensureVisible2(handle: not null QGraphicsVideoItemH; rect:QRectFH; xmargin : integer := 50; ymargin:integer := 50);
 pragma Import(C,QGraphicsVideoItem_ensureVisible2, "QGraphicsVideoItem_ensureVisible2");
 
 function  QGraphicsVideoItem_matrix(handle: not null QGraphicsVideoItemH) return QMatrixH;
 pragma Import(C,QGraphicsVideoItem_matrix, "QGraphicsVideoItem_matrix");
 
 function  QGraphicsVideoItem_sceneMatrix(handle: not null QGraphicsVideoItemH) return QMatrixH;
 pragma Import(C,QGraphicsVideoItem_sceneMatrix, "QGraphicsVideoItem_sceneMatrix");
 
 procedure QGraphicsVideoItem_setMatrix(handle: not null QGraphicsVideoItemH;matrix:QMatrixH; combine : boolean := false);
 pragma Import(C,QGraphicsVideoItem_setMatrix, "QGraphicsVideoItem_setMatrix");
 
 procedure QGraphicsVideoItem_resetMatrix(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_resetMatrix, "QGraphicsVideoItem_resetMatrix");
 
 function  QGraphicsVideoItem_transform(handle: not null QGraphicsVideoItemH) return QTransformH;
 pragma Import(C,QGraphicsVideoItem_transform, "QGraphicsVideoItem_transform");
 
 function  QGraphicsVideoItem_sceneTransform(handle: not null QGraphicsVideoItemH) return QTransformH;
 pragma Import(C,QGraphicsVideoItem_sceneTransform, "QGraphicsVideoItem_sceneTransform");
 
 function  QGraphicsVideoItem_deviceTransform(handle: not null QGraphicsVideoItemH;  viewportTransform:QTransformH) return QTransformH;
 pragma Import(C,QGraphicsVideoItem_deviceTransform, "QGraphicsVideoItem_deviceTransform");
 
 function  QGraphicsVideoItem_itemTransform(handle: not null QGraphicsVideoItemH; otherItem:QGraphicsVideoItemH; ok : pboolean := null) return QTransformH;
 pragma Import(C,QGraphicsVideoItem_itemTransform, "QGraphicsVideoItem_itemTransform");
 
 procedure QGraphicsVideoItem_setTransform(handle: not null QGraphicsVideoItemH; matrix:QTransformH; combine: boolean := false);
 pragma Import(C,QGraphicsVideoItem_setTransform, "QGraphicsVideoItem_setTransform");
 
 procedure QGraphicsVideoItem_resetTransform(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_resetTransform, "QGraphicsVideoItem_resetTransform");
 
 procedure QGraphicsVideoItem_setRotation(handle: not null QGraphicsVideoItemH; angle: qreal);
 pragma Import(C,QGraphicsVideoItem_setRotation, "QGraphicsVideoItem_setRotation");
 
 function  QGraphicsVideoItem_rotation(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_rotation, "QGraphicsVideoItem_rotation");
 
 procedure QGraphicsVideoItem_setScale(handle: not null QGraphicsVideoItemH; scale:qreal);
 pragma Import(C,QGraphicsVideoItem_setScale, "QGraphicsVideoItem_setScale");
 
 function  QGraphicsVideoItem_scale(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_scale, "QGraphicsVideoItem_scale");
 
 function  QGraphicsVideoItem_transformOriginPoint(handle: not null QGraphicsVideoItemH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_transformOriginPoint, "QGraphicsVideoItem_transformOriginPoint");
 
 procedure QGraphicsVideoItem_setTransformOriginPoint(handle: not null QGraphicsVideoItemH; ax,ay: qreal);
 pragma Import(C,QGraphicsVideoItem_setTransformOriginPoint, "QGraphicsVideoItem_setTransformOriginPoint");
 
 procedure QGraphicsVideoItem_setTransformOriginPoint2(handle: not null QGraphicsVideoItemH; origin:QPointFH);
 pragma Import(C,QGraphicsVideoItem_setTransformOriginPoint2, "QGraphicsVideoItem_setTransformOriginPoint2");
 
 procedure QGraphicsVideoItem_advance(handle: not null QGraphicsVideoItemH; phase:integer);
 pragma Import(C,QGraphicsVideoItem_advance, "QGraphicsVideoItem_advance");
 
 function  QGraphicsVideoItem_zValue(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_zValue, "QGraphicsVideoItem_zValue");
 
 procedure QGraphicsVideoItem_setZValue(handle: not null QGraphicsVideoItemH;z:qreal);
 pragma Import(C,QGraphicsVideoItem_setZValue, "QGraphicsVideoItem_setZValue");
 
 procedure QGraphicsVideoItem_stackBefore(handle: not null QGraphicsVideoItemH; sibling:QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_stackBefore, "QGraphicsVideoItem_stackBefore");
 
 function  QGraphicsVideoItem_childrenBoundingRect(handle: not null QGraphicsVideoItemH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_childrenBoundingRect, "QGraphicsVideoItem_childrenBoundingRect");
 
 function  QGraphicsVideoItem_sceneBoundingRect(handle: not null QGraphicsVideoItemH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_sceneBoundingRect, "QGraphicsVideoItem_sceneBoundingRect");
 
 function  QGraphicsVideoItem_shape(handle: not null QGraphicsVideoItemH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_shape, "QGraphicsVideoItem_shape");
 
 function  QGraphicsVideoItem_isClipped(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isClipped, "QGraphicsVideoItem_isClipped");
 
 function  QGraphicsVideoItem_clipPath(handle: not null QGraphicsVideoItemH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_clipPath, "QGraphicsVideoItem_clipPath");
 
 function  QGraphicsVideoItem_contains(handle: not null QGraphicsVideoItemH;point:QPointFH) return boolean;
 pragma Import(C,QGraphicsVideoItem_contains, "QGraphicsVideoItem_contains");
 
 function  QGraphicsVideoItem_collidesWithItem(handle: not null QGraphicsVideoItemH; otherItem:QGraphicsVideoItemH; mode:QtItemSelectionMode := QtIntersectsItemShape) return boolean;
 pragma Import(C,QGraphicsVideoItem_collidesWithItem, "QGraphicsVideoItem_collidesWithItem");
 
 function  QGraphicsVideoItem_collidesWithPath(handle: not null QGraphicsVideoItemH;path:QPainterPathH; mode:QtItemSelectionMode := QtIntersectsItemShape) return boolean;
 pragma Import(C,QGraphicsVideoItem_collidesWithPath, "QGraphicsVideoItem_collidesWithPath");
 
 function  QGraphicsVideoItem_isObscured(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isObscured, "QGraphicsVideoItem_isObscured");
 
 function  QGraphicsVideoItem_isObscured2(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return boolean;
 pragma Import(C,QGraphicsVideoItem_isObscured2, "QGraphicsVideoItem_isObscured2");
 
 function  QGraphicsVideoItem_isObscured3(handle: not null QGraphicsVideoItemH;rect:QRectFH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isObscured3, "QGraphicsVideoItem_isObscured3");
 
 function  QGraphicsVideoItem_isObscuredBy(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isObscuredBy, "QGraphicsVideoItem_isObscuredBy");
 
 function  QGraphicsVideoItem_opaqueArea(handle: not null QGraphicsVideoItemH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_opaqueArea, "QGraphicsVideoItem_opaqueArea");
 
 function  QGraphicsVideoItem_boundingRegion(handle: not null QGraphicsVideoItemH; itemToDeviceTransform: QTransformH) return QRegionH;
 pragma Import(C,QGraphicsVideoItem_boundingRegion, "QGraphicsVideoItem_boundingRegion");
 
 function  QGraphicsVideoItem_boundingRegionGranularity(handle: not null QGraphicsVideoItemH) return qt.qreal;
 pragma Import(C,QGraphicsVideoItem_boundingRegionGranularity, "QGraphicsVideoItem_boundingRegionGranularity");
 
 procedure QGraphicsVideoItem_setBoundingRegionGranularity(handle: not null QGraphicsVideoItemH; granularity:qreal);
 pragma Import(C,QGraphicsVideoItem_setBoundingRegionGranularity, "QGraphicsVideoItem_setBoundingRegionGranularity");
 
 procedure QGraphicsVideoItem_update(handle: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_update, "QGraphicsVideoItem_update");
 
 procedure QGraphicsVideoItem_update2(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal);
 pragma Import(C,QGraphicsVideoItem_update2, "QGraphicsVideoItem_update2");
 
 procedure QGraphicsVideoItem_update3(handle: not null QGraphicsVideoItemH;rect:QRectFH);
 pragma Import(C,QGraphicsVideoItem_update3, "QGraphicsVideoItem_update3");
 
 procedure QGraphicsVideoItem_scroll(handle: not null QGraphicsVideoItemH; dx,dy: qreal);
 pragma Import(C,QGraphicsVideoItem_scroll, "QGraphicsVideoItem_scroll");
 
 procedure QGraphicsVideoItem_scroll2(handle: not null QGraphicsVideoItemH; dx,dy: qt.qreal; rect: QRectFH);
 pragma Import(C,QGraphicsVideoItem_scroll2, "QGraphicsVideoItem_scroll2");
 
 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapToItem, "QGraphicsVideoItem_mapToItem");
 
 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapToParent, "QGraphicsVideoItem_mapToParent");
 
 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapToScene, "QGraphicsVideoItem_mapToScene");
 
 function  QGraphicsVideoItem_mapToItem2(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; rect: QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToItem2, "QGraphicsVideoItem_mapToItem2");
 
 function  QGraphicsVideoItem_mapToParent2(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToParent2, "QGraphicsVideoItem_mapToParent2");
 
 function  QGraphicsVideoItem_mapToScene2(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToScene2, "QGraphicsVideoItem_mapToScene2");
 
 function  QGraphicsVideoItem_mapRectToItem3(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectToItem3, "QGraphicsVideoItem_mapRectToItem3");
 
 function  QGraphicsVideoItem_mapRectToParent3(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectToParent3, "QGraphicsVideoItem_mapRectToParent3");
 
 function  QGraphicsVideoItem_mapRectToScene3(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectToScene3, "QGraphicsVideoItem_mapRectToScene3");
 
 function  QGraphicsVideoItem_mapToItem4(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; polygon: QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToItem4, "QGraphicsVideoItem_mapToItem4");
 
 function  QGraphicsVideoItem_mapToParent4(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToParent4, "QGraphicsVideoItem_mapToParent4");
 
 function  QGraphicsVideoItem_mapToScene4(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToScene4, "QGraphicsVideoItem_mapToScene4");
 
 function  QGraphicsVideoItem_mapToItem5(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; path: QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_mapToItem5, "QGraphicsVideoItem_mapToItem5");
 
 function  QGraphicsVideoItem_mapToParent5(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_mapToParent5, "QGraphicsVideoItem_mapToParent5");
 
 function  QGraphicsVideoItem_mapToScene5(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_mapToScene5, "QGraphicsVideoItem_mapToScene5");
 
 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapFromItem, "QGraphicsVideoItem_mapFromItem");
 
 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapFromParent, "QGraphicsVideoItem_mapFromParent");
 
 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapFromScene, "QGraphicsVideoItem_mapFromScene");
 
 function  QGraphicsVideoItem_mapFromItem2(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromItem2, "QGraphicsVideoItem_mapFromItem2");
 
 function  QGraphicsVideoItem_mapFromParent2(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromParent2, "QGraphicsVideoItem_mapFromParent2");
 
 function  QGraphicsVideoItem_mapFromScene2(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromScene2, "QGraphicsVideoItem_mapFromScene2");
 
 function  QGraphicsVideoItem_mapRectFromItem3(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectFromItem3, "QGraphicsVideoItem_mapRectFromItem3");
 
 function  QGraphicsVideoItem_mapRectFromParent3(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectFromParent3, "QGraphicsVideoItem_mapRectFromParent3");
 
 function  QGraphicsVideoItem_mapRectFromScene3(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectFromScene3, "QGraphicsVideoItem_mapRectFromScene3");
 
 function  QGraphicsVideoItem_mapFromItem4(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; polygon: QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromItem4, "QGraphicsVideoItem_mapFromItem4");
 
 function  QGraphicsVideoItem_mapFromParent4(handle: not null QGraphicsVideoItemH; polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromParent4, "QGraphicsVideoItem_mapFromParent4");
 
 function  QGraphicsVideoItem_mapFromScene4(handle: not null QGraphicsVideoItemH; polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromScene4, "QGraphicsVideoItem_mapFromScene4");
 
 function  QGraphicsVideoItem_mapFromItem5(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH;path: QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_mapFromItem5, "QGraphicsVideoItem_mapFromItem5");
 
 function  QGraphicsVideoItem_mapFromParent5(handle: not null QGraphicsVideoItemH; path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_mapFromParent5, "QGraphicsVideoItem_mapFromParent5");
 
 function  QGraphicsVideoItem_mapFromScene5(handle: not null QGraphicsVideoItemH; path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsVideoItem_mapFromScene5, "QGraphicsVideoItem_mapFromScene5");
 
 function  QGraphicsVideoItem_mapToItem6(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapToItem6, "QGraphicsVideoItem_mapToItem6");
 
 function  QGraphicsVideoItem_mapToParent6(handle: not null QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapToParent6, "QGraphicsVideoItem_mapToParent6");
 
 function  QGraphicsVideoItem_mapToScene6(handle: not null QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapToScene6, "QGraphicsVideoItem_mapToScene6");
 
 function  QGraphicsVideoItem_mapToItem7(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH;  x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToItem7, "QGraphicsVideoItem_mapToItem7");
 
 function  QGraphicsVideoItem_mapToParent7(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToParent7, "QGraphicsVideoItem_mapToParent7");
 
 function  QGraphicsVideoItem_mapToScene7(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapToScene7, "QGraphicsVideoItem_mapToScene7");
 
 function  QGraphicsVideoItem_mapRectToItem4(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectToItem4, "QGraphicsVideoItem_mapRectToItem4");
 
 function  QGraphicsVideoItem_mapRectToParent4(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectToParent4, "QGraphicsVideoItem_mapRectToParent4");
 
 function  QGraphicsVideoItem_mapRectToScene4(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectToScene4, "QGraphicsVideoItem_mapRectToScene4");
 
 function  QGraphicsVideoItem_mapFromItem6(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapFromItem6, "QGraphicsVideoItem_mapFromItem6");
 
 function  QGraphicsVideoItem_mapFromParent6(handle: not null QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapFromParent6, "QGraphicsVideoItem_mapFromParent6");
 
 function  QGraphicsVideoItem_mapFromScene6(handle: not null QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsVideoItem_mapFromScene6, "QGraphicsVideoItem_mapFromScene6");
 
 function  QGraphicsVideoItem_mapFromItem7(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromItem7, "QGraphicsVideoItem_mapFromItem7");
 
 function  QGraphicsVideoItem_mapFromParent7(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromParent7, "QGraphicsVideoItem_mapFromParent7");
 
 function  QGraphicsVideoItem_mapFromScene7(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsVideoItem_mapFromScene7, "QGraphicsVideoItem_mapFromScene7");
 
 function  QGraphicsVideoItem_mapRectFromItem4(handle: not null QGraphicsVideoItemH; item:QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectFromItem4, "QGraphicsVideoItem_mapRectFromItem4");
 
 function  QGraphicsVideoItem_mapRectFromParent4(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectFromParent4, "QGraphicsVideoItem_mapRectFromParent4");
 
 function  QGraphicsVideoItem_mapRectFromScene4(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsVideoItem_mapRectFromScene4, "QGraphicsVideoItem_mapRectFromScene4");
 
 function  QGraphicsVideoItem_isAncestorOf(handle: not null QGraphicsVideoItemH; child:QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isAncestorOf, "QGraphicsVideoItem_isAncestorOf");
 
 function  QGraphicsVideoItem_commonAncestorItem(handle: not null QGraphicsVideoItemH;otherItem:QGraphicsVideoItemH) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsVideoItem_commonAncestorItem, "QGraphicsVideoItem_commonAncestorItem");
 
 function  QGraphicsVideoItem_isUnderMouse(handle: not null QGraphicsVideoItemH) return boolean;
 pragma Import(C,QGraphicsVideoItem_isUnderMouse, "QGraphicsVideoItem_isUnderMouse");
 
 function  QGraphicsVideoItem_data(handle: not null QGraphicsVideoItemH; key:integer) return QVariantH;
 pragma Import(C,QGraphicsVideoItem_data, "QGraphicsVideoItem_data");
 
 procedure QGraphicsVideoItem_setData(handle: not null QGraphicsVideoItemH; key:integer;value:QVariantH);
 pragma Import(C,QGraphicsVideoItem_setData, "QGraphicsVideoItem_setData");
 
 function  QGraphicsVideoItem_inputMethodHints(handle: not null QGraphicsVideoItemH) return QtInputMethodHintsH;
 pragma Import(C,QGraphicsVideoItem_inputMethodHints, "QGraphicsVideoItem_inputMethodHints");
 
 procedure QGraphicsVideoItem_setInputMethodHints(handle: not null QGraphicsVideoItemH; hints:QtInputMethodHints);
 pragma Import(C,QGraphicsVideoItem_setInputMethodHints, "QGraphicsVideoItem_setInputMethodHints");
 
 function  QGraphicsVideoItem_layerType(handle: not null QGraphicsVideoItemH) return integer;
 pragma Import(C,QGraphicsVideoItem_layerType, "QGraphicsVideoItem_layerType");
 
 procedure QGraphicsVideoItem_installSceneEventFilter(handle: not null QGraphicsVideoItemH; filterItem:QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_installSceneEventFilter, "QGraphicsVideoItem_installSceneEventFilter");
 
 procedure QGraphicsVideoItem_removeSceneEventFilter(handle: not null QGraphicsVideoItemH; filterItem:QGraphicsVideoItemH);
 pragma Import(C,QGraphicsVideoItem_removeSceneEventFilter, "QGraphicsVideoItem_removeSceneEventFilter");
 
 function  QGraphicsVideoItem_scene(handle: not null QGraphicsVideoItemH) return QGraphicsSceneH;
 pragma Import(C,QGraphicsVideoItem_scene, "QGraphicsVideoItem_scene");
 
 function  QGraphicsVideoItem_videoSurface(handle:not null QGraphicsVideoItemH) return QAbstractVideoSurfaceH;
 pragma Import(C,QGraphicsVideoItem_videoSurface, "QGraphicsVideoItem_videoSurface");
 
--------------------------------------------------------------------------------------------------------------------

 procedure QGraphicsVideoItem_signal_slot_nativeSizeChanged(handle: not null QGraphicsVideoItemH;hook:sizeFProc);
 pragma Import(C,QGraphicsVideoItem_signal_slot_nativeSizeChanged, "QGraphicsVideoItem_signal_slot_nativeSizeChanged");
 
------------------------------------------------------------------------------------------------------------------
 
 procedure QGraphicsVideoItem_setCacheMode(handle: not null QGraphicsVideoItemH;mode:CacheMode; cacheSize:QSizeH);
 procedure QGraphicsVideoItem_setPos(handle: not null QGraphicsVideoItemH;pos:QPointFH);
 procedure QGraphicsVideoItem_ensureVisible(handle: not null QGraphicsVideoItemH;rect:QRectFH; xmargin: integer := 50;  ymargin : integer := 50);
 procedure QGraphicsVideoItem_setTransformOriginPoint(handle: not null QGraphicsVideoItemH;origin:QPointFH);
 function  QGraphicsVideoItem_isObscured(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return boolean;
 function  QGraphicsVideoItem_isObscured(handle: not null QGraphicsVideoItemH;rect:QRectFH) return boolean;
 procedure QGraphicsVideoItem_update(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal);
 procedure QGraphicsVideoItem_update(handle: not null QGraphicsVideoItemH;rect:QRectFH);
 procedure QGraphicsVideoItem_scroll(handle: not null QGraphicsVideoItemH; dx,dy: qreal; rect:QRectFH);

 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; rect:QRectFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; polygon: QPolygonFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; path: QPainterPathH) return QPainterPathH;
 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 function  QGraphicsVideoItem_mapToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 function  QGraphicsVideoItem_mapToParent(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 function  QGraphicsVideoItem_mapToScene(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsVideoItem_mapRectToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsVideoItem_mapRectToItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsVideoItem_mapRectToParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsVideoItem_mapRectToParent(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsVideoItem_mapRectToScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsVideoItem_mapRectToScene(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; rect:QRectFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; path:QPainterPathH) return QPainterPathH;
 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 function  QGraphicsVideoItem_mapFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH; x,y: qreal) return QPointFH;
 function  QGraphicsVideoItem_mapFromParent(handle: not null QGraphicsVideoItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;x,y: qreal) return QPointFH;
 function  QGraphicsVideoItem_mapFromScene(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsVideoItem_mapRectFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsVideoItem_mapRectFromItem(handle: not null QGraphicsVideoItemH;item:QGraphicsVideoItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsVideoItem_mapRectFromParent(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsVideoItem_mapRectFromParent(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QRectFH;

 function  QGraphicsVideoItem_mapRectFromScene(handle: not null QGraphicsVideoItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsVideoItem_mapRectFromScene(handle: not null QGraphicsVideoItemH;x,y,w,h: qreal) return QRectFH;
end;
