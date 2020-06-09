--
-- a===================================================================¬
-- ¦       D E S I G N   E N G I N E E R I N G            ¦D¦S¦        ¦
-- ¦            S O F T W A R E                           L=¦=-        ¦
-- ¦                                                                   ¦
-- ¦        QtAda - Ada to QT5 interface                               ¦
-- ¦                                                                   ¦
-- ¦        Author :  Leonid Dulman     2012                           ¦
-- ¦ Copyright (C) 2012                                                ¦
-- L===================================================================-
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QFocusFrame is

 function  QFocusFrame_create(parent:QWidgetH := null) return QFocusFrameH;
 pragma Import(C,QFocusFrame_create, "QFocusFrame_create");
 
 procedure QFocusFrame_destroy(handle: not null QFocusFrameH);
 pragma Import(C,QFocusFrame_destroy, "QFocusFrame_destroy");
 
 procedure QFocusFrame_setWidget(handle: not null QFocusFrameH; widget: not null QWidgetH);
 pragma Import(C,QFocusFrame_setWidget, "QFocusFrame_setWidget");
 
 function  QFocusFrame_widget(handle: not null QFocusFrameH) return QWidgetH;
 pragma Import(C,QFocusFrame_widget, "QFocusFrame_widget");
 
end;
