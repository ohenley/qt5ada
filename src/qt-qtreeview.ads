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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *
with Qt.QAbstractItemView; use Qt.QAbstractItemView;
package Qt.QTreeView            is

function QTreeView_create(parent: QWidgetH := null) return QTreeViewH;   
pragma Import(C,QTreeView_create,"QTreeView_create");

procedure QTreeView_destroy(handle: not null  QTreeViewH);   
pragma Import(C,QTreeView_destroy,"QTreeView_destroy");

procedure QTreeView_setModel(handle: not null  QTreeViewH; model: QAbstractItemModelH);   
pragma Import(C,QTreeView_setModel,"QTreeView_setModel");

procedure QTreeView_setRootIndex(handle: not null  QTreeViewH; index: QModelIndexH);   
pragma Import(C,QTreeView_setRootIndex,"QTreeView_setRootIndex");

procedure QTreeView_setSelectionModel(handle: not null  QTreeViewH; selectionModel: QItemSelectionModelH);   
pragma Import(C,QTreeView_setSelectionModel,"QTreeView_setSelectionModel");

function QTreeView_header(handle: not null  QTreeViewH) return  QHeaderViewH;   
pragma Import(C,QTreeView_header,"QTreeView_header");

procedure QTreeView_setHeader(handle: not null  QTreeViewH; header: QHeaderViewH);   
pragma Import(C,QTreeView_setHeader,"QTreeView_setHeader");

function QTreeView_autoExpandDelay(handle: not null  QTreeViewH) return  Integer;   
pragma Import(C,QTreeView_autoExpandDelay,"QTreeView_autoExpandDelay");

procedure QTreeView_setAutoExpandDelay(handle: not null  QTreeViewH; delays: Integer);
pragma Import(C,QTreeView_setAutoExpandDelay,"QTreeView_setAutoExpandDelay");

function QTreeView_indentation(handle: not null  QTreeViewH) return  Integer;   
pragma Import(C,QTreeView_indentation,"QTreeView_indentation");

procedure QTreeView_setIndentation(handle: not null  QTreeViewH; i: Integer);   
pragma Import(C,QTreeView_setIndentation,"QTreeView_setIndentation");

function QTreeView_rootIsDecorated(handle: not null  QTreeViewH) return  Boolean;   
pragma Import(C,QTreeView_rootIsDecorated,"QTreeView_rootIsDecorated");

procedure QTreeView_setRootIsDecorated(handle: not null  QTreeViewH; show: Boolean);   
pragma Import(C,QTreeView_setRootIsDecorated,"QTreeView_setRootIsDecorated");

function QTreeView_uniformRowHeights(handle: not null  QTreeViewH) return  Boolean;   
pragma Import(C,QTreeView_uniformRowHeights,"QTreeView_uniformRowHeights");

procedure QTreeView_setUniformRowHeights(handle: not null  QTreeViewH; uniform: Boolean);   
pragma Import(C,QTreeView_setUniformRowHeights,"QTreeView_setUniformRowHeights");

function QTreeView_itemsExpandable(handle: not null  QTreeViewH) return  Boolean;   
pragma Import(C,QTreeView_itemsExpandable,"QTreeView_itemsExpandable");

procedure QTreeView_setItemsExpandable(handle: not null  QTreeViewH; enable: Boolean);   
pragma Import(C,QTreeView_setItemsExpandable,"QTreeView_setItemsExpandable");

function QTreeView_columnViewportPosition(handle: not null  QTreeViewH; column: Integer) return  Integer;   
pragma Import(C,QTreeView_columnViewportPosition,"QTreeView_columnViewportPosition");

function QTreeView_columnWidth(handle: not null  QTreeViewH; column: Integer) return  Integer;   
pragma Import(C,QTreeView_columnWidth,"QTreeView_columnWidth");

procedure QTreeView_setColumnWidth(handle: not null  QTreeViewH; column: Integer; width: Integer);   
pragma Import(C,QTreeView_setColumnWidth,"QTreeView_setColumnWidth");

function QTreeView_columnAt(handle: not null  QTreeViewH; x: Integer) return  Integer;   
pragma Import(C,QTreeView_columnAt,"QTreeView_columnAt");

