--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt;                use Qt;
with Qt.QEvent;         use Qt.QEvent; 
with Qt.QPoint;         use Qt.QPoint; 
with Qt.QString;        use Qt.QString;
with builtin;           use builtin;

package Qt.QTest is

 type MouseAction is (MousePress, MouseRelease, MouseClick, MouseDClick, MouseMove );
 pragma convention(C,MouseAction);

 type KeyAction  is ( Press, Release, Click, Shortcut ); 
 pragma convention(C,KeyAction);

 subtype QtKey is Unsigned_Char;   -- one byte
 subtype ulong is Unsigned_Long;   -- fore bytes
 subtype ushort is Unsigned_Short; -- two bytes

 procedure QTest_handleMouseEvent(window:QWindowH;local:QPointFH;global:QPointFH;state:QtMouseButtons;button: QtMouseButton;tp:QEventType;mods: QtKeyboardModifiers;timestamp: integer);
 pragma Import(C,QTest_handleMouseEvent, "QTest_handleMouseEvent");
 
 function  QTest_lastMouseButton return QtMouseButton;
 pragma Import(C,QTest_lastMouseButton, "QTest_lastMouseButton");
 
 procedure QTest_lastMouseTimestamp(stamp:integer);
 pragma Import(C,QTest_lastMouseTimestamp, "QTest_lastMouseTimestamp");
 
 procedure QTest_mouseEvent(action:MouseAction;window: QWindowH;button: QtMouseButton;stateKey:QtKeyboardModifiers;pos: QPointH;delays: integer := -1);
 pragma Import(C,QTest_mouseEvent, "QTest_mouseEvent");
 
 procedure QTest_mousePress(window:QWindowH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH :=  QPoint_create; delays:integer := -1);
 pragma Import(C,QTest_mousePress, "QTest_mousePress");
 
 procedure QTest_mouseRelease(window:QWindowH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH := QPoint_create; delays: integer := -1);
 pragma Import(C,QTest_mouseRelease, "QTest_mouseRelease");
 
 procedure QTest_mouseClick(window:QWindowH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH := QPoint_create; delays: integer := -1);   
 pragma Import(C,QTest_mouseClick, "QTest_mouseClick");
 
 procedure QTest_mouseDClick(window:QWindowH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH := QPoint_create; delays: integer := -1);    
 pragma Import(C,QTest_mouseDClick, "QTest_mouseDClick");
 
 procedure QTest_mouseMove(window:QWindowH;pos : QPointH := QPoint_create; delays: integer := -1);     
 pragma Import(C,QTest_mouseMove, "QTest_mouseMove");
 
 procedure QTest_handleKeyEvent(window:QWindowH;t: QEventType;k: integer;mods: QtKeyboardModifiers;text : QStringH := QString_create;autorep :boolean :=  false;count : ushort :=  1);
 pragma Import(C,QTest_handleKeyEvent, "QTest_handleKeyEvent");
 
 function  QTest_sendShortcutOverrideEvent(o:QObjectH;timestamp: ulong;k: integer;mods: QtKeyboardModifiers;text : QStringH := QString_create; autorep :boolean :=  false;count : ushort :=  1) return boolean;
 pragma Import(C,QTest_sendShortcutOverrideEvent, "QTest_sendShortcutOverrideEvent");
 
 procedure QTest_simulateEvent(window:QWindowH;press: boolean;code: integer;modifier:QtKeyboardModifiers;text: QStringH;repeat: boolean;delays: integer := -1);
 pragma Import(C,QTest_simulateEvent, "QTest_simulateEvent");
 
 procedure QTest_sendKeyEvent(action:KeyAction;window: QWindowH;code: QtKey;text:QStringH;modifier: QtKeyboardModifiers;delays: integer := -1);
 pragma Import(C,QTest_sendKeyEvent, "QTest_sendKeyEvent");
 
 procedure QTest_sendKeyEvent2(action:KeyAction;window: QWindowH;code: QtKey;ascii:character;modifier: QtKeyboardModifiers;delays: integer := -1);
 pragma Import(C,QTest_sendKeyEvent2, "QTest_sendKeyEvent2");
 
 procedure QTest_keyEvent(action:KeyAction;window: QWindowH;ascii: character;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyEvent, "QTest_keyEvent");
 
 procedure QTest_keyEvent2(action:KeyAction;window: QWindowH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyEvent2, "QTest_keyEvent2");
 
 procedure QTest_keyEvent3(action:KeyAction;window: QWindowH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyEvent3, "QTest_keyEvent3");
 
 procedure QTest_keyPress(window:QWindowH;key: character;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyPress, "QTest_keyPress");
 
 procedure QTest_keyPress2(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyPress2, "QTest_keyPress2");
 
 procedure QTest_keyRelease(window:QWindowH;key: character;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyRelease, "QTest_keyRelease");
 
 procedure QTest_keyRelease2(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyRelease2, "QTest_keyRelease2");
 
 procedure QTest_keyClick(window:QWindowH;key: character;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyClick, "QTest_keyClick");
 
 procedure QTest_keyClick2(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTest_keyClick2, "QTest_keyClick2");
 -------------------------------------------------------------------------------------------
 procedure QTest_sendKeyEvent(action:KeyAction;window: QWindowH;code: QtKey;ascii:character;modifier: QtKeyboardModifiers;delays: integer := -1);
 procedure QTest_keyEvent(action:KeyAction;window: QWindowH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 procedure QTest_keyPress(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 procedure QTest_keyRelease(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 procedure QTest_keyClick(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
----------------------------------------------------------------------------------------------
procedure QTestLib_mouseEvent(action:MouseAction;widget: QWidgetH;button: QtMouseButton;stateKey:QtKeyboardModifiers;pos: QPointH;delays: integer := -1);
 pragma Import(C,QTestLib_mouseEvent, "QTestLib_mouseEvent");
 
 procedure QTestLib_mousePress(widget:QWidgetH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH :=  QPoint_create; delays:integer := -1);
 pragma Import(C,QTestLib_mousePress, "QTestLib_mousePress");
 
 procedure QTestLib_mouseRelease(widget:QWidgetH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH := QPoint_create; delays: integer := -1);
 pragma Import(C,QTestLib_mouseRelease, "QTestLib_mouseRelease");
 
 procedure QTestLib_mouseClick(widget:QWidgetH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH := QPoint_create; delays: integer := -1);   
 pragma Import(C,QTestLib_mouseClick, "QTestLib_mouseClick");
 
 procedure QTestLib_mouseDClick(widget:QWidgetH;button: QtMouseButton;stateKey :QtKeyboardModifiers :=  0;pos :QPointH := QPoint_create; delays: integer := -1);    
 pragma Import(C,QTestLib_mouseDClick, "QTestLib_mouseDClick");
 
 procedure QTestLib_mouseMove(widget:QWidgetH;pos : QPointH := QPoint_create; delays: integer := -1);     
 pragma Import(C,QTestLib_mouseMove, "QTestLib_mouseMove");
 
 procedure QTestLib_simulateEvent(widget:QWidgetH;press: boolean;code: integer;modifier:QtKeyboardModifiers;text: QStringH;repeat: boolean;delays: integer := -1);
 pragma Import(C,QTestLib_simulateEvent, "QTestLib_simulateEvent");
 
 procedure QTestLib_sendKeyEvent(action:KeyAction;widget: QWidgetH;code: QtKey;text:QStringH;modifier: QtKeyboardModifiers;delays: integer := -1);
 pragma Import(C,QTestLib_sendKeyEvent, "QTestLib_sendKeyEvent");
 
 procedure QTestLib_sendKeyEvent2(action:KeyAction;widget: QWidgetH;code: QtKey;ascii:character;modifier: QtKeyboardModifiers;delays: integer := -1);
 pragma Import(C,QTestLib_sendKeyEvent2, "QTestLib_sendKeyEvent2");
 
 procedure QTestLib_keyEvent(action:KeyAction;widget: QWidgetH;ascii: character;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyEvent, "QTestLib_keyEvent");
 
 procedure QTestLib_keyEvent2(action:KeyAction;widget: QWidgetH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyEvent2, "QTestLib_keyEvent2");
 
 procedure QTestLib_keyEvent3(action:KeyAction;widget: QWidgetH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyEvent3, "QTestLib_keyEvent3");
 
 procedure QTestLib_keyPress(widget:QWidgetH;key: character;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyPress, "QTestLib_keyPress");
 
 procedure QTestLib_keyPress2(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyPress2, "QTestLib_keyPress2");
 
 procedure QTestLib_keyRelease(widget:QWidgetH;key: character;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyRelease, "QTestLib_keyRelease");
 
 procedure QTestLib_keyRelease2(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyRelease2, "QTestLib_keyRelease2");
 
 procedure QTestLib_keyClick(widget:QWidgetH;key: character;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyClick, "QTestLib_keyClick");
 
 procedure QTestLib_keyClick2(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 pragma Import(C,QTestLib_keyClick2, "QTestLib_keyClick2");

 -------------------------------------------------------------------------------------------
 procedure QTestLib_sendKeyEvent(action:KeyAction;widget: QWidgetH;code: QtKey;ascii:character;modifier: QtKeyboardModifiers;delays: integer := -1);
 procedure QTestLib_keyEvent(action:KeyAction;widget: QWidgetH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 procedure QTestLib_keyPress(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 procedure QTestLib_keyRelease(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);
 procedure QTestLib_keyClick(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1);

end;
