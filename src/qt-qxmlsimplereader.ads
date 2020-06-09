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

package Qt.QXmlSimpleReader is

function  QXmlSimpleReader_create return QXmlSimpleReaderH;
pragma Import(C,QXmlSimpleReader_create, "QXmlSimpleReader_create");

procedure del_QXmlSimpleReader(p:QXmlSimpleReaderH);
pragma Import(C,del_QXmlSimpleReader, "del_QXmlSimpleReader");

function  QXmlSimpleReader_feature(reader:QXmlSimpleReaderH;name:QStringH;ok:access integer) return integer;
pragma Import(C,QXmlSimpleReader_feature, "QXmlSimpleReader_feature");

procedure QXmlSimpleReader_setFeature(reader:QXmlSimpleReaderH;name:QStringH;value:integer);
pragma Import(C,QXmlSimpleReader_setFeature, "QXmlSimpleReader_setFeature");

function  QXmlSimpleReader_hasFeature(reader:QXmlSimpleReaderH;name:QStringH) return integer;
pragma Import(C,QXmlSimpleReader_hasFeature, "QXmlSimpleReader_hasFeature");

function  QXmlSimpleReader_property(reader:QXmlSimpleReaderH;name:QStringH;ok:access integer) return void_Star;
pragma Import(C,QXmlSimpleReader_property, "QXmlSimpleReader_property");

procedure QXmlSimpleReader_setProperty(reader:QXmlSimpleReaderH;name:QStringH;value:void_Star);
pragma Import(C,QXmlSimpleReader_setProperty, "QXmlSimpleReader_setProperty");

function  QXmlSimpleReader_hasProperty(reader:QXmlSimpleReaderH;name:QStringH) return integer;
pragma Import(C,QXmlSimpleReader_hasProperty, "QXmlSimpleReader_hasProperty");

procedure QXmlSimpleReader_setEntityResolver(reader:QXmlSimpleReaderH;handler:QXmlEntityResolverH);
pragma Import(C,QXmlSimpleReader_setEntityResolver, "QXmlSimpleReader_setEntityResolver");

function  QXmlSimpleReader_entityResolver(reader:QXmlSimpleReaderH) return QXmlEntityResolverH;
pragma Import(C,QXmlSimpleReader_entityResolver, "QXmlSimpleReader_entityResolver");

procedure QXmlSimpleReader_setDTDHandler(reader:QXmlSimpleReaderH;handler:QXmlDTDHandlerH);
pragma Import(C,QXmlSimpleReader_setDTDHandler, "QXmlSimpleReader_setDTDHandler");

function  QXmlSimpleReader_DTDHandler(reader:QXmlSimpleReaderH) return QXmlDTDHandlerH;
pragma Import(C,QXmlSimpleReader_DTDHandler, "QXmlSimpleReader_DTDHandler");

procedure QXmlSimpleReader_setContentHandler(reader:QXmlSimpleReaderH;handler:QXmlContentHandlerH);
pragma Import(C,QXmlSimpleReader_setContentHandler, "QXmlSimpleReader_setContentHandler");

function  QXmlSimpleReader_contentHandler(reader:QXmlSimpleReaderH) return QXmlContentHandlerH;
pragma Import(C,QXmlSimpleReader_contentHandler, "QXmlSimpleReader_contentHandler");

procedure QXmlSimpleReader_setErrorHandler(reader:QXmlSimpleReaderH;handler:QXmlErrorHandlerH);
pragma Import(C,QXmlSimpleReader_setErrorHandler, "QXmlSimpleReader_setErrorHandler");

function  QXmlSimpleReader_errorHandler(reader:QXmlSimpleReaderH) return QXmlErrorHandlerH;
pragma Import(C,QXmlSimpleReader_errorHandler, "QXmlSimpleReader_errorHandler");

procedure QXmlSimpleReader_setLexicalHandler(reader:QXmlSimpleReaderH;handler:QXmlLexicalHandlerH);
pragma Import(C,QXmlSimpleReader_setLexicalHandler, "QXmlSimpleReader_setLexicalHandler");

function  QXmlSimpleReader_lexicalHandler(reader:QXmlSimpleReaderH) return QXmlLexicalHandlerH;
pragma Import(C,QXmlSimpleReader_lexicalHandler, "QXmlSimpleReader_lexicalHandler");

procedure QXmlSimpleReader_setDeclHandler(reader:QXmlSimpleReaderH;handler:QXmlDeclHandlerH);
pragma Import(C,QXmlSimpleReader_setDeclHandler, "QXmlSimpleReader_setDeclHandler");

function  QXmlSimpleReader_declHandler(reader:QXmlSimpleReaderH) return QXmlDeclHandlerH;
pragma Import(C,QXmlSimpleReader_declHandler, "QXmlSimpleReader_declHandler");

function  QXmlSimpleReader_parse(reader:QXmlSimpleReaderH;input:QXmlInputSourceH) return integer;
pragma Import(C,QXmlSimpleReader_parse, "QXmlSimpleReader_parse");

function  QXmlSimpleReader_parse1(reader:QXmlSimpleReaderH;input:QXmlInputSourceH) return integer;
pragma Import(C,QXmlSimpleReader_parse1, "QXmlSimpleReader_parse1");

function  QXmlSimpleReader_parse2(reader:QXmlSimpleReaderH;input:QXmlInputSourceH;incremental:integer) return integer;
pragma Import(C,QXmlSimpleReader_parse2, "QXmlSimpleReader_parse2");

function  QXmlSimpleReader_parseContinue(reader:QXmlSimpleReaderH) return integer;
pragma Import(C,QXmlSimpleReader_parseContinue, "QXmlSimpleReader_parseContinue");

function  QXmlSimpleReader_parse(reader:QXmlSimpleReaderH;input:QXmlInputSourceH;incremental:integer) return integer;

end Qt.QXmlSimpleReader;
