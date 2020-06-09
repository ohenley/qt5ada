--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015                           บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QEvent; use Qt.QEvent;
package Qt.QEventTransition is

 function  QEventTransition_create(sourceState :QStateH := null) return QTransitionH;
 pragma Import(C,QEventTransition_create, "QEventTransition_create");
 
 function  QEventTransition_create2(object:QObjectH; eventType:QEventType;sourceState :QStateH := null) return QTransitionH;
 pragma Import(C,QEventTransition_create2, "QEventTransition_create2");
 
 procedure QEventTransition_delete(handle:not null QTransitionH);
 pragma Import(C,QEventTransition_delete, "QEventTransition_delete");
 
 function  QEventTransition_eventType(handle:not null QTransitionH) return QEventType;
 pragma Import(C,QEventTransition_eventType, "QEventTransition_eventType");
 
 function  QEventTransition_eventSource(handle:not null QTransitionH) return QObjectH;
 pragma Import(C,QEventTransition_eventSource, "QEventTransition_eventSource");
 
 procedure QEventTransition_setEventSource(handle:not null QTransitionH;object:QObjectH);
 pragma Import(C,QEventTransition_setEventSource, "QEventTransition_setEventSource");
 
 procedure QEventTransition_setEventType(handle:not null QTransitionH;eventType:QEventType);
 pragma Import(C,QEventTransition_setEventType, "QEventTransition_setEventType");

 function  QKeyEventTransition_create(sourceState:QStateH := null) return QTransitionH;
 pragma Import(C,QKeyEventTransition_create, "QKeyEventTransition_create");
 
 function  QKeyEventTransition_create2(object:QObjectH; eventType:QEventType;key:integer;sourceState:QStateH := null) return QTransitionH;
 pragma Import(C,QKeyEventTransition_create2, "QKeyEventTransition_create2");
 
 procedure QKeyEventTransition_delete(handle:not null QTransitionH);
 pragma Import(C,QKeyEventTransition_delete, "QKeyEventTransition_delete");
 
 function  QKeyEventTransition_key(handle:not null QTransitionH) return integer;
 pragma Import(C,QKeyEventTransition_key, "QKeyEventTransition_key");
 
 procedure QKeyEventTransition_setKey(handle:not null QTransitionH;key:integer);
 pragma Import(C,QKeyEventTransition_setKey, "QKeyEventTransition_setKey");
 
 function  QKeyEventTransition_modifierMask(handle:not null QTransitionH) return QtKeyboardModifiers;
 pragma Import(C,QKeyEventTransition_modifierMask, "QKeyEventTransition_modifierMask");
 
 procedure QKeyEventTransition_setModifierMask(handle:not null QTransitionH;modifiers:QtKeyboardModifiers);
 pragma Import(C,QKeyEventTransition_setModifierMask, "QKeyEventTransition_setModifierMask");
 
 function  QMouseEventTransition_create(sourceState:QStateH := null) return QTransitionH;
 pragma Import(C,QMouseEventTransition_create, "QMouseEventTransition_create");
 
 function  QMouseEventTransition_create2(object:QObjectH; eventType:QEventType; button:QtMouseButton;sourceState:QStateH := null) return QTransitionH;
 pragma Import(C,QMouseEventTransition_create2, "QMouseEventTransition_create2");
 
 procedure QMouseEventTransition_delete(handle:not null QTransitionH);
 pragma Import(C,QMouseEventTransition_delete, "QMouseEventTransition_delete");
 
 function  QMouseEventTransition_button(handle:not null QTransitionH) return QtMouseButton;
 pragma Import(C,QMouseEventTransition_button, "QMouseEventTransition_button");
 
 procedure QMouseEventTransition_setButton(handle:not null QTransitionH;button:QtMouseButton);
 pragma Import(C,QMouseEventTransition_setButton, "QMouseEventTransition_setButton");
 
 function  QMouseEventTransition_modifierMask(handle:not null QTransitionH) return integer;
 pragma Import(C,QMouseEventTransition_modifierMask, "QMouseEventTransition_modifierMask");
 
 procedure QMouseEventTransition_setModifierMask(handle:not null QTransitionH;modifiers:integer);
 pragma Import(C,QMouseEventTransition_setModifierMask, "QMouseEventTransition_setModifierMask");
 
 function  QMouseEventTransition_hitTestPath(handle:not null QTransitionH) return QPainterPathH;
 pragma Import(C,QMouseEventTransition_hitTestPath, "QMouseEventTransition_hitTestPath");
 
 procedure QMouseEventTransition_setHitTestPath(handle:not null QTransitionH;path:QPainterPathH);
 pragma Import(C,QMouseEventTransition_setHitTestPath, "QMouseEventTransition_setHitTestPath");
 
------------------------------------------------------
 function  QEventTransition_create(object:QObjectH; eventType:QEventType;sourceState :QStateH := null) return QTransitionH;
 function  QKeyEventTransition_create(object:QObjectH; eventType:QEventType;key:integer;sourceState:QStateH := null) return QTransitionH;
 function  QMouseEventTransition_create(object:QObjectH; eventType:QEventType; button:QtMouseButton;sourceState:QStateH := null) return QTransitionH;
end;
