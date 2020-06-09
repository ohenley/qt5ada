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

package Qt.QWhatsThis is

 procedure QWhatsThis_enterWhatsThisMode;
 pragma Import(C,QWhatsThis_enterWhatsThisMode, "QWhatsThis_enterWhatsThisMode");
 
 function  QWhatsThis_inWhatsThisMode return boolean;
 pragma Import(C,QWhatsThis_inWhatsThisMode, "QWhatsThis_inWhatsThisMode");
 
 procedure QWhatsThis_leaveWhatsThisMode;
 pragma Import(C,QWhatsThis_leaveWhatsThisMode, "QWhatsThis_leaveWhatsThisMode");
 
 procedure QWhatsThis_showText(pos: QPointH;text: QStringH;widget: QWidgetH);
 pragma Import(C,QWhatsThis_showText, "QWhatsThis_showText");
 
 procedure QWhatsThis_hideText;
 pragma Import(C,QWhatsThis_hideText, "QWhatsThis_hideText");
 
 function  QWhatsThis_createAction(parent:QObjectH) return QActionH;
 pragma Import(C,QWhatsThis_createAction, "QWhatsThis_createAction");
 
end Qt.QWhatsThis;
