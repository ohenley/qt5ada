--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2016                 บ
-- บ Copyright (C) 2012,2014,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt         ; use Qt;
with Qt.QString ; use Qt.QString;
with Qt.QWidget;  use Qt.QWidget;

package Qt.Common  is

 rect      : QRectH;
 emptyString : QStringH := s2qs("");

 procedure initializeApplication;
 procedure initializeApplication(width, height : integer; title : QStringH);
 procedure initializeApplication(painter:Qt.QWidget.customPaintH;width, height : integer; title : QStringH);
 function  initializeDialog(width, height : integer; title : QStringH) return QDialogH;
 procedure initializeMWApplication(width, height : integer; title : QStringH);
 procedure initializeVideoApplication(width, height : integer; title : QStringH);
 function  mainFrame_create(width: integer; height : integer; top : integer := 0; left : integer := 0) return QFrameH;

end Qt.Common;
