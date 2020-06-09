--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QState is

 function  QState_create(chMode:ChildMode; parent:QStateH := null) return QStateH is
 begin
  return QState_create2(chMode, parent);
 end;

 function  QState_addTransition(handle:not null QStateH; sender:QObjectH;signal:ZString;target: QStateH) return QTransitionH is
 begin
   return  QState_addTransition2(handle, sender,signal,target);
 end;

 function  QState_addTransition(handle:not null QStateH;target:QStateH) return QTransitionH is
 begin
   return  QState_addTransition3(handle,target);
 end;

end;
