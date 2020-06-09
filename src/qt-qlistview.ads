--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractItemView; use Qt.QAbstractItemView;
package Qt.QListView            is

type QListViewMovement is (QListViewStatic, QListViewFree, QListViewSnap );
type QListViewFlow is (QListViewLeftToRight, QListViewTopToBottom );
type QListViewResizeMode is (QListViewFixed, QListViewAdjust );
type QListViewLayoutMode is (QListViewSinglePass, QListViewBatched );
type QListViewViewMode is (QListViewListMode, QListViewIconMode );

function QListView_create(parent: QWidgetH := null) return QListViewH;   
pragma Import(C,QListView_create,"QListView_create");

procedure QListView_destroy(handle: not null  QListViewH);   
pragma Import(C,QListView_destroy,"QListView_destroy");

procedure QListView_setMovement(handle: not null  QListViewH; movement: QListViewMovement);   
pragma Import(C,QListView_setMovement,"QListView_setMovement");

procedure QListView_setModel(handle: not null  QListViewH; model: QAbstractItemModelH);
pragma Import(C,QListView_setModel,"QListView_setModel");

procedure  QListView_setSelectionModel(handle: not null  QListViewH; selectionModel: QItemSelectionModelH);
pragma Import(C,QListView_setSelectionModel,"QListView_setSelectionModel");

function QListView_movement(handle: not null  QListViewH) return  QListViewMovement;   
pragma Import(C,QListView_movement,"QListView_movement");

procedure QListView_setFlow(handle: not null  QListViewH; flow: QListViewFlow);   
pragma Import(C,QListView_setFlow,"QListView_setFlow");

function QListView_flow(handle: not null  QListViewH) return  QListViewFlow;   
pragma Import(C,QListView_flow,"QListView_flow");

procedure QListView_setWrapping(handle: not null  QListViewH; enable: Boolean);   
pragma Import(C,QListView_setWrapping,"QListView_setWrapping");

function QListView_isWrapping(handle: not null  QListViewH) return  Boolean;   
pragma Import(C,QListView_isWrapping,"QListView_isWrapping");

procedure QListView_setResizeMode(handle: not null  QListViewH; mode: QListViewResizeMode);   
pragma Import(C,QListView_setResizeMode,"QListView_setResizeMode");

function QListView_resizeMode(handle: not null  QListViewH) return  QListViewResizeMode;   
pragma Import(C,QListView_resizeMode,"QListView_resizeMode");

procedure QListView_setLayoutMode(handle: not null  QListViewH; mode: QListViewLayoutMode);   
pragma Import(C,QListView_setLayoutMode,"QListView_setLayoutMode");

function QListView_layoutMode(handle: not null  QListViewH) return  QListViewLayoutMode;   
pragma Import(C,QListView_layoutMode,"QListView_layoutMode");

procedure QListView_setSpacing(handle: not null  QListViewH; space: Integer);   
pragma Import(C,QListView_setSpacing,"QListView_setSpacing");

function QListView_spacing(handle: not null  QListViewH) return  Integer;   
pragma Import(C,QListView_spacing,"QListView_spacing");

procedure QListView_setBatchSize(handle: not null  QListViewH; batchSize: Integer);   
pragma Import(C,QListView_setBatchSize,"QListView_setBatchSize");

function QListView_batchSize(handle: not null  QListViewH) return  Integer;   
pragma Import(C,QListView_batchSize,"QListView_batchSize");

procedure QListView_setGridSize(handle: not null  QListViewH; size: QSizeH);   
pragma Import(C,QListView_setGridSize,"QListView_setGridSize");

function  QListView_gridSize(handle: not null  QListViewH) return QSizeH;
pragma Import(C,QListView_gridSize,"QListView_gridSize");

procedure QListView_setViewMode(handle: not null  QListViewH; mode: QListViewViewMode);   
pragma Import(C,QListView_setViewMode,"QListView_setViewMode");

function QListView_viewMode(handle: not null  QListViewH) return  QListViewViewMode;   
pragma Import(C,QListView_viewMode,"QListView_viewMode");

