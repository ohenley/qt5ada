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

with Interfaces.C; use Interfaces.C;
with Qt.QButton; use Qt.QButton;
package Qt.QDialogButtonBox    is

  -- keep this in sync with QMessageBox::ButtonRol
  type ButtonRole  is (InvalidRole,AcceptRole,RejectRole,DestructiveRole,ActionRole,HelpRole,
                       YesRole,NoRole,ResetRole,ApplyRole,NRole);
  pragma Convention(C,ButtonRole);
  for  ButtonRole use (
        InvalidRole     => -1,
        AcceptRole      =>  0,
        RejectRole      =>  1,
        DestructiveRole =>  2,
        ActionRole      =>  3,
        HelpRole        =>  4,
        YesRole         =>  5,
        NoRole          =>  6,
        ResetRole       =>  7,
        ApplyRole       =>  8,
        NRole           =>  9
   );

  -- keep this in sync with QMessageBox::StandardButton
  subtype StandardButton  is cardinal;

   NoButton              : constant := 16#00000000#;
   ButtonOk              : constant := 16#00000400#;
   ButtonSave            : constant := 16#00000800#;
   ButtonSaveAll         : constant := 16#00001000#;
   ButtonOpen            : constant := 16#00002000#;
   ButtonYes             : constant := 16#00004000#;
   ButtonYesToAll        : constant := 16#00008000#;
   ButtonNo              : constant := 16#00010000#;
   ButtonNoToAll         : constant := 16#00020000#;
   ButtonAbort           : constant := 16#00040000#;
   ButtonRetry           : constant := 16#00080000#;
   ButtonIgnore          : constant := 16#00100000#;
   ButtonClose           : constant := 16#00200000#;
   ButtonCancel          : constant := 16#00400000#;
   ButtonDiscard         : constant := 16#00800000#;
   ButtonHelp            : constant := 16#01000000#;
   ButtonApply           : constant := 16#02000000#;
   ButtonReset           : constant := 16#04000000#;
   ButtonRestoreDefaults : constant := 16#08000000#;

 type ButtonLayout is (WinLayout,MacLayout,KdeLayout,GnomeLayou);
 pragma Convention(C,ButtonLayout);

 subtype QDialogButtonBoxStandardButtonsH is  StandardButton;

 function  QDialogButtonBox_create(parent: QWidgetH ) return QDialogButtonBoxH;
 pragma Import(C,QDialogButtonBox_create , "QDialogButtonBox_create");

 function  QDialogButtonBox_create1(orientation: QtOrientation;parent: QWidgetH) return QDialogButtonBoxH;
 pragma Import(C,QDialogButtonBox_create1 , "QDialogButtonBox_create1");

 function  QDialogButtonBox_create2(buttons: StandardButton := ButtonOk + ButtonClose ;orientation: QtOrientation := QtHorizontal; parent: QWidgetH  := null) return QDialogButtonBoxH;
 pragma Import(C,QDialogButtonBox_create2, "QDialogButtonBox_create2");
 
 procedure QDialogButtonBox_destroy(handle: not null QDialogButtonBoxH);
 pragma Import(C,QDialogButtonBox_destroy , "QDialogButtonBox_destroy");

 procedure QDialogButtonBox_setOrientation(handle: not null  QDialogButtonBoxH; orientation: QtOrientation);
 pragma Import(C,QDialogButtonBox_setOrientation ,"QDialogButtonBox_setOrientation");

 function  QDialogButtonBox_orientation(handle: not null  QDialogButtonBoxH) return QtOrientation;
 pragma Import(C,QDialogButtonBox_orientation, "QDialogButtonBox_orientation");

 procedure QDialogButtonBox_addButton(handle: not null  QDialogButtonBoxH;button:QAbstractButtonH; role: ButtonRole);
 pragma Import(C,QDialogButtonBox_addButton , "QDialogButtonBox_addButton");

 function  QDialogButtonBox_addButton1(handle: not null  QDialogButtonBoxH;text: QStringH; role: ButtonRole) return QPushButtonH;
 pragma Import(C,QDialogButtonBox_addButton1, "QDialogButtonBox_addButton1");

 function  QDialogButtonBox_addButton2(handle: not null  QDialogButtonBoxH;button:StandardButton) return QPushButtonH;
 pragma Import(C,QDialogButtonBox_addButton2 , "QDialogButtonBox_addButton2");

 procedure QDialogButtonBox_removeButton(handle: not null  QDialogButtonBoxH;button: QAbstractButtonH);
 pragma Import(C,QDialogButtonBox_removeButton ,"QDialogButtonBox_removeButton");

 procedure QDialogButtonBox_clear(handle: not null  QDialogButtonBoxH);
 pragma Import(C,QDialogButtonBox_clear , "QDialogButtonBox_clear");

 function  QDialogButtonBox_buttonRole(handle: not null  QDialogButtonBoxH;button: QAbstractButtonH) return ButtonRole;
 pragma Import(C,QDialogButtonBox_buttonRole, "QDialogButtonBox_buttonRole");

 function  QDialogButtonBox_standardButton(handle: not null  QDialogButtonBoxH;button: QAbstractButtonH) return StandardButton;
 pragma Import(C,QDialogButtonBox_standardButton , "QDialogButtonBox_standardButton");

 function  QDialogButtonBox_button(handle: not null  QDialogButtonBoxH;which: StandardButton) return QPushButtonH;
 pragma Import(C,QDialogButtonBox_button , "QDialogButtonBox_button");

 procedure QDialogButtonBox_setCenterButtons(handle: not null  QDialogButtonBoxH;center: boolean);
 pragma Import(C,QDialogButtonBox_setCenterButtons, "QDialogButtonBox_setCenterButtons");

 function  QDialogButtonBox_centerButtons(handle: not null  QDialogButtonBoxH) return boolean;
 pragma Import(C,QDialogButtonBox_centerButtons, "QDialogButtonBox_centerButtons");

 function  QDialogButtonBox_buttons(handle: not null QDialogButtonBoxH) return QObjectListH;
 pragma Import(C,QDialogButtonBox_buttons, "QDialogButtonBox_buttons");
 
 procedure QDialogButtonBox_setStandardButtons(handle: not null QDialogButtonBoxH;buttons:QDialogButtonBoxStandardButtonsH);
 pragma Import(C,QDialogButtonBox_setStandardButtons, "QDialogButtonBox_setStandardButtons");
 
 function  QDialogButtonBox_standardButtons(handle: not null QDialogButtonBoxH) return QDialogButtonBoxStandardButtonsH;
 pragma Import(C,QDialogButtonBox_standardButtons, "QDialogButtonBox_standardButtons");

 type  QDialogButtonBox_clickedEvent is access procedure(button:QAbstractButtonH);
 pragma Convention(C,QDialogButtonBox_clickedEvent);

 type  QDialogButtonBox_acceptedEvent is access procedure;
 pragma Convention(C,QDialogButtonBox_acceptedEvent);

 type  QDialogButtonBox_helpRequestedEvent is access procedure;
 pragma Convention(C,QDialogButtonBox_helpRequestedEvent);

 type  QDialogButtonBox_rejectedEvent is access procedure;
 pragma Convention(C,QDialogButtonBox_rejectedEvent);

 procedure QDialogButtonBox_signal_slot_clicked(handle: not null QDialogButtonBoxH; hook:QDialogButtonBox_clickedEvent);
 pragma Import(C,QDialogButtonBox_signal_slot_clicked, "QDialogButtonBox_signal_slot_clicked");
 
 procedure QDialogButtonBox_signal_slot_accepted(handle: not null QDialogButtonBoxH; hook:QDialogButtonBox_acceptedEvent);
 pragma Import(C,QDialogButtonBox_signal_slot_accepted, "QDialogButtonBox_signal_slot_accepted");
 
 procedure QDialogButtonBox_signal_slot_helpRequested(handle: not null QDialogButtonBoxH; hook:QDialogButtonBox_helpRequestedEvent);
 pragma Import(C,QDialogButtonBox_signal_slot_helpRequested, "QDialogButtonBox_signal_slot_helpRequested");
 
 procedure QDialogButtonBox_signal_slot_rejected(handle: not null QDialogButtonBoxH; hook:QDialogButtonBox_rejectedEvent);
 pragma Import(C,QDialogButtonBox_signal_slot_rejected, "QDialogButtonBox_signal_slot_rejected");

----------------------------------------------------------------------------------------------------------------------
 function  QDialogButtonBox_create(orientation: QtOrientation;parent: QWidgetH) return QDialogButtonBoxH;
 function  QDialogButtonBox_create(buttons: StandardButton ;orientation: QtOrientation := QtHorizontal; parent: QWidgetH  := null) return QDialogButtonBoxH;
 
 function  QDialogButtonBox_addButton(handle: not null  QDialogButtonBoxH;text: QStringH; role: ButtonRole) return QPushButtonH;
 function  QDialogButtonBox_addButton(handle: not null  QDialogButtonBoxH;button:StandardButton) return QPushButtonH;

 procedure QDialogButtonBox_setText(handle: not null  QDialogButtonBoxH;which: StandardButton; text: QStringH);
 procedure QDialogButtonBox_signal_slot_clicked(handle: not null  QDialogButtonBoxH;which: StandardButton; hook: voidCallbackH);

end Qt.QDialogButtonBox;
