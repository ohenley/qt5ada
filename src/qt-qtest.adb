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


package body Qt.QTest is

 procedure QTest_sendKeyEvent(action:KeyAction;window: QWindowH;code: QtKey;ascii:character;modifier: QtKeyboardModifiers;delays: integer := -1) is
 begin
  QTest_sendKeyEvent2(action,window,code,ascii,modifier,delays);
 end;
 procedure QTest_keyEvent(action:KeyAction;window: QWindowH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
   QTest_keyEvent2(action,window,key,modifier,delays);
 end;
 procedure QTest_keyPress(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
  QTest_keyPress2(window,key,modifier,delays);
 end; 
 procedure QTest_keyRelease(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
  QTest_keyRelease2(window,key,modifier,delays);
 end;
 procedure QTest_keyClick(window:QWindowH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
  QTest_keyClick2(window,key,modifier,delays);
 end;

----------------------------------------------------
 procedure QTestLib_sendKeyEvent(action:KeyAction;widget: QWidgetH;code: QtKey;ascii:character;modifier: QtKeyboardModifiers;delays: integer := -1) is
 begin
  QTestLib_sendKeyEvent2(action,widget,code,ascii,modifier,delays);
 end;
 procedure QTestLib_keyEvent(action:KeyAction;widget: QWidgetH;key: QtKey;modifier :QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
   QTestLib_keyEvent2(action,widget,key,modifier,delays);
 end;
 procedure QTestLib_keyPress(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
  QTestLib_keyPress2(widget,key,modifier,delays);
 end; 
 procedure QTestLib_keyRelease(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
  QTestLib_keyRelease2(widget,key,modifier,delays);
 end;
 procedure QTestLib_keyClick(widget:QWidgetH;key: QtKey;modifier : QtKeyboardModifiers :=  QtNoModifier;delays: integer := -1) is
 begin
  QTestLib_keyClick2(widget,key,modifier,delays);
 end;

end;
