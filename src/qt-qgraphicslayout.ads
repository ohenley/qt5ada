--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QSize;     use Qt.QSize;
with Interfaces.C; use Interfaces.C;

package Qt.QGraphicsLayout  is

 procedure QGraphicsLayout_destroy(handle: not null QGraphicsLayoutH);
 pragma Import(C,QGraphicsLayout_destroy, "QGraphicsLayout_destroy");
 
 procedure QGraphicsLayout_setContentsMargins(handle: not null QGraphicsLayoutH;left,top,right,bottom:qreal);
 pragma Import(C,QGraphicsLayout_setContentsMargins, "QGraphicsLayout_setContentsMargins");
 
 procedure QGraphicsLayout_getContentsMargins(handle: not null QGraphicsLayoutH;left,top,right,bottom:out qreal);
 pragma Import(C,QGraphicsLayout_getContentsMargins, "QGraphicsLayout_getContentsMargins");
 
 procedure QGraphicsLayout_activate(handle: not null QGraphicsLayoutH);
 pragma Import(C,QGraphicsLayout_activate, "QGraphicsLayout_activate");
 
 function  QGraphicsLayout_isActivated(handle: not null QGraphicsLayoutH) return boolean;
 pragma Import(C,QGraphicsLayout_isActivated, "QGraphicsLayout_isActivated");
 
 procedure QGraphicsLayout_invalidate(handle: not null QGraphicsLayoutH);
 pragma Import(C,QGraphicsLayout_invalidate, "QGraphicsLayout_invalidate");
 
 procedure QGraphicsLayout_updateGeometry(handle: not null QGraphicsLayoutH);
 pragma Import(C,QGraphicsLayout_updateGeometry, "QGraphicsLayout_updateGeometry");
 
 procedure QGraphicsLayout_widgetEvent(handle: not null QGraphicsLayoutH;e:QEventH);
 pragma Import(C,QGraphicsLayout_widgetEvent, "QGraphicsLayout_widgetEvent");
 
 function  QGraphicsLayout_count(handle: not null QGraphicsLayoutH) return integer;
 pragma Import(C,QGraphicsLayout_count, "QGraphicsLayout_count");
 
 function  QGraphicsLayout_itemAt(handle: not null QGraphicsLayoutH;i:integer) return QGraphicsLayoutItemH;
 pragma Import(C,QGraphicsLayout_itemAt, "QGraphicsLayout_itemAt");
 
 procedure QGraphicsLayout_removeAt(handle: not null QGraphicsLayoutH;index:integer);
 pragma Import(C,QGraphicsLayout_removeAt, "QGraphicsLayout_removeAt");
 
 procedure QGraphicsLayout_setInstantInvalidatePropagation(enable:boolean);
 pragma Import(C,QGraphicsLayout_setInstantInvalidatePropagation, "QGraphicsLayout_setInstantInvalidatePropagation");
 
 function  QGraphicsLayout_instantInvalidatePropagation return  boolean;
 pragma Import(C,QGraphicsLayout_instantInvalidatePropagation, "QGraphicsLayout_instantInvalidatePropagation");
