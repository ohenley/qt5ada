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

with Qt.QSizePolicy; use Qt.QSizePolicy;
package Qt.QLayoutItem is

subtype QSizePolicyControlTypes is quint;

function  QLayoutItem_sizeHint(handle: not null  QLayoutItemH) return  QSizeH;
pragma Import(C,QLayoutItem_sizeHint,"QLayoutItem_sizeHint");

function  QLayoutItem_minimumSize(handle: not null  QLayoutItemH) return QSizeH;
pragma Import(C,QLayoutItem_minimumSize,"QLayoutItem_minimumSize");

function  QLayoutItem_maximumSize(handle: not null  QLayoutItemH) return QSizeH;
pragma Import(C,QLayoutItem_maximumSize,"QLayoutItem_maximumSize");

function QLayoutItem_expandingDirections(handle: not null  QLayoutItemH) return  QtOrientations;   
pragma Import(C,QLayoutItem_expandingDirections,"QLayoutItem_expandingDirections");

procedure QLayoutItem_setGeometry(handle: not null  QLayoutItemH; p1: QRectH);   
pragma Import(C,QLayoutItem_setGeometry,"QLayoutItem_setGeometry");

function  QLayoutItem_geometry(handle: not null  QLayoutItemH) return QRectH;
pragma Import(C,QLayoutItem_geometry,"QLayoutItem_geometry");

function QLayoutItem_isEmpty(handle: not null  QLayoutItemH) return  Boolean;   
pragma Import(C,QLayoutItem_isEmpty,"QLayoutItem_isEmpty");

function QLayoutItem_hasHeightForWidth(handle: not null  QLayoutItemH) return  Boolean;   
pragma Import(C,QLayoutItem_hasHeightForWidth,"QLayoutItem_hasHeightForWidth");

function QLayoutItem_heightForWidth(handle: not null  QLayoutItemH; p1: Integer) return  Integer;   
pragma Import(C,QLayoutItem_heightForWidth,"QLayoutItem_heightForWidth");

function QLayoutItem_minimumHeightForWidth(handle: not null  QLayoutItemH; p1: Integer) return  Integer;   
pragma Import(C,QLayoutItem_minimumHeightForWidth,"QLayoutItem_minimumHeightForWidth");

procedure QLayoutItem_invalidate(handle: not null  QLayoutItemH);   
pragma Import(C,QLayoutItem_invalidate,"QLayoutItem_invalidate");

function QLayoutItem_widget(handle: not null  QLayoutItemH) return  QWidgetH;   
pragma Import(C,QLayoutItem_widget,"QLayoutItem_widget");

function QLayoutItem_layout(handle: not null  QLayoutItemH) return  QLayoutH;   
pragma Import(C,QLayoutItem_layout,"QLayoutItem_layout");

function QLayoutItem_spacerItem(handle: not null  QLayoutItemH) return  QSpacerItemH;   
pragma Import(C,QLayoutItem_spacerItem,"QLayoutItem_spacerItem");

function QLayoutItem_alignment(handle: not null  QLayoutItemH) return  QtAlignment;   
pragma Import(C,QLayoutItem_alignment,"QLayoutItem_alignment");

procedure QLayoutItem_setAlignment(handle: not null  QLayoutItemH; a: QtAlignment);   
pragma Import(C,QLayoutItem_setAlignment,"QLayoutItem_setAlignment");

function QLayoutItem_controlTypes(handle: not null  QLayoutItemH) return  QSizePolicyControlTypes;   
pragma Import(C,QLayoutItem_controlTypes,"QLayoutItem_controlTypes");

end Qt.QLayoutItem;
