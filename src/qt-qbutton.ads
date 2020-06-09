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

package Qt.QButton              is

procedure QAbstractButton_setText(handle: not null  QAbstractButtonH; text: QStringH);   
pragma Import(C,QAbstractButton_setText,"QAbstractButton_setText");

function  QAbstractButton_text(handle: not null  QAbstractButtonH) return QStringH;
pragma Import(C,QAbstractButton_text,"QAbstractButton_text");

procedure QAbstractButton_setIcon(handle: not null  QAbstractButtonH; icon: QIconH);   
pragma Import(C,QAbstractButton_setIcon,"QAbstractButton_setIcon");

function  QAbstractButton_icon(handle: not null  QAbstractButtonH) return QIconH;
pragma Import(C,QAbstractButton_icon,"QAbstractButton_icon");

function  QAbstractButton_iconSize(handle: not null  QAbstractButtonH) return QSizeH;
pragma Import(C,QAbstractButton_iconSize,"QAbstractButton_iconSize");

procedure QAbstractButton_setShortcut(handle: not null  QAbstractButtonH; key: QKeySequenceH);   
pragma Import(C,QAbstractButton_setShortcut,"QAbstractButton_setShortcut");

function  QAbstractButton_shortcut(handle: not null  QAbstractButtonH) return QKeySequenceH;
pragma Import(C,QAbstractButton_shortcut,"QAbstractButton_shortcut");

procedure QAbstractButton_setCheckable(handle: not null  QAbstractButtonH; p1: Boolean);   
pragma Import(C,QAbstractButton_setCheckable,"QAbstractButton_setCheckable");

function QAbstractButton_isCheckable(handle: not null  QAbstractButtonH) return  Boolean;   
pragma Import(C,QAbstractButton_isCheckable,"QAbstractButton_isCheckable");

function QAbstractButton_isChecked(handle: not null  QAbstractButtonH) return  Boolean;   
pragma Import(C,QAbstractButton_isChecked,"QAbstractButton_isChecked");

procedure QAbstractButton_setDown(handle: not null  QAbstractButtonH; p1: Boolean);   
pragma Import(C,QAbstractButton_setDown,"QAbstractButton_setDown");

function QAbstractButton_isDown(handle: not null  QAbstractButtonH) return  Boolean;   
pragma Import(C,QAbstractButton_isDown,"QAbstractButton_isDown");

procedure QAbstractButton_setAutoRepeat(handle: not null  QAbstractButtonH; p1: Boolean);   
pragma Import(C,QAbstractButton_setAutoRepeat,"QAbstractButton_setAutoRepeat");

function QAbstractButton_autoRepeat(handle: not null  QAbstractButtonH) return  Boolean;   
pragma Import(C,QAbstractButton_autoRepeat,"QAbstractButton_autoRepeat");

procedure QAbstractButton_setAutoRepeatDelay(handle: not null  QAbstractButtonH; p1: Integer);   
pragma Import(C,QAbstractButton_setAutoRepeatDelay,"QAbstractButton_setAutoRepeatDelay");

function QAbstractButton_autoRepeatDelay(handle: not null  QAbstractButtonH) return  Integer;   
pragma Import(C,QAbstractButton_autoRepeatDelay,"QAbstractButton_autoRepeatDelay");

procedure QAbstractButton_setAutoRepeatInterval(handle: not null  QAbstractButtonH; p1: Integer);   
pragma Import(C,QAbstractButton_setAutoRepeatInterval,"QAbstractButton_setAutoRepeatInterval");

function QAbstractButton_autoRepeatInterval(handle: not null  QAbstractButtonH) return  Integer;   
pragma Import(C,QAbstractButton_autoRepeatInterval,"QAbstractButton_autoRepeatInterval");

procedure QAbstractButton_setAutoExclusive(handle: not null  QAbstractButtonH; p1: Boolean);   
pragma Import(C,QAbstractButton_setAutoExclusive,"QAbstractButton_setAutoExclusive");

