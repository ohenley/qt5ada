-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016,2018                      บ
-- บ Copyright (C) 2016,2018                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QGamepad is

 function  QGamepad_create(deviceId: integer := 0;parent: QObjectH :=  null) return QObjectH;
 pragma Import(C,QGamepad_create, "QGamepad_create");
 
 procedure QGamepad_destroy(handle:not null QObjectH);
 pragma Import(C,QGamepad_destroy, "QGamepad_destroy");
 
 function  QGamepad_deviceId(handle:not null QObjectH) return integer;
 pragma Import(C,QGamepad_deviceId, "QGamepad_deviceId");
 
 function  QGamepad_isConnected(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_isConnected, "QGamepad_isConnected");
 
 function  QGamepad_name(handle:not null QObjectH) return QStringH;
 pragma Import(C,QGamepad_name, "QGamepad_name");
 
 function  QGamepad_axisLeftX(handle:not null QObjectH) return qreal;
 pragma Import(C,QGamepad_axisLeftX, "QGamepad_axisLeftX");
 
 function  QGamepad_axisLeftY(handle:not null QObjectH) return qreal;
 pragma Import(C,QGamepad_axisLeftY, "QGamepad_axisLeftY");
 
 function  QGamepad_axisRightX(handle:not null QObjectH) return qreal;
 pragma Import(C,QGamepad_axisRightX, "QGamepad_axisRightX");
 
 function  QGamepad_axisRightY(handle:not null QObjectH) return qreal;
 pragma Import(C,QGamepad_axisRightY, "QGamepad_axisRightY");
 
 function  QGamepad_buttonA(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonA, "QGamepad_buttonA");
 
 function  QGamepad_buttonB(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonB, "QGamepad_buttonB");
 
 function  QGamepad_buttonX(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonX, "QGamepad_buttonX");
 
 function  QGamepad_buttonY(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonY, "QGamepad_buttonY");
 
 function  QGamepad_buttonL1(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonL1, "QGamepad_buttonL1");
 
 function  QGamepad_buttonR1(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonR1, "QGamepad_buttonR1");
 
 function  QGamepad_buttonL2(handle:not null QObjectH) return qreal;
 pragma Import(C,QGamepad_buttonL2, "QGamepad_buttonL2");
 
 function  QGamepad_buttonR2(handle:not null QObjectH) return qreal;
 pragma Import(C,QGamepad_buttonR2, "QGamepad_buttonR2");
 
 function  QGamepad_buttonSelect(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonSelect, "QGamepad_buttonSelect");
 
 function  QGamepad_buttonStart(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonStart, "QGamepad_buttonStart");
 
 function  QGamepad_buttonL3(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonL3, "QGamepad_buttonL3");
 
 function  QGamepad_buttonR3(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonR3, "QGamepad_buttonR3");
 
 function  QGamepad_buttonUp(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonUp, "QGamepad_buttonUp");
 
 function  QGamepad_buttonDown(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonDown, "QGamepad_buttonDown");
 
 function  QGamepad_buttonLeft(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonLeft, "QGamepad_buttonLeft");
 
 function  QGamepad_buttonRight(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonRight, "QGamepad_buttonRight");
 
 function  QGamepad_buttonCenter(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonCenter, "QGamepad_buttonCenter");
 
 function  QGamepad_buttonGuide(handle:not null QObjectH) return boolean;
 pragma Import(C,QGamepad_buttonGuide, "QGamepad_buttonGuide");
 
 procedure QGamepad_setDeviceId(handle:not null QObjectH;number:integer);
 pragma Import(C,QGamepad_setDeviceId, "QGamepad_setDeviceId");

 type stringCallbackH is access procedure(callback:QStringH);
 pragma convention(C,stringCallbackH);

 procedure QGamepad_signal_slot_deviceIdChanged(handle:not null QObjectH; callback: intCallbackH);
 pragma Import(C,QGamepad_signal_slot_deviceIdChanged, "QGamepad_signal_slot_deviceIdChanged");
 
 procedure QGamepad_signal_slot_connectedChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_connectedChanged, "QGamepad_signal_slot_connectedChanged");
 
 procedure QGamepad_signal_slot_nameChanged(handle:not null QObjectH;callback: stringCallbackH);
 pragma Import(C,QGamepad_signal_slot_nameChanged, "QGamepad_signal_slot_nameChanged");
 
 procedure QGamepad_signal_slot_axisLeftXChanged(handle:not null QObjectH;callback:qrealCallbackH);
 pragma Import(C,QGamepad_signal_slot_axisLeftXChanged, "QGamepad_signal_slot_axisLeftXChanged");
 
 procedure QGamepad_signal_slot_axisLeftYChanged(handle:not null QObjectH;callback:qrealCallbackH);
 pragma Import(C,QGamepad_signal_slot_axisLeftYChanged, "QGamepad_signal_slot_axisLeftYChanged");
 
 procedure QGamepad_signal_slot_axisRightXChanged(handle:not null QObjectH;callback:qrealCallbackH);
 pragma Import(C,QGamepad_signal_slot_axisRightXChanged, "QGamepad_signal_slot_axisRightXChanged");
 
 procedure QGamepad_signal_slot_axisRightYChanged(handle:not null QObjectH;callback:qrealCallbackH);
 pragma Import(C,QGamepad_signal_slot_axisRightYChanged, "QGamepad_signal_slot_axisRightYChanged");
 
 procedure QGamepad_signal_slot_buttonAChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonAChanged, "QGamepad_signal_slot_buttonAChanged");
 
 procedure QGamepad_signal_slot_buttonBChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonBChanged, "QGamepad_signal_slot_buttonBChanged");
 
 procedure QGamepad_signal_slot_buttonXChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonXChanged, "QGamepad_signal_slot_buttonXChanged");
 
 procedure QGamepad_signal_slot_buttonYChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonYChanged, "QGamepad_signal_slot_buttonYChanged");
 
 procedure QGamepad_signal_slot_buttonL1Changed(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonL1Changed, "QGamepad_signal_slot_buttonL1Changed");
 
 procedure QGamepad_signal_slot_buttonR1Changed(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonR1Changed, "QGamepad_signal_slot_buttonR1Changed");
 
 procedure QGamepad_signal_slot_buttonL2Changed(handle:not null QObjectH;callback:qrealCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonL2Changed, "QGamepad_signal_slot_buttonL2Changed");
 
 procedure QGamepad_signal_slot_buttonR2Changed(handle:not null QObjectH;callback:qrealCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonR2Changed, "QGamepad_signal_slot_buttonR2Changed");
 
 procedure QGamepad_signal_slot_buttonSelectChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonSelectChanged, "QGamepad_signal_slot_buttonSelectChanged");
 
 procedure QGamepad_signal_slot_buttonStartChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonStartChanged, "QGamepad_signal_slot_buttonStartChanged");
 
 procedure QGamepad_signal_slot_buttonL3Changed(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonL3Changed, "QGamepad_signal_slot_buttonL3Changed");
 
 procedure QGamepad_signal_slot_buttonR3Changed(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonR3Changed, "QGamepad_signal_slot_buttonR3Changed");
 
 procedure QGamepad_signal_slot_buttonUpChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonUpChanged, "QGamepad_signal_slot_buttonUpChanged");
 
 procedure QGamepad_signal_slot_buttonDownChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonDownChanged, "QGamepad_signal_slot_buttonDownChanged");
 
 procedure QGamepad_signal_slot_buttonLeftChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonLeftChanged, "QGamepad_signal_slot_buttonLeftChanged");
 
 procedure QGamepad_signal_slot_buttonRightChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonRightChanged, "QGamepad_signal_slot_buttonRightChanged");
 
 procedure QGamepad_signal_slot_buttonCenterChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonCenterChanged, "QGamepad_signal_slot_buttonCenterChanged");
 
 procedure QGamepad_signal_slot_buttonGuideChanged(handle:not null QObjectH;callback: boolCallbackH);
 pragma Import(C,QGamepad_signal_slot_buttonGuideChanged, "QGamepad_signal_slot_buttonGuideChanged");