function QTreeView_isColumnHidden(handle: not null  QTreeViewH; column: Integer) return  Boolean;   
pragma Import(C,QTreeView_isColumnHidden,"QTreeView_isColumnHidden");

procedure QTreeView_setColumnHidden(handle: not null  QTreeViewH; column: Integer; hide: Boolean);   
pragma Import(C,QTreeView_setColumnHidden,"QTreeView_setColumnHidden");

function QTreeView_isRowHidden(handle: not null  QTreeViewH; row: Integer; parent: QModelIndexH) return  Boolean;   
pragma Import(C,QTreeView_isRowHidden,"QTreeView_isRowHidden");

procedure QTreeView_setRowHidden(handle: not null  QTreeViewH; row: Integer; parent: QModelIndexH; hide: Boolean);   
pragma Import(C,QTreeView_setRowHidden,"QTreeView_setRowHidden");

function QTreeView_isFirstColumnSpanned(handle: not null  QTreeViewH; row: Integer; parent: QModelIndexH) return  Boolean;   
pragma Import(C,QTreeView_isFirstColumnSpanned,"QTreeView_isFirstColumnSpanned");

procedure QTreeView_setFirstColumnSpanned(handle: not null  QTreeViewH; row: Integer; parent: QModelIndexH; span: Boolean);   
pragma Import(C,QTreeView_setFirstColumnSpanned,"QTreeView_setFirstColumnSpanned");

function QTreeView_isExpanded(handle: not null  QTreeViewH; index: QModelIndexH) return  Boolean;   
pragma Import(C,QTreeView_isExpanded,"QTreeView_isExpanded");

procedure QTreeView_setExpanded(handle: not null  QTreeViewH; index: QModelIndexH; expand: Boolean);   
pragma Import(C,QTreeView_setExpanded,"QTreeView_setExpanded");

procedure QTreeView_setSortingEnabled(handle: not null  QTreeViewH; enable: Boolean);   
pragma Import(C,QTreeView_setSortingEnabled,"QTreeView_setSortingEnabled");

function QTreeView_isSortingEnabled(handle: not null  QTreeViewH) return  Boolean;   
pragma Import(C,QTreeView_isSortingEnabled,"QTreeView_isSortingEnabled");

procedure QTreeView_setAnimated(handle: not null  QTreeViewH; enable: Boolean);   
pragma Import(C,QTreeView_setAnimated,"QTreeView_setAnimated");

function QTreeView_isAnimated(handle: not null  QTreeViewH) return  Boolean;   
pragma Import(C,QTreeView_isAnimated,"QTreeView_isAnimated");

procedure QTreeView_setAllColumnsShowFocus(handle: not null  QTreeViewH; enable: Boolean);   
pragma Import(C,QTreeView_setAllColumnsShowFocus,"QTreeView_setAllColumnsShowFocus");

function QTreeView_allColumnsShowFocus(handle: not null  QTreeViewH) return  Boolean;   
pragma Import(C,QTreeView_allColumnsShowFocus,"QTreeView_allColumnsShowFocus");

procedure QTreeView_setWordWrap(handle: not null  QTreeViewH; on: Boolean);   
pragma Import(C,QTreeView_setWordWrap,"QTreeView_setWordWrap");

function QTreeView_wordWrap(handle: not null  QTreeViewH) return  Boolean;   
pragma Import(C,QTreeView_wordWrap,"QTreeView_wordWrap");

procedure QTreeView_keyboardSearch(handle: not null  QTreeViewH; search: QStringH);   
pragma Import(C,QTreeView_keyboardSearch,"QTreeView_keyboardSearch");

function  QTreeView_visualRect(handle: not null  QTreeViewH; index: QModelIndexH) return QRectH;
pragma Import(C,QTreeView_visualRect,"QTreeView_visualRect");

procedure QTreeView_scrollTo(handle: not null  QTreeViewH; index: QModelIndexH; hint: QAbstractItemViewScrollHint);   
pragma Import(C,QTreeView_scrollTo,"QTreeView_scrollTo");

