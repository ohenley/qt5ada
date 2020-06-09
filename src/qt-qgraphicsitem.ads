--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2014,2015            บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QGraphicsItem  is

 subtype GraphicsItemFlags is cardinal;
 subtype GraphicsItemFlag  is cardinal;

 ItemIsMovable                        : constant GraphicsItemFlag :=  1;
 ItemIsSelectable                     : constant GraphicsItemFlag :=  2;
 ItemIsFocusable                      : constant GraphicsItemFlag :=  4;
 ItemClipsToShape                     : constant GraphicsItemFlag :=  8;
 ItemClipsChildrenToShape             : constant GraphicsItemFlag :=  16#10#;
 ItemIgnoresTransformations           : constant GraphicsItemFlag :=  16#20#;
 ItemIgnoresParentOpacity             : constant GraphicsItemFlag :=  16#40#;
 ItemDoesntPropagateOpacityToChildren : constant GraphicsItemFlag :=  16#80#;
 ItemStacksBehindParent               : constant GraphicsItemFlag :=  16#100#;
 ItemUsesExtendedStyleOption          : constant GraphicsItemFlag :=  16#200#;
 ItemHasNoContents                    : constant GraphicsItemFlag :=  16#400#;
 ItemSendsGeometryChanges             : constant GraphicsItemFlag :=  16#800#;
 ItemAcceptsInputMethod               : constant GraphicsItemFlag :=  16#1000#;
 ItemNegativeZStacksBehindParent      : constant GraphicsItemFlag :=  16#2000#;
 ItemIsPanel                          : constant GraphicsItemFlag :=  16#4000#;
 ItemIsFocusScope                     : constant GraphicsItemFlag :=  16#8000#;
 ItemSendsScenePositionChanges        : constant GraphicsItemFlag :=  16#10000#;
 ItemStopsClickFocusPropagation       : constant GraphicsItemFlag :=  16#20000#;

  type GraphicsItemChange is (
        ItemPositionChange,
        ItemMatrixChange,
        ItemVisibleChange,
        ItemEnabledChange,
        ItemSelectedChange,
        ItemParentChange,
        ItemChildAddedChange,
        ItemChildRemovedChange,
        ItemTransformChange,
        ItemPositionHasChanged,
        ItemTransformHasChanged,
        ItemSceneChange,
        ItemVisibleHasChanged,
        ItemEnabledHasChanged,
        ItemSelectedHasChanged,
        ItemParentHasChanged,
        ItemSceneHasChanged,
        ItemCursorChange,
        ItemCursorHasChanged,
        ItemToolTipChange,
        ItemToolTipHasChanged,
        ItemFlagsChange,
        ItemFlagsHaveChanged,
        ItemZValueChange,
        ItemZValueHasChanged,
        ItemOpacityChange,
        ItemOpacityHasChanged,
        ItemScenePositionHasChanged,
        ItemRotationChange,
        ItemRotationHasChanged,
        ItemScaleChange,
        ItemScaleHasChanged,
        ItemTransformOriginPointChange,
        ItemTransformOriginPointHasChanged);
 pragma Convention(C,GraphicsItemChange);

 type CacheMode is (NoCache,ItemCoordinateCache,DeviceCoordinateCache);
 pragma Convention(C,CacheMode);
   

 type PanelModality  is (NonModal, PanelModal, SceneModal);
 pragma Convention(C,PanelModality);
 
 type InputMethodHint is (
        ImhNone,
        ImhHiddenText,
        ImhNoAutoUppercase,
        ImhPreferNumbers,
        ImhPreferUppercase,
        ImhPreferLowercase,
        ImhNoPredictiveText,
        ImhDigitsOnly,
        ImhFormattedNumbersOnly,
        ImhUppercaseOnly,
        ImhLowercaseOnly,
        ImhDialableCharactersOnly,
        ImhEmailCharactersOnly,
        ImhUrlCharactersOnly,
        ImhExclusiveInputMask );
 pragma Convention(C,InputMethodHint);

 for InputMethodHint use (
        ImhNone => 16#0#,
        ImhHiddenText => 16#1#,
        ImhNoAutoUppercase => 16#2#,
        ImhPreferNumbers => 16#4#,
        ImhPreferUppercase => 16#8#,
        ImhPreferLowercase => 16#10#,
        ImhNoPredictiveText => 16#20#,
        ImhDigitsOnly => 16#10000#,
        ImhFormattedNumbersOnly => 16#20000#,
        ImhUppercaseOnly => 16#40000#,
        ImhLowercaseOnly => 16#80000#,
        ImhDialableCharactersOnly => 16#100000#,
        ImhEmailCharactersOnly => 16#200000#,
        ImhUrlCharactersOnly => 16#400000#,
        ImhExclusiveInputMask => 16#ffff0000#);

 subtype QtInputMethodHints is quint;
 type QtInputMethodHintsH is access all QtInputMethodHints;

 function  QGraphicsItem_create(parent:QGraphicsItemH := Null) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_create, "QGraphicsItem_create");

 procedure QGraphicsItem_destroy(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_destroy, "QGraphicsItem_destroy");

 function  QGraphicsItem_isWidget(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isWidget, "QGraphicsItem_isWidget");
 
 function  QGraphicsItem_isWindow(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isWindow, "QGraphicsItem_isWindow");
 
 function  QGraphicsItem_QGraphicsItem_isPanel(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_QGraphicsItem_isPanel, "QGraphicsItem_QGraphicsItem_isPanel");
 
 function  QGraphicsItem_parentItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_parentItem, "QGraphicsItem_parentItem");
 
 function  QGraphicsItem_topLevelItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_topLevelItem, "QGraphicsItem_topLevelItem");
 
 function  QGraphicsItem_parentObject(handle: not null QGraphicsItemH) return QGraphicsObjectH;
 pragma Import(C,QGraphicsItem_parentObject, "QGraphicsItem_parentObject");
 
 function  QGraphicsItem_parentWidget(handle: not null QGraphicsItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsItem_parentWidget, "QGraphicsItem_parentWidget");
 
 function  QGraphicsItem_topLevelWidget(handle: not null QGraphicsItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsItem_topLevelWidget, "QGraphicsItem_topLevelWidget");
 
 function  QGraphicsItem_window(handle: not null QGraphicsItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsItem_window, "QGraphicsItem_window");
 
 function  QGraphicsItem_panel(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_panel, "QGraphicsItem_panel");
 
 procedure QGraphicsItem_setParentItem(handle: not null QGraphicsItemH; parent:QGraphicsItemH);
 pragma Import(C,QGraphicsItem_setParentItem, "QGraphicsItem_setParentItem");
 
 function  QGraphicsItem_toGraphicsObject(handle: not null QGraphicsItemH) return QGraphicsObjectH;
 pragma Import(C,QGraphicsItem_toGraphicsObject, "QGraphicsItem_toGraphicsObject");
 
 function  QGraphicsItem_group(handle: not null QGraphicsItemH) return QGraphicsItemGroupH;
 pragma Import(C,QGraphicsItem_group, "QGraphicsItem_group");
 
 procedure QGraphicsItem_setGroup(handle: not null QGraphicsItemH;group:QGraphicsItemGroupH);
 pragma Import(C,QGraphicsItem_setGroup, "QGraphicsItem_setGroup");
 
 procedure QGraphicsItem_setFlag(handle: not null QGraphicsItemH;flag: GraphicsItemFlag := ItemIsMovable; enabled:boolean := true);
 pragma Import(C,QGraphicsItem_setFlag, "QGraphicsItem_setFlag");
 
 procedure QGraphicsItem_setFlags(handle: not null QGraphicsItemH; flags: GraphicsItemFlags);
 pragma Import(C,QGraphicsItem_setFlags, "QGraphicsItem_setFlags");
 
 function  QGraphicsItem_cacheMode(handle: not null QGraphicsItemH) return CacheMode;
 pragma Import(C,QGraphicsItem_cacheMode, "QGraphicsItem_cacheMode");
 
 procedure QGraphicsItem_setCacheMode(handle: not null QGraphicsItemH; mode:CacheMode);
 pragma Import(C,QGraphicsItem_setCacheMode, "QGraphicsItem_setCacheMode");
 
 procedure QGraphicsItem_setCacheMode2(handle: not null QGraphicsItemH;mode:CacheMode;cacheSize:QSizeH);
 pragma Import(C,QGraphicsItem_setCacheMode2, "QGraphicsItem_setCacheMode2");
 
 function  QGraphicsItem_panelModality(handle: not null QGraphicsItemH) return PanelModality;
 pragma Import(C,QGraphicsItem_panelModality, "QGraphicsItem_panelModality");
 
 procedure QGraphicsItem_setPanelModality(handle: not null QGraphicsItemH; modality:PanelModality);
 pragma Import(C,QGraphicsItem_setPanelModality, "QGraphicsItem_setPanelModality");
 
 function  QGraphicsItem_isVisible(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isVisible, "QGraphicsItem_isVisible");
 
 function  QGraphicsItem_isVisibleTo(handle: not null QGraphicsItemH;parent:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isVisibleTo, "QGraphicsItem_isVisibleTo");
 
 procedure QGraphicsItem_setVisible(handle: not null QGraphicsItemH; isVisible: boolean);
 pragma Import(C,QGraphicsItem_setVisible, "QGraphicsItem_setVisible");
 
 procedure QGraphicsItem_hide(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_hide, "QGraphicsItem_hide");
 
 procedure QGraphicsItem_show(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_show, "QGraphicsItem_show");
 
 function  QGraphicsItem_isEnabled(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isEnabled, "QGraphicsItem_isEnabled");
 
 procedure QGraphicsItem_setEnabled(handle: not null QGraphicsItemH; enabled:boolean);
 pragma Import(C,QGraphicsItem_setEnabled, "QGraphicsItem_setEnabled");
 
 function  QGraphicsItem_isSelected(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isSelected, "QGraphicsItem_isSelected");
 
 procedure QGraphicsItem_setSelected(handle: not null QGraphicsItemH; isSelected: boolean);
 pragma Import(C,QGraphicsItem_setSelected, "QGraphicsItem_setSelected");
 
 function  QGraphicsItem_acceptDrops(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_acceptDrops, "QGraphicsItem_acceptDrops");
 
 procedure QGraphicsItem_setAcceptDrops(handle: not null QGraphicsItemH;isOn:boolean);
 pragma Import(C,QGraphicsItem_setAcceptDrops, "QGraphicsItem_setAcceptDrops");
 
 function  QGraphicsItem_opacity(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_opacity, "QGraphicsItem_opacity");
 
 function  QGraphicsItem_effectiveOpacity(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_effectiveOpacity, "QGraphicsItem_effectiveOpacity");
 
 procedure QGraphicsItem_setOpacity(handle: not null QGraphicsItemH; opacity:qreal);
 pragma Import(C,QGraphicsItem_setOpacity, "QGraphicsItem_setOpacity");
 
 function  QGraphicsItem_acceptedMouseButtons(handle: not null QGraphicsItemH) return QtMouseButtonsH;
 pragma Import(C,QGraphicsItem_acceptedMouseButtons, "QGraphicsItem_acceptedMouseButtons");
 
 procedure QGraphicsItem_setAcceptedMouseButtons(handle: not null QGraphicsItemH; buttons:QtMouseButtonsH);
 pragma Import(C,QGraphicsItem_setAcceptedMouseButtons, "QGraphicsItem_setAcceptedMouseButtons");
 
 function  QGraphicsItem_acceptHoverEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_acceptHoverEvents, "QGraphicsItem_acceptHoverEvents");
 
 procedure QGraphicsItem_setAcceptHoverEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsItem_setAcceptHoverEvents, "QGraphicsItem_setAcceptHoverEvents");
 
 function  QGraphicsItem_acceptTouchEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_acceptTouchEvents, "QGraphicsItem_acceptTouchEvents");
 
 procedure QGraphicsItem_setAcceptTouchEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsItem_setAcceptTouchEvents, "QGraphicsItem_setAcceptTouchEvents");
 
 function  QGraphicsItem_filtersChildEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_filtersChildEvents, "QGraphicsItem_filtersChildEvents");
 
 procedure QGraphicsItem_setFiltersChildEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsItem_setFiltersChildEvents, "QGraphicsItem_setFiltersChildEvents");
 
 function  QGraphicsItem_handlesChildEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_handlesChildEvents, "QGraphicsItem_handlesChildEvents");
 
 procedure QGraphicsItem_setHandlesChildEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsItem_setHandlesChildEvents, "QGraphicsItem_setHandlesChildEvents");
 
 function  QGraphicsItem_isActive(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isActive, "QGraphicsItem_isActive");
 
 procedure QGraphicsItem_setActive(handle: not null QGraphicsItemH; active:boolean);
 pragma Import(C,QGraphicsItem_setActive, "QGraphicsItem_setActive");
 
 function  QGraphicsItem_hasFocus(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_hasFocus, "QGraphicsItem_hasFocus");
 
 procedure QGraphicsItem_setFocus(handle: not null QGraphicsItemH; focusReason:QtFocusReason := QtOtherFocusReason);
 pragma Import(C,QGraphicsItem_setFocus, "QGraphicsItem_setFocus");
 
 procedure QGraphicsItem_clearFocus(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_clearFocus, "QGraphicsItem_clearFocus");
 
 function  QGraphicsItem_focusProxy(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_focusProxy, "QGraphicsItem_focusProxy");
 
 procedure QGraphicsItem_setFocusProxy(handle: not null QGraphicsItemH;item:QGraphicsItemH);
 pragma Import(C,QGraphicsItem_setFocusProxy, "QGraphicsItem_setFocusProxy");
 
 function  QGraphicsItem_focusItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_focusItem, "QGraphicsItem_focusItem");
 
 function  QGraphicsItem_focusScopeItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_focusScopeItem, "QGraphicsItem_focusScopeItem");
 
 procedure QGraphicsItem_grabMouse(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_grabMouse, "QGraphicsItem_grabMouse");
 
 procedure QGraphicsItem_ungrabMouse(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_ungrabMouse, "QGraphicsItem_ungrabMouse");
 
 procedure QGraphicsItem_grabKeyboard(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_grabKeyboard, "QGraphicsItem_grabKeyboard");
 
 procedure QGraphicsItem_ungrabKeyboard(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_ungrabKeyboard, "QGraphicsItem_ungrabKeyboard");
 
 function  QGraphicsItem_pos(handle: not null QGraphicsItemH) return QPointFH;
 pragma Import(C,QGraphicsItem_pos, "QGraphicsItem_pos");
 
 function  QGraphicsItem_x(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_x, "QGraphicsItem_x");
 
 procedure QGraphicsItem_setX(handle: not null QGraphicsItemH; x:qreal);
 pragma Import(C,QGraphicsItem_setX, "QGraphicsItem_setX");
 
 function  QGraphicsItem_y(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_y, "QGraphicsItem_y");
 
 procedure QGraphicsItem_setY(handle: not null QGraphicsItemH;y:qreal);
 pragma Import(C,QGraphicsItem_setY, "QGraphicsItem_setY");
 
 function  QGraphicsItem_scenePos(handle: not null QGraphicsItemH) return QPointFH;
 pragma Import(C,QGraphicsItem_scenePos, "QGraphicsItem_scenePos");
 
 procedure QGraphicsItem_setPos(handle: not null QGraphicsItemH; x,y: qreal);
 pragma Import(C,QGraphicsItem_setPos, "QGraphicsItem_setPos");
 
 procedure QGraphicsItem_setPos2(handle: not null QGraphicsItemH;pos:QPointFH);
 pragma Import(C,QGraphicsItem_setPos2, "QGraphicsItem_setPos2");
 
 procedure QGraphicsItem_moveBy(handle: not null QGraphicsItemH; dx,dy: qreal);
 pragma Import(C,QGraphicsItem_moveBy, "QGraphicsItem_moveBy");
 
 procedure QGraphicsItem_ensureVisible(handle: not null QGraphicsItemH; x,y,w,h: qt.qreal; xmargin : integer := 50; ymargin:integer := 50);
 pragma Import(C,QGraphicsItem_ensureVisible, "QGraphicsItem_ensureVisible");
 
 procedure QGraphicsItem_ensureVisible2(handle: not null QGraphicsItemH; rect:QRectFH; xmargin : integer := 50; ymargin:integer := 50);
 pragma Import(C,QGraphicsItem_ensureVisible2, "QGraphicsItem_ensureVisible2");
 
 function  QGraphicsItem_matrix(handle: not null QGraphicsItemH) return QMatrixH;
 pragma Import(C,QGraphicsItem_matrix, "QGraphicsItem_matrix");
 
 function  QGraphicsItem_sceneMatrix(handle: not null QGraphicsItemH) return QMatrixH;
 pragma Import(C,QGraphicsItem_sceneMatrix, "QGraphicsItem_sceneMatrix");
 
 procedure QGraphicsItem_setMatrix(handle: not null QGraphicsItemH;matrix:QMatrixH; combine : boolean := false);
 pragma Import(C,QGraphicsItem_setMatrix, "QGraphicsItem_setMatrix");
 
 procedure QGraphicsItem_resetMatrix(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_resetMatrix, "QGraphicsItem_resetMatrix");
 
 function  QGraphicsItem_transform(handle: not null QGraphicsItemH) return QTransformH;
 pragma Import(C,QGraphicsItem_transform, "QGraphicsItem_transform");
 
 function  QGraphicsItem_sceneTransform(handle: not null QGraphicsItemH) return QTransformH;
 pragma Import(C,QGraphicsItem_sceneTransform, "QGraphicsItem_sceneTransform");
 
 function  QGraphicsItem_deviceTransform(handle: not null QGraphicsItemH;  viewportTransform:QTransformH) return QTransformH;
 pragma Import(C,QGraphicsItem_deviceTransform, "QGraphicsItem_deviceTransform");
 
 function  QGraphicsItem_itemTransform(handle: not null QGraphicsItemH; otherItem:QGraphicsItemH; ok : pboolean := null) return QTransformH;
 pragma Import(C,QGraphicsItem_itemTransform, "QGraphicsItem_itemTransform");
 
 procedure QGraphicsItem_setTransform(handle: not null QGraphicsItemH; matrix:QTransformH; combine: boolean := false);
 pragma Import(C,QGraphicsItem_setTransform, "QGraphicsItem_setTransform");
 
 procedure QGraphicsItem_resetTransform(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_resetTransform, "QGraphicsItem_resetTransform");
 
 procedure QGraphicsItem_setRotation(handle: not null QGraphicsItemH; angle: qreal);
 pragma Import(C,QGraphicsItem_setRotation, "QGraphicsItem_setRotation");
 
 function  QGraphicsItem_rotation(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_rotation, "QGraphicsItem_rotation");
 
 procedure QGraphicsItem_setScale(handle: not null QGraphicsItemH; scale:qreal);
 pragma Import(C,QGraphicsItem_setScale, "QGraphicsItem_setScale");
 
 function  QGraphicsItem_scale(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_scale, "QGraphicsItem_scale");
 
 function  QGraphicsItem_transformOriginPoint(handle: not null QGraphicsItemH) return QPointFH;
 pragma Import(C,QGraphicsItem_transformOriginPoint, "QGraphicsItem_transformOriginPoint");
 
 procedure QGraphicsItem_setTransformOriginPoint(handle: not null QGraphicsItemH; ax,ay: qreal);
 pragma Import(C,QGraphicsItem_setTransformOriginPoint, "QGraphicsItem_setTransformOriginPoint");
 
 procedure QGraphicsItem_setTransformOriginPoint2(handle: not null QGraphicsItemH; origin:QPointFH);
 pragma Import(C,QGraphicsItem_setTransformOriginPoint2, "QGraphicsItem_setTransformOriginPoint2");
 
 procedure QGraphicsItem_advance(handle: not null QGraphicsItemH; phase:integer);
 pragma Import(C,QGraphicsItem_advance, "QGraphicsItem_advance");
 
 function  QGraphicsItem_zValue(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_zValue, "QGraphicsItem_zValue");
 
 procedure QGraphicsItem_setZValue(handle: not null QGraphicsItemH;z:qreal);
 pragma Import(C,QGraphicsItem_setZValue, "QGraphicsItem_setZValue");
 
 procedure QGraphicsItem_stackBefore(handle: not null QGraphicsItemH; sibling:QGraphicsItemH);
 pragma Import(C,QGraphicsItem_stackBefore, "QGraphicsItem_stackBefore");
 
 function  QGraphicsItem_boundingRect(handle: not null QGraphicsItemH) return QRectFH;
 pragma Import(C,QGraphicsItem_boundingRect, "QGraphicsItem_boundingRect");
 
 function  QGraphicsItem_childrenBoundingRect(handle: not null QGraphicsItemH) return QRectFH;
 pragma Import(C,QGraphicsItem_childrenBoundingRect, "QGraphicsItem_childrenBoundingRect");
 
 function  QGraphicsItem_sceneBoundingRect(handle: not null QGraphicsItemH) return QRectFH;
 pragma Import(C,QGraphicsItem_sceneBoundingRect, "QGraphicsItem_sceneBoundingRect");
 
 function  QGraphicsItem_shape(handle: not null QGraphicsItemH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_shape, "QGraphicsItem_shape");
 
 function  QGraphicsItem_isClipped(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isClipped, "QGraphicsItem_isClipped");
 
 function  QGraphicsItem_clipPath(handle: not null QGraphicsItemH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_clipPath, "QGraphicsItem_clipPath");
 
 function  QGraphicsItem_contains(handle: not null QGraphicsItemH;point:QPointFH) return boolean;
 pragma Import(C,QGraphicsItem_contains, "QGraphicsItem_contains");
 
 function  QGraphicsItem_collidesWithItem(handle: not null QGraphicsItemH; otherItem:QGraphicsItemH; mode:QtItemSelectionMode := QtIntersectsItemShape) return boolean;
 pragma Import(C,QGraphicsItem_collidesWithItem, "QGraphicsItem_collidesWithItem");
 
 function  QGraphicsItem_collidesWithPath(handle: not null QGraphicsItemH;path:QPainterPathH; mode:QtItemSelectionMode := QtIntersectsItemShape) return boolean;
 pragma Import(C,QGraphicsItem_collidesWithPath, "QGraphicsItem_collidesWithPath");
 
 function  QGraphicsItem_isObscured(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isObscured, "QGraphicsItem_isObscured");
 
 function  QGraphicsItem_isObscured2(handle: not null QGraphicsItemH; x,y,w,h: qreal) return boolean;
 pragma Import(C,QGraphicsItem_isObscured2, "QGraphicsItem_isObscured2");
 
 function  QGraphicsItem_isObscured3(handle: not null QGraphicsItemH;rect:QRectFH) return boolean;
 pragma Import(C,QGraphicsItem_isObscured3, "QGraphicsItem_isObscured3");
 
 function  QGraphicsItem_isObscuredBy(handle: not null QGraphicsItemH;item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isObscuredBy, "QGraphicsItem_isObscuredBy");
 
 function  QGraphicsItem_opaqueArea(handle: not null QGraphicsItemH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_opaqueArea, "QGraphicsItem_opaqueArea");
 
 function  QGraphicsItem_boundingRegion(handle: not null QGraphicsItemH; itemToDeviceTransform: QTransformH) return QRegionH;
 pragma Import(C,QGraphicsItem_boundingRegion, "QGraphicsItem_boundingRegion");
 
 function  QGraphicsItem_boundingRegionGranularity(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsItem_boundingRegionGranularity, "QGraphicsItem_boundingRegionGranularity");
 
 procedure QGraphicsItem_setBoundingRegionGranularity(handle: not null QGraphicsItemH; granularity:qreal);
 pragma Import(C,QGraphicsItem_setBoundingRegionGranularity, "QGraphicsItem_setBoundingRegionGranularity");
 
 procedure QGraphicsItem_paint(handle: not null QGraphicsItemH;painter:QPainterH;  option:QStyleOptionGraphicsItemH; widget: QWidgetH := null);
 pragma Import(C,QGraphicsItem_paint, "QGraphicsItem_paint");
 
 procedure QGraphicsItem_update(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_update, "QGraphicsItem_update");
 
 procedure QGraphicsItem_update2(handle: not null QGraphicsItemH; x,y,w,h: qreal);
 pragma Import(C,QGraphicsItem_update2, "QGraphicsItem_update2");
 
 procedure QGraphicsItem_update3(handle: not null QGraphicsItemH;rect:QRectFH);
 pragma Import(C,QGraphicsItem_update3, "QGraphicsItem_update3");
 
 procedure QGraphicsItem_scroll(handle: not null QGraphicsItemH; dx,dy: qreal);
 pragma Import(C,QGraphicsItem_scroll, "QGraphicsItem_scroll");
 
 procedure QGraphicsItem_scroll2(handle: not null QGraphicsItemH; dx,dy: qt.qreal; rect: QRectFH);
 pragma Import(C,QGraphicsItem_scroll2, "QGraphicsItem_scroll2");
 
 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH; item:QGraphicsItemH; point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsItem_mapToItem, "QGraphicsItem_mapToItem");
 
 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsItem_mapToParent, "QGraphicsItem_mapToParent");
 
 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsItem_mapToScene, "QGraphicsItem_mapToScene");
 
 function  QGraphicsItem_mapToItem2(handle: not null QGraphicsItemH; item:QGraphicsItemH; rect: QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToItem2, "QGraphicsItem_mapToItem2");
 
 function  QGraphicsItem_mapToParent2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToParent2, "QGraphicsItem_mapToParent2");
 
 function  QGraphicsItem_mapToScene2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToScene2, "QGraphicsItem_mapToScene2");
 
 function  QGraphicsItem_mapRectToItem3(handle: not null QGraphicsItemH; item:QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectToItem3, "QGraphicsItem_mapRectToItem3");
 
 function  QGraphicsItem_mapRectToParent3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectToParent3, "QGraphicsItem_mapRectToParent3");
 
 function  QGraphicsItem_mapRectToScene3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectToScene3, "QGraphicsItem_mapRectToScene3");
 
 function  QGraphicsItem_mapToItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; polygon: QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToItem4, "QGraphicsItem_mapToItem4");
 
 function  QGraphicsItem_mapToParent4(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToParent4, "QGraphicsItem_mapToParent4");
 
 function  QGraphicsItem_mapToScene4(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToScene4, "QGraphicsItem_mapToScene4");
 
 function  QGraphicsItem_mapToItem5(handle: not null QGraphicsItemH; item:QGraphicsItemH; path: QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_mapToItem5, "QGraphicsItem_mapToItem5");
 
 function  QGraphicsItem_mapToParent5(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_mapToParent5, "QGraphicsItem_mapToParent5");
 
 function  QGraphicsItem_mapToScene5(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_mapToScene5, "QGraphicsItem_mapToScene5");
 
 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH; item:QGraphicsItemH; point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsItem_mapFromItem, "QGraphicsItem_mapFromItem");
 
 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsItem_mapFromParent, "QGraphicsItem_mapFromParent");
 
 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsItem_mapFromScene, "QGraphicsItem_mapFromScene");
 
 function  QGraphicsItem_mapFromItem2(handle: not null QGraphicsItemH; item:QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromItem2, "QGraphicsItem_mapFromItem2");
 
 function  QGraphicsItem_mapFromParent2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromParent2, "QGraphicsItem_mapFromParent2");
 
 function  QGraphicsItem_mapFromScene2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromScene2, "QGraphicsItem_mapFromScene2");
 
 function  QGraphicsItem_mapRectFromItem3(handle: not null QGraphicsItemH;item:QGraphicsItemH; rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectFromItem3, "QGraphicsItem_mapRectFromItem3");
 
 function  QGraphicsItem_mapRectFromParent3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectFromParent3, "QGraphicsItem_mapRectFromParent3");
 
 function  QGraphicsItem_mapRectFromScene3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectFromScene3, "QGraphicsItem_mapRectFromScene3");
 
 function  QGraphicsItem_mapFromItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; polygon: QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromItem4, "QGraphicsItem_mapFromItem4");
 
 function  QGraphicsItem_mapFromParent4(handle: not null QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromParent4, "QGraphicsItem_mapFromParent4");
 
 function  QGraphicsItem_mapFromScene4(handle: not null QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromScene4, "QGraphicsItem_mapFromScene4");
 
 function  QGraphicsItem_mapFromItem5(handle: not null QGraphicsItemH; item:QGraphicsItemH;path: QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_mapFromItem5, "QGraphicsItem_mapFromItem5");
 
 function  QGraphicsItem_mapFromParent5(handle: not null QGraphicsItemH; path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_mapFromParent5, "QGraphicsItem_mapFromParent5");
 
 function  QGraphicsItem_mapFromScene5(handle: not null QGraphicsItemH; path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsItem_mapFromScene5, "QGraphicsItem_mapFromScene5");
 
 function  QGraphicsItem_mapToItem6(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsItem_mapToItem6, "QGraphicsItem_mapToItem6");
 
 function  QGraphicsItem_mapToParent6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsItem_mapToParent6, "QGraphicsItem_mapToParent6");
 
 function  QGraphicsItem_mapToScene6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsItem_mapToScene6, "QGraphicsItem_mapToScene6");
 
 function  QGraphicsItem_mapToItem7(handle: not null QGraphicsItemH; item:QGraphicsItemH;  x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToItem7, "QGraphicsItem_mapToItem7");
 
 function  QGraphicsItem_mapToParent7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToParent7, "QGraphicsItem_mapToParent7");
 
 function  QGraphicsItem_mapToScene7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapToScene7, "QGraphicsItem_mapToScene7");
 
 function  QGraphicsItem_mapRectToItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectToItem4, "QGraphicsItem_mapRectToItem4");
 
 function  QGraphicsItem_mapRectToParent4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectToParent4, "QGraphicsItem_mapRectToParent4");
 
 function  QGraphicsItem_mapRectToScene4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectToScene4, "QGraphicsItem_mapRectToScene4");
 
 function  QGraphicsItem_mapFromItem6(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsItem_mapFromItem6, "QGraphicsItem_mapFromItem6");
 
 function  QGraphicsItem_mapFromParent6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsItem_mapFromParent6, "QGraphicsItem_mapFromParent6");
 
 function  QGraphicsItem_mapFromScene6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsItem_mapFromScene6, "QGraphicsItem_mapFromScene6");
 
 function  QGraphicsItem_mapFromItem7(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromItem7, "QGraphicsItem_mapFromItem7");
 
 function  QGraphicsItem_mapFromParent7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromParent7, "QGraphicsItem_mapFromParent7");
 
 function  QGraphicsItem_mapFromScene7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsItem_mapFromScene7, "QGraphicsItem_mapFromScene7");
 
 function  QGraphicsItem_mapRectFromItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectFromItem4, "QGraphicsItem_mapRectFromItem4");
 
 function  QGraphicsItem_mapRectFromParent4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectFromParent4, "QGraphicsItem_mapRectFromParent4");
 
 function  QGraphicsItem_mapRectFromScene4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsItem_mapRectFromScene4, "QGraphicsItem_mapRectFromScene4");
 
 function  QGraphicsItem_isAncestorOf(handle: not null QGraphicsItemH; child:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isAncestorOf, "QGraphicsItem_isAncestorOf");
 
 function  QGraphicsItem_commonAncestorItem(handle: not null QGraphicsItemH;otherItem:QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItem_commonAncestorItem, "QGraphicsItem_commonAncestorItem");
 
 function  QGraphicsItem_isUnderMouse(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_isUnderMouse, "QGraphicsItem_isUnderMouse");
 
 function  QGraphicsItem_data(handle: not null QGraphicsItemH; key:integer) return QVariantH;
 pragma Import(C,QGraphicsItem_data, "QGraphicsItem_data");
 
 procedure QGraphicsItem_setData(handle: not null QGraphicsItemH; key:integer;value:QVariantH);
 pragma Import(C,QGraphicsItem_setData, "QGraphicsItem_setData");
 
 function  QGraphicsItem_inputMethodHints(handle: not null QGraphicsItemH) return QtInputMethodHintsH;
 pragma Import(C,QGraphicsItem_inputMethodHints, "QGraphicsItem_inputMethodHints");
 
 procedure QGraphicsItem_setInputMethodHints(handle: not null QGraphicsItemH; hints:QtInputMethodHints);
 pragma Import(C,QGraphicsItem_setInputMethodHints, "QGraphicsItem_setInputMethodHints");
 
 function  QGraphicsItem_layerType(handle: not null QGraphicsItemH) return integer;
 pragma Import(C,QGraphicsItem_layerType, "QGraphicsItem_layerType");
 
 procedure QGraphicsItem_installSceneEventFilter(handle: not null QGraphicsItemH; filterItem:QGraphicsItemH);
 pragma Import(C,QGraphicsItem_installSceneEventFilter, "QGraphicsItem_installSceneEventFilter");
 
 procedure QGraphicsItem_removeSceneEventFilter(handle: not null QGraphicsItemH; filterItem:QGraphicsItemH);
 pragma Import(C,QGraphicsItem_removeSceneEventFilter, "QGraphicsItem_removeSceneEventFilter");
 
 function  QGraphicsItem_scene(handle: not null QGraphicsItemH) return QGraphicsSceneH;
 pragma Import(C,QGraphicsItem_scene, "QGraphicsItem_scene");
 
 procedure QGraphicsItem_updateMicroFocus(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_updateMicroFocus, "QGraphicsItem_updateMicroFocus");
 
 function  QGraphicsItem_sceneEventFilter(handle: not null QGraphicsItemH; watched:QGraphicsItemH; event:QEventH) return boolean;
 pragma Import(C,QGraphicsItem_sceneEventFilter, "QGraphicsItem_sceneEventFilter");
 
 function  QGraphicsItem_sceneEvent(handle: not null QGraphicsItemH; event:QEventH) return boolean;
 pragma Import(C,QGraphicsItem_sceneEvent, "QGraphicsItem_sceneEvent");
 
 procedure QGraphicsItem_contextMenuEvent(handle: not null QGraphicsItemH;event:QContextMenuEventH);
 pragma Import(C,QGraphicsItem_contextMenuEvent, "QGraphicsItem_contextMenuEvent");
 
 procedure QGraphicsItem_dragEnterEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsItem_dragEnterEvent, "QGraphicsItem_dragEnterEvent");
 
 procedure QGraphicsItem_dragLeaveEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsItem_dragLeaveEvent, "QGraphicsItem_dragLeaveEvent");
 
 procedure QGraphicsItem_dragMoveEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsItem_dragMoveEvent, "QGraphicsItem_dragMoveEvent");
 
 procedure QGraphicsItem_dropEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsItem_dropEvent, "QGraphicsItem_dropEvent");
 
 procedure QGraphicsItem_focusInEvent(handle: not null QGraphicsItemH;event:QFocusEventH);
 pragma Import(C,QGraphicsItem_focusInEvent, "QGraphicsItem_focusInEvent");
 
 procedure QGraphicsItem_focusOutEvent(handle: not null QGraphicsItemH;event:QFocusEventH);
 pragma Import(C,QGraphicsItem_focusOutEvent, "QGraphicsItem_focusOutEvent");
 
 procedure QGraphicsItem_hoverEnterEvent(handle: not null QGraphicsItemH;event:QHoverEventH);
 pragma Import(C,QGraphicsItem_hoverEnterEvent, "QGraphicsItem_hoverEnterEvent");
 
 procedure QGraphicsItem_hoverMoveEvent(handle: not null QGraphicsItemH;event:QHoverEventH);
 pragma Import(C,QGraphicsItem_hoverMoveEvent, "QGraphicsItem_hoverMoveEvent");
 
 procedure QGraphicsItem_hoverLeaveEvent(handle: not null QGraphicsItemH;event:QHoverEventH);
 pragma Import(C,QGraphicsItem_hoverLeaveEvent, "QGraphicsItem_hoverLeaveEvent");
 
 procedure QGraphicsItem_keyPressEvent(handle: not null QGraphicsItemH;event:QKeyEventH);
 pragma Import(C,QGraphicsItem_keyPressEvent, "QGraphicsItem_keyPressEvent");
 
 procedure QGraphicsItem_keyReleaseEvent(handle: not null QGraphicsItemH;event:QKeyEventH);
 pragma Import(C,QGraphicsItem_keyReleaseEvent, "QGraphicsItem_keyReleaseEvent");
 
 procedure QGraphicsItem_mousePressEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsItem_mousePressEvent, "QGraphicsItem_mousePressEvent");
 
 procedure QGraphicsItem_mouseMoveEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsItem_mouseMoveEvent, "QGraphicsItem_mouseMoveEvent");
 
 procedure QGraphicsItem_mouseReleaseEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsItem_mouseReleaseEvent, "QGraphicsItem_mouseReleaseEvent");
 
 procedure QGraphicsItem_mouseDoubleClickEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsItem_mouseDoubleClickEvent, "QGraphicsItem_mouseDoubleClickEvent");
 
 procedure QGraphicsItem_wheelEvent(handle: not null QGraphicsItemH;event:QWheelEventH);
 pragma Import(C,QGraphicsItem_wheelEvent, "QGraphicsItem_wheelEvent");
 
 procedure QGraphicsItem_inputMethodEvent(handle: not null QGraphicsItemH;event:QInputMethodEventH);
 pragma Import(C,QGraphicsItem_inputMethodEvent, "QGraphicsItem_inputMethodEvent");
 
 function  QGraphicsItem_inputMethodQuery(handle: not null QGraphicsItemH;query:QtInputMethodQuery) return QVariantH;
 pragma Import(C,QGraphicsItem_inputMethodQuery, "QGraphicsItem_inputMethodQuery");
 
 function  QGraphicsItem_itemChange(handle: not null QGraphicsItemH;change:GraphicsItemChange;value: QVariantH) return QVariantH;
 pragma Import(C,QGraphicsItem_itemChange, "QGraphicsItem_itemChange");
 
 function  QGraphicsItem_supportsExtension(handle: not null QGraphicsItemH; extension: integer) return boolean;
 pragma Import(C,QGraphicsItem_supportsExtension, "QGraphicsItem_supportsExtension");
 
 procedure QGraphicsItem_setExtension(handle: not null QGraphicsItemH; extension: integer;variant: QVariantH);
 pragma Import(C,QGraphicsItem_setExtension, "QGraphicsItem_setExtension");
 
 function  QGraphicsItem_extension(handle: not null QGraphicsItemH;variant:QVariantH) return QVariantH;
 pragma Import(C,QGraphicsItem_extension, "QGraphicsItem_extension");

