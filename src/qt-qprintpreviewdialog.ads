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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QPrintPreviewDialog is

 function  QPrintPreviewDialog_create(parent:QWidgetH; flags: quint) return  QPrintPreviewDialogH;
 pragma Import(C,QPrintPreviewDialog_create, "QPrintPreviewDialog_create");

 procedure QPrintPreviewDialog_destroy(handle: not null QPrintPreviewDialogH);
 pragma Import(C,QPrintPreviewDialog_destroy, "QPrintPreviewDialog_destroy");

 function  QPrintPreviewDialog_create2(printer:QPrinterH; parent:QWidgetH;flags: quint) return QPrintPreviewDialogH;
 pragma Import(C,QPrintPreviewDialog_create2, "QPrintPreviewDialog_create2");

 procedure QPrintPreviewDialog_setVisible(handle: not null  QPrintPreviewDialogH; visible:boolean);
 pragma Import(C,QPrintPreviewDialog_setVisible, "QPrintPreviewDialog_setVisible");

 function  QPrintPreviewDialog_exec(handle: not null  QPrintPreviewDialogH) return integer;
 pragma Import(C,QPrintPreviewDialog_exec, "QPrintPreviewDialog_exec");

 type QPrintPreviewDialog_paintRequestedEvent is access procedure(printer:QPrinterH);
 pragma Convention(C,QPrintPreviewDialog_paintRequestedEvent);
 
 procedure QPrintPreviewDialog_signal_slot_paintRequested(handle: not null QPrintPreviewDialogH; hook:QPrintPreviewDialog_paintRequestedEvent);
 pragma Import(C,QPrintPreviewDialog_signal_slot_paintRequested, "QPrintPreviewDialog_signal_slot_paintRequested");
 
 ---------------------------------------------------------------------------------------------------------------------
 function  QPrintPreviewDialog_create(printer:QPrinterH; parent:QWidgetH;flags: quint) return QPrintPreviewDialogH;
end Qt.QPrintPreviewDialog;