-----------------------------------------------------------------------------------------------------------------
 function  QGraphicsLayoutItem_create(parent:QGraphicsLayoutItemH := null;isLayout : boolean := false) return QGraphicsLayoutItemH;
 pragma Import(C,QGraphicsLayoutItem_create, "QGraphicsLayoutItem_create");
 
 procedure QGraphicsLayoutItem_setGraphicsWidget(handle:not null QGraphicsLayoutItemH;item:QGraphicsWidgetH);
 pragma Import(C,QGraphicsLayoutItem_setGraphicsWidget, "QGraphicsLayoutItem_setGraphicsWidget");
 
 procedure QGraphicsLayoutItem_setGraphicsItem(handle:not null QGraphicsLayoutItemH;item:QGraphicsItemH);
 pragma Import(C,QGraphicsLayoutItem_setGraphicsItem, "QGraphicsLayoutItem_setGraphicsItem");
 
 procedure QGraphicsLayoutItem_setOwnedByLayout(handle:not null QGraphicsLayoutItemH;ownedByLayout:boolean);
 pragma Import(C,QGraphicsLayoutItem_setOwnedByLayout, "QGraphicsLayoutItem_setOwnedByLayout");
 
 procedure QGraphicsLayoutItem_destroy(handle: not null QGraphicsLayoutItemH);
 pragma Import(C,QGraphicsLayoutItem_destroy, "QGraphicsLayoutItem_destroy");
 
 procedure QGraphicsLayoutItem_setSizePolicy(handle: not null QGraphicsLayoutItemH; policy:QSizePolicyH);
 pragma Import(C,QGraphicsLayoutItem_setSizePolicy, "QGraphicsLayoutItem_setSizePolicy");
 
 procedure QGraphicsLayoutItem_setSizePolicy2(handle: not null QGraphicsLayoutItemH;hPolicy,vPolicy, controlType: integer);
 pragma Import(C,QGraphicsLayoutItem_setSizePolicy2, "QGraphicsLayoutItem_setSizePolicy2");
 
 function  QGraphicsLayoutItem_sizePolicy(handle: not null QGraphicsLayoutItemH) return QSizePolicyH;
 pragma Import(C,QGraphicsLayoutItem_sizePolicy, "QGraphicsLayoutItem_sizePolicy");
 
 procedure QGraphicsLayoutItem_setMinimumSize2(handle: not null QGraphicsLayoutItemH; size: QSizeFH);
 pragma Import(C,QGraphicsLayoutItem_setMinimumSize2, "QGraphicsLayoutItem_setMinimumSize2");
 
 procedure QGraphicsLayoutItem_setMinimumSize(handle: not null QGraphicsLayoutItemH; w,h: qreal);
 pragma Import(C,QGraphicsLayoutItem_setMinimumSize, "QGraphicsLayoutItem_setMinimumSize");
 
 function  QGraphicsLayoutItem_minimumSize(handle: not null QGraphicsLayoutItemH) return QSizeFH;
 pragma Import(C,QGraphicsLayoutItem_minimumSize, "QGraphicsLayoutItem_minimumSize");
 
 procedure QGraphicsLayoutItem_setMinimumWidth(handle: not null QGraphicsLayoutItemH; width:qreal);
 pragma Import(C,QGraphicsLayoutItem_setMinimumWidth, "QGraphicsLayoutItem_setMinimumWidth");
 
 function  QGraphicsLayoutItem_minimumWidth(handle: not null QGraphicsLayoutItemH) return qreal;
 pragma Import(C,QGraphicsLayoutItem_minimumWidth, "QGraphicsLayoutItem_minimumWidth");
 
 procedure QGraphicsLayoutItem_setMinimumHeight(handle: not null QGraphicsLayoutItemH;height:qreal );
 pragma Import(C,QGraphicsLayoutItem_setMinimumHeight, "QGraphicsLayoutItem_setMinimumHeight");
 
 function  QGraphicsLayoutItem_minimumHeight(handle: not null QGraphicsLayoutItemH) return qreal;
 pragma Import(C,QGraphicsLayoutItem_minimumHeight, "QGraphicsLayoutItem_minimumHeight");
 
 procedure QGraphicsLayoutItem_setPreferredSize2(handle: not null QGraphicsLayoutItemH; size:QSizeFH);
 pragma Import(C,QGraphicsLayoutItem_setPreferredSize2, "QGraphicsLayoutItem_setPreferredSize2");
 
 procedure QGraphicsLayoutItem_setPreferredSize(handle: not null QGraphicsLayoutItemH; w,h: qreal);
 pragma Import(C,QGraphicsLayoutItem_setPreferredSize, "QGraphicsLayoutItem_setPreferredSize");
 
 function  QGraphicsLayoutItem_preferredSize(handle: not null QGraphicsLayoutItemH) return QSizeFH;
 pragma Import(C,QGraphicsLayoutItem_preferredSize, "QGraphicsLayoutItem_preferredSize");
 
 procedure QGraphicsLayoutItem_setPreferredWidth(handle: not null QGraphicsLayoutItemH;width:qreal );
 pragma Import(C,QGraphicsLayoutItem_setPreferredWidth, "QGraphicsLayoutItem_setPreferredWidth");
 
 function  QGraphicsLayoutItem_preferredWidth(handle: not null QGraphicsLayoutItemH) return qreal;
 pragma Import(C,QGraphicsLayoutItem_preferredWidth, "QGraphicsLayoutItem_preferredWidth");
 
 procedure QGraphicsLayoutItem_setPreferredHeight(handle: not null QGraphicsLayoutItemH;height:qreal );
 pragma Import(C,QGraphicsLayoutItem_setPreferredHeight, "QGraphicsLayoutItem_setPreferredHeight");
 
 function  QGraphicsLayoutItem_preferredHeight(handle: not null QGraphicsLayoutItemH) return qreal;
 pragma Import(C,QGraphicsLayoutItem_preferredHeight, "QGraphicsLayoutItem_preferredHeight");
 
 procedure QGraphicsLayoutItem_setMaximumSize2(handle: not null QGraphicsLayoutItemH; size:QSizeFH);
 pragma Import(C,QGraphicsLayoutItem_setMaximumSize2, "QGraphicsLayoutItem_setMaximumSize2");
 
 procedure QGraphicsLayoutItem_setMaximumSize(handle: not null QGraphicsLayoutItemH; w,h: qreal);
 pragma Import(C,QGraphicsLayoutItem_setMaximumSize, "QGraphicsLayoutItem_setMaximumSize");
 
 function  QGraphicsLayoutItem_maximumSize(handle: not null QGraphicsLayoutItemH) return QSizeFH;
 pragma Import(C,QGraphicsLayoutItem_maximumSize, "QGraphicsLayoutItem_maximumSize");
 
 procedure QGraphicsLayoutItem_setMaximumWidth(handle: not null QGraphicsLayoutItemH; width:qreal);
 pragma Import(C,QGraphicsLayoutItem_setMaximumWidth, "QGraphicsLayoutItem_setMaximumWidth");
 
 function  QGraphicsLayoutItem_maximumWidth(handle: not null QGraphicsLayoutItemH) return qreal;
 pragma Import(C,QGraphicsLayoutItem_maximumWidth, "QGraphicsLayoutItem_maximumWidth");
 
 procedure QGraphicsLayoutItem_setMaximumHeight(handle: not null QGraphicsLayoutItemH; height:qreal);
 pragma Import(C,QGraphicsLayoutItem_setMaximumHeight, "QGraphicsLayoutItem_setMaximumHeight");
 
 function  QGraphicsLayoutItem_maximumHeight(handle: not null QGraphicsLayoutItemH) return qreal;
 pragma Import(C,QGraphicsLayoutItem_maximumHeight, "QGraphicsLayoutItem_maximumHeight");
 
 procedure QGraphicsLayoutItem_setGeometry(handle: not null QGraphicsLayoutItemH; rect:QRectFH);
 pragma Import(C,QGraphicsLayoutItem_setGeometry, "QGraphicsLayoutItem_setGeometry");
 
 function  QGraphicsLayoutItem_geometry(handle: not null QGraphicsLayoutItemH) return QRectFH;
 pragma Import(C,QGraphicsLayoutItem_geometry, "QGraphicsLayoutItem_geometry");
 
 procedure QGraphicsLayoutItem_getContentsMargins(handle: not null QGraphicsLayoutItemH;left,top,right,bottom: out qreal);
 pragma Import(C,QGraphicsLayoutItem_getContentsMargins, "QGraphicsLayoutItem_getContentsMargins");
 
 function  QGraphicsLayoutItem_contentsRect(handle: not null QGraphicsLayoutItemH) return QRectFH;
 pragma Import(C,QGraphicsLayoutItem_contentsRect, "QGraphicsLayoutItem_contentsRect");
 
 function  QGraphicsLayoutItem_effectiveSizeHint(handle: not null QGraphicsLayoutItemH;which:integer) return QSizeFH;
 pragma Import(C,QGraphicsLayoutItem_effectiveSizeHint, "QGraphicsLayoutItem_effectiveSizeHint");
 
 procedure QGraphicsLayoutItem_updateGeometry(handle: not null QGraphicsLayoutItemH);
 pragma Import(C,QGraphicsLayoutItem_updateGeometry, "QGraphicsLayoutItem_updateGeometry");
 
 function  QGraphicsLayoutItem_parentLayoutItem(handle: not null QGraphicsLayoutItemH) return QGraphicsLayoutItemH;
 pragma Import(C,QGraphicsLayoutItem_parentLayoutItem, "QGraphicsLayoutItem_parentLayoutItem");
 
 procedure QGraphicsLayoutItem_setParentLayoutItem(handle: not null QGraphicsLayoutItemH;parent:QGraphicsLayoutItemH);
 pragma Import(C,QGraphicsLayoutItem_setParentLayoutItem, "QGraphicsLayoutItem_setParentLayoutItem");
 
 function  QGraphicsLayoutItem_isLayout(handle: not null QGraphicsLayoutItemH) return boolean;
 pragma Import(C,QGraphicsLayoutItem_isLayout, "QGraphicsLayoutItem_isLayout");
 
 function  QGraphicsLayoutItem_ownedByLayout(handle: not null QGraphicsLayoutItemH) return boolean;
 pragma Import(C,QGraphicsLayoutItem_ownedByLayout, "QGraphicsLayoutItem_ownedByLayout");

