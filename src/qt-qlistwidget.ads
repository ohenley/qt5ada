--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractItemView; use Qt.QAbstractItemView;
package Qt.QListWidget          is

debugListWidget : QListWidgetH := null;

type QListWidgetItemItemType is (QListWidgetItemType,  QListWidgetItemUserType);

for QListWidgetItemItemType'size use cardinal'size;
for QListWidgetItemItemType use (QListWidgetItemType => 0,
                                 QListWidgetItemUserType => 1000 );

function QListWidgetItem_create(view: QListWidgetH := null; qtype: QListWidgetItemItemType  := QListWidgetItemType) return QListWidgetItemH;
pragma Import(C,QListWidgetItem_create,"QListWidgetItem_create");

procedure QListWidgetItem_destroy(handle: not null  QListWidgetItemH);   
pragma Import(C,QListWidgetItem_destroy,"QListWidgetItem_destroy");

function QListWidgetItem_create2(text: QStringH; view: QListWidgetH := null; qtype: QListWidgetItemItemType := QListWidgetItemType) return QListWidgetItemH;
pragma Import(C,QListWidgetItem_create2,"QListWidgetItem_create2");

function QListWidgetItem_create3(icon: QIconH; text: QStringH; view: QListWidgetH := null; qtype: QListWidgetItemItemType := QListWidgetItemType) return QListWidgetItemH;
pragma Import(C,QListWidgetItem_create3,"QListWidgetItem_create3");

function QListWidgetItem_create4(other: QListWidgetItemH) return  QListWidgetItemH;
pragma Import(C,QListWidgetItem_create4,"QListWidgetItem_create4");

function QListWidgetItem_clone(handle: not null  QListWidgetItemH) return  QListWidgetItemH;   
pragma Import(C,QListWidgetItem_clone,"QListWidgetItem_clone");

function QListWidgetItem_listWidget(handle: not null  QListWidgetItemH) return  QListWidgetH;   
pragma Import(C,QListWidgetItem_listWidget,"QListWidgetItem_listWidget");

procedure QListWidgetItem_setSelected(handle: not null  QListWidgetItemH; selected: Boolean);
pragma Import(C,QListWidgetItem_setSelected,"QListWidgetItem_setSelected");

function QListWidgetItem_isSelected(handle: not null  QListWidgetItemH) return  Boolean;   
pragma Import(C,QListWidgetItem_isSelected,"QListWidgetItem_isSelected");

procedure QListWidgetItem_setHidden(handle: not null  QListWidgetItemH; hide: Boolean);   
pragma Import(C,QListWidgetItem_setHidden,"QListWidgetItem_setHidden");

function QListWidgetItem_isHidden(handle: not null  QListWidgetItemH) return  Boolean;   
pragma Import(C,QListWidgetItem_isHidden,"QListWidgetItem_isHidden");

function QListWidgetItem_flags(handle: not null  QListWidgetItemH) return  QtItemFlags;   
pragma Import(C,QListWidgetItem_flags,"QListWidgetItem_flags");

procedure QListWidgetItem_setFlags(handle: not null  QListWidgetItemH; flags: QtItemFlags);   
pragma Import(C,QListWidgetItem_setFlags,"QListWidgetItem_setFlags");

function  QListWidgetItem_text(handle: not null  QListWidgetItemH) return QStringH;
pragma Import(C,QListWidgetItem_text,"QListWidgetItem_text");

procedure QListWidgetItem_setText(handle: not null  QListWidgetItemH; text: QStringH);   
pragma Import(C,QListWidgetItem_setText,"QListWidgetItem_setText");

function  QListWidgetItem_icon(handle: not null  QListWidgetItemH) return QIconH;
pragma Import(C,QListWidgetItem_icon,"QListWidgetItem_icon");

procedure QListWidgetItem_setIcon(handle: not null  QListWidgetItemH; icon: QIconH);   
pragma Import(C,QListWidgetItem_setIcon,"QListWidgetItem_setIcon");

function  QListWidgetItem_statusTip(handle: not null  QListWidgetItemH) return QStringH;
pragma Import(C,QListWidgetItem_statusTip,"QListWidgetItem_statusTip");

procedure QListWidgetItem_setStatusTip(handle: not null  QListWidgetItemH; statusTip: QStringH);   
pragma Import(C,QListWidgetItem_setStatusTip,"QListWidgetItem_setStatusTip");

