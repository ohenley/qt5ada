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

package Qt.QXmlLexicalHandler is

function  QXmlLexicalHandler_startDTD(handler:QXmlLexicalHandlerH;name,publicId,systemId:QStringH) return integer;
pragma Import(C,QXmlLexicalHandler_startDTD, "QXmlLexicalHandler_startDTD");

function  QXmlLexicalHandler_endDTD(handler:QXmlLexicalHandlerH) return integer;
pragma Import(C,QXmlLexicalHandler_endDTD, "QXmlLexicalHandler_endDTD");

function  QXmlLexicalHandler_startEntity(handler:QXmlLexicalHandlerH;name:QStringH) return integer;
pragma Import(C,QXmlLexicalHandler_startEntity, "QXmlLexicalHandler_startEntity");

function  QXmlLexicalHandler_endEntity(handler:QXmlLexicalHandlerH;name:QStringH) return integer;
pragma Import(C,QXmlLexicalHandler_endEntity, "QXmlLexicalHandler_endEntity");

function  QXmlLexicalHandler_startCDATA(handler:QXmlLexicalHandlerH) return integer;
pragma Import(C,QXmlLexicalHandler_startCDATA, "QXmlLexicalHandler_startCDATA");

function  QXmlLexicalHandler_endCDATA(handler:QXmlLexicalHandlerH) return integer;
pragma Import(C,QXmlLexicalHandler_endCDATA, "QXmlLexicalHandler_endCDATA");

function  QXmlLexicalHandler_comment(handler:QXmlLexicalHandlerH;ch:QStringH) return integer;
pragma Import(C,QXmlLexicalHandler_comment, "QXmlLexicalHandler_comment");

function  QXmlLexicalHandler_errorString(handler:QXmlLexicalHandlerH) return QStringH;
pragma Import(C,QXmlLexicalHandler_errorString, "QXmlLexicalHandler_errorString");


end Qt.QXmlLexicalHandler;
