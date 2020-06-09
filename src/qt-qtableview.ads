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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QAbstractItemView; use Qt.QAbstractItemView;
package Qt.QTableView is

 function  QTableView_create(parent:QWidgetH := null) return QTableViewH;
 pragma Import(c,QTableView_create, "QTableView_create");

 procedure QTableView_destroy(handle: not null  QTableViewH);
 pragma Import(c,QTableView_destroy, "QTableView_destroy");

 procedure QTableView_setModel(handle: not null  QTableViewH; model: QAbstractItemModelH);
 pragma Import(c,QTableView_setModel, "QTableView_setModel");

 procedure QTableView_setRootIndex(handle: not null  QTableViewH; index: QModelIndexH);
 pragma Import(c,QTableView_setRootIndex, "QTableView_setRootIndex");

 procedure QTableView_setSelectionModel(handle: not null  QTableViewH; selectionModel: QItemSelectionModelH);
 pragma Import(c,QTableView_setSelectionModel, "QTableView_setSelectionModel");

 function  QTableView_horizontalHeader(handle: not null  QTableViewH) return QHeaderViewH;
 pragma Import(c,QTableView_horizontalHeader, "QTableView_horizontalHeader");

 function  QTableView_verticalHeader(handle: not null  QTableViewH) return QHeaderViewH;
 pragma Import(c,QTableView_verticalHeader, "QTableView_verticalHeader");

 procedure QTableView_setHorizontalHeader(handle: not null  QTableViewH; header: QHeaderViewH);
 pragma Import(c,QTableView_setHorizontalHeader, "QTableView_setHorizontalHeader");

 procedure QTableView_setVerticalHeader(handle: not null  QTableViewH; header: QHeaderViewH);
 pragma Import(c,QTableView_setVerticalHeader, "QTableView_setVerticalHeader");

 function  QTableView_rowViewportPosition(handle: not null  QTableViewH; row: integer) return integer;
 pragma Import(c,QTableView_rowViewportPosition, "QTableView_rowViewportPosition");

 function  QTableView_rowAt(handle: not null  QTableViewH; y:integer) return integer;
 pragma Import(c,QTableView_rowAt, "QTableView_rowAt");

 procedure QTableView_setRowHeight(handle: not null  QTableViewH; row: integer; height:integer);
 pragma Import(c,QTableView_setRowHeight, "QTableView_setRowHeight");

 function  QTableView_rowHeight(handle: not null  QTableViewH; row: integer) return integer;
 pragma Import(c,QTableView_rowHeight, "QTableView_rowHeight");

 function  QTableView_columnViewportPosition(handle: not null  QTableViewH; column:integer) return integer;
 pragma Import(c,QTableView_columnViewportPosition, "QTableView_columnViewportPosition");

 function  QTableView_columnAt(handle: not null  QTableViewH; x:integer) return integer;
 pragma Import(c,QTableView_columnAt, "QTableView_columnAt");

 procedure QTableView_setColumnWidth(handle: not null  QTableViewH; column:integer; width:integer);
 pragma Import(c,QTableView_setColumnWidth, "QTableView_setColumnWidth");

 function  QTableView_columnWidth(handle: not null  QTableViewH; column:integer) return integer;
 pragma Import(c,QTableView_columnWidth, "QTableView_columnWidth");

 function  QTableView_isRowHidden(handle: not null  QTableViewH; row: integer) return boolean;
 pragma Import(c,QTableView_isRowHidden, "QTableView_isRowHidden");

 procedure QTableView_setRowHidden(handle: not null  QTableViewH; row: integer; hide: boolean);
 pragma Import(c,QTableView_setRowHidden, "QTableView_setRowHidden");

 function  QTableView_isColumnHidden(handle: not null  QTableViewH; column:integer) return boolean;
 pragma Import(c,QTableView_isColumnHidden, "QTableView_isColumnHidden");

 procedure QTableView_setColumnHidden(handle: not null  QTableViewH; column:integer; hide: boolean);
 pragma Import(c,QTableView_setColumnHidden, "QTableView_setColumnHidden");

 procedure QTableView_setSortingEnabled(handle: not null  QTableViewH; enable: boolean);
 pragma Import(c,QTableView_setSortingEnabled, "QTableView_setSortingEnabled");

 function  QTableView_isSortingEnabled(handle: not null  QTableViewH) return boolean;
 pragma Import(c,QTableView_isSortingEnabled, "QTableView_isSortingEnabled");

 function  QTableView_showGrid(handle: not null  QTableViewH) return boolean;
 pragma Import(c,QTableView_showGrid, "QTableView_showGrid");

 function  QTableView_gridStyle(handle: not null  QTableViewH) return QtPenStyle;
 pragma Import(c,QTableView_gridStyle, "QTableView_gridStyle");

 procedure QTableView_setGridStyle(handle: not null  QTableViewH; style: QtPenStyle);
 pragma Import(c,QTableView_setGridStyle, "QTableView_setGridStyle");

 procedure QTableView_setWordWrap(handle: not null  QTableViewH; on: boolean);
 pragma Import(c,QTableView_setWordWrap, "QTableView_setWordWrap");

 function  QTableView_wordWrap(handle: not null  QTableViewH) return boolean;
 pragma Import(c,QTableView_wordWrap, "QTableView_wordWrap");

 procedure QTableView_setCornerButtonEnabled(handle: not null  QTableViewH; enable: boolean);
 pragma Import(c,QTableView_setCornerButtonEnabled, "QTableView_setCornerButtonEnabled");

 function  QTableView_isCornerButtonEnabled(handle: not null  QTableViewH) return boolean;
 pragma Import(c,QTableView_isCornerButtonEnabled, "QTableView_isCornerButtonEnabled");

 function  QTableView_visualRect(handle: not null  QTableViewH; index: QModelIndexH) return QRectH;
 pragma Import(c,QTableView_visualRect, "QTableView_visualRect");

 procedure QTableView_scrollTo(handle: not null  QTableViewH; index: QModelIndexH; hint: QAbstractItemViewScrollHintH);
 pragma Import(c,QTableView_scrollTo, "QTableView_scrollTo");

 function  QTableView_indexAt(handle: not null  QTableViewH; p:QPointH) return QModelIndexH;
 pragma Import(c,QTableView_indexAt, "QTableView_indexAt");

 procedure QTableView_setSpan(handle: not null  QTableViewH; row: integer; column:integer; rowSpan: integer; columnSpan:integer);
 pragma Import(c,QTableView_setSpan, "QTableView_setSpan");

 function  QTableView_rowSpan(handle: not null  QTableViewH; row: integer; column:integer) return integer;
 pragma Import(c,QTableView_rowSpan, "QTableView_rowSpan");

 function  QTableView_columnSpan(handle: not null  QTableViewH; row: integer; column:integer) return integer;
 pragma Import(c,QTableView_columnSpan, "QTableView_columnSpan");

 procedure QTableView_clearSpans(handle: not null  QTableViewH);
 pragma Import(c,QTableView_clearSpans, "QTableView_clearSpans");

 procedure QTableView_sortByColumn(handle: not null  QTableViewH; column:integer; order: QtSortOrder);
 pragma Import(c,QTableView_sortByColumn, "QTableView_sortByColumn");

 procedure QTableView_selectRow(handle: not null  QTableViewH; row: integer);
 pragma Import(c,QTableView_selectRow, "QTableView_selectRow");

 procedure QTableView_selectColumn(handle: not null  QTableViewH; column:integer);
 pragma Import(c,QTableView_selectColumn, "QTableView_selectColumn");

 procedure QTableView_hideRow(handle: not null  QTableViewH; row: integer);
 pragma Import(c,QTableView_hideRow, "QTableView_hideRow");

 procedure QTableView_hideColumn(handle: not null  QTableViewH; column:integer);
 pragma Import(c,QTableView_hideColumn, "QTableView_hideColumn");

 procedure QTableView_showRow(handle: not null  QTableViewH; row: integer);
 pragma Import(c,QTableView_showRow, "QTableView_showRow");

 procedure QTableView_showColumn(handle: not null  QTableViewH; column:integer);
 pragma Import(c,QTableView_showColumn, "QTableView_showColumn");

 procedure QTableView_resizeRowToContents(handle: not null  QTableViewH; row: integer);
 pragma Import(c,QTableView_resizeRowToContents, "QTableView_resizeRowToContents");

 procedure QTableView_resizeRowsToContents(handle: not null  QTableViewH);
 pragma Import(c,QTableView_resizeRowsToContents, "QTableView_resizeRowsToContents");

 procedure QTableView_resizeColumnToContents(handle: not null  QTableViewH; column:integer);
 pragma Import(c,QTableView_resizeColumnToContents, "QTableView_resizeColumnToContents");

 procedure QTableView_resizeColumnsToContents(handle: not null  QTableViewH);
 pragma Import(c,QTableView_resizeColumnsToContents, "QTableView_resizeColumnsToContents");

 procedure QTableView_sortByColumn2(handle: not null  QTableViewH; column:integer);
 pragma Import(c,QTableView_sortByColumn2, "QTableView_sortByColumn2");
                                                   
 procedure QTableView_setShowGrid(handle: not null  QTableViewH; show: boolean);
 pragma Import(c,QTableView_setShowGrid, "QTableView_setShowGrid");

 procedure  QTableView_setCurrentIndex(handle : QTableViewH; index: QModelIndexH);
 pragma Import(c,QTableView_setCurrentIndex, "QTableView_setCurrentIndex");

 procedure  QTableView_edit(handle : QTableViewH; index: QModelIndexH);
 pragma Import(c,QTableView_edit , "QTableView_edit");

 function   QTableView_currentIndex_Row(handle: not null  QTableViewH) return integer;
 pragma Import(c,QTableView_currentIndex_Row, "QTableView_currentIndex_Row");
 
 procedure QTableView_scrollContentsBy(handle:not null QTableViewH;dx,dy:integer);
 pragma Import(C,QTableView_scrollContentsBy, "QTableView_scrollContentsBy");
 
 function  QTableView_viewOptions(handle:not null QTableViewH) return QStyleOptionViewItemH;
 pragma Import(C,QTableView_viewOptions, "QTableView_viewOptions");
 
 procedure QTableView_paintEvent(handle:not null QTableViewH;e:QPaintEventH);
 pragma Import(C,QTableView_paintEvent, "QTableView_paintEvent");
 
 procedure QTableView_timerEvent(handle:not null QTableViewH;e:QTimerEventH);
 pragma Import(C,QTableView_timerEvent, "QTableView_timerEvent");
 
 function  QTableView_horizontalOffset(handle:not null QTableViewH) return integer;
 pragma Import(C,QTableView_horizontalOffset, "QTableView_horizontalOffset");
 
 function  QTableView_verticalOffset(handle:not null QTableViewH) return integer;
 pragma Import(C,QTableView_verticalOffset, "QTableView_verticalOffset");
 
 function  QTableView_moveCursor(handle:not null QTableViewH;cursorAction:QAbstractItemViewCursorAction; modifiers: QtKeyboardModifiers) return QModelIndexH;
 pragma Import(C,QTableView_moveCursor, "QTableView_moveCursor");
 
 procedure QTableView_setSelection(handle:not null QTableViewH;rect:QRectH; command:SelectionFlags);
 pragma Import(C,QTableView_setSelection, "QTableView_setSelection");
 
 function  QTableView_visualRegionForSelection(handle:not null QTableViewH;selection:QItemSelectionH) return QRegionH;
 pragma Import(C,QTableView_visualRegionForSelection, "QTableView_visualRegionForSelection");
 
 function  QTableView_selectedIndexes(handle:not null QTableViewH) return QModelIndexListH;
 pragma Import(C,QTableView_selectedIndexes, "QTableView_selectedIndexes");
 
 procedure QTableView_updateGeometries(handle:not null QTableViewH);
 pragma Import(C,QTableView_updateGeometries, "QTableView_updateGeometries");
 
 function  QTableView_viewportSizeHint(handle:not null QTableViewH) return QSizeH;
 pragma Import(C,QTableView_viewportSizeHint, "QTableView_viewportSizeHint");
 
 function  QTableView_sizeHintForRow(handle:not null QTableViewH;row:integer) return integer;
 pragma Import(C,QTableView_sizeHintForRow, "QTableView_sizeHintForRow");
 
 function  QTableView_sizeHintForColumn(handle:not null QTableViewH;column:integer) return integer;
 pragma Import(C,QTableView_sizeHintForColumn, "QTableView_sizeHintForColumn");
 
 procedure QTableView_verticalScrollbarAction(handle:not null QTableViewH;action:integer);
 pragma Import(C,QTableView_verticalScrollbarAction, "QTableView_verticalScrollbarAction");
 
 procedure QTableView_horizontalScrollbarAction(handle:not null QTableViewH;action:integer);
 pragma Import(C,QTableView_horizontalScrollbarAction, "QTableView_horizontalScrollbarAction");
 
 function  QTableView_isIndexHidden(handle:not null QTableViewH;index:QModelIndexH) return boolean;
 pragma Import(C,QTableView_isIndexHidden, "QTableView_isIndexHidden");
 
 procedure QTableView_selectionChanged(handle:not null QTableViewH;selected,deselected:QItemSelectionH);
 pragma Import(C,QTableView_selectionChanged, "QTableView_selectionChanged");
 
 procedure QTableView_currentChanged(handle:not null QTableViewH;current,previous:QModelIndexH);
 pragma Import(C,QTableView_currentChanged, "QTableView_currentChanged");
 
----------------------------------------------------------------------------------------------------
 procedure QTableView_sortByColumn(handle: not null  QTableViewH; column:integer);

end Qt.QTableView;
