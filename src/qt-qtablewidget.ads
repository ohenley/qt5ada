--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QTableWidget is

 function  QTableWidgetSelectionRange_create return QTableWidgetSelectionRangeH;
 pragma Import(c,QTableWidgetSelectionRange_create, "QTableWidgetSelectionRange_create");

 procedure QTableWidgetSelectionRange_destroy(handle: not null QTableWidgetSelectionRangeH);
 pragma Import(c,QTableWidgetSelectionRange_destroy, "QTableWidgetSelectionRange_destroy");

 function  QTableWidgetSelectionRange_create2(top:integer; left:integer; bottom:integer; right:integer) return QTableWidgetSelectionRangeH;
 pragma Import(c,QTableWidgetSelectionRange_create2, "QTableWidgetSelectionRange_create2");

 function  QTableWidgetSelectionRange_create3(other: QTableWidgetSelectionRangeH) return QTableWidgetSelectionRangeH;
 pragma Import(c,QTableWidgetSelectionRange_create3, "QTableWidgetSelectionRange_create3");

 function  QTableWidgetSelectionRange_topRow(handle: not null  QTableWidgetSelectionRangeH) return integer;
 pragma Import(c,QTableWidgetSelectionRange_topRow, "QTableWidgetSelectionRange_topRow");

 function  QTableWidgetSelectionRange_bottomRow(handle: not null  QTableWidgetSelectionRangeH) return integer;
 pragma Import(c,QTableWidgetSelectionRange_bottomRow, "QTableWidgetSelectionRange_bottomRow");

 function  QTableWidgetSelectionRange_leftColumn(handle: not null  QTableWidgetSelectionRangeH) return integer;
 pragma Import(c,QTableWidgetSelectionRange_leftColumn, "QTableWidgetSelectionRange_leftColumn");

 function  QTableWidgetSelectionRange_rightColumn(handle: not null  QTableWidgetSelectionRangeH) return integer;
 pragma Import(c,QTableWidgetSelectionRange_rightColumn, "QTableWidgetSelectionRange_rightColumn");

 function  QTableWidgetSelectionRange_rowCount(handle: not null  QTableWidgetSelectionRangeH) return integer;
 pragma Import(c,QTableWidgetSelectionRange_rowCount, "QTableWidgetSelectionRange_rowCount");

 function  QTableWidgetSelectionRange_columnCount(handle: not null  QTableWidgetSelectionRangeH) return integer;
 pragma Import(c,QTableWidgetSelectionRange_columnCount, "QTableWidgetSelectionRange_columnCount");

subtype ItemType is integer;
DefaultType : constant ItemType := 0; 
UserType    : constant ItemType := 1000; 

type customDataProc     is access function(handle: not null  QTableWidgetItemH;role:integer) return QVariantH;
pragma convention(C,customDataProc);

