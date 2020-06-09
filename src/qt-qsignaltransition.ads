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

with builtin; use builtin;
package Qt.QSignalTransition is

 function  QSignalTransition_create(sourceState:QStateH := null) return QTransitionH ;
 pragma Import(C,QSignalTransition_create, "QSignalTransition_create");
 
 function  QSignalTransition_create2(sender:QObjectH;signal:zstring;sourceState: QStateH := null) return QTransitionH;
 pragma Import(C,QSignalTransition_create2, "QSignalTransition_create2");
 
 procedure QSignalTransition_delete(handle:not null QTransitionH);
 pragma Import(C,QSignalTransition_delete, "QSignalTransition_delete");
 
 function  QSignalTransition_senderObject(handle:not null QTransitionH) return QObjectH;
 pragma Import(C,QSignalTransition_senderObject, "QSignalTransition_senderObject");
 
 procedure QSignalTransition_setSenderObject(handle:not null QTransitionH;sender:QObjectH);
 pragma Import(C,QSignalTransition_setSenderObject, "QSignalTransition_setSenderObject");
 
 function  QSignalTransition_signal(handle:not null QTransitionH) return zstring;
 pragma Import(C,QSignalTransition_signal, "QSignalTransition_signal");
 
 procedure QSignalTransition_setSignal(handle:not null QTransitionH;signal:zstring);
 pragma Import(C,QSignalTransition_setSignal, "QSignalTransition_setSignal");
 
 function  QSignalTransition_create(sender:QObjectH;signal:zstring;sourceState: QStateH := null) return QTransitionH;

end;