-------------------------------------------------------------------------------------------------------
 procedure QGraphicsLayoutItem_setSizePolicy(handle: not null QGraphicsLayoutItemH;hPolicy,vPolicy, controlType: integer);
 procedure QGraphicsLayoutItem_setMinimumSize(handle: not null QGraphicsLayoutItemH; size: QSizeFH);
 procedure QGraphicsLayoutItem_setPreferredSize(handle: not null QGraphicsLayoutItemH; size:QSizeFH);
 procedure QGraphicsLayoutItem_setMaximumSize(handle: not null QGraphicsLayoutItemH; size:QSizeFH);
 
-------------------------------------------------------------------------------------------------------
 function  QGraphicsGridLayout_create(parent:QGraphicsLayoutItemH := null) return QGraphicsGridLayoutH ;
 pragma Import(C,QGraphicsGridLayout_create, "QGraphicsGridLayout_create");
 
 procedure QGraphicsGridLayout_destroy(handle: not null QGraphicsGridLayoutH);
 pragma Import(C,QGraphicsGridLayout_destroy, "QGraphicsGridLayout_destroy");
 
 procedure QGraphicsGridLayout_addItem(handle: not null QGraphicsGridLayoutH;item:QGraphicsLayoutItemH;row,column:integer; rowSpan: integer := 1; columnSpan: integer := 1; alignment: integer := 0);
 pragma Import(C,QGraphicsGridLayout_addItem, "QGraphicsGridLayout_addItem");
 
 procedure QGraphicsGridLayout_addWidget(handle:not null QGraphicsGridLayoutH;widget:QGraphicsProxyWidgetH; row, column:integer; rowSpan: integer := 1; columnSpan:integer := 1; alignment:integer := 0);
 pragma Import(C,QGraphicsGridLayout_addWidget, "QGraphicsGridLayout_addWidget");

 procedure QGraphicsGridLayout_setHorizontalSpacing(handle: not null QGraphicsGridLayoutH;spacing: qreal);
 pragma Import(C,QGraphicsGridLayout_setHorizontalSpacing, "QGraphicsGridLayout_setHorizontalSpacing");
 
 function  QGraphicsGridLayout_horizontalSpacing(handle: not null QGraphicsGridLayoutH) return qreal;
 pragma Import(C,QGraphicsGridLayout_horizontalSpacing, "QGraphicsGridLayout_horizontalSpacing");
 
 procedure QGraphicsGridLayout_setVerticalSpacing(handle: not null QGraphicsGridLayoutH;spacing: qreal);
 pragma Import(C,QGraphicsGridLayout_setVerticalSpacing, "QGraphicsGridLayout_setVerticalSpacing");
 
 function  QGraphicsGridLayout_verticalSpacing(handle: not null QGraphicsGridLayoutH) return qreal;
 pragma Import(C,QGraphicsGridLayout_verticalSpacing, "QGraphicsGridLayout_verticalSpacing");
 
 procedure QGraphicsGridLayout_setSpacing(handle: not null QGraphicsGridLayoutH;spacing: qreal);
 pragma Import(C,QGraphicsGridLayout_setSpacing, "QGraphicsGridLayout_setSpacing");
 
 procedure QGraphicsGridLayout_setRowSpacing(handle: not null QGraphicsGridLayoutH; row: integer; spacing: qreal);
 pragma Import(C,QGraphicsGridLayout_setRowSpacing, "QGraphicsGridLayout_setRowSpacing");
 
 function  QGraphicsGridLayout_rowSpacing(handle: not null QGraphicsGridLayoutH; row:integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_rowSpacing, "QGraphicsGridLayout_rowSpacing");
 
 procedure QGraphicsGridLayout_setColumnSpacing(handle: not null QGraphicsGridLayoutH;column: integer; spacing: qreal);
 pragma Import(C,QGraphicsGridLayout_setColumnSpacing, "QGraphicsGridLayout_setColumnSpacing");
 
 function  QGraphicsGridLayout_columnSpacing(handle: not null QGraphicsGridLayoutH;column: integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_columnSpacing, "QGraphicsGridLayout_columnSpacing");
 
 procedure QGraphicsGridLayout_setRowStretchFactor(handle: not null QGraphicsGridLayoutH;row,stretch:integer);
 pragma Import(C,QGraphicsGridLayout_setRowStretchFactor, "QGraphicsGridLayout_setRowStretchFactor");
 
 function  QGraphicsGridLayout_rowStretchFactor(handle: not null QGraphicsGridLayoutH;row: integer) return integer;
 pragma Import(C,QGraphicsGridLayout_rowStretchFactor, "QGraphicsGridLayout_rowStretchFactor");
 
 procedure QGraphicsGridLayout_setColumnStretchFactor(handle: not null QGraphicsGridLayoutH;column,stretch: integer);
 pragma Import(C,QGraphicsGridLayout_setColumnStretchFactor, "QGraphicsGridLayout_setColumnStretchFactor");
 
 function  QGraphicsGridLayout_columnStretchFactor(handle: not null QGraphicsGridLayoutH;column: integer) return integer;
 pragma Import(C,QGraphicsGridLayout_columnStretchFactor, "QGraphicsGridLayout_columnStretchFactor");
 
 procedure QGraphicsGridLayout_setRowMinimumHeight(handle: not null QGraphicsGridLayoutH;row: integer; height: qreal);
 pragma Import(C,QGraphicsGridLayout_setRowMinimumHeight, "QGraphicsGridLayout_setRowMinimumHeight");
 
 function  QGraphicsGridLayout_rowMinimumHeight(handle: not null QGraphicsGridLayoutH;row: integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_rowMinimumHeight, "QGraphicsGridLayout_rowMinimumHeight");
 
 procedure QGraphicsGridLayout_setRowPreferredHeight(handle: not null QGraphicsGridLayoutH;row: integer; height: qreal);
 pragma Import(C,QGraphicsGridLayout_setRowPreferredHeight, "QGraphicsGridLayout_setRowPreferredHeight");
 
 function  QGraphicsGridLayout_rowPreferredHeight(handle: not null QGraphicsGridLayoutH;row: integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_rowPreferredHeight, "QGraphicsGridLayout_rowPreferredHeight");
 
 procedure QGraphicsGridLayout_setRowMaximumHeight(handle: not null QGraphicsGridLayoutH;row: integer; height: qreal);
 pragma Import(C,QGraphicsGridLayout_setRowMaximumHeight, "QGraphicsGridLayout_setRowMaximumHeight");
 
 function  QGraphicsGridLayout_rowMaximumHeight(handle: not null QGraphicsGridLayoutH;row: integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_rowMaximumHeight, "QGraphicsGridLayout_rowMaximumHeight");
 
 procedure QGraphicsGridLayout_setRowFixedHeight(handle: not null QGraphicsGridLayoutH;row: integer; height: qreal);
 pragma Import(C,QGraphicsGridLayout_setRowFixedHeight, "QGraphicsGridLayout_setRowFixedHeight");
 
 procedure QGraphicsGridLayout_setColumnMinimumWidth(handle: not null QGraphicsGridLayoutH;column: integer; width: qreal);
 pragma Import(C,QGraphicsGridLayout_setColumnMinimumWidth, "QGraphicsGridLayout_setColumnMinimumWidth");
 
 function  QGraphicsGridLayout_columnMinimumWidth(handle: not null QGraphicsGridLayoutH;column: integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_columnMinimumWidth, "QGraphicsGridLayout_columnMinimumWidth");
 
 procedure QGraphicsGridLayout_setColumnPreferredWidth(handle: not null QGraphicsGridLayoutH;column: integer; width: qreal);
 pragma Import(C,QGraphicsGridLayout_setColumnPreferredWidth, "QGraphicsGridLayout_setColumnPreferredWidth");
 
 function  QGraphicsGridLayout_columnPreferredWidth(handle: not null QGraphicsGridLayoutH;column: integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_columnPreferredWidth, "QGraphicsGridLayout_columnPreferredWidth");
 
 procedure QGraphicsGridLayout_setColumnMaximumWidth(handle: not null QGraphicsGridLayoutH;column: integer; width: qreal);
 pragma Import(C,QGraphicsGridLayout_setColumnMaximumWidth, "QGraphicsGridLayout_setColumnMaximumWidth");
 
 function  QGraphicsGridLayout_columnMaximumWidth(handle: not null QGraphicsGridLayoutH;column: integer) return qreal;
 pragma Import(C,QGraphicsGridLayout_columnMaximumWidth, "QGraphicsGridLayout_columnMaximumWidth");
 
 procedure QGraphicsGridLayout_setColumnFixedWidth(handle: not null QGraphicsGridLayoutH;column: integer; width: qreal);
 pragma Import(C,QGraphicsGridLayout_setColumnFixedWidth, "QGraphicsGridLayout_setColumnFixedWidth");
 
 procedure QGraphicsGridLayout_setRowAlignment(handle: not null QGraphicsGridLayoutH;row,alignment: integer);
 pragma Import(C,QGraphicsGridLayout_setRowAlignment, "QGraphicsGridLayout_setRowAlignment");
 
 function  QGraphicsGridLayout_rowAlignment(handle: not null QGraphicsGridLayoutH;row: integer) return integer;
 pragma Import(C,QGraphicsGridLayout_rowAlignment, "QGraphicsGridLayout_rowAlignment");
 
 procedure QGraphicsGridLayout_setColumnAlignment(handle: not null QGraphicsGridLayoutH;column,alignment: integer);
 pragma Import(C,QGraphicsGridLayout_setColumnAlignment, "QGraphicsGridLayout_setColumnAlignment");
 
 function  QGraphicsGridLayout_columnAlignment(handle: not null QGraphicsGridLayoutH;column: integer) return integer;
 pragma Import(C,QGraphicsGridLayout_columnAlignment, "QGraphicsGridLayout_columnAlignment");
 
 procedure QGraphicsGridLayout_setAlignment(handle: not null QGraphicsGridLayoutH;item:QGraphicsLayoutItemH; alignment: integer);
 pragma Import(C,QGraphicsGridLayout_setAlignment, "QGraphicsGridLayout_setAlignment");
 
 function  QGraphicsGridLayout_alignment(handle: not null QGraphicsGridLayoutH;item:QGraphicsLayoutItemH) return integer;
 pragma Import(C,QGraphicsGridLayout_alignment, "QGraphicsGridLayout_alignment");
 
 function  QGraphicsGridLayout_rowCount(handle: not null QGraphicsGridLayoutH) return integer;
 pragma Import(C,QGraphicsGridLayout_rowCount, "QGraphicsGridLayout_rowCount");
 
 function  QGraphicsGridLayout_columnCount(handle: not null QGraphicsGridLayoutH) return integer;
 pragma Import(C,QGraphicsGridLayout_columnCount, "QGraphicsGridLayout_columnCount");
 
 function  QGraphicsGridLayout_itemAt(handle: not null QGraphicsGridLayoutH;row, column: integer) return QGraphicsLayoutItemH;
 pragma Import(C,QGraphicsGridLayout_itemAt, "QGraphicsGridLayout_itemAt");
 
 function  QGraphicsGridLayout_count(handle: not null QGraphicsGridLayoutH) return integer;
 pragma Import(C,QGraphicsGridLayout_count, "QGraphicsGridLayout_count");
 
 function  QGraphicsGridLayout_itemAt2(handle: not null QGraphicsGridLayoutH; index: integer) return QGraphicsLayoutItemH;
 pragma Import(C,QGraphicsGridLayout_itemAt2, "QGraphicsGridLayout_itemAt2");
 
 procedure QGraphicsGridLayout_removeAt(handle: not null QGraphicsGridLayoutH; index: integer);
 pragma Import(C,QGraphicsGridLayout_removeAt, "QGraphicsGridLayout_removeAt");
 
 procedure QGraphicsGridLayout_removeItem(handle: not null QGraphicsGridLayoutH; item: QGraphicsLayoutItemH);
 pragma Import(C,QGraphicsGridLayout_removeItem, "QGraphicsGridLayout_removeItem");
 
 procedure QGraphicsGridLayout_invalidate(handle: not null QGraphicsGridLayoutH);
 pragma Import(C,QGraphicsGridLayout_invalidate, "QGraphicsGridLayout_invalidate");
 
 procedure QGraphicsGridLayout_setGeometry(handle: not null QGraphicsGridLayoutH; rect: QRectFH);
 pragma Import(C,QGraphicsGridLayout_setGeometry, "QGraphicsGridLayout_setGeometry");
 
 function  QGraphicsGridLayout_sizeHint(handle: not null QGraphicsGridLayoutH; which: integer; constraint: QSizeFH := QSizeF_create) return QSizeFH;
 pragma Import(C,QGraphicsGridLayout_sizeHint, "QGraphicsGridLayout_sizeHint");

 function  QGraphicsGridLayout_itemAt(handle: not null QGraphicsGridLayoutH;index: integer) return QGraphicsLayoutItemH;