-------------------------------------------------------------------------------------------------------------
 procedure QGraphicsItem_setCacheMode(handle: not null QGraphicsItemH;mode:CacheMode; cacheSize:QSizeH);
 procedure QGraphicsItem_setPos(handle: not null QGraphicsItemH;pos:QPointFH);
 procedure QGraphicsItem_ensureVisible(handle: not null QGraphicsItemH;rect:QRectFH; xmargin: integer := 50;  ymargin : integer := 50);
 procedure QGraphicsItem_setTransformOriginPoint(handle: not null QGraphicsItemH;origin:QPointFH);
 function  QGraphicsItem_isObscured(handle: not null QGraphicsItemH;x,y,w,h: qreal) return boolean;
 function  QGraphicsItem_isObscured(handle: not null QGraphicsItemH;rect:QRectFH) return boolean;
 procedure QGraphicsItem_update(handle: not null QGraphicsItemH; x,y,w,h: qreal);
 procedure QGraphicsItem_update(handle: not null QGraphicsItemH;rect:QRectFH);
 procedure QGraphicsItem_scroll(handle: not null QGraphicsItemH; dx,dy: qreal; rect:QRectFH);

 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; rect:QRectFH) return QPolygonFH;
 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; polygon: QPolygonFH) return QPolygonFH;
 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path: QPainterPathH) return QPainterPathH;
 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsItem_mapToParent(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsItem_mapToScene(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsItem_mapRectToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsItem_mapRectToParent(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsItem_mapRectToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsItem_mapRectToScene(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; rect:QRectFH) return QPolygonFH;
 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path:QPainterPathH) return QPainterPathH;
 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsItem_mapFromParent(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH;
 function  QGraphicsItem_mapFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsItem_mapRectFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsItem_mapRectFromParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH;

 function  QGraphicsItem_mapRectFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsItem_mapRectFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH;
 -------------------------------------------------------------------------------------------------------
 function  QGraphicsItemAnimation_create(parent:QObjectH := null) return QGraphicsItemAnimationH ;
 pragma Import(C,QGraphicsItemAnimation_create, "QGraphicsItemAnimation_create");
 
 procedure QGraphicsItemAnimation_destroy(handle: not null QGraphicsItemAnimationH);
 pragma Import(C,QGraphicsItemAnimation_destroy, "QGraphicsItemAnimation_destroy");
 
 function  QGraphicsItemAnimation_item(handle: not null QGraphicsItemAnimationH) return QGraphicsItemH;
 pragma Import(C,QGraphicsItemAnimation_item, "QGraphicsItemAnimation_item");
 
 procedure QGraphicsItemAnimation_setItem(handle: not null QGraphicsItemAnimationH;item:QGraphicsItemH);
 pragma Import(C,QGraphicsItemAnimation_setItem, "QGraphicsItemAnimation_setItem");
 
 function  QGraphicsItemAnimation_timeLine(handle: not null QGraphicsItemAnimationH) return QTimeLineH;
 pragma Import(C,QGraphicsItemAnimation_timeLine, "QGraphicsItemAnimation_timeLine");
 
 procedure QGraphicsItemAnimation_setTimeLine(handle: not null QGraphicsItemAnimationH; timeLine: QTimeLineH);
 pragma Import(C,QGraphicsItemAnimation_setTimeLine, "QGraphicsItemAnimation_setTimeLine");
 
 function  QGraphicsItemAnimation_posAt(handle: not null QGraphicsItemAnimationH;step:qreal) return QPointFH;
 pragma Import(C,QGraphicsItemAnimation_posAt, "QGraphicsItemAnimation_posAt");
 
 function  QGraphicsItemAnimation_posList(handle: not null QGraphicsItemAnimationH) return QListH;
 pragma Import(C,QGraphicsItemAnimation_posList, "QGraphicsItemAnimation_posList");
 
 procedure QGraphicsItemAnimation_setPosAt(handle: not null QGraphicsItemAnimationH;step:qreal;pos: QPointFH);
 pragma Import(C,QGraphicsItemAnimation_setPosAt, "QGraphicsItemAnimation_setPosAt");
 
 function  QGraphicsItemAnimation_matrixAt(handle: not null QGraphicsItemAnimationH;step:qreal) return QMatrixH;
 pragma Import(C,QGraphicsItemAnimation_matrixAt, "QGraphicsItemAnimation_matrixAt");
 
 function  QGraphicsItemAnimation_rotationAt(handle: not null QGraphicsItemAnimationH;step:qreal) return qreal;
 pragma Import(C,QGraphicsItemAnimation_rotationAt, "QGraphicsItemAnimation_rotationAt");
 
 function  QGraphicsItemAnimation_rotationList(handle: not null QGraphicsItemAnimationH) return QListH;
 pragma Import(C,QGraphicsItemAnimation_rotationList, "QGraphicsItemAnimation_rotationList");
 
 procedure QGraphicsItemAnimation_setRotationAt(handle: not null QGraphicsItemAnimationH;step,angle:qreal);
 pragma Import(C,QGraphicsItemAnimation_setRotationAt, "QGraphicsItemAnimation_setRotationAt");
 
 function  QGraphicsItemAnimation_xTranslationAt(handle: not null QGraphicsItemAnimationH;step:qreal) return qreal;
 pragma Import(C,QGraphicsItemAnimation_xTranslationAt, "QGraphicsItemAnimation_xTranslationAt");
 
 function  QGraphicsItemAnimation_yTranslationAt(handle: not null QGraphicsItemAnimationH;step:qreal) return qreal;
 pragma Import(C,QGraphicsItemAnimation_yTranslationAt, "QGraphicsItemAnimation_yTranslationAt");
 
 function  QGraphicsItemAnimation_translationList(handle: not null QGraphicsItemAnimationH) return QListH;
 pragma Import(C,QGraphicsItemAnimation_translationList, "QGraphicsItemAnimation_translationList");
 
 procedure QGraphicsItemAnimation_setTranslationAt(handle: not null QGraphicsItemAnimationH;step,dx,dy:qreal);
 pragma Import(C,QGraphicsItemAnimation_setTranslationAt, "QGraphicsItemAnimation_setTranslationAt");
 
 function  QGraphicsItemAnimation_verticalScaleAt(handle: not null QGraphicsItemAnimationH;step:qreal) return qreal;
 pragma Import(C,QGraphicsItemAnimation_verticalScaleAt, "QGraphicsItemAnimation_verticalScaleAt");
 
 function  QGraphicsItemAnimation_horizontalScaleAt(handle: not null QGraphicsItemAnimationH;step:qreal) return qreal;
 pragma Import(C,QGraphicsItemAnimation_horizontalScaleAt, "QGraphicsItemAnimation_horizontalScaleAt");
 
 function  QGraphicsItemAnimation_scaleList(handle: not null QGraphicsItemAnimationH) return QListH;
 pragma Import(C,QGraphicsItemAnimation_scaleList, "QGraphicsItemAnimation_scaleList");
 
 procedure QGraphicsItemAnimation_setScaleAt(handle: not null QGraphicsItemAnimationH;step,sx,sv:qreal);
 pragma Import(C,QGraphicsItemAnimation_setScaleAt, "QGraphicsItemAnimation_setScaleAt");
 
 function  QGraphicsItemAnimation_verticalShearAt(handle: not null QGraphicsItemAnimationH;step:qreal) return qreal;
 pragma Import(C,QGraphicsItemAnimation_verticalShearAt, "QGraphicsItemAnimation_verticalShearAt");
 
 function  QGraphicsItemAnimation_horizontalShearAt(handle: not null QGraphicsItemAnimationH;step:qreal) return qreal;
 pragma Import(C,QGraphicsItemAnimation_horizontalShearAt, "QGraphicsItemAnimation_horizontalShearAt");
 
 function  QGraphicsItemAnimation_shearList(handle: not null QGraphicsItemAnimationH) return QListH;
 pragma Import(C,QGraphicsItemAnimation_shearList, "QGraphicsItemAnimation_shearList");
 
 procedure QGraphicsItemAnimation_setShearAt(handle: not null QGraphicsItemAnimationH;step,sh,sv:qreal);
 pragma Import(C,QGraphicsItemAnimation_setShearAt, "QGraphicsItemAnimation_setShearAt");
 
 procedure QGraphicsItemAnimation_clear(handle: not null QGraphicsItemAnimationH);
 pragma Import(C,QGraphicsItemAnimation_clear, "QGraphicsItemAnimation_clear");
 
--
 procedure QGraphicsItemAnimation_setStep(handle:not null QGraphicsItemAnimationH;x:qreal);
 pragma Import(C,QGraphicsItemAnimation_setStep, "QGraphicsItemAnimation_setStep");
 
 procedure QGraphicsItemAnimation_reset(handle:not null QGraphicsItemAnimationH);
 pragma Import(C,QGraphicsItemAnimation_reset, "QGraphicsItemAnimation_reset");
 
 procedure QGraphicsItemAnimation_beforeAnimationStep(handle:not null QGraphicsItemAnimationH;step:qreal);
 pragma Import(C,QGraphicsItemAnimation_beforeAnimationStep, "QGraphicsItemAnimation_beforeAnimationStep");
 
 procedure QGraphicsItemAnimation_afterAnimationStep(handle:not null QGraphicsItemAnimationH;step:qreal);
 pragma Import(C,QGraphicsItemAnimation_afterAnimationStep, "QGraphicsItemAnimation_afterAnimationStep");
 
--

 procedure QGraphicsItem_rotate(handle: not null QGraphicsItemH;angle:qreal);
 pragma Import(C,QGraphicsItem_rotate, "QGraphicsItem_rotate");
 
 procedure QGraphicsItem_scale2(handle: not null QGraphicsItemH;sx,sy:qreal);
 pragma Import(C,QGraphicsItem_scale2, "QGraphicsItem_scale2");
 
 procedure QGraphicsItem_shear(handle: not null QGraphicsItemH;sh,sv:qreal);
 pragma Import(C,QGraphicsItem_shear, "QGraphicsItem_shear");
 
 procedure QGraphicsItem_translate(handle: not null QGraphicsItemH;dx,dy:qreal);
 pragma Import(C,QGraphicsItem_translate, "QGraphicsItem_translate");

 procedure QGraphicsItem_resize(handle:not null QGraphicsItemH;width,height:qreal);
 pragma Import(C,QGraphicsItem_resize, "QGraphicsItem_resize");

 function  QGraphicsItem_childItems(handle:not null QGraphicsItemH) return QListH;
 pragma Import(C,QGraphicsItem_childItems, "QGraphicsItem_childItems");
 
 function  QGraphicsItem_toolTip(handle:not null QGraphicsItemH) return QStringH;
 pragma Import(C,QGraphicsItem_toolTip, "QGraphicsItem_toolTip");
 
 procedure QGraphicsItem_setToolTip(handle:not null QGraphicsItemH; toolTip:QStringH);
 pragma Import(C,QGraphicsItem_setToolTip, "QGraphicsItem_setToolTip");
 
 function  QGraphicsItem_cursor(handle:not null QGraphicsItemH) return QCursorH;
 pragma Import(C,QGraphicsItem_cursor, "QGraphicsItem_cursor");
 
 procedure QGraphicsItem_setCursor(handle:not null QGraphicsItemH; cursor:QCursorH);
 pragma Import(C,QGraphicsItem_setCursor, "QGraphicsItem_setCursor");
 
 function  QGraphicsItem_hasCursor(handle:not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsItem_hasCursor, "QGraphicsItem_hasCursor");
 
 procedure QGraphicsItem_unsetCursor(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_unsetCursor, "QGraphicsItem_unsetCursor");
 
 function  QGraphicsItem_graphicsEffect(handle:not null QGraphicsItemH) return QGraphicsEffectH;
 pragma Import(C,QGraphicsItem_graphicsEffect, "QGraphicsItem_graphicsEffect");
 
 procedure QGraphicsItem_setGraphicsEffect(handle:not null QGraphicsItemH;effect:QGraphicsEffectH);
 pragma Import(C,QGraphicsItem_setGraphicsEffect, "QGraphicsItem_setGraphicsEffect");
 
 procedure QGraphicsItem_addToIndex(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_addToIndex, "QGraphicsItem_addToIndex");
 
 procedure QGraphicsItem_removeFromIndex(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_removeFromIndex, "QGraphicsItem_removeFromIndex");
 
 procedure QGraphicsItem_prepareGeometryChange(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsItem_prepareGeometryChange, "QGraphicsItem_prepareGeometryChange");

 function  QGraphicsItem_propertyAnimation(handle:not null QGraphicsItemH;propertyName : zstring;parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QGraphicsItem_propertyAnimation, "QGraphicsItem_propertyAnimation");
 
 function  QGraphicsItem_propertyAnimation2(handle:not null QGraphicsItemH) return QAnimationH;
 pragma Import(C,QGraphicsItem_propertyAnimation2, "QGraphicsItem_propertyAnimation2");

 procedure QGraphicsObject_signal_slot_parentChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_parentChanged, "QGraphicsObject_signal_slot_parentChanged");
 
 procedure QGraphicsObject_signal_slot_opacityChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_opacityChanged, "QGraphicsObject_signal_slot_opacityChanged");
 
 procedure QGraphicsObject_signal_slot_visibleChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_visibleChanged, "QGraphicsObject_signal_slot_visibleChanged");
 
 procedure QGraphicsObject_signal_slot_enabledChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_enabledChanged, "QGraphicsObject_signal_slot_enabledChanged");
 
 procedure QGraphicsObject_signal_slot_xChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_xChanged, "QGraphicsObject_signal_slot_xChanged");
 
 procedure QGraphicsObject_signal_slot_yChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_yChanged, "QGraphicsObject_signal_slot_yChanged");
 
 procedure QGraphicsObject_signal_slot_zChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_zChanged, "QGraphicsObject_signal_slot_zChanged");
 
 procedure QGraphicsObject_signal_slot_rotationChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_rotationChanged, "QGraphicsObject_signal_slot_rotationChanged");
 
 procedure QGraphicsObject_signal_slot_scaleChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_scaleChanged, "QGraphicsObject_signal_slot_scaleChanged");
 
 procedure QGraphicsObject_signal_slot_childrenChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_childrenChanged, "QGraphicsObject_signal_slot_childrenChanged");
 
 procedure QGraphicsObject_signal_slot_widthChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_widthChanged, "QGraphicsObject_signal_slot_widthChanged");
 
 procedure QGraphicsObject_signal_slot_heightChanged(handle:not null QGraphicsObjectH; hook: voidCallbackH);
 pragma Import(C,QGraphicsObject_signal_slot_heightChanged, "QGraphicsObject_signal_slot_heightChanged");
