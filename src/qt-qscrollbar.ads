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

package Qt.QScrollBar           is

function QScrollBar_create(parent: QWidgetH := null) return QScrollBarH;    
pragma Import(C,QScrollBar_create,"QScrollBar_create");

procedure QScrollBar_destroy(handle: not null  QScrollBarH);   
pragma Import(C,QScrollBar_destroy,"QScrollBar_destroy");

function QScrollBar_create2(p1: QtOrientation; parent: QWidgetH := null) return QScrollBarH;
pragma Import(C,QScrollBar_create2,"QScrollBar_create2");

function  QScrollBar_sizeHint(handle: not null  QScrollBarH) return QSizeH;
pragma Import(C,QScrollBar_sizeHint,"QScrollBar_sizeHint");

function QScrollBar_event(handle: not null  QScrollBarH; event: QEventH) return  Boolean;   
pragma Import(C,QScrollBar_event,"QScrollBar_event");

procedure  QScrollBar_setRange(handle: not null  QScrollBarH;from: integer := 0; to:  integer := 100);
pragma Import(C,QScrollBar_setRange ,"QScrollBar_setRange");
 
------------------------------------------------------------------------------------------------------------
function QScrollBar_create(p1: QtOrientation; parent: QWidgetH := null) return QScrollBarH;

end Qt.QScrollBar;
