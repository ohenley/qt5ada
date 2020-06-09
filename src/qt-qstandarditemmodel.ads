--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QStandardItemModel  is

 function QStandardItem_create return  QStandardItemH;
 pragma Import(C,QStandardItem_create,"QStandardItem_create");

 procedure QStandardItem_destroy(handle: not null  QStandardItemH);
 pragma Import(C,QStandardItem_destroy,"QStandardItem_destroy");

 function QStandardItem_create2(text:QStringH) return  QStandardItemH;
 pragma Import(C,QStandardItem_create2,"QStandardItem_create2");

 function QStandardItem_create3(icon:QIconH; text:QStringH) return  QStandardItemH;
 pragma Import(C,QStandardItem_create3,"QStandardItem_create3");

 function QStandardItem_create4(rows:integer; columns:integer) return  QStandardItemH;
 pragma Import(C,QStandardItem_create4,"QStandardItem_create4");

 function QStandardItem_data(handle: not null  QStandardItemH; role:QtItemDataRole := QtEditRole) return  QVariantH;
 pragma Import(C,QStandardItem_data,"QStandardItem_data");

 procedure QStandardItem_setData(handle: not null  QStandardItemH; value: QVariantH; role:QtItemDataRole := QtEditRole);
 pragma Import(C,QStandardItem_setData,"QStandardItem_setData");

 function QStandardItem_text(handle: not null  QStandardItemH) return  QStringH;
 pragma Import(C,QStandardItem_text,"QStandardItem_text");

 procedure QStandardItem_setText(handle: not null  QStandardItemH; text:QStringH);
 pragma Import(C,QStandardItem_setText,"QStandardItem_setText");

 function QStandardItem_icon(handle: not null  QStandardItemH) return  QIconH;
 pragma Import(C,QStandardItem_icon,"QStandardItem_icon");

 procedure QStandardItem_setIcon(handle: not null  QStandardItemH; icon:QIconH);
 pragma Import(C,QStandardItem_setIcon,"QStandardItem_setIcon");

 function QStandardItem_toolTip(handle: not null  QStandardItemH) return  QStringH;
 pragma Import(C,QStandardItem_toolTip,"QStandardItem_toolTip");

 procedure QStandardItem_setToolTip(handle: not null  QStandardItemH; toolTip: QStringH);
 pragma Import(C,QStandardItem_setToolTip,"QStandardItem_setToolTip");

 function QStandardItem_statusTip(handle: not null  QStandardItemH) return  QStringH;
 pragma Import(C,QStandardItem_statusTip,"QStandardItem_statusTip");

 procedure QStandardItem_setStatusTip(handle: not null  QStandardItemH; statusTip:QStringH);
 pragma Import(C,QStandardItem_setStatusTip,"QStandardItem_setStatusTip");

 function  QStandardItem_whatsThis(handle: not null  QStandardItemH) return  QStringH;
 pragma Import(C,QStandardItem_whatsThis,"QStandardItem_whatsThis");

 procedure QStandardItem_setWhatsThis(handle: not null  QStandardItemH; whatsThis:QStringH);
 pragma Import(C,QStandardItem_setWhatsThis,"QStandardItem_setWhatsThis");

 function  QStandardItem_sizeHint(handle: not null  QStandardItemH) return  QSizeH;
 pragma Import(C,QStandardItem_sizeHint,"QStandardItem_sizeHint");

 procedure QStandardItem_setSizeHint(handle: not null  QStandardItemH; sizeHint:QSizeH);
 pragma Import(C,QStandardItem_setSizeHint,"QStandardItem_setSizeHint");

 function  QStandardItem_font(handle: not null  QStandardItemH) return  QFontH;
 pragma Import(C,QStandardItem_font,"QStandardItem_font");

 procedure QStandardItem_setFont(handle: not null  QStandardItemH; font:QFontH);
 pragma Import(C,QStandardItem_setFont,"QStandardItem_setFont");

 function  QStandardItem_textAlignment(handle: not null  QStandardItemH) return quint;
 pragma Import(C,QStandardItem_textAlignment,"QStandardItem_textAlignment");

 procedure QStandardItem_setTextAlignment(handle: not null  QStandardItemH; textAlignment:quint);
 pragma Import(C,QStandardItem_setTextAlignment,"QStandardItem_setTextAlignment");

 function  QStandardItem_background(handle: not null  QStandardItemH) return  QBrushH;
 pragma Import(C,QStandardItem_background,"QStandardItem_background");

 procedure QStandardItem_setBackground(handle: not null  QStandardItemH; brush: QBrushH);
 pragma Import(C,QStandardItem_setBackground,"QStandardItem_setBackground");

 function  QStandardItem_foreground(handle: not null  QStandardItemH) return  QBrushH;
 pragma Import(C,QStandardItem_foreground,"QStandardItem_foreground");

 procedure QStandardItem_setForeground(handle: not null  QStandardItemH; brush: QBrushH); 
 pragma Import(C,QStandardItem_setForeground,"QStandardItem_setForeground");

 function  QStandardItem_checkState(handle: not null  QStandardItemH) return  QtCheckState;
 pragma Import(C,QStandardItem_checkState,"QStandardItem_checkState");

 procedure QStandardItem_setCheckState(handle: not null  QStandardItemH; checkState: QtCheckState);
 pragma Import(C,QStandardItem_setCheckState,"QStandardItem_setCheckState");

 function  QStandardItem_accessibleText(handle: not null  QStandardItemH) return  QStringH;
 pragma Import(C,QStandardItem_accessibleText,"QStandardItem_accessibleText");

 procedure QStandardItem_setAccessibleText(handle: not null  QStandardItemH; accessibleText: QStringH);
 pragma Import(C,QStandardItem_setAccessibleText,"QStandardItem_setAccessibleText");

 function  QStandardItem_accessibleDescription(handle: not null  QStandardItemH) return  QStringH;
 pragma Import(C,QStandardItem_accessibleDescription,"QStandardItem_accessibleDescription");

 procedure QStandardItem_setAccessibleDescription(handle: not null  QStandardItemH; accessibleDescription: QStringH);
 pragma Import(C,QStandardItem_setAccessibleDescription,"QStandardItem_setAccessibleDescription");

 function  QStandardItem_flags(handle: not null  QStandardItemH) return quint;
 pragma Import(C,QStandardItem_flags,"QStandardItem_flags");

 procedure QStandardItem_setFlags(handle: not null  QStandardItemH; flags: quint);
 pragma Import(C,QStandardItem_setFlags,"QStandardItem_setFlags");

 function  QStandardItem_isEnabled(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_isEnabled,"QStandardItem_isEnabled");

 procedure QStandardItem_setEnabled(handle: not null  QStandardItemH; enabled:boolean);
 pragma Import(C,QStandardItem_setEnabled,"QStandardItem_setEnabled");

 function  QStandardItem_isEditable(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_isEditable,"QStandardItem_isEditable");

 procedure QStandardItem_setEditable(handle: not null  QStandardItemH; editable: boolean);
 pragma Import(C,QStandardItem_setEditable,"QStandardItem_setEditable");

 function  QStandardItem_isSelectable(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_isSelectable,"QStandardItem_isSelectable");

 procedure QStandardItem_setSelectable(handle: not null  QStandardItemH; selectable: boolean);
 pragma Import(C,QStandardItem_setSelectable,"QStandardItem_setSelectable");

 function  QStandardItem_isCheckable(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_isCheckable,"QStandardItem_isCheckable");

 procedure QStandardItem_setCheckable(handle: not null  QStandardItemH; checkable: boolean);
 pragma Import(C,QStandardItem_setCheckable,"QStandardItem_setCheckable");

 function  QStandardItem_isTristate(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_isTristate,"QStandardItem_isTristate");

 procedure QStandardItem_setTristate(handle: not null  QStandardItemH; tristate: boolean);
 pragma Import(C,QStandardItem_setTristate,"QStandardItem_setTristate");

 function  QStandardItem_isDragEnabled(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_isDragEnabled,"QStandardItem_isDragEnabled");

 procedure QStandardItem_setDragEnabled(handle: not null  QStandardItemH; dragEnabled: boolean);
 pragma Import(C,QStandardItem_setDragEnabled,"QStandardItem_setDragEnabled");

 function  QStandardItem_isDropEnabled(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_isDropEnabled,"QStandardItem_isDropEnabled");

 procedure QStandardItem_setDropEnabled(handle: not null  QStandardItemH; dropEnabled: boolean);
 pragma Import(C,QStandardItem_setDropEnabled,"QStandardItem_setDropEnabled");

 function  QStandardItem_parent(handle: not null  QStandardItemH) return  QStandardItemH;
 pragma Import(C,QStandardItem_parent,"QStandardItem_parent");

 function  QStandardItem_row(handle: not null  QStandardItemH) return  integer;
 pragma Import(C,QStandardItem_row,"QStandardItem_row");

 function  QStandardItem_column(handle: not null  QStandardItemH) return  integer;
 pragma Import(C,QStandardItem_column,"QStandardItem_column");

 function  QStandardItem_index(handle: not null  QStandardItemH) return  QModelIndexH;
 pragma Import(C,QStandardItem_index,"QStandardItem_index");

 function  QStandardItem_model(handle: not null  QStandardItemH) return  QStandardItemModelH;
 pragma Import(C,QStandardItem_model,"QStandardItem_model");

 function  QStandardItem_rowCount(handle: not null  QStandardItemH) return  integer;
 pragma Import(C,QStandardItem_rowCount,"QStandardItem_rowCount");

 procedure QStandardItem_setRowCount(handle: not null  QStandardItemH; rows:integer);
 pragma Import(C,QStandardItem_setRowCount,"QStandardItem_setRowCount");

 function  QStandardItem_columnCount(handle: not null  QStandardItemH) return  integer;
 pragma Import(C,QStandardItem_columnCount,"QStandardItem_columnCount");

 procedure QStandardItem_setColumnCount(handle: not null  QStandardItemH; columns:integer);
 pragma Import(C,QStandardItem_setColumnCount,"QStandardItem_setColumnCount");

 function  QStandardItem_hasChildren(handle: not null  QStandardItemH) return  boolean;
 pragma Import(C,QStandardItem_hasChildren,"QStandardItem_hasChildren");

 function  QStandardItem_child(handle: not null  QStandardItemH; row:integer; column:integer) return  QStandardItemH;
 pragma Import(C,QStandardItem_child,"QStandardItem_child");

 procedure QStandardItem_setChild(handle: not null  QStandardItemH; row:integer; column:integer; item: QStandardItemH);
 pragma Import(C,QStandardItem_setChild,"QStandardItem_setChild");

 procedure QStandardItem_setChild2(handle: not null  QStandardItemH; row:integer; item: QStandardItemH);
 pragma Import(C,QStandardItem_setChild2,"QStandardItem_setChild2");

 procedure QStandardItem_insertRow(handle: not null  QStandardItemH; row:integer; items: QObjectListH);
 pragma Import(C,QStandardItem_insertRow,"QStandardItem_insertRow");

 procedure QStandardItem_insertColumn(handle: not null  QStandardItemH; column:integer; items: QObjectListH);
 pragma Import(C,QStandardItem_insertColumn,"QStandardItem_insertColumn");

 procedure QStandardItem_insertRows(handle: not null  QStandardItemH; row:integer; items: QObjectListH);
 pragma Import(C,QStandardItem_insertRows,"QStandardItem_insertRows");

 procedure QStandardItem_insertRows2(handle: not null  QStandardItemH; row:integer; count: integer);
 pragma Import(C,QStandardItem_insertRows2,"QStandardItem_insertRows2");

 procedure QStandardItem_insertColumns(handle: not null  QStandardItemH; column:integer; count: integer);
 pragma Import(C,QStandardItem_insertColumns,"QStandardItem_insertColumns");

 procedure QStandardItem_removeRow(handle: not null  QStandardItemH; row:integer);
 pragma Import(C,QStandardItem_removeRow,"QStandardItem_removeRow");

 procedure QStandardItem_removeColumn(handle: not null  QStandardItemH; column:integer);
 pragma Import(C,QStandardItem_removeColumn,"QStandardItem_removeColumn");

 procedure QStandardItem_removeRows(handle: not null  QStandardItemH; row:integer; count: integer);
 pragma Import(C,QStandardItem_removeRows,"QStandardItem_removeRows");

 procedure QStandardItem_removeColumns(handle: not null  QStandardItemH; column:integer; count: integer);
 pragma Import(C,QStandardItem_removeColumns,"QStandardItem_removeColumns");

 procedure QStandardItem_appendRow(handle: not null  QStandardItemH; items: QObjectListH);
 pragma Import(C,QStandardItem_appendRow,"QStandardItem_appendRow");

 procedure QStandardItem_appendRows(handle: not null  QStandardItemH; items: QObjectListH);
 pragma Import(C,QStandardItem_appendRows,"QStandardItem_appendRows");

 procedure QStandardItem_appendColumn(handle: not null  QStandardItemH; items: QObjectListH);
 pragma Import(C,QStandardItem_appendColumn,"QStandardItem_appendColumn");

 procedure QStandardItem_insertRow2(handle: not null  QStandardItemH; row:integer; item: QStandardItemH);
 pragma Import(C,QStandardItem_insertRow2,"QStandardItem_insertRow2");

 procedure QStandardItem_appendRow2(handle: not null  QStandardItemH; item: QStandardItemH);
 pragma Import(C,QStandardItem_appendRow2,"QStandardItem_appendRow2");

 function  QStandardItem_takeChild(handle: not null  QStandardItemH; row:integer; column:integer) return  QStandardItemH;
 pragma Import(C,QStandardItem_takeChild,"QStandardItem_takeChild");

 function  QStandardItem_takeRow(handle: not null  QStandardItemH; row:integer) return QObjectListH;
 pragma Import(C,QStandardItem_takeRow,"QStandardItem_takeRow");

 function  QStandardItem_takeColumn(handle: not null  QStandardItemH; column:integer) return QObjectListH;
 pragma Import(C,QStandardItem_takeColumn,"QStandardItem_takeColumn");

 procedure QStandardItem_sortChildren(handle: not null  QStandardItemH; column:integer; order:QtSortOrder);
 pragma Import(C,QStandardItem_sortChildren,"QStandardItem_sortChildren");

 function  QStandardItem_clone(handle: not null  QStandardItemH) return  QStandardItemH;
 pragma Import(C,QStandardItem_clone,"QStandardItem_clone");

 function  QStandardItem_type(handle: not null  QStandardItemH) return  integer;
 pragma Import(C,QStandardItem_type,"QStandardItem_type");

 procedure QStandardItem_read(handle: not null  QStandardItemH; inp: QDataStreamH);
 pragma Import(C,QStandardItem_read,"QStandardItem_read");

 procedure QStandardItem_write(handle: not null  QStandardItemH; outp: QDataStreamH);
 pragma Import(C,QStandardItem_write,"QStandardItem_write");

 function  QStandardItemModel_create(parent:QObjectH) return  QStandardItemModelH;
 pragma Import(C,QStandardItemModel_create,"QStandardItemModel_create");

 procedure QStandardItemModel_destroy(handle: not null  QStandardItemModelH);
 pragma Import(C,QStandardItemModel_destroy,"QStandardItemModel_destroy");

 function  QStandardItemModel_create2(rows:integer; columns:integer; parent:QObjectH) return  QStandardItemModelH;
 pragma Import(C,QStandardItemModel_create2,"QStandardItemModel_create2");

 function  QStandardItemModel_index(handle: not null  QStandardItemModelH; row:integer; column:integer; parent: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QStandardItemModel_index,"QStandardItemModel_index");

 function  QStandardItemModel_parent(handle: not null  QStandardItemModelH; child: QModelIndexH) return  QModelIndexH;
 pragma Import(C,QStandardItemModel_parent,"QStandardItemModel_parent");

 function  QStandardItemModel_rowCount(handle: not null  QStandardItemModelH; parent: QModelIndexH) return  integer;
 pragma Import(C,QStandardItemModel_rowCount,"QStandardItemModel_rowCount");

 function  QStandardItemModel_columnCount(handle: not null  QStandardItemModelH; parent: QModelIndexH) return  integer;
 pragma Import(C,QStandardItemModel_columnCount,"QStandardItemModel_columnCount");

 function  QStandardItemModel_hasChildren(handle: not null  QStandardItemModelH; parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_hasChildren,"QStandardItemModel_hasChildren");

 function  QStandardItemModel_data(handle: not null  QStandardItemModelH; index: QModelIndexH; role: QtItemDataRole := QtEditRole) return  QVariantH;
 pragma Import(C,QStandardItemModel_data,"QStandardItemModel_data");

 function  QStandardItemModel_setData(handle: not null  QStandardItemModelH; index: QModelIndexH; value: QVariantH; role: QtItemDataRole := QtEditRole) return  boolean;
 pragma Import(C,QStandardItemModel_setData,"QStandardItemModel_setData");

 function  QStandardItemModel_headerData(handle: not null  QStandardItemModelH; section: integer;  orientation: QtOrientation; role: QtItemDataRole := QtEditRole) return  QVariantH;
 pragma Import(C,QStandardItemModel_headerData,"QStandardItemModel_headerData");

 function  QStandardItemModel_setHeaderData(handle: not null  QStandardItemModelH; section: integer; orientation: QtOrientation; value: QVariantH; role: QtItemDataRole := QtEditRole) return boolean;
 pragma Import(C,QStandardItemModel_setHeaderData,"QStandardItemModel_setHeaderData");

 function  QStandardItemModel_insertRows(handle: not null  QStandardItemModelH; row:integer; count: integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_insertRows,"QStandardItemModel_insertRows");

 function  QStandardItemModel_insertColumns(handle: not null  QStandardItemModelH; column:integer; count: integer;  parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_insertColumns,"QStandardItemModel_insertColumns");

 function  QStandardItemModel_removeRows(handle: not null  QStandardItemModelH; row:integer; count: integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_removeRows,"QStandardItemModel_removeRows");

 function  QStandardItemModel_removeColumns(handle: not null  QStandardItemModelH; column:integer; count: integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_removeColumns,"QStandardItemModel_removeColumns");

 function  QStandardItemModel_flags(handle: not null  QStandardItemModelH; index: QModelIndexH) return quint;
 pragma Import(C,QStandardItemModel_flags,"QStandardItemModel_flags");

 function  QStandardItemModel_supportedDropActions(handle: not null  QStandardItemModelH) return quint;
 pragma Import(C,QStandardItemModel_supportedDropActions,"QStandardItemModel_supportedDropActions");

 procedure QStandardItemModel_clear(handle: not null  QStandardItemModelH);
 pragma Import(C,QStandardItemModel_clear,"QStandardItemModel_clear");

 procedure QStandardItemModel_sort(handle: not null  QStandardItemModelH; column:integer; order: QtSortOrder);
 pragma Import(C,QStandardItemModel_sort,"QStandardItemModel_sort");

 function  QStandardItemModel_itemFromIndex(handle: not null  QStandardItemModelH; index: QModelIndexH) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_itemFromIndex,"QStandardItemModel_itemFromIndex");

 function  QStandardItemModel_indexFromItem(handle: not null  QStandardItemModelH; item: QStandardItemH) return  QModelIndexH;
 pragma Import(C,QStandardItemModel_indexFromItem,"QStandardItemModel_indexFromItem");

 function  QStandardItemModel_item(handle: not null  QStandardItemModelH; row:integer; column:integer) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_item,"QStandardItemModel_item");

 procedure QStandardItemModel_setItem(handle: not null  QStandardItemModelH; row:integer; column:integer; item: QStandardItemH);
 pragma Import(C,QStandardItemModel_setItem,"QStandardItemModel_setItem");

 procedure QStandardItemModel_setItem2(handle: not null  QStandardItemModelH; row:integer; item: QStandardItemH);
 pragma Import(C,QStandardItemModel_setItem2,"QStandardItemModel_setItem2");

 function  QStandardItemModel_invisibleRootItem(handle: not null  QStandardItemModelH) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_invisibleRootItem,"QStandardItemModel_invisibleRootItem");

 function  QStandardItemModel_horizontalHeaderItem(handle: not null  QStandardItemModelH; column:integer) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_horizontalHeaderItem,"QStandardItemModel_horizontalHeaderItem");

 procedure QStandardItemModel_setHorizontalHeaderItem(handle: not null  QStandardItemModelH; column:integer; item: QStandardItemH);
 pragma Import(C,QStandardItemModel_setHorizontalHeaderItem,"QStandardItemModel_setHorizontalHeaderItem");

 function  QStandardItemModel_verticalHeaderItem(handle: not null  QStandardItemModelH; row:integer) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_verticalHeaderItem,"QStandardItemModel_verticalHeaderItem");

 procedure QStandardItemModel_setVerticalHeaderItem(handle: not null  QStandardItemModelH; row:integer; item: QStandardItemH);
 pragma Import(C,QStandardItemModel_setVerticalHeaderItem,"QStandardItemModel_setVerticalHeaderItem");

 procedure QStandardItemModel_setHorizontalHeaderLabels(handle: not null  QStandardItemModelH; labels: QStringListH);
 pragma Import(C,QStandardItemModel_setHorizontalHeaderLabels,"QStandardItemModel_setHorizontalHeaderLabels");

 procedure QStandardItemModel_setVerticalHeaderLabels(handle: not null  QStandardItemModelH; labels: QStringListH);
 pragma Import(C,QStandardItemModel_setVerticalHeaderLabels,"QStandardItemModel_setVerticalHeaderLabels");

 procedure QStandardItemModel_setRowCount(handle: not null  QStandardItemModelH; rows:integer);
 pragma Import(C,QStandardItemModel_setRowCount,"QStandardItemModel_setRowCount");

 procedure QStandardItemModel_setColumnCount(handle: not null  QStandardItemModelH; columns:integer);
 pragma Import(C,QStandardItemModel_setColumnCount,"QStandardItemModel_setColumnCount");

 procedure QStandardItemModel_appendRow(handle: not null  QStandardItemModelH; items: QObjectListH);
 pragma Import(C,QStandardItemModel_appendRow,"QStandardItemModel_appendRow");

 procedure QStandardItemModel_appendColumn(handle: not null  QStandardItemModelH; items: QObjectListH);
 pragma Import(C,QStandardItemModel_appendColumn,"QStandardItemModel_appendColumn");

 procedure QStandardItemModel_appendRow2(handle: not null  QStandardItemModelH; item: QStandardItemH);
 pragma Import(C,QStandardItemModel_appendRow2,"QStandardItemModel_appendRow2");

 procedure QStandardItemModel_insertRow(handle: not null  QStandardItemModelH; row:integer; items: QObjectListH);
 pragma Import(C,QStandardItemModel_insertRow,"QStandardItemModel_insertRow");

 procedure QStandardItemModel_insertColumn(handle: not null  QStandardItemModelH; column:integer; items: QObjectListH);
 pragma Import(C,QStandardItemModel_insertColumn,"QStandardItemModel_insertColumn");

 procedure QStandardItemModel_insertRow2(handle: not null  QStandardItemModelH; row:integer; item: QStandardItemH);
 pragma Import(C,QStandardItemModel_insertRow2,"QStandardItemModel_insertRow2");

 function  QStandardItemModel_insertRow3(handle: not null  QStandardItemModelH; row:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_insertRow3,"QStandardItemModel_insertRow3");

 function  QStandardItemModel_insertColumn2(handle: not null  QStandardItemModelH; column:integer; parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_insertColumn2,"QStandardItemModel_insertColumn2");

 function  QStandardItemModel_takeItem(handle: not null  QStandardItemModelH; row:integer; column:integer) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_takeItem,"QStandardItemModel_takeItem");

 function  QStandardItemModel_takeRow(handle: not null  QStandardItemModelH; row:integer) return QObjectListH;
 pragma Import(C,QStandardItemModel_takeRow,"QStandardItemModel_takeRow");

 function  QStandardItemModel_takeColumn(handle: not null  QStandardItemModelH; column:integer) return QObjectListH;
 pragma Import(C,QStandardItemModel_takeColumn,"QStandardItemModel_takeColumn");

 function  QStandardItemModel_takeHorizontalHeaderItem(handle: not null  QStandardItemModelH; column:integer) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_takeHorizontalHeaderItem,"QStandardItemModel_takeHorizontalHeaderItem");

 function  QStandardItemModel_takeVerticalHeaderItem(handle: not null  QStandardItemModelH; row:integer) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_takeVerticalHeaderItem,"QStandardItemModel_takeVerticalHeaderItem");

 function  QStandardItemModel_itemPrototype(handle: not null  QStandardItemModelH) return  QStandardItemH;
 pragma Import(C,QStandardItemModel_itemPrototype,"QStandardItemModel_itemPrototype");

 procedure QStandardItemModel_setItemPrototype(handle: not null  QStandardItemModelH; item: QStandardItemH);
 pragma Import(C,QStandardItemModel_setItemPrototype,"QStandardItemModel_setItemPrototype");

 function  QStandardItemModel_findItems(handle: not null  QStandardItemModelH; text:QStringH;flags: quint; column:integer) return QObjectListH;
 pragma Import(C,QStandardItemModel_findItems,"QStandardItemModel_findItems");

 function  QStandardItemModel_sortRole(handle: not null  QStandardItemModelH) return integer;
 pragma Import(C,QStandardItemModel_sortRole,"QStandardItemModel_sortRole");

 procedure QStandardItemModel_setSortRole(handle: not null  QStandardItemModelH; role: integer);
 pragma Import(C,QStandardItemModel_setSortRole,"QStandardItemModel_setSortRole");
 function  QStandardItemModel_rowCount2(handle: not null QStandardItemModelH) return integer;
 pragma Import(C,QStandardItemModel_rowCount2, "QStandardItemModel_rowCount2");
 
 function  QStandardItemModel_index2(handle: not null QStandardItemModelH;row,column:integer) return QModelIndexH;
 pragma Import(C,QStandardItemModel_index2, "QStandardItemModel_index2");
 
 function  QStandardItemModel_columnCount2(handle: not null QStandardItemModelH) return integer;
 pragma Import(C,QStandardItemModel_columnCount2, "QStandardItemModel_columnCount2");
 
 function  QStandardItemModel_hasChildren2(handle: not null QStandardItemModelH) return boolean;
 pragma Import(C,QStandardItemModel_hasChildren2, "QStandardItemModel_hasChildren2");
 
 function  QStandardItemModel_insertRows2(handle: not null QStandardItemModelH;row,count:integer)return boolean;
 pragma Import(C,QStandardItemModel_insertRows2, "QStandardItemModel_insertRows2");
 
 function  QStandardItemModel_insertColumns2(handle: not null QStandardItemModelH; column,count:integer)return boolean;
 pragma Import(C,QStandardItemModel_insertColumns2, "QStandardItemModel_insertColumns2");
 
 function  QStandardItemModel_removeRows2(handle: not null QStandardItemModelH;row,count:integer) return boolean;
 pragma Import(C,QStandardItemModel_removeRows2, "QStandardItemModel_removeRows2");
 
 function  QStandardItemModel_removeColumns2(handle: not null QStandardItemModelH;column,count:integer) return boolean;
 pragma Import(C,QStandardItemModel_removeColumns2, "QStandardItemModel_removeColumns2");
 
 function  QStandardItemModel_insertRow4(handle: not null QStandardItemModelH;row:integer) return boolean;
 pragma Import(C,QStandardItemModel_insertRow4, "QStandardItemModel_insertRow4");
 
 function  QStandardItemModel_insertColumn3(handle: not null QStandardItemModelH;column:integer) return boolean;
 pragma Import(C,QStandardItemModel_insertColumn3, "QStandardItemModel_insertColumn3");
 
 function  QStandardItemModel_mimeTypes(handle: not null QStandardItemModelH) return QStringListH;
 pragma Import(C,QStandardItemModel_mimeTypes, "QStandardItemModel_mimeTypes");
 
 function  QStandardItemModel_mimeData(handle: not null QStandardItemModelH; indexes :QModelIndexListH) return QMimeDataH;
 pragma Import(C,QStandardItemModel_mimeData, "QStandardItemModel_mimeData");
 
 function  QStandardItemModel_dropMimeData(handle: not null QStandardItemModelH;data:QMimeDataH;action: QtDropAction;row,column:integer;parent: QModelIndexH) return  boolean;
 pragma Import(C,QStandardItemModel_dropMimeData, "QStandardItemModel_dropMimeData");
 
 function  QStandardItemModel_itemData(handle: not null QStandardItemModelH;index:QModelIndexH) return QObjectMapH;
 pragma Import(C,QStandardItemModel_itemData, "QStandardItemModel_itemData");
 
 function  QStandardItemModel_setItemData(handle: not null QStandardItemModelH;index:QModelIndexH; roles:QObjectMapH) return boolean;
 pragma Import(C,QStandardItemModel_setItemData, "QStandardItemModel_setItemData");

 type  QStandardItemModel_itemChangedEvent is access procedure (item: QStandardItemH);
 pragma Convention(C,QStandardItemModel_itemChangedEvent);
 
 procedure QStandardItemModel_signal_slot_itemChanged(handle: not null QStandardItemModelH; hook:QStandardItemModel_itemChangedEvent);
 pragma Import(C,QStandardItemModel_signal_slot_itemChanged, "QStandardItemModel_signal_slot_itemChanged");

