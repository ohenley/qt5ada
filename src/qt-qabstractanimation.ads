--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2019                      บ
-- บ Copyright (C) 2014,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QAbstractAnimation is

 type Direction is (Forward, Backward);
 pragma convention(C,Direction);
 
 type State is (Stopped,Paused,Running);
 pragma convention(C,State);
 
 type DeletionPolicy is (KeepWhenStopped,DeleteWhenStopped);
 pragma convention(C,DeletionPolicy);   

 function  QAbstractAnimation_state(handle:not null QAnimationH) return State;
 pragma Import(C,QAbstractAnimation_state, "QAbstractAnimation_state");
 
 function  QAbstractAnimation_group(handle:not null QAnimationH) return QAnimationGroupH;
 pragma Import(C,QAbstractAnimation_group, "QAbstractAnimation_group");
 
 function  QAbstractAnimation_direction(handle:not null QAnimationH) return Direction;
 pragma Import(C,QAbstractAnimation_direction, "QAbstractAnimation_direction");
 
 procedure QAbstractAnimation_setDirection(handle:not null QAnimationH;dir:Direction);
 pragma Import(C,QAbstractAnimation_setDirection, "QAbstractAnimation_setDirection");
 
 function  QAbstractAnimation_currentTime(handle:not null QAnimationH) return integer;
 pragma Import(C,QAbstractAnimation_currentTime, "QAbstractAnimation_currentTime");
 
 function  QAbstractAnimation_currentLoopTime(handle:not null QAnimationH) return integer;
 pragma Import(C,QAbstractAnimation_currentLoopTime, "QAbstractAnimation_currentLoopTime");
 
 function  QAbstractAnimation_loopCount(handle:not null QAnimationH) return integer;
 pragma Import(C,QAbstractAnimation_loopCount, "QAbstractAnimation_loopCount");
 
 procedure QAbstractAnimation_setLoopCount(handle:not null QAnimationH; loopCount:integer);
 pragma Import(C,QAbstractAnimation_setLoopCount, "QAbstractAnimation_setLoopCount");
 
 function  QAbstractAnimation_currentLoop(handle:not null QAnimationH) return integer;
 pragma Import(C,QAbstractAnimation_currentLoop, "QAbstractAnimation_currentLoop");
 
 function  QAbstractAnimation_duration(handle:not null QAnimationH) return integer;
 pragma Import(C,QAbstractAnimation_duration, "QAbstractAnimation_duration");
 
 function  QAbstractAnimation_totalDuration(handle:not null QAnimationH) return integer;
 pragma Import(C,QAbstractAnimation_totalDuration, "QAbstractAnimation_totalDuration");
 
 procedure QAbstractAnimation_start(handle:not null QAnimationH;policy:DeletionPolicy := KeepWhenStopped);
 pragma Import(C,QAbstractAnimation_start, "QAbstractAnimation_start");
 
 procedure QAbstractAnimation_pause(handle:not null QAnimationH);
 pragma Import(C,QAbstractAnimation_pause, "QAbstractAnimation_pause");
 
 procedure QAbstractAnimation_resume(handle:not null QAnimationH);
 pragma Import(C,QAbstractAnimation_resume, "QAbstractAnimation_resume");
 
 procedure QAbstractAnimation_setPaused(handle:not null QAnimationH;ispused:boolean := true);
 pragma Import(C,QAbstractAnimation_setPaused, "QAbstractAnimation_setPaused");
 
 procedure QAbstractAnimation_stop(handle:not null QAnimationH);
 pragma Import(C,QAbstractAnimation_stop, "QAbstractAnimation_stop");
 
 procedure QAbstractAnimation_setCurrentTime(handle:not null QAnimationH; msecs:integer);
 pragma Import(C,QAbstractAnimation_setCurrentTime, "QAbstractAnimation_setCurrentTime");
 
 function  QAbstractAnimation_event(handle:not null QAnimationH;event:QEventH) return boolean;
 pragma Import(C,QAbstractAnimation_event, "QAbstractAnimation_event");
 
 procedure QAbstractAnimation_updateCurrentTime(handle:not null QAnimationH;currentTime:integer);
 pragma Import(C,QAbstractAnimation_updateCurrentTime, "QAbstractAnimation_updateCurrentTime");
 
 procedure QAbstractAnimation_updateState(handle:not null QAnimationH; newState,oldState:State);
 pragma Import(C,QAbstractAnimation_updateState, "QAbstractAnimation_updateState");
 
 procedure QAbstractAnimation_updateDirection(handle:not null QAnimationH;dir:Direction);
 pragma Import(C,QAbstractAnimation_updateDirection, "QAbstractAnimation_updateDirection");
 
 type stateChangedType is access procedure(newState,oldState:State);
 pragma convention(C,stateChangedType);

 type directionChangedType  is access procedure(dir:Direction);
 pragma convention(C,directionChangedType);

 procedure QAbstractAnimation_signal_slot_finished(handle:not null QAnimationH; hook:voidCallbackH);
 pragma Import(C,QAbstractAnimation_signal_slot_finished, "QAbstractAnimation_signal_slot_finished");
 
 procedure QAbstractAnimation_signal_slot_stateChanged(handle:not null QAnimationH; hook:intCallbackH);
 pragma Import(C,QAbstractAnimation_signal_slot_stateChanged, "QAbstractAnimation_signal_slot_stateChanged");
 
 procedure QAbstractAnimation_signal_slot_currentLoopChanged(handle:not null QAnimationH; hook:intCallbackH);
 pragma Import(C,QAbstractAnimation_signal_slot_currentLoopChanged, "QAbstractAnimation_signal_slot_currentLoopChanged");
 
 procedure QAbstractAnimation_signal_slot_directionChanged(handle:not null QAnimationH; hook:directionChangedType);
 pragma Import(C,QAbstractAnimation_signal_slot_directionChanged, "QAbstractAnimation_signal_slot_directionChanged");

end;
