-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGamepadKeyNavigation is

 type QtKey is new integer;

 function  QGamepadKeyNavigation_create(parent:QObjectH := null) return QObjectH;
 pragma Import(C,QGamepadKeyNavigation_create, "QGamepadKeyNavigation_create");
 
 function  QGamepadKeyNavigation_active(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepadKeyNavigation_active, "QGamepadKeyNavigation_active");
 
 function  QGamepadKeyNavigation_gamepad(handle:not null QObjectH) return QObjectH;
 pragma Import(C,QGamepadKeyNavigation_gamepad, "QGamepadKeyNavigation_gamepad");
 
 function  QGamepadKeyNavigation_upKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_upKey, "QGamepadKeyNavigation_upKey");
 
 function  QGamepadKeyNavigation_downKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_downKey, "QGamepadKeyNavigation_downKey");
 
 function  QGamepadKeyNavigation_leftKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_leftKey, "QGamepadKeyNavigation_leftKey");
 
 function  QGamepadKeyNavigation_rightKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_rightKey, "QGamepadKeyNavigation_rightKey");
 
 function  QGamepadKeyNavigation_buttonAKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonAKey, "QGamepadKeyNavigation_buttonAKey");
 
 function  QGamepadKeyNavigation_buttonBKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonBKey, "QGamepadKeyNavigation_buttonBKey");
 
 function  QGamepadKeyNavigation_buttonXKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonXKey, "QGamepadKeyNavigation_buttonXKey");
 
 function  QGamepadKeyNavigation_buttonYKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonYKey, "QGamepadKeyNavigation_buttonYKey");
 
 function  QGamepadKeyNavigation_buttonSelectKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonSelectKey, "QGamepadKeyNavigation_buttonSelectKey");
 
 function  QGamepadKeyNavigation_buttonStartKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonStartKey, "QGamepadKeyNavigation_buttonStartKey");
 
 function  QGamepadKeyNavigation_buttonGuideKey(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonGuideKey, "QGamepadKeyNavigation_buttonGuideKey");
 
 function  QGamepadKeyNavigation_buttonL1Key(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonL1Key, "QGamepadKeyNavigation_buttonL1Key");
 
 function  QGamepadKeyNavigation_buttonR1Key(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonR1Key, "QGamepadKeyNavigation_buttonR1Key");
 
 function  QGamepadKeyNavigation_buttonL2Key(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonL2Key, "QGamepadKeyNavigation_buttonL2Key");
 
 function  QGamepadKeyNavigation_buttonR2Key(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonR2Key, "QGamepadKeyNavigation_buttonR2Key");
 
 function  QGamepadKeyNavigation_buttonL3Key(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonL3Key, "QGamepadKeyNavigation_buttonL3Key");
 
 function  QGamepadKeyNavigation_buttonR3Key(handle:not null QObjectH) return QtKey;
 pragma Import(C,QGamepadKeyNavigation_buttonR3Key, "QGamepadKeyNavigation_buttonR3Key");
 
 procedure QGamepadKeyNavigation_setActive(handle:not null QObjectH;isActive:boolean);
 pragma Import(C,QGamepadKeyNavigation_setActive, "QGamepadKeyNavigation_setActive");
 
 procedure QGamepadKeyNavigation_setGamepad(handle:not null QObjectH;gamepad:QObjectH);
 pragma Import(C,QGamepadKeyNavigation_setGamepad, "QGamepadKeyNavigation_setGamepad");
 
 procedure QGamepadKeyNavigation_setUpKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setUpKey, "QGamepadKeyNavigation_setUpKey");
 
 procedure QGamepadKeyNavigation_setDownKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setDownKey, "QGamepadKeyNavigation_setDownKey");
 
 procedure QGamepadKeyNavigation_setLeftKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setLeftKey, "QGamepadKeyNavigation_setLeftKey");
 
 procedure QGamepadKeyNavigation_setRightKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setRightKey, "QGamepadKeyNavigation_setRightKey");
 
 procedure QGamepadKeyNavigation_setButtonAKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonAKey, "QGamepadKeyNavigation_setButtonAKey");
 
 procedure QGamepadKeyNavigation_setButtonBKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonBKey, "QGamepadKeyNavigation_setButtonBKey");
 
 procedure QGamepadKeyNavigation_setButtonXKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonXKey, "QGamepadKeyNavigation_setButtonXKey");
 
 procedure QGamepadKeyNavigation_setButtonYKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonYKey, "QGamepadKeyNavigation_setButtonYKey");
 
 procedure QGamepadKeyNavigation_setButtonSelectKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonSelectKey, "QGamepadKeyNavigation_setButtonSelectKey");
 
 procedure QGamepadKeyNavigation_setButtonStartKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonStartKey, "QGamepadKeyNavigation_setButtonStartKey");
 
 procedure QGamepadKeyNavigation_setButtonGuideKey(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonGuideKey, "QGamepadKeyNavigation_setButtonGuideKey");
 
 procedure QGamepadKeyNavigation_setButtonL1Key(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonL1Key, "QGamepadKeyNavigation_setButtonL1Key");
 
 procedure QGamepadKeyNavigation_setButtonR1Key(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonR1Key, "QGamepadKeyNavigation_setButtonR1Key");
 
 procedure QGamepadKeyNavigation_setButtonL2Key(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonL2Key, "QGamepadKeyNavigation_setButtonL2Key");
 
 procedure QGamepadKeyNavigation_setButtonR2Key(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonR2Key, "QGamepadKeyNavigation_setButtonR2Key");
 
 procedure QGamepadKeyNavigation_setButtonL3Key(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonL3Key, "QGamepadKeyNavigation_setButtonL3Key");
 
 procedure QGamepadKeyNavigation_setButtonR3Key(handle:not null QObjectH;key:QtKey);
 pragma Import(C,QGamepadKeyNavigation_setButtonR3Key, "QGamepadKeyNavigation_setButtonR3Key");
 

 type gamepadCallbackH is access procedure(gamepad:QObjectH);
 pragma convention(C,gamepadCallbackH);
 

 procedure QGamepadKeyNavigation_signal_slot_activeChanged(handle:not null QObjectH;callback:boolCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_activeChanged, "QGamepadKeyNavigation_signal_slot_activeChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_gamepadChanged(handle:not null QObjectH;callback:gamepadCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_gamepadChanged, "QGamepadKeyNavigation_signal_slot_gamepadChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_upKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_upKeyChanged, "QGamepadKeyNavigation_signal_slot_upKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_downKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_downKeyChanged, "QGamepadKeyNavigation_signal_slot_downKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_leftKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_leftKeyChanged, "QGamepadKeyNavigation_signal_slot_leftKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_rightKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_rightKeyChanged, "QGamepadKeyNavigation_signal_slot_rightKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonAKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonAKeyChanged, "QGamepadKeyNavigation_signal_slot_buttonAKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonBKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonBKeyChanged, "QGamepadKeyNavigation_signal_slot_buttonBKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonXKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonXKeyChanged, "QGamepadKeyNavigation_signal_slot_buttonXKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonYKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonYKeyChanged, "QGamepadKeyNavigation_signal_slot_buttonYKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonSelectKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonSelectKeyChanged, "QGamepadKeyNavigation_signal_slot_buttonSelectKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonStartKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonStartKeyChanged, "QGamepadKeyNavigation_signal_slot_buttonStartKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonGuideKeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonGuideKeyChanged, "QGamepadKeyNavigation_signal_slot_buttonGuideKeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonL1KeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonL1KeyChanged, "QGamepadKeyNavigation_signal_slot_buttonL1KeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonR1KeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonR1KeyChanged, "QGamepadKeyNavigation_signal_slot_buttonR1KeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonL2KeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonL2KeyChanged, "QGamepadKeyNavigation_signal_slot_buttonL2KeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonR2KeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonR2KeyChanged, "QGamepadKeyNavigation_signal_slot_buttonR2KeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonL3KeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonL3KeyChanged, "QGamepadKeyNavigation_signal_slot_buttonL3KeyChanged");
 
 procedure QGamepadKeyNavigation_signal_slot_buttonR3KeyChanged(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadKeyNavigation_signal_slot_buttonR3KeyChanged, "QGamepadKeyNavigation_signal_slot_buttonR3KeyChanged");
 
end;
