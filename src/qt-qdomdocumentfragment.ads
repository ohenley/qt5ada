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

package Qt.QDomDocumentFragment is

function  QDomDocumentFragment_create return QDomDocumentFragmentH;
pragma Import(C,QDomDocumentFragment_create, "QDomDocumentFragment_create");

function  QDomDocumentFragment_create1(fragment:QDomDocumentFragmentH) return QDomDocumentFragmentH;
pragma Import(C,QDomDocumentFragment_create1, "QDomDocumentFragment_create1");

procedure del_QDomDocumentFragment(p:QDomDocumentFragmentH);
pragma Import(C,del_QDomDocumentFragment, "del_QDomDocumentFragment");

function  QDomDocumentFragment_nodeType(fragment:QDomDocumentFragmentH) return integer;
pragma Import(C,QDomDocumentFragment_nodeType, "QDomDocumentFragment_nodeType");

function  QDomDocumentFragment_isDocumentFragment(fragment:QDomDocumentFragmentH) return integer;
pragma Import(C,QDomDocumentFragment_isDocumentFragment, "QDomDocumentFragment_isDocumentFragment");

function  QDomDocumentFragment_create(fragment:QDomDocumentFragmentH) return QDomDocumentFragmentH;

end Qt.QDomDocumentFragment;
