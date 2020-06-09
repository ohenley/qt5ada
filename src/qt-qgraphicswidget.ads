--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012 ,2020                     บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QSize; use Qt.QSize;
with Qt.QGraphicsItem; 
with builtin; use builtin;
package Qt.QGraphicsWidget  is

 function  QGraphicsWidget_create(parent:QGraphicsItemH := null;wFlags:cardinal := 0) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsWidget_create, "QGraphicsWidget_create");
 
 function  QGraphicsWidget_create3(rect:QRectFH;parent:QGraphicsItemH := null;wFlags:cardinal := 0) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsWidget_create3, "QGraphicsWidget_create3");
 
 procedure QGraphicsWidget_destroy(handle: not null QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_destroy, "QGraphicsWidget_destroy");
 
 procedure QGraphicsWidget_setSizePolicy(handle: not null QGraphicsWidgetH; policy:QSizePolicyH);
 pragma Import(C,QGraphicsWidget_setSizePolicy, "QGraphicsWidget_setSizePolicy");
 
 function  QGraphicsWidget_sizePolicy(handle: not null QGraphicsWidgetH) return QSizePolicyH;
 pragma Import(C,QGraphicsWidget_sizePolicy, "QGraphicsWidget_sizePolicy");
 
 procedure QGraphicsWidget_setMinimumSize2(handle: not null QGraphicsWidgetH; size:QSizeFH);
 pragma Import(C,QGraphicsWidget_setMinimumSize2, "QGraphicsWidget_setMinimumSize2");
 
 procedure QGraphicsWidget_setMinimumSize(handle: not null QGraphicsWidgetH; w,h:qreal);
 pragma Import(C,QGraphicsWidget_setMinimumSize, "QGraphicsWidget_setMinimumSize");
 
 function  QGraphicsWidget_minimumSize(handle: not null QGraphicsWidgetH) return QSizeFH;
 pragma Import(C,QGraphicsWidget_minimumSize, "QGraphicsWidget_minimumSize");
 
 procedure QGraphicsWidget_setMinimumWidth(handle: not null QGraphicsWidgetH; width:qreal);
 pragma Import(C,QGraphicsWidget_setMinimumWidth, "QGraphicsWidget_setMinimumWidth");
 
 function  QGraphicsWidget_minimumWidth(handle: not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_minimumWidth, "QGraphicsWidget_minimumWidth");
 
 procedure QGraphicsWidget_setMinimumHeight(handle: not null QGraphicsWidgetH; height:qreal);
 pragma Import(C,QGraphicsWidget_setMinimumHeight, "QGraphicsWidget_setMinimumHeight");
 
 function  QGraphicsWidget_minimumHeight(handle: not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_minimumHeight, "QGraphicsWidget_minimumHeight");
 
 procedure QGraphicsWidget_setPreferredSize2(handle: not null QGraphicsWidgetH; size:QSizeFH);
 pragma Import(C,QGraphicsWidget_setPreferredSize2, "QGraphicsWidget_setPreferredSize2");
 
 procedure QGraphicsWidget_setPreferredSize(handle: not null QGraphicsWidgetH; w,h: qreal);
 pragma Import(C,QGraphicsWidget_setPreferredSize, "QGraphicsWidget_setPreferredSize");
 
 function  QGraphicsWidget_preferredSize(handle: not null QGraphicsWidgetH) return QSizeFH;
 pragma Import(C,QGraphicsWidget_preferredSize, "QGraphicsWidget_preferredSize");
 
 procedure QGraphicsWidget_setPreferredWidth(handle: not null QGraphicsWidgetH; width:qreal);
 pragma Import(C,QGraphicsWidget_setPreferredWidth, "QGraphicsWidget_setPreferredWidth");
 
 function  QGraphicsWidget_preferredWidth(handle: not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_preferredWidth, "QGraphicsWidget_preferredWidth");
 
 procedure QGraphicsWidget_setPreferredHeight(handle: not null QGraphicsWidgetH; height:qreal);
 pragma Import(C,QGraphicsWidget_setPreferredHeight, "QGraphicsWidget_setPreferredHeight");
 
 function  QGraphicsWidget_preferredHeight(handle: not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_preferredHeight, "QGraphicsWidget_preferredHeight");
 
 procedure QGraphicsWidget_setMaximumSize2(handle: not null QGraphicsWidgetH; size:QSizeFH);
 pragma Import(C,QGraphicsWidget_setMaximumSize2, "QGraphicsWidget_setMaximumSize2");
 
 procedure QGraphicsWidget_setMaximumSize(handle: not null QGraphicsWidgetH; w,h: qreal);
 pragma Import(C,QGraphicsWidget_setMaximumSize, "QGraphicsWidget_setMaximumSize");
 
 function  QGraphicsWidget_maximumSize(handle: not null QGraphicsWidgetH) return QSizeFH;
 pragma Import(C,QGraphicsWidget_maximumSize, "QGraphicsWidget_maximumSize");
 
 procedure QGraphicsWidget_setMaximumWidth(handle: not null QGraphicsWidgetH; width:qreal);
 pragma Import(C,QGraphicsWidget_setMaximumWidth, "QGraphicsWidget_setMaximumWidth");
 
 function  QGraphicsWidget_maximumWidth(handle: not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_maximumWidth, "QGraphicsWidget_maximumWidth");
 
 procedure QGraphicsWidget_setMaximumHeight(handle: not null QGraphicsWidgetH; height:qreal);
 pragma Import(C,QGraphicsWidget_setMaximumHeight, "QGraphicsWidget_setMaximumHeight");
 
 function  QGraphicsWidget_maximumHeight(handle: not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_maximumHeight, "QGraphicsWidget_maximumHeight");
 
 procedure QGraphicsWidget_setGeometry2(handle: not null QGraphicsWidgetH; rect:QRectFH);
 pragma Import(C,QGraphicsWidget_setGeometry2, "QGraphicsWidget_setGeometry2");
 
 function  QGraphicsWidget_geometry(handle: not null QGraphicsWidgetH) return QRectFH;
 pragma Import(C,QGraphicsWidget_geometry, "QGraphicsWidget_geometry");
 
 procedure QGraphicsWidget_getContentsMargins(handle: not null QGraphicsWidgetH;left,top,right,bottom:pdouble);
 pragma Import(C,QGraphicsWidget_getContentsMargins, "QGraphicsWidget_getContentsMargins");
 
 function  QGraphicsWidget_contentsRect(handle: not null QGraphicsWidgetH) return QRectFH;
 pragma Import(C,QGraphicsWidget_contentsRect, "QGraphicsWidget_contentsRect");
 
 function  QGraphicsWidget_effectiveSizeHint(handle: not null QGraphicsWidgetH; which:QtSizeHint) return QSizeFH;
 pragma Import(C,QGraphicsWidget_effectiveSizeHint, "QGraphicsWidget_effectiveSizeHint");
 
 procedure QGraphicsWidget_updateGeometry(handle: not null QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_updateGeometry, "QGraphicsWidget_updateGeometry");
 
 procedure QGraphicsWidget_update(handle: not null QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_update, "QGraphicsWidget_update");
 
 function  QGraphicsWidget_parentLayoutItem(handle: not null QGraphicsWidgetH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsWidget_parentLayoutItem, "QGraphicsWidget_parentLayoutItem");
 
 procedure QGraphicsWidget_setParentLayoutItem(handle: not null QGraphicsWidgetH;parent:QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_setParentLayoutItem, "QGraphicsWidget_setParentLayoutItem");
 
 function  QGraphicsWidget_isLayout(handle: not null QGraphicsWidgetH) return boolean;
 pragma Import(C,QGraphicsWidget_isLayout, "QGraphicsWidget_isLayout");
 
 function  QGraphicsWidget_ownedByLayout(handle: not null QGraphicsWidgetH) return boolean;
 pragma Import(C,QGraphicsWidget_ownedByLayout, "QGraphicsWidget_ownedByLayout");
 
 function  QGraphicsWidget_layout(handle: not null QGraphicsWidgetH) return QGraphicsLayoutH;
 pragma Import(C,QGraphicsWidget_layout, "QGraphicsWidget_layout");
 
 procedure QGraphicsWidget_setLayout(handle: not null QGraphicsWidgetH;layout:QGraphicsLayoutH);
 pragma Import(C,QGraphicsWidget_setLayout, "QGraphicsWidget_setLayout");
 
 procedure QGraphicsWidget_adjustSize(handle: not null QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_adjustSize, "QGraphicsWidget_adjustSize");
 
 function  QGraphicsWidget_layoutDirection(handle: not null QGraphicsWidgetH) return QtLayoutDirection;
 pragma Import(C,QGraphicsWidget_layoutDirection, "QGraphicsWidget_layoutDirection");
 
 procedure QGraphicsWidget_setLayoutDirection(handle: not null QGraphicsWidgetH; direction:QtLayoutDirection);
 pragma Import(C,QGraphicsWidget_setLayoutDirection, "QGraphicsWidget_setLayoutDirection");
 
 procedure QGraphicsWidget_unsetLayoutDirection(handle: not null QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_unsetLayoutDirection, "QGraphicsWidget_unsetLayoutDirection");
 
 function  QGraphicsWidget_style(handle: not null QGraphicsWidgetH) return QStyleH;
 pragma Import(C,QGraphicsWidget_style, "QGraphicsWidget_style");
 
 procedure QGraphicsWidget_setStyle(handle: not null QGraphicsWidgetH;style:QStyleH);
 pragma Import(C,QGraphicsWidget_setStyle, "QGraphicsWidget_setStyle");
 
 function  QGraphicsWidget_font(handle: not null QGraphicsWidgetH) return QFontH;
 pragma Import(C,QGraphicsWidget_font, "QGraphicsWidget_font");
 
 procedure QGraphicsWidget_setFont(handle: not null QGraphicsWidgetH; font:QFontH);
 pragma Import(C,QGraphicsWidget_setFont, "QGraphicsWidget_setFont");
 
 function  QGraphicsWidget_palette(handle: not null QGraphicsWidgetH) return QPaletteH;
 pragma Import(C,QGraphicsWidget_palette, "QGraphicsWidget_palette");
 
 procedure QGraphicsWidget_setPalette(handle: not null QGraphicsWidgetH;  palette:QPaletteH);
 pragma Import(C,QGraphicsWidget_setPalette, "QGraphicsWidget_setPalette");
 
 function  QGraphicsWidget_autoFillBackground(handle: not null QGraphicsWidgetH) return boolean;
 pragma Import(C,QGraphicsWidget_autoFillBackground, "QGraphicsWidget_autoFillBackground");
 
 procedure QGraphicsWidget_setAutoFillBackground(handle: not null QGraphicsWidgetH; enabled:boolean);
 pragma Import(C,QGraphicsWidget_setAutoFillBackground, "QGraphicsWidget_setAutoFillBackground");
 
 procedure QGraphicsWidget_resize2(handle: not null QGraphicsWidgetH; size:QSizeFH);
 pragma Import(C,QGraphicsWidget_resize2, "QGraphicsWidget_resize2");
 
 procedure QGraphicsWidget_resize(handle: not null QGraphicsWidgetH; w,h: qreal);
 pragma Import(C,QGraphicsWidget_resize, "QGraphicsWidget_resize");
 
 function  QGraphicsWidget_size(handle: not null QGraphicsWidgetH) return QSizeFH;
 pragma Import(C,QGraphicsWidget_size, "QGraphicsWidget_size");
 
 procedure QGraphicsWidget_setGeometry(handle: not null QGraphicsWidgetH; x, y, w, h:qreal);
 pragma Import(C,QGraphicsWidget_setGeometry, "QGraphicsWidget_setGeometry");
 
 function  QGraphicsWidget_rect(handle: not null QGraphicsWidgetH) return QRectFH;
 pragma Import(C,QGraphicsWidget_rect, "QGraphicsWidget_rect");
 
 procedure QGraphicsWidget_setContentsMargins(handle: not null QGraphicsWidgetH; left, top, right, bottom: qreal);
 pragma Import(C,QGraphicsWidget_setContentsMargins, "QGraphicsWidget_setContentsMargins");
 
 procedure QGraphicsWidget_setWindowFrameMargins(handle: not null QGraphicsWidgetH;left, top, right, bottom: qreal);
 pragma Import(C,QGraphicsWidget_setWindowFrameMargins, "QGraphicsWidget_setWindowFrameMargins");
 
 procedure QGraphicsWidget_getWindowFrameMargins(handle: not null QGraphicsWidgetH; left,top,right,bottom:pdouble);
 pragma Import(C,QGraphicsWidget_getWindowFrameMargins, "QGraphicsWidget_getWindowFrameMargins");
 
 procedure QGraphicsWidget_unsetWindowFrameMargins(handle: not null QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_unsetWindowFrameMargins, "QGraphicsWidget_unsetWindowFrameMargins");
 
 function  QGraphicsWidget_windowFrameGeometry(handle: not null QGraphicsWidgetH) return QRectFH;
 pragma Import(C,QGraphicsWidget_windowFrameGeometry, "QGraphicsWidget_windowFrameGeometry");
 
 function  QGraphicsWidget_windowFrameRect(handle: not null QGraphicsWidgetH) return QRectFH;
 pragma Import(C,QGraphicsWidget_windowFrameRect, "QGraphicsWidget_windowFrameRect");
 
 function  QGraphicsWidget_windowFlags(handle: not null QGraphicsWidgetH) return QtWindowFlags;
 pragma Import(C,QGraphicsWidget_windowFlags, "QGraphicsWidget_windowFlags");
 
 function  QGraphicsWidget_windowType(handle: not null QGraphicsWidgetH) return QtWindowType;
 pragma Import(C,QGraphicsWidget_windowType, "QGraphicsWidget_windowType");
 
 procedure QGraphicsWidget_setWindowFlags(handle: not null QGraphicsWidgetH; wFlags:QtWindowFlags);
 pragma Import(C,QGraphicsWidget_setWindowFlags, "QGraphicsWidget_setWindowFlags");
 
 function  QGraphicsWidget_isActiveWindow(handle: not null QGraphicsWidgetH) return boolean;
 pragma Import(C,QGraphicsWidget_isActiveWindow, "QGraphicsWidget_isActiveWindow");
 
 procedure QGraphicsWidget_setWindowTitle(handle: not null QGraphicsWidgetH; title:QStringH);
 pragma Import(C,QGraphicsWidget_setWindowTitle, "QGraphicsWidget_setWindowTitle");
 
 function  QGraphicsWidget_windowTitle(handle: not null QGraphicsWidgetH) return QStringH;
 pragma Import(C,QGraphicsWidget_windowTitle, "QGraphicsWidget_windowTitle");
 
 function  QGraphicsWidget_focusPolicy(handle: not null QGraphicsWidgetH) return QtFocusPolicy;
 pragma Import(C,QGraphicsWidget_focusPolicy, "QGraphicsWidget_focusPolicy");
 
 procedure QGraphicsWidget_setFocusPolicy(handle: not null QGraphicsWidgetH;policy:QtFocusPolicy);
 pragma Import(C,QGraphicsWidget_setFocusPolicy, "QGraphicsWidget_setFocusPolicy");
 
 procedure QGraphicsWidget_setTabOrder( first,second: QGraphicsWidgetH);
 pragma Import(C,QGraphicsWidget_setTabOrder, "QGraphicsWidget_setTabOrder");
 
 function  QGraphicsWidget_focusWidget(handle: not null QGraphicsWidgetH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsWidget_focusWidget, "QGraphicsWidget_focusWidget");
 
 procedure QGraphicsWidget_setAttribute(handle: not null QGraphicsWidgetH; attribute:QtWidgetAttribute; on:boolean := true);
 pragma Import(C,QGraphicsWidget_setAttribute, "QGraphicsWidget_setAttribute");
 
 function  QGraphicsWidget_testAttribute(handle: not null QGraphicsWidgetH; attribute:QtWidgetAttribute) return boolean;
 pragma Import(C,QGraphicsWidget_testAttribute, "QGraphicsWidget_testAttribute");
 
 procedure QGraphicsWidget_paintWindowFrame(handle: not null QGraphicsWidgetH; painter: QPainterH;  option: QStyleOptionGraphicsItemH; widget: QWidgetH := null);
 pragma Import(C,QGraphicsWidget_paintWindowFrame, "QGraphicsWidget_paintWindowFrame");
 
 function  QGraphicsWidget_boundingRect(handle: not null QGraphicsWidgetH) return QRectFH;
 pragma Import(C,QGraphicsWidget_boundingRect, "QGraphicsWidget_boundingRect");
 
 function  QGraphicsWidget_shape(handle: not null QGraphicsWidgetH) return QPainterPathH;
 pragma Import(C,QGraphicsWidget_shape, "QGraphicsWidget_shape");

 procedure QGraphicsWidget_setOpacity(handle:not null QGraphicsWidgetH;opacity:qreal);
 pragma Import(C,QGraphicsWidget_setOpacity, "QGraphicsWidget_setOpacity");

 function  QGraphicsWidget_boundingRect2(handle:not null QGraphicsWidgetH) return QRectFH;
 pragma Import(C,QGraphicsWidget_boundingRect2, "QGraphicsWidget_boundingRect2");
 
 function  QGraphicsWidget_sizeHint(handle:not null QGraphicsWidgetH;which:QtSizeHint;constraint:QSizeFH := QSizeF_create) return QSizeFH;
 pragma Import(C,QGraphicsWidget_sizeHint, "QGraphicsWidget_sizeHint");
 
 function  QGraphicsWidget_itemChange(handle:not null QGraphicsWidgetH;change:Qt.QGraphicsItem.GraphicsItemChange;value:QVariantH) return QVariantH;
 pragma Import(C,QGraphicsWidget_itemChange, "QGraphicsWidget_itemChange");
 
 function  QGraphicsWidget_propertyChange(handle:not null QGraphicsWidgetH;propertyName:QStringH ;value:QVariantH) return QVariantH;
 pragma Import(C,QGraphicsWidget_propertyChange, "QGraphicsWidget_propertyChange");
 
 procedure QGraphicsWidget_paint(handle:not null QGraphicsWidgetH;painter:QPainterH;optin:QStyleOptionGraphicsItemH;widget:QWidgetH);
 pragma Import(C,QGraphicsWidget_paint, "QGraphicsWidget_paint");

 procedure QGraphicsWidget_initStyleOption(handle:not null QGraphicsWidgetH;option:QStyleOptionH);
 pragma Import(C,QGraphicsWidget_initStyleOption, "QGraphicsWidget_initStyleOption");
 
 procedure QGraphicsWidget_setPixmap(handle:not null QGraphicsWidgetH;pixmap:QPixmapH);
 pragma Import(C,QGraphicsWidget_setPixmap, "QGraphicsWidget_setPixmap");
  
 procedure QGraphicsWidget_setPaint(handle:not null QGraphicsWidgetH;paintProc:Qt.customPaintH);
 pragma Import(C,QGraphicsWidget_setPaint, "QGraphicsWidget_setPaint");
 
 procedure QGraphicsWidget_setPos(handle:not null QGraphicsWidgetH; x,y: qreal);
 pragma Import(C,QGraphicsWidget_setPos, "QGraphicsWidget_setPos");
 
 procedure QGraphicsWidget_setPos2(handle:not null QGraphicsWidgetH;pos:QPointFH);
 pragma Import(C,QGraphicsWidget_setPos2, "QGraphicsWidget_setPos2");
 
 procedure QGraphicsWidget_setAcceptHoverEvents(handle:not null QGraphicsWidgetH; enabled: boolean := true);
 pragma Import(C,QGraphicsWidget_setAcceptHoverEvents, "QGraphicsWidget_setAcceptHoverEvents");
 
 procedure QGraphicsWidget_setCacheMode(handle:not null QGraphicsWidgetH;mode:Qt.QGraphicsItem.CacheMode;cacheSize:QSizeH := QSize_create);
 pragma Import(C,QGraphicsWidget_setCacheMode, "QGraphicsWidget_setCacheMode");

 procedure QGraphicsWidget_setBoundingRect(handle:not null QGraphicsWidgetH;boundingRectProc: Qt.customBoundingRectCallbackH );
 pragma Import(C,QGraphicsWidget_setBoundingRect, "QGraphicsWidget_setBoundingRect");

 procedure QGraphicsWidget_setShape(handle:not null QGraphicsWidgetH;shapeProc: Qt.customShapeCallbackH);
 pragma Import(C,QGraphicsWidget_setShape, "QGraphicsWidget_setShape");

 function  QGraphicsWidget_propertyAnimation(handle:not null QGraphicsWidgetH;propertyName:zstring; object:QObjectH := null) return QAnimationH;
 pragma Import(C,QGraphicsWidget_propertyAnimation, "QGraphicsWidget_propertyAnimation");
 
 procedure QGraphicsWidget_setFlag(handle: not null QGraphicsWidgetH;flag: Qt.QGraphicsItem.GraphicsItemFlag := Qt.QGraphicsItem.ItemIsMovable; enabled:boolean := true);
 pragma Import(C,QGraphicsWidget_setFlag, "QGraphicsWidget_setFlag");

 procedure QGraphicsWidget_signal_slot_geometryChanged(handle:not null QGraphicsWidgetH; hook: voidCallbackH); 
 pragma Import(C,QGraphicsWidget_signal_slot_geometryChanged, "QGraphicsWidget_signal_slot_geometryChanged");
 
 procedure QGraphicsWidget_signal_slot_layoutChanged(handle:not null QGraphicsWidgetH; hook: voidCallbackH); 
 pragma Import(C,QGraphicsWidget_signal_slot_layoutChanged, "QGraphicsWidget_signal_slot_layoutChanged");
  
 procedure QGraphicsWidget_signal_slot_pressed(handle:not null QGraphicsWidgetH; hook: voidCallbackH);
 pragma Import(C,QGraphicsWidget_signal_slot_pressed, "QGraphicsWidget_signal_slot_pressed");
 
 procedure QGraphicsWidget_signal_slot_released(handle:not null QGraphicsWidgetH; hook: voidCallbackH); 
 pragma Import(C,QGraphicsWidget_signal_slot_released, "QGraphicsWidget_signal_slot_released");
 
 procedure QGraphicsWidget_signal_slot_clicked(handle:not null QGraphicsWidgetH; hook: voidCallbackH); 
 pragma Import(C,QGraphicsWidget_signal_slot_clicked, "QGraphicsWidget_signal_slot_clicked");

 type customGeometryH  is access procedure(rect:QRectFH);
 pragma convention(C,customGeometryH); 

 procedure QGraphicsWidget_setCustomGeometry(handle:not null QGraphicsWidgetH; geometryProc: customGeometryH);
 pragma Import(C,QGraphicsWidget_setCustomGeometry, "QGraphicsWidget_setCustomGeometry");

 procedure QGraphicsWidget_setText(handle:not null QGraphicsWidgetH;text:QStringH);
 pragma Import(C,QGraphicsWidget_setText, "QGraphicsWidget_setText");

 procedure QGraphicsWidget_mouseBasePressEvent(handle:not null QGraphicsItemH;event:QEventH);
 pragma Import(C,QGraphicsWidget_mouseBasePressEvent, "QGraphicsWidget_mouseBasePressEvent");
 
 procedure QGraphicsWidget_mouseBaseMoveEvent(handle:not null QGraphicsItemH;event:QEventH);
 pragma Import(C,QGraphicsWidget_mouseBaseMoveEvent, "QGraphicsWidget_mouseBaseMoveEvent");
 
 procedure QGraphicsWidget_mouseBaseReleaseEvent(handle:not null QGraphicsItemH;event:QEventH);
 pragma Import(C,QGraphicsWidget_mouseBaseReleaseEvent, "QGraphicsWidget_mouseBaseReleaseEvent");
 
 procedure QGraphicsWidget_mouseBaseDoubleClickEvent(handle:not null QGraphicsItemH;event:QEventH);
 pragma Import(C,QGraphicsWidget_mouseBaseDoubleClickEvent, "QGraphicsWidget_mouseBaseDoubleClickEvent");
 
 function  QGraphicsWidget_toGraphicsItem(handle:not null QGraphicsItemH) return QGraphicsItemH;
 pragma Import(C,QGraphicsWidget_toGraphicsItem, "QGraphicsWidget_toGraphicsItem");

