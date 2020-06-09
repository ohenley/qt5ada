--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QActionGroup is

 function  QActionGroup_create2(parent:QObjectH) return QActionGroupH;
 pragma Import(C,QActionGroup_create2, "QActionGroup_create2");
 
 procedure QActionGroup_destroy(handle: not null QActionGroupH);
 pragma Import(C,QActionGroup_destroy, "QActionGroup_destroy");
 
 function  QActionGroup_addAction(handle: not null QActionGroupH;action: QActionH) return QActionH;
 pragma Import(C,QActionGroup_addAction, "QActionGroup_addAction");
 
 function  QActionGroup_addAction2(handle: not null QActionGroupH; text:QStringH) return QActionH;
 pragma Import(C,QActionGroup_addAction2, "QActionGroup_addAction2");
 
 function  QActionGroup_addAction3(handle: not null QActionGroupH; icon: QIconH;text: QStringH) return QActionH;
 pragma Import(C,QActionGroup_addAction3, "QActionGroup_addAction3");
 
 procedure QActionGroup_removeAction(handle: not null QActionGroupH; action:QActionH);
 pragma Import(C,QActionGroup_removeAction, "QActionGroup_removeAction");
 
 function  QActionGroup_actions(handle: not null QActionGroupH) return QObjectListH;
 pragma Import(C,QActionGroup_actions, "QActionGroup_actions");
 
 function  QActionGroup_checkedAction(handle: not null QActionGroupH) return QActionH;
 pragma Import(C,QActionGroup_checkedAction, "QActionGroup_checkedAction");
 
 function  QActionGroup_isExclusive(handle: not null QActionGroupH) return boolean;
 pragma Import(C,QActionGroup_isExclusive, "QActionGroup_isExclusive");
 
 function  QActionGroup_isEnabled(handle: not null QActionGroupH) return boolean;
 pragma Import(C,QActionGroup_isEnabled, "QActionGroup_isEnabled");
 
 function  QActionGroup_isVisible(handle: not null QActionGroupH) return boolean;
 pragma Import(C,QActionGroup_isVisible, "QActionGroup_isVisible");
 
 procedure QActionGroup_setEnabled(handle: not null QActionGroupH;isEnable: boolean);
 pragma Import(C,QActionGroup_setEnabled, "QActionGroup_setEnabled");
 
 procedure QActionGroup_setDisabled(handle: not null QActionGroupH;isDisable: boolean);
 pragma Import(C,QActionGroup_setDisabled, "QActionGroup_setDisabled");
 
 procedure QActionGroup_setVisible(handle: not null QActionGroupH; isVisible:boolean);
 pragma Import(C,QActionGroup_setVisible, "QActionGroup_setVisible");
 
 procedure QActionGroup_setExclusive(handle: not null QActionGroupH; isExclusive:boolean);
 pragma Import(C,QActionGroup_setExclusive, "QActionGroup_setExclusive");

 type QActionGroup_triggeredEvent is access procedure (action: QActionH);
 pragma Convention(C,QActionGroup_triggeredEvent );

 type QActionGroup_hoveredEvent is access procedure (action: QActionH);
 pragma Convention(C,QActionGroup_hoveredEvent );

 type QActionGroup_selectedEvent is access procedure (action: QActionH);
 pragma Convention(C,QActionGroup_selectedEvent );

 procedure QActionGroup_signal_slot_triggered(handle: not null QActionGroupH; hook:QActionGroup_triggeredEvent);
 pragma Import(C,QActionGroup_signal_slot_triggered, "QActionGroup_signal_slot_triggered");

 procedure QActionGroup_signal_slot_hovered(handle: not null QActionGroupH; hook:QActionGroup_hoveredEvent);
 pragma Import(C,QActionGroup_signal_slot_hovered, "QActionGroup_signal_slot_hovered");
 
 procedure QActionGroup_signal_slot_selected(handle: not null QActionGroupH; hook:QActionGroup_selectedEvent);
 pragma Import(C,QActionGroup_signal_slot_selected, "QActionGroup_signal_slot_selected");

--------------------------------------------------------------------------------------------------
 function  QActionGroup_addAction(handle: not null QActionGroupH; text:QStringH) return QActionH;
 function  QActionGroup_addAction(handle: not null QActionGroupH; icon: QIconH;text: QStringH) return QActionH;
end Qt.QActionGroup;
