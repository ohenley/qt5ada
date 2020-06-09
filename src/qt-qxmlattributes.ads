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

package Qt.QXmlAttributes is

function  QXmlAttributes_create return QXmlAttributesH;
pragma Import(C,QXmlAttributes_create, "new_QXmlAttributes");

procedure del_QXmlAttributes(p:QXmlAttributesH);
pragma Import(C,del_QXmlAttributes, "del_QXmlAttributes");

function  QXmlAttributes_index(attr:QXmlAttributesH;qName:QStringH) return integer;
pragma Import(C,QXmlAttributes_index, "QXmlAttributes_index");

function  QXmlAttributes_index1(attr:QXmlAttributesH;uri,localPart:QStringH) return integer;
pragma Import(C,QXmlAttributes_index1, "QXmlAttributes_index1");

function  QXmlAttributes_length(attr:QXmlAttributesH) return integer;
pragma Import(C,QXmlAttributes_length, "QXmlAttributes_length");

function  QXmlAttributes_count(attr:QXmlAttributesH) return integer;
pragma Import(C,QXmlAttributes_count, "QXmlAttributes_count");

function  QXmlAttributes_localName(attr:QXmlAttributesH;indx:integer) return QStringH;
pragma Import(C,QXmlAttributes_localName, "QXmlAttributes_localName");

function  QXmlAttributes_qName(attr:QXmlAttributesH;indx:integer) return QStringH;
pragma Import(C,QXmlAttributes_qName, "QXmlAttributes_qName");

function  QXmlAttributes_uri(attr:QXmlAttributesH;indx:integer) return QStringH;
pragma Import(C,QXmlAttributes_uri, "QXmlAttributes_uri");

function QXmlAttributes_type(attr:QXmlAttributesH;indx:integer) return QStringH;
pragma Import(C,QXmlAttributes_type, "QXmlAttributes_type");

function  QXmlAttributes_type1(attr:QXmlAttributesH;qName:QStringH) return QStringH;
pragma Import(C,QXmlAttributes_type1, "QXmlAttributes_type1");

function  QXmlAttributes_type2(attr:QXmlAttributesH;uri,localName:QStringH) return QStringH;
pragma Import(C,QXmlAttributes_type2, "QXmlAttributes_type2");

function  QXmlAttributes_value(attr:QXmlAttributesH;indx:integer) return QStringH;
pragma Import(C,QXmlAttributes_value, "QXmlAttributes_value");

function  QXmlAttributes_value1(attr:QXmlAttributesH;qName:QStringH) return QStringH;
pragma Import(C,QXmlAttributes_value1, "QXmlAttributes_value1");

function  QXmlAttributes_value2(attr:QXmlAttributesH;uri,localName:QStringH) return QStringH;
pragma Import(C,QXmlAttributes_value2, "QXmlAttributes_value2");

procedure QXmlAttributes_clear(attr:QXmlAttributesH);
pragma Import(C,QXmlAttributes_clear, "QXmlAttributes_clear");

procedure QXmlAttributes_append(attr:QXmlAttributesH;qName,uri,localPart,value:QStringH);
pragma Import(C,QXmlAttributes_append, "QXmlAttributes_append");

function  QXmlAttributes_index(attr:QXmlAttributesH;uri,localPart:QStringH) return integer;
function  QXmlAttributes_type(attr:QXmlAttributesH;qName:QStringH) return QStringH;
function  QXmlAttributes_type(attr:QXmlAttributesH;uri,localName:QStringH) return QStringH;
function  QXmlAttributes_value(attr:QXmlAttributesH;qName:QStringH) return QStringH;
function  QXmlAttributes_value(attr:QXmlAttributesH;uri,localName:QStringH) return QStringH;

end Qt.QXmlAttributes;
