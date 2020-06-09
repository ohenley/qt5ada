--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2014,2019            บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QLayout is

mainVBoxLayout: QVBoxLayoutH  := null;
mainHBoxLayout: QHBoxLayoutH  := null;
mainGridLayout: QGridLayoutH  := null;

type  QLayoutSizeConstraint is (QLayoutSetDefaultConstraint, QLayoutSetNoConstraint, QLayoutSetMinimumSize, QLayoutSetFixedSize, QLayoutSetMaximumSize, QLayoutSetMinAndMaxSize );
pragma Convention(C,QLayoutSizeConstraint);

type FindChildOptions is (FindDirectChildrenOnly,FindChildrenRecursively);
pragma Convention(C,FindChildOptions);

 procedure QLayout_destroy(handle:not null QLayoutH);
 pragma Import(C,QLayout_destroy, "QLayout_destroy");
 
 function  QLayout_replaceWidget(handle:not null QLayoutH;fromWidget,toQWidget:QWidgetH; options:FindChildOptions := FindChildrenRecursively) return QLayoutItemH;
 pragma Import(C,QLayout_replaceWidget, "QLayout_replaceWidget");

function QLayout_margin(handle: not null  QLayoutH) return  Integer;   
pragma Import(C,QLayout_margin,"QLayout_margin");

function QLayout_spacing(handle: not null  QLayoutH) return  Integer;   
pragma Import(C,QLayout_spacing,"QLayout_spacing");

procedure QLayout_setMargin(handle: not null  QLayoutH; p1: Integer);   
pragma Import(C,QLayout_setMargin,"QLayout_setMargin");

procedure QLayout_setSpacing(handle: not null  QLayoutH; p1: Integer);   
pragma Import(C,QLayout_setSpacing,"QLayout_setSpacing");

procedure QLayout_setContentsMargins(handle: not null  QLayoutH; left: Integer; top: Integer; right: Integer; bottom: Integer);   
pragma Import(C,QLayout_setContentsMargins,"QLayout_setContentsMargins");

procedure QLayout_getContentsMargins(handle: not null  QLayoutH; left: PInteger; top: PInteger; right: PInteger; bottom: PInteger);   
pragma Import(C,QLayout_getContentsMargins,"QLayout_getContentsMargins");

function  QLayout_contentsRect(handle: not null  QLayoutH) return  QRectH;
pragma Import(C,QLayout_contentsRect,"QLayout_contentsRect");

function QLayout_setAlignment(handle: not null  QLayoutH; w: QWidgetH; alignment: QtAlignment) return  Boolean;    
pragma Import(C,QLayout_setAlignment,"QLayout_setAlignment");

function QLayout_setAlignment2(handle: not null  QLayoutH; l: QLayoutH; alignment: QtAlignment) return  Boolean;
pragma Import(C,QLayout_setAlignment2,"QLayout_setAlignment2");

procedure QLayout_setSizeConstraint(handle: not null  QLayoutH; p1: QLayoutSizeConstraint);   
pragma Import(C,QLayout_setSizeConstraint,"QLayout_setSizeConstraint");

function QLayout_sizeConstraint(handle: not null  QLayoutH) return  QLayoutSizeConstraint;   
pragma Import(C,QLayout_sizeConstraint,"QLayout_sizeConstraint");

procedure QLayout_setMenuBar(handle: not null  QLayoutH; w: QWidgetH);   
pragma Import(C,QLayout_setMenuBar,"QLayout_setMenuBar");

function QLayout_menuBar(handle: not null  QLayoutH) return  QWidgetH;   
pragma Import(C,QLayout_menuBar,"QLayout_menuBar");

function QLayout_parentWidget(handle: not null  QLayoutH) return  QWidgetH;   
pragma Import(C,QLayout_parentWidget,"QLayout_parentWidget");

procedure QLayout_invalidate(handle: not null  QLayoutH);   
pragma Import(C,QLayout_invalidate,"QLayout_invalidate");

function  QLayout_geometry(handle: not null  QLayoutH) return  QRectH;
pragma Import(C,QLayout_geometry,"QLayout_geometry");

function QLayout_activate(handle: not null  QLayoutH) return  Boolean;   
pragma Import(C,QLayout_activate,"QLayout_activate");

procedure QLayout_update(handle: not null  QLayoutH);   
pragma Import(C,QLayout_update,"QLayout_update");

