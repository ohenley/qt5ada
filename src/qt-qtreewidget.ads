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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractItemView; use Qt.QAbstractItemView;
package Qt.QTreeWidget          is

type  QTreeWidgetItemChildIndicatorPolicy is (QTreeWidgetItemShowIndicator, QTreeWidgetItemDontShowIndicator, QTreeWidgetItemDontShowIndicatorWhenChildless );
pragma Convention(C, QTreeWidgetItemChildIndicatorPolicy);

type  QTreeWidgetItemItemType is (QTreeWidgetItemType, QTreeWidgetItemUserType);
pragma Convention(C, QTreeWidgetItemItemType);

for  QTreeWidgetItemItemType'size  use cardinal'size;
for  QTreeWidgetItemItemType use (QTreeWidgetItemType => 0,QTreeWidgetItemUserType => 1000 );

function QTreeWidgetItem_create(qtype: QTreeWidgetItemItemType  := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create,"QTreeWidgetItem_create");

procedure QTreeWidgetItem_destroy(handle: not null  QTreeWidgetItemH);   
pragma Import(C,QTreeWidgetItem_destroy,"QTreeWidgetItem_destroy");

function QTreeWidgetItem_create2(strings: QStringListH; qtype: QTreeWidgetItemItemType  := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create2,"QTreeWidgetItem_create2");

function QTreeWidgetItem_create3(view: QTreeWidgetH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create3,"QTreeWidgetItem_create3");

function QTreeWidgetItem_create4(view: QTreeWidgetH; strings: QStringListH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create4,"QTreeWidgetItem_create4");

function QTreeWidgetItem_create5(view: QTreeWidgetH; after: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create5,"QTreeWidgetItem_create5");

function QTreeWidgetItem_create6(parent: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create6,"QTreeWidgetItem_create6");

function QTreeWidgetItem_create7(parent: QTreeWidgetItemH; strings: QStringListH; qtype: QTreeWidgetItemItemType  := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create7,"QTreeWidgetItem_create7");

function QTreeWidgetItem_create8(parent: QTreeWidgetItemH; after: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create8,"QTreeWidgetItem_create8");

function QTreeWidgetItem_create9(other: QTreeWidgetItemH) return  QTreeWidgetItemH;
pragma Import(C,QTreeWidgetItem_create9,"QTreeWidgetItem_create9");

function QTreeWidgetItem_clone(handle: not null  QTreeWidgetItemH) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidgetItem_clone,"QTreeWidgetItem_clone");

function QTreeWidgetItem_treeWidget(handle: not null  QTreeWidgetItemH) return  QTreeWidgetH;   
pragma Import(C,QTreeWidgetItem_treeWidget,"QTreeWidgetItem_treeWidget");

procedure QTreeWidgetItem_setSelected(handle: not null  QTreeWidgetItemH; selected: Boolean);
pragma Import(C,QTreeWidgetItem_setSelected,"QTreeWidgetItem_setSelected");

function QTreeWidgetItem_isSelected(handle: not null  QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidgetItem_isSelected,"QTreeWidgetItem_isSelected");

procedure QTreeWidgetItem_setHidden(handle: not null  QTreeWidgetItemH; hide: Boolean);   
pragma Import(C,QTreeWidgetItem_setHidden,"QTreeWidgetItem_setHidden");

function QTreeWidgetItem_isHidden(handle: not null  QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidgetItem_isHidden,"QTreeWidgetItem_isHidden");

procedure QTreeWidgetItem_setExpanded(handle: not null  QTreeWidgetItemH; expand: Boolean);   
pragma Import(C,QTreeWidgetItem_setExpanded,"QTreeWidgetItem_setExpanded");

function QTreeWidgetItem_isExpanded(handle: not null  QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidgetItem_isExpanded,"QTreeWidgetItem_isExpanded");

