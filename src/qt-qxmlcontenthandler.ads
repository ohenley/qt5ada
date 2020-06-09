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

package Qt.QXmlContentHandler is

procedure QXmlContentHandler_setDocumentLocator(handler:QXmlContentHandlerH;locator:QXmlLocatorH);
pragma Import(C,QXmlContentHandler_setDocumentLocator, "QXmlContentHandler_setDocumentLocator");

function  QXmlContentHandler_startDocument(handler:QXmlContentHandlerH) return integer;
pragma Import(C,QXmlContentHandler_startDocument, "QXmlContentHandler_startDocument");

function  QXmlContentHandler_endDocument(handler:QXmlContentHandlerH) return integer;
pragma Import(C,QXmlContentHandler_endDocument, "QXmlContentHandler_endDocument");

function  QXmlContentHandler_startPrefixMapping(handler:QXmlContentHandlerH;prefix,uri:QStringH) return integer;
pragma Import(C,QXmlContentHandler_startPrefixMapping, "QXmlContentHandler_startPrefixMapping");

function  QXmlContentHandler_endPrefixMapping(handler:QXmlContentHandlerH;prefix:QStringH) return integer;
pragma Import(C,QXmlContentHandler_endPrefixMapping, "QXmlContentHandler_endPrefixMapping");

function  QXmlContentHandler_startElement(handler:QXmlContentHandlerH;spaceURIname,localName,qName:QStringH;attr:QXmlAttributesH) return integer;
pragma Import(C,QXmlContentHandler_startElement, "QXmlContentHandler_startElement");

function  QXmlContentHandler_endElement(handler:QXmlContentHandlerH;spaceURIname,localName,qName:QStringH) return integer;
pragma Import(C,QXmlContentHandler_endElement, "QXmlContentHandler_endElement");

function  QXmlContentHandler_characters(handler:QXmlContentHandlerH;ch:QStringH) return integer;
pragma Import(C,QXmlContentHandler_characters, "QXmlContentHandler_characters");

function  QXmlContentHandler_ignorableWhitespace(handler:QXmlContentHandlerH;ch:QStringH) return integer;
pragma Import(C,QXmlContentHandler_ignorableWhitespace, "QXmlContentHandler_ignorableWhitespace");

function  QXmlContentHandler_processingInstruction(handler:QXmlContentHandlerH;target,data: QStringH) return integer;
pragma Import(C,QXmlContentHandler_processingInstruction, "QXmlContentHandler_processingInstruction");

function  QXmlContentHandler_skippedEntity(handler:QXmlContentHandlerH;name:QStringH) return integer;
pragma Import(C,QXmlContentHandler_skippedEntity, "QXmlContentHandler_skippedEntity");

function  QXmlContentHandler_errorString(handler:QXmlContentHandlerH) return QStringH;
pragma Import(C,QXmlContentHandler_errorString, "QXmlContentHandler_errorString");


end Qt.QXmlContentHandler;
