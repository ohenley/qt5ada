--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2017                 บ
-- บ Copyright (C) 2012,2014,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGraphicsScene is

type ItemIndexMethod is (NoIndex, BspTreeIndex);
pragma Convention(C,ItemIndexMethod);
for ItemIndexMethod use (NoIndex => -1, BspTreeIndex => 0);
 

type  SceneLayer is (ItemLayer, BackgroundLayer, ForegroundLayer, AllLayers);
pragma Convention(C,SceneLayer);
for   SceneLayer use  (ItemLayer => 1, BackgroundLayer => 2, ForegroundLayer => 4, AllLayers => 16#ffff#);

 function QGraphicsScene_create(parent : QObjectH := null) return  QGraphicsSceneH;
 pragma Import(C,QGraphicsScene_create,"QGraphicsScene_create");

 procedure QGraphicsScene_destroy(hanle: QGraphicsSceneH);
 pragma Import(C,QGraphicsScene_destroy,"QGraphicsScene_destroy");

 function QGraphicsScene_create2(sceneRect : QRectFH; parent: QObjectH := null) return QGraphicsSceneH;
 pragma Import(C,QGraphicsScene_create2,"QGraphicsScene_create2");

 function QGraphicsScene_create3(top,left, width, height : qreal; parent: QObjectH := null) return QGraphicsSceneH;
 pragma Import(C,QGraphicsScene_create3,"QGraphicsScene_create3");

 function QGraphicsScene_sceneRect(handle: not null  QGraphicsSceneH) return QRectFH;
 pragma Import(C,QGraphicsScene_sceneRect,"QGraphicsScene_sceneRect");

 function QGraphicsScene_width(handle: not null  QGraphicsSceneH) return qreal;
 pragma Import(C,QGraphicsScene_width,"QGraphicsScene_width");

 function  QGraphicsScene_height(handle: not null  QGraphicsSceneH) return qreal;
 pragma Import(C,QGraphicsScene_height,"QGraphicsScene_height");

 procedure QGraphicsScene_setSceneRect(handle: not null  QGraphicsSceneH; rect: QRectFH);
 pragma Import(C,QGraphicsScene_setSceneRect,"QGraphicsScene_setSceneRect");

 procedure QGraphicsScene_setSceneRect2(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal);
 pragma Import(C,QGraphicsScene_setSceneRect2,"QGraphicsScene_setSceneRect2");

 procedure QGraphicsScene_render(handle: not null  QGraphicsSceneH; painter: QPainterH; target: QRectFH; source: QRectFH; aspectRatioMode: QtAspectRatioMode);
 pragma Import(C,QGraphicsScene_render,"QGraphicsScene_render");

 function QGraphicsScene_itemIndexMethod(handle: not null  QGraphicsSceneH) return ItemIndexMethod;
 pragma Import(C,QGraphicsScene_itemIndexMethod,"QGraphicsScene_itemIndexMethod");

 procedure QGraphicsScene_setItemIndexMethod(handle: not null  QGraphicsSceneH; method : ItemIndexMethod);
 pragma Import(C,QGraphicsScene_setItemIndexMethod,"QGraphicsScene_setItemIndexMethod");

 function QGraphicsScene_bspTreeDepth(handle: not null  QGraphicsSceneH) return integer;
 pragma Import(C,QGraphicsScene_bspTreeDepth,"QGraphicsScene_bspTreeDepth");

 procedure QGraphicsScene_setBspTreeDepth(handle: not null  QGraphicsSceneH; depth: integer);
 pragma Import(C,QGraphicsScene_setBspTreeDepth,"QGraphicsScene_setBspTreeDepth");

 function QGraphicsScene_itemsBoundingRect(handle: not null  QGraphicsSceneH) return QRectFH;
 pragma Import(C,QGraphicsScene_itemsBoundingRect,"QGraphicsScene_itemsBoundingRect");

 function QGraphicsScene_itemAt(handle: not null  QGraphicsSceneH; pos: QPointFH; deviceTransform:QTransformH) return QGraphicsItemH;
 pragma Import(C,QGraphicsScene_itemAt,"QGraphicsScene_itemAt");

 function QGraphicsScene_itemAt3(handle: not null  QGraphicsSceneH; x,y: double;deviceTransform:QTransformH) return QGraphicsItemH;
 pragma Import(C,QGraphicsScene_itemAt3,"QGraphicsScene_itemAt3");

 function QGraphicsScene_selectionArea(handle: not null  QGraphicsSceneH) return  QPainterPathH;
 pragma Import(C,QGraphicsScene_selectionArea,"QGraphicsScene_selectionArea");

 procedure QGraphicsScene_setSelectionArea(handle: not null  QGraphicsSceneH; path: QPainterPathH);
 pragma Import(C,QGraphicsScene_setSelectionArea,"QGraphicsScene_setSelectionArea");

 procedure QGraphicsScene_setSelectionArea2(handle: not null  QGraphicsSceneH; path: QPainterPathH; ISM : QtItemSelectionMode);
 pragma Import(C,QGraphicsScene_setSelectionArea2,"QGraphicsScene_setSelectionArea2");

 procedure QGraphicsScene_clearSelection(handle: not null  QGraphicsSceneH);
 pragma Import(C,QGraphicsScene_clearSelection,"QGraphicsScene_clearSelection");

 procedure QGraphicsScene_destroyItemGroup(handle: not null  QGraphicsSceneH; group : QGraphicsItemGroupH);
 pragma Import(C,QGraphicsScene_destroyItemGroup,"QGraphicsScene_destroyItemGroup");

 procedure QGraphicsScene_addItem(handle: not null  QGraphicsSceneH; item: QGraphicsItemH);
 pragma Import(C,QGraphicsScene_addItem,"QGraphicsScene_addItem");

 procedure QGraphicsScene_addGraphicsWidget(handle: not null  QGraphicsSceneH; item: QGraphicsWidgetH);
 pragma Import(C,QGraphicsScene_addGraphicsWidget,"QGraphicsScene_addGraphicsWidget");

 procedure QGraphicsScene_addItem2(handle: not null  QGraphicsSceneH; item: QGraphicsWidgetH);
 pragma Import(C,QGraphicsScene_addItem2,"QGraphicsScene_addItem2");

 procedure QGraphicsScene_addItem3(handle:not null QGraphicsSceneH; item:QGraphicsProxyWidgetH);
 pragma Import(C,QGraphicsScene_addItem3, "QGraphicsScene_addItem3");

 function  QGraphicsScene_addVideoItem(handle: not null QGraphicsSceneH; width,height: qreal) return QGraphicsVideoItemH;
 pragma Import(C,QGraphicsScene_addVideoItem, "QGraphicsScene_addVideoItem");
 
 procedure QGraphicsScene_addPixmapObject(handle: not null  QGraphicsSceneH; item: QGraphicsPixmapItemH);
 pragma Import(C,QGraphicsScene_addPixmapObject,"QGraphicsScene_addPixmapObject");

 procedure QGraphicsScene_addVideoItem2(handle: not null QGraphicsSceneH; videoItem: not null QGraphicsVideoItemH);
 pragma Import(C,QGraphicsScene_addVideoItem2, "QGraphicsScene_addVideoItem2");

 function QGraphicsScene_addEllipse(handle: not null  QGraphicsSceneH; rect: QRectFH; pen: QPenH;brush: QBrushH) return QGraphicsEllipseItemH;
 pragma Import(C,QGraphicsScene_addEllipse,"QGraphicsScene_addEllipse");

 function QGraphicsScene_addLine(handle: not null  QGraphicsSceneH; line: QLineFH; pen: QPenH) return QGraphicsLineItemH;
 pragma Import(C,QGraphicsScene_addLine,"QGraphicsScene_addLine");

 function QGraphicsScene_addPath(handle: not null  QGraphicsSceneH; path: QPainterPathH; pen: QPenH; brush: QBrushH) return QGraphicsPathItemH;
 pragma Import(C,QGraphicsScene_addPath,"QGraphicsScene_addPath");

 function QGraphicsScene_addPixmap(handle: not null  QGraphicsSceneH;pixmap: QPixmapH) return QGraphicsPixmapItemH;
 pragma Import(C,QGraphicsScene_addPixmap,"QGraphicsScene_addPixmap");

 function QGraphicsScene_addPolygon(handle: not null  QGraphicsSceneH; polygon: QPolygonFH; pen: QPenH; brush: QBrushH) return QGraphicsPolygonItemH;
 pragma Import(C,QGraphicsScene_addPolygon,"QGraphicsScene_addPolygon");

 function QGraphicsScene_addRect(handle: not null  QGraphicsSceneH; rect: QRectFH; pen: QPenH; brush: QBrushH) return QGraphicsRectItemH;
 pragma Import(C,QGraphicsScene_addRect,"QGraphicsScene_addRect");

 function QGraphicsScene_addText(handle: not null  QGraphicsSceneH; text: QStringH; font: QFontH) return QGraphicsTextItemH;
 pragma Import(C,QGraphicsScene_addText,"QGraphicsScene_addText");

 function QGraphicsScene_addText2(handle: not null  QGraphicsSceneH; text: QStringH) return QGraphicsTextItemH;
 pragma Import(C,QGraphicsScene_addText2,"QGraphicsScene_addText2");

 function QGraphicsScene_addSimpleText(handle: not null  QGraphicsSceneH; text: QStringH; font: QFontH) return QGraphicsSimpleTextItemH;
 pragma Import(C,QGraphicsScene_addSimpleText,"QGraphicsScene_addSimpleText");

 function QGraphicsScene_addSimpleText2(handle: not null  QGraphicsSceneH; text: QStringH) return QGraphicsSimpleTextItemH;
 pragma Import(C,QGraphicsScene_addSimpleText2,"QGraphicsScene_addSimpleText2");

 function QGraphicsScene_addEllipse2(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal; pen: QPenH; brush: QBrushH) return QGraphicsEllipseItemH;
 pragma Import(C,QGraphicsScene_addEllipse2,"QGraphicsScene_addEllipse2");

 function QGraphicsScene_addLine2(handle: not null  QGraphicsSceneH; x1: qreal; y1: qreal; x2: qreal; y2: qreal; pen: QPenH) return QGraphicsLineItemH;
 pragma Import(C,QGraphicsScene_addLine2,"QGraphicsScene_addLine2");

 function QGraphicsScene_addRect2(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal; pen: QPenH; brush: QBrushH) return QGraphicsRectItemH;
 pragma Import(C,QGraphicsScene_addRect2,"QGraphicsScene_addRect2");

 procedure QGraphicsScene_removeItem(handle: not null  QGraphicsSceneH;item: QGraphicsItemH);
 pragma Import(C,QGraphicsScene_removeItem,"QGraphicsScene_removeItem");

 function QGraphicsScene_focusItem(handle: not null  QGraphicsSceneH) return QGraphicsItemH;
 pragma Import(C,QGraphicsScene_focusItem,"QGraphicsScene_focusItem");

 procedure QGraphicsScene_setFocusItem(handle: not null  QGraphicsSceneH; item: QGraphicsItemH;focusReason: QtFocusReason);
 pragma Import(C,QGraphicsScene_setFocusItem,"QGraphicsScene_setFocusItem");
 function  QGraphicsScene_hasFocus(handle: not null  QGraphicsSceneH) return boolean;
 pragma Import(C,QGraphicsScene_hasFocus,"QGraphicsScene_hasFocus");

 procedure QGraphicsScene_setFocus(handle: not null  QGraphicsSceneH; focusReason: QtFocusReason);
 pragma Import(C,QGraphicsScene_setFocus,"QGraphicsScene_setFocus");

 procedure QGraphicsScene_clearFocus(handle: not null  QGraphicsSceneH);
 pragma Import(C,QGraphicsScene_clearFocus,"QGraphicsScene_clearFocus");

 function QGraphicsScene_mouseGrabberItem(handle: not null  QGraphicsSceneH) return QGraphicsItemH;
 pragma Import(C,QGraphicsScene_mouseGrabberItem,"QGraphicsScene_mouseGrabberItem");

 function QGraphicsScene_backgroundBrush(handle: not null  QGraphicsSceneH) return QBrushH;
 pragma Import(C,QGraphicsScene_backgroundBrush,"QGraphicsScene_backgroundBrush");

 procedure QGraphicsScene_setBackgroundBrush(handle: not null  QGraphicsSceneH; brush: QBrushH);
 pragma Import(C,QGraphicsScene_setBackgroundBrush,"QGraphicsScene_setBackgroundBrush");

 function QGraphicsScene_foregroundBrush(handle: not null  QGraphicsSceneH) return QBrushH;
 pragma Import(C,QGraphicsScene_foregroundBrush,"QGraphicsScene_foregroundBrush");

 procedure QGraphicsScene_setForegroundBrush(handle: not null  QGraphicsSceneH; brush: QBrushH);
 pragma Import(C,QGraphicsScene_setForegroundBrush,"QGraphicsScene_setForegroundBrush");

 function QGraphicsScene_inputMethodQuery(handle: not null  QGraphicsSceneH; query: QTInputMethodQuery) return QVariantH;
 pragma Import(C,QGraphicsScene_inputMethodQuery,"QGraphicsScene_inputMethodQuery");

 procedure QGraphicsScene_update(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal);
 pragma Import(C,QGraphicsScene_update,"QGraphicsScene_update");

 procedure QGraphicsScene_invalidate(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal; layers: quint);
 pragma Import(C,QGraphicsScene_invalidate,"QGraphicsScene_invalidate");

 procedure QGraphicsScene_update2(handle: not null  QGraphicsSceneH; rect: QRectFH);
 pragma Import(C,QGraphicsScene_update2,"QGraphicsScene_update2");

 procedure QGraphicsScene_invalidate2(handle: not null  QGraphicsSceneH; rect: QRectFH; layers: quint);
 pragma Import(C,QGraphicsScene_invalidate2,"QGraphicsScene_invalidate2");

 procedure QGraphicsScene_invalidate3(handle: not null  QGraphicsSceneH);
 pragma Import(C,QGraphicsScene_invalidate3,"QGraphicsScene_invalidate3");

 procedure QGraphicsScene_advance(handle: not null  QGraphicsSceneH);
 pragma Import(C,QGraphicsScene_advance,"QGraphicsScene_advance");

 function  QGraphicsScene_isSortCacheEnabled(handle: not null QGraphicsSceneH) return boolean;
 pragma Import(C,QGraphicsScene_isSortCacheEnabled,"QGraphicsScene_isSortCacheEnabled");

 procedure QGraphicsScene_setSortCacheEnabled(handle: not null QGraphicsSceneH; enabled:boolean);
 pragma Import(C,QGraphicsScene_setSortCacheEnabled,"QGraphicsScene_setSortCacheEnabled");

 function  QGraphicsScene_items(handle: not null QGraphicsSceneH) return QObjectListH;
 pragma Import(C,QGraphicsScene_items,"QGraphicsScene_items");

 function  QGraphicsScene_items2(handle: not null QGraphicsSceneH; pos: QPointFH) return QObjectListH;
 pragma Import(C,QGraphicsScene_items2,"QGraphicsScene_items2");

 function  QGraphicsScene_items3(handle: not null QGraphicsSceneH; rect: QRectFH; mode:QtItemSelectionMode) return QObjectListH;
 pragma Import(C,QGraphicsScene_items3,"QGraphicsScene_items3");

 function  QGraphicsScene_items4(handle: not null QGraphicsSceneH; polygon: QPolygonFH; mode:QtItemSelectionMode) return QObjectListH;
 pragma Import(C,QGraphicsScene_items4,"QGraphicsScene_items4");

 function  QGraphicsScene_items5(handle: not null QGraphicsSceneH; path: QPainterPathH; mode:QtItemSelectionMode) return QObjectListH;
 pragma Import(C,QGraphicsScene_items5,"QGraphicsScene_items5");

-- function  QGraphicsScene_items6(handle: not null QGraphicsSceneH; x, y, w, h: qreal; mode:QtItemSelectionMode) return QObjectListH;
-- pragma Import(C,QGraphicsScene_items6,"QGraphicsScene_items6");

 function  QGraphicsScene_collidingItems(handle: not null QGraphicsSceneH; item: QGraphicsItemH; mode:QtItemSelectionMode) return QObjectListH;
 pragma Import(C,QGraphicsScene_collidingItems,"QGraphicsScene_collidingItems");

 function  QGraphicsScene_selectedItems(handle: not null QGraphicsSceneH) return QObjectListH;
 pragma Import(C,QGraphicsScene_selectedItems,"QGraphicsScene_selectedItems");

 function  QGraphicsScene_createItemGroup(handle: not null QGraphicsSceneH; items: QObjectListH) return QGraphicsItemGroupH;
 pragma Import(C,QGraphicsScene_createItemGroup,"QGraphicsScene_createItemGroup");

 function  QGraphicsScene_addWidget(handle: not null QGraphicsSceneH; widget: QWidgetH; Flags_w: quint := 0) return QGraphicsProxyWidgetH;
 pragma Import(C,QGraphicsScene_addWidget,"QGraphicsScene_addWidget");

 procedure QGraphicsScene_setStickyFocus(handle: not null QGraphicsSceneH; enabled:boolean);
 pragma Import(C,QGraphicsScene_setStickyFocus,"QGraphicsScene_setStickyFocus");

 function  QGraphicsScene_stickyFocus(handle: not null QGraphicsSceneH) return boolean;
 pragma Import(C,QGraphicsScene_stickyFocus,"QGraphicsScene_stickyFocus");

 function  QGraphicsScene_views(handle: not null QGraphicsSceneH) return QObjectListH;
 pragma Import(C,QGraphicsScene_views,"QGraphicsScene_views");

 function  QGraphicsScene_style(handle: not null QGraphicsSceneH) return QStyleH;
 pragma Import(C,QGraphicsScene_style,"QGraphicsScene_style");

 procedure QGraphicsScene_setStyle(handle: not null QGraphicsSceneH; style: QStyleH);
 pragma Import(C,QGraphicsScene_setStyle,"QGraphicsScene_setStyle");

 function  QGraphicsScene_font(handle: not null QGraphicsSceneH) return QFontH;
 pragma Import(C,QGraphicsScene_font,"QGraphicsScene_font");

 procedure QGraphicsScene_setFont(handle: not null QGraphicsSceneH; font: QFontH);
 pragma Import(C,QGraphicsScene_setFont,"QGraphicsScene_setFont");

 function  QGraphicsScene_palette(handle: not null QGraphicsSceneH) return QPaletteH;
 pragma Import(C,QGraphicsScene_palette,"QGraphicsScene_palette");

 procedure QGraphicsScene_setPalette(handle: not null QGraphicsSceneH; palette: QPaletteH);
 pragma Import(C,QGraphicsScene_setPalette,"QGraphicsScene_setPalette");

 function  QGraphicsScene_activeWindow(handle: not null QGraphicsSceneH) return QGraphicsWidgetH;
 pragma Import(C,QGraphicsScene_activeWindow,"QGraphicsScene_activeWindow");

 procedure QGraphicsScene_setActiveWindow(handle: not null QGraphicsSceneH; widget: QGraphicsWidgetH);
 pragma Import(C,QGraphicsScene_setActiveWindow,"QGraphicsScene_setActiveWindow");

 procedure QGraphicsScene_clear(handle: not null QGraphicsSceneH);
 pragma Import(C,QGraphicsScene_clear,"QGraphicsScene_clear");

 function  QGraphicsScene_countItems(handle:not null QGraphicsSceneH) return integer ;
 pragma Import(C,QGraphicsScene_countItems, "QGraphicsScene_countItems");
 
 function  QGraphicsScene_itemAt2(handle:not null QGraphicsSceneH; index: integer) return QGraphicsItemH ;
 pragma Import(C,QGraphicsScene_itemAt2, "QGraphicsScene_itemAt2");

 type QGraphicsScene_sceneRectChangedEvent is access procedure(rect:QRectFH);
 pragma Convention(C,QGraphicsScene_sceneRectChangedEvent);

 type QGraphicsScene_selectionChangedEvent is access procedure;
 pragma Convention(C,QGraphicsScene_selectionChangedEvent);
 
 procedure QGraphicsScene_signal_slot_sceneRectChanged(handle: not null QGraphicsSceneH; hook:QGraphicsScene_sceneRectChangedEvent);
 pragma Import(C,QGraphicsScene_signal_slot_sceneRectChanged, "QGraphicsScene_signal_slot_sceneRectChanged");
 
 procedure QGraphicsScene_signal_slot_selectionChanged(handle: not null QGraphicsSceneH; hook:QGraphicsScene_selectionChangedEvent);
 pragma Import(C,QGraphicsScene_signal_slot_selectionChanged, "QGraphicsScene_signal_slot_selectionChanged");
 
 type focusItemChangedProc is access procedure (newItem,oldItem: QGraphicsItemH; reason: QtFocusReason := QtOtherFocusReason);
 pragma convention(C,focusItemChangedProc);
 
 procedure QGraphicsScene_signal_slot_focusItemChanged(handle:not null QGraphicsSceneH; hook:focusItemChangedProc);
 pragma Import(C,QGraphicsScene_signal_slot_focusItemChanged, "QGraphicsScene_signal_slot_focusItemChanged");

----------------------------------------------------------------------------------------------------------------
 function  QGraphicsSceneEvent_create(eventType: integer) return QGraphicsSceneEventH;
 pragma Import(C,QGraphicsSceneEvent_create, "QGraphicsSceneEvent_create");
 
 procedure QGraphicsSceneEvent_destroy(handle:QGraphicsSceneEventH);
 pragma Import(C,QGraphicsSceneEvent_destroy, "QGraphicsSceneEvent_destroy");
 
 function  QGraphicsSceneEvent_widget(handle:QGraphicsSceneEventH) return QWidgetH;
 pragma Import(C,QGraphicsSceneEvent_widget, "QGraphicsSceneEvent_widget");
 
 procedure QGraphicsSceneEvent_setWidget(handle:QGraphicsSceneEventH; widget: QWidgetH);
 pragma Import(C,QGraphicsSceneEvent_setWidget, "QGraphicsSceneEvent_setWidget");

---------------------------------------------------------------------------------------------------------------
 function  QGraphicsSceneMouseEvent_create(mouseType: integer) return QGraphicsSceneMouseEventH;
 pragma Import(C,QGraphicsSceneMouseEvent_create, "QGraphicsSceneMouseEvent_create");
 
 procedure QGraphicsSceneMouseEvent_destroy(handle: not null QGraphicsSceneMouseEventH);
 pragma Import(C,QGraphicsSceneMouseEvent_destroy, "QGraphicsSceneMouseEvent_destroy");
 
 function  QGraphicsSceneMouseEvent_pos(handle: not null QGraphicsSceneEventH) return QPointFH;
 pragma Import(C,QGraphicsSceneMouseEvent_pos, "QGraphicsSceneMouseEvent_pos");
 
 function  QGraphicsSceneMouseEvent_x(handle: not null QGraphicsSceneEventH) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_x, "QGraphicsSceneMouseEvent_x");
 
 function  QGraphicsSceneMouseEvent_y(handle: not null QGraphicsSceneEventH) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_y, "QGraphicsSceneMouseEvent_y");

 procedure QGraphicsSceneMouseEvent_setPos(handle: not null QGraphicsSceneMouseEventH;pos:QpointFH);
 pragma Import(C,QGraphicsSceneMouseEvent_setPos, "QGraphicsSceneMouseEvent_setPos");
 
 function  QGraphicsSceneMouseEvent_scenePos(handle: not null QGraphicsSceneMouseEventH) return QPointFH;
 pragma Import(C,QGraphicsSceneMouseEvent_scenePos, "QGraphicsSceneMouseEvent_scenePos");
 
 procedure QGraphicsSceneMouseEvent_setScenePos(handle: not null QGraphicsSceneMouseEventH; pos:QpointFH);
 pragma Import(C,QGraphicsSceneMouseEvent_setScenePos, "QGraphicsSceneMouseEvent_setScenePos");
 
 function  QGraphicsSceneMouseEvent_screenPos(handle: not null QGraphicsSceneMouseEventH) return QPointH;
 pragma Import(C,QGraphicsSceneMouseEvent_screenPos, "QGraphicsSceneMouseEvent_screenPos");
 
 procedure QGraphicsSceneMouseEvent_setScreenPos(handle: not null QGraphicsSceneMouseEventH; pos:QpointH);
 pragma Import(C,QGraphicsSceneMouseEvent_setScreenPos, "QGraphicsSceneMouseEvent_setScreenPos");
 
 function  QGraphicsSceneMouseEvent_buttonDownPos(handle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return QPointFH;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownPos, "QGraphicsSceneMouseEvent_buttonDownPos");
 
 procedure QGraphicsSceneMouseEvent_setButtonDownPos(handle: not null QGraphicsSceneMouseEventH;button:QtMouseButton; pos:QpointFH);
 pragma Import(C,QGraphicsSceneMouseEvent_setButtonDownPos, "QGraphicsSceneMouseEvent_setButtonDownPos");
 
 function  QGraphicsSceneMouseEvent_buttonDownScenePos(handle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return QPointFH;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownScenePos, "QGraphicsSceneMouseEvent_buttonDownScenePos");
 
 procedure QGraphicsSceneMouseEvent_setButtonDownScenePos(handle: not null QGraphicsSceneMouseEventH;button:QtMouseButton; pos:QpointFH);
 pragma Import(C,QGraphicsSceneMouseEvent_setButtonDownScenePos, "QGraphicsSceneMouseEvent_setButtonDownScenePos");
 
 function  QGraphicsSceneMouseEvent_buttonDownScreenPos(handle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return QPointH;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownScreenPos, "QGraphicsSceneMouseEvent_buttonDownScreenPos");
 
 procedure QGraphicsSceneMouseEvent_setButtonDownScreenPos(handle: not null QGraphicsSceneMouseEventH;button:QtMouseButton; pos:QpointH);
 pragma Import(C,QGraphicsSceneMouseEvent_setButtonDownScreenPos, "QGraphicsSceneMouseEvent_setButtonDownScreenPos");
 
 function  QGraphicsSceneMouseEvent_lastPos(handle: not null QGraphicsSceneMouseEventH) return QPointFH;
 pragma Import(C,QGraphicsSceneMouseEvent_lastPos, "QGraphicsSceneMouseEvent_lastPos");
 
 procedure QGraphicsSceneMouseEvent_setLastPos(handle: not null QGraphicsSceneMouseEventH;pos:QpointFH);
 pragma Import(C,QGraphicsSceneMouseEvent_setLastPos, "QGraphicsSceneMouseEvent_setLastPos");
 
 function  QGraphicsSceneMouseEvent_lastScenePos(handle: not null QGraphicsSceneMouseEventH) return QPointFH;
 pragma Import(C,QGraphicsSceneMouseEvent_lastScenePos, "QGraphicsSceneMouseEvent_lastScenePos");
 
 procedure QGraphicsSceneMouseEvent_setLastScenePos(handle: not null QGraphicsSceneMouseEventH; pos:QpointFH);
 pragma Import(C,QGraphicsSceneMouseEvent_setLastScenePos, "QGraphicsSceneMouseEvent_setLastScenePos");
 
 function  QGraphicsSceneMouseEvent_lastScreenPos(handle: not null QGraphicsSceneMouseEventH) return QPointH;
 pragma Import(C,QGraphicsSceneMouseEvent_lastScreenPos, "QGraphicsSceneMouseEvent_lastScreenPos");
 
 procedure QGraphicsSceneMouseEvent_setLastScreenPos(handle: not null QGraphicsSceneMouseEventH; pos:QpointH);
 pragma Import(C,QGraphicsSceneMouseEvent_setLastScreenPos, "QGraphicsSceneMouseEvent_setLastScreenPos");
 
 function  QGraphicsSceneMouseEvent_buttons(handle: not null QGraphicsSceneMouseEventH) return integer;
 pragma Import(C,QGraphicsSceneMouseEvent_buttons, "QGraphicsSceneMouseEvent_buttons");
 
 procedure QGraphicsSceneMouseEvent_setButtons(handle: not null QGraphicsSceneMouseEventH; buttons:integer);
 pragma Import(C,QGraphicsSceneMouseEvent_setButtons, "QGraphicsSceneMouseEvent_setButtons");
 
 function  QGraphicsSceneMouseEvent_button(handle: not null QGraphicsSceneMouseEventH) return QtMouseButton;
 pragma Import(C,QGraphicsSceneMouseEvent_button, "QGraphicsSceneMouseEvent_button");
 
 procedure QGraphicsSceneMouseEvent_setButton(handle: not null QGraphicsSceneMouseEventH;button:QtMouseButton);
 pragma Import(C,QGraphicsSceneMouseEvent_setButton, "QGraphicsSceneMouseEvent_setButton");
 
 function  QGraphicsSceneMouseEvent_modifiers(handle: not null QGraphicsSceneMouseEventH) return integer;
 pragma Import(C,QGraphicsSceneMouseEvent_modifiers, "QGraphicsSceneMouseEvent_modifiers");
 
 procedure QGraphicsSceneMouseEvent_setModifiers(handle: not null QGraphicsSceneMouseEventH; modifiers:integer);
 pragma Import(C,QGraphicsSceneMouseEvent_setModifiers, "QGraphicsSceneMouseEvent_setModifiers");
 
 function  QGraphicsSceneMouseEvent_screenX(hendle: not null QGraphicsSceneEventH) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_screenX, "QGraphicsSceneMouseEvent_screenX");
 
 function  QGraphicsSceneMouseEvent_screenY(hendle: not null QGraphicsSceneEventH) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_screenY, "QGraphicsSceneMouseEvent_screenY");
 
 function  QGraphicsSceneMouseEvent_sceneX(hendle: not null QGraphicsSceneEventH) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_sceneX, "QGraphicsSceneMouseEvent_sceneX");
 
 function  QGraphicsSceneMouseEvent_sceneY(hendle: not null QGraphicsSceneEventH) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_sceneY, "QGraphicsSceneMouseEvent_sceneY");
 
 function  QGraphicsSceneMouseEvent_buttonDownX(hendle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownX, "QGraphicsSceneMouseEvent_buttonDownX");
 
 function  QGraphicsSceneMouseEvent_buttonDownY(hendle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownY, "QGraphicsSceneMouseEvent_buttonDownY");
 
 function  QGraphicsSceneMouseEvent_buttonDownScreenX(hendle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownScreenX, "QGraphicsSceneMouseEvent_buttonDownScreenX");
 
 function  QGraphicsSceneMouseEvent_buttonDownScreenY(hendle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownScreenY, "QGraphicsSceneMouseEvent_buttonDownScreenY");
 
 function  QGraphicsSceneMouseEvent_buttonDownSceneX(hendle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownSceneX, "QGraphicsSceneMouseEvent_buttonDownSceneX");
 
 function  QGraphicsSceneMouseEvent_buttonDownSceneY(hendle: not null QGraphicsSceneMouseEventH;button:QtMouseButton) return double;
 pragma Import(C,QGraphicsSceneMouseEvent_buttonDownSceneY, "QGraphicsSceneMouseEvent_buttonDownSceneY");

 procedure QGraphicsSceneMouseEvent_accept(handle:not null QGraphicsSceneMouseEventH);
 pragma Import(C,QGraphicsSceneMouseEvent_accept, "QGraphicsSceneMouseEvent_accept");
 
 function  QGraphicsScene_event(handle:not null QGraphicsSceneH;event:QEventH) return boolean;
 pragma Import(C,QGraphicsScene_event, "QGraphicsScene_event");
 
 function  QGraphicsScene_eventFilter(handle:not null QGraphicsSceneH;watched:QObjectH;event:QEventH) return boolean;
 pragma Import(C,QGraphicsScene_eventFilter, "QGraphicsScene_eventFilter");
 
 procedure QGraphicsScene_contextMenuEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneEventH);
 pragma Import(C,QGraphicsScene_contextMenuEvent, "QGraphicsScene_contextMenuEvent");
 
 procedure QGraphicsScene_dragEnterEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneEventH);
 pragma Import(C,QGraphicsScene_dragEnterEvent, "QGraphicsScene_dragEnterEvent");
 
 procedure QGraphicsScene_dragMoveEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneEventH);
 pragma Import(C,QGraphicsScene_dragMoveEvent, "QGraphicsScene_dragMoveEvent");
 
 procedure QGraphicsScene_dragLeaveEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneEventH);
 pragma Import(C,QGraphicsScene_dragLeaveEvent, "QGraphicsScene_dragLeaveEvent");
 
 procedure QGraphicsScene_dropEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneEventH);
 pragma Import(C,QGraphicsScene_dropEvent, "QGraphicsScene_dropEvent");
 
 procedure QGraphicsScene_focusInEvent(handle:not null QGraphicsSceneH;event:QFocusEventH);
 pragma Import(C,QGraphicsScene_focusInEvent, "QGraphicsScene_focusInEvent");
 
 procedure QGraphicsScene_focusOutEvent(handle:not null QGraphicsSceneH;event:QFocusEventH);
 pragma Import(C,QGraphicsScene_focusOutEvent, "QGraphicsScene_focusOutEvent");
 
 procedure QGraphicsScene_helpEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneEventH);
 pragma Import(C,QGraphicsScene_helpEvent, "QGraphicsScene_helpEvent");
 
 procedure QGraphicsScene_keyPressEvent(handle:not null QGraphicsSceneH;event:QKeyEventH);
 pragma Import(C,QGraphicsScene_keyPressEvent, "QGraphicsScene_keyPressEvent");
 
 procedure QGraphicsScene_keyReleaseEvent(handle:not null QGraphicsSceneH;event:QKeyEventH);
 pragma Import(C,QGraphicsScene_keyReleaseEvent, "QGraphicsScene_keyReleaseEvent");
 
 procedure QGraphicsScene_mousePressEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneMouseEventH);
 pragma Import(C,QGraphicsScene_mousePressEvent, "QGraphicsScene_mousePressEvent");
 
 procedure QGraphicsScene_mouseMoveEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneMouseEventH);
 pragma Import(C,QGraphicsScene_mouseMoveEvent, "QGraphicsScene_mouseMoveEvent");
 
 procedure QGraphicsScene_mouseReleaseEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneMouseEventH);
 pragma Import(C,QGraphicsScene_mouseReleaseEvent, "QGraphicsScene_mouseReleaseEvent");
 
 procedure QGraphicsScene_mouseDoubleClickEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneMouseEventH);
 pragma Import(C,QGraphicsScene_mouseDoubleClickEvent, "QGraphicsScene_mouseDoubleClickEvent");
 
 procedure QGraphicsScene_wheelEvent(handle:not null QGraphicsSceneH;event:QGraphicsSceneMouseEventH);
 pragma Import(C,QGraphicsScene_wheelEvent, "QGraphicsScene_wheelEvent");
 
 procedure QGraphicsScene_inputMethodEvent(handle:not null QGraphicsSceneH;event:QInputMethodEventH);
 pragma Import(C,QGraphicsScene_inputMethodEvent, "QGraphicsScene_inputMethodEvent");
 
 procedure QGraphicsScene_drawBackground(handle:not null QGraphicsSceneH;painter:QPainterH;rect:QRectFH);
 pragma Import(C,QGraphicsScene_drawBackground, "QGraphicsScene_drawBackground");
 
 procedure QGraphicsScene_drawForeground(handle:not null QGraphicsSceneH;painter:QPainterH;rect:QRectFH);   
 pragma Import(C,QGraphicsScene_drawForeground, "QGraphicsScene_drawForeground");
 
 function  QGraphicsScene_focusNextPrevChild(handle:not null QGraphicsSceneH;next:boolean) return boolean;
 pragma Import(C,QGraphicsScene_focusNextPrevChild, "QGraphicsScene_focusNextPrevChild");
 
 function  QGraphicsScene_itemsCount(handle:not null QGraphicsSceneH) return integer;
 pragma Import(C,QGraphicsScene_itemsCount, "QGraphicsScene_itemsCount");
 