function QAbstractButton_autoExclusive(handle: not null  QAbstractButtonH) return  Boolean;   
pragma Import(C,QAbstractButton_autoExclusive,"QAbstractButton_autoExclusive");

function QAbstractButton_group(handle: not null  QAbstractButtonH) return  QButtonGroupH;   
pragma Import(C,QAbstractButton_group,"QAbstractButton_group");

procedure QAbstractButton_setIconSize(handle: not null  QAbstractButtonH; size: QSizeH);   
pragma Import(C,QAbstractButton_setIconSize,"QAbstractButton_setIconSize");

procedure QAbstractButton_animateClick(handle: not null  QAbstractButtonH; msec: Integer := 100);   
pragma Import(C,QAbstractButton_animateClick,"QAbstractButton_animateClick");

procedure QAbstractButton_click(handle: not null  QAbstractButtonH);   
pragma Import(C,QAbstractButton_click,"QAbstractButton_click");

procedure QAbstractButton_toggle(handle: not null  QAbstractButtonH);   
pragma Import(C,QAbstractButton_toggle,"QAbstractButton_toggle");

procedure QAbstractButton_setChecked(handle: not null  QAbstractButtonH; p1: Boolean);   
pragma Import(C,QAbstractButton_setChecked,"QAbstractButton_setChecked");

function QPushButton_create(parent: QWidgetH := null) return QPushButtonH;    
pragma Import(C,QPushButton_create,"QPushButton_create");

procedure QPushButton_destroy(handle: not null  QPushButtonH);   
pragma Import(C,QPushButton_destroy,"QPushButton_destroy");

function QPushButton_create2(text: QStringH; parent: QWidgetH := null) return QPushButtonH;
pragma Import(C,QPushButton_create2,"QPushButton_create2");

function QPushButton_create3(icon: QIconH; text: QStringH; parent: QWidgetH := null) return QPushButtonH;
pragma Import(C,QPushButton_create3,"QPushButton_create3");

function  QPushButton_sizeHint(handle: not null  QPushButtonH) return QSizeH;
pragma Import(C,QPushButton_sizeHint,"QPushButton_sizeHint");

function  QPushButton_minimumSizeHint(handle: not null  QPushButtonH) return QSizeH;
pragma Import(C,QPushButton_minimumSizeHint,"QPushButton_minimumSizeHint");

function QPushButton_autoDefault(handle: not null  QPushButtonH) return  Boolean;   
pragma Import(C,QPushButton_autoDefault,"QPushButton_autoDefault");

procedure QPushButton_setAutoDefault(handle: not null  QPushButtonH; p1: Boolean);   
pragma Import(C,QPushButton_setAutoDefault,"QPushButton_setAutoDefault");

function QPushButton_isDefault(handle: not null  QPushButtonH) return  Boolean;   
pragma Import(C,QPushButton_isDefault,"QPushButton_isDefault");

procedure QPushButton_setDefault(handle: not null  QPushButtonH; p1: Boolean);   
pragma Import(C,QPushButton_setDefault,"QPushButton_setDefault");

procedure QPushButton_setMenu(handle: not null  QPushButtonH; menu: QMenuH);   
pragma Import(C,QPushButton_setMenu,"QPushButton_setMenu");

function QPushButton_menu(handle: not null  QPushButtonH) return  QMenuH;   
pragma Import(C,QPushButton_menu,"QPushButton_menu");

procedure QPushButton_setFlat(handle: not null  QPushButtonH; p1: Boolean);   
pragma Import(C,QPushButton_setFlat,"QPushButton_setFlat");

function QPushButton_isFlat(handle: not null  QPushButtonH) return  Boolean;   
pragma Import(C,QPushButton_isFlat,"QPushButton_isFlat");

procedure QPushButton_showMenu(handle: not null  QPushButtonH);   
pragma Import(C,QPushButton_showMenu,"QPushButton_showMenu");

