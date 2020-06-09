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

package Qt.QDomNamedNodeMap is

function  QDomNamedNodeMap_create return QDomNamedNodeMapH;
pragma Import(C,QDomNamedNodeMap_create, "QDomNamedNodeMap_create");

function  QDomNamedNodeMap_create1(map:QDomNamedNodeMapH) return QDomNamedNodeMapH;
pragma Import(C,QDomNamedNodeMap_create1, "QDomNamedNodeMap_create1");

procedure del_QDomNamedNodeMap(p:QDomNamedNodeMapH);
pragma Import(C,del_QDomNamedNodeMap, "del_QDomNamedNodeMap");

function  QDomNamedNodeMap_namedItem(map:QDomNamedNodeMapH;name:QStringH) return QDomNodeH;
pragma Import(C,QDomNamedNodeMap_namedItem, "QDomNamedNodeMap_namedItem");

function  QDomNamedNodeMap_setNamedItem(map:QDomNamedNodeMapH;newNode:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNamedNodeMap_setNamedItem, "QDomNamedNodeMap_setNamedItem");

function  QDomNamedNodeMap_removeNamedItem(map:QDomNamedNodeMapH;name:QStringH) return QDomNodeH;
pragma Import(C,QDomNamedNodeMap_removeNamedItem, "QDomNamedNodeMap_removeNamedItem");

function  QDomNamedNodeMap_item(map:QDomNamedNodeMapH;indx:integer) return QDomNodeH;
pragma Import(C,QDomNamedNodeMap_item, "QDomNamedNodeMap_item");

function  QDomNamedNodeMap_namedItemNS(map:QDomNamedNodeMapH;nsURI,localName:QStringH) return QDomNodeH;
pragma Import(C,QDomNamedNodeMap_namedItemNS, "QDomNamedNodeMap_namedItemNS");

function  QDomNamedNodeMap_setNamedItemNS(map:QDomNamedNodeMapH;newNode:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNamedNodeMap_setNamedItemNS, "QDomNamedNodeMap_setNamedItemNS");

function  QDomNamedNodeMap_removeNamedItemNS(map:QDomNamedNodeMapH;nsURI,localName:QStringH) return QDomNodeH;
pragma Import(C,QDomNamedNodeMap_removeNamedItemNS, "QDomNamedNodeMap_removeNamedItemNS");

function  QDomNamedNodeMap_length(map:QDomNamedNodeMapH) return quint;
pragma Import(C,QDomNamedNodeMap_length, "QDomNamedNodeMap_length");

function  QDomNamedNodeMap_count(map:QDomNamedNodeMapH) return quint;
pragma Import(C,QDomNamedNodeMap_count, "QDomNamedNodeMap_count");

function  QDomNamedNodeMap_contains(map:QDomNamedNodeMapH;name:QStringH) return integer;
pragma Import(C,QDomNamedNodeMap_contains, "QDomNamedNodeMap_contains");

function  QDomNamedNodeMap_create(map:QDomNamedNodeMapH) return QDomNamedNodeMapH;

end Qt.QDomNamedNodeMap;