------------------------------------------------------------------------------------------------------------
 function  QGraphicsLinearLayout_create(parent:QGraphicsLayoutItemH := null) return QGraphicsLinearLayoutH ;
 pragma Import(C,QGraphicsLinearLayout_create, "QGraphicsLinearLayout_create");
 
 function  QGraphicsLinearLayout_create2(orientation: integer; parent:QGraphicsLayoutItemH := null) return QGraphicsLinearLayoutH ;
 pragma Import(C,QGraphicsLinearLayout_create2, "QGraphicsLinearLayout_create2");
 
 procedure QGraphicsLinearLayout_destroy(handle: not null QGraphicsLinearLayoutH);
 pragma Import(C,QGraphicsLinearLayout_destroy, "QGraphicsLinearLayout_destroy");
 
 procedure QGraphicsLinearLayout_setOrientation(handle: not null QGraphicsLinearLayoutH; orientation: integer);
 pragma Import(C,QGraphicsLinearLayout_setOrientation, "QGraphicsLinearLayout_setOrientation");
 
 function  QGraphicsLinearLayout_orientation(handle: not null QGraphicsLinearLayoutH) return integer;
 pragma Import(C,QGraphicsLinearLayout_orientation, "QGraphicsLinearLayout_orientation");
 
 procedure QGraphicsLinearLayout_addItem(handle: not null QGraphicsLinearLayoutH;item: QGraphicsLayoutItemH);
 pragma Import(C,QGraphicsLinearLayout_addItem, "QGraphicsLinearLayout_addItem");
 
 procedure QGraphicsLinearLayout_addWidget(handle:not null QGraphicsLinearLayoutH;widget:QGraphicsProxyWidgetH);
 pragma Import(C,QGraphicsLinearLayout_addWidget, "QGraphicsLinearLayout_addWidget");

 procedure QGraphicsLinearLayout_addStretch(handle: not null QGraphicsLinearLayoutH;stretch:integer);
 pragma Import(C,QGraphicsLinearLayout_addStretch, "QGraphicsLinearLayout_addStretch");
 
 procedure QGraphicsLinearLayout_inserItem(handle: not null QGraphicsLinearLayoutH;index: integer;item: QGraphicsLayoutItemH);
 pragma Import(C,QGraphicsLinearLayout_inserItem, "QGraphicsLinearLayout_inserItem");
 
 procedure QGraphicsLinearLayout_inserStretch(handle: not null QGraphicsLinearLayoutH;index,stretch: integer);
 pragma Import(C,QGraphicsLinearLayout_inserStretch, "QGraphicsLinearLayout_inserStretch");
 
 procedure QGraphicsLinearLayout_removeItem(handle: not null QGraphicsLinearLayoutH;item: QGraphicsLayoutItemH);
 pragma Import(C,QGraphicsLinearLayout_removeItem, "QGraphicsLinearLayout_removeItem");
 
 procedure QGraphicsLinearLayout_removeAt(handle: not null QGraphicsLinearLayoutH;index: integer);
 pragma Import(C,QGraphicsLinearLayout_removeAt, "QGraphicsLinearLayout_removeAt");
 
 procedure QGraphicsLinearLayout_setSpacing(handle: not null QGraphicsLinearLayoutH; spacing:qreal);
 pragma Import(C,QGraphicsLinearLayout_setSpacing, "QGraphicsLinearLayout_setSpacing");
 
 function  QGraphicsLinearLayout_spacing(handle: not null QGraphicsLinearLayoutH) return qreal;
 pragma Import(C,QGraphicsLinearLayout_spacing, "QGraphicsLinearLayout_spacing");
 
 procedure QGraphicsLinearLayout_setItemSpacing(handle: not null QGraphicsLinearLayoutH;index: integer; spacing: qreal);
 pragma Import(C,QGraphicsLinearLayout_setItemSpacing, "QGraphicsLinearLayout_setItemSpacing");
 
 function  QGraphicsLinearLayout_itemSpacing(handle: not null QGraphicsLinearLayoutH;index: integer) return qreal;
 pragma Import(C,QGraphicsLinearLayout_itemSpacing, "QGraphicsLinearLayout_itemSpacing");
 
 procedure QGraphicsLinearLayout_setStretchFactor(handle: not null QGraphicsLinearLayoutH;item: QGraphicsLayoutItemH; stretch: integer);
 pragma Import(C,QGraphicsLinearLayout_setStretchFactor, "QGraphicsLinearLayout_setStretchFactor");
 
 function  QGraphicsLinearLayout_stretchFactor(handle: not null QGraphicsLinearLayoutH;item: QGraphicsLayoutItemH) return integer;
 pragma Import(C,QGraphicsLinearLayout_stretchFactor, "QGraphicsLinearLayout_stretchFactor");
 
 procedure QGraphicsLinearLayout_setAlignment(handle: not null QGraphicsLinearLayoutH;item: QGraphicsLayoutItemH; alignment: integer);
 pragma Import(C,QGraphicsLinearLayout_setAlignment, "QGraphicsLinearLayout_setAlignment");
 
 function  QGraphicsLinearLayout_alignment(handle: not null QGraphicsLinearLayoutH;item: QGraphicsLayoutItemH) return integer;
 pragma Import(C,QGraphicsLinearLayout_alignment, "QGraphicsLinearLayout_alignment");
 
 procedure QGraphicsLinearLayout_setGeometry(handle: not null QGraphicsLinearLayoutH; rect:QRectFH);
 pragma Import(C,QGraphicsLinearLayout_setGeometry, "QGraphicsLinearLayout_setGeometry");
 
 function  QGraphicsLinearLayout_count(handle: not null QGraphicsLinearLayoutH) return integer;
 pragma Import(C,QGraphicsLinearLayout_count, "QGraphicsLinearLayout_count");
 
 procedure QGraphicsLinearLayout_invalidate(handle: not null QGraphicsLinearLayoutH);
 pragma Import(C,QGraphicsLinearLayout_invalidate, "QGraphicsLinearLayout_invalidate");
 
 function  QGraphicsLinearLayout_itemAt(handle: not null QGraphicsLinearLayoutH;index: integer) return QGraphicsLayoutItemH;
 pragma Import(C,QGraphicsLinearLayout_itemAt, "QGraphicsLinearLayout_itemAt");
 
 function  QGraphicsLinearLayout_sizeHint(handle: not null QGraphicsLinearLayoutH; which: integer;constraint: QSizeFH := QSizeF_create) return QSizeFH;
 pragma Import(C,QGraphicsLinearLayout_sizeHint, "QGraphicsLinearLayout_sizeHint");
 
 procedure QGraphicsLinearLayout_dump(handle: not null QGraphicsLinearLayoutH; indent: integer);
 pragma Import(C,QGraphicsLinearLayout_dump, "QGraphicsLinearLayout_dump");
 
 function  QGraphicsLinearLayout_create(orientation: integer; parent:QGraphicsLayoutItemH := null) return QGraphicsLinearLayoutH ;

