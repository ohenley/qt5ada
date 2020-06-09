--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017,2018                      บ
-- บ Copyright (C) 2017,2018                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QGraphicsCustomItem  is

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

 function  QGraphicsCustomItem_create(customFunc:QReloadFunctionsH;parent:QGraphicsItemH := Null) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_create, "QGraphicsCustomItem_create");

 function  QGraphicsCustomItem_create2(parent:QGraphicsItemH := Null) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_create2, "QGraphicsCustomItem_create2");

 procedure QGraphicsCustomItem_destroy(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_destroy, "QGraphicsCustomItem_destroy");

 function  QGraphicsCustomItem_isWidget(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isWidget, "QGraphicsCustomItem_isWidget");
 
 function  QGraphicsCustomItem_isWindow(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isWindow, "QGraphicsCustomItem_isWindow");
 
 function  QGraphicsCustomItem_QGraphicsCustomItem_isPanel(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_QGraphicsCustomItem_isPanel, "QGraphicsCustomItem_QGraphicsCustomItem_isPanel");
 
 function  QGraphicsCustomItem_parentItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_parentItem, "QGraphicsCustomItem_parentItem");
 
 function  QGraphicsCustomItem_topLevelItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_topLevelItem, "QGraphicsCustomItem_topLevelItem");
 
 function  QGraphicsCustomItem_parentObject(handle: not null QGraphicsItemH) return QGraphicsObjectH;
 pragma Import(C,QGraphicsCustomItem_parentObject, "QGraphicsCustomItem_parentObject");
 
 function  QGraphicsCustomItem_parentWidget(handle: not null QGraphicsItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsCustomItem_parentWidget, "QGraphicsCustomItem_parentWidget");
 
 function  QGraphicsCustomItem_topLevelWidget(handle: not null QGraphicsItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsCustomItem_topLevelWidget, "QGraphicsCustomItem_topLevelWidget");
 
 function  QGraphicsCustomItem_window(handle: not null QGraphicsItemH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsCustomItem_window, "QGraphicsCustomItem_window");
 
 function  QGraphicsCustomItem_panel(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_panel, "QGraphicsCustomItem_panel");
 
 procedure QGraphicsCustomItem_setParentItem(handle: not null QGraphicsItemH; parent:QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_setParentItem, "QGraphicsCustomItem_setParentItem");
 
 function  QGraphicsCustomItem_toGraphicsObject(handle: not null QGraphicsItemH) return QGraphicsObjectH;
 pragma Import(C,QGraphicsCustomItem_toGraphicsObject, "QGraphicsCustomItem_toGraphicsObject");
 
 function  QGraphicsCustomItem_group(handle: not null QGraphicsItemH) return QGraphicsItemGroupH;
 pragma Import(C,QGraphicsCustomItem_group, "QGraphicsCustomItem_group");
 
 procedure QGraphicsCustomItem_setGroup(handle: not null QGraphicsItemH;group:QGraphicsItemGroupH);
 pragma Import(C,QGraphicsCustomItem_setGroup, "QGraphicsCustomItem_setGroup");
 
 procedure QGraphicsCustomItem_setFlag(handle: not null QGraphicsItemH;flag: GraphicsItemFlag := ItemIsMovable; enabled:boolean := true);
 pragma Import(C,QGraphicsCustomItem_setFlag, "QGraphicsCustomItem_setFlag");
 
 procedure QGraphicsCustomItem_setFlags(handle: not null QGraphicsItemH; flags: GraphicsItemFlags);
 pragma Import(C,QGraphicsCustomItem_setFlags, "QGraphicsCustomItem_setFlags");
 
 function  QGraphicsCustomItem_cacheMode(handle: not null QGraphicsItemH) return CacheMode;
 pragma Import(C,QGraphicsCustomItem_cacheMode, "QGraphicsCustomItem_cacheMode");
 
 procedure QGraphicsCustomItem_setCacheMode(handle: not null QGraphicsItemH; mode:CacheMode);
 pragma Import(C,QGraphicsCustomItem_setCacheMode, "QGraphicsCustomItem_setCacheMode");
 
 procedure QGraphicsCustomItem_setCacheMode2(handle: not null QGraphicsItemH;mode:CacheMode;cacheSize:QSizeH);
 pragma Import(C,QGraphicsCustomItem_setCacheMode2, "QGraphicsCustomItem_setCacheMode2");
 
 function  QGraphicsCustomItem_panelModality(handle: not null QGraphicsItemH) return PanelModality;
 pragma Import(C,QGraphicsCustomItem_panelModality, "QGraphicsCustomItem_panelModality");
 
 procedure QGraphicsCustomItem_setPanelModality(handle: not null QGraphicsItemH; modality:PanelModality);
 pragma Import(C,QGraphicsCustomItem_setPanelModality, "QGraphicsCustomItem_setPanelModality");
 
 function  QGraphicsCustomItem_isVisible(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isVisible, "QGraphicsCustomItem_isVisible");
 
 function  QGraphicsCustomItem_isVisibleTo(handle: not null QGraphicsItemH;parent:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isVisibleTo, "QGraphicsCustomItem_isVisibleTo");
 
 procedure QGraphicsCustomItem_setVisible(handle: not null QGraphicsItemH; isVisible: boolean);
 pragma Import(C,QGraphicsCustomItem_setVisible, "QGraphicsCustomItem_setVisible");
 
 procedure QGraphicsCustomItem_hide(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_hide, "QGraphicsCustomItem_hide");
 
 procedure QGraphicsCustomItem_show(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_show, "QGraphicsCustomItem_show");
 
 function  QGraphicsCustomItem_isEnabled(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isEnabled, "QGraphicsCustomItem_isEnabled");
 
 procedure QGraphicsCustomItem_setEnabled(handle: not null QGraphicsItemH; enabled:boolean);
 pragma Import(C,QGraphicsCustomItem_setEnabled, "QGraphicsCustomItem_setEnabled");
 
 function  QGraphicsCustomItem_isSelected(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isSelected, "QGraphicsCustomItem_isSelected");
 
 procedure QGraphicsCustomItem_setSelected(handle: not null QGraphicsItemH; isSelected: boolean);
 pragma Import(C,QGraphicsCustomItem_setSelected, "QGraphicsCustomItem_setSelected");
 
 function  QGraphicsCustomItem_acceptDrops(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_acceptDrops, "QGraphicsCustomItem_acceptDrops");
 
 procedure QGraphicsCustomItem_setAcceptDrops(handle: not null QGraphicsItemH;isOn:boolean);
 pragma Import(C,QGraphicsCustomItem_setAcceptDrops, "QGraphicsCustomItem_setAcceptDrops");
 
 function  QGraphicsCustomItem_opacity(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_opacity, "QGraphicsCustomItem_opacity");
 
 function  QGraphicsCustomItem_effectiveOpacity(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_effectiveOpacity, "QGraphicsCustomItem_effectiveOpacity");
 
 procedure QGraphicsCustomItem_setOpacity(handle: not null QGraphicsItemH; opacity:qreal);
 pragma Import(C,QGraphicsCustomItem_setOpacity, "QGraphicsCustomItem_setOpacity");
 
 function  QGraphicsCustomItem_acceptedMouseButtons(handle: not null QGraphicsItemH) return QtMouseButtonsH;
 pragma Import(C,QGraphicsCustomItem_acceptedMouseButtons, "QGraphicsCustomItem_acceptedMouseButtons");
 
 procedure QGraphicsCustomItem_setAcceptedMouseButtons(handle: not null QGraphicsItemH; buttons:QtMouseButtonsH);
 pragma Import(C,QGraphicsCustomItem_setAcceptedMouseButtons, "QGraphicsCustomItem_setAcceptedMouseButtons");
 
 function  QGraphicsCustomItem_acceptHoverEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_acceptHoverEvents, "QGraphicsCustomItem_acceptHoverEvents");
 
 procedure QGraphicsCustomItem_setAcceptHoverEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsCustomItem_setAcceptHoverEvents, "QGraphicsCustomItem_setAcceptHoverEvents");
 
 function  QGraphicsCustomItem_acceptTouchEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_acceptTouchEvents, "QGraphicsCustomItem_acceptTouchEvents");
 
 procedure QGraphicsCustomItem_setAcceptTouchEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsCustomItem_setAcceptTouchEvents, "QGraphicsCustomItem_setAcceptTouchEvents");
 
 function  QGraphicsCustomItem_filtersChildEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_filtersChildEvents, "QGraphicsCustomItem_filtersChildEvents");
 
 procedure QGraphicsCustomItem_setFiltersChildEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsCustomItem_setFiltersChildEvents, "QGraphicsCustomItem_setFiltersChildEvents");
 
 function  QGraphicsCustomItem_handlesChildEvents(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_handlesChildEvents, "QGraphicsCustomItem_handlesChildEvents");
 
 procedure QGraphicsCustomItem_setHandlesChildEvents(handle: not null QGraphicsItemH;enabled:boolean);
 pragma Import(C,QGraphicsCustomItem_setHandlesChildEvents, "QGraphicsCustomItem_setHandlesChildEvents");
 
 function  QGraphicsCustomItem_isActive(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isActive, "QGraphicsCustomItem_isActive");
 
 procedure QGraphicsCustomItem_setActive(handle: not null QGraphicsItemH; active:boolean);
 pragma Import(C,QGraphicsCustomItem_setActive, "QGraphicsCustomItem_setActive");
 
 function  QGraphicsCustomItem_hasFocus(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_hasFocus, "QGraphicsCustomItem_hasFocus");
 
 procedure QGraphicsCustomItem_setFocus(handle: not null QGraphicsItemH; focusReason:QtFocusReason := QtOtherFocusReason);
 pragma Import(C,QGraphicsCustomItem_setFocus, "QGraphicsCustomItem_setFocus");
 
 procedure QGraphicsCustomItem_clearFocus(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_clearFocus, "QGraphicsCustomItem_clearFocus");
 
 function  QGraphicsCustomItem_focusProxy(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_focusProxy, "QGraphicsCustomItem_focusProxy");
 
 procedure QGraphicsCustomItem_setFocusProxy(handle: not null QGraphicsItemH;item:QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_setFocusProxy, "QGraphicsCustomItem_setFocusProxy");
 
 function  QGraphicsCustomItem_focusItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_focusItem, "QGraphicsCustomItem_focusItem");
 
 function  QGraphicsCustomItem_focusScopeItem(handle: not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_focusScopeItem, "QGraphicsCustomItem_focusScopeItem");
 
 procedure QGraphicsCustomItem_grabMouse(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_grabMouse, "QGraphicsCustomItem_grabMouse");
 
 procedure QGraphicsCustomItem_ungrabMouse(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_ungrabMouse, "QGraphicsCustomItem_ungrabMouse");
 
 procedure QGraphicsCustomItem_grabKeyboard(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_grabKeyboard, "QGraphicsCustomItem_grabKeyboard");
 
 procedure QGraphicsCustomItem_ungrabKeyboard(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_ungrabKeyboard, "QGraphicsCustomItem_ungrabKeyboard");
 
 function  QGraphicsCustomItem_pos(handle: not null QGraphicsItemH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_pos, "QGraphicsCustomItem_pos");
 
 function  QGraphicsCustomItem_x(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_x, "QGraphicsCustomItem_x");
 
 procedure QGraphicsCustomItem_setX(handle: not null QGraphicsItemH; x:qreal);
 pragma Import(C,QGraphicsCustomItem_setX, "QGraphicsCustomItem_setX");
 
 function  QGraphicsCustomItem_y(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_y, "QGraphicsCustomItem_y");
 
 procedure QGraphicsCustomItem_setY(handle: not null QGraphicsItemH;y:qreal);
 pragma Import(C,QGraphicsCustomItem_setY, "QGraphicsCustomItem_setY");
 
 function  QGraphicsCustomItem_scenePos(handle: not null QGraphicsItemH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_scenePos, "QGraphicsCustomItem_scenePos");
 
 procedure QGraphicsCustomItem_setPos(handle: not null QGraphicsItemH; x,y: qreal);
 pragma Import(C,QGraphicsCustomItem_setPos, "QGraphicsCustomItem_setPos");
 
 procedure QGraphicsCustomItem_setPos2(handle: not null QGraphicsItemH;pos:QPointFH);
 pragma Import(C,QGraphicsCustomItem_setPos2, "QGraphicsCustomItem_setPos2");
 
 procedure QGraphicsCustomItem_moveBy(handle: not null QGraphicsItemH; dx,dy: qreal);
 pragma Import(C,QGraphicsCustomItem_moveBy, "QGraphicsCustomItem_moveBy");
 
 procedure QGraphicsCustomItem_ensureVisible(handle: not null QGraphicsItemH; x,y,w,h: qt.qreal; xmargin : integer := 50; ymargin:integer := 50);
 pragma Import(C,QGraphicsCustomItem_ensureVisible, "QGraphicsCustomItem_ensureVisible");
 
 procedure QGraphicsCustomItem_ensureVisible2(handle: not null QGraphicsItemH; rect:QRectFH; xmargin : integer := 50; ymargin:integer := 50);
 pragma Import(C,QGraphicsCustomItem_ensureVisible2, "QGraphicsCustomItem_ensureVisible2");
 
 function  QGraphicsCustomItem_matrix(handle: not null QGraphicsItemH) return QMatrixH;
 pragma Import(C,QGraphicsCustomItem_matrix, "QGraphicsCustomItem_matrix");
 
 function  QGraphicsCustomItem_sceneMatrix(handle: not null QGraphicsItemH) return QMatrixH;
 pragma Import(C,QGraphicsCustomItem_sceneMatrix, "QGraphicsCustomItem_sceneMatrix");
 
 procedure QGraphicsCustomItem_setMatrix(handle: not null QGraphicsItemH;matrix:QMatrixH; combine : boolean := false);
 pragma Import(C,QGraphicsCustomItem_setMatrix, "QGraphicsCustomItem_setMatrix");
 
 procedure QGraphicsCustomItem_resetMatrix(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_resetMatrix, "QGraphicsCustomItem_resetMatrix");
 
 function  QGraphicsCustomItem_transform(handle: not null QGraphicsItemH) return QTransformH;
 pragma Import(C,QGraphicsCustomItem_transform, "QGraphicsCustomItem_transform");
 
 function  QGraphicsCustomItem_sceneTransform(handle: not null QGraphicsItemH) return QTransformH;
 pragma Import(C,QGraphicsCustomItem_sceneTransform, "QGraphicsCustomItem_sceneTransform");
 
 function  QGraphicsCustomItem_deviceTransform(handle: not null QGraphicsItemH;  viewportTransform:QTransformH) return QTransformH;
 pragma Import(C,QGraphicsCustomItem_deviceTransform, "QGraphicsCustomItem_deviceTransform");
 
 function  QGraphicsCustomItem_itemTransform(handle: not null QGraphicsItemH; otherItem:QGraphicsItemH; ok : pboolean := null) return QTransformH;
 pragma Import(C,QGraphicsCustomItem_itemTransform, "QGraphicsCustomItem_itemTransform");
 
 procedure QGraphicsCustomItem_setTransform(handle: not null QGraphicsItemH; matrix:QTransformH; combine: boolean := false);
 pragma Import(C,QGraphicsCustomItem_setTransform, "QGraphicsCustomItem_setTransform");
 
 procedure QGraphicsCustomItem_resetTransform(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_resetTransform, "QGraphicsCustomItem_resetTransform");
 
 procedure QGraphicsCustomItem_setRotation(handle: not null QGraphicsItemH; angle: qreal);
 pragma Import(C,QGraphicsCustomItem_setRotation, "QGraphicsCustomItem_setRotation");
 
 function  QGraphicsCustomItem_rotation(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_rotation, "QGraphicsCustomItem_rotation");
 
 procedure QGraphicsCustomItem_setScale(handle: not null QGraphicsItemH; scale:qreal);
 pragma Import(C,QGraphicsCustomItem_setScale, "QGraphicsCustomItem_setScale");
 
 function  QGraphicsCustomItem_scale(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_scale, "QGraphicsCustomItem_scale");
 
 function  QGraphicsCustomItem_transformOriginPoint(handle: not null QGraphicsItemH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_transformOriginPoint, "QGraphicsCustomItem_transformOriginPoint");
 
 procedure QGraphicsCustomItem_setTransformOriginPoint(handle: not null QGraphicsItemH; ax,ay: qreal);
 pragma Import(C,QGraphicsCustomItem_setTransformOriginPoint, "QGraphicsCustomItem_setTransformOriginPoint");
 
 procedure QGraphicsCustomItem_setTransformOriginPoint2(handle: not null QGraphicsItemH; origin:QPointFH);
 pragma Import(C,QGraphicsCustomItem_setTransformOriginPoint2, "QGraphicsCustomItem_setTransformOriginPoint2");
 
 procedure QGraphicsCustomItem_advance(handle: not null QGraphicsItemH; phase:integer);
 pragma Import(C,QGraphicsCustomItem_advance, "QGraphicsCustomItem_advance");
 
 function  QGraphicsCustomItem_zValue(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_zValue, "QGraphicsCustomItem_zValue");
 
 procedure QGraphicsCustomItem_setZValue(handle: not null QGraphicsItemH;z:qreal);
 pragma Import(C,QGraphicsCustomItem_setZValue, "QGraphicsCustomItem_setZValue");
 
 procedure QGraphicsCustomItem_stackBefore(handle: not null QGraphicsItemH; sibling:QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_stackBefore, "QGraphicsCustomItem_stackBefore");
 
 function  QGraphicsCustomItem_boundingRect(handle: not null QGraphicsItemH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_boundingRect, "QGraphicsCustomItem_boundingRect");
 
 function  QGraphicsCustomItem_childrenBoundingRect(handle: not null QGraphicsItemH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_childrenBoundingRect, "QGraphicsCustomItem_childrenBoundingRect");
 
 function  QGraphicsCustomItem_sceneBoundingRect(handle: not null QGraphicsItemH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_sceneBoundingRect, "QGraphicsCustomItem_sceneBoundingRect");
 
 function  QGraphicsCustomItem_shape(handle: not null QGraphicsItemH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_shape, "QGraphicsCustomItem_shape");
 
 function  QGraphicsCustomItem_isClipped(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isClipped, "QGraphicsCustomItem_isClipped");
 
 function  QGraphicsCustomItem_clipPath(handle: not null QGraphicsItemH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_clipPath, "QGraphicsCustomItem_clipPath");
 
 function  QGraphicsCustomItem_contains(handle: not null QGraphicsItemH;point:QPointFH) return boolean;
 pragma Import(C,QGraphicsCustomItem_contains, "QGraphicsCustomItem_contains");
 
 function  QGraphicsCustomItem_collidesWithItem(handle: not null QGraphicsItemH; otherItem:QGraphicsItemH; mode:QtItemSelectionMode := QtIntersectsItemShape) return boolean;
 pragma Import(C,QGraphicsCustomItem_collidesWithItem, "QGraphicsCustomItem_collidesWithItem");
 
 function  QGraphicsCustomItem_collidesWithPath(handle: not null QGraphicsItemH;path:QPainterPathH; mode:QtItemSelectionMode := QtIntersectsItemShape) return boolean;
 pragma Import(C,QGraphicsCustomItem_collidesWithPath, "QGraphicsCustomItem_collidesWithPath");
 
 function  QGraphicsCustomItem_isObscured(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isObscured, "QGraphicsCustomItem_isObscured");
 
 function  QGraphicsCustomItem_isObscured2(handle: not null QGraphicsItemH; x,y,w,h: qreal) return boolean;
 pragma Import(C,QGraphicsCustomItem_isObscured2, "QGraphicsCustomItem_isObscured2");
 
 function  QGraphicsCustomItem_isObscured3(handle: not null QGraphicsItemH;rect:QRectFH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isObscured3, "QGraphicsCustomItem_isObscured3");
 
 function  QGraphicsCustomItem_isObscuredBy(handle: not null QGraphicsItemH;item:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isObscuredBy, "QGraphicsCustomItem_isObscuredBy");
 
 function  QGraphicsCustomItem_opaqueArea(handle: not null QGraphicsItemH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_opaqueArea, "QGraphicsCustomItem_opaqueArea");
 
 function  QGraphicsCustomItem_boundingRegion(handle: not null QGraphicsItemH; itemToDeviceTransform: QTransformH) return QRegionH;
 pragma Import(C,QGraphicsCustomItem_boundingRegion, "QGraphicsCustomItem_boundingRegion");
 
 function  QGraphicsCustomItem_boundingRegionGranularity(handle: not null QGraphicsItemH) return qt.qreal;
 pragma Import(C,QGraphicsCustomItem_boundingRegionGranularity, "QGraphicsCustomItem_boundingRegionGranularity");
 
 procedure QGraphicsCustomItem_setBoundingRegionGranularity(handle: not null QGraphicsItemH; granularity:qreal);
 pragma Import(C,QGraphicsCustomItem_setBoundingRegionGranularity, "QGraphicsCustomItem_setBoundingRegionGranularity");
 
 procedure QGraphicsCustomItem_paint(handle: not null QGraphicsItemH;painter:QPainterH;  option:QStyleOptionGraphicsItemH; widget: QWidgetH := null);
 pragma Import(C,QGraphicsCustomItem_paint, "QGraphicsCustomItem_paint");
 
 procedure QGraphicsCustomItem_update(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_update, "QGraphicsCustomItem_update");
 
 procedure QGraphicsCustomItem_update2(handle: not null QGraphicsItemH; x,y,w,h: qreal);
 pragma Import(C,QGraphicsCustomItem_update2, "QGraphicsCustomItem_update2");
 
 procedure QGraphicsCustomItem_update3(handle: not null QGraphicsItemH;rect:QRectFH);
 pragma Import(C,QGraphicsCustomItem_update3, "QGraphicsCustomItem_update3");
 
 procedure QGraphicsCustomItem_scroll(handle: not null QGraphicsItemH; dx,dy: qreal);
 pragma Import(C,QGraphicsCustomItem_scroll, "QGraphicsCustomItem_scroll");
 
 procedure QGraphicsCustomItem_scroll2(handle: not null QGraphicsItemH; dx,dy: qt.qreal; rect: QRectFH);
 pragma Import(C,QGraphicsCustomItem_scroll2, "QGraphicsCustomItem_scroll2");
 
 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH; item:QGraphicsItemH; point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapToItem, "QGraphicsCustomItem_mapToItem");
 
 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapToParent, "QGraphicsCustomItem_mapToParent");
 
 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapToScene, "QGraphicsCustomItem_mapToScene");
 
 function  QGraphicsCustomItem_mapToItem2(handle: not null QGraphicsItemH; item:QGraphicsItemH; rect: QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToItem2, "QGraphicsCustomItem_mapToItem2");
 
 function  QGraphicsCustomItem_mapToParent2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToParent2, "QGraphicsCustomItem_mapToParent2");
 
 function  QGraphicsCustomItem_mapToScene2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToScene2, "QGraphicsCustomItem_mapToScene2");
 
 function  QGraphicsCustomItem_mapRectToItem3(handle: not null QGraphicsItemH; item:QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectToItem3, "QGraphicsCustomItem_mapRectToItem3");
 
 function  QGraphicsCustomItem_mapRectToParent3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectToParent3, "QGraphicsCustomItem_mapRectToParent3");
 
 function  QGraphicsCustomItem_mapRectToScene3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectToScene3, "QGraphicsCustomItem_mapRectToScene3");
 
 function  QGraphicsCustomItem_mapToItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; polygon: QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToItem4, "QGraphicsCustomItem_mapToItem4");
 
 function  QGraphicsCustomItem_mapToParent4(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToParent4, "QGraphicsCustomItem_mapToParent4");
 
 function  QGraphicsCustomItem_mapToScene4(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToScene4, "QGraphicsCustomItem_mapToScene4");
 
 function  QGraphicsCustomItem_mapToItem5(handle: not null QGraphicsItemH; item:QGraphicsItemH; path: QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_mapToItem5, "QGraphicsCustomItem_mapToItem5");
 
 function  QGraphicsCustomItem_mapToParent5(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_mapToParent5, "QGraphicsCustomItem_mapToParent5");
 
 function  QGraphicsCustomItem_mapToScene5(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_mapToScene5, "QGraphicsCustomItem_mapToScene5");
 
 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH; item:QGraphicsItemH; point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapFromItem, "QGraphicsCustomItem_mapFromItem");
 
 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapFromParent, "QGraphicsCustomItem_mapFromParent");
 
 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;point:QPointFH) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapFromScene, "QGraphicsCustomItem_mapFromScene");
 
 function  QGraphicsCustomItem_mapFromItem2(handle: not null QGraphicsItemH; item:QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromItem2, "QGraphicsCustomItem_mapFromItem2");
 
 function  QGraphicsCustomItem_mapFromParent2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromParent2, "QGraphicsCustomItem_mapFromParent2");
 
 function  QGraphicsCustomItem_mapFromScene2(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromScene2, "QGraphicsCustomItem_mapFromScene2");
 
 function  QGraphicsCustomItem_mapRectFromItem3(handle: not null QGraphicsItemH;item:QGraphicsItemH; rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectFromItem3, "QGraphicsCustomItem_mapRectFromItem3");
 
 function  QGraphicsCustomItem_mapRectFromParent3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectFromParent3, "QGraphicsCustomItem_mapRectFromParent3");
 
 function  QGraphicsCustomItem_mapRectFromScene3(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectFromScene3, "QGraphicsCustomItem_mapRectFromScene3");
 
 function  QGraphicsCustomItem_mapFromItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; polygon: QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromItem4, "QGraphicsCustomItem_mapFromItem4");
 
 function  QGraphicsCustomItem_mapFromParent4(handle: not null QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromParent4, "QGraphicsCustomItem_mapFromParent4");
 
 function  QGraphicsCustomItem_mapFromScene4(handle: not null QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromScene4, "QGraphicsCustomItem_mapFromScene4");
 
 function  QGraphicsCustomItem_mapFromItem5(handle: not null QGraphicsItemH; item:QGraphicsItemH;path: QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_mapFromItem5, "QGraphicsCustomItem_mapFromItem5");
 
 function  QGraphicsCustomItem_mapFromParent5(handle: not null QGraphicsItemH; path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_mapFromParent5, "QGraphicsCustomItem_mapFromParent5");
 
 function  QGraphicsCustomItem_mapFromScene5(handle: not null QGraphicsItemH; path:QPainterPathH) return QPainterPathH;
 pragma Import(C,QGraphicsCustomItem_mapFromScene5, "QGraphicsCustomItem_mapFromScene5");
 
 function  QGraphicsCustomItem_mapToItem6(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapToItem6, "QGraphicsCustomItem_mapToItem6");
 
 function  QGraphicsCustomItem_mapToParent6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapToParent6, "QGraphicsCustomItem_mapToParent6");
 
 function  QGraphicsCustomItem_mapToScene6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapToScene6, "QGraphicsCustomItem_mapToScene6");
 
 function  QGraphicsCustomItem_mapToItem7(handle: not null QGraphicsItemH; item:QGraphicsItemH;  x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToItem7, "QGraphicsCustomItem_mapToItem7");
 
 function  QGraphicsCustomItem_mapToParent7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToParent7, "QGraphicsCustomItem_mapToParent7");
 
 function  QGraphicsCustomItem_mapToScene7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapToScene7, "QGraphicsCustomItem_mapToScene7");
 
 function  QGraphicsCustomItem_mapRectToItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectToItem4, "QGraphicsCustomItem_mapRectToItem4");
 
 function  QGraphicsCustomItem_mapRectToParent4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectToParent4, "QGraphicsCustomItem_mapRectToParent4");
 
 function  QGraphicsCustomItem_mapRectToScene4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectToScene4, "QGraphicsCustomItem_mapRectToScene4");
 
 function  QGraphicsCustomItem_mapFromItem6(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapFromItem6, "QGraphicsCustomItem_mapFromItem6");
 
 function  QGraphicsCustomItem_mapFromParent6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapFromParent6, "QGraphicsCustomItem_mapFromParent6");
 
 function  QGraphicsCustomItem_mapFromScene6(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 pragma Import(C,QGraphicsCustomItem_mapFromScene6, "QGraphicsCustomItem_mapFromScene6");
 
 function  QGraphicsCustomItem_mapFromItem7(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromItem7, "QGraphicsCustomItem_mapFromItem7");
 
 function  QGraphicsCustomItem_mapFromParent7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromParent7, "QGraphicsCustomItem_mapFromParent7");
 
 function  QGraphicsCustomItem_mapFromScene7(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;
 pragma Import(C,QGraphicsCustomItem_mapFromScene7, "QGraphicsCustomItem_mapFromScene7");
 
 function  QGraphicsCustomItem_mapRectFromItem4(handle: not null QGraphicsItemH; item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectFromItem4, "QGraphicsCustomItem_mapRectFromItem4");
 
 function  QGraphicsCustomItem_mapRectFromParent4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectFromParent4, "QGraphicsCustomItem_mapRectFromParent4");
 
 function  QGraphicsCustomItem_mapRectFromScene4(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;
 pragma Import(C,QGraphicsCustomItem_mapRectFromScene4, "QGraphicsCustomItem_mapRectFromScene4");
 
 function  QGraphicsCustomItem_isAncestorOf(handle: not null QGraphicsItemH; child:QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isAncestorOf, "QGraphicsCustomItem_isAncestorOf");
 
 function  QGraphicsCustomItem_commonAncestorItem(handle: not null QGraphicsItemH;otherItem:QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_commonAncestorItem, "QGraphicsCustomItem_commonAncestorItem");
 
 function  QGraphicsCustomItem_isUnderMouse(handle: not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_isUnderMouse, "QGraphicsCustomItem_isUnderMouse");
 
 function  QGraphicsCustomItem_data(handle: not null QGraphicsItemH; key:integer) return QVariantH;
 pragma Import(C,QGraphicsCustomItem_data, "QGraphicsCustomItem_data");
 
 procedure QGraphicsCustomItem_setData(handle: not null QGraphicsItemH; key:integer;value:QVariantH);
 pragma Import(C,QGraphicsCustomItem_setData, "QGraphicsCustomItem_setData");
 
 function  QGraphicsCustomItem_inputMethodHints(handle: not null QGraphicsItemH) return QtInputMethodHintsH;
 pragma Import(C,QGraphicsCustomItem_inputMethodHints, "QGraphicsCustomItem_inputMethodHints");
 
 procedure QGraphicsCustomItem_setInputMethodHints(handle: not null QGraphicsItemH; hints:QtInputMethodHints);
 pragma Import(C,QGraphicsCustomItem_setInputMethodHints, "QGraphicsCustomItem_setInputMethodHints");
 
 function  QGraphicsCustomItem_layerType(handle: not null QGraphicsItemH) return integer;
 pragma Import(C,QGraphicsCustomItem_layerType, "QGraphicsCustomItem_layerType");
 
 procedure QGraphicsCustomItem_installSceneEventFilter(handle: not null QGraphicsItemH; filterItem:QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_installSceneEventFilter, "QGraphicsCustomItem_installSceneEventFilter");
 
 procedure QGraphicsCustomItem_removeSceneEventFilter(handle: not null QGraphicsItemH; filterItem:QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_removeSceneEventFilter, "QGraphicsCustomItem_removeSceneEventFilter");
 
 function  QGraphicsCustomItem_scene(handle: not null QGraphicsItemH) return QGraphicsSceneH;
 pragma Import(C,QGraphicsCustomItem_scene, "QGraphicsCustomItem_scene");
 
 procedure QGraphicsCustomItem_updateMicroFocus(handle: not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_updateMicroFocus, "QGraphicsCustomItem_updateMicroFocus");
 
 function  QGraphicsCustomItem_sceneEventFilter(handle: not null QGraphicsItemH; watched:QGraphicsItemH; event:QEventH) return boolean;
 pragma Import(C,QGraphicsCustomItem_sceneEventFilter, "QGraphicsCustomItem_sceneEventFilter");
 
 function  QGraphicsCustomItem_sceneEvent(handle: not null QGraphicsItemH; event:QEventH) return boolean;
 pragma Import(C,QGraphicsCustomItem_sceneEvent, "QGraphicsCustomItem_sceneEvent");
 
 procedure QGraphicsCustomItem_contextMenuEvent(handle: not null QGraphicsItemH;event:QContextMenuEventH);
 pragma Import(C,QGraphicsCustomItem_contextMenuEvent, "QGraphicsCustomItem_contextMenuEvent");
 
 procedure QGraphicsCustomItem_dragEnterEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsCustomItem_dragEnterEvent, "QGraphicsCustomItem_dragEnterEvent");
 
 procedure QGraphicsCustomItem_dragLeaveEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsCustomItem_dragLeaveEvent, "QGraphicsCustomItem_dragLeaveEvent");
 
 procedure QGraphicsCustomItem_dragMoveEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsCustomItem_dragMoveEvent, "QGraphicsCustomItem_dragMoveEvent");
 
 procedure QGraphicsCustomItem_dropEvent(handle: not null QGraphicsItemH;event:QGraphicsSceneDragDropEventH);
 pragma Import(C,QGraphicsCustomItem_dropEvent, "QGraphicsCustomItem_dropEvent");
 
 procedure QGraphicsCustomItem_focusInEvent(handle: not null QGraphicsItemH;event:QFocusEventH);
 pragma Import(C,QGraphicsCustomItem_focusInEvent, "QGraphicsCustomItem_focusInEvent");
 
 procedure QGraphicsCustomItem_focusOutEvent(handle: not null QGraphicsItemH;event:QFocusEventH);
 pragma Import(C,QGraphicsCustomItem_focusOutEvent, "QGraphicsCustomItem_focusOutEvent");
 
 procedure QGraphicsCustomItem_hoverEnterEvent(handle: not null QGraphicsItemH;event:QHoverEventH);
 pragma Import(C,QGraphicsCustomItem_hoverEnterEvent, "QGraphicsCustomItem_hoverEnterEvent");
 
 procedure QGraphicsCustomItem_hoverMoveEvent(handle: not null QGraphicsItemH;event:QHoverEventH);
 pragma Import(C,QGraphicsCustomItem_hoverMoveEvent, "QGraphicsCustomItem_hoverMoveEvent");
 
 procedure QGraphicsCustomItem_hoverLeaveEvent(handle: not null QGraphicsItemH;event:QHoverEventH);
 pragma Import(C,QGraphicsCustomItem_hoverLeaveEvent, "QGraphicsCustomItem_hoverLeaveEvent");
 
 procedure QGraphicsCustomItem_keyPressEvent(handle: not null QGraphicsItemH;event:QKeyEventH);
 pragma Import(C,QGraphicsCustomItem_keyPressEvent, "QGraphicsCustomItem_keyPressEvent");
 
 procedure QGraphicsCustomItem_keyReleaseEvent(handle: not null QGraphicsItemH;event:QKeyEventH);
 pragma Import(C,QGraphicsCustomItem_keyReleaseEvent, "QGraphicsCustomItem_keyReleaseEvent");
 
 procedure QGraphicsCustomItem_mousePressEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mousePressEvent, "QGraphicsCustomItem_mousePressEvent");
 
 procedure QGraphicsCustomItem_mouseMoveEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mouseMoveEvent, "QGraphicsCustomItem_mouseMoveEvent");
 
 procedure QGraphicsCustomItem_mouseReleaseEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mouseReleaseEvent, "QGraphicsCustomItem_mouseReleaseEvent");
 
 procedure QGraphicsCustomItem_mouseDoubleClickEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mouseDoubleClickEvent, "QGraphicsCustomItem_mouseDoubleClickEvent");
 
 procedure QGraphicsCustomItem_mouseBasePressEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mouseBasePressEvent, "QGraphicsCustomItem_mouseBasePressEvent");
 
 procedure QGraphicsCustomItem_mouseBaseMoveEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mouseBaseMoveEvent, "QGraphicsCustomItem_mouseBaseMoveEvent");
 
 procedure QGraphicsCustomItem_mouseBaseReleaseEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mouseBaseReleaseEvent, "QGraphicsCustomItem_mouseBaseReleaseEvent");
 
 procedure QGraphicsCustomItem_mouseBaseDoubleClickEvent(handle: not null QGraphicsItemH;event:QMouseEventH);
 pragma Import(C,QGraphicsCustomItem_mouseBaseDoubleClickEvent, "QGraphicsCustomItem_mouseBaseDoubleClickEvent");
 
 procedure QGraphicsCustomItem_wheelEvent(handle: not null QGraphicsItemH;event:QWheelEventH);
 pragma Import(C,QGraphicsCustomItem_wheelEvent, "QGraphicsCustomItem_wheelEvent");
 
 procedure QGraphicsCustomItem_inputMethodEvent(handle: not null QGraphicsItemH;event:QInputMethodEventH);
 pragma Import(C,QGraphicsCustomItem_inputMethodEvent, "QGraphicsCustomItem_inputMethodEvent");
 
 function  QGraphicsCustomItem_inputMethodQuery(handle: not null QGraphicsItemH;query:QtInputMethodQuery) return QVariantH;
 pragma Import(C,QGraphicsCustomItem_inputMethodQuery, "QGraphicsCustomItem_inputMethodQuery");
 
 function  QGraphicsCustomItem_itemChange(handle: not null QGraphicsItemH;change:GraphicsItemChange;value: QVariantH) return QVariantH;
 pragma Import(C,QGraphicsCustomItem_itemChange, "QGraphicsCustomItem_itemChange");
 
 function  QGraphicsCustomItem_supportsExtension(handle: not null QGraphicsItemH; extension: integer) return boolean;
 pragma Import(C,QGraphicsCustomItem_supportsExtension, "QGraphicsCustomItem_supportsExtension");
 
 procedure QGraphicsCustomItem_setExtension(handle: not null QGraphicsItemH; extension: integer;variant: QVariantH);
 pragma Import(C,QGraphicsCustomItem_setExtension, "QGraphicsCustomItem_setExtension");
 
 function  QGraphicsCustomItem_extension(handle: not null QGraphicsItemH;variant:QVariantH) return QVariantH;
 pragma Import(C,QGraphicsCustomItem_extension, "QGraphicsCustomItem_extension");

