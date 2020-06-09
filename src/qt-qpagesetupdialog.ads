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

package Qt.QPageSetupDialog is

 type PageSetupDialogOption is ( None, DontUseSheet, OwnsPrinter);
 for  PageSetupDialogOption use (
        None                  => 16#00000000#, -- internal
        DontUseSheet          => 16#00000001#,
        OwnsPrinter           => 16#80000000#  -- internal
    );

 function  QPageSetupDialog_create(printer: QPrinterH; parent:QWidgetH) return QPageSetupDialogH;
 pragma Import(c,QPageSetupDialog_create, "QPageSetupDialog_create");

 procedure QPageSetupDialog_destroy(handle: not null  QPageSetupDialogH);
 pragma Import(c,QPageSetupDialog_destroy, "QPageSetupDialog_destroy");

 --procedure QPageSetupDialog_addEnabledOption(handle: not null  QPageSetupDialogH; option: PageSetupDialogOption);
 --pragma Import(c,QPageSetupDialog_addEnabledOption, "QPageSetupDialog_addEnabledOption");
 --procedure QPageSetupDialog_setEnabledOptions(handle: not null  QPageSetupDialogH; options: quint);
 --pragma Import(c,QPageSetupDialog_setEnabledOptions, "QPageSetupDialog_setEnabledOptions");
 --function  QPageSetupDialog_enabledOptions(handle: not null  QPageSetupDialogH) return quint;
 --pragma Import(c,QPageSetupDialog_enabledOptions, "QPageSetupDialog_enabledOptions");
 --function  QPageSetupDialog_isOptionEnabled(handle: not null  QPageSetupDialogH; option: PageSetupDialogOption) return boolean;
 --pragma Import(c,QPageSetupDialog_isOptionEnabled, "QPageSetupDialog_isOptionEnabled");

 function  QPageSetupDialog_exec(handle: not null  QPageSetupDialogH) return integer;
 pragma Import(c,QPageSetupDialog_exec, "QPageSetupDialog_exec");

end  Qt.QPageSetupDialog;
