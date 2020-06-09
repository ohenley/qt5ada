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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString; use Qt.QString;
package body Qt.QMessageBox          is

function QMessageBox_create(icon: QMessageBoxIcon; title: QStringH; text: QStringH; buttons: QMessageBoxStandardButtons := QMessageBoxNoButton; parent: QWidgetH := null; f: QtWindowFlags := QtDialog or QtMSWindowsFixedSizeDialogHint) return QMessageBoxH is
begin
  return  QMessageBox_create2(icon, title, text, buttons, parent, f);
end;

function QMessageBox_create(title: QStringH; text: QStringH; icon: QMessageBoxIcon; button0: Integer; button1: Integer; button2: Integer; parent: QWidgetH := null; f: QtWindowFlags := QtDialog or QtMSWindowsFixedSizeDialogHint) return QMessageBoxH is
begin
  return QMessageBox_create3(title, text, icon, button0, button1, button2, parent, f);
end;

function QMessageBox_addButton(handle: not null  QMessageBoxH; text: QStringH; role: QMessageBoxButtonRole) return  QPushButtonH is
begin
  return QMessageBox_addButton2(handle, text, role);
end;

function QMessageBox_addButton(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton) return  QPushButtonH is
begin
  return QMessageBox_addButton3(handle, button);
end;

procedure QMessageBox_setDefaultButton(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton) is
begin
  QMessageBox_setDefaultButton2(handle, button);
end;

procedure QMessageBox_setEscapeButton(handle: not null  QMessageBoxH; button: QMessageBoxStandardButton) is
begin
  QMessageBox_setEscapeButton2(handle, button);
end;

function QMessageBox_information(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer is
begin
 return  QMessageBox_information3(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
end;

function QMessageBox_question(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer is
begin
 return  QMessageBox_question3(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
end;

function QMessageBox_warning(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer is
begin
 return  QMessageBox_warning3(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
end;

function QMessageBox_critical(parent: QWidgetH; title: QStringH; text: QStringH; button0Text: QStringH; button1Text: QStringH := null; button2Text: QStringH := null; defaultButtonNumber: Integer := 0; escapeButtonNumber: Integer := -1) return Integer is
begin
 return QMessageBox_critical3(parent, title, text, button0Text, button1Text, button2Text, defaultButtonNumber, escapeButtonNumber);
end;

procedure  QErrorMessage_ShowMessage(handle: not null  QErrorMessageH; message: QStringH; mtype: QStringH) is
begin
    QErrorMessage_ShowMessage2(handle, message, mtype);
end;
------------------------------------------------------------------------------------------------------------------------
function  CriticalInformation(title,text:QStringH; parent: QWidgetH := window) return integer is
   n : integer;
   begin
     n := QMessageBox_critical(parent => parent,  title => title,text => text,
          button0Text => s2qs("Yes"), button1Text => s2qs("No"), button2Text => s2qs("Cancel"),
          defaultButtonNumber =>  0, escapeButtonNumber =>  -1);
     return n;
     
  end;
  ------------------------------------------------------------------------------------------------
  procedure HelpInformation(title,text:QStringH;parent: QWidgetH := window) is
  begin
     
  if  QMessageBox_information(parent => window, title => title, text => text, 
      buttons => QMessageBoxOk, defaultButton =>  QMessageBoxNoButton) /= 0
   then null;
   end if;

  end;



end Qt.QMessageBox;
