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

package Qt.QAbstractPrintDialog is

type  QAbstractPrintDialogPrintRange is (QAbstractPrintDialogAllPages, QAbstractPrintDialogSelection, QAbstractPrintDialogPageRange );

subtype  QAbstractPrintDialogPrintDialogOption is cardinal; 
subtype  QAbstractPrintDialogPrintDialogOptions is QAbstractPrintDialogPrintDialogOption; 

QAbstractPrintDialogNone               : constant QAbstractPrintDialogPrintDialogOption := 16#0000#;
QAbstractPrintDialogPrintToFile        : constant QAbstractPrintDialogPrintDialogOption := 16#0001#;
QAbstractPrintDialogPrintSelection     : constant QAbstractPrintDialogPrintDialogOption := 16#0002#;
QAbstractPrintDialogPrintPageRange     : constant QAbstractPrintDialogPrintDialogOption := 16#0004#;
QAbstractPrintDialogPrintCollateCopies : constant QAbstractPrintDialogPrintDialogOption := 16#0010#;

function QAbstractPrintDialog_exec(handle: not null  QAbstractPrintDialogH) return   Integer;  
pragma Import(C,QAbstractPrintDialog_exec,"QAbstractPrintDialog_exec");

procedure QAbstractPrintDialog_addEnabledOption(handle: not null  QAbstractPrintDialogH; option: QAbstractPrintDialogPrintDialogOption);  
pragma Import(C,QAbstractPrintDialog_addEnabledOption,"QAbstractPrintDialog_addEnabledOption");

procedure QAbstractPrintDialog_setEnabledOptions(handle: not null  QAbstractPrintDialogH; options: QAbstractPrintDialogPrintDialogOptions);  
pragma Import(C,QAbstractPrintDialog_setEnabledOptions,"QAbstractPrintDialog_setEnabledOptions");

function QAbstractPrintDialog_enabledOptions(handle: not null  QAbstractPrintDialogH) return   QAbstractPrintDialogPrintDialogOptions;  
pragma Import(C,QAbstractPrintDialog_enabledOptions,"QAbstractPrintDialog_enabledOptions");

function QAbstractPrintDialog_isOptionEnabled(handle: not null  QAbstractPrintDialogH; option: QAbstractPrintDialogPrintDialogOption) return   Boolean;  
pragma Import(C,QAbstractPrintDialog_isOptionEnabled,"QAbstractPrintDialog_isOptionEnabled");

procedure QAbstractPrintDialog_setPrintRange(handle: not null  QAbstractPrintDialogH; prange: QAbstractPrintDialogPrintRange);
pragma Import(C,QAbstractPrintDialog_setPrintRange,"QAbstractPrintDialog_setPrintRange");

function QAbstractPrintDialog_printRange(handle: not null  QAbstractPrintDialogH) return   QAbstractPrintDialogPrintRange;  
pragma Import(C,QAbstractPrintDialog_printRange,"QAbstractPrintDialog_printRange");

procedure QAbstractPrintDialog_setMinMax(handle: not null  QAbstractPrintDialogH; min: Integer; max: Integer);  
pragma Import(C,QAbstractPrintDialog_setMinMax,"QAbstractPrintDialog_setMinMax");

function QAbstractPrintDialog_minPage(handle: not null  QAbstractPrintDialogH) return   Integer;  
pragma Import(C,QAbstractPrintDialog_minPage,"QAbstractPrintDialog_minPage");

function QAbstractPrintDialog_maxPage(handle: not null  QAbstractPrintDialogH) return   Integer;  
pragma Import(C,QAbstractPrintDialog_maxPage,"QAbstractPrintDialog_maxPage");

procedure QAbstractPrintDialog_setFromTo(handle: not null  QAbstractPrintDialogH; fromPage: Integer; toPage: Integer);  
pragma Import(C,QAbstractPrintDialog_setFromTo,"QAbstractPrintDialog_setFromTo");

function QAbstractPrintDialog_fromPage(handle: not null  QAbstractPrintDialogH) return   Integer;  
pragma Import(C,QAbstractPrintDialog_fromPage,"QAbstractPrintDialog_fromPage");

function QAbstractPrintDialog_toPage(handle: not null  QAbstractPrintDialogH) return   Integer;  
pragma Import(C,QAbstractPrintDialog_toPage,"QAbstractPrintDialog_toPage");

function QAbstractPrintDialog_printer(handle: not null  QAbstractPrintDialogH) return   QPrinterH;  
pragma Import(C,QAbstractPrintDialog_printer,"QAbstractPrintDialog_printer");

end Qt.QAbstractPrintDialog;