procedure QLayout_addWidget(handle: not null  QLayoutH; w: QWidgetH);   
pragma Import(C,QLayout_addWidget,"QLayout_addWidget");

procedure QLayout_addItem(handle: not null  QLayoutH; p1: QLayoutItemH);   
pragma Import(C,QLayout_addItem,"QLayout_addItem");

procedure QLayout_removeWidget(handle: not null  QLayoutH; w: QWidgetH);   
pragma Import(C,QLayout_removeWidget,"QLayout_removeWidget");

procedure QLayout_removeItem(handle: not null  QLayoutH; p1: QLayoutItemH);   
pragma Import(C,QLayout_removeItem,"QLayout_removeItem");

function QLayout_expandingDirections(handle: not null  QLayoutH) return  QtOrientations;   
pragma Import(C,QLayout_expandingDirections,"QLayout_expandingDirections");

function  QLayout_minimumSize(handle: not null  QLayoutH) return  QSizeH;
pragma Import(C,QLayout_minimumSize,"QLayout_minimumSize");

function  QLayout_maximumSize(handle: not null  QLayoutH) return  QSizeH;
pragma Import(C,QLayout_maximumSize,"QLayout_maximumSize");

procedure QLayout_setGeometry(handle: not null  QLayoutH; p1: QRectH);   
pragma Import(C,QLayout_setGeometry,"QLayout_setGeometry");

function QLayout_itemAt(handle: not null  QLayoutH; index: Integer) return  QLayoutItemH;   
pragma Import(C,QLayout_itemAt,"QLayout_itemAt");

function QLayout_takeAt(handle: not null  QLayoutH; index: Integer) return  QLayoutItemH;   
pragma Import(C,QLayout_takeAt,"QLayout_takeAt");

function QLayout_indexOf(handle: not null  QLayoutH; p1: QWidgetH) return  Integer;   
pragma Import(C,QLayout_indexOf,"QLayout_indexOf");

function QLayout_count(handle: not null  QLayoutH) return  Integer;   
pragma Import(C,QLayout_count,"QLayout_count");

function QLayout_isEmpty(handle: not null  QLayoutH) return  Boolean;   
pragma Import(C,QLayout_isEmpty,"QLayout_isEmpty");

function QLayout_totalHeightForWidth(handle: not null  QLayoutH; w: Integer) return  Integer;   
pragma Import(C,QLayout_totalHeightForWidth,"QLayout_totalHeightForWidth");

function  QLayout_totalMinimumSize(handle: not null  QLayoutH) return  QSizeH;
pragma Import(C,QLayout_totalMinimumSize,"QLayout_totalMinimumSize");

function  QLayout_totalMaximumSize(handle: not null  QLayoutH) return  QSizeH;
pragma Import(C,QLayout_totalMaximumSize,"QLayout_totalMaximumSize");

function  QLayout_totalSizeHint(handle: not null  QLayoutH) return  QSizeH;
pragma Import(C,QLayout_totalSizeHint,"QLayout_totalSizeHint");

function QLayout_layout(handle: not null  QLayoutH) return  QLayoutH;   
pragma Import(C,QLayout_layout,"QLayout_layout");

procedure QLayout_setEnabled(handle: not null  QLayoutH; p1: Boolean);   
pragma Import(C,QLayout_setEnabled,"QLayout_setEnabled");

function QLayout_isEnabled(handle: not null  QLayoutH) return  Boolean;   
pragma Import(C,QLayout_isEnabled,"QLayout_isEnabled");

function  QLayout_closestAcceptableSize(w: QWidgetH; s: QSizeH) return  QSizeH;
pragma Import(C,QLayout_closestAcceptableSize,"QLayout_closestAcceptableSize");

function QLayout_to_QLayoutItem(handle: not null  QLayoutH) return  QLayoutItemH;   
pragma Import(C,QLayout_to_QLayoutItem,"QLayout_to_QLayoutItem");

subtype  QBoxLayoutDirection is cardinal;

QBoxLayoutLeftToRight : constant QBoxLayoutDirection := 0;
QBoxLayoutRightToLeft : constant QBoxLayoutDirection := 1;
QBoxLayoutTopToBottom : constant QBoxLayoutDirection := 2;
QBoxLayoutBottomToTop : constant QBoxLayoutDirection := 3;
QBoxLayoutDown        : constant QBoxLayoutDirection := 2;
QBoxLayoutUp          : constant QBoxLayoutDirection := 3;

