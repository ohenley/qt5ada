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

package Qt.QAccessibleWidget    is

 function  QAccessibleWidget_create(parent:QWidgetH; role:integer; name:QStringH) return QAccessibleWidgetH;
 pragma Import(C,QAccessibleWidget_create, "QAccessibleWidget_create");
 
 function  QAccessibleWidget_window(handle: not null QAccessibleWidgetH) return QWindowH;
 pragma Import(C,QAccessibleWidget_window, "QAccessibleWidget_window");
 
 function  QAccessibleWidget_indexOfChild(handle: not null QAccessibleWidgetH;chiled:QAccessibleInterfaceH) return integer;
 pragma Import(C,QAccessibleWidget_indexOfChild, "QAccessibleWidget_indexOfChild");
 
 function  QAccessibleWidget_childCount(handle: not null QAccessibleWidgetH) return integer;
 pragma Import(C,QAccessibleWidget_childCount, "QAccessibleWidget_childCount");
 
 function  QAccessibleWidget_focusChild(handle: not null QAccessibleWidgetH) return QAccessibleInterfaceH;
 pragma Import(C,QAccessibleWidget_focusChild, "QAccessibleWidget_focusChild");
 
 function  QAccessibleWidget_rect(handle: not null QAccessibleWidgetH) return QRectH;
 pragma Import(C,QAccessibleWidget_rect, "QAccessibleWidget_rect");
 
 function  QAccessibleWidget_parent(handle: not null QAccessibleWidgetH) return QAccessibleInterfaceH;
 pragma Import(C,QAccessibleWidget_parent, "QAccessibleWidget_parent");
 
 function  QAccessibleWidget_child(handle: not null QAccessibleWidgetH; index:integer) return QAccessibleInterfaceH;
 pragma Import(C,QAccessibleWidget_child, "QAccessibleWidget_child");
 
 function  QAccessibleWidget_text(handle: not null QAccessibleWidgetH; t:integer) return QStringH;
 pragma Import(C,QAccessibleWidget_text, "QAccessibleWidget_text");
 
 function  QAccessibleWidget_role(handle: not null QAccessibleWidgetH) return integer;
 pragma Import(C,QAccessibleWidget_role, "QAccessibleWidget_role");
 
 function  QAccessibleWidget_foregroundColor(handle: not null QAccessibleWidgetH) return QColorH;
 pragma Import(C,QAccessibleWidget_foregroundColor, "QAccessibleWidget_foregroundColor");
 
 function  QAccessibleWidget_backgroundColor(handle: not null QAccessibleWidgetH) return QColorH;
 pragma Import(C,QAccessibleWidget_backgroundColor, "QAccessibleWidget_backgroundColor");
 
 function  QAccessibleWidget_actionNames(handle: not null QAccessibleWidgetH) return QStringListH;
 pragma Import(C,QAccessibleWidget_actionNames, "QAccessibleWidget_actionNames");
 
 procedure QAccessibleWidget_doAction(handle: not null QAccessibleWidgetH; actionName:QStringH);
 pragma Import(C,QAccessibleWidget_doAction, "QAccessibleWidget_doAction");
 
 function  QAccessibleWidget_keyBindingsForAction(handle: not null QAccessibleWidgetH; actionName:QStringH) return QStringListH;
 pragma Import(C,QAccessibleWidget_keyBindingsForAction, "QAccessibleWidget_keyBindingsForAction");
 
end;