procedure QTreeWidgetItem_setFirstColumnSpanned(handle: not null  QTreeWidgetItemH; span: Boolean);   
pragma Import(C,QTreeWidgetItem_setFirstColumnSpanned,"QTreeWidgetItem_setFirstColumnSpanned");

function QTreeWidgetItem_isFirstColumnSpanned(handle: not null  QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidgetItem_isFirstColumnSpanned,"QTreeWidgetItem_isFirstColumnSpanned");

procedure QTreeWidgetItem_setDisabled(handle: not null  QTreeWidgetItemH; disabled: Boolean);   
pragma Import(C,QTreeWidgetItem_setDisabled,"QTreeWidgetItem_setDisabled");

function QTreeWidgetItem_isDisabled(handle: not null  QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidgetItem_isDisabled,"QTreeWidgetItem_isDisabled");

procedure QTreeWidgetItem_setChildIndicatorPolicy(handle: not null  QTreeWidgetItemH; policy: QTreeWidgetItemChildIndicatorPolicy);   
pragma Import(C,QTreeWidgetItem_setChildIndicatorPolicy,"QTreeWidgetItem_setChildIndicatorPolicy");

function QTreeWidgetItem_childIndicatorPolicy(handle: not null  QTreeWidgetItemH) return  QTreeWidgetItemChildIndicatorPolicy;   
pragma Import(C,QTreeWidgetItem_childIndicatorPolicy,"QTreeWidgetItem_childIndicatorPolicy");

function QTreeWidgetItem_flags(handle: not null  QTreeWidgetItemH) return  QtItemFlags;   
pragma Import(C,QTreeWidgetItem_flags,"QTreeWidgetItem_flags");

procedure QTreeWidgetItem_setFlags(handle: not null  QTreeWidgetItemH; flags: QtItemFlags);   
pragma Import(C,QTreeWidgetItem_setFlags,"QTreeWidgetItem_setFlags");

function  QTreeWidgetItem_text(handle: not null  QTreeWidgetItemH;column: Integer)  return QStringH;
pragma Import(C,QTreeWidgetItem_text,"QTreeWidgetItem_text");

procedure QTreeWidgetItem_setText(handle: not null  QTreeWidgetItemH; column: Integer; text: QStringH);   
pragma Import(C,QTreeWidgetItem_setText,"QTreeWidgetItem_setText");

function  QTreeWidgetItem_icon(handle: not null  QTreeWidgetItemH; column: Integer) return  QIconH;
pragma Import(C,QTreeWidgetItem_icon,"QTreeWidgetItem_icon");

procedure QTreeWidgetItem_setIcon(handle: not null  QTreeWidgetItemH; column: Integer; icon: QIconH);   
pragma Import(C,QTreeWidgetItem_setIcon,"QTreeWidgetItem_setIcon");

function  QTreeWidgetItem_statusTip(handle: not null  QTreeWidgetItemH;column: Integer)  return  QStringH;
pragma Import(C,QTreeWidgetItem_statusTip,"QTreeWidgetItem_statusTip");

procedure QTreeWidgetItem_setStatusTip(handle: not null  QTreeWidgetItemH; column: Integer; statusTip: QStringH);   
pragma Import(C,QTreeWidgetItem_setStatusTip,"QTreeWidgetItem_setStatusTip");

function  QTreeWidgetItem_toolTip(handle: not null  QTreeWidgetItemH; column: Integer) return QStringH;
pragma Import(C,QTreeWidgetItem_toolTip,"QTreeWidgetItem_toolTip");

procedure QTreeWidgetItem_setToolTip(handle: not null  QTreeWidgetItemH; column: Integer; toolTip: QStringH);   
pragma Import(C,QTreeWidgetItem_setToolTip,"QTreeWidgetItem_setToolTip");

function  QTreeWidgetItem_whatsThis(handle: not null  QTreeWidgetItemH; column: Integer) return QStringH;
pragma Import(C,QTreeWidgetItem_whatsThis,"QTreeWidgetItem_whatsThis");