function  QListWidgetItem_toolTip(handle: not null  QListWidgetItemH) return QStringH;
pragma Import(C,QListWidgetItem_toolTip,"QListWidgetItem_toolTip");

procedure QListWidgetItem_setToolTip(handle: not null  QListWidgetItemH; toolTip: QStringH);   
pragma Import(C,QListWidgetItem_setToolTip,"QListWidgetItem_setToolTip");

function  QListWidgetItem_whatsThis(handle: not null  QListWidgetItemH) return QStringH;
pragma Import(C,QListWidgetItem_whatsThis,"QListWidgetItem_whatsThis");

procedure QListWidgetItem_setWhatsThis(handle: not null  QListWidgetItemH; whatsThis: QStringH);   
pragma Import(C,QListWidgetItem_setWhatsThis,"QListWidgetItem_setWhatsThis");

function  QListWidgetItem_font(handle: not null  QListWidgetItemH) return QFontH;
pragma Import(C,QListWidgetItem_font,"QListWidgetItem_font");

procedure QListWidgetItem_setFont(handle: not null  QListWidgetItemH; font: QFontH);   
pragma Import(C,QListWidgetItem_setFont,"QListWidgetItem_setFont");

function QListWidgetItem_textAlignment(handle: not null  QListWidgetItemH) return  Integer;   
pragma Import(C,QListWidgetItem_textAlignment,"QListWidgetItem_textAlignment");

procedure QListWidgetItem_setTextAlignment(handle: not null  QListWidgetItemH; alignment: Integer);   
pragma Import(C,QListWidgetItem_setTextAlignment,"QListWidgetItem_setTextAlignment");

function  QListWidgetItem_backgroundColor(handle: not null  QListWidgetItemH) return QColorH;
pragma Import(C,QListWidgetItem_backgroundColor,"QListWidgetItem_backgroundColor");

procedure QListWidgetItem_setBackgroundColor(handle: not null  QListWidgetItemH; color: QColorH);   
pragma Import(C,QListWidgetItem_setBackgroundColor,"QListWidgetItem_setBackgroundColor");

function  QListWidgetItem_background(handle: not null  QListWidgetItemH) return QBrushH;
pragma Import(C,QListWidgetItem_background,"QListWidgetItem_background");

procedure QListWidgetItem_setBackground(handle: not null  QListWidgetItemH; brush: QBrushH);   
pragma Import(C,QListWidgetItem_setBackground,"QListWidgetItem_setBackground");

function  QListWidgetItem_textColor(handle: not null  QListWidgetItemH) return QColorH;
pragma Import(C,QListWidgetItem_textColor,"QListWidgetItem_textColor");

procedure QListWidgetItem_setTextColor(handle: not null  QListWidgetItemH; color: QColorH);   
pragma Import(C,QListWidgetItem_setTextColor,"QListWidgetItem_setTextColor");

function  QListWidgetItem_foreground(handle: not null  QListWidgetItemH) return  QBrushH;
pragma Import(C,QListWidgetItem_foreground,"QListWidgetItem_foreground");

procedure QListWidgetItem_setForeground(handle: not null  QListWidgetItemH; brush: QBrushH);   
pragma Import(C,QListWidgetItem_setForeground,"QListWidgetItem_setForeground");

function QListWidgetItem_checkState(handle: not null  QListWidgetItemH) return  QtCheckState;   
pragma Import(C,QListWidgetItem_checkState,"QListWidgetItem_checkState");

procedure QListWidgetItem_setCheckState(handle: not null  QListWidgetItemH; state: QtCheckState);   
pragma Import(C,QListWidgetItem_setCheckState,"QListWidgetItem_setCheckState");

function  QListWidgetItem_sizeHint(handle: not null  QListWidgetItemH) return QSizeH;
pragma Import(C,QListWidgetItem_sizeHint,"QListWidgetItem_sizeHint");

procedure QListWidgetItem_setSizeHint(handle: not null  QListWidgetItemH; size: QSizeH);   
pragma Import(C,QListWidgetItem_setSizeHint,"QListWidgetItem_setSizeHint");

function  QListWidgetItem_data(handle: not null  QListWidgetItemH;role: Integer) return  QVariantH;
pragma Import(C,QListWidgetItem_data,"QListWidgetItem_data");

procedure QListWidgetItem_setData(handle: not null  QListWidgetItemH; role: Integer; value: QVariantH);   
pragma Import(C,QListWidgetItem_setData,"QListWidgetItem_setData");