function QRadioButton_create(parent: QWidgetH := null) return QRadioButtonH;    
pragma Import(C,QRadioButton_create,"QRadioButton_create");

procedure QRadioButton_destroy(handle: not null  QRadioButtonH);   
pragma Import(C,QRadioButton_destroy,"QRadioButton_destroy");

function QRadioButton_create2(text: QStringH; parent: QWidgetH := null) return QRadioButtonH;
pragma Import(C,QRadioButton_create2,"QRadioButton_create2");

function  QRadioButton_sizeHint(handle: not null  QRadioButtonH) return QSizeH;
pragma Import(C,QRadioButton_sizeHint,"QRadioButton_sizeHint");
 
 procedure QAbstractButton_signal_slot_pressed(handle: not null QAbstractButtonH; hook:voidCallbackH);
 pragma Import(C,QAbstractButton_signal_slot_pressed, "QAbstractButton_signal_slot_pressed");
 
 procedure QAbstractButton_signal_slot_released(handle: not null QAbstractButtonH; hook:voidCallbackH);
 pragma Import(C,QAbstractButton_signal_slot_released, "QAbstractButton_signal_slot_released");
 
 procedure QAbstractButton_signal_slot_clicked(handle: not null QAbstractButtonH; hook:boolCallbackH);
 pragma Import(C,QAbstractButton_signal_slot_clicked, "QAbstractButton_signal_slot_clicked");
 
 procedure QAbstractButton_signal_slot_clicked2(handle: not null QAbstractButtonH; hook:voidCallbackH);
 pragma Import(C,QAbstractButton_signal_slot_clicked2, "QAbstractButton_signal_slot_clicked2");
 
 procedure QAbstractButton_signal_slot_toggled(handle: not null QAbstractButtonH; hook:boolCallbackH);
 pragma Import(C,QAbstractButton_signal_slot_toggled, "QAbstractButton_signal_slot_toggled");
 
  function  QCommandLinkButton_create(parent:QWidgetH := null) return QPushButtonH;
 pragma Import(C,QCommandLinkButton_create, "QCommandLinkButton_create");
 
 function  QCommandLinkButton_create2(text:QStringH;parent : QWidgetH :=  null) return QPushButtonH;
 pragma Import(C,QCommandLinkButton_create2, "QCommandLinkButton_create2");
 
 function  QCommandLinkButton_create3(text:QStringH;description: QStringH;parent : QWidgetH :=  null) return QPushButtonH;
 pragma Import(C,QCommandLinkButton_create3, "QCommandLinkButton_create3");
 
 procedure QCommandLinkButton_destroy(handle:not null QPushButtonH);
 pragma Import(C,QCommandLinkButton_destroy, "QCommandLinkButton_destroy");
 
 function  QCommandLinkButton_description(handle:not null QPushButtonH) return QStringH;
 pragma Import(C,QCommandLinkButton_description, "QCommandLinkButton_description");
 
 procedure QCommandLinkButton_setDescription(handle:not null QPushButtonH;description:QStringH);
 pragma Import(C,QCommandLinkButton_setDescription, "QCommandLinkButton_setDescription");

-----------------------------------------------------------------------
function QPushButton_create(text: QStringH; parent: QWidgetH := null) return QPushButtonH;
function QPushButton_create(icon: QIconH; text: QStringH; parent: QWidgetH := null) return QPushButtonH;
function QRadioButton_create(text: QStringH; parent: QWidgetH := null) return QRadioButtonH;
procedure QAbstractButton_signal_slot_clicked(handle: not null QAbstractButtonH; hook:voidCallbackH);

 function  QCommandLinkButton_create(text:QStringH;parent : QWidgetH :=  null) return QPushButtonH;
 function  QCommandLinkButton_create(text:QStringH;description: QStringH;parent : QWidgetH :=  null) return QPushButtonH;

end Qt.QButton;