procedure QTreeWidgetItem_setWhatsThis(handle: not null  QTreeWidgetItemH; column: Integer; whatsThis: QStringH);   
pragma Import(C,QTreeWidgetItem_setWhatsThis,"QTreeWidgetItem_setWhatsThis");

function  QTreeWidgetItem_font(handle: not null  QTreeWidgetItemH; column: Integer) return  QFontH;
pragma Import(C,QTreeWidgetItem_font,"QTreeWidgetItem_font");

procedure QTreeWidgetItem_setFont(handle: not null  QTreeWidgetItemH; column: Integer; font: QFontH);   
pragma Import(C,QTreeWidgetItem_setFont,"QTreeWidgetItem_setFont");

function QTreeWidgetItem_textAlignment(handle: not null  QTreeWidgetItemH; column: Integer) return  Integer;   
pragma Import(C,QTreeWidgetItem_textAlignment,"QTreeWidgetItem_textAlignment");

procedure QTreeWidgetItem_setTextAlignment(handle: not null  QTreeWidgetItemH; column: Integer; alignment: Integer);   
pragma Import(C,QTreeWidgetItem_setTextAlignment,"QTreeWidgetItem_setTextAlignment");

function  QTreeWidgetItem_backgroundColor(handle: not null  QTreeWidgetItemH; column: Integer) return QColorH;
pragma Import(C,QTreeWidgetItem_backgroundColor,"QTreeWidgetItem_backgroundColor");

procedure QTreeWidgetItem_setBackgroundColor(handle: not null  QTreeWidgetItemH; column: Integer; color: QColorH);   
pragma Import(C,QTreeWidgetItem_setBackgroundColor,"QTreeWidgetItem_setBackgroundColor");

function  QTreeWidgetItem_background(handle: not null  QTreeWidgetItemH; column: Integer) return  QBrushH;
pragma Import(C,QTreeWidgetItem_background,"QTreeWidgetItem_background");

procedure QTreeWidgetItem_setBackground(handle: not null  QTreeWidgetItemH; column: Integer; brush: QBrushH);   
pragma Import(C,QTreeWidgetItem_setBackground,"QTreeWidgetItem_setBackground");

function  QTreeWidgetItem_textColor(handle: not null  QTreeWidgetItemH; column: Integer) return  QColorH;
pragma Import(C,QTreeWidgetItem_textColor,"QTreeWidgetItem_textColor");

procedure QTreeWidgetItem_setTextColor(handle: not null  QTreeWidgetItemH; column: Integer; color: QColorH);   
pragma Import(C,QTreeWidgetItem_setTextColor,"QTreeWidgetItem_setTextColor");

function  QTreeWidgetItem_foreground(handle: not null  QTreeWidgetItemH; column: Integer) return  QBrushH;
pragma Import(C,QTreeWidgetItem_foreground,"QTreeWidgetItem_foreground");

procedure QTreeWidgetItem_setForeground(handle: not null  QTreeWidgetItemH; column: Integer; brush: QBrushH);   
pragma Import(C,QTreeWidgetItem_setForeground,"QTreeWidgetItem_setForeground");

function QTreeWidgetItem_checkState(handle: not null  QTreeWidgetItemH; column: Integer) return  QtCheckState;   
pragma Import(C,QTreeWidgetItem_checkState,"QTreeWidgetItem_checkState");

procedure QTreeWidgetItem_setCheckState(handle: not null  QTreeWidgetItemH; column: Integer; state: QtCheckState);   
pragma Import(C,QTreeWidgetItem_setCheckState,"QTreeWidgetItem_setCheckState");

function  QTreeWidgetItem_sizeHint(handle: not null  QTreeWidgetItemH; column: Integer) return QSizeH;
pragma Import(C,QTreeWidgetItem_sizeHint,"QTreeWidgetItem_sizeHint");

procedure QTreeWidgetItem_setSizeHint(handle: not null  QTreeWidgetItemH; column: Integer; size: QSizeH);   
pragma Import(C,QTreeWidgetItem_setSizeHint,"QTreeWidgetItem_setSizeHint");

