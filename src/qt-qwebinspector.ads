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

package Qt.QWebInspector  is

 function  QWebInspector_create(parent:QWidgetH := null) return QWebInspectorH;
 pragma Import(C,QWebInspector_create, "QWebInspector_create");
 
 procedure QWebInspector_destroy(handle: not null QWebInspectorH);
 pragma Import(C,QWebInspector_destroy, "QWebInspector_destroy");
 
 procedure QWebInspector_setPage(handle: not null QWebInspectorH;page:QWebPageH);
 pragma Import(C,QWebInspector_setPage, "QWebInspector_setPage");
 
 function  QWebInspector_page(handle: not null QWebInspectorH) return QWebPageH;
 pragma Import(C,QWebInspector_page, "QWebInspector_page");
 
 function  QWebInspector_sizeHint(handle: not null QWebInspectorH) return QSizeH;
 pragma Import(C,QWebInspector_sizeHint, "QWebInspector_sizeHint");
 
 function  QWebInspector_event(handle: not null QWebInspectorH;e:QEventH) return boolean;
 pragma Import(C,QWebInspector_event, "QWebInspector_event");
 
end Qt.QWebInspector;
