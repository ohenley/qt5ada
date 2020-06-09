--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package body Qt.QDialogButtonBox    is

 function  QDialogButtonBox_create(orientation: QtOrientation;parent: QWidgetH) return QDialogButtonBoxH is
 begin
   return  QDialogButtonBox_create1(orientation,parent);
 end;

 function QDialogButtonBox_create(buttons: StandardButton ; orientation: QtOrientation := QtHorizontal; parent: QWidgetH  := null) return QDialogButtonBoxH is
 begin
   return  QDialogButtonBox_create2(buttons,orientation, parent);
 end;

 function  QDialogButtonBox_addButton(handle: not null  QDialogButtonBoxH;text: QStringH; role: ButtonRole) return QPushButtonH is
 begin
   return  QDialogButtonBox_addButton1(handle,text, role);
 end;

 function  QDialogButtonBox_addButton(handle: not null  QDialogButtonBoxH;button:StandardButton) return QPushButtonH is
 begin
   return  QDialogButtonBox_addButton2(handle,button);
 end;

 procedure QDialogButtonBox_setText(handle: not null  QDialogButtonBoxH;which: StandardButton; text:QStringH) is
 button: QPushbuttonH;
 begin
  button := QDialogButtonBox_button(handle,which);
  QAbstractButton_setText(button,text);
 end;

 procedure QDialogButtonBox_signal_slot_clicked(handle: not null  QDialogButtonBoxH;which: StandardButton; hook: voidCallbackH) is
 button: QPushbuttonH;
 begin
  button := QDialogButtonBox_button(handle,which);
  QAbstractButton_signal_slot_clicked(button,hook);
 end;

end Qt.QDialogButtonBox;