function  QTreeWidgetItem_data(handle: not null  QTreeWidgetItemH; column: Integer; role: Integer) return QVariantH;
pragma Import(C,QTreeWidgetItem_data,"QTreeWidgetItem_data");

procedure QTreeWidgetItem_setData(handle: not null  QTreeWidgetItemH; column: Integer; role: Integer; value: QVariantH);   
pragma Import(C,QTreeWidgetItem_setData,"QTreeWidgetItem_setData");

procedure QTreeWidgetItem_read(handle: not null  QTreeWidgetItemH; input: QDataStreamH);
pragma Import(C,QTreeWidgetItem_read,"QTreeWidgetItem_read");

procedure QTreeWidgetItem_write(handle: not null  QTreeWidgetItemH; output: QDataStreamH);
pragma Import(C,QTreeWidgetItem_write,"QTreeWidgetItem_write");

function QTreeWidgetItem_parent(handle: not null  QTreeWidgetItemH) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidgetItem_parent,"QTreeWidgetItem_parent");

function QTreeWidgetItem_child(handle: not null  QTreeWidgetItemH; index: Integer) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidgetItem_child,"QTreeWidgetItem_child");

function QTreeWidgetItem_childCount(handle: not null  QTreeWidgetItemH) return  Integer;   
pragma Import(C,QTreeWidgetItem_childCount,"QTreeWidgetItem_childCount");

function QTreeWidgetItem_columnCount(handle: not null  QTreeWidgetItemH) return  Integer;   
pragma Import(C,QTreeWidgetItem_columnCount,"QTreeWidgetItem_columnCount");

function QTreeWidgetItem_indexOfChild(handle: not null  QTreeWidgetItemH; child: QTreeWidgetItemH) return  Integer;   
pragma Import(C,QTreeWidgetItem_indexOfChild,"QTreeWidgetItem_indexOfChild");

procedure QTreeWidgetItem_addChild(handle: not null  QTreeWidgetItemH; child: QTreeWidgetItemH);   
pragma Import(C,QTreeWidgetItem_addChild,"QTreeWidgetItem_addChild");

procedure QTreeWidgetItem_insertChild(handle: not null  QTreeWidgetItemH; index: Integer; child: QTreeWidgetItemH);   
pragma Import(C,QTreeWidgetItem_insertChild,"QTreeWidgetItem_insertChild");

procedure QTreeWidgetItem_removeChild(handle: not null  QTreeWidgetItemH; child: QTreeWidgetItemH);   
pragma Import(C,QTreeWidgetItem_removeChild,"QTreeWidgetItem_removeChild");

function QTreeWidgetItem_takeChild(handle: not null  QTreeWidgetItemH; index: Integer) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidgetItem_takeChild,"QTreeWidgetItem_takeChild");

procedure QTreeWidgetItem_addChildren(handle: not null  QTreeWidgetItemH; children: QObjectListH);
pragma Import(C,QTreeWidgetItem_addChildren,"QTreeWidgetItem_addChildren");

procedure QTreeWidgetItem_insertChildren(handle: not null  QTreeWidgetItemH; index: Integer; children: QObjectListH);
pragma Import(C,QTreeWidgetItem_insertChildren,"QTreeWidgetItem_insertChildren");

function  QTreeWidgetItem_takeChildren(handle: not null  QTreeWidgetItemH) return QObjectListH;
pragma Import(C,QTreeWidgetItem_takeChildren,"QTreeWidgetItem_takeChildren");

function QTreeWidgetItemqtype(handle: not null  QTreeWidgetItemH) return  Integer;   
pragma Import(C,QTreeWidgetItemqtype,"QTreeWidgetItemqtype");

procedure QTreeWidgetItem_sortChildren(handle: not null  QTreeWidgetItemH; column: Integer; order: QtSortOrder);   
pragma Import(C,QTreeWidgetItem_sortChildren,"QTreeWidgetItem_sortChildren");

