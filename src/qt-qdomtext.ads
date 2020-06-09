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

package Qt.QDomText is

function  QDomText_create return QDomTextH;
pragma Import(C,QDomText_create, "QDomText_create");

function  QDomText_create1(text:QDomTextH) return QDomTextH;
pragma Import(C,QDomText_create1, "QDomText_create1");

procedure del_QDomText(p:QDomTextH);
pragma Import(C,del_QDomText, "del_QDomText");

function  QDomText_splitText(text:QDomTextH;offset:integer) return QDomTextH;
pragma Import(C,QDomText_splitText, "QDomText_splitText");

function  QDomText_nodeType(text:QDomTextH) return integer;
pragma Import(C,QDomText_nodeType, "QDomText_nodeType");

function  QDomText_isText(text:QDomTextH) return integer;
pragma Import(C,QDomText_isText, "QDomText_isText");

function  QDomText_create(text:QDomTextH) return QDomTextH;

end Qt.QDomText;