-------------------------------------------------------------------------------------------------------------
 function  QGraphicsAnchorLayout_create(parent:QGraphicsLayoutItemH := null) return QGraphicsAnchorLayoutH ;
 pragma Import(C,QGraphicsAnchorLayout_create, "QGraphicsAnchorLayout_create");
 
 procedure QGraphicsAnchorLayout_destroy(handle:QGraphicsAnchorLayoutH);
 pragma Import(C,QGraphicsAnchorLayout_destroy, "QGraphicsAnchorLayout_destroy");
 
 function  QGraphicsAnchorLayout_addAnchor(handle:QGraphicsAnchorLayoutH; firstItem:QGraphicsLayoutItemH; firstEdge:integer; secondItem:QGraphicsLayoutItemH; secondEdge:integer) return QGraphicsAnchorH;
 pragma Import(C,QGraphicsAnchorLayout_addAnchor, "QGraphicsAnchorLayout_addAnchor");
 
 function  QGraphicsAnchorLayout_anchor(handle:QGraphicsAnchorLayoutH; firstItem: QGraphicsLayoutItemH; firstEdge: integer;  secondItem: QGraphicsLayoutItemH; secondEdge: integer) return QGraphicsAnchorH;
 pragma Import(C,QGraphicsAnchorLayout_anchor, "QGraphicsAnchorLayout_anchor");
 
 procedure QGraphicsAnchorLayout_addCornerAnchors(handle:QGraphicsAnchorLayoutH; firstItem:QGraphicsLayoutItemH; firstCorner: integer; secondItem :QGraphicsLayoutItemH; secondCorner: integer);
 pragma Import(C,QGraphicsAnchorLayout_addCornerAnchors, "QGraphicsAnchorLayout_addCornerAnchors");
 
 procedure QGraphicsAnchorLayout_addAnchors(handle:QGraphicsAnchorLayoutH; firstItem :QGraphicsLayoutItemH; secondItem :QGraphicsLayoutItemH; orientations : cardinal := QtHorizontal + QtVertical);
 pragma Import(C,QGraphicsAnchorLayout_addAnchors, "QGraphicsAnchorLayout_addAnchors");
 
 procedure QGraphicsAnchorLayout_setHorizontalSpacing(handle:QGraphicsAnchorLayoutH;spacing: qreal);
 pragma Import(C,QGraphicsAnchorLayout_setHorizontalSpacing, "QGraphicsAnchorLayout_setHorizontalSpacing");
 
 procedure QGraphicsAnchorLayout_setVerticalSpacing(handle:QGraphicsAnchorLayoutH;spacing: qreal);
 pragma Import(C,QGraphicsAnchorLayout_setVerticalSpacing, "QGraphicsAnchorLayout_setVerticalSpacing");
 
 procedure QGraphicsAnchorLayout_setSpacing(handle:QGraphicsAnchorLayoutH;spacing: qreal);
 pragma Import(C,QGraphicsAnchorLayout_setSpacing, "QGraphicsAnchorLayout_setSpacing");
 
 function  QGraphicsAnchorLayout_horizontalSpacing(handle:QGraphicsAnchorLayoutH) return qreal;
 pragma Import(C,QGraphicsAnchorLayout_horizontalSpacing, "QGraphicsAnchorLayout_horizontalSpacing");
 
 function  QGraphicsAnchorLayout_verticalSpacing(handle:QGraphicsAnchorLayoutH) return qreal;
 pragma Import(C,QGraphicsAnchorLayout_verticalSpacing, "QGraphicsAnchorLayout_verticalSpacing");
 
 procedure QGraphicsAnchorLayout_removeAt(handle:QGraphicsAnchorLayoutH; index: integer);
 pragma Import(C,QGraphicsAnchorLayout_removeAt, "QGraphicsAnchorLayout_removeAt");
 
 procedure QGraphicsAnchorLayout_setGeometry(handle:QGraphicsAnchorLayoutH; rect: QRectFH);
 pragma Import(C,QGraphicsAnchorLayout_setGeometry, "QGraphicsAnchorLayout_setGeometry");
 
 function  QGraphicsAnchorLayout_count(handle:QGraphicsAnchorLayoutH) return integer;
 pragma Import(C,QGraphicsAnchorLayout_count, "QGraphicsAnchorLayout_count");
 
 function  QGraphicsAnchorLayout_itemAt(handle:QGraphicsAnchorLayoutH; index: integer) return QGraphicsLayoutItemH;
 pragma Import(C,QGraphicsAnchorLayout_itemAt, "QGraphicsAnchorLayout_itemAt");
 
 procedure QGraphicsAnchorLayout_invalidate(handle:QGraphicsAnchorLayoutH);
 pragma Import(C,QGraphicsAnchorLayout_invalidate, "QGraphicsAnchorLayout_invalidate");
 
end;