-------------------------------------------------------------------------------------------------------------
 procedure QGraphicsCustomItem_setCacheMode(handle: not null QGraphicsItemH;mode:CacheMode; cacheSize:QSizeH);
 procedure QGraphicsCustomItem_setPos(handle: not null QGraphicsItemH;pos:QPointFH);
 procedure QGraphicsCustomItem_ensureVisible(handle: not null QGraphicsItemH;rect:QRectFH; xmargin: integer := 50;  ymargin : integer := 50);
 procedure QGraphicsCustomItem_setTransformOriginPoint(handle: not null QGraphicsItemH;origin:QPointFH);
 function  QGraphicsCustomItem_isObscured(handle: not null QGraphicsItemH;x,y,w,h: qreal) return boolean;
 function  QGraphicsCustomItem_isObscured(handle: not null QGraphicsItemH;rect:QRectFH) return boolean;
 procedure QGraphicsCustomItem_update(handle: not null QGraphicsItemH; x,y,w,h: qreal);
 procedure QGraphicsCustomItem_update(handle: not null QGraphicsItemH;rect:QRectFH);
 procedure QGraphicsCustomItem_scroll(handle: not null QGraphicsItemH; dx,dy: qreal; rect:QRectFH);

 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; rect:QRectFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; polygon: QPolygonFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path: QPainterPathH) return QPainterPathH;
 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsCustomItem_mapToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsCustomItem_mapToParent(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsCustomItem_mapToScene(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsCustomItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsCustomItem_mapRectToItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsCustomItem_mapRectToParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsCustomItem_mapRectToParent(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsCustomItem_mapRectToScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsCustomItem_mapRectToScene(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; rect:QRectFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; path:QPainterPathH) return QPainterPathH;
 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsCustomItem_mapFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH; x,y: qreal) return QPointFH;
 function  QGraphicsCustomItem_mapFromParent(handle: not null QGraphicsItemH; x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;polygon:QPolygonFH) return QPolygonFH;
 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;path:QPainterPathH) return QPainterPathH;
 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;x,y: qreal) return QPointFH;
 function  QGraphicsCustomItem_mapFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QPolygonFH;

 function  QGraphicsCustomItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsCustomItem_mapRectFromItem(handle: not null QGraphicsItemH;item:QGraphicsItemH; x,y,w,h: qreal) return QRectFH;

 function  QGraphicsCustomItem_mapRectFromParent(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsCustomItem_mapRectFromParent(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH;

 function  QGraphicsCustomItem_mapRectFromScene(handle: not null QGraphicsItemH;rect:QRectFH) return QRectFH;
 function  QGraphicsCustomItem_mapRectFromScene(handle: not null QGraphicsItemH;x,y,w,h: qreal) return QRectFH;
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

 procedure QGraphicsCustomItem_rotate(handle: not null QGraphicsItemH;angle:qreal);
 pragma Import(C,QGraphicsCustomItem_rotate, "QGraphicsCustomItem_rotate");
 
 procedure QGraphicsCustomItem_scale2(handle: not null QGraphicsItemH;sx,sy:qreal);
 pragma Import(C,QGraphicsCustomItem_scale2, "QGraphicsCustomItem_scale2");
 
 procedure QGraphicsCustomItem_shear(handle: not null QGraphicsItemH;sh,sv:qreal);
 pragma Import(C,QGraphicsCustomItem_shear, "QGraphicsCustomItem_shear");
 
 procedure QGraphicsCustomItem_translate(handle: not null QGraphicsItemH;dx,dy:qreal);
 pragma Import(C,QGraphicsCustomItem_translate, "QGraphicsCustomItem_translate");

 procedure QGraphicsCustomItem_resize(handle:not null QGraphicsItemH;width,height:qreal);
 pragma Import(C,QGraphicsCustomItem_resize, "QGraphicsCustomItem_resize");

 function  QGraphicsCustomItem_childItems(handle:not null QGraphicsItemH) return QListH;
 pragma Import(C,QGraphicsCustomItem_childItems, "QGraphicsCustomItem_childItems");
 
 function  QGraphicsCustomItem_toolTip(handle:not null QGraphicsItemH) return QStringH;
 pragma Import(C,QGraphicsCustomItem_toolTip, "QGraphicsCustomItem_toolTip");
 
 procedure QGraphicsCustomItem_setToolTip(handle:not null QGraphicsItemH; toolTip:QStringH);
 pragma Import(C,QGraphicsCustomItem_setToolTip, "QGraphicsCustomItem_setToolTip");
 
 function  QGraphicsCustomItem_cursor(handle:not null QGraphicsItemH) return QCursorH;
 pragma Import(C,QGraphicsCustomItem_cursor, "QGraphicsCustomItem_cursor");
 
 procedure QGraphicsCustomItem_setCursor(handle:not null QGraphicsItemH; cursor:QCursorH);
 pragma Import(C,QGraphicsCustomItem_setCursor, "QGraphicsCustomItem_setCursor");
 
 function  QGraphicsCustomItem_hasCursor(handle:not null QGraphicsItemH) return boolean;
 pragma Import(C,QGraphicsCustomItem_hasCursor, "QGraphicsCustomItem_hasCursor");
 
 procedure QGraphicsCustomItem_unsetCursor(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_unsetCursor, "QGraphicsCustomItem_unsetCursor");
 
 function  QGraphicsCustomItem_graphicsEffect(handle:not null QGraphicsItemH) return QGraphicsEffectH;
 pragma Import(C,QGraphicsCustomItem_graphicsEffect, "QGraphicsCustomItem_graphicsEffect");
 
 procedure QGraphicsCustomItem_setGraphicsEffect(handle:not null QGraphicsItemH;effect:QGraphicsEffectH);
 pragma Import(C,QGraphicsCustomItem_setGraphicsEffect, "QGraphicsCustomItem_setGraphicsEffect");
 
 procedure QGraphicsCustomItem_addToIndex(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_addToIndex, "QGraphicsCustomItem_addToIndex");
 
 procedure QGraphicsCustomItem_removeFromIndex(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_removeFromIndex, "QGraphicsCustomItem_removeFromIndex");
 
 procedure QGraphicsCustomItem_prepareGeometryChange(handle:not null QGraphicsItemH);
 pragma Import(C,QGraphicsCustomItem_prepareGeometryChange, "QGraphicsCustomItem_prepareGeometryChange");

 function  QGraphicsCustomItem_propertyAnimation(handle:not null QGraphicsItemH;propertyName : zstring;parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QGraphicsCustomItem_propertyAnimation, "QGraphicsCustomItem_propertyAnimation");
 
 function  QGraphicsCustomItem_propertyAnimation2(handle:not null QGraphicsItemH) return QAnimationH;
 pragma Import(C,QGraphicsCustomItem_propertyAnimation2, "QGraphicsCustomItem_propertyAnimation2");

---
 procedure QGraphicsCustomItem_setPixmap(handle:not null QGraphicsItemH;pixmap:QPixmapH);
 pragma Import(C,QGraphicsCustomItem_setPixmap, "QGraphicsCustomItem_setPixmap");
  
 procedure QGraphicsCustomItem_setPaint(handle:not null QGraphicsItemH;paintProc:customPaintH);
 pragma Import(C,QGraphicsCustomItem_setPaint, "QGraphicsCustomItem_setPaint");
 
 procedure QGraphicsCustomItem_setBoundingRect(handle:not null QGraphicsItemH;boundingRectProc: customBoundingRectCallbackH );
 pragma Import(C,QGraphicsCustomItem_setBoundingRect, "QGraphicsCustomItem_setBoundingRect");
 
 procedure QGraphicsCustomItem_setShape(handle:not null QGraphicsItemH;shapeProc: customShapeCallbackH);
 pragma Import(C,QGraphicsCustomItem_setShape, "QGraphicsCustomItem_setShape");

 function  QGraphicsCustomItem_getId(handle:not null QGraphicsItemH) return integer;
 pragma Import(C,QGraphicsCustomItem_getId, "QGraphicsCustomItem_getId");
 
 procedure QGraphicsCustomItem_setId(handle:not null QGraphicsItemH;id:integer);
 pragma Import(C,QGraphicsCustomItem_setId, "QGraphicsCustomItem_setId");
 
 function  QGraphicsCustomItem_childItemsCount(handle:not null QGraphicsItemH) return  integer;
 pragma Import(C,QGraphicsCustomItem_childItemsCount, "QGraphicsCustomItem_childItemsCount");
 
 function  QGraphicsCustomItem_childAt(handle:not null QGraphicsItemH; i:integer) return  QGraphicsItemH;
 pragma Import(C,QGraphicsCustomItem_childAt, "QGraphicsCustomItem_childAt");

 function  QGraphicsCustomItem_neighboursCount(handle: not null QGraphicsItemH) return integer;
 pragma Import(C,QGraphicsCustomItem_neighboursCount, "QGraphicsCustomItem_neighboursCount");
 
 ------------------------------------------------------------------------------------------------
 function  QGraphicsCustomItem_create(parent:QGraphicsItemH := Null) return QGraphicsItemH;
 procedure QGraphicsCustomItem_scale(handle: not null QGraphicsItemH;sx,sy:qreal);

end Qt.QGraphicsCustomItem;