---------------------------------------------------------------------------------------------------------------
 function QGraphicsScene_create(sceneRect : QRectFH; parent: QObjectH := null) return QGraphicsSceneH;
 function QGraphicsScene_create(top : qreal := 0.0; left: qreal := 0.0; width: qreal; height : qreal; parent: QObjectH := null) return QGraphicsSceneH;
 procedure QGraphicsScene_setSceneRect(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal);
 procedure QGraphicsScene_setSelectionArea(handle: not null  QGraphicsSceneH; path: QPainterPathH; ISM : QtItemSelectionMode);
 function QGraphicsScene_addEllipse(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal; pen: QPenH; brush: QBrushH) return QGraphicsEllipseItemH;
 function QGraphicsScene_addLine(handle: not null  QGraphicsSceneH; x1: qreal; y1: qreal; x2: qreal; y2: qreal; pen: QPenH) return QGraphicsLineItemH;
 function QGraphicsScene_addRect(handle: not null  QGraphicsSceneH; x: qreal; y: qreal; w: qreal; h: qreal; pen: QPenH; brush: QBrushH) return QGraphicsRectItemH;
 procedure QGraphicsScene_update(handle: not null  QGraphicsSceneH; rect: QRectFH);
 procedure QGraphicsScene_invalidate(handle: not null  QGraphicsSceneH; rect: QRectFH; layers: quint);
 procedure QGraphicsScene_invalidate(handle: not null  QGraphicsSceneH);

 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; pos: QPointFH) return QObjectListH;
 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; rect: QRectFH; mode:QtItemSelectionMode) return QObjectListH;
 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; polygon: QPolygonFH; mode:QtItemSelectionMode) return QObjectListH;
 function  QGraphicsScene_items(handle: not null QGraphicsSceneH; path: QPainterPathH; mode:QtItemSelectionMode) return QObjectListH;
 function QGraphicsScene_addText(handle: not null  QGraphicsSceneH; text: QStringH) return QGraphicsTextItemH;
 function QGraphicsScene_addSimpleText(handle: not null  QGraphicsSceneH; text: QStringH) return QGraphicsSimpleTextItemH;
 procedure QGraphicsScene_addVideoItem(handle: not null QGraphicsSceneH; videoItem: not null QGraphicsVideoItemH);
 function  QGraphicsScene_itemAt(handle:not null QGraphicsSceneH; index: integer) return QGraphicsItemH ;
 function QGraphicsScene_itemAt(handle: not null  QGraphicsSceneH; x,y: double;deviceTransform:QTransformH) return QGraphicsItemH;
 procedure QGraphicsScene_addItem(handle: not null  QGraphicsSceneH; item: QGraphicsWidgetH);
 procedure QGraphicsScene_addItem(handle:not null QGraphicsSceneH; item:QGraphicsProxyWidgetH);
 function QGraphicsScene_itemAt(handle: not null  QGraphicsSceneH; pos: QPointFH) return QGraphicsItemH;
end Qt.QGraphicsScene;
