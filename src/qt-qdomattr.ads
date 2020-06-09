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

package Qt.QDomAttr is

function  QDomAttr_create return QDomAttrH;
pragma Import(C,QDomAttr_create, "QDomAttr_create");

function  QDomAttr_create1(attr:QDomAttrH) return QDomAttrH;
pragma Import(C,QDomAttr_create1, "QDomAttr_create1");

procedure del_QDomAttr(p:QDomAttrH);
pragma Import(C,del_QDomAttr, "del_QDomAttr");

function  QDomAttr_name(attr:QDomAttrH) return QStringH;
pragma Import(C,QDomAttr_name, "QDomAttr_name");

function  QDomAttr_specified(attr:QDomAttrH) return integer;
pragma Import(C,QDomAttr_specified, "QDomAttr_specified");

function  QDomAttr_ownerElement(attr:QDomAttrH) return QDomElementH;
pragma Import(C,QDomAttr_ownerElement, "QDomAttr_ownerElement");

function  QDomAttr_value(attr:QDomAttrH) return QStringH;
pragma Import(C,QDomAttr_value, "QDomAttr_value");

procedure QDomAttr_setValue(attr:QDomAttrH;value:QStringH);
pragma Import(C,QDomAttr_setValue, "QDomAttr_setValue");

function  QDomAttr_nodeType(attr:QDomAttrH) return integer;
pragma Import(C,QDomAttr_nodeType, "QDomAttr_nodeType");

function  QDomAttr_isAttr(attr:QDomAttrH) return integer;
pragma Import(C,QDomAttr_isAttr, "QDomAttr_isAttr");

function  QDomAttr_create(attr:QDomAttrH) return QDomAttrH;

end Qt.QDomAttr;
