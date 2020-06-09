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

package Qt.QXmlDefaultHandler is

function  QXmlDefaultHandler_create return QXmlDefaultHandlerH;
pragma Import(C,QXmlDefaultHandler_create, "QXmlDefaultHandler_create");

procedure del_QXmlDefaultHandler(p:QXmlDefaultHandlerH);
pragma Import(C,del_QXmlDefaultHandler, "del_QXmlDefaultHandler");

procedure QXmlDefaultHandler_setDocumentLocator(handler:QXmlDefaultHandlerH;locator:QXmlLocatorH);
pragma Import(C,QXmlDefaultHandler_setDocumentLocator, "QXmlDefaultHandler_setDocumentLocator");

function  QXmlDefaultHandler_startDocument(handler:QXmlDefaultHandlerH) return integer;
pragma Import(C,QXmlDefaultHandler_startDocument, "QXmlDefaultHandler_startDocument");

function  QXmlDefaultHandler_endDocument(handler:QXmlDefaultHandlerH) return integer;
pragma Import(C,QXmlDefaultHandler_endDocument, "QXmlDefaultHandler_endDocument");

function  QXmlDefaultHandler_startPrefixMapping(handler:QXmlDefaultHandlerH;prefix,uri:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_startPrefixMapping, "QXmlDefaultHandler_startPrefixMapping");

function  QXmlDefaultHandler_endPrefixMapping(handler:QXmlDefaultHandlerH;prefix:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_endPrefixMapping, "QXmlDefaultHandler_endPrefixMapping");

function  QXmlDefaultHandler_startElement(handler:QXmlDefaultHandlerH;spaceURIname,localName,qName:QStringH;attr:QXmlAttributesH) return integer;
pragma Import(C,QXmlDefaultHandler_startElement, "QXmlDefaultHandler_startElement");

function  QXmlDefaultHandler_endElement(handler:QXmlDefaultHandlerH;spaceURIname,localName,qName:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_endElement, "QXmlDefaultHandler_endElement");

function  QXmlDefaultHandler_characters(handler:QXmlDefaultHandlerH;ch:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_characters, "QXmlDefaultHandler_characters");

function  QXmlDefaultHandler_ignorableWhitespace(handler:QXmlDefaultHandlerH;ch:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_ignorableWhitespace, "QXmlDefaultHandler_ignorableWhitespace");

function  QXmlDefaultHandler_processingInstruction(handler:QXmlDefaultHandlerH;target,data:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_processingInstruction, "QXmlDefaultHandler_processingInstruction");

function  QXmlDefaultHandler_skippedEntity(handler:QXmlDefaultHandlerH;name:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_skippedEntity, "QXmlDefaultHandler_skippedEntity");

function  QXmlDefaultHandler_warning(handler:QXmlDefaultHandlerH;except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlDefaultHandler_warning, "QXmlDefaultHandler_warning");

function  QXmlDefaultHandler_error(handler:QXmlDefaultHandlerH;except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlDefaultHandler_error, "QXmlDefaultHandler_error");

function  QXmlDefaultHandler_fatalError(handler:QXmlDefaultHandlerH;except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlDefaultHandler_fatalError, "QXmlDefaultHandler_fatalError");

function  QXmlDefaultHandler_notationDecl(handler:QXmlDefaultHandlerH;name,publicId,systemId:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_notationDecl, "QXmlDefaultHandler_notationDecl");

function  QXmlDefaultHandler_unparsedEntityDecl(handler:QXmlDefaultHandlerH;name,publicId,systemId,notationName:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_unparsedEntityDecl, "QXmlDefaultHandler_unparsedEntityDecl");

function  QXmlDefaultHandler_resolveEntity(handler:QXmlDefaultHandlerH;publicId,systemId:QStringH;ret:QXmlInputSourceH) return integer;
pragma Import(C,QXmlDefaultHandler_resolveEntity, "QXmlDefaultHandler_resolveEntity");