function QBoxLayout_create(p1: QBoxLayoutDirection; parent: QWidgetH := null) return QBoxLayoutH;   
pragma Import(C,QBoxLayout_create,"QBoxLayout_create");

procedure QBoxLayout_destroy(handle: not null  QBoxLayoutH);   
pragma Import(C,QBoxLayout_destroy,"QBoxLayout_destroy");

function QBoxLayout_direction(handle: not null  QBoxLayoutH) return  QBoxLayoutDirection;   
pragma Import(C,QBoxLayout_direction,"QBoxLayout_direction");

procedure QBoxLayout_setDirection(handle: not null  QBoxLayoutH; p1: QBoxLayoutDirection);   
pragma Import(C,QBoxLayout_setDirection,"QBoxLayout_setDirection");

procedure QBoxLayout_addSpacing(handle: not null  QBoxLayoutH; size: Integer);   
pragma Import(C,QBoxLayout_addSpacing,"QBoxLayout_addSpacing");

procedure QBoxLayout_addStretch(handle: not null  QBoxLayoutH; stretch: Integer := 0);   
pragma Import(C,QBoxLayout_addStretch,"QBoxLayout_addStretch");

procedure QBoxLayout_addSpacerItem(handle:not null QBoxLayoutH;spacerItem:QSpacerItemH);
pragma Import(C,QBoxLayout_addSpacerItem, "QBoxLayout_addSpacerItem");

procedure QBoxLayout_addWidget(handle: not null  QBoxLayoutH; p1: QWidgetH; stretch: Integer := 0; alignment: QtAlignment := 0);   
pragma Import(C,QBoxLayout_addWidget,"QBoxLayout_addWidget");

procedure QBoxLayout_addLayout(handle: not null  QBoxLayoutH; layout: QLayoutH; stretch: Integer := 0);   
pragma Import(C,QBoxLayout_addLayout,"QBoxLayout_addLayout");

procedure QBoxLayout_addStrut(handle: not null  QBoxLayoutH; p1: Integer);   
pragma Import(C,QBoxLayout_addStrut,"QBoxLayout_addStrut");

procedure QBoxLayout_addItem(handle: not null  QBoxLayoutH; p1: QLayoutItemH);   
pragma Import(C,QBoxLayout_addItem,"QBoxLayout_addItem");

procedure QBoxLayout_insertSpacing(handle: not null  QBoxLayoutH; index: Integer; size: Integer);   
pragma Import(C,QBoxLayout_insertSpacing,"QBoxLayout_insertSpacing");

procedure QBoxLayout_insertStretch(handle: not null  QBoxLayoutH; index: Integer; stretch: Integer := 0);   
pragma Import(C,QBoxLayout_insertStretch,"QBoxLayout_insertStretch");

procedure QBoxLayout_insertWidget(handle: not null  QBoxLayoutH; index: Integer; widget: QWidgetH; stretch: Integer := 0; alignment: QtAlignment := 0);   
pragma Import(C,QBoxLayout_insertWidget,"QBoxLayout_insertWidget");

procedure QBoxLayout_insertLayout(handle: not null  QBoxLayoutH; index: Integer; layout: QLayoutH; stretch: Integer := 0);   
pragma Import(C,QBoxLayout_insertLayout,"QBoxLayout_insertLayout");

function QBoxLayout_spacing(handle: not null  QBoxLayoutH) return  Integer;   
pragma Import(C,QBoxLayout_spacing,"QBoxLayout_spacing");

procedure QBoxLayout_setSpacing(handle: not null  QBoxLayoutH; spacing: Integer);   
pragma Import(C,QBoxLayout_setSpacing,"QBoxLayout_setSpacing");

function QBoxLayout_setStretchFactor(handle: not null  QBoxLayoutH; w: QWidgetH; stretch: Integer) return  Boolean;    
pragma Import(C,QBoxLayout_setStretchFactor,"QBoxLayout_setStretchFactor");

function QBoxLayout_setStretchFactor2(handle: not null  QBoxLayoutH; l: QLayoutH; stretch: Integer) return  Boolean;
pragma Import(C,QBoxLayout_setStretchFactor2,"QBoxLayout_setStretchFactor2");

function  QBoxLayout_sizeHint(handle: not null  QBoxLayoutH) return  QSizeH;
pragma Import(C,QBoxLayout_sizeHint,"QBoxLayout_sizeHint");

