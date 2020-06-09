--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014,2015                      บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QAbstractTransition is

 procedure QAbstractTransition_delete(handle:not null QTransitionH);
 pragma Import(C,QAbstractTransition_delete, "QAbstractTransition_delete");
 
 function  QAbstractTransition_sourceState(handle:not null QTransitionH) return QStateH;
 pragma Import(C,QAbstractTransition_sourceState, "QAbstractTransition_sourceState");
 
 function  QAbstractTransition_targetState(handle:not null QTransitionH) return QStateH;
 pragma Import(C,QAbstractTransition_targetState, "QAbstractTransition_targetState");
 
 procedure QAbstractTransition_setTargetState(handle:not null QTransitionH;target:QStateH);
 pragma Import(C,QAbstractTransition_setTargetState, "QAbstractTransition_setTargetState");
 
 function  QAbstractTransition_targetStates(handle:not null QTransitionH) return QListH;
 pragma Import(C,QAbstractTransition_targetStates, "QAbstractTransition_targetStates");
 
 procedure QAbstractTransition_setTargetStates(handle:not null QTransitionH;targets: QListH);
 pragma Import(C,QAbstractTransition_setTargetStates, "QAbstractTransition_setTargetStates");
 
 function  QAbstractTransition_machine(handle:not null QTransitionH) return QStateH;
 pragma Import(C,QAbstractTransition_machine, "QAbstractTransition_machine");
 
 procedure QAbstractTransition_addAnimation(handle:not null QTransitionH;animation:QAnimationH);
 pragma Import(C,QAbstractTransition_addAnimation, "QAbstractTransition_addAnimation");
 
 procedure QAbstractTransition_removeAnimation(handle:not null QTransitionH;animation:QAnimationH);                 
 pragma Import(C,QAbstractTransition_removeAnimation, "QAbstractTransition_removeAnimation");
 
 function  QAbstractTransition_animations(handle:not null QTransitionH) return QListH;
 pragma Import(C,QAbstractTransition_animations, "QAbstractTransition_animations");
 
 function  QAbstractTransition_eventTest(handle:not null QTransitionH;event:QEventH) return boolean;
 pragma Import(C,QAbstractTransition_eventTest, "QAbstractTransition_eventTest");
 
 procedure QAbstractTransition_onTransition(handle:not null QTransitionH;event:QEventH);
 pragma Import(C,QAbstractTransition_onTransition, "QAbstractTransition_onTransition");
 
 function  QAbstractTransition_event(handle:not null QTransitionH;event:QEventH) return boolean;
 pragma Import(C,QAbstractTransition_event, "QAbstractTransition_event");
 
 procedure QAbstractTransition_addAnimationGroup(handle:not null QTransitionH;animations:QAnimationGroupH);
 pragma Import(C,QAbstractTransition_addAnimationGroup, "QAbstractTransition_addAnimationGroup");
 
 procedure QAbstractTransition_removeAnimationGroup(handle:not null QTransitionH;animations:QAnimationGroupH);                 
 pragma Import(C,QAbstractTransition_removeAnimationGroup, "QAbstractTransition_removeAnimationGroup");
 
 type voidProc is access procedure;
 pragma convention(C,voidProc);

 procedure QAbstractTransition_signal_slot_triggered(handle:not null QTransitionH;hook: voidProc);
 pragma Import(C,QAbstractTransition_signal_slot_triggered, "QAbstractTransition_signal_slot_triggered");
 
end;