function  QXmlDefaultHandler_startDTD(handler:QXmlDefaultHandlerH;name,publicId,systemId:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_startDTD, "QXmlDefaultHandler_startDTD");

function  QXmlDefaultHandler_endDTD(handler:QXmlDefaultHandlerH) return integer;
pragma Import(C,QXmlDefaultHandler_endDTD, "QXmlDefaultHandler_endDTD");

function  QXmlDefaultHandler_startEntity(handler:QXmlDefaultHandlerH;name:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_startEntity, "QXmlDefaultHandler_startEntity");

function  QXmlDefaultHandler_endEntity(handler:QXmlDefaultHandlerH;name:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_endEntity, "QXmlDefaultHandler_endEntity");

function  QXmlDefaultHandler_startCDATA(handler:QXmlDefaultHandlerH) return integer;
pragma Import(C,QXmlDefaultHandler_startCDATA, "QXmlDefaultHandler_startCDATA");

function  QXmlDefaultHandler_endCDATA(handler:QXmlDefaultHandlerH) return integer;
pragma Import(C,QXmlDefaultHandler_endCDATA, "QXmlDefaultHandler_endCDATA");

function  QXmlDefaultHandler_comment(handler:QXmlDefaultHandlerH;ch:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_comment, "QXmlDefaultHandler_comment");

function  QXmlDefaultHandler_attributeDecl(handler:QXmlDefaultHandlerH;eName,aName,typ,valueDefault,value:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_attributeDecl, "QXmlDefaultHandler_attributeDecl");

function  QXmlDefaultHandler_internalEntityDecl(handler:QXmlDefaultHandlerH;name,value:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_internalEntityDecl, "QXmlDefaultHandler_internalEntityDecl");

function  QXmlDefaultHandler_externalEntityDecl(handler:QXmlDefaultHandlerH;name,publicId,systemId:QStringH) return integer;
pragma Import(C,QXmlDefaultHandler_externalEntityDecl, "QXmlDefaultHandler_externalEntityDecl");

function  QXmlDefaultHandler_errorString(handler:QXmlDefaultHandlerH) return QStringH;
pragma Import(C,QXmlDefaultHandler_errorString, "QXmlDefaultHandler_errorString");

function  QXmlDefaultHandler_QXmlContentHandler(handler:QXmlDefaultHandlerH) return QXmlContentHandlerH;
pragma Import(C,QXmlDefaultHandler_QXmlContentHandler, "QXmlDefaultHandler_QXmlContentHandler");

function  QXmlDefaultHandler_QXmlDTDHandler(handler:QXmlDefaultHandlerH) return QXmlDTDHandlerH;
pragma Import(C,QXmlDefaultHandler_QXmlDTDHandler, "QXmlDefaultHandler_QXmlDTDHandler");

function  QXmlDefaultHandler_QXmlDeclHandler(handler:QXmlDefaultHandlerH) return QXmlDeclHandlerH;
pragma Import(C,QXmlDefaultHandler_QXmlDeclHandler, "QXmlDefaultHandler_QXmlDeclHandler");

function  QXmlDefaultHandler_QXmlEntityResolver(handler:QXmlDefaultHandlerH) return QXmlEntityResolverH;
pragma Import(C,QXmlDefaultHandler_QXmlEntityResolver, "QXmlDefaultHandler_QXmlEntityResolver");

function  QXmlDefaultHandler_QXmlErrorHandler(handler:QXmlDefaultHandlerH) return QXmlErrorHandlerH;
pragma Import(C,QXmlDefaultHandler_QXmlErrorHandler, "QXmlDefaultHandler_QXmlErrorHandler");

function  QXmlDefaultHandler_QXmlLexicalHandler(handler:QXmlDefaultHandlerH) return QXmlLexicalHandlerH;
pragma Import(C,QXmlDefaultHandler_QXmlLexicalHandler, "QXmlDefaultHandler_QXmlLexicalHandler");


end Qt.QXmlDefaultHandler;