procedure QListView_clearPropertyFlags(handle: not null  QListViewH);   
pragma Import(C,QListView_clearPropertyFlags,"QListView_clearPropertyFlags");

function QListView_isRowHidden(handle: not null  QListViewH; row: Integer) return  Boolean;   
pragma Import(C,QListView_isRowHidden,"QListView_isRowHidden");

procedure QListView_setRowHidden(handle: not null  QListViewH; row: Integer; hide: Boolean);   
pragma Import(C,QListView_setRowHidden,"QListView_setRowHidden");

procedure QListView_setModelColumn(handle: not null  QListViewH; column: Integer);   
pragma Import(C,QListView_setModelColumn,"QListView_setModelColumn");

function QListView_modelColumn(handle: not null  QListViewH) return  Integer;   
pragma Import(C,QListView_modelColumn,"QListView_modelColumn");

procedure QListView_setUniformItemSizes(handle: not null  QListViewH; enable: Boolean);   
pragma Import(C,QListView_setUniformItemSizes,"QListView_setUniformItemSizes");

function QListView_uniformItemSizes(handle: not null  QListViewH) return  Boolean;   
pragma Import(C,QListView_uniformItemSizes,"QListView_uniformItemSizes");

procedure QListView_setWordWrap(handle: not null  QListViewH; on: Boolean);   
pragma Import(C,QListView_setWordWrap,"QListView_setWordWrap");

function QListView_wordWrap(handle: not null  QListViewH) return  Boolean;   
pragma Import(C,QListView_wordWrap,"QListView_wordWrap");

procedure QListView_setSelectionRectVisible(handle: not null  QListViewH; show: Boolean);   
pragma Import(C,QListView_setSelectionRectVisible,"QListView_setSelectionRectVisible");

function QListView_isSelectionRectVisible(handle: not null  QListViewH) return  Boolean;   
pragma Import(C,QListView_isSelectionRectVisible,"QListView_isSelectionRectVisible");

function  QListView_visualRect(handle: not null  QListViewH; index: QModelIndexH) return QRectH;
pragma Import(C,QListView_visualRect,"QListView_visualRect");

procedure QListView_scrollTo(handle: not null  QListViewH; index: QModelIndexH; hint: QAbstractItemViewScrollHint);   
pragma Import(C,QListView_scrollTo,"QListView_scrollTo");

function  QListView_indexAt(handle: not null  QListViewH; p: QPointH) return QModelIndexH;
pragma Import(C,QListView_indexAt,"QListView_indexAt");

procedure QListView_doItemsLayout(handle: not null  QListViewH);   
pragma Import(C,QListView_doItemsLayout,"QListView_doItemsLayout");

procedure QListView_reset(handle: not null  QListViewH);   
pragma Import(C,QListView_reset,"QListView_reset");

