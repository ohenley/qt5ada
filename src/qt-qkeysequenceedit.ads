--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012 ,2013                                          บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QKeySequenceEdit is

 function  QKeySequenceEdit_create(parent:QWidgetH := null) return QKeySequenceEditH;
 pragma Import(C,QKeySequenceEdit_create, "QKeySequenceEdit_create");
 
 function  QKeySequenceEdit_create2(keySequence:not null QKeySequenceH ;parent:QWidgetH := null) return QKeySequenceEditH;
 pragma Import(C,QKeySequenceEdit_create2, "QKeySequenceEdit_create2");
 
 procedure QKeySequenceEdit_destroy(handle:not null QKeySequenceEditH);
 pragma Import(C,QKeySequenceEdit_destroy, "QKeySequenceEdit_destroy");
 
 function  QKeySequenceEdit_keySequence(handle:not null QKeySequenceEditH) return QKeySequenceH;
 pragma Import(C,QKeySequenceEdit_keySequence, "QKeySequenceEdit_keySequence");
 
 procedure QKeySequenceEdit_setKeySequence(handle:not null QKeySequenceEditH; keySequence:not null QKeySequenceH);
 pragma Import(C,QKeySequenceEdit_setKeySequence, "QKeySequenceEdit_setKeySequence");
 
 procedure QKeySequenceEdit_clear(handle:not null QKeySequenceEditH);
 pragma Import(C,QKeySequenceEdit_clear, "QKeySequenceEdit_clear");
 
 type editingFinishedEvent is access procedure;
 pragma Convention(C,editingFinishedEvent);

 type keySequenceChangedEvent is access procedure(keySequence:QKeySequenceH);
 pragma Convention(C,keySequenceChangedEvent);

 procedure QKeySequenceEdit_signal_slot_editingFinished(handle:not null QKeySequenceEditH; hook:editingFinishedEvent);
 pragma Import(C,QKeySequenceEdit_signal_slot_editingFinished, "QKeySequenceEdit_signal_slot_editingFinished");
 
 procedure QKeySequenceEdit_signal_slot_keySequenceChanged(handle:not null QKeySequenceEditH; hook:keySequenceChangedEvent);
 pragma Import(C,QKeySequenceEdit_signal_slot_keySequenceChanged, "QKeySequenceEdit_signal_slot_keySequenceChanged");
 
-------------------------------------------------------------------------
 function  QKeySequenceEdit_create(keySequence:not null QKeySequenceH ;parent:QWidgetH := null) return QKeySequenceEditH;

end;
