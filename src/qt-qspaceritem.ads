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
package Qt.QSpacerItem is

function QSpacerItem_create(w: Integer := 40; h: Integer := 20; hData : integer := QSizePolicyPolicy_Expanding; vData: integer := QSizePolicyPolicy_Minimum) return QSpacerItemH;
pragma Import(C,QSpacerItem_create,"QSpacerItem_create");

procedure QSpacerItem_destroy(handle: not null  QSpacerItemH);   
pragma Import(C,QSpacerItem_destroy,"QSpacerItem_destroy");

procedure QSpacerItem_changeSize(handle: not null  QSpacerItemH; w,h: Integer; hData : integer := QSizePolicyPolicy_Expanding; vData: integer := QSizePolicyPolicy_Minimum);
pragma Import(C,QSpacerItem_changeSize,"QSpacerItem_changeSize");

function  QSpacerItem_sizeHint(handle: not null  QSpacerItemH) return QSizeH;
pragma Import(C,QSpacerItem_sizeHint,"QSpacerItem_sizeHint");

function  QSpacerItem_minimumSize(handle: not null  QSpacerItemH) return QSizeH;
pragma Import(C,QSpacerItem_minimumSize,"QSpacerItem_minimumSize");

function  QSpacerItem_maximumSize(handle: not null  QSpacerItemH) return QSizeH;
pragma Import(C,QSpacerItem_maximumSize,"QSpacerItem_maximumSize");

function QSpacerItem_expandingDirections(handle: not null  QSpacerItemH) return  QtOrientations;   
pragma Import(C,QSpacerItem_expandingDirections,"QSpacerItem_expandingDirections");

function QSpacerItem_isEmpty(handle: not null  QSpacerItemH) return  Boolean;   
pragma Import(C,QSpacerItem_isEmpty,"QSpacerItem_isEmpty");

procedure QSpacerItem_setGeometry(handle: not null  QSpacerItemH; p1: QRectH);   
pragma Import(C,QSpacerItem_setGeometry,"QSpacerItem_setGeometry");

function  QSpacerItem_geometry(handle: not null  QSpacerItemH) return QRectH;
pragma Import(C,QSpacerItem_geometry,"QSpacerItem_geometry");

function QSpacerItem_spacerItem(handle: not null  QSpacerItemH) return  QSpacerItemH;   
pragma Import(C,QSpacerItem_spacerItem,"QSpacerItem_spacerItem");

end Qt.QSpacerItem;