procedure QListWidgetItem_read(handle: not null  QListWidgetItemH; input: QDataStreamH);
pragma Import(C,QListWidgetItem_read,"QListWidgetItem_read");

procedure QListWidgetItem_write(handle: not null  QListWidgetItemH; output: QDataStreamH);
pragma Import(C,QListWidgetItem_write,"QListWidgetItem_write");

function QListWidgetItem_type(handle: not null  QListWidgetItemH) return  Integer;   
pragma Import(C,QListWidgetItem_type,"QListWidgetItem_type");

function QListWidget_create(parent: QWidgetH := null) return QListWidgetH;   
pragma Import(C,QListWidget_create,"QListWidget_create");

procedure QListWidget_destroy(handle: not null  QListWidgetH);   
pragma Import(C,QListWidget_destroy,"QListWidget_destroy");

function QListWidget_item(handle: not null  QListWidgetH; row: Integer) return  QListWidgetItemH;   
pragma Import(C,QListWidget_item,"QListWidget_item");

function QListWidget_row(handle: not null  QListWidgetH; item: QListWidgetItemH) return  Integer;   
pragma Import(C,QListWidget_row,"QListWidget_row");

procedure QListWidget_insertItem(handle: not null  QListWidgetH; row: Integer; item: QListWidgetItemH);    
pragma Import(C,QListWidget_insertItem,"QListWidget_insertItem");

procedure QListWidget_insertItem2(handle: not null  QListWidgetH; row: Integer; label: QStringH);
pragma Import(C,QListWidget_insertItem2,"QListWidget_insertItem2");

procedure QListWidget_insertItems(handle: not null  QListWidgetH; row: Integer; labels: QStringListH);   
pragma Import(C,QListWidget_insertItems,"QListWidget_insertItems");

procedure QListWidget_addItem(handle: not null  QListWidgetH; label: QStringH);    
pragma Import(C,QListWidget_addItem,"QListWidget_addItem");

procedure QListWidget_addItem2(handle: not null  QListWidgetH; item: QListWidgetItemH);
pragma Import(C,QListWidget_addItem2,"QListWidget_addItem2");

procedure QListWidget_addItems(handle: not null  QListWidgetH; labels: QStringListH);   
pragma Import(C,QListWidget_addItems,"QListWidget_addItems");

function QListWidget_takeItem(handle: not null  QListWidgetH; row: Integer) return  QListWidgetItemH;   
pragma Import(C,QListWidget_takeItem,"QListWidget_takeItem");

function QListWidget_count(handle: not null  QListWidgetH) return  Integer;   
pragma Import(C,QListWidget_count,"QListWidget_count");

function QListWidget_currentItem(handle: not null  QListWidgetH) return  QListWidgetItemH;   
pragma Import(C,QListWidget_currentItem,"QListWidget_currentItem");

procedure QListWidget_setCurrentItem(handle: not null  QListWidgetH; item: QListWidgetItemH);   
pragma Import(C,QListWidget_setCurrentItem,"QListWidget_setCurrentItem");

function QListWidget_currentRow(handle: not null  QListWidgetH) return  Integer;   
pragma Import(C,QListWidget_currentRow,"QListWidget_currentRow");

procedure QListWidget_setCurrentRow(handle: not null  QListWidgetH; row: Integer);   
pragma Import(C,QListWidget_setCurrentRow,"QListWidget_setCurrentRow");

function QListWidget_itemAt(handle: not null  QListWidgetH; p: QPointH) return  QListWidgetItemH;    
pragma Import(C,QListWidget_itemAt,"QListWidget_itemAt");

function QListWidget_itemAt2(handle: not null  QListWidgetH; x: Integer; y: Integer) return  QListWidgetItemH;
pragma Import(C,QListWidget_itemAt2,"QListWidget_itemAt2");

function  QListWidget_visualItemRect(handle: not null  QListWidgetH; item: QListWidgetItemH) return QRectH;
pragma Import(C,QListWidget_visualItemRect,"QListWidget_visualItemRect");

procedure QListWidget_sortItems(handle: not null  QListWidgetH; order: QtSortOrder := QtAscendingOrder);   
pragma Import(C,QListWidget_sortItems,"QListWidget_sortItems");

