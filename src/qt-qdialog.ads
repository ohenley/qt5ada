--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QDialog              is

type QDialogDialogCode is (QDialogRejected, QDialogAccepted );
pragma Convention(C,QDialogDialogCode);

function QDialog_create(parent: QWidgetH := null; f: QtWindowFlags := 0) return QDialogH;   
pragma Import(C,QDialog_create,"QDialog_create");

procedure QDialog_destroy(handle: not null  QDialogH);   
pragma Import(C,QDialog_destroy,"QDialog_destroy");

function QDialog_result(handle: not null  QDialogH) return  Integer;   
pragma Import(C,QDialog_result,"QDialog_result");

procedure QDialog_setVisible(handle: not null  QDialogH; visible: Boolean);   
pragma Import(C,QDialog_setVisible,"QDialog_setVisible");

procedure QDialog_setOrientation(handle: not null  QDialogH; orientation: QtOrientation);   
pragma Import(C,QDialog_setOrientation,"QDialog_setOrientation");

function QDialog_orientation(handle: not null  QDialogH) return  QtOrientation;   
pragma Import(C,QDialog_orientation,"QDialog_orientation");

procedure QDialog_setExtension(handle: not null  QDialogH; extension: QWidgetH);   
pragma Import(C,QDialog_setExtension,"QDialog_setExtension");

function QDialog_extension(handle: not null  QDialogH) return  QWidgetH;   
pragma Import(C,QDialog_extension,"QDialog_extension");

function  QDialog_sizeHint(handle: not null  QDialogH) return  QSizeH;
pragma Import(C,QDialog_sizeHint,"QDialog_sizeHint");

function  QDialog_minimumSizeHint(handle: not null  QDialogH) return QSizeH;
pragma Import(C,QDialog_minimumSizeHint,"QDialog_minimumSizeHint");

procedure QDialog_setSizeGripEnabled(handle: not null  QDialogH; p1: Boolean);   
pragma Import(C,QDialog_setSizeGripEnabled,"QDialog_setSizeGripEnabled");

function QDialog_isSizeGripEnabled(handle: not null  QDialogH) return  Boolean;   
pragma Import(C,QDialog_isSizeGripEnabled,"QDialog_isSizeGripEnabled");

procedure QDialog_setModal(handle: not null  QDialogH; modal: Boolean);   
pragma Import(C,QDialog_setModal,"QDialog_setModal");

procedure QDialog_setResult(handle: not null  QDialogH; r: Integer);   
pragma Import(C,QDialog_setResult,"QDialog_setResult");

function QDialog_exec(handle: not null  QDialogH) return  QDialogDialogCode;   
pragma Import(C,QDialog_exec,"QDialog_exec");

procedure QDialog_done(handle: not null  QDialogH; p1: Integer);   
pragma Import(C,QDialog_done,"QDialog_done");

procedure QDialog_accept(handle: not null  QDialogH);   
pragma Import(C,QDialog_accept,"QDialog_accept");

procedure QDialog_reject(handle: not null  QDialogH);   
pragma Import(C,QDialog_reject,"QDialog_reject");

procedure QDialog_close(handle: not null  QDialogH);   
pragma Import(C,QDialog_close,"QDialog_close");

procedure QDialog_showExtension(handle: not null  QDialogH; p1: Boolean);   
pragma Import(C,QDialog_showExtension,"QDialog_showExtension");

type  QDialog_finishedEvent is access procedure (result: Integer);
pragma Convention(C,QDialog_finishedEvent);

type  QDialog_acceptedEvent is access procedure ;
pragma Convention(C,QDialog_acceptedEvent);

type  QDialog_rejectedEvent is access procedure ;
pragma Convention(C,QDialog_rejectedEvent);
 
 procedure QDialog_signal_slot_finished(handle: not null QDialogH; hook:QDialog_finishedEvent);
 pragma Import(C,QDialog_signal_slot_finished, "QDialog_signal_slot_finished");
 
 procedure QDialog_signal_slot_accepted(handle: not null QDialogH; hook:QDialog_acceptedEvent);
 pragma Import(C,QDialog_signal_slot_accepted, "QDialog_signal_slot_accepted");
 
 procedure QDialog_signal_slot_rejected(handle: not null QDialogH; hook:QDialog_rejectedEvent);
 pragma Import(C,QDialog_signal_slot_rejected, "QDialog_signal_slot_rejected");
 
end Qt.QDialog;
