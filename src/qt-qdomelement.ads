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

package Qt.QDomElement is

function  QDomElement_create return QDomElementH;
pragma Import(C,QDomElement_create, "QDomElement_create");

function  QDomElement_create1(element:QDomElementH) return QDomElementH;
pragma Import(C,QDomElement_create1, "QDomElement_create1");

procedure del_QDomElement(p:QDomElementH);
pragma Import(C,del_QDomElement, "del_QDomElement");

function  QDomElement_attribute(element:QDomElementH;name,defValue:QStringH) return QStringH;
pragma Import(C,QDomElement_attribute, "QDomElement_attribute");

procedure QDomElement_setAttribute(element:QDomElementH;name,value:QStringH);
pragma Import(C,QDomElement_setAttribute, "QDomElement_setAttribute");

procedure QDomElement_setAttribute1(element:QDomElementH;name,value:QStringH);
pragma Import(C,QDomElement_setAttribute1, "QDomElement_setAttribute1");

procedure QDomElement_setAttribute2(element:QDomElementH;name:QStringH;value:quint);
pragma Import(C,QDomElement_setAttribute2, "QDomElement_setAttribute2");

procedure QDomElement_setAttribute3(element:QDomElementH;name:QStringH;value:long_float);
pragma Import(C,QDomElement_setAttribute3, "QDomElement_setAttribute3");

procedure QDomElement_removeAttribute(element:QDomElementH;name:QStringH);
pragma Import(C,QDomElement_removeAttribute, "QDomElement_removeAttribute");

function  QDomElement_attributeNode(element:QDomElementH;name:QStringH) return QDomAttrH;
pragma Import(C,QDomElement_attributeNode, "QDomElement_attributeNode");

function  QDomElement_setAttributeNode(element:QDomElementH;newAttr:QDomAttrH) return QDomAttrH;
pragma Import(C,QDomElement_setAttributeNode, "QDomElement_setAttributeNode");

function  QDomElement_removeAttributeNode(element:QDomElementH;oldAttr:QDomAttrH) return QDomAttrH;
pragma Import(C,QDomElement_removeAttributeNode, "QDomElement_removeAttributeNode");

function  QDomElement_elementsByTagName(element:QDomElementH;tagname:QStringH) return QDomNodeListH;
pragma Import(C,QDomElement_elementsByTagName, "QDomElement_elementsByTagName");

function  QDomElement_hasAttribute(element:QDomElementH;name:QStringH) return integer;
pragma Import(C,QDomElement_hasAttribute, "QDomElement_hasAttribute");

function  QDomElement_attributeNS(element:QDomElementH;nsURI,localName,defValue:QStringH) return QStringH;
pragma Import(C,QDomElement_attributeNS, "QDomElement_attributeNS");

procedure QDomElement_setAttributeNS(element:QDomElementH;nsURI,qName,value:QStringH);
pragma Import(C,QDomElement_setAttributeNS, "QDomElement_setAttributeNS");

procedure QDomElement_setAttributeNS1(element:QDomElementH;nsURI,qName:QStringH;value:integer);
pragma Import(C,QDomElement_setAttributeNS1, "QDomElement_setAttributeNS1");

procedure QDomElement_setAttributeNS2(element:QDomElementH;nsURI,qName:QStringH;value:quint);
pragma Import(C,QDomElement_setAttributeNS2, "QDomElement_setAttributeNS2");

procedure QDomElement_setAttributeNS3(element:QDomElementH;nsURI,qName:QStringH;value:long_float);
pragma Import(C,QDomElement_setAttributeNS3, "QDomElement_setAttributeNS3");

procedure QDomElement_removeAttributeNS(element:QDomElementH;nsURI,localName:QStringH);
pragma Import(C,QDomElement_removeAttributeNS, "QDomElement_removeAttributeNS");

function  QDomElement_attributeNodeNS(element:QDomElementH;nsURI,localName:QStringH) return QDomAttrH;
pragma Import(C,QDomElement_attributeNodeNS, "QDomElement_attributeNodeNS");

function  QDomElement_setAttributeNodeNS(element:QDomElementH;newAttr:QDomAttrH) return QDomAttrH;
pragma Import(C,QDomElement_setAttributeNodeNS, "QDomElement_setAttributeNodeNS");

function  QDomElement_elementsByTagNameNS(element:QDomElementH;nsURI,localName:QStringH) return QDomNodeListH;
pragma Import(C,QDomElement_elementsByTagNameNS, "QDomElement_elementsByTagNameNS");

function  QDomElement_hasAttributeNS(element:QDomElementH;nsURI,localName:QStringH) return integer;
pragma Import(C,QDomElement_hasAttributeNS, "QDomElement_hasAttributeNS");

function  QDomElement_tagName(element:QDomElementH) return QStringH;
pragma Import(C,QDomElement_tagName, "QDomElement_tagName");

procedure QDomElement_setTagName(element:QDomElementH;name:QStringH);
pragma Import(C,QDomElement_setTagName, "QDomElement_setTagName");

function  QDomElement_attributes(element:QDomElementH) return QDomNamedNodeMapH;
pragma Import(C,QDomElement_attributes, "QDomElement_attributes");

function  QDomElement_nodeType(element:QDomElementH) return integer;
pragma Import(C,QDomElement_nodeType, "QDomElement_nodeType");

function  QDomElement_isElement(element:QDomElementH) return integer;
pragma Import(C,QDomElement_isElement, "QDomElement_isElement");

function  QDomElement_text(element:QDomElementH) return QStringH;
pragma Import(C,QDomElement_text, "QDomElement_text");

function  QDomElement_create(element:QDomElementH) return QDomElementH;
procedure QDomElement_setAttribute(element:QDomElementH;name:QStringH;value:quint);
procedure QDomElement_setAttribute(element:QDomElementH;name:QStringH;value:long_float);
procedure QDomElement_setAttributeNS(element:QDomElementH;nsURI,qName:QStringH;value:integer);
procedure QDomElement_setAttributeNS(element:QDomElementH;nsURI,qName:QStringH;value:quint);
procedure QDomElement_setAttributeNS(element:QDomElementH;nsURI,qName:QStringH;value:long_float);

end Qt.QDomElement;