---
 procedure QGraphicsItem_setPixmap(handle:not null QGraphicsItemH;pixmap:QPixmapH);
 pragma Import(C,QGraphicsItem_setPixmap, "QGraphicsItem_setPixmap");
  
 type customPaintH  is access procedure(painter:QPainterH;optin:QStyleOptionGraphicsItemH;widget:QWidgetH);
 pragma convention(C,customPaintH); 
 
 procedure QGraphicsItem_setPaint(handle:not null QGraphicsItemH;paintProc:customPaintH);
 pragma Import(C,QGraphicsItem_setPaint, "QGraphicsItem_setPaint");
 
 type customBoundingRectCallbackH  is access function return QRectFH;
 pragma convention(C,customBoundingRectCallbackH);

 procedure QGraphicsItem_setBoundingRect(handle:not null QGraphicsItemH;boundingRectProc: customBoundingRectCallbackH );
 pragma Import(C,QGraphicsItem_setBoundingRect, "QGraphicsItem_setBoundingRect");
 
 type customShapeCallbackH  is access function return QPainterPathH;
 pragma convention(C,customShapeCallbackH);

 procedure QGraphicsItem_setShape(handle:not null QGraphicsItemH;shapeProc: customShapeCallbackH);
 pragma Import(C,QGraphicsItem_setShape, "QGraphicsItem_setShape");

 function  QGraphicsItem_getId(handle:not null QGraphicsItemH) return integer;
 pragma Import(C,QGraphicsItem_getId, "QGraphicsItem_getId");
 
 procedure QGraphicsItem_setId(handle:not null QGraphicsItemH;id:integer);
 pragma Import(C,QGraphicsItem_setId, "QGraphicsItem_setId");
 
 ------------------------------------------------------------------------------------------------
 procedure QGraphicsItem_scale(handle: not null QGraphicsItemH;sx,sy:qreal);

end Qt.QGraphicsItem;