-------------------------------------------------------------------------------------------------------------------
function QTreeWidget_create(parent: QWidgetH := null) return QTreeWidgetH;   
pragma Import(C,QTreeWidget_create,"QTreeWidget_create");

procedure QTreeWidget_destroy(handle: not null  QTreeWidgetH);   
pragma Import(C,QTreeWidget_destroy,"QTreeWidget_destroy");

function  QTreeWidget_size(handle: not null  QTreeWidgetH) return integer;
pragma Import(C,QTreeWidget_size,"QTreeWidget_size");

function QTreeWidget_indexOfTopLevelItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return   Integer;
pragma Import(C,QTreeWidget_indexOfTopLevelItem,"QTreeWidget_indexOfTopLevelItem");

function QTreeWidget_columnCount(handle: not null  QTreeWidgetH) return  Integer;   
pragma Import(C,QTreeWidget_columnCount,"QTreeWidget_columnCount");

procedure QTreeWidget_setColumnCount(handle: not null  QTreeWidgetH; columns: Integer);   
pragma Import(C,QTreeWidget_setColumnCount,"QTreeWidget_setColumnCount");

function QTreeWidget_invisibleRootItem(handle: not null  QTreeWidgetH) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidget_invisibleRootItem,"QTreeWidget_invisibleRootItem");

function QTreeWidget_topLevelItem(handle: not null  QTreeWidgetH; index: Integer) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidget_topLevelItem,"QTreeWidget_topLevelItem");

function QTreeWidget_topLevelItemCount(handle: not null  QTreeWidgetH) return  Integer;   
pragma Import(C,QTreeWidget_topLevelItemCount,"QTreeWidget_topLevelItemCount");

procedure QTreeWidget_insertTopLevelItem(handle: not null  QTreeWidgetH; index: Integer; item: QTreeWidgetItemH);   
pragma Import(C,QTreeWidget_insertTopLevelItem,"QTreeWidget_insertTopLevelItem");

procedure QTreeWidget_addTopLevelItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH);   
pragma Import(C,QTreeWidget_addTopLevelItem,"QTreeWidget_addTopLevelItem");

function QTreeWidget_takeTopLevelItem(handle: not null  QTreeWidgetH; index: Integer) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidget_takeTopLevelItem,"QTreeWidget_takeTopLevelItem");

procedure QTreeWidget_insertTopLevelItems(handle: not null  QTreeWidgetH; index: Integer; items: QObjectListH);
pragma Import(C,QTreeWidget_insertTopLevelItems,"QTreeWidget_insertTopLevelItems");

procedure QTreeWidget_addTopLevelItems(handle: not null  QTreeWidgetH; items: QObjectListH);
pragma Import(C,QTreeWidget_addTopLevelItems,"QTreeWidget_addTopLevelItems");

function QTreeWidget_headerItem(handle: not null  QTreeWidgetH) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidget_headerItem,"QTreeWidget_headerItem");

procedure QTreeWidget_setHeaderItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH);   
pragma Import(C,QTreeWidget_setHeaderItem,"QTreeWidget_setHeaderItem");

procedure QTreeWidget_setHeaderLabels(handle: not null  QTreeWidgetH; labels: QStringListH);   
pragma Import(C,QTreeWidget_setHeaderLabels,"QTreeWidget_setHeaderLabels");

procedure QTreeWidget_setHeaderLabel(handle: not null  QTreeWidgetH; label: QStringH);   
pragma Import(C,QTreeWidget_setHeaderLabel,"QTreeWidget_setHeaderLabel");

function QTreeWidget_currentItem(handle: not null  QTreeWidgetH) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidget_currentItem,"QTreeWidget_currentItem");

function QTreeWidget_currentColumn(handle: not null  QTreeWidgetH) return  Integer;   
pragma Import(C,QTreeWidget_currentColumn,"QTreeWidget_currentColumn");

procedure QTreeWidget_setCurrentItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH);    
pragma Import(C,QTreeWidget_setCurrentItem,"QTreeWidget_setCurrentItem");

