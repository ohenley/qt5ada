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

with builtin; use builtin;
package Qt.QState is

type ChildMode is (ExclusiveStates,ParallelStates);
pragma convention(c,ChildMode);
   
type RestorePolicy  is (DontRestoreProperties, RestoreProperties);
pragma convention(c,RestorePolicy);
 
 function  QState_create(parent:QStateH := null) return QStateH;
 pragma Import(C,QState_create, "QState_create");
 
 function  QState_create2(chMode:ChildMode; parent:QStateH := null) return QStateH;
 pragma Import(C,QState_create2, "QState_create2");
 
 procedure QState_delete(handle:not null QStateH);
 pragma Import(C,QState_delete, "QState_delete");
 
 function  QState_errorState(handle:not null QStateH) return QStateH;
 pragma Import(C,QState_errorState, "QState_errorState");
 
 procedure QState_setErrorState(handle:not null QStateH;state:QStateH);
 pragma Import(C,QState_setErrorState, "QState_setErrorState");
 
 procedure QState_addTransition(handle:not null QStateH; transition:QTransitionH);
 pragma Import(C,QState_addTransition, "QState_addTransition");
 
 function  QState_addTransition2(handle:not null QStateH; sender:QObjectH;signal:ZString;target: QStateH) return QTransitionH;
 pragma Import(C,QState_addTransition2, "QState_addTransition2");
 
 function  QState_addTransition3(handle:not null QStateH;target:QStateH) return QTransitionH;
 pragma Import(C,QState_addTransition3, "QState_addTransition3");
 
 procedure QState_removeTransition(handle:not null QStateH;transition:QTransitionH);
 pragma Import(C,QState_removeTransition, "QState_removeTransition");
 
 function  QState_transitions(handle:not null QStateH) return QListH;
 pragma Import(C,QState_transitions, "QState_transitions");
 
 function  QState_initialState(handle:not null QStateH) return QStateH;
 pragma Import(C,QState_initialState, "QState_initialState");
 
 procedure QState_setInitialState(handle:not null QStateH;state:QStateH);
 pragma Import(C,QState_setInitialState, "QState_setInitialState");
 
 function  QState_childMode(handle:not null QStateH) return ChildMode;
 pragma Import(C,QState_childMode, "QState_childMode");
 
 procedure QState_setChildMode(handle:not null QStateH;chMode:ChildMode);
 pragma Import(C,QState_setChildMode, "QState_setChildMode");
 
 procedure QState_assignProperty(handle:not null QStateH;object:QObjectH;name:zstring;value:QVariantH);
 pragma Import(C,QState_assignProperty, "QState_assignProperty");
 
 procedure QState_onEntry(handle:not null QStateH;event:QEventH);
 pragma Import(C,QState_onEntry, "QState_onEntry");
 
 procedure QState_onExit(handle:not null QStateH;event:QEventH);
 pragma Import(C,QState_onExit, "QState_onExit");
 
 function  QState_event(handle:not null QStateH;event:QEventH) return boolean;
 pragma Import(C,QState_event, "QState_event");

type voidProc is access procedure;
 pragma convention(C,voidProc);
 
 procedure QState_signal_slot_finished(handle:not null QStateH; hook:voidProc);
 pragma Import(C,QState_signal_slot_finished, "QState_signal_slot_finished");
 
 procedure QState_signal_slot_propertiesAssigned(handle:not null QStateH; hook:voidProc);
 pragma Import(C,QState_signal_slot_propertiesAssigned, "QState_signal_slot_propertiesAssigned");

-----------------------------------------------------------
 function  QState_create(chMode:ChildMode; parent:QStateH := null) return QStateH;
 function  QState_addTransition(handle:not null QStateH; sender:QObjectH;signal:ZString;target: QStateH) return QTransitionH;
 function  QState_addTransition(handle:not null QStateH;target:QStateH) return QTransitionH;

end;