type customSetDataProc is access procedure(handle: not null  QTableWidgetItemH;role:integer;value: QVariantH);
pragma convention(C,customSetDataProc);

 function  QTableWidgetItem_create(item_type:integer := DefaultType) return QTableWidgetItemH;
 pragma Import(c,QTableWidgetItem_create, "QTableWidgetItem_create");

 procedure QTableWidgetItem_destroy(handle: not null  QTableWidgetItemH);
 pragma Import(c,QTableWidgetItem_destroy, "QTableWidgetItem_destroy");

 function  QTableWidgetItem_create2(text:QStringH; item_type: integer := DefaultType) return QTableWidgetItemH;
 pragma Import(c,QTableWidgetItem_create2, "QTableWidgetItem_create2");

 function  QTableWidgetItem_create3(icon:QIconH; text:QStringH; item_type: integer := DefaultType) return QTableWidgetItemH;
 pragma Import(c,QTableWidgetItem_create3, "QTableWidgetItem_create3");

 function  QTableWidgetItem_create4(other: QTableWidgetItemH) return QTableWidgetItemH;
 pragma Import(c,QTableWidgetItem_create4, "QTableWidgetItem_create4");

 function  QTableWidgetItem_clone(handle: not null  QTableWidgetItemH) return QTableWidgetItemH;
 pragma Import(c,QTableWidgetItem_clone, "QTableWidgetItem_clone");

 function  QTableWidgetItem_tableWidget(handle: not null  QTableWidgetItemH) return QTableWidgetH;
 pragma Import(c,QTableWidgetItem_tableWidget, "QTableWidgetItem_tableWidget");

 function  QTableWidgetItem_row(handle: not null  QTableWidgetItemH) return integer;
 pragma Import(c,QTableWidgetItem_row, "QTableWidgetItem_row");

 function  QTableWidgetItem_column(handle: not null  QTableWidgetItemH) return integer;
 pragma Import(c,QTableWidgetItem_column, "QTableWidgetItem_column");

 procedure QTableWidgetItem_setSelected(handle: not null  QTableWidgetItemH; selection: boolean);
 pragma Import(c,QTableWidgetItem_setSelected, "QTableWidgetItem_setSelected");

 function  QTableWidgetItem_isSelected(handle: not null  QTableWidgetItemH) return boolean;
 pragma Import(c,QTableWidgetItem_isSelected, "QTableWidgetItem_isSelected");

 function  QTableWidgetItem_flags(handle: not null  QTableWidgetItemH) return quint;
 pragma Import(c,QTableWidgetItem_flags, "QTableWidgetItem_flags");

 procedure QTableWidgetItem_setFlags(handle: not null  QTableWidgetItemH; flags: quint);
 pragma Import(c,QTableWidgetItem_setFlags, "QTableWidgetItem_setFlags");

 function  QTableWidgetItem_text(handle: not null  QTableWidgetItemH) return QStringH;
 pragma Import(c,QTableWidgetItem_text, "QTableWidgetItem_text");

 procedure QTableWidgetItem_setText(handle: not null  QTableWidgetItemH; text:QStringH);
 pragma Import(c,QTableWidgetItem_setText, "QTableWidgetItem_setText");

 function  QTableWidgetItem_icon(handle: not null  QTableWidgetItemH) return QIconH;
 pragma Import(c,QTableWidgetItem_icon, "QTableWidgetItem_icon");

 procedure QTableWidgetItem_setIcon(handle: not null  QTableWidgetItemH; icon:QIconH);
 pragma Import(c,QTableWidgetItem_setIcon, "QTableWidgetItem_setIcon");

 function  QTableWidgetItem_statusTip(handle: not null  QTableWidgetItemH) return QStringH;
 pragma Import(c,QTableWidgetItem_statusTip, "QTableWidgetItem_statusTip");

 procedure QTableWidgetItem_setStatusTip(handle: not null  QTableWidgetItemH; statusTip: QStringH);
 pragma Import(c,QTableWidgetItem_setStatusTip, "QTableWidgetItem_setStatusTip");

 function  QTableWidgetItem_toolTip(handle: not null  QTableWidgetItemH) return QStringH;
 pragma Import(c,QTableWidgetItem_toolTip, "QTableWidgetItem_toolTip");

 procedure QTableWidgetItem_setToolTip(handle: not null  QTableWidgetItemH; toolTip: QStringH);
 pragma Import(c,QTableWidgetItem_setToolTip, "QTableWidgetItem_setToolTip");

 function  QTableWidgetItem_whatsThis(handle: not null  QTableWidgetItemH) return QStringH;
 pragma Import(c,QTableWidgetItem_whatsThis, "QTableWidgetItem_whatsThis");

 procedure QTableWidgetItem_setWhatsThis(handle: not null  QTableWidgetItemH; whatsThis: QStringH);
 pragma Import(c,QTableWidgetItem_setWhatsThis, "QTableWidgetItem_setWhatsThis");

 function  QTableWidgetItem_font(handle: not null  QTableWidgetItemH) return QFontH;
 pragma Import(c,QTableWidgetItem_font, "QTableWidgetItem_font");

 procedure QTableWidgetItem_setFont(handle: not null  QTableWidgetItemH; font: QFontH);
 pragma Import(c,QTableWidgetItem_setFont, "QTableWidgetItem_setFont");

 function QTableWidgetItem_textAlignment(handle: not null  QTableWidgetItemH) return integer;
 pragma Import(c,QTableWidgetItem_textAlignment, "QTableWidgetItem_textAlignment");

 procedure QTableWidgetItem_setTextAlignment(handle: not null  QTableWidgetItemH; alignment:integer);
 pragma Import(c,QTableWidgetItem_setTextAlignment, "QTableWidgetItem_setTextAlignment");

 function  QTableWidgetItem_backgroundColor(handle: not null  QTableWidgetItemH) return QColorH;
 pragma Import(c,QTableWidgetItem_backgroundColor, "QTableWidgetItem_backgroundColor");

 procedure QTableWidgetItem_setBackgroundColor(handle: not null  QTableWidgetItemH; color: QColorH);
 pragma Import(c,QTableWidgetItem_setBackgroundColor, "QTableWidgetItem_setBackgroundColor");

 function  QTableWidgetItem_background(handle: not null  QTableWidgetItemH) return QBrushH;
 pragma Import(c,QTableWidgetItem_background, "QTableWidgetItem_background");

 procedure QTableWidgetItem_setBackground(handle: not null  QTableWidgetItemH; brush: QBrushH);
 pragma Import(c,QTableWidgetItem_setBackground, "QTableWidgetItem_setBackground");

 function  QTableWidgetItem_textColor(handle: not null  QTableWidgetItemH) return QColorH;
 pragma Import(c,QTableWidgetItem_textColor, "QTableWidgetItem_textColor");

 procedure QTableWidgetItem_setTextColor(handle: not null  QTableWidgetItemH; color: QColorH);
 pragma Import(c,QTableWidgetItem_setTextColor, "QTableWidgetItem_setTextColor");

 function  QTableWidgetItem_foreground(handle: not null  QTableWidgetItemH) return QBrushH;
 pragma Import(c,QTableWidgetItem_foreground, "QTableWidgetItem_foreground");

 procedure QTableWidgetItem_setForeground(handle: not null  QTableWidgetItemH; brush: QBrushH);
 pragma Import(c,QTableWidgetItem_setForeground, "QTableWidgetItem_setForeground");

 function  QTableWidgetItem_checkState(handle: not null  QTableWidgetItemH) return QtCheckState;
 pragma Import(c,QTableWidgetItem_checkState, "QTableWidgetItem_checkState");

 procedure QTableWidgetItem_setCheckState(handle: not null  QTableWidgetItemH; state: QtCheckState);
 pragma Import(c,QTableWidgetItem_setCheckState, "QTableWidgetItem_setCheckState");

 function  QTableWidgetItem_sizeHint(handle: not null  QTableWidgetItemH) return QSizeH;
 pragma Import(c,QTableWidgetItem_sizeHint, "QTableWidgetItem_sizeHint");

 procedure QTableWidgetItem_setSizeHint(handle: not null  QTableWidgetItemH; size: QSizeH);
 pragma Import(c,QTableWidgetItem_setSizeHint, "QTableWidgetItem_setSizeHint");

 procedure QTableWidgetItem_setUserDataProc(handle:not null QTableWidgetItemH; hook:customDataProc);
 pragma Import(C,QTableWidgetItem_setUserDataProc, "QTableWidgetItem_setUserDataProc");
 
 procedure QTableWidgetItem_setUserSetDataProc(handle:not null QTableWidgetItemH; hook: customSetDataProc);
 pragma Import(C,QTableWidgetItem_setUserSetDataProc, "QTableWidgetItem_setUserSetDataProc");
 
 function  QTableWidgetItem_data(handle: not null  QTableWidgetItemH; role: integer) return QVariantH;
 pragma Import(c,QTableWidgetItem_data, "QTableWidgetItem_data");

 procedure QTableWidgetItem_setData(handle: not null  QTableWidgetItemH; role:integer; value: QVariantH);
 pragma Import(c,QTableWidgetItem_setData, "QTableWidgetItem_setData");

 function  QTableWidgetItem_defaultData(handle: not null  QTableWidgetItemH; role: integer) return QVariantH;
 pragma Import(c,QTableWidgetItem_defaultData, "QTableWidgetItem_defaultData");

 procedure QTableWidgetItem_defaultSetData(handle: not null  QTableWidgetItemH; role:integer);
 pragma Import(c,QTableWidgetItem_defaultSetData, "QTableWidgetItem_defaultSetData");

 procedure QTableWidgetItem_read(handle: not null  QTableWidgetItemH; datain: QDataStreamH);
 pragma Import(c,QTableWidgetItem_read, "QTableWidgetItem_read");

 procedure QTableWidgetItem_write(handle: not null  QTableWidgetItemH; dataout:QDataStreamH);
 pragma Import(c,QTableWidgetItem_write, "QTableWidgetItem_write");

 function  QTableWidgetItem_type(handle: not null  QTableWidgetItemH) return integer;
 pragma Import(c,QTableWidgetItem_type, "QTableWidgetItem_type");

 procedure QTableWidgetItem_setResolving(handle:not null QTableWidgetItemH;isResolving: boolean := false);
 pragma Import(C,QTableWidgetItem_setResolving, "QTableWidgetItem_setResolving");
 
 function  QTableWidgetItem_getResolving(handle:not null QTableWidgetItemH) return boolean;
 pragma Import(C,QTableWidgetItem_getResolving, "QTableWidgetItem_getResolving");

 procedure QTableWidgetItem_emitItemChanged(handle:not null QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_emitItemChanged, "QTableWidgetItem_emitItemChanged");
 
 procedure QTableWidgetItem_emitItemPressed(handle:not null QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_emitItemPressed, "QTableWidgetItem_emitItemPressed");
 
 procedure QTableWidgetItem_emitItemClicked(handle:not null QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_emitItemClicked, "QTableWidgetItem_emitItemClicked");
 
 procedure QTableWidgetItem_emitItemDoubleClicked(handle:not null QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_emitItemDoubleClicked, "QTableWidgetItem_emitItemDoubleClicked");
 
 procedure QTableWidgetItem_emitItemActivated(handle:not null QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_emitItemActivated, "QTableWidgetItem_emitItemActivated");
 
 procedure QTableWidgetItem_emitItemEntered(handle:not null QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_emitItemEntered, "QTableWidgetItem_emitItemEntered");
 
 procedure QTableWidgetItem_setChangeDisplayData(handle:not null QTableWidgetItemH;isChanged:boolean);
 pragma Import(C,QTableWidgetItem_setChangeDisplayData, "QTableWidgetItem_setChangeDisplayData");
 
 function  QTableWidgetItem_displayedText(handle:not null QTableWidgetItemH) return QStringH;
 pragma Import(C,QTableWidgetItem_displayedText, "QTableWidgetItem_displayedText");
 
 procedure QTableWidgetItem_setDisplayedText(handle:not null QTableWidgetItemH;text:QStringH);
 pragma Import(C,QTableWidgetItem_setDisplayedText, "QTableWidgetItem_setDisplayedText");
 
 procedure QTableWidgetItem_restoreData(handle:QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_restoreData, "QTableWidgetItem_restoreData");
 
 procedure QTableWidgetItem_seveData(handle:QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_seveData, "QTableWidgetItem_seveData");
 
 procedure QTableWidgetItem_restoreDisplayedData(handle:QTableWidgetItemH);
 pragma Import(C,QTableWidgetItem_restoreDisplayedData, "QTableWidgetItem_restoreDisplayedData");

 function  QTableWidgetItem_displayRoleChanged(handle:QTableWidgetItemH) return boolean;
 pragma Import(C,QTableWidgetItem_displayRoleChanged, "QTableWidgetItem_displayRoleChanged");