function  QBoxLayout_minimumSize(handle: not null  QBoxLayoutH) return  QSizeH;
pragma Import(C,QBoxLayout_minimumSize,"QBoxLayout_minimumSize");

function  QBoxLayout_maximumSize(handle: not null  QBoxLayoutH) return  QSizeH;
pragma Import(C,QBoxLayout_maximumSize,"QBoxLayout_maximumSize");

function QBoxLayout_hasHeightForWidth(handle: not null  QBoxLayoutH) return  Boolean;   
pragma Import(C,QBoxLayout_hasHeightForWidth,"QBoxLayout_hasHeightForWidth");

function QBoxLayout_heightForWidth(handle: not null  QBoxLayoutH; p1: Integer) return  Integer;   
pragma Import(C,QBoxLayout_heightForWidth,"QBoxLayout_heightForWidth");

function QBoxLayout_minimumHeightForWidth(handle: not null  QBoxLayoutH; p1: Integer) return  Integer;   
pragma Import(C,QBoxLayout_minimumHeightForWidth,"QBoxLayout_minimumHeightForWidth");

function QBoxLayout_expandingDirections(handle: not null  QBoxLayoutH) return  QtOrientations;   
pragma Import(C,QBoxLayout_expandingDirections,"QBoxLayout_expandingDirections");

procedure QBoxLayout_invalidate(handle: not null  QBoxLayoutH);   
pragma Import(C,QBoxLayout_invalidate,"QBoxLayout_invalidate");

function QBoxLayout_itemAt(handle: not null  QBoxLayoutH; p1: Integer) return  QLayoutItemH;   
pragma Import(C,QBoxLayout_itemAt,"QBoxLayout_itemAt");

function QBoxLayout_takeAt(handle: not null  QBoxLayoutH; p1: Integer) return  QLayoutItemH;   
pragma Import(C,QBoxLayout_takeAt,"QBoxLayout_takeAt");

function QBoxLayout_count(handle: not null  QBoxLayoutH) return  Integer;   
pragma Import(C,QBoxLayout_count,"QBoxLayout_count");

procedure QBoxLayout_setGeometry(handle: not null  QBoxLayoutH; p1: QRectH);
pragma Import(C,QBoxLayout_setGeometry,"QBoxLayout_setGeometry");

function QHBoxLayout_create return  QHBoxLayoutH;    
pragma Import(C,QHBoxLayout_create,"QHBoxLayout_create");

procedure QHBoxLayout_destroy(handle: not null  QHBoxLayoutH);   
pragma Import(C,QHBoxLayout_destroy,"QHBoxLayout_destroy");

function QHBoxLayout_create2(parent: QWidgetH) return  QHBoxLayoutH;
pragma Import(C,QHBoxLayout_create2,"QHBoxLayout_create2");

function QVBoxLayout_create return  QVBoxLayoutH;    
pragma Import(C,QVBoxLayout_create,"QVBoxLayout_create");

procedure QVBoxLayout_destroy(handle: not null  QVBoxLayoutH);   
pragma Import(C,QVBoxLayout_destroy,"QVBoxLayout_destroy");

function QVBoxLayout_create2(parent: QWidgetH) return  QVBoxLayoutH;
pragma Import(C,QVBoxLayout_create2,"QVBoxLayout_create2");

function QGridLayout_create(parent: QWidgetH) return  QGridLayoutH;    
pragma Import(C,QGridLayout_create,"QGridLayout_create");

procedure QGridLayout_destroy(handle: not null  QGridLayoutH);   
pragma Import(C,QGridLayout_destroy,"QGridLayout_destroy");

function QGridLayout_create2 return  QGridLayoutH;
pragma Import(C,QGridLayout_create2,"QGridLayout_create2");

function  QGridLayout_sizeHint(handle: not null  QGridLayoutH) return QSizeH;
pragma Import(C,QGridLayout_sizeHint,"QGridLayout_sizeHint");

function  QGridLayout_minimumSize(handle: not null  QGridLayoutH) return QSizeH;
pragma Import(C,QGridLayout_minimumSize,"QGridLayout_minimumSize");

function  QGridLayout_maximumSize(handle: not null  QGridLayoutH) return  QSizeH;
pragma Import(C,QGridLayout_maximumSize,"QGridLayout_maximumSize");

