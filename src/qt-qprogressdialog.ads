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

package Qt.QProgressDialog      is

function QProgressDialog_create(parent: QWidgetH := null; f: QtWindowFlags := 0) return QProgressDialogH;    
pragma Import(C,QProgressDialog_create,"QProgressDialog_create");

procedure QProgressDialog_destroy(handle: not null  QProgressDialogH);   
pragma Import(C,QProgressDialog_destroy,"QProgressDialog_destroy");

function QProgressDialog_create2(labelText: QStringH; cancelButtonText: QStringH; minimum: Integer; maximum: Integer; parent: QWidgetH := null; f: QtWindowFlags := 0) return QProgressDialogH;
pragma Import(C,QProgressDialog_create2,"QProgressDialog_create2");

procedure QProgressDialog_setLabel(handle: not null  QProgressDialogH; label: QLabelH);   
pragma Import(C,QProgressDialog_setLabel,"QProgressDialog_setLabel");

procedure QProgressDialog_setCancelButton(handle: not null  QProgressDialogH; button: QPushButtonH);   
pragma Import(C,QProgressDialog_setCancelButton,"QProgressDialog_setCancelButton");

procedure QProgressDialog_setBar(handle: not null  QProgressDialogH; bar: QProgressBarH);   
pragma Import(C,QProgressDialog_setBar,"QProgressDialog_setBar");

function QProgressDialog_wasCanceled(handle: not null  QProgressDialogH) return  Boolean;   
pragma Import(C,QProgressDialog_wasCanceled,"QProgressDialog_wasCanceled");

function QProgressDialog_minimum(handle: not null  QProgressDialogH) return  Integer;   
pragma Import(C,QProgressDialog_minimum,"QProgressDialog_minimum");

function QProgressDialog_maximum(handle: not null  QProgressDialogH) return  Integer;   
pragma Import(C,QProgressDialog_maximum,"QProgressDialog_maximum");

function QProgressDialog_value(handle: not null  QProgressDialogH) return  Integer;   
pragma Import(C,QProgressDialog_value,"QProgressDialog_value");

function  QProgressDialog_sizeHint(handle: not null  QProgressDialogH) return QSizeH;
pragma Import(C,QProgressDialog_sizeHint,"QProgressDialog_sizeHint");

function  QProgressDialog_labelText(handle: not null  QProgressDialogH) return QStringH;
pragma Import(C,QProgressDialog_labelText,"QProgressDialog_labelText");

function QProgressDialog_minimumDuration(handle: not null  QProgressDialogH) return  Integer;   
pragma Import(C,QProgressDialog_minimumDuration,"QProgressDialog_minimumDuration");

procedure QProgressDialog_setAutoReset(handle: not null  QProgressDialogH; b: Boolean);   
pragma Import(C,QProgressDialog_setAutoReset,"QProgressDialog_setAutoReset");

function QProgressDialog_autoReset(handle: not null  QProgressDialogH) return  Boolean;   
pragma Import(C,QProgressDialog_autoReset,"QProgressDialog_autoReset");

procedure QProgressDialog_setAutoClose(handle: not null  QProgressDialogH; b: Boolean);   
pragma Import(C,QProgressDialog_setAutoClose,"QProgressDialog_setAutoClose");

function QProgressDialog_autoClose(handle: not null  QProgressDialogH) return  Boolean;   
pragma Import(C,QProgressDialog_autoClose,"QProgressDialog_autoClose");

procedure QProgressDialog_cancel(handle: not null  QProgressDialogH);   
pragma Import(C,QProgressDialog_cancel,"QProgressDialog_cancel");

procedure QProgressDialog_reset(handle: not null  QProgressDialogH);   
pragma Import(C,QProgressDialog_reset,"QProgressDialog_reset");

procedure QProgressDialog_setMaximum(handle: not null  QProgressDialogH; maximum: Integer);   
pragma Import(C,QProgressDialog_setMaximum,"QProgressDialog_setMaximum");

procedure QProgressDialog_setMinimum(handle: not null  QProgressDialogH; minimum: Integer);   
pragma Import(C,QProgressDialog_setMinimum,"QProgressDialog_setMinimum");

procedure QProgressDialog_setRange(handle: not null  QProgressDialogH; minimum: Integer; maximum: Integer);   
pragma Import(C,QProgressDialog_setRange,"QProgressDialog_setRange");

procedure QProgressDialog_setValue(handle: not null  QProgressDialogH; progress: Integer);   
pragma Import(C,QProgressDialog_setValue,"QProgressDialog_setValue");

procedure QProgressDialog_setLabelText(handle: not null  QProgressDialogH; p1: QStringH);   
pragma Import(C,QProgressDialog_setLabelText,"QProgressDialog_setLabelText");

procedure QProgressDialog_setCancelButtonText(handle: not null  QProgressDialogH; p1: QStringH);   
pragma Import(C,QProgressDialog_setCancelButtonText,"QProgressDialog_setCancelButtonText");

procedure QProgressDialog_setMinimumDuration(handle: not null  QProgressDialogH; ms: Integer);   
pragma Import(C,QProgressDialog_setMinimumDuration,"QProgressDialog_setMinimumDuration");

 type   QProgressDialog_canceledEvent is access procedure ;
 pragma Convention(C,QProgressDialog_canceledEvent);
 
 procedure QProgressDialog_signal_slot_canceled(handle: not null QProgressDialogH; hook:QProgressDialog_canceledEvent);
 pragma Import(C,QProgressDialog_signal_slot_canceled, "QProgressDialog_signal_slot_canceled");
 
-------------------------------------------------------------------------------------------------------------------
function QProgressDialog_create(labelText: QStringH; cancelButtonText: QStringH; minimum: Integer; maximum: Integer; parent: QWidgetH := null; f: QtWindowFlags := 0) return QProgressDialogH;

end Qt.QProgressDialog;
