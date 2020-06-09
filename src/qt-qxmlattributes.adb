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
package body Qt.QXmlAttributes is

function  QXmlAttributes_index(attr:QXmlAttributesH;uri,localPart:QStringH) return integer is
begin
 return QXmlAttributes_index1(attr,uri,localPart);
end QXmlAttributes_index;

function  QXmlAttributes_type(attr:QXmlAttributesH;qName:QStringH) return QStringH is
begin
 return QXmlAttributes_type1(attr,qName);
end QXmlAttributes_type;

function  QXmlAttributes_type(attr:QXmlAttributesH;uri,localName:QStringH) return QStringH is
begin
 return QXmlAttributes_type2(attr,uri,localName);
end QXmlAttributes_type;

function  QXmlAttributes_value(attr:QXmlAttributesH;qName:QStringH) return QStringH is
begin
 return QXmlAttributes_value1(attr,qName);
end QXmlAttributes_value;

function  QXmlAttributes_value(attr:QXmlAttributesH;uri,localName:QStringH) return QStringH is
begin
 return QXmlAttributes_value2(attr,uri,localName);
end QXmlAttributes_value;

end Qt.QXmlAttributes;