----------------------------------------------------------------------------
 function  QTableWidget_create(parent:QWidgetH) return QTableWidgetH;
 pragma Import(c,QTableWidget_create, "QTableWidget_create");

 procedure QTableWidget_destroy(handle: not null  QTableWidgetH);
 pragma Import(c,QTableWidget_destroy, "QTableWidget_destroy");

 function  QTableWidget_create2(rows: integer; columns:integer; parent:QWidgetH) return QTableWidgetH;
 pragma Import(c,QTableWidget_create2, "QTableWidget_create2");

 procedure QTableWidget_setRowCount(handle: not null  QTableWidgetH; rows: integer);
 pragma Import(c,QTableWidget_setRowCount, "QTableWidget_setRowCount");

 function  QTableWidget_rowCount(handle: not null  QTableWidgetH) return integer;
 pragma Import(c,QTableWidget_rowCount, "QTableWidget_rowCount");

 procedure QTableWidget_setColumnCount(handle: not null  QTableWidgetH; columns:integer);
 pragma Import(c,QTableWidget_setColumnCount, "QTableWidget_setColumnCount");

 function  QTableWidget_columnCount(handle: not null  QTableWidgetH) return  integer;
 pragma Import(c,QTableWidget_columnCount, "QTableWidget_columnCount");

 function  QTableWidget_row(handle: not null  QTableWidgetH; item: QTableWidgetItemH) return  integer;
 pragma Import(c,QTableWidget_row, "QTableWidget_row");

 function  QTableWidget_column(handle: not null  QTableWidgetH; item: QTableWidgetItemH) return  integer;
 pragma Import(c,QTableWidget_column, "QTableWidget_column");

 function  QTableWidget_item(handle: not null  QTableWidgetH; row: integer; column:integer) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_item, "QTableWidget_item");

 procedure QTableWidget_setItem(handle: not null  QTableWidgetH; row: integer; column:integer; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_setItem, "QTableWidget_setItem");

 function  QTableWidget_takeItem(handle: not null  QTableWidgetH; row: integer; column:integer) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_takeItem, "QTableWidget_takeItem");

 function  QTableWidget_verticalHeaderItem(handle: not null  QTableWidgetH; row: integer) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_verticalHeaderItem, "QTableWidget_verticalHeaderItem");

 procedure QTableWidget_setVerticalHeaderItem(handle: not null  QTableWidgetH; row: integer; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_setVerticalHeaderItem, "QTableWidget_setVerticalHeaderItem");

 function  QTableWidget_takeVerticalHeaderItem(handle: not null  QTableWidgetH; row: integer) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_takeVerticalHeaderItem, "QTableWidget_takeVerticalHeaderItem");

 function  QTableWidget_horizontalHeaderItem(handle: not null  QTableWidgetH; column:integer) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_horizontalHeaderItem, "QTableWidget_horizontalHeaderItem");

 procedure QTableWidget_setHorizontalHeaderItem(handle: not null  QTableWidgetH; column:integer; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_setHorizontalHeaderItem, "QTableWidget_setHorizontalHeaderItem");

 function  QTableWidget_takeHorizontalHeaderItem(handle: not null  QTableWidgetH; column:integer) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_takeHorizontalHeaderItem, "QTableWidget_takeHorizontalHeaderItem");

 procedure QTableWidget_setVerticalHeaderLabels(handle: not null  QTableWidgetH; labels: QStringListH);
 pragma Import(c,QTableWidget_setVerticalHeaderLabels, "QTableWidget_setVerticalHeaderLabels");

 procedure QTableWidget_setHorizontalHeaderLabels(handle: not null  QTableWidgetH; labels: QStringListH);
 pragma Import(c,QTableWidget_setHorizontalHeaderLabels, "QTableWidget_setHorizontalHeaderLabels");

 function  QTableWidget_currentRow(handle: not null  QTableWidgetH) return integer;
 pragma Import(c,QTableWidget_currentRow, "QTableWidget_currentRow");

 function  QTableWidget_currentColumn(handle: not null  QTableWidgetH) return integer;
 pragma Import(c,QTableWidget_currentColumn, "QTableWidget_currentColumn");

 function  QTableWidget_currentItem(handle: not null  QTableWidgetH) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_currentItem, "QTableWidget_currentItem");

 procedure QTableWidget_setCurrentItem(handle: not null  QTableWidgetH; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_setCurrentItem, "QTableWidget_setCurrentItem");

 procedure QTableWidget_setCurrentItem2(handle: not null  QTableWidgetH; item: QTableWidgetItemH; command: quint);
 pragma Import(c,QTableWidget_setCurrentItem2, "QTableWidget_setCurrentItem2");

 procedure QTableWidget_setCurrentCell(handle: not null  QTableWidgetH; row: integer; column:integer);
 pragma Import(c,QTableWidget_setCurrentCell, "QTableWidget_setCurrentCell");

 procedure QTableWidget_setCurrentCell2(handle: not null  QTableWidgetH; row: integer; column:integer; command: quint);
 pragma Import(c,QTableWidget_setCurrentCell2, "QTableWidget_setCurrentCell2");

 procedure QTableWidget_sortItems(handle: not null  QTableWidgetH; column:integer; order: QtSortOrder);
 pragma Import(c,QTableWidget_sortItems, "QTableWidget_sortItems");

 procedure QTableWidget_setSortingEnabled(handle: not null  QTableWidgetH; enable: boolean);
 pragma Import(c,QTableWidget_setSortingEnabled, "QTableWidget_setSortingEnabled");

 function  QTableWidget_isSortingEnabled(handle: not null  QTableWidgetH) return boolean;
 pragma Import(c,QTableWidget_isSortingEnabled, "QTableWidget_isSortingEnabled");

 procedure QTableWidget_editItem(handle: not null  QTableWidgetH; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_editItem, "QTableWidget_editItem");

 procedure QTableWidget_openPersistentEditor(handle: not null  QTableWidgetH; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_openPersistentEditor, "QTableWidget_openPersistentEditor");

 procedure QTableWidget_closePersistentEditor(handle: not null  QTableWidgetH; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_closePersistentEditor, "QTableWidget_closePersistentEditor");

 function  QTableWidget_cellWidget(handle: not null  QTableWidgetH; row: integer; column:integer) return QWidgetH;
 pragma Import(c,QTableWidget_cellWidget, "QTableWidget_cellWidget");

 procedure QTableWidget_setCellWidget(handle: not null  QTableWidgetH; row: integer; column:integer; widget: QWidgetH);
 pragma Import(c,QTableWidget_setCellWidget, "QTableWidget_setCellWidget");

 procedure QTableWidget_removeCellWidget(handle: not null  QTableWidgetH; row: integer; column:integer);
 pragma Import(c,QTableWidget_removeCellWidget, "QTableWidget_removeCellWidget");

 function  QTableWidget_isItemSelected(handle: not null  QTableWidgetH; item: QTableWidgetItemH) return boolean;
 pragma Import(c,QTableWidget_isItemSelected, "QTableWidget_isItemSelected");

 procedure QTableWidget_setItemSelected(handle: not null  QTableWidgetH; item: QTableWidgetItemH; isselect: boolean);
 pragma Import(c,QTableWidget_setItemSelected, "QTableWidget_setItemSelected");

 procedure QTableWidget_setRangeSelected(handle: not null  QTableWidgetH; selectionRange: QTableWidgetSelectionRangeH; isselect: boolean);
 pragma Import(c,QTableWidget_setRangeSelected, "QTableWidget_setRangeSelected");

 function  QTableWidget_visualRow(handle: not null  QTableWidgetH; logicalRow: integer) return integer;
 pragma Import(c,QTableWidget_visualRow, "QTableWidget_visualRow");

 function  QTableWidget_visualColumn(handle: not null  QTableWidgetH; logicalColumn: integer) return integer;
 pragma Import(c,QTableWidget_visualColumn, "QTableWidget_visualColumn");

 function  QTableWidget_itemAt(handle: not null  QTableWidgetH; p:QPointH) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_itemAt, "QTableWidget_itemAt");

 function  QTableWidget_itemAt2(handle: not null  QTableWidgetH; x:integer; y:integer) return  QTableWidgetItemH;
 pragma Import(c,QTableWidget_itemAt2, "QTableWidget_itemAt2");

 function  QTableWidget_visualItemRect(handle: not null  QTableWidgetH; item: QTableWidgetItemH) return QRectH;
 pragma Import(c,QTableWidget_visualItemRect, "QTableWidget_visualItemRect");

 function  QTableWidget_itemPrototype(handle: not null  QTableWidgetH) return QTableWidgetItemH;
 pragma Import(c,QTableWidget_itemPrototype, "QTableWidget_itemPrototype");

 procedure QTableWidget_setItemPrototype(handle: not null  QTableWidgetH; item: QTableWidgetItemH);
 pragma Import(c,QTableWidget_setItemPrototype, "QTableWidget_setItemPrototype");

 procedure QTableWidget_scrollToItem(handle: not null  QTableWidgetH; item: QTableWidgetItemH; hint: QAbstractItemViewScrollHintH);
 pragma Import(c,QTableWidget_scrollToItem, "QTableWidget_scrollToItem");

 procedure QTableWidget_insertRow(handle: not null  QTableWidgetH; row: integer);
 pragma Import(c,QTableWidget_insertRow, "QTableWidget_insertRow");

 procedure QTableWidget_insertColumn(handle: not null  QTableWidgetH; column:integer);
 pragma Import(c,QTableWidget_insertColumn, "QTableWidget_insertColumn");

 procedure QTableWidget_removeRow(handle: not null  QTableWidgetH; row: integer);
 pragma Import(c,QTableWidget_removeRow, "QTableWidget_removeRow");

 procedure QTableWidget_removeColumn(handle: not null  QTableWidgetH; column:integer);
 pragma Import(c,QTableWidget_removeColumn, "QTableWidget_removeColumn");

 procedure QTableWidget_clear(handle: not null  QTableWidgetH);
 pragma Import(c,QTableWidget_clear, "QTableWidget_clear");

 procedure QTableWidget_clearContents(handle: not null  QTableWidgetH);
 pragma Import(c,QTableWidget_clearContents, "QTableWidget_clearContents");

 function  QTableWidget_selectedItems(handle: not null  QTableWidgetH) return QObjectListH;
 pragma Import(C,QTableWidget_selectedItems,"QTableWidget_selectedItems");
 
 function  QTableWidget_label(handle: not null  QTableWidgetH; item: QTableWidgetItemH) return QLabelH;
 pragma Import(c,QTableWidget_label, "QTableWidget_label");

 type QTableWidget_itemPressedEvent is access procedure(item:QTableWidgetItemH);
 pragma Convention(C,QTableWidget_itemPressedEvent );

 type QTableWidget_itemClickedEvent is access procedure(item:QTableWidgetItemH);
 pragma Convention(C,QTableWidget_itemClickedEvent );

 type QTableWidget_itemDoubleClickedEvent is access procedure(item:QTableWidgetItemH);
 pragma Convention(C,QTableWidget_itemDoubleClickedEvent );

 type QTableWidget_itemActivatedEvent is access procedure(item:QTableWidgetItemH);
 pragma Convention(C,QTableWidget_itemActivatedEvent );

 type QTableWidget_itemEnteredEvent is access procedure(item:QTableWidgetItemH);
 pragma Convention(C,QTableWidget_itemEnteredEvent );

 type QTableWidget_itemChangedEvent is access procedure(item:QTableWidgetItemH);
 pragma Convention(C,QTableWidget_itemChangedEvent );

 type QTableWidget_currentItemChangedEvent is access procedure(item1,item2:QTableWidgetItemH);
 pragma Convention(C,QTableWidget_currentItemChangedEvent );

 type QTableWidget_itemSelectionChangedEvent is access procedure;
 pragma Convention(C,QTableWidget_itemSelectionChangedEvent );

 type QTableWidget_cellPressedEvent is access procedure(p1,p2:integer);
 pragma Convention(C,QTableWidget_cellPressedEvent );

 type QTableWidget_cellClickedEvent is access procedure(p1,p2:integer);
 pragma Convention(C,QTableWidget_cellClickedEvent );

 type QTableWidget_cellDoubleClickedEvent is access procedure(p1,p2:integer);
 pragma Convention(C,QTableWidget_cellDoubleClickedEvent );

 type QTableWidget_cellActivatedEvent is access procedure(p1,p2:integer);
 pragma Convention(C,QTableWidget_cellActivatedEvent );

 type QTableWidget_cellEnteredEvent is access procedure(p1,p2:integer);
 pragma Convention(C,QTableWidget_cellEnteredEvent );

 type QTableWidget_cellChangedEvent is access procedure(p1,p2:integer);
 pragma Convention(C,QTableWidget_cellChangedEvent );

 type QTableWidget_currentCellChangedEvent  is access procedure(p1,p2,p3,p4:integer);
 pragma Convention(C,QTableWidget_currentCellChangedEvent );
 
 procedure QTableWidget_signal_slot_itemPressed(handle: not null QTableWidgetH; hook:QTableWidget_itemPressedEvent);
 pragma Import(C,QTableWidget_signal_slot_itemPressed, "QTableWidget_signal_slot_itemPressed");
 
 procedure QTableWidget_signal_slot_itemClicked(handle: not null QTableWidgetH; hook:QTableWidget_itemClickedEvent);
 pragma Import(C,QTableWidget_signal_slot_itemClicked, "QTableWidget_signal_slot_itemClicked");
 
 procedure QTableWidget_signal_slot_itemDoubleClicked(handle: not null QTableWidgetH; hook:QTableWidget_itemDoubleClickedEvent);
 pragma Import(C,QTableWidget_signal_slot_itemDoubleClicked, "QTableWidget_signal_slot_itemDoubleClicked");
 
 procedure QTableWidget_signal_slot_itemActivated(handle: not null QTableWidgetH; hook:QTableWidget_itemActivatedEvent);
 pragma Import(C,QTableWidget_signal_slot_itemActivated, "QTableWidget_signal_slot_itemActivated");
 
 procedure QTableWidget_signal_slot_itemEntered(handle: not null QTableWidgetH; hook:QTableWidget_itemEnteredEvent);
 pragma Import(C,QTableWidget_signal_slot_itemEntered, "QTableWidget_signal_slot_itemEntered");
 
 procedure QTableWidget_signal_slot_itemChanged(handle: not null QTableWidgetH; hook:QTableWidget_itemChangedEvent);
 pragma Import(C,QTableWidget_signal_slot_itemChanged, "QTableWidget_signal_slot_itemChanged");
 
 procedure QTableWidget_signal_slot_currentItemChanged(handle: not null QTableWidgetH; hook:QTableWidget_currentItemChangedEvent);
 pragma Import(C,QTableWidget_signal_slot_currentItemChanged, "QTableWidget_signal_slot_currentItemChanged");
 
 procedure QTableWidget_signal_slot_itemSelectionChanged(handle: not null QTableWidgetH; hook:QTableWidget_itemSelectionChangedEvent);
 pragma Import(C,QTableWidget_signal_slot_itemSelectionChanged, "QTableWidget_signal_slot_itemSelectionChanged");
 
 procedure QTableWidget_signal_slot_cellPressed(handle: not null QTableWidgetH; hook:QTableWidget_cellPressedEvent);
 pragma Import(C,QTableWidget_signal_slot_cellPressed, "QTableWidget_signal_slot_cellPressed");
 
 procedure QTableWidget_signal_slot_cellClicked(handle: not null QTableWidgetH; hook:QTableWidget_cellClickedEvent);
 pragma Import(C,QTableWidget_signal_slot_cellClicked, "QTableWidget_signal_slot_cellClicked");
 
 procedure QTableWidget_signal_slot_cellDoubleClicked(handle: not null QTableWidgetH; hook:QTableWidget_cellDoubleClickedEvent);
 pragma Import(C,QTableWidget_signal_slot_cellDoubleClicked, "QTableWidget_signal_slot_cellDoubleClicked");
 
 procedure QTableWidget_signal_slot_cellActivated(handle: not null QTableWidgetH; hook:QTableWidget_cellActivatedEvent);
 pragma Import(C,QTableWidget_signal_slot_cellActivated, "QTableWidget_signal_slot_cellActivated");
 
 procedure QTableWidget_signal_slot_cellEntered(handle: not null QTableWidgetH; hook:QTableWidget_cellEnteredEvent);
 pragma Import(C,QTableWidget_signal_slot_cellEntered, "QTableWidget_signal_slot_cellEntered");
 
 procedure QTableWidget_signal_slot_cellChanged(handle: not null QTableWidgetH; hook:QTableWidget_cellChangedEvent);
 pragma Import(C,QTableWidget_signal_slot_cellChanged, "QTableWidget_signal_slot_cellChanged");
 
 procedure QTableWidget_signal_slot_currentCellChanged(handle: not null QTableWidgetH; hook:QTableWidget_currentCellChangedEvent);
 pragma Import(C,QTableWidget_signal_slot_currentCellChanged, "QTableWidget_signal_slot_currentCellChanged");
 
---------------------------------------------------------------------------------------------------------------------
 function  QTableWidgetSelectionRange_create(top:integer; left:integer; bottom:integer; right:integer) return QTableWidgetSelectionRangeH;
 function  QTableWidgetSelectionRange_create(other: QTableWidgetSelectionRangeH) return QTableWidgetSelectionRangeH;
 function  QTableWidgetItem_create(text:QStringH; item_type: integer := DefaultType) return QTableWidgetItemH;
 function  QTableWidgetItem_create(icon:QIconH; text:QStringH; item_type: integer := DefaultType) return QTableWidgetItemH;
 function  QTableWidgetItem_create(other: QTableWidgetItemH) return QTableWidgetItemH;
 function  QTableWidget_create(rows: integer; columns:integer; parent:QWidgetH) return QTableWidgetH;
 procedure QTableWidget_setCurrentItem(handle: not null  QTableWidgetH; item: QTableWidgetItemH; command: quint);
 procedure QTableWidget_setCurrentCell(handle: not null  QTableWidgetH; row: integer; column:integer; command: quint);
 function  QTableWidget_itemAt(handle: not null  QTableWidgetH; x:integer; y:integer) return  QTableWidgetItemH;

end     Qt.QTableWidget;
