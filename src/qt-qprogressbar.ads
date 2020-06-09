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

package Qt.QProgressBar         is

type QProgressBarDirection is (QProgressBarTopToBottom, QProgressBarBottomToTop );
pragma Convention(C,QProgressBarDirection);

function QProgressBar_create(parent: QWidgetH := null) return QProgressBarH;   
pragma Import(C,QProgressBar_create,"QProgressBar_create");

procedure QProgressBar_destroy(handle: not null  QProgressBarH);   
pragma Import(C,QProgressBar_destroy,"QProgressBar_destroy");

function QProgressBar_minimum(handle: not null  QProgressBarH) return  Integer;   
pragma Import(C,QProgressBar_minimum,"QProgressBar_minimum");

function QProgressBar_maximum(handle: not null  QProgressBarH) return  Integer;   
pragma Import(C,QProgressBar_maximum,"QProgressBar_maximum");

function QProgressBar_value(handle: not null  QProgressBarH) return  Integer;   
pragma Import(C,QProgressBar_value,"QProgressBar_value");

function  QProgressBar_text(handle: not null  QProgressBarH) return QStringH;
pragma Import(C,QProgressBar_text,"QProgressBar_text");

procedure QProgressBar_setTextVisible(handle: not null  QProgressBarH; visible: Boolean);   
pragma Import(C,QProgressBar_setTextVisible,"QProgressBar_setTextVisible");

function QProgressBar_isTextVisible(handle: not null  QProgressBarH) return  Boolean;   
pragma Import(C,QProgressBar_isTextVisible,"QProgressBar_isTextVisible");

function QProgressBar_alignment(handle: not null  QProgressBarH) return  QtAlignment;   
pragma Import(C,QProgressBar_alignment,"QProgressBar_alignment");

procedure QProgressBar_setAlignment(handle: not null  QProgressBarH; alignment: QtAlignment);   
pragma Import(C,QProgressBar_setAlignment,"QProgressBar_setAlignment");

function  QProgressBar_sizeHint(handle: not null  QProgressBarH) return QSizeH;
pragma Import(C,QProgressBar_sizeHint,"QProgressBar_sizeHint");

function  QProgressBar_minimumSizeHint(handle: not null  QProgressBarH) return QSizeH;
pragma Import(C,QProgressBar_minimumSizeHint,"QProgressBar_minimumSizeHint");

function QProgressBar_orientation(handle: not null  QProgressBarH) return  QtOrientation;   
pragma Import(C,QProgressBar_orientation,"QProgressBar_orientation");

procedure QProgressBar_setInvertedAppearance(handle: not null  QProgressBarH; invert: Boolean);   
pragma Import(C,QProgressBar_setInvertedAppearance,"QProgressBar_setInvertedAppearance");

function QProgressBar_invertedAppearance(handle: not null  QProgressBarH) return  Boolean;   
pragma Import(C,QProgressBar_invertedAppearance,"QProgressBar_invertedAppearance");

procedure QProgressBar_setTextDirection(handle: not null  QProgressBarH; textDirection: QProgressBarDirection);   
pragma Import(C,QProgressBar_setTextDirection,"QProgressBar_setTextDirection");

function QProgressBar_textDirection(handle: not null  QProgressBarH) return  QProgressBarDirection;   
pragma Import(C,QProgressBar_textDirection,"QProgressBar_textDirection");

procedure QProgressBar_setFormat(handle: not null  QProgressBarH; format: QStringH);   
pragma Import(C,QProgressBar_setFormat,"QProgressBar_setFormat");

function  QProgressBar_format(handle: not null  QProgressBarH) return QStringH;
pragma Import(C,QProgressBar_format,"QProgressBar_format");

procedure QProgressBar_reset(handle: not null  QProgressBarH);   
pragma Import(C,QProgressBar_reset,"QProgressBar_reset");

procedure QProgressBar_setRange(handle: not null  QProgressBarH; minimum: Integer; maximum: Integer);   
pragma Import(C,QProgressBar_setRange,"QProgressBar_setRange");

procedure QProgressBar_setMinimum(handle: not null  QProgressBarH; minimum: Integer);   
pragma Import(C,QProgressBar_setMinimum,"QProgressBar_setMinimum");

procedure QProgressBar_setMaximum(handle: not null  QProgressBarH; maximum: Integer);   
pragma Import(C,QProgressBar_setMaximum,"QProgressBar_setMaximum");

procedure QProgressBar_setValue(handle: not null  QProgressBarH; value: Integer);   
pragma Import(C,QProgressBar_setValue,"QProgressBar_setValue");

procedure QProgressBar_setOrientation(handle: not null  QProgressBarH; p1: QtOrientation);   
pragma Import(C,QProgressBar_setOrientation,"QProgressBar_setOrientation");

 type  QProgressBar_valueChangedEvent is access procedure (value: Integer);
 pragma Convention(C,QProgressBar_valueChangedEvent);
 
 procedure QProgressBar_signal_slot_valueChanged(handle: not null QProgressBarH; hook:QProgressBar_valueChangedEvent);
 pragma Import(C,QProgressBar_signal_slot_valueChanged, "QProgressBar_signal_slot_valueChanged");
 

end Qt.QProgressBar;