procedure QListWidget_setSortingEnabled(handle: not null  QListWidgetH; enable: Boolean);   
pragma Import(C,QListWidget_setSortingEnabled,"QListWidget_setSortingEnabled");

function QListWidget_isSortingEnabled(handle: not null  QListWidgetH) return  Boolean;   
pragma Import(C,QListWidget_isSortingEnabled,"QListWidget_isSortingEnabled");

procedure QListWidget_editItem(handle: not null  QListWidgetH; item: QListWidgetItemH);   
pragma Import(C,QListWidget_editItem,"QListWidget_editItem");

procedure QListWidget_openPersistentEditor(handle: not null  QListWidgetH; item: QListWidgetItemH);   
pragma Import(C,QListWidget_openPersistentEditor,"QListWidget_openPersistentEditor");

procedure QListWidget_closePersistentEditor(handle: not null  QListWidgetH; item: QListWidgetItemH);   
pragma Import(C,QListWidget_closePersistentEditor,"QListWidget_closePersistentEditor");

function QListWidget_itemWidget(handle: not null  QListWidgetH; item: QListWidgetItemH) return  QWidgetH;   
pragma Import(C,QListWidget_itemWidget,"QListWidget_itemWidget");

procedure QListWidget_setItemWidget(handle: not null  QListWidgetH; item: QListWidgetItemH; widget: QWidgetH);   
pragma Import(C,QListWidget_setItemWidget,"QListWidget_setItemWidget");

procedure QListWidget_removeItemWidget(handle: not null  QListWidgetH; item: QListWidgetItemH);   
pragma Import(C,QListWidget_removeItemWidget,"QListWidget_removeItemWidget");

function QListWidget_isItemSelected(handle: not null  QListWidgetH; item: QListWidgetItemH) return  Boolean;   
pragma Import(C,QListWidget_isItemSelected,"QListWidget_isItemSelected");

procedure QListWidget_setItemSelected(handle: not null  QListWidgetH; item: QListWidgetItemH; selected: Boolean);
pragma Import(C,QListWidget_setItemSelected,"QListWidget_setItemSelected");

function  QListWidget_selectedItems(handle: not null  QListWidgetH) return QObjectListH;
pragma Import(C,QListWidget_selectedItems,"QListWidget_selectedItems");

function  QListWidget_findItems(handle: not null  QListWidgetH; text: QStringH; flags: QtMatchFlags) return QObjectListH;
pragma Import(C,QListWidget_findItems,"QListWidget_findItems");

function QListWidget_isItemHidden(handle: not null  QListWidgetH; item: QListWidgetItemH) return  Boolean;   
pragma Import(C,QListWidget_isItemHidden,"QListWidget_isItemHidden");

procedure QListWidget_setItemHidden(handle: not null  QListWidgetH; item: QListWidgetItemH; hide: Boolean);   
pragma Import(C,QListWidget_setItemHidden,"QListWidget_setItemHidden");

procedure QListWidget_dropEvent(handle: not null  QListWidgetH; event: QDropEventH);   
pragma Import(C,QListWidget_dropEvent,"QListWidget_dropEvent");

procedure QListWidget_scrollToItem(handle: not null  QListWidgetH; item: QListWidgetItemH; hint: QAbstractItemViewScrollHint);   
pragma Import(C,QListWidget_scrollToItem,"QListWidget_scrollToItem");

procedure QListWidget_clear(handle: not null  QListWidgetH);   
pragma Import(C,QListWidget_clear,"QListWidget_clear");

type QListWidget_itemPressedEvent is access procedure (item: QListWidgetItemH);
pragma Convention(C,QListWidget_itemPressedEvent);

type QListWidget_itemClickedEvent is access procedure (item: QListWidgetItemH);
pragma Convention(C,QListWidget_itemClickedEvent);

type QListWidget_itemDoubleClickedEvent is access procedure (item: QListWidgetItemH);
pragma Convention(C,QListWidget_itemDoubleClickedEvent);

type QListWidget_itemActivatedEvent is access procedure (item: QListWidgetItemH);
pragma Convention(C,QListWidget_itemActivatedEvent);

type QListWidget_itemEnteredEvent is access procedure (item: QListWidgetItemH);
pragma Convention(C,QListWidget_itemEnteredEvent);

type QListWidget_itemChangedEvent is access procedure (item: QListWidgetItemH);
pragma Convention(C,QListWidget_itemChangedEvent);