procedure QGraphicsWidget_setZValue(handle: not null QGraphicsWidgetH;z:qreal);
 pragma Import(C,QGraphicsWidget_setZValue, "QGraphicsWidget_setZValue");
 
 function  QGraphicsWidget_pos(handle:not null QGraphicsWidgetH) return QPointFH;
 pragma Import(C,QGraphicsWidget_pos, "QGraphicsWidget_pos");
 
 function  QGraphicsWidget_x(handle:not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_x, "QGraphicsWidget_x");
 
 procedure QGraphicsWidget_setX(handle:not null QGraphicsWidgetH;x:qreal);
 pragma Import(C,QGraphicsWidget_setX, "QGraphicsWidget_setX");
 
 function  QGraphicsWidget_y(handle:not null QGraphicsWidgetH) return qreal;
 pragma Import(C,QGraphicsWidget_y, "QGraphicsWidget_y");
 
 procedure QGraphicsWidget_setY(handle:not null QGraphicsWidgetH;y:qreal);
 pragma Import(C,QGraphicsWidget_setY, "QGraphicsWidget_setY");
 
 function  QGraphicsWidget_scenePos(handle:not null QGraphicsWidgetH) return QPointFH;
 pragma Import(C,QGraphicsWidget_scenePos, "QGraphicsWidget_scenePos");
 

---------------------------------------------------------------------------------------------------------------------------

 function  QGraphicsWidget_create(rect:QRectFH;parent:QGraphicsItemH := null;wFlags:cardinal := 0) return QGraphicsWidgetH;
 procedure QGraphicsWidget_setMinimumSize(handle: not null QGraphicsWidgetH; size:QSizeFH);
 procedure QGraphicsWidget_setMaximumSize(handle: not null QGraphicsWidgetH; size:QSizeFH);
 procedure QGraphicsWidget_setGeometry(handle: not null QGraphicsWidgetH; rect:QRectFH);
 procedure QGraphicsWidget_resize(handle: not null QGraphicsWidgetH; size:QSizeFH);
 procedure QGraphicsWidget_setPos(handle:not null QGraphicsWidgetH;pos:QPointFH);

end Qt.QGraphicsWidget;
