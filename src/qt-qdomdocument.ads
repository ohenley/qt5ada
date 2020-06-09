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

package Qt.QDomDocument is

function  QDomDocument_create return QDomDocumentH;
pragma Import(C,QDomDocument_create, "QDomDocument_create");

function  QDomDocument_create1(name:QStringH) return QDomDocumentH;
pragma Import(C,QDomDocument_create1, "QDomDocument_create1");

function  QDomDocument_create2(doctype:QDomDocumentTypeH) return QDomDocumentH;
pragma Import(C,QDomDocument_create2, "QDomDocument_create2");

function  QDomDocument_create3(document:QDomDocumentH) return QDomDocumentH;
pragma Import(C,QDomDocument_create3, "QDomDocument_create3");

procedure del_QDomDocument(p:QDomDocumentH);
pragma Import(C,del_QDomDocument, "del_QDomDocument");

function  QDomDocument_createElement(document:QDomDocumentH;tagName:QStringH) return QDomElementH;
pragma Import(C,QDomDocument_createElement, "QDomDocument_createElement");

function  QDomDocument_createDocumentFragment(document:QDomDocumentH) return QDomDocumentFragmentH;
pragma Import(C,QDomDocument_createDocumentFragment, "QDomDocument_createDocumentFragment");

function  QDomDocument_createTextNode(document:QDomDocumentH;data:QStringH) return QDomTextH;
pragma Import(C,QDomDocument_createTextNode, "QDomDocument_createTextNode");

function  QDomDocument_createComment(document:QDomDocumentH;data:QStringH) return QDomCommentH;
pragma Import(C,QDomDocument_createComment, "QDomDocument_createComment");

function  QDomDocument_createCDATASection(document:QDomDocumentH;data:QStringH) return QDomCDATASectionH;
pragma Import(C,QDomDocument_createCDATASection, "QDomDocument_createCDATASection");

function  QDomDocument_createProcessingInstruction(document:QDomDocumentH;target,data:QStringH) return QDomProcessingInstructionH;
pragma Import(C,QDomDocument_createProcessingInstruction, "QDomDocument_createProcessingInstruction");

function  QDomDocument_createAttribute(document:QDomDocumentH;name:QStringH) return QDomAttrH;
pragma Import(C,QDomDocument_createAttribute, "QDomDocument_createAttribute");

function  QDomDocument_createEntityReference(document:QDomDocumentH;name:QStringH) return QDomEntityReferenceH;
pragma Import(C,QDomDocument_createEntityReference, "QDomDocument_createEntityReference");

function  QDomDocument_elementsByTagName(document:QDomDocumentH;tagname:QStringH) return QDomNodeListH;
pragma Import(C,QDomDocument_elementsByTagName, "QDomDocument_elementsByTagName");

function  QDomDocument_importNode(document:QDomDocumentH;importedNode:QDomNodeH;deep:integer) return QDomNodeH;
pragma Import(C,QDomDocument_importNode, "QDomDocument_importNode");

function  QDomDocument_createElementNS(document:QDomDocumentH;nsURI,qName:QStringH) return QDomElementH;
pragma Import(C,QDomDocument_createElementNS, "QDomDocument_createElementNS");

function  QDomDocument_createAttributeNS(document:QDomDocumentH;nsURI,qName:QStringH) return QDomAttrH;
pragma Import(C,QDomDocument_createAttributeNS, "QDomDocument_createAttributeNS");

function  QDomDocument_elementsByTagNameNS(document:QDomDocumentH;nsURI,localName:QStringH) return QDomNodeListH;
pragma Import(C,QDomDocument_elementsByTagNameNS, "QDomDocument_elementsByTagNameNS");

function  QDomDocument_elementById(document:QDomDocumentH;elementId:QStringH) return QDomElementH;
pragma Import(C,QDomDocument_elementById, "QDomDocument_elementById");

function  QDomDocument_doctype(document:QDomDocumentH) return QDomDocumentTypeH;
pragma Import(C,QDomDocument_doctype, "QDomDocument_doctype");

function  QDomDocument_implementation(document:QDomDocumentH) return QDomImplementationH;
pragma Import(C,QDomDocument_implementation, "QDomDocument_implementation");

function  QDomDocument_documentElement(document:QDomDocumentH) return QDomElementH;
pragma Import(C,QDomDocument_documentElement, "QDomDocument_documentElement");

function  QDomDocument_setContent(document:QDomDocumentH;text:QStringH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
pragma Import(C,QDomDocument_setContent, "QDomDocument_setContent");

function  QDomDocument_setContent1(document:QDomDocumentH;ba:QByteArrayH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
pragma Import(C,QDomDocument_setContent1, "QDomDocument_setContent1");

function  QDomDocument_setContent3(document:QDomDocumentH;dev:QIODeviceH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
pragma Import(C,QDomDocument_setContent3, "QDomDocument_setContent3");

function  QDomDocument_setContent4(document:QDomDocumentH;text:QStringH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
pragma Import(C,QDomDocument_setContent4, "QDomDocument_setContent4");

function  QDomDocument_setContent5(document:QDomDocumentH;ba:QByteArrayH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
pragma Import(C,QDomDocument_setContent5, "QDomDocument_setContent5");

function  QDomDocument_setContent7(document:QDomDocumentH;dev:QIODeviceH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
pragma Import(C,QDomDocument_setContent7, "QDomDocument_setContent7");

function  QDomDocument_nodeType(document:QDomDocumentH) return integer;
pragma Import(C,QDomDocument_nodeType, "QDomDocument_nodeType");

function  QDomDocument_isDocument(document:QDomDocumentH) return integer;
pragma Import(C,QDomDocument_isDocument, "QDomDocument_isDocument");

function  QDomDocument_toString(document:QDomDocumentH) return QStringH;
pragma Import(C,QDomDocument_toString, "QDomDocument_toString");

---------------------------------------------------------------------------------------
function  QDomDocument_create(name:QStringH) return QDomDocumentH;
function  QDomDocument_create(doctype:QDomDocumentTypeH) return QDomDocumentH;
function  QDomDocument_create(document:QDomDocumentH) return QDomDocumentH;
function  QDomDocument_setContent(document:QDomDocumentH;ba:QByteArrayH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
--function  QDomDocument_setContent(document:QDomDocumentH;text:QStringH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
function  QDomDocument_setContent(document:QDomDocumentH;dev:QIODeviceH;namespaceProcessing:integer;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
function  QDomDocument_setContent(document:QDomDocumentH;text:QStringH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
function  QDomDocument_setContent(document:QDomDocumentH;ba:QByteArrayH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
--function  QDomDocument_setContent(document:QDomDocumentH;text,errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;
function  QDomDocument_setContent(document:QDomDocumentH;dev:QIODeviceH;errorMsg:QStringH;errorLine,errorColumn:access integer) return integer;

end Qt.QDomDocument;
