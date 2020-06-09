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

package Qt.QXmlReader is

function  QXmlReader_feature(reader:QXmlReaderH;name:QStringH; ok:access integer) return integer;
pragma Import(C,QXmlReader_feature, "QXmlReader_feature");

procedure QXmlReader_setFeature(reader:QXmlReaderH;name:QStringH;value:integer);
pragma Import(C,QXmlReader_setFeature, "QXmlReader_setFeature");

function  QXmlReader_hasFeature(reader:QXmlReaderH;name:QStringH) return integer;
pragma Import(C,QXmlReader_hasFeature, "QXmlReader_hasFeature");

function  QXmlReader_property(reader:QXmlReaderH;name:QStringH; ok:access integer) return void_Star;
pragma Import(C,QXmlReader_property, "QXmlReader_property");

procedure QXmlReader_setProperty(reader:QXmlReaderH;name:QStringH;value:void_Star);
pragma Import(C,QXmlReader_setProperty, "QXmlReader_setProperty");

function  QXmlReader_hasProperty(reader:QXmlReaderH;name:QStringH) return integer;
pragma Import(C,QXmlReader_hasProperty, "QXmlReader_hasProperty");

procedure QXmlReader_setEntityResolver(reader:QXmlReaderH;handler:QXmlEntityResolverH);
pragma Import(C,QXmlReader_setEntityResolver, "QXmlReader_setEntityResolver");

function  QXmlReader_entityResolver(reader:QXmlReaderH) return QXmlEntityResolverH;
pragma Import(C,QXmlReader_entityResolver, "QXmlReader_entityResolver");

procedure QXmlReader_setDTDHandler(reader:QXmlReaderH;handler:QXmlDTDHandlerH);
pragma Import(C,QXmlReader_setDTDHandler, "QXmlReader_setDTDHandler");

function  QXmlReader_DTDHandler(reader:QXmlReaderH) return QXmlDTDHandlerH;
pragma Import(C,QXmlReader_DTDHandler, "QXmlReader_DTDHandler");

procedure QXmlReader_setContentHandler(reader:QXmlReaderH;handler:QXmlContentHandlerH);
pragma Import(C,QXmlReader_setContentHandler, "QXmlReader_setContentHandler");

function  QXmlReader_contentHandler(reader:QXmlReaderH) return QXmlContentHandlerH;
pragma Import(C,QXmlReader_contentHandler, "QXmlReader_contentHandler");

procedure QXmlReader_setErrorHandler(reader:QXmlReaderH;handler:QXmlErrorHandlerH);
pragma Import(C,QXmlReader_setErrorHandler, "QXmlReader_setErrorHandler");

function  QXmlReader_errorHandler(reader:QXmlReaderH) return QXmlErrorHandlerH;
pragma Import(C,QXmlReader_errorHandler, "QXmlReader_errorHandler");

procedure QXmlReader_setLexicalHandler(reader:QXmlReaderH;handler:QXmlLexicalHandlerH);
pragma Import(C,QXmlReader_setLexicalHandler, "QXmlReader_setLexicalHandler");

function  QXmlReader_lexicalHandler(reader:QXmlReaderH) return QXmlLexicalHandlerH;
pragma Import(C,QXmlReader_lexicalHandler, "QXmlReader_lexicalHandler");

procedure QXmlReader_setDeclHandler(reader:QXmlReaderH;handler:QXmlDeclHandlerH);
pragma Import(C,QXmlReader_setDeclHandler, "QXmlReader_setDeclHandler");

function  QXmlReader_declHandler(reader:QXmlReaderH) return QXmlDeclHandlerH;
pragma Import(C,QXmlReader_declHandler, "QXmlReader_declHandler");

function  QXmlReader_parse(reader:QXmlReaderH;input:QXmlInputSourceH) return integer;
pragma Import(C,QXmlReader_parse, "QXmlReader_parse");

function  QXmlReader_parse1(reader:QXmlReaderH;input:QXmlInputSourceH) return integer;
pragma Import(C,QXmlReader_parse1, "QXmlReader_parse1");

end Qt.QXmlReader;