procedure QGridLayout_setHorizontalSpacing(handle: not null  QGridLayoutH; spacing: Integer);   
pragma Import(C,QGridLayout_setHorizontalSpacing,"QGridLayout_setHorizontalSpacing");

function QGridLayout_horizontalSpacing(handle: not null  QGridLayoutH) return  Integer;   
pragma Import(C,QGridLayout_horizontalSpacing,"QGridLayout_horizontalSpacing");

procedure QGridLayout_setVerticalSpacing(handle: not null  QGridLayoutH; spacing: Integer);   
pragma Import(C,QGridLayout_setVerticalSpacing,"QGridLayout_setVerticalSpacing");

function QGridLayout_verticalSpacing(handle: not null  QGridLayoutH) return  Integer;   
pragma Import(C,QGridLayout_verticalSpacing,"QGridLayout_verticalSpacing");

procedure QGridLayout_setSpacing(handle: not null  QGridLayoutH; spacing: Integer);   
pragma Import(C,QGridLayout_setSpacing,"QGridLayout_setSpacing");

function QGridLayout_spacing(handle: not null  QGridLayoutH) return  Integer;   
pragma Import(C,QGridLayout_spacing,"QGridLayout_spacing");

procedure QGridLayout_setRowStretch(handle: not null  QGridLayoutH; row: Integer; stretch: Integer);   
pragma Import(C,QGridLayout_setRowStretch,"QGridLayout_setRowStretch");

procedure QGridLayout_setColumnStretch(handle: not null  QGridLayoutH; column: Integer; stretch: Integer);   
pragma Import(C,QGridLayout_setColumnStretch,"QGridLayout_setColumnStretch");

function QGridLayout_rowStretch(handle: not null  QGridLayoutH; row: Integer) return  Integer;   
pragma Import(C,QGridLayout_rowStretch,"QGridLayout_rowStretch");

function QGridLayout_columnStretch(handle: not null  QGridLayoutH; column: Integer) return  Integer;   
pragma Import(C,QGridLayout_columnStretch,"QGridLayout_columnStretch");

procedure QGridLayout_setRowMinimumHeight(handle: not null  QGridLayoutH; row: Integer; minSize: Integer);   
pragma Import(C,QGridLayout_setRowMinimumHeight,"QGridLayout_setRowMinimumHeight");

procedure QGridLayout_setColumnMinimumWidth(handle: not null  QGridLayoutH; column: Integer; minSize: Integer);   
pragma Import(C,QGridLayout_setColumnMinimumWidth,"QGridLayout_setColumnMinimumWidth");

function QGridLayout_rowMinimumHeight(handle: not null  QGridLayoutH; row: Integer) return  Integer;   
pragma Import(C,QGridLayout_rowMinimumHeight,"QGridLayout_rowMinimumHeight");

function QGridLayout_columnMinimumWidth(handle: not null  QGridLayoutH; column: Integer) return  Integer;   
pragma Import(C,QGridLayout_columnMinimumWidth,"QGridLayout_columnMinimumWidth");

function QGridLayout_columnCount(handle: not null  QGridLayoutH) return  Integer;   
pragma Import(C,QGridLayout_columnCount,"QGridLayout_columnCount");

function QGridLayout_rowCount(handle: not null  QGridLayoutH) return  Integer;   
pragma Import(C,QGridLayout_rowCount,"QGridLayout_rowCount");

function  QGridLayout_cellRect(handle: not null  QGridLayoutH; row: Integer; column: Integer) return  QRectH;
pragma Import(C,QGridLayout_cellRect,"QGridLayout_cellRect");

function QGridLayout_hasHeightForWidth(handle: not null  QGridLayoutH) return  Boolean;   
pragma Import(C,QGridLayout_hasHeightForWidth,"QGridLayout_hasHeightForWidth");

function QGridLayout_heightForWidth(handle: not null  QGridLayoutH; p1: Integer) return  Integer;   
pragma Import(C,QGridLayout_heightForWidth,"QGridLayout_heightForWidth");

function QGridLayout_minimumHeightForWidth(handle: not null  QGridLayoutH; p1: Integer) return  Integer;   
pragma Import(C,QGridLayout_minimumHeightForWidth,"QGridLayout_minimumHeightForWidth");

function QGridLayout_expandingDirections(handle: not null  QGridLayoutH) return  QtOrientations;   
pragma Import(C,QGridLayout_expandingDirections,"QGridLayout_expandingDirections");

