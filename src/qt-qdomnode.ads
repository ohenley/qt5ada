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

package Qt.QDomNode is

 DOMNODE_ElementNode               : constant := 1;
 DOMNODE_AttributeNode             : constant := 2;
 DOMNODE_TextNode                  : constant := 3;
 DOMNODE_CDATASectionNode          : constant := 4;
 DOMNODE_EntityReferenceNode       : constant := 5;
 DOMNODE_EntityNode                : constant := 6;
 DOMNODE_ProcessingInstructionNode : constant := 7;
 DOMNODE_CommentNode               : constant := 8;
 DOMNODE_DocumentNode              : constant := 9;
 DOMNODE_DocumentTypeNode          : constant := 10;
 DOMNODE_DocumentFragmentNode      : constant := 11;
 DOMNODE_NotationNode              : constant := 12;
 DOMNODE_BaseNode                  : constant := 21;
 DOMNODE_CharacterDataNode         : constant := 22;

function  QDomNode_create return QDomNodeH;
pragma Import(C,QDomNode_create, "QDomNode_create");

function  QDomNode_create1(node:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_create1, "QDomNode_create1");

procedure del_QDomNode(p:QDomNodeH);
pragma Import(C,del_QDomNode, "del_QDomNode");

function  QDomNode_insertBefore(node,newChild,refChild:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_insertBefore, "QDomNode_insertBefore");

function  QDomNode_insertAfter(node,newChild,refChild:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_insertAfter, "QDomNode_insertAfter");

function  QDomNode_replaceChild(node,newChild,oldChild:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_replaceChild, "QDomNode_replaceChild");

function  QDomNode_removeChild(node,oldChild:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_removeChild, "QDomNode_removeChild");

function  QDomNode_appendChild(node,newChild:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_appendChild, "QDomNode_appendChild");

function  QDomNode_hasChildNodes(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_hasChildNodes, "QDomNode_hasChildNodes");

function  QDomNode_cloneNode(node:QDomNodeH;deep:integer) return QDomNodeH;
pragma Import(C,QDomNode_cloneNode, "QDomNode_cloneNode");

procedure QDomNode_normalize(node:QDomNodeH);
pragma Import(C,QDomNode_normalize, "QDomNode_normalize");

function  QDomNode_isSupported(node:QDomNodeH;feature,version:QStringH) return integer;
pragma Import(C,QDomNode_isSupported, "QDomNode_isSupported");

function  QDomNode_nodeName(node:QDomNodeH) return QStringH;
pragma Import(C,QDomNode_nodeName, "QDomNode_nodeName");

function  QDomNode_nodeType(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_nodeType, "QDomNode_nodeType");

function  QDomNode_parentNode(node:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_parentNode, "QDomNode_parentNode");

function  QDomNode_childNodes(node:QDomNodeH) return QDomNodeListH;
pragma Import(C,QDomNode_childNodes, "QDomNode_childNodes");

function  QDomNode_firstChild(node:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_firstChild, "QDomNode_firstChild");

function  QDomNode_lastChild(node:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_lastChild, "QDomNode_lastChild");

function  QDomNode_previousSibling(node:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_previousSibling, "QDomNode_previousSibling");

function  QDomNode_nextSibling(node:QDomNodeH) return QDomNodeH;
pragma Import(C,QDomNode_nextSibling, "QDomNode_nextSibling");

function  QDomNode_attributes(node:QDomNodeH) return QDomNamedNodeMapH;
pragma Import(C,QDomNode_attributes, "QDomNode_attributes");

function  QDomNode_ownerDocument(node:QDomNodeH) return QDomDocumentH;
pragma Import(C,QDomNode_ownerDocument, "QDomNode_ownerDocument");

function  QDomNode_namespaceURI(node:QDomNodeH) return QStringH;
pragma Import(C,QDomNode_namespaceURI, "QDomNode_namespaceURI");

function  QDomNode_localName(node:QDomNodeH) return QStringH;
pragma Import(C,QDomNode_localName, "QDomNode_localName");

function  QDomNode_hasAttributes(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_hasAttributes, "QDomNode_hasAttributes");

function  QDomNode_nodeValue(node:QDomNodeH) return QStringH;
pragma Import(C,QDomNode_nodeValue, "QDomNode_nodeValue");

procedure QDomNode_setNodeValue(node:QDomNodeH;str:QStringH);
pragma Import(C,QDomNode_setNodeValue, "QDomNode_setNodeValue");

