--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2015,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractAnimation;  use Qt.QAbstractAnimation;
package Qt.QAnimationGroup is

 procedure QAnimationGroup_delete(handle:not null QAnimationGroupH);
 pragma Import(C,QAnimationGroup_delete, "QAnimationGroup_delete");
 
 function  QAnimationGroup_animationCount(handle:not null QAnimationGroupH) return integer;
 pragma Import(C,QAnimationGroup_animationCount, "QAnimationGroup_animationCount");
 
 function  QAnimationGroup_animationAt(handle:not null QAnimationGroupH;index:integer) return QAnimationH;
 pragma Import(C,QAnimationGroup_animationAt, "QAnimationGroup_animationAt");
 
 function  QAnimationGroup_indexOfAnimation(handle:not null QAnimationGroupH;animation:QAnimationH) return integer;
 pragma Import(C,QAnimationGroup_indexOfAnimation, "QAnimationGroup_indexOfAnimation");
 
 procedure QAnimationGroup_addAnimation(handle:not null QAnimationGroupH;animation:QAnimationH);
 pragma Import(C,QAnimationGroup_addAnimation, "QAnimationGroup_addAnimation");
 
 procedure QAnimationGroup_insertAnimation(handle:not null QAnimationGroupH;index:integer; animation:QAnimationH);
 pragma Import(C,QAnimationGroup_insertAnimation, "QAnimationGroup_insertAnimation");
 
 procedure QAnimationGroup_removeAnimation(handle:not null QAnimationGroupH;animation:QAnimationH);
 pragma Import(C,QAnimationGroup_removeAnimation, "QAnimationGroup_removeAnimation");
 
 function  QAnimationGroup_takeAnimation(handle:not null QAnimationGroupH;index:integer) return QAnimationH;
 pragma Import(C,QAnimationGroup_takeAnimation, "QAnimationGroup_takeAnimation");
 
 procedure QAnimationGroup_clear(handle:not null QAnimationGroupH);
 pragma Import(C,QAnimationGroup_clear, "QAnimationGroup_clear");
 
 function  QParallelAnimationGroup_create(parent:QObjectH := Null) return QAnimationGroupH;
 pragma Import(C,QParallelAnimationGroup_create, "QParallelAnimationGroup_create");
 
 procedure QParallelAnimationGroup_delete(handle:not null QAnimationGroupH);
 pragma Import(C,QParallelAnimationGroup_delete, "QParallelAnimationGroup_delete");
 
 function  QParallelAnimationGroup_duration(handle:not null QAnimationGroupH) return integer;
 pragma Import(C,QParallelAnimationGroup_duration, "QParallelAnimationGroup_duration");
 
 function  QParallelAnimationGroup_event(handle:not null QAnimationGroupH;event:QEventH) return boolean;
 pragma Import(C,QParallelAnimationGroup_event, "QParallelAnimationGroup_event");
 
 procedure QParallelAnimationGroup_updateCurrentTime(handle:not null QAnimationGroupH; currentTime:integer);
 pragma Import(C,QParallelAnimationGroup_updateCurrentTime, "QParallelAnimationGroup_updateCurrentTime");
 
 procedure QParallelAnimationGroup_updateState(handle:not null QAnimationGroupH; newState,oldState:Qt.QAbstractAnimation.State);
 pragma Import(C,QParallelAnimationGroup_updateState, "QParallelAnimationGroup_updateState");
 
 procedure QParallelAnimationGroup_updateDirection(handle:not null QAnimationGroupH;diraction:Qt.QAbstractAnimation.Direction);
 pragma Import(C,QParallelAnimationGroup_updateDirection, "QParallelAnimationGroup_updateDirection");

-----------------------------  2020 -----------------------------------
  function  QSequentialAnimationGroup_create(parent:QObjectH := null) return QAnimationGroupH;
 pragma Import(C,QSequentialAnimationGroup_create, "QSequentialAnimationGroup_create");
 
 procedure QSequentialAnimationGroup_destroy(handle:not null QAnimationGroupH);
 pragma Import(C,QSequentialAnimationGroup_destroy, "QSequentialAnimationGroup_destroy");
 
 function  QSequentialAnimationGroup_addPause(handle:not null QAnimationGroupH;msecs:integer) return QAnimationH;
 pragma Import(C,QSequentialAnimationGroup_addPause, "QSequentialAnimationGroup_addPause");
 
 function  QSequentialAnimationGroup_insertPause(handle:not null QAnimationGroupH;index,msecs: integer) return QAnimationH;
 pragma Import(C,QSequentialAnimationGroup_insertPause, "QSequentialAnimationGroup_insertPause");
 
 function  QSequentialAnimationGroup_currentAnimation(handle:not null QAnimationGroupH) return QAnimationH;
 pragma Import(C,QSequentialAnimationGroup_currentAnimation, "QSequentialAnimationGroup_currentAnimation");
 
 function  QSequentialAnimationGroup_duration(handle:not null QAnimationGroupH) return integer;
 pragma Import(C,QSequentialAnimationGroup_duration, "QSequentialAnimationGroup_duration");
 
 function  QSequentialAnimationGroup_event(handle:not null QAnimationGroupH;e:QEventH) return boolean;
 pragma Import(C,QSequentialAnimationGroup_event, "QSequentialAnimationGroup_event");
 
 procedure QSequentialAnimationGroup_updateCurrentTime(handle:not null QAnimationGroupH;currentTime:integer);
 pragma Import(C,QSequentialAnimationGroup_updateCurrentTime, "QSequentialAnimationGroup_updateCurrentTime");
 
 procedure QSequentialAnimationGroup_updateState(handle:not null QAnimationGroupH;newState,oldState: Qt.QAbstractAnimation.State);
 pragma Import(C,QSequentialAnimationGroup_updateState, "QSequentialAnimationGroup_updateState");
 
 procedure QSequentialAnimationGroup_updateDirection(handle:not null QAnimationGroupH;direction:Qt.QAbstractAnimation.Direction);
 pragma Import(C,QSequentialAnimationGroup_updateDirection, "QSequentialAnimationGroup_updateDirection");

type animationCallbackH is access procedure(animation:QAnimationH);
 pragma convention(C,animationCallbackH);
  
 procedure QSequentialAnimationGroup_signal_slot_currentAnimationChanged(handle:not null QAnimationGroupH;hook:animationCallbackH);
 pragma Import(C,QSequentialAnimationGroup_signal_slot_currentAnimationChanged, "QSequentialAnimationGroup_signal_slot_currentAnimationChanged");
 
 
end;