-----------------------------------------------------------------------
 type GamepadButton is new integer;
 ButtonInvalid : constant GamepadButton := -1;
 ButtonA       : constant GamepadButton :=  0;
 ButtonB       : constant GamepadButton :=  1;
 ButtonX       : constant GamepadButton :=  2;
 ButtonY       : constant GamepadButton :=  3;
 ButtonL1      : constant GamepadButton :=  4;
 ButtonR1      : constant GamepadButton :=  5;
 ButtonL2      : constant GamepadButton :=  6;
 ButtonR2      : constant GamepadButton :=  7;
 ButtonSelect  : constant GamepadButton :=  8;
 ButtonStart   : constant GamepadButton :=  9;
 ButtonL3      : constant GamepadButton := 10;
 ButtonR3      : constant GamepadButton := 11;
 ButtonUp      : constant GamepadButton := 12;
 ButtonDown    : constant GamepadButton := 13;
 ButtonRight   : constant GamepadButton := 14;
 ButtonLeft    : constant GamepadButton := 15;
 ButtonCenter  : constant GamepadButton := 16;
 ButtonGuide   : constant GamepadButton := 17;

 type GamepadAxis is new integer;
 AxisInvalid : constant GamepadAxis := -1;
 AxisLeftX   : constant GamepadAxis :=  0;
 AxisLeftY   : constant GamepadAxis :=  1;
 AxisRightX  : constant GamepadAxis :=  2; 
 AxisRightY  : constant GamepadAxis :=  3;
 

 function  QGamepadManager_instance return QObjectH;
 pragma Import(C,QGamepadManager_instance, "QGamepadManager_instance");
 
 function  QGamepadManager_isGamepadConnected(handle:not null QObjectH;deviceId:integer) return boolean;
 pragma Import(C,QGamepadManager_isGamepadConnected, "QGamepadManager_isGamepadConnected");
 
 function  QGamepadManager_gamepadName(handle:not null QObjectH;deviceId:integer) return QStringH;
 pragma Import(C,QGamepadManager_gamepadName, "QGamepadManager_gamepadName");
 
 function  QGamepadManager_isConfigurationNeeded(handle:not null QObjectH;deviceId:integer) return boolean;
 pragma Import(C,QGamepadManager_isConfigurationNeeded, "QGamepadManager_isConfigurationNeeded");
 
 function  QGamepadManager_connectedGamepads(handle:not null QObjectH) return QObjectListH;
 pragma Import(C,QGamepadManager_connectedGamepads, "QGamepadManager_connectedGamepads");
 
 function  QGamepadManager_configureButton(handle:not null QObjectH;deviceId:int;button:GamepadButton) return boolean;
 pragma Import(C,QGamepadManager_configureButton, "QGamepadManager_configureButton");
 
 function  QGamepadManager_configureAxis(handle:not null QObjectH;deviceId:integer;axis: GamepadAxis) return boolean;
 pragma Import(C,QGamepadManager_configureAxis, "QGamepadManager_configureAxis");
 
 function  QGamepadManager_setCancelConfigureButton(handle:not null QObjectH;deviceId:integer;button: GamepadButton) return boolean;
 pragma Import(C,QGamepadManager_setCancelConfigureButton, "QGamepadManager_setCancelConfigureButton");
 
 procedure QGamepadManager_resetConfiguration(handle:not null QObjectH;deviceId:int);
 pragma Import(C,QGamepadManager_resetConfiguration, "QGamepadManager_resetConfiguration");
 
 procedure QGamepadManager_setSettingsFile(handle:not null QObjectH;file: QStringH);
 pragma Import(C,QGamepadManager_setSettingsFile, "QGamepadManager_setSettingsFile");
 

 type intIntCallbackH is access procedure(x,y:integer);
 pragma convention (C,intIntCallbackH);
 
 type intIntDoubleCallbackH is access procedure(x,y:integer;v:qreal);
 pragma convention(C,intIntDoubleCallbackH);

 procedure QGamepadManager_signal_slot_connectedGamepadsChanged(handle:not null QObjectH;callback:voidCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_connectedGamepadsChanged, "QGamepadManager_signal_slot_connectedGamepadsChanged");
 
 procedure QGamepadManager_signal_slot_gamepadConnected(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_gamepadConnected, "QGamepadManager_signal_slot_gamepadConnected");
 
 procedure QGamepadManager_signal_slot_gamepadDisconnected(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_gamepadDisconnected, "QGamepadManager_signal_slot_gamepadDisconnected");
 
 procedure QGamepadManager_signal_slot_gamepadAxisEvent(handle:not null QObjectH;callback:intIntDoubleCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_gamepadAxisEvent, "QGamepadManager_signal_slot_gamepadAxisEvent");
 
 procedure QGamepadManager_signal_slot_gamepadButtonPressEvent(handle:not null QObjectH;callback:intIntDoubleCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_gamepadButtonPressEvent, "QGamepadManager_signal_slot_gamepadButtonPressEvent");
 
 procedure QGamepadManager_signal_slot_gamepadButtonReleaseEvent(handle:not null QObjectH;callback:intIntCallbackH);                 
 pragma Import(C,QGamepadManager_signal_slot_gamepadButtonReleaseEvent, "QGamepadManager_signal_slot_gamepadButtonReleaseEvent");
 
 procedure QGamepadManager_signal_slot_buttonConfigured(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_buttonConfigured, "QGamepadManager_signal_slot_buttonConfigured");
 
 procedure QGamepadManager_signal_slot_axisConfigured(handle:not null QObjectH;callback:intIntCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_axisConfigured, "QGamepadManager_signal_slot_axisConfigured");
 
 procedure QGamepadManager_signal_slot_configurationCanceled(handle:not null QObjectH;callback:intCallbackH);
 pragma Import(C,QGamepadManager_signal_slot_configurationCanceled, "QGamepadManager_signal_slot_configurationCanceled");

end;