procedure QTreeWidget_setCurrentItem2(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer);
pragma Import(C,QTreeWidget_setCurrentItem2,"QTreeWidget_setCurrentItem2");

function QTreeWidget_itemAt(handle: not null  QTreeWidgetH; p: QPointH) return  QTreeWidgetItemH;    
pragma Import(C,QTreeWidget_itemAt,"QTreeWidget_itemAt");

function QTreeWidget_itemAt2(handle: not null  QTreeWidgetH; x: Integer; y: Integer) return  QTreeWidgetItemH;
pragma Import(C,QTreeWidget_itemAt2,"QTreeWidget_itemAt2");

function  QTreeWidget_visualItemRect(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return  QRectH;
pragma Import(C,QTreeWidget_visualItemRect,"QTreeWidget_visualItemRect");

function QTreeWidget_sortColumn(handle: not null  QTreeWidgetH) return  Integer;   
pragma Import(C,QTreeWidget_sortColumn,"QTreeWidget_sortColumn");

procedure QTreeWidget_sortItems(handle: not null  QTreeWidgetH; column: Integer; order: QtSortOrder);   
pragma Import(C,QTreeWidget_sortItems,"QTreeWidget_sortItems");

procedure QTreeWidget_setSortingEnabled(handle: not null  QTreeWidgetH; enable: Boolean);   
pragma Import(C,QTreeWidget_setSortingEnabled,"QTreeWidget_setSortingEnabled");

function QTreeWidget_isSortingEnabled(handle: not null  QTreeWidgetH) return  Boolean;   
pragma Import(C,QTreeWidget_isSortingEnabled,"QTreeWidget_isSortingEnabled");

procedure QTreeWidget_editItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer := 0);   
pragma Import(C,QTreeWidget_editItem,"QTreeWidget_editItem");

procedure QTreeWidget_openPersistentEditor(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer := 0);   
pragma Import(C,QTreeWidget_openPersistentEditor,"QTreeWidget_openPersistentEditor");

procedure QTreeWidget_closePersistentEditor(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer := 0);   
pragma Import(C,QTreeWidget_closePersistentEditor,"QTreeWidget_closePersistentEditor");

function QTreeWidget_itemWidget(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer) return  QWidgetH;   
pragma Import(C,QTreeWidget_itemWidget,"QTreeWidget_itemWidget");

procedure QTreeWidget_setItemWidget(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer; widget: QWidgetH);   
pragma Import(C,QTreeWidget_setItemWidget,"QTreeWidget_setItemWidget");

procedure QTreeWidget_removeItemWidget(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer);   
pragma Import(C,QTreeWidget_removeItemWidget,"QTreeWidget_removeItemWidget");

function QTreeWidget_isItemSelected(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidget_isItemSelected,"QTreeWidget_isItemSelected");

procedure QTreeWidget_setItemSelected(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; selected: Boolean);
pragma Import(C,QTreeWidget_setItemSelected,"QTreeWidget_setItemSelected");

function  QTreeWidget_selectedItems(handle: not null  QTreeWidgetH) return QObjectListH;
pragma Import(C,QTreeWidget_selectedItems,"QTreeWidget_selectedItems");

function  QTreeWidget_findItems(handle: not null  QTreeWidgetH; text: QStringH; flags: QtMatchFlags; column: Integer := 0) return QObjectListH;
pragma Import(C,QTreeWidget_findItems,"QTreeWidget_findItems");

function QTreeWidget_isItemHidden(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidget_isItemHidden,"QTreeWidget_isItemHidden");

procedure QTreeWidget_setItemHidden(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; hide: Boolean);   
pragma Import(C,QTreeWidget_setItemHidden,"QTreeWidget_setItemHidden");

procedure QTreeWidget_setEnabled(handle: not null  QTreeWidgetH; enabled: boolean);
pragma Import(C,QTreeWidget_setEnabled ,"QTreeWidget_setEnabled");