procedure QGridLayout_invalidate(handle: not null  QGridLayoutH);   
pragma Import(C,QGridLayout_invalidate,"QGridLayout_invalidate");

procedure QGridLayout_addWidget(handle: not null  QGridLayoutH; w: QWidgetH);    
pragma Import(C,QGridLayout_addWidget,"QGridLayout_addWidget");

procedure QGridLayout_addWidget2(handle: not null  QGridLayoutH; p1: QWidgetH; row: Integer; column: Integer; p4: QtAlignment := 0);
pragma Import(C,QGridLayout_addWidget2,"QGridLayout_addWidget2");

procedure QGridLayout_addWidget3(handle: not null  QGridLayoutH; p1: QWidgetH; row: Integer; column: Integer; rowSpan: Integer; columnSpan: Integer; p6: QtAlignment := 0);
pragma Import(C,QGridLayout_addWidget3,"QGridLayout_addWidget3");

procedure QGridLayout_addLayout(handle: not null  QGridLayoutH; p1: QLayoutH; row: Integer; column: Integer; p4: QtAlignment := 0);    
pragma Import(C,QGridLayout_addLayout,"QGridLayout_addLayout");

procedure QGridLayout_addLayout2(handle: not null  QGridLayoutH; p1: QLayoutH; row: Integer; column: Integer; rowSpan: Integer; columnSpan: Integer; p6: QtAlignment := 0);
pragma Import(C,QGridLayout_addLayout2,"QGridLayout_addLayout2");

procedure QGridLayout_setOriginCorner(handle: not null  QGridLayoutH; p1: QtCorner);   
pragma Import(C,QGridLayout_setOriginCorner,"QGridLayout_setOriginCorner");

function QGridLayout_originCorner(handle: not null  QGridLayoutH) return  QtCorner;   
pragma Import(C,QGridLayout_originCorner,"QGridLayout_originCorner");

function QGridLayout_itemAt(handle: not null  QGridLayoutH; p1: Integer) return  QLayoutItemH;   
pragma Import(C,QGridLayout_itemAt,"QGridLayout_itemAt");

function QGridLayout_takeAt(handle: not null  QGridLayoutH; p1: Integer) return  QLayoutItemH;   
pragma Import(C,QGridLayout_takeAt,"QGridLayout_takeAt");

function QGridLayout_count(handle: not null  QGridLayoutH) return  Integer;   
pragma Import(C,QGridLayout_count,"QGridLayout_count");

procedure QGridLayout_setGeometry(handle: not null  QGridLayoutH; p1: QRectH);   
pragma Import(C,QGridLayout_setGeometry,"QGridLayout_setGeometry");

procedure QGridLayout_addItem(handle: not null  QGridLayoutH; item: QLayoutItemH; row: Integer; column: Integer; rowSpan: Integer := 1; columnSpan: Integer := 1; p6: QtAlignment := 0);   
pragma Import(C,QGridLayout_addItem,"QGridLayout_addItem");

procedure QGridLayout_setDefaultPositioning(handle: not null  QGridLayoutH; n: Integer; orient: QtOrientation);   
pragma Import(C,QGridLayout_setDefaultPositioning,"QGridLayout_setDefaultPositioning");

procedure QGridLayout_getItemPosition(handle: not null  QGridLayoutH; idx: Integer; row: PInteger; column: PInteger; rowSpan: PInteger; columnSpan: PInteger);   
pragma Import(C,QGridLayout_getItemPosition,"QGridLayout_getItemPosition");

--------------------------------------------------------------------------------------------------------------------------
function QGridLayout_create return  QGridLayoutH;
procedure QGridLayout_addWidget(handle: not null  QGridLayoutH; p1: QWidgetH; row: Integer; column: Integer; p4: QtAlignment := 0);
procedure QGridLayout_addWidget(handle: not null  QGridLayoutH; p1: QWidgetH; row: Integer; column: Integer; rowSpan: Integer; columnSpan: Integer; p6: QtAlignment := 0);
procedure QGridLayout_addLayout(handle: not null  QGridLayoutH; p1: QLayoutH; row: Integer; column: Integer; rowSpan: Integer; columnSpan: Integer; p6: QtAlignment := 0);

function QHBoxLayout_create(parent: QWidgetH) return  QHBoxLayoutH;
function QVBoxLayout_create(parent: QWidgetH) return  QVBoxLayoutH;

end Qt.QLayout;
