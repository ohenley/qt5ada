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

package Qt.QFontDialog          is

function  QFontDialog_getFont(ok: PBoolean; def: QFontH; parent: QWidgetH; caption: QStringH) return  QFontH;
pragma Import(C,QFontDialog_getFont,"QFontDialog_getFont");

function  QFontDialog_getFont2(ok: PBoolean; def: QFontH; parent: QWidgetH := null) return QFontH;
pragma Import(C,QFontDialog_getFont2,"QFontDialog_getFont2");

function  QFontDialog_getFont3(ok: PBoolean; parent: QWidgetH := null) return QFontH;
pragma Import(C,QFontDialog_getFont3,"QFontDialog_getFont3");

-------------------------------------------------------------------
function  QFontDialog_getFont(ok: PBoolean; def: QFontH; parent: QWidgetH := null) return QFontH;
function  QFontDialog_getFont(ok: PBoolean; parent: QWidgetH := null) return QFontH;

end Qt.QFontDialog;