function  QDomNode_prefix(node:QDomNodeH) return QStringH;
pragma Import(C,QDomNode_prefix, "QDomNode_prefix");

procedure QDomNode_setPrefix(node:QDomNodeH;pre:QStringH);
pragma Import(C,QDomNode_setPrefix, "QDomNode_setPrefix");

function  QDomNode_isAttr(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isAttr, "QDomNode_isAttr");

function  QDomNode_isCDATASection(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isCDATASection, "QDomNode_isCDATASection");

function  QDomNode_isDocumentFragment(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isDocumentFragment, "QDomNode_isDocumentFragment");

function  QDomNode_isDocument(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isDocument, "QDomNode_isDocument");

function  QDomNode_isDocumentType(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isDocumentType, "QDomNode_isDocumentType");

function  QDomNode_isElement(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isElement, "QDomNode_isElement");

function  QDomNode_isEntityReference(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isEntityReference, "QDomNode_isEntityReference");

function  QDomNode_isText(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isText, "QDomNode_isText");

function  QDomNode_isEntity(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isEntity, "QDomNode_isEntity");

function  QDomNode_isNotation(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isNotation, "QDomNode_isNotation");

function  QDomNode_isProcessingInstruction(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isProcessingInstruction, "QDomNode_isProcessingInstruction");

function  QDomNode_isCharacterData(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isCharacterData, "QDomNode_isCharacterData");

function  QDomNode_isComment(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isComment, "QDomNode_isComment");


-- Shortcut to avoid dealing with QDomNodeList all the time.
     
function  QDomNode_namedItem(node:QDomNodeH;name:QStringH) return QDomNodeH;
pragma Import(C,QDomNode_namedItem, "QDomNode_namedItem");

function  QDomNode_isNull(node:QDomNodeH) return integer;
pragma Import(C,QDomNode_isNull, "QDomNode_isNull");

procedure QDomNode_clear(node:QDomNodeH);
pragma Import(C,QDomNode_clear, "QDomNode_clear");

function  QDomNode_toAttr(node:QDomNodeH) return QDomAttrH;
pragma Import(C,QDomNode_toAttr, "QDomNode_toAttr");

function  QDomNode_toCDATASection(node:QDomNodeH) return QDomCDATASectionH;
pragma Import(C,QDomNode_toCDATASection, "QDomNode_toCDATASection");

function  QDomNode_toDocumentFragment(node:QDomNodeH) return QDomDocumentFragmentH;
pragma Import(C,QDomNode_toDocumentFragment, "QDomNode_toDocumentFragment");

function  QDomNode_toDocument(node:QDomNodeH) return QDomDocumentH;
pragma Import(C,QDomNode_toDocument, "QDomNode_toDocument");

function  QDomNode_toDocumentType(node:QDomNodeH) return QDomDocumentTypeH;
pragma Import(C,QDomNode_toDocumentType, "QDomNode_toDocumentType");

function  QDomNode_toElement(node:QDomNodeH) return QDomElementH;
pragma Import(C,QDomNode_toElement, "QDomNode_toElement");

function  QDomNode_toEntityReference(node:QDomNodeH) return QDomEntityReferenceH;
pragma Import(C,QDomNode_toEntityReference, "QDomNode_toEntityReference");

function  QDomNode_toText(node:QDomNodeH) return QDomTextH;
pragma Import(C,QDomNode_toText, "QDomNode_toText");

function  QDomNode_toEntity(node:QDomNodeH) return QDomEntityH;
pragma Import(C,QDomNode_toEntity, "QDomNode_toEntity");

function  QDomNode_toNotation(node:QDomNodeH) return QDomNotationH;
pragma Import(C,QDomNode_toNotation, "QDomNode_toNotation");

function  QDomNode_toProcessingInstruction(node:QDomNodeH) return QDomProcessingInstructionH;
pragma Import(C,QDomNode_toProcessingInstruction, "QDomNode_toProcessingInstruction");

function  QDomNode_toCharacterData(node:QDomNodeH) return QDomCharacterDataH;
pragma Import(C,QDomNode_toCharacterData, "QDomNode_toCharacterData");

function  QDomNode_toComment(node:QDomNodeH) return QDomCommentH;
pragma Import(C,QDomNode_toComment, "QDomNode_toComment");

procedure QDomNode_save(node:QDomNodeH;stream:QTextStreamH;b:integer);
pragma Import(C,QDomNode_save, "QDomNode_save");

function  QDomNode_create(node:QDomNodeH) return QDomNodeH;

end Qt.QDomNode;