-- procedure QTreeWidget_setStretchLastSection(handle: not null  QTreeWidgetH; enabled: boolean);
-- pragma Import(C,QTreeWidget_setStretchLastSection,"QTreeWidget_setStretchLastSection");

procedure QTreeWidget_setRootIsDecorated(handle: not null  QTreeWidgetH; enabled: boolean);
pragma Import(C,QTreeWidget_setRootIsDecorated ,"QTreeWidget_setRootIsDecorated");

function QTreeWidget_isItemExpanded(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidget_isItemExpanded,"QTreeWidget_isItemExpanded");

procedure QTreeWidget_setItemExpanded(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; expand: Boolean);   
pragma Import(C,QTreeWidget_setItemExpanded,"QTreeWidget_setItemExpanded");

function QTreeWidget_isFirstItemColumnSpanned(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return  Boolean;   
pragma Import(C,QTreeWidget_isFirstItemColumnSpanned,"QTreeWidget_isFirstItemColumnSpanned");

procedure QTreeWidget_setFirstItemColumnSpanned(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; span: Boolean);   
pragma Import(C,QTreeWidget_setFirstItemColumnSpanned,"QTreeWidget_setFirstItemColumnSpanned");

function QTreeWidget_itemAbove(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidget_itemAbove,"QTreeWidget_itemAbove");

function QTreeWidget_itemBelow(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH) return  QTreeWidgetItemH;   
pragma Import(C,QTreeWidget_itemBelow,"QTreeWidget_itemBelow");

procedure QTreeWidget_scrollToItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; hint: QAbstractItemViewScrollHint);   
pragma Import(C,QTreeWidget_scrollToItem,"QTreeWidget_scrollToItem");

procedure QTreeWidget_expandItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH);   
pragma Import(C,QTreeWidget_expandItem,"QTreeWidget_expandItem");

procedure QTreeWidget_collapseItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH);   
pragma Import(C,QTreeWidget_collapseItem,"QTreeWidget_collapseItem");

procedure QTreeWidget_clear(handle: not null  QTreeWidgetH);   
pragma Import(C,QTreeWidget_clear,"QTreeWidget_clear");

 procedure QTreeWidget_doItemsLayout(handle:not null QTreeWidgetH);
 pragma Import(C,QTreeWidget_doItemsLayout, "QTreeWidget_doItemsLayout");

type QTreeWidget_itemPressedEvent is access procedure (item: QTreeWidgetItemH; column: Integer);
pragma Convention(C, QTreeWidget_itemPressedEvent);

type QTreeWidget_itemClickedEvent is access procedure (item: QTreeWidgetItemH; column: Integer);
pragma Convention(C, QTreeWidget_itemClickedEvent);

type QTreeWidget_itemDoubleClickedEvent is access procedure (item: QTreeWidgetItemH; column: Integer);
pragma Convention(C, QTreeWidget_itemDoubleClickedEvent);

type QTreeWidget_itemActivatedEvent is access procedure (item: QTreeWidgetItemH; column: Integer);
pragma Convention(C, QTreeWidget_itemActivatedEvent);

type QTreeWidget_itemEnteredEvent is access procedure (item: QTreeWidgetItemH; column: Integer);
pragma Convention(C, QTreeWidget_itemEnteredEvent);

type QTreeWidget_itemChangedEvent is access procedure (item: QTreeWidgetItemH; column: Integer);
pragma Convention(C, QTreeWidget_itemChangedEvent);

type QTreeWidget_itemExpandedEvent is access procedure (item: QTreeWidgetItemH);
pragma Convention(C, QTreeWidget_itemExpandedEvent);

type QTreeWidget_itemCollapsedEvent is access procedure (item: QTreeWidgetItemH);
pragma Convention(C, QTreeWidget_itemCollapsedEvent);

type QTreeWidget_currentItemChangedEvent is access procedure (current,previous: QTreeWidgetItemH);
pragma Convention(C, QTreeWidget_currentItemChangedEvent);

