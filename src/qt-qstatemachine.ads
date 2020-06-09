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

with  Qt.QState;
package Qt.QStateMachine is

type EventPriority is (NormalPriority, HighPriority);
pragma convention(c,EventPriority);    

type Error is (NoError, NoInitialStateError, NoDefaultStateInHistoryStateError, NoCommonAncestorForTransitionError);
pragma convention(c,Error);    

 function  QStateMachine_create(parent:QObjectH := null) return QStateMachineH;
 pragma Import(C,QStateMachine_create, "QStateMachine_create");
 
 function  QStateMachine_create2(childMode:Qt.QState.ChildMode;parent:QObjectH := null) return QStateMachineH;      
 pragma Import(C,QStateMachine_create2, "QStateMachine_create2");
 
 procedure QStateMachine_delete(handle:not null QStateMachineH);
 pragma Import(C,QStateMachine_delete, "QStateMachine_delete");
 
 procedure  QStateMachine_addState(handle:not null QStateMachineH;state:QStateH);
 pragma Import(C,QStateMachine_addState, "QStateMachine_addState");
 
 procedure QStateMachine_removeState(handle:not null QStateMachineH;state:QStateH);
 pragma Import(C,QStateMachine_removeState, "QStateMachine_removeState");
 
 function  QStateMachine_error(handle:not null QStateMachineH) return Error;
 pragma Import(C,QStateMachine_error, "QStateMachine_error");
 
 function  QStateMachine_errorString(handle:not null QStateMachineH) return QStringH;
 pragma Import(C,QStateMachine_errorString, "QStateMachine_errorString");
 
 procedure QStateMachine_clearError(handle:not null QStateMachineH);
 pragma Import(C,QStateMachine_clearError, "QStateMachine_clearError");
 
 function  QStateMachine_isRunning(handle:not null QStateMachineH) return boolean;
 pragma Import(C,QStateMachine_isRunning, "QStateMachine_isRunning");
 
 function  QStateMachine_isAnimated(handle:not null QStateMachineH) return boolean;
 pragma Import(C,QStateMachine_isAnimated, "QStateMachine_isAnimated");
 
 procedure QStateMachine_setAnimated(handle:not null QStateMachineH; enabled:boolean);
 pragma Import(C,QStateMachine_setAnimated, "QStateMachine_setAnimated");
 
 procedure QStateMachine_addDefaultAnimation(handle:not null QStateMachineH; animation:QAnimationH);
 pragma Import(C,QStateMachine_addDefaultAnimation, "QStateMachine_addDefaultAnimation");
 
 function  QStateMachine_defaultAnimations(handle:not null QStateMachineH) return QListH;
 pragma Import(C,QStateMachine_defaultAnimations, "QStateMachine_defaultAnimations");
 
 procedure QStateMachine_removeDefaultAnimation(handle:not null QStateMachineH;animation:QAnimationH);                  
 pragma Import(C,QStateMachine_removeDefaultAnimation, "QStateMachine_removeDefaultAnimation");
 
 function  QStateMachine_globalRestorePolicy(handle:not null QStateMachineH) return Qt.QState.RestorePolicy;
 pragma Import(C,QStateMachine_globalRestorePolicy, "QStateMachine_globalRestorePolicy");
 
 procedure QStateMachine_setGlobalRestorePolicy(handle:not null QStateMachineH; restorePolicy:Qt.QState.RestorePolicy);
 pragma Import(C,QStateMachine_setGlobalRestorePolicy, "QStateMachine_setGlobalRestorePolicy");
 
 procedure QStateMachine_postEvent(handle:not null QStateMachineH;event:QEventH; priority :EventPriority := NormalPriority);
 pragma Import(C,QStateMachine_postEvent, "QStateMachine_postEvent");
 
 function  QStateMachine_postDelayedEvent(handle:not null QStateMachineH;event:QEventH; postDelay:integer) return integer;
 pragma Import(C,QStateMachine_postDelayedEvent, "QStateMachine_postDelayedEvent");
 
 function  QStateMachine_cancelDelayedEvent(handle:not null QStateMachineH;id:integer) return boolean;
 pragma Import(C,QStateMachine_cancelDelayedEvent, "QStateMachine_cancelDelayedEvent");
 
 function  QStateMachine_configuration(handle:not null QStateMachineH) return QSetH;
 pragma Import(C,QStateMachine_configuration, "QStateMachine_configuration");
 
 function  QStateMachine_eventFilter(handle:not null QStateMachineH;watched:QObjectH; event:QEventH) return boolean;
 pragma Import(C,QStateMachine_eventFilter, "QStateMachine_eventFilter");
 
 procedure QStateMachine_start(handle:not null QStateMachineH);
 pragma Import(C,QStateMachine_start, "QStateMachine_start");
 
 procedure QStateMachine_stop(handle:not null QStateMachineH);
 pragma Import(C,QStateMachine_stop, "QStateMachine_stop");
 
 procedure QStateMachine_onEntry(handle:not null QStateMachineH;event:QEventH);
 pragma Import(C,QStateMachine_onEntry, "QStateMachine_onEntry");
 
 procedure QStateMachine_onExit(handle:not null QStateMachineH;event:QEventH);
 pragma Import(C,QStateMachine_onExit, "QStateMachine_onExit");
 
 procedure QStateMachine_beginSelectTransitions(handle:not null QStateMachineH;event:QEventH);
 pragma Import(C,QStateMachine_beginSelectTransitions, "QStateMachine_beginSelectTransitions");
 
 procedure QStateMachine_endSelectTransitions(handle:not null QStateMachineH;event:QEventH);
 pragma Import(C,QStateMachine_endSelectTransitions, "QStateMachine_endSelectTransitions");
 
 procedure QStateMachine_beginMicrostep(handle:not null QStateMachineH;event:QEventH);
 pragma Import(C,QStateMachine_beginMicrostep, "QStateMachine_beginMicrostep");
 
 procedure QStateMachine_endMicrostep(handle:not null QStateMachineH;event:QEventH);
 pragma Import(C,QStateMachine_endMicrostep, "QStateMachine_endMicrostep");
 
 procedure QStateMachine_setInitialState(handle:not null QStateMachineH;state:QStateH);
 pragma Import(C,QStateMachine_setInitialState, "QStateMachine_setInitialState");
 
 function  QStateMachine_event(handle:not null QStateMachineH;event:QEventH) return boolean;
 pragma Import(C,QStateMachine_event, "QStateMachine_event");
 
 procedure QStateMachine_signal_slot_started(handle:not null QStateMachineH;hook: Qt.QState.voidProc);
 pragma Import(C,QStateMachine_signal_slot_started, "QStateMachine_signal_slot_started");
 
 procedure QStateMachine_signal_slot_stopped(handle:not null QStateMachineH;hook: Qt.QState.voidProc);
 pragma Import(C,QStateMachine_signal_slot_stopped, "QStateMachine_signal_slot_stopped");
 
 function  QStateMachine_create(childMode:Qt.QState.ChildMode;parent:QObjectH := null) return QStateMachineH;      

end;
