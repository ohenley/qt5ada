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

package Qt.QDomEntity is

function  QDomEntity_create return QDomEntityH;
pragma Import(C,QDomEntity_create, "QDomEntity_create");

function  QDomEntity_create1(entity:QDomEntityH) return QDomEntityH;
pragma Import(C,QDomEntity_create1, "QDomEntity_create1");

procedure del_QDomEntity(p:QDomEntityH);
pragma Import(C,del_QDomEntity, "del_QDomEntity");

function  QDomEntity_publicId(entity:QDomEntityH) return QStringH;
pragma Import(C,QDomEntity_publicId, "QDomEntity_publicId");

function  QDomEntity_systemId(entity:QDomEntityH) return QStringH;
pragma Import(C,QDomEntity_systemId, "QDomEntity_systemId");

function  QDomEntity_notationName(entity:QDomEntityH) return QStringH;
pragma Import(C,QDomEntity_notationName, "QDomEntity_notationName");

function  QDomEntity_nodeType(entity:QDomEntityH) return integer;
pragma Import(C,QDomEntity_nodeType, "QDomEntity_nodeType");

function  QDomEntity_isEntity(entity:QDomEntityH) return integer;
pragma Import(C,QDomEntity_isEntity, "QDomEntity_isEntity");

function  QDomEntity_create(entity:QDomEntityH) return QDomEntityH;

end Qt.QDomEntity;
