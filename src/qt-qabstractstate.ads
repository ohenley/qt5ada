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

package Qt.QAbstractState is

 procedure QAbstractState_delete(handle:not null QStateH);
 pragma Import(C,QAbstractState_delete, "QAbstractState_delete");
 
 function  QAbstractState_parentState(handle:not null QStateH) return QStateH;
 pragma Import(C,QAbstractState_parentState, "QAbstractState_parentState");
 
 function  QAbstractState_machine(handle:not null QStateH) return QStateMachineH;
 pragma Import(C,QAbstractState_machine, "QAbstractState_machine");

 type voidProc is access procedure;
 pragma convention(C,voidProc);

 procedure QAbstractState_signal_slot_entered(handle:not null QStateH; hook:voidProc);
 pragma Import(C,QAbstractState_signal_slot_entered, "QAbstractState_signal_slot_entered");
 
 procedure QAbstractState_signal_slot_exited(handle:not null QStateH; hook:voidProc);
 pragma Import(C,QAbstractState_signal_slot_exited, "QAbstractState_signal_slot_exited");
 
end;
