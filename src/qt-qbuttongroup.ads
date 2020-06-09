--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2016                 บ
-- บ Copyright (C) 2012,2013,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QButtonGroup         is

function QButtonGroup_create(parent: QObjectH := null) return QButtonGroupH;   
pragma Import(C,QButtonGroup_create,"QButtonGroup_create");

procedure QButtonGroup_destroy(handle: not null  QButtonGroupH);   
pragma Import(C,QButtonGroup_destroy,"QButtonGroup_destroy");

procedure QButtonGroup_setExclusive(handle: not null  QButtonGroupH; p1: Boolean);   
pragma Import(C,QButtonGroup_setExclusive,"QButtonGroup_setExclusive");

function QButtonGroup_exclusive(handle: not null  QButtonGroupH) return  Boolean;   
pragma Import(C,QButtonGroup_exclusive,"QButtonGroup_exclusive");

procedure QButtonGroup_addButton(handle: not null  QButtonGroupH; p1: QAbstractButtonH);    
pragma Import(C,QButtonGroup_addButton,"QButtonGroup_addButton");

procedure QButtonGroup_addButton2(handle: not null  QButtonGroupH; p1: QAbstractButtonH; id: Integer);
pragma Import(C,QButtonGroup_addButton2,"QButtonGroup_addButton2");

procedure QButtonGroup_removeButton(handle: not null  QButtonGroupH; p1: QAbstractButtonH);   
pragma Import(C,QButtonGroup_removeButton,"QButtonGroup_removeButton");

function  QButtonGroup_buttons(handle: not null  QButtonGroupH) return QObjectListH;
pragma Import(C,QButtonGroup_buttons,"QButtonGroup_buttons");

function  QButtonGroup_count(handle: not null  QButtonGroupH) return integer;
pragma Import(C,QButtonGroup_count,"QButtonGroup_count");

function QButtonGroup_checkedButton(handle: not null  QButtonGroupH) return  QAbstractButtonH;   
pragma Import(C,QButtonGroup_checkedButton,"QButtonGroup_checkedButton");

function QButtonGroup_button(handle: not null  QButtonGroupH; id: Integer) return  QAbstractButtonH;   
pragma Import(C,QButtonGroup_button,"QButtonGroup_button");

procedure QButtonGroup_setId(handle: not null  QButtonGroupH; button: QAbstractButtonH; id: Integer);   
pragma Import(C,QButtonGroup_setId,"QButtonGroup_setId");

function QButtonGroup_id(handle: not null  QButtonGroupH; button: QAbstractButtonH) return  Integer;   
pragma Import(C,QButtonGroup_id,"QButtonGroup_id");

function QButtonGroup_checkedId(handle: not null  QButtonGroupH) return  Integer;   
pragma Import(C,QButtonGroup_checkedId,"QButtonGroup_checkedId");

type QButtonGroup_buttonClickedEvent is access procedure (p1: QAbstractButtonH);
pragma Convention(C,QButtonGroup_buttonClickedEvent);

type QButtonGroup_buttonClicked2Event is access procedure (p1: Integer);
pragma Convention(C,QButtonGroup_buttonClicked2Event);

type QButtonGroup_buttonPressedEvent is access procedure (p1: QAbstractButtonH);
pragma Convention(C,QButtonGroup_buttonPressedEvent);

type QButtonGroup_buttonPressed2Event is access procedure (p1: Integer);
pragma Convention(C,QButtonGroup_buttonPressed2Event);

type QButtonGroup_buttonReleasedEvent is access procedure (p1: QAbstractButtonH);
pragma Convention(C,QButtonGroup_buttonReleasedEvent);

type QButtonGroup_buttonReleased2Event is access procedure (p1: Integer);
pragma Convention(C,QButtonGroup_buttonReleased2Event);
 
 procedure QButtonGroup_signal_slot_buttonClicked(handle: not null QButtonGroupH; hook:QButtonGroup_buttonClickedEvent);
 pragma Import(C,QButtonGroup_signal_slot_buttonClicked, "QButtonGroup_signal_slot_buttonClicked");
 
 procedure QButtonGroup_signal_slot_buttonClicked2(handle: not null QButtonGroupH; hook:QButtonGroup_buttonClicked2Event);
 pragma Import(C,QButtonGroup_signal_slot_buttonClicked2, "QButtonGroup_signal_slot_buttonClicked2");
 
 procedure QButtonGroup_signal_slot_buttonPressed(handle: not null QButtonGroupH; hook:QButtonGroup_buttonPressedEvent);
 pragma Import(C,QButtonGroup_signal_slot_buttonPressed, "QButtonGroup_signal_slot_buttonPressed");
 
 procedure QButtonGroup_signal_slot_buttonPressed2(handle: not null QButtonGroupH; hook:QButtonGroup_buttonPressed2Event);
 pragma Import(C,QButtonGroup_signal_slot_buttonPressed2, "QButtonGroup_signal_slot_buttonPressed2");
 
 procedure QButtonGroup_signal_slot_buttonReleased(handle: not null QButtonGroupH; hook:QButtonGroup_buttonReleasedEvent);
 pragma Import(C,QButtonGroup_signal_slot_buttonReleased, "QButtonGroup_signal_slot_buttonReleased");
 
 procedure QButtonGroup_signal_slot_buttonReleased2(handle: not null QButtonGroupH; hook:QButtonGroup_buttonReleased2Event);
 pragma Import(C,QButtonGroup_signal_slot_buttonReleased2, "QButtonGroup_signal_slot_buttonReleased2");
 
 type VoidBoolEvent is access procedure(button:QAbstractButtonH;on:boolean);
 pragma Convention(C,VoidBoolEvent );

 type IntBoolEvent is access procedure(button:integer;on:boolean);
 pragma Convention(C,IntBoolEvent );

 procedure QButtonGroup_signal_slot_buttonToggled(handle:not null QButtonGroupH;hook:VoidBoolEvent);
 pragma Import(C,QButtonGroup_signal_slot_buttonToggled, "QButtonGroup_signal_slot_buttonToggled");
 
 procedure QButtonGroup_signal_slot_buttonToggled2(handle:not null QButtonGroupH;hook:IntBoolEvent);
 pragma Import(C,QButtonGroup_signal_slot_buttonToggled2, "QButtonGroup_signal_slot_buttonToggled2");
 
----------------------------------------------------------------------------------------------------------------------
procedure QButtonGroup_addButton(handle: not null  QButtonGroupH; p1: QAbstractButtonH; id: Integer);
procedure QButtonGroup_signal_slot_buttonClicked(handle: not null QButtonGroupH; hook:QButtonGroup_buttonClicked2Event);
procedure QButtonGroup_signal_slot_buttonPressed(handle: not null QButtonGroupH; hook:QButtonGroup_buttonPressed2Event);
procedure QButtonGroup_signal_slot_buttonReleased(handle: not null QButtonGroupH; hook:QButtonGroup_buttonReleased2Event);
procedure QButtonGroup_signal_slot_buttonToggled(handle:not null QButtonGroupH;hook:IntBoolEvent);

end Qt.QButtonGroup;
