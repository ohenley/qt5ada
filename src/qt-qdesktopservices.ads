--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QDesktopServices is

 function  QDesktopServices_openUrl(url:QUrlH) return boolean;
 pragma Import(C,QDesktopServices_openUrl, "QDesktopServices_openUrl");
 
 procedure QDesktopServices_setUrlHandler(scheme:QStringH;receiver: QObjectH;method:zstring);
 pragma Import(C,QDesktopServices_setUrlHandler, "QDesktopServices_setUrlHandler");
 
 procedure QDesktopServices_unsetUrlHandler(scheme:QStringH);
 pragma Import(C,QDesktopServices_unsetUrlHandler, "QDesktopServices_unsetUrlHandler");
 
end;
