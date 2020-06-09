--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QCheckBox            is

function QCheckBox_create(parent: QWidgetH := null) return QCheckBoxH;    
pragma Import(C,QCheckBox_create,"QCheckBox_create");

procedure QCheckBox_destroy(handle: not null  QCheckBoxH);   
pragma Import(C,QCheckBox_destroy,"QCheckBox_destroy");

function QCheckBox_create2(text: QStringH; parent: QWidgetH := null) return QCheckBoxH;
pragma Import(C,QCheckBox_create2,"QCheckBox_create2");

function  QCheckBox_sizeHint(handle: not null  QCheckBoxH) return QSizeH;
pragma Import(C,QCheckBox_sizeHint,"QCheckBox_sizeHint");

procedure QCheckBox_setTristate(handle: not null  QCheckBoxH; y: Boolean := True);   
pragma Import(C,QCheckBox_setTristate,"QCheckBox_setTristate");

function QCheckBox_isTristate(handle: not null  QCheckBoxH) return  Boolean;   
pragma Import(C,QCheckBox_isTristate,"QCheckBox_isTristate");

function QCheckBox_checkState(handle: not null  QCheckBoxH) return  QtCheckState;   
pragma Import(C,QCheckBox_checkState,"QCheckBox_checkState");

procedure QCheckBox_setCheckState(handle: not null  QCheckBoxH; state: QtCheckState);   
pragma Import(C,QCheckBox_setCheckState,"QCheckBox_setCheckState");

type  QCheckBox_stateChangedEvent is access procedure (p1: Integer);
pragma Convention(C,QCheckBox_stateChangedEvent);
 
 procedure QCheckBox_signal_slot_stateChanged(handle: not null QCheckBoxH; hook:QCheckBox_stateChangedEvent);
 pragma Import(C,QCheckBox_signal_slot_stateChanged, "QCheckBox_signal_slot_stateChanged");
 
-------------------------------------------------------------------------------------
function QCheckBox_create(text: QStringH; parent: QWidgetH := null) return QCheckBoxH;

end Qt.QCheckBox;
