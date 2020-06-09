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

package Qt.QDomEntityReference is

function  QDomEntityReference_create return QDomEntityReferenceH;
pragma Import(C,QDomEntityReference_create, "QDomEntityReference_create");

function  QDomEntityReference_create1(ref:QDomEntityReferenceH) return QDomEntityReferenceH;
pragma Import(C,QDomEntityReference_create1, "QDomEntityReference_create1");

procedure del_QDomEntityReference(p:QDomEntityReferenceH);
pragma Import(C,del_QDomEntityReference, "del_QDomEntityReference");

function  QDomEntityReference_nodeType(ref:QDomEntityReferenceH) return integer;
pragma Import(C,QDomEntityReference_nodeType, "QDomEntityReference_nodeType");

function  QDomEntityReference_isEntityReference(ref:QDomEntityReferenceH) return integer;
pragma Import(C,QDomEntityReference_isEntityReference, "QDomEntityReference_isEntityReference");

function  QDomEntityReference_create(ref:QDomEntityReferenceH) return QDomEntityReferenceH;

end Qt.QDomEntityReference;
