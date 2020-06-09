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

package Qt.QScrollArea          is

function QScrollArea_create(parent: QWidgetH := null) return QScrollAreaH;   
pragma Import(C,QScrollArea_create,"QScrollArea_create");

procedure QScrollArea_destroy(handle: not null  QScrollAreaH);   
pragma Import(C,QScrollArea_destroy,"QScrollArea_destroy");

function QScrollArea_widget(handle: not null  QScrollAreaH) return  QWidgetH;   
pragma Import(C,QScrollArea_widget,"QScrollArea_widget");

procedure QScrollArea_setWidget(handle: not null  QScrollAreaH; widget: QWidgetH);   
pragma Import(C,QScrollArea_setWidget,"QScrollArea_setWidget");

function QScrollArea_takeWidget(handle: not null  QScrollAreaH) return  QWidgetH;   
pragma Import(C,QScrollArea_takeWidget,"QScrollArea_takeWidget");

function QScrollArea_widgetResizable(handle: not null  QScrollAreaH) return  Boolean;   
pragma Import(C,QScrollArea_widgetResizable,"QScrollArea_widgetResizable");

procedure QScrollArea_setWidgetResizable(handle: not null  QScrollAreaH; resizable: Boolean);   
pragma Import(C,QScrollArea_setWidgetResizable,"QScrollArea_setWidgetResizable");

function  QScrollArea_sizeHint(handle: not null  QScrollAreaH) return QSizeH;
pragma Import(C,QScrollArea_sizeHint,"QScrollArea_sizeHint");

function QScrollArea_focusNextPrevChild(handle: not null  QScrollAreaH; next: Boolean) return  Boolean;   
pragma Import(C,QScrollArea_focusNextPrevChild,"QScrollArea_focusNextPrevChild");

function QScrollArea_alignment(handle: not null  QScrollAreaH) return  QtAlignment;   
pragma Import(C,QScrollArea_alignment,"QScrollArea_alignment");

procedure QScrollArea_setAlignment(handle: not null  QScrollAreaH; p1: QtAlignment);   
pragma Import(C,QScrollArea_setAlignment,"QScrollArea_setAlignment");

procedure QScrollArea_ensureVisible(handle: not null  QScrollAreaH; x: Integer; y: Integer; xmargin: Integer := 50; ymargin: Integer := 50);   
pragma Import(C,QScrollArea_ensureVisible,"QScrollArea_ensureVisible");

procedure QScrollArea_ensureWidgetVisible(handle: not null  QScrollAreaH; childWidget: QWidgetH; xmargin: Integer := 50; ymargin: Integer := 50);   
pragma Import(C,QScrollArea_ensureWidgetVisible,"QScrollArea_ensureWidgetVisible");

end Qt.QScrollArea;