procedure QListView_setRootIndex(handle: not null  QListViewH; index: QModelIndexH);   
pragma Import(C,QListView_setRootIndex,"QListView_setRootIndex");

 function  QListView_event(handle: not null QListViewH;e:QEventH) return boolean;
 pragma Import(C,QListView_event, "QListView_event");
 
 procedure QListView_scrollContentsBy(handle: not null QListViewH;dx, dy:integer);
 pragma Import(C,QListView_scrollContentsBy, "QListView_scrollContentsBy");
 
 procedure QListView_resizeContents(handle: not null QListViewH;width, height:integer);
 pragma Import(C,QListView_resizeContents, "QListView_resizeContents");
 
 function  QListView_contentsSize(handle: not null QListViewH) return QSizeH;
 pragma Import(C,QListView_contentsSize, "QListView_contentsSize");
 
 procedure QListView_dataChanged(handle: not null QListViewH; topLeft,bottomRight: QModelIndexH);
 pragma Import(C,QListView_dataChanged, "QListView_dataChanged");
 
 procedure QListView_rowsInserted(handle: not null QListViewH; parent:QModelIndexH;startIndex, endIndex:integer);
 pragma Import(C,QListView_rowsInserted, "QListView_rowsInserted");
 
 procedure QListView_rowsAboutToBeRemoved(handle: not null QListViewH; parent:QModelIndexH;startIndex, endIndex:integer);    
 pragma Import(C,QListView_rowsAboutToBeRemoved, "QListView_rowsAboutToBeRemoved");
 
 procedure QListView_mouseMoveEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_mouseMoveEvent, "QListView_mouseMoveEvent");
 
 procedure QListView_mouseReleaseEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_mouseReleaseEvent, "QListView_mouseReleaseEvent");
 
 procedure QListView_timerEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_timerEvent, "QListView_timerEvent");
 
 procedure QListView_resizeEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_resizeEvent, "QListView_resizeEvent");
 
 procedure QListView_dragMoveEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_dragMoveEvent, "QListView_dragMoveEvent");
 
 procedure QListView_dragLeaveEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_dragLeaveEvent, "QListView_dragLeaveEvent");
 
 procedure QListView_dropEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_dropEvent, "QListView_dropEvent");
 
 procedure QListView_startDrag(handle: not null QListViewH;supportedActions:QtDropActions );
 pragma Import(C,QListView_startDrag, "QListView_startDrag");
 
 function  QListView_viewOptions(handle: not null QListViewH) return QStyleOptionViewItemH;
 pragma Import(C,QListView_viewOptions, "QListView_viewOptions");
 
 procedure QListView_paintEvent(handle: not null QListViewH;e:QEventH);
 pragma Import(C,QListView_paintEvent, "QListView_paintEvent");
 
 function  QListView_horizontalOffset(handle: not null QListViewH) return integer;
 pragma Import(C,QListView_horizontalOffset, "QListView_horizontalOffset");
 
 function  QListView_verticalOffset(handle: not null QListViewH) return integer;
 pragma Import(C,QListView_verticalOffset, "QListView_verticalOffset");
 
 function  QListView_moveCursor(handle: not null QListViewH;cursorAction:QAbstractItemViewCursorAction;modifiers: QtKeyboardModifiers ) return QModelIndexH;
 pragma Import(C,QListView_moveCursor, "QListView_moveCursor");
 
 function  QListView_rectForIndex(handle: not null QListViewH;index: QModelIndexH) return QRectH;
 pragma Import(C,QListView_rectForIndex, "QListView_rectForIndex");
 
 procedure QListView_setPositionForIndex(handle: not null QListViewH;position: QPointH;index: QModelIndexH);
 pragma Import(C,QListView_setPositionForIndex, "QListView_setPositionForIndex");
 
 procedure QListView_setSelection(handle: not null QListViewH; rect:QRectH;command: SelectionFlags);
 pragma Import(C,QListView_setSelection, "QListView_setSelection");
 
 function  QListView_visualRegionForSelection(handle: not null QListViewH; selection:QItemSelectionH) return QRegionH;
 pragma Import(C,QListView_visualRegionForSelection, "QListView_visualRegionForSelection");
 
 function  QListView_selectedIndexes(handle: not null QListViewH) return QModelIndexListH;
 pragma Import(C,QListView_selectedIndexes, "QListView_selectedIndexes");
 
 procedure QListView_updateGeometries(handle: not null QListViewH);
 pragma Import(C,QListView_updateGeometries, "QListView_updateGeometries");
 
 function  QListView_isIndexHidden(handle: not null QListViewH; index:QModelIndexH) return boolean;
 pragma Import(C,QListView_isIndexHidden, "QListView_isIndexHidden");
 
 procedure QListView_selectionChanged(handle: not null QListViewH; selected,deselected:QItemSelectionH);
 pragma Import(C,QListView_selectionChanged, "QListView_selectionChanged");
 
 procedure QListView_currentChanged(handle: not null QListViewH; current,previous: QModelIndexH);
 pragma Import(C,QListView_currentChanged, "QListView_currentChanged");
 
 function  QListView_viewportSizeHint(handle: not null QListViewH) return QSizeH;
 pragma Import(C,QListView_viewportSizeHint, "QListView_viewportSizeHint");
 
end Qt.QListView;