function  QTreeView_indexAt(handle: not null  QTreeViewH; p: QPointH) return QModelIndexH;
pragma Import(C,QTreeView_indexAt,"QTreeView_indexAt");

function  QTreeView_indexAbove(handle: not null  QTreeViewH; index: QModelIndexH) return QModelIndexH;
pragma Import(C,QTreeView_indexAbove,"QTreeView_indexAbove");

function  QTreeView_indexBelow(handle: not null  QTreeViewH; index: QModelIndexH) return  QModelIndexH;
pragma Import(C,QTreeView_indexBelow,"QTreeView_indexBelow");

procedure QTreeView_doItemsLayout(handle: not null  QTreeViewH);   
pragma Import(C,QTreeView_doItemsLayout,"QTreeView_doItemsLayout");

procedure QTreeView_reset(handle: not null  QTreeViewH);   
pragma Import(C,QTreeView_reset,"QTreeView_reset");

procedure QTreeView_sortByColumn(handle: not null  QTreeViewH; column: Integer; order: QtSortOrder);    
pragma Import(C,QTreeView_sortByColumn,"QTreeView_sortByColumn");

procedure QTreeView_dataChanged(handle: not null  QTreeViewH; topLeft: QModelIndexH; bottomRight: QModelIndexH);   
pragma Import(C,QTreeView_dataChanged,"QTreeView_dataChanged");

procedure QTreeView_hideColumn(handle: not null  QTreeViewH; column: Integer);   
pragma Import(C,QTreeView_hideColumn,"QTreeView_hideColumn");

procedure QTreeView_showColumn(handle: not null  QTreeViewH; column: Integer);   
pragma Import(C,QTreeView_showColumn,"QTreeView_showColumn");

procedure QTreeView_expand(handle: not null  QTreeViewH; index: QModelIndexH);   
pragma Import(C,QTreeView_expand,"QTreeView_expand");

procedure QTreeView_collapse(handle: not null  QTreeViewH; index: QModelIndexH);   
pragma Import(C,QTreeView_collapse,"QTreeView_collapse");

procedure QTreeView_resizeColumnToContents(handle: not null  QTreeViewH; column: Integer);   
pragma Import(C,QTreeView_resizeColumnToContents,"QTreeView_resizeColumnToContents");

procedure QTreeView_sortByColumn2(handle: not null  QTreeViewH; column: Integer);
pragma Import(C,QTreeView_sortByColumn2,"QTreeView_sortByColumn2");

procedure QTreeView_selectAll(handle: not null  QTreeViewH);   
pragma Import(C,QTreeView_selectAll,"QTreeView_selectAll");

procedure QTreeView_expandAll(handle: not null  QTreeViewH);   
pragma Import(C,QTreeView_expandAll,"QTreeView_expandAll");

procedure QTreeView_collapseAll(handle: not null  QTreeViewH);   
pragma Import(C,QTreeView_collapseAll,"QTreeView_collapseAll");

procedure QTreeView_expandToDepth(handle: not null  QTreeViewH; depth: Integer);   
pragma Import(C,QTreeView_expandToDepth,"QTreeView_expandToDepth");

type QTreeView_expandedEvent is access procedure (index: QModelIndexH);
pragma Convention(C, QTreeView_expandedEvent);

