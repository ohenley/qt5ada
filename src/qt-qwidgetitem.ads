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

package Qt.QWidgetItem          is

function QWidgetItem_create(w: QWidgetH) return  QWidgetItemH;   
pragma Import(C,QWidgetItem_create,"QWidgetItem_create");

procedure QWidgetItem_destroy(handle: not null  QWidgetItemH);   
pragma Import(C,QWidgetItem_destroy,"QWidgetItem_destroy");

function  QWidgetItem_sizeHint(handle: not null  QWidgetItemH) return QSizeH;
pragma Import(C,QWidgetItem_sizeHint,"QWidgetItem_sizeHint");

function  QWidgetItem_minimumSize(handle: not null  QWidgetItemH) return QSizeH;
pragma Import(C,QWidgetItem_minimumSize,"QWidgetItem_minimumSize");

function  QWidgetItem_maximumSize(handle: not null  QWidgetItemH) return QSizeH;
pragma Import(C,QWidgetItem_maximumSize,"QWidgetItem_maximumSize");

function QWidgetItem_expandingDirections(handle: not null  QWidgetItemH) return  QtOrientations;   
pragma Import(C,QWidgetItem_expandingDirections,"QWidgetItem_expandingDirections");

function QWidgetItem_isEmpty(handle: not null  QWidgetItemH) return  Boolean;   
pragma Import(C,QWidgetItem_isEmpty,"QWidgetItem_isEmpty");

procedure QWidgetItem_setGeometry(handle: not null  QWidgetItemH; p1: QRectH);   
pragma Import(C,QWidgetItem_setGeometry,"QWidgetItem_setGeometry");

function  QWidgetItem_geometry(handle: not null  QWidgetItemH) return QRectH;
pragma Import(C,QWidgetItem_geometry,"QWidgetItem_geometry");

function QWidgetItem_widget(handle: not null  QWidgetItemH) return  QWidgetH;   
pragma Import(C,QWidgetItem_widget,"QWidgetItem_widget");

function QWidgetItem_hasHeightForWidth(handle: not null  QWidgetItemH) return  Boolean;   
pragma Import(C,QWidgetItem_hasHeightForWidth,"QWidgetItem_hasHeightForWidth");

function QWidgetItem_heightForWidth(handle: not null  QWidgetItemH; p1: Integer) return  Integer;   
pragma Import(C,QWidgetItem_heightForWidth,"QWidgetItem_heightForWidth");

end Qt.QWidgetItem;