-----------------------------------------------------------------------------------------------
 function  QStandardItem_create(text:QStringH) return  QStandardItemH;
 function  QStandardItem_create(icon:QIconH; text:QStringH) return  QStandardItemH;
 function  QStandardItem_create(rows:integer; columns:integer) return  QStandardItemH;
 procedure QStandardItem_setChild(handle: not null  QStandardItemH; row:integer; item: QStandardItemH);
 procedure QStandardItem_insertRows(handle: not null  QStandardItemH; row:integer; count: integer);
 procedure QStandardItem_insertRow(handle: not null  QStandardItemH; row:integer; item: QStandardItemH);
 procedure QStandardItem_appendRow(handle: not null  QStandardItemH; item: QStandardItemH);
 function  QStandardItemModel_create(rows:integer; columns:integer; parent:QObjectH) return  QStandardItemModelH;
 procedure QStandardItemModel_setItem(handle: not null  QStandardItemModelH; row:integer; item: QStandardItemH);
 procedure QStandardItemModel_appendRow(handle: not null  QStandardItemModelH; item: QStandardItemH);
 procedure QStandardItemModel_insertRow(handle: not null  QStandardItemModelH; row:integer; item: QStandardItemH);
 function  QStandardItemModel_insertRow(handle: not null  QStandardItemModelH; row:integer; parent: QModelIndexH) return  boolean;

 function  QStandardItemModel_index(handle: not null QStandardItemModelH;row,column:integer) return QModelIndexH;
 function  QStandardItemModel_columnCount(handle: not null QStandardItemModelH) return integer;
 function  QStandardItemModel_hasChildren(handle: not null QStandardItemModelH) return boolean;
 function  QStandardItemModel_insertRows(handle: not null QStandardItemModelH;row,count:integer)return boolean;
 function  QStandardItemModel_insertColumns(handle: not null QStandardItemModelH; column,count:integer)return boolean;
 function  QStandardItemModel_removeRows(handle: not null QStandardItemModelH;row,count:integer) return boolean;
 function  QStandardItemModel_removeColumns(handle: not null QStandardItemModelH;column,count:integer) return boolean;
 function  QStandardItemModel_insertRow(handle: not null QStandardItemModelH;row:integer) return boolean;
 function  QStandardItemModel_insertColumn(handle: not null QStandardItemModelH;column:integer) return boolean;

end  Qt.QStandardItemModel;