type QListWidget_currentItemChangedEvent is access procedure (current: QListWidgetItemH; previous: QListWidgetItemH);
pragma Convention(C,QListWidget_currentItemChangedEvent);

type QListWidget_currentTextChangedEvent is access procedure (currentText: QStringH);
pragma Convention(C,QListWidget_currentTextChangedEvent);

type QListWidget_currentRowChangedEvent is access procedure (currentRow: Integer);
pragma Convention(C,QListWidget_currentRowChangedEvent);

type QListWidget_itemSelectionChangedEvent is access procedure ;
pragma Convention(C,QListWidget_itemSelectionChangedEvent);
 
 procedure QListWidget_signal_slot_itemPressed(handle: not null QListWidgetH; hook:QListWidget_itemPressedEvent);
 pragma Import(C,QListWidget_signal_slot_itemPressed, "QListWidget_signal_slot_itemPressed");
 
 procedure QListWidget_signal_slot_itemClicked(handle: not null QListWidgetH; hook:QListWidget_itemClickedEvent);
 pragma Import(C,QListWidget_signal_slot_itemClicked, "QListWidget_signal_slot_itemClicked");
 
 procedure QListWidget_signal_slot_itemDoubleClicked(handle: not null QListWidgetH; hook:QListWidget_itemDoubleClickedEvent);
 pragma Import(C,QListWidget_signal_slot_itemDoubleClicked, "QListWidget_signal_slot_itemDoubleClicked");
 
 procedure QListWidget_signal_slot_itemActivated(handle: not null QListWidgetH; hook:QListWidget_itemActivatedEvent);
 pragma Import(C,QListWidget_signal_slot_itemActivated, "QListWidget_signal_slot_itemActivated");
 
 procedure QListWidget_signal_slot_itemEntered(handle: not null QListWidgetH; hook:QListWidget_itemEnteredEvent);
 pragma Import(C,QListWidget_signal_slot_itemEntered, "QListWidget_signal_slot_itemEntered");
 
 procedure QListWidget_signal_slot_itemChanged(handle: not null QListWidgetH; hook:QListWidget_itemChangedEvent);
 pragma Import(C,QListWidget_signal_slot_itemChanged, "QListWidget_signal_slot_itemChanged");
 
 procedure QListWidget_signal_slot_currentItemChanged(handle: not null QListWidgetH; hook:QListWidget_currentItemChangedEvent);
 pragma Import(C,QListWidget_signal_slot_currentItemChanged, "QListWidget_signal_slot_currentItemChanged");
 
 procedure QListWidget_signal_slot_currentTextChanged(handle: not null QListWidgetH; hook:QListWidget_currentTextChangedEvent);
 pragma Import(C,QListWidget_signal_slot_currentTextChanged, "QListWidget_signal_slot_currentTextChanged");
 
 procedure QListWidget_signal_slot_currentRowChanged(handle: not null QListWidgetH; hook:QListWidget_currentRowChangedEvent);
 pragma Import(C,QListWidget_signal_slot_currentRowChanged, "QListWidget_signal_slot_currentRowChanged");
 
 procedure QListWidget_signal_slot_itemSelectionChanged(handle: not null QListWidgetH; hook:QListWidget_itemSelectionChangedEvent);
 pragma Import(C,QListWidget_signal_slot_itemSelectionChanged, "QListWidget_signal_slot_itemSelectionChanged");
 

-----------------------------------------------------------------------
function  QListWidgetItem_create(text: QStringH; view: QListWidgetH := null; qtype: QListWidgetItemItemType := QListWidgetItemType) return QListWidgetItemH;
function  QListWidgetItem_create(icon: QIconH; text: QStringH; view: QListWidgetH := null; qtype: QListWidgetItemItemType := QListWidgetItemType) return QListWidgetItemH;
function  QListWidgetItem_create(other: QListWidgetItemH) return  QListWidgetItemH;
procedure QListWidget_insertItem(handle: not null  QListWidgetH; row: Integer; label: QStringH);
procedure QListWidget_addItem(handle: not null  QListWidgetH; item: QListWidgetItemH);
function  QListWidget_itemAt(handle: not null  QListWidgetH; x: Integer; y: Integer) return  QListWidgetItemH;
procedure Put_Line(handle: not null  QListWidgetH := debugListWidget; line : string);
procedure Put_Line(handle: not null  QListWidgetH := debugListWidget; line : QStringH);

end Qt.QListWidget;
