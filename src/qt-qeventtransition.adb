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

package body Qt.QEventTransition is

 function  QEventTransition_create(object:QObjectH; eventType:QEventType;sourceState :QStateH := null) return QTransitionH is
 begin
  return  QEventTransition_create2(object,eventType,sourceState);
 end;

function  QKeyEventTransition_create(object:QObjectH; eventType:QEventType;key:integer;sourceState:QStateH := null) return QTransitionH is
begin
 return  QKeyEventTransition_create2(object, eventType,key,sourceState);
end;

function  QMouseEventTransition_create(object:QObjectH; eventType:QEventType; button:QtMouseButton;sourceState:QStateH := null) return QTransitionH is
begin
 return  QMouseEventTransition_create2(object,eventType,button,sourceState);
end;

end;