type QTreeWidget_itemSelectionChangedEvent is access procedure ;
pragma Convention(C, QTreeWidget_itemSelectionChangedEvent);
 
 procedure QTreeWidget_signal_slot_itemPressed(handle: not null QTreeWidgetH; hook:QTreeWidget_itemPressedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemPressed, "QTreeWidget_signal_slot_itemPressed");
 
 procedure QTreeWidget_signal_slot_itemClicked(handle: not null QTreeWidgetH; hook:QTreeWidget_itemClickedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemClicked, "QTreeWidget_signal_slot_itemClicked");
 
 procedure QTreeWidget_signal_slot_itemDoubleClicked(handle: not null QTreeWidgetH; hook:QTreeWidget_itemDoubleClickedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemDoubleClicked, "QTreeWidget_signal_slot_itemDoubleClicked");
 
 procedure QTreeWidget_signal_slot_itemActivated(handle: not null QTreeWidgetH; hook:QTreeWidget_itemActivatedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemActivated, "QTreeWidget_signal_slot_itemActivated");
 
 procedure QTreeWidget_signal_slot_itemEntered(handle: not null QTreeWidgetH; hook:QTreeWidget_itemEnteredEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemEntered, "QTreeWidget_signal_slot_itemEntered");
 
 procedure QTreeWidget_signal_slot_itemChanged(handle: not null QTreeWidgetH; hook:QTreeWidget_itemChangedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemChanged, "QTreeWidget_signal_slot_itemChanged");
 
 procedure QTreeWidget_signal_slot_itemExpanded(handle: not null QTreeWidgetH; hook:QTreeWidget_itemExpandedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemExpanded, "QTreeWidget_signal_slot_itemExpanded");
 
 procedure QTreeWidget_signal_slot_itemCollapsed(handle: not null QTreeWidgetH; hook:QTreeWidget_itemCollapsedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemCollapsed, "QTreeWidget_signal_slot_itemCollapsed");
 
 procedure QTreeWidget_signal_slot_currentItemChanged(handle: not null QTreeWidgetH; hook:QTreeWidget_currentItemChangedEvent);
 pragma Import(C,QTreeWidget_signal_slot_currentItemChanged, "QTreeWidget_signal_slot_currentItemChanged");
 
 procedure QTreeWidget_signal_slot_itemSelectionChanged(handle: not null QTreeWidgetH; hook:QTreeWidget_itemSelectionChangedEvent);
 pragma Import(C,QTreeWidget_signal_slot_itemSelectionChanged, "QTreeWidget_signal_slot_itemSelectionChanged");
 

-------------------------------------------------------------------
function QTreeWidgetItem_create(strings: QStringListH; qtype: QTreeWidgetItemItemType  := QTreeWidgetItemType) return QTreeWidgetItemH;
function QTreeWidgetItem_create(view: QTreeWidgetH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
function QTreeWidgetItem_create(view: QTreeWidgetH; strings: QStringListH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
function QTreeWidgetItem_create(view: QTreeWidgetH; after: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
function QTreeWidgetItem_create(parent: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
function QTreeWidgetItem_create(parent: QTreeWidgetItemH; strings: QStringListH; qtype: QTreeWidgetItemItemType  := QTreeWidgetItemType) return QTreeWidgetItemH;
function QTreeWidgetItem_create(parent: QTreeWidgetItemH; after: QTreeWidgetItemH; qtype: QTreeWidgetItemItemType := QTreeWidgetItemType) return QTreeWidgetItemH;
function QTreeWidgetItem_create(other: QTreeWidgetItemH) return  QTreeWidgetItemH;
procedure QTreeWidget_setCurrentItem(handle: not null  QTreeWidgetH; item: QTreeWidgetItemH; column: Integer);
function QTreeWidget_itemAt(handle: not null  QTreeWidgetH; x: Integer; y: Integer) return  QTreeWidgetItemH;

end Qt.QTreeWidget;
