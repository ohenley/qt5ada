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

package Qt.QDomImplementation is

function  QDomImplementation_create return QDomImplementationH;
pragma Import(C,QDomImplementation_create, "QDomImplementation_create");

function  QDomImplementation_create1(impl:QDomImplementationH) return QDomImplementationH;
pragma Import(C,QDomImplementation_create1, "QDomImplementation_create1");

procedure del_QDomImplementation(p:QDomImplementationH);
pragma Import(C,del_QDomImplementation, "del_QDomImplementation");

function  QDomImplementation_hasFeature(impl:QDomImplementationH;feature,version:QStringH) return integer;
pragma Import(C,QDomImplementation_hasFeature, "QDomImplementation_hasFeature");

function  QDomImplementation_createDocumentType(impl:QDomImplementationH;qName,publicId,systemId:QStringH) return QDomDocumentTypeH;
pragma Import(C,QDomImplementation_createDocumentType, "QDomImplementation_createDocumentType");

function  QDomImplementation_createDocument(impl:QDomImplementationH;nsURI,qName:QStringH;doctype:QDomDocumentTypeH) return QDomDocumentH;
pragma Import(C,QDomImplementation_createDocument, "QDomImplementation_createDocument");

function  QDomImplementation_isNull(impl:QDomImplementationH) return integer;
pragma Import(C,QDomImplementation_isNull, "QDomImplementation_isNull");

function  QDomImplementation_create(impl:QDomImplementationH) return QDomImplementationH;

end Qt.QDomImplementation;
