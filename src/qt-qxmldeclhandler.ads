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

package Qt.QXmlDeclHandler is

function  QXmlDeclHandler_attributeDecl(handler:QXmlDeclHandlerH;eName,aName,typ,valueDefault,value:QStringH) return integer;
pragma Import(C,QXmlDeclHandler_attributeDecl, "QXmlDeclHandler_attributeDecl");

function  QXmlDeclHandler_internalEntityDecl(handler:QXmlDeclHandlerH;name,value:QStringH) return integer;
pragma Import(C,QXmlDeclHandler_internalEntityDecl, "QXmlDeclHandler_internalEntityDecl");

function  QXmlDeclHandler_externalEntityDecl(handler:QXmlDeclHandlerH;name,publicId,systemId:QStringH) return integer;
pragma Import(C,QXmlDeclHandler_externalEntityDecl, "QXmlDeclHandler_externalEntityDecl");

function  QXmlDeclHandler_errorString(handler:QXmlDeclHandlerH) return QStringH;
pragma Import(C,QXmlDeclHandler_errorString, "QXmlDeclHandler_errorString");

end Qt.QXmlDeclHandler;