type QTreeView_collapsedEvent is access procedure (index: QModelIndexH);
pragma Convention(C, QTreeView_collapsedEvent);
 
 procedure QTreeView_signal_slot_expanded(handle: not null QTreeViewH; hook:QTreeView_expandedEvent);
 pragma Import(C,QTreeView_signal_slot_expanded, "QTreeView_signal_slot_expanded");
 
 procedure QTreeView_signal_slot_collapsed(handle: not null QTreeViewH; hook:QTreeView_collapsedEvent);
 pragma Import(C,QTreeView_signal_slot_collapsed, "QTreeView_signal_slot_collapsed");

 procedure QTreeView_columnResized(handle:not null QTreeViewH;column,oldSize, newSize:integer);
 pragma Import(C,QTreeView_columnResized, "QTreeView_columnResized");
 
 procedure QTreeView_columnCountChanged(handle:not null QTreeViewH;oldCount,newCount:integer);
 pragma Import(C,QTreeView_columnCountChanged, "QTreeView_columnCountChanged");
 
 procedure QTreeView_columnMoved(handle:not null QTreeViewH);
 pragma Import(C,QTreeView_columnMoved, "QTreeView_columnMoved");
 
 procedure QTreeView_reexpand(handle:not null QTreeViewH);
 pragma Import(C,QTreeView_reexpand, "QTreeView_reexpand");
 
 procedure QTreeView_rowsRemoved(handle:not null QTreeViewH; parent:QModelIndexH; first, last:integer);
 pragma Import(C,QTreeView_rowsRemoved, "QTreeView_rowsRemoved");
 
 procedure QTreeView_scrollContentsBy(handle:not null QTreeViewH; dx, dy:integer);
 pragma Import(C,QTreeView_scrollContentsBy, "QTreeView_scrollContentsBy");
 
 procedure QTreeView_rowsInserted(handle:not null QTreeViewH; parent:QModelIndexH; startIndex, endIndex:integer);
 pragma Import(C,QTreeView_rowsInserted, "QTreeView_rowsInserted");
 
 procedure QTreeView_rowsAboutToBeRemoved(handle:not null QTreeViewH; parent:QModelIndexH; startIndex, endIndex:integer);
 pragma Import(C,QTreeView_rowsAboutToBeRemoved, "QTreeView_rowsAboutToBeRemoved");
 
 function  QTreeView_moveCursor(handle:not null QTreeViewH; cursorAction:QAbstractItemViewCursorAction;modifiers:QtKeyboardModifiers) return QModelIndexH;
 pragma Import(C,QTreeView_moveCursor, "QTreeView_moveCursor");
 
 function  QTreeView_horizontalOffset(handle:not null QTreeViewH) return integer;
 pragma Import(C,QTreeView_horizontalOffset, "QTreeView_horizontalOffset");
 
 function  QTreeView_verticalOffset(handle:not null QTreeViewH) return integer;
 pragma Import(C,QTreeView_verticalOffset, "QTreeView_verticalOffset");
 
 procedure QTreeView_setSelection(handle:not null QTreeViewH; rect:QRectH;command:SelectionFlags);
 pragma Import(C,QTreeView_setSelection, "QTreeView_setSelection");
 
 function  QTreeView_visualRegionForSelection(handle:not null QTreeViewH;  selection:QItemSelectionH) return QRegionH;
 pragma Import(C,QTreeView_visualRegionForSelection, "QTreeView_visualRegionForSelection");
 
 function  QTreeView_selectedIndexes(handle:not null QTreeViewH) return QModelIndexListH;
 pragma Import(C,QTreeView_selectedIndexes, "QTreeView_selectedIndexes");
 
 procedure QTreeView_timerEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_timerEvent, "QTreeView_timerEvent");
 
 procedure QTreeView_paintEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_paintEvent, "QTreeView_paintEvent");
 
 procedure QTreeView_drawTree(handle:not null QTreeViewH;painter:QPainterH; region:QRegionH);
 pragma Import(C,QTreeView_drawTree, "QTreeView_drawTree");
 
 procedure QTreeView_drawRow(handle:not null QTreeViewH;painter:QPainterH; options:QStyleOptionViewItemH; index:QModelIndexH);
 pragma Import(C,QTreeView_drawRow, "QTreeView_drawRow");
 
 procedure QTreeView_drawBranches(handle:not null QTreeViewH;painter:QPainterH;rect: QRectH; index:QModelIndexH);
 pragma Import(C,QTreeView_drawBranches, "QTreeView_drawBranches");
 
 procedure QTreeView_mousePressEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_mousePressEvent, "QTreeView_mousePressEvent");
 
 procedure QTreeView_mouseReleaseEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_mouseReleaseEvent, "QTreeView_mouseReleaseEvent");
 
 procedure QTreeView_mouseDoubleClickEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_mouseDoubleClickEvent, "QTreeView_mouseDoubleClickEvent");
 
 procedure QTreeView_mouseMoveEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_mouseMoveEvent, "QTreeView_mouseMoveEvent");
 
 procedure QTreeView_keyPressEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_keyPressEvent, "QTreeView_keyPressEvent");
 
 procedure QTreeView_dragMoveEvent(handle:not null QTreeViewH;e:QEventH);
 pragma Import(C,QTreeView_dragMoveEvent, "QTreeView_dragMoveEvent");
 
 function  QTreeView_viewportEvent(handle:not null QTreeViewH;e:QEventH) return boolean;
 pragma Import(C,QTreeView_viewportEvent, "QTreeView_viewportEvent");
 
 procedure QTreeView_updateGeometries(handle:not null QTreeViewH);
 pragma Import(C,QTreeView_updateGeometries, "QTreeView_updateGeometries");
 
 function  QTreeView_viewportSizeHint(handle:not null QTreeViewH) return QSizeH;
 pragma Import(C,QTreeView_viewportSizeHint, "QTreeView_viewportSizeHint");
 
 function  QTreeView_sizeHintForColumn(handle:not null QTreeViewH; column:integer) return integer;
 pragma Import(C,QTreeView_sizeHintForColumn, "QTreeView_sizeHintForColumn");
 
 function  QTreeView_indexRowSizeHint(handle:not null QTreeViewH; index:QModelIndexH) return integer;
 pragma Import(C,QTreeView_indexRowSizeHint, "QTreeView_indexRowSizeHint");
 
 function  QTreeView_rowHeight(handle:not null QTreeViewH; index:QModelIndexH) return integer;
 pragma Import(C,QTreeView_rowHeight, "QTreeView_rowHeight");
 
 procedure QTreeView_horizontalScrollbarAction(handle:not null QTreeViewH; action:integer);
 pragma Import(C,QTreeView_horizontalScrollbarAction, "QTreeView_horizontalScrollbarAction");
 
 function  QTreeView_isIndexHidden(handle:not null QTreeViewH; index:QModelIndexH) return boolean;
 pragma Import(C,QTreeView_isIndexHidden, "QTreeView_isIndexHidden");
 
 procedure QTreeView_selectionChanged(handle:not null QTreeViewH; selected, deselected: QItemSelectionH);
 pragma Import(C,QTreeView_selectionChanged, "QTreeView_selectionChanged");
 
 procedure QTreeView_currentChanged(handle:not null QTreeViewH; current,previous:QModelIndexH);
 pragma Import(C,QTreeView_currentChanged, "QTreeView_currentChanged");
 
 function  QTreeView_viewOptions(handle:not null QTreeViewH) return QStyleOptionViewItemH;
 pragma Import(C,QTreeView_viewOptions, "QTreeView_viewOptions");
 
  procedure QTreeView_resetIndentation(handle:not null QTreeViewH);
 pragma Import(C,QTreeView_resetIndentation, "QTreeView_resetIndentation");
 
 function  QTreeView_expandsOnDoubleClick(handle:not null QTreeViewH) return boolean;
 pragma Import(C,QTreeView_expandsOnDoubleClick, "QTreeView_expandsOnDoubleClick");
 
 procedure QTreeView_setExpandsOnDoubleClick(handle:not null QTreeViewH;enable:boolean);
 pragma Import(C,QTreeView_setExpandsOnDoubleClick, "QTreeView_setExpandsOnDoubleClick");
 
 procedure QTreeView_setTreePosition(handle:not null QTreeViewH;logicalIndex:integer);
 pragma Import(C,QTreeView_setTreePosition, "QTreeView_setTreePosition");
 
 function  QTreeView_treePosition(handle:not null QTreeViewH) return integer;
 pragma Import(C,QTreeView_treePosition, "QTreeView_treePosition");
 
 function  QTreeView_isHeaderHidden(handle:not null QTreeViewH) return boolean;
 pragma Import(C,QTreeView_isHeaderHidden, "QTreeView_isHeaderHidden");
 
 procedure QTreeView_setHeaderHidden(handle:not null QTreeViewH;hide:boolean);
 pragma Import(C,QTreeView_setHeaderHidden, "QTreeView_setHeaderHidden");
 
----------------------------------------------------------------------------------------------------------------
procedure QTreeView_sortByColumn(handle: not null  QTreeViewH; column: Integer);

end Qt.QTreeView;
