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

package Qt.QDomNodeList is

function  QDomNodeList_create return QDomNodeListH;
pragma Import(C,QDomNodeList_create, "QDomNodeList_create");

function  QDomNodeList_create1(list:QDomNodeListH) return QDomNodeListH;
pragma Import(C,QDomNodeList_create1, "QDomNodeList_create1");

procedure del_QDomNodeList(p:QDomNodeListH);
pragma Import(C,del_QDomNodeList, "del_QDomNodeList");

function  QDomNodeList_item(list:QDomNodeListH;indx:integer) return QDomNodeH;
pragma Import(C,QDomNodeList_item, "QDomNodeList_item");

function  QDomNodeList_length(list:QDomNodeListH) return quint;
pragma Import(C,QDomNodeList_length, "QDomNodeList_length");

function  QDomNodeList_count(list:QDomNodeListH) return quint;
pragma Import(C,QDomNodeList_count, "QDomNodeList_count");

function  QDomNodeList_create(list:QDomNodeListH) return QDomNodeListH;

end Qt.QDomNodeList;
