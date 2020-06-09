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

package Qt.QGroupBox            is

function QGroupBox_create(parent: QWidgetH := null) return QGroupBoxH;    
pragma Import(C,QGroupBox_create,"QGroupBox_create");

procedure QGroupBox_destroy(handle: not null  QGroupBoxH);   
pragma Import(C,QGroupBox_destroy,"QGroupBox_destroy");

function QGroupBox_create2(title: QStringH; parent: QWidgetH := null) return QGroupBoxH;
pragma Import(C,QGroupBox_create2,"QGroupBox_create2");

function  QGroupBox_title(handle: not null  QGroupBoxH) return QStringH;
pragma Import(C,QGroupBox_title,"QGroupBox_title");

procedure QGroupBox_setTitle(handle: not null  QGroupBoxH; title: QStringH);   
pragma Import(C,QGroupBox_setTitle,"QGroupBox_setTitle");

function QGroupBox_alignment(handle: not null  QGroupBoxH) return  QtAlignment;   
pragma Import(C,QGroupBox_alignment,"QGroupBox_alignment");

procedure QGroupBox_setAlignment(handle: not null  QGroupBoxH; alignment: Integer);   
pragma Import(C,QGroupBox_setAlignment,"QGroupBox_setAlignment");

function  QGroupBox_minimumSizeHint(handle: not null  QGroupBoxH) return QSizeH;
pragma Import(C,QGroupBox_minimumSizeHint,"QGroupBox_minimumSizeHint");

function QGroupBox_isFlat(handle: not null  QGroupBoxH) return  Boolean;   
pragma Import(C,QGroupBox_isFlat,"QGroupBox_isFlat");

procedure QGroupBox_setFlat(handle: not null  QGroupBoxH; flat: Boolean);   
pragma Import(C,QGroupBox_setFlat,"QGroupBox_setFlat");

function QGroupBox_isCheckable(handle: not null  QGroupBoxH) return  Boolean;   
pragma Import(C,QGroupBox_isCheckable,"QGroupBox_isCheckable");

procedure QGroupBox_setCheckable(handle: not null  QGroupBoxH; checkable: Boolean);   
pragma Import(C,QGroupBox_setCheckable,"QGroupBox_setCheckable");

function QGroupBox_isChecked(handle: not null  QGroupBoxH) return  Boolean;   
pragma Import(C,QGroupBox_isChecked,"QGroupBox_isChecked");

procedure QGroupBox_setChecked(handle: not null  QGroupBoxH; checked: Boolean);   
pragma Import(C,QGroupBox_setChecked,"QGroupBox_setChecked");

type QGroupBox_clickedEvent is access procedure (fl: Boolean := False);
pragma Convention(C,QGroupBox_clickedEvent);

type QGroupBox_clicked2Event is access procedure ;
pragma Convention(C,QGroupBox_clicked2Event);

type QGroupBox_toggledEvent is access procedure (fl: Boolean);
pragma Convention(C,QGroupBox_toggledEvent);
 
 procedure QGroupBox_signal_slot_clicked(handle: not null QGroupBoxH; hook:QGroupBox_clickedEvent);
 pragma Import(C,QGroupBox_signal_slot_clicked, "QGroupBox_signal_slot_clicked");
 
 procedure QGroupBox_signal_slot_clicked2(handle: not null QGroupBoxH; hook:QGroupBox_clicked2Event);
 pragma Import(C,QGroupBox_signal_slot_clicked2, "QGroupBox_signal_slot_clicked2");
 
 procedure QGroupBox_signal_slot_toggled(handle: not null QGroupBoxH; hook:QGroupBox_toggledEvent);
 pragma Import(C,QGroupBox_signal_slot_toggled, "QGroupBox_signal_slot_toggled");
 
--------------------------------------------------------------------------------------------------
function QGroupBox_create(title: QStringH; parent: QWidgetH := null) return QGroupBoxH;

end Qt.QGroupBox;
