--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QButton              is

function QPushButton_create(text: QStringH; parent: QWidgetH := null) return QPushButtonH is
begin
 return QPushButton_create2(text, parent);
end;

function QPushButton_create(icon: QIconH; text: QStringH; parent: QWidgetH := null) return QPushButtonH is
begin
 return QPushButton_create3(icon, text, parent);
end;

function QRadioButton_create(text: QStringH; parent: QWidgetH := null) return QRadioButtonH is
begin
 return QRadioButton_create2(text, parent);
end;

procedure QAbstractButton_signal_slot_clicked(handle: not null QAbstractButtonH; hook:voidCallbackH) is
begin
  QAbstractButton_signal_slot_clicked2(handle,hook);
end;  

function  QCommandLinkButton_create(text:QStringH;parent : QWidgetH :=  null) return QPushButtonH is
begin
  return  QCommandLinkButton_create2(text,parent);
end;

function  QCommandLinkButton_create(text:QStringH;description: QStringH;parent : QWidgetH :=  null) return QPushButtonH is
begin
  return  QCommandLinkButton_create3(text,description,parent);
end;

end Qt.QButton;
