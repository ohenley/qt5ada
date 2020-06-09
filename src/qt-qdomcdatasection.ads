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

package Qt.QDomCDATASection is

function  QDomCDATASection_create return QDomCDATASectionH;
pragma Import(C,QDomCDATASection_create, "QDomCDATASection_create");

function  QDomCDATASection_create1(section:QDomCDATASectionH) return QDomCDATASectionH;
pragma Import(C,QDomCDATASection_create1, "QDomCDATASection_create1");

procedure del_QDomCDATASection(p:QDomCDATASectionH);
pragma Import(C,del_QDomCDATASection, "del_QDomCDATASection");

function  QDomCDATASection_nodeType(section:QDomCDATASectionH) return integer;
pragma Import(C,QDomCDATASection_nodeType, "QDomCDATASection_nodeType");

function  QDomCDATASection_isCDATASection(section:QDomCDATASectionH) return integer;
pragma Import(C,QDomCDATASection_isCDATASection, "QDomCDATASection_isCDATASection");

function  QDomCDATASection_create(section:QDomCDATASectionH) return QDomCDATASectionH;

end Qt.QDomCDATASection;
