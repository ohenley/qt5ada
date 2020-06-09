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

package Qt.QDomDocumentType is

function  QDomDocumentType_create return QDomDocumentTypeH;
pragma Import(C,QDomDocumentType_create, "QDomDocumentType_create");

function  QDomDocumentType_create1(typ:QDomDocumentTypeH) return QDomDocumentTypeH;
pragma Import(C,QDomDocumentType_create1, "QDomDocumentType_create1");

procedure del_QDomDocumentType(p:QDomDocumentTypeH);
pragma Import(C,del_QDomDocumentType, "del_QDomDocumentType");

function  QDomDocumentType_name(typ:QDomDocumentTypeH) return QStringH;
pragma Import(C,QDomDocumentType_name, "QDomDocumentType_name");

function  QDomDocumentType_entities(typ:QDomDocumentTypeH) return QDomNamedNodeMapH;
pragma Import(C,QDomDocumentType_entities, "QDomDocumentType_entities");

function  QDomDocumentType_notations(typ:QDomDocumentTypeH) return QDomNamedNodeMapH;
pragma Import(C,QDomDocumentType_notations, "QDomDocumentType_notations");

function  QDomDocumentType_publicId(typ:QDomDocumentTypeH) return QStringH;
pragma Import(C,QDomDocumentType_publicId, "QDomDocumentType_publicId");

function  QDomDocumentType_systemId(typ:QDomDocumentTypeH) return QStringH;
pragma Import(C,QDomDocumentType_systemId, "QDomDocumentType_systemId");

function  QDomDocumentType_internalSubset(typ:QDomDocumentTypeH) return QStringH;
pragma Import(C,QDomDocumentType_internalSubset, "QDomDocumentType_internalSubset");

function  QDomDocumentType_nodeType(typ:QDomDocumentTypeH) return integer;
pragma Import(C,QDomDocumentType_nodeType, "QDomDocumentType_nodeType");

function  QDomDocumentType_isDocumentType(typ:QDomDocumentTypeH) return integer;
pragma Import(C,QDomDocumentType_isDocumentType, "QDomDocumentType_isDocumentType");

function  QDomDocumentType_create(typ:QDomDocumentTypeH) return QDomDocumentTypeH;

end Qt.QDomDocumentType;
