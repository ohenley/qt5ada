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

package Qt.QXmlNamespaceSupport is

function  QXmlNamespaceSupport_create return QXmlNamespaceSupportH;
pragma Import(C,QXmlNamespaceSupport_create, "QXmlNamespaceSupport_create");

procedure del_QXmlNamespaceSupport(p:QXmlNamespaceSupportH);
pragma Import(C,del_QXmlNamespaceSupport, "del_QXmlNamespaceSupport");

procedure QXmlNamespaceSupport_setPrefix(spr:QXmlNamespaceSupportH;str,str2:QStringH);
pragma Import(C,QXmlNamespaceSupport_setPrefix, "QXmlNamespaceSupport_setPrefix");

function  QXmlNamespaceSupport_prefix(spr:QXmlNamespaceSupportH;str:QStringH) return QStringH;
pragma Import(C,QXmlNamespaceSupport_prefix, "QXmlNamespaceSupport_prefix");

function  QXmlNamespaceSupport_uri(spr:QXmlNamespaceSupportH;str:QStringH) return QStringH;
pragma Import(C,QXmlNamespaceSupport_uri, "QXmlNamespaceSupport_uri");

procedure QXmlNamespaceSupport_splitName(spr:QXmlNamespaceSupportH;str,str2,str3:QStringH);
pragma Import(C,QXmlNamespaceSupport_splitName, "QXmlNamespaceSupport_splitName");

procedure QXmlNamespaceSupport_processName(spr:QXmlNamespaceSupportH;str,str2,str3,str4:QStringH);
pragma Import(C,QXmlNamespaceSupport_processName, "QXmlNamespaceSupport_processName");

function  QXmlNamespaceSupport_prefixes(spr:QXmlNamespaceSupportH) return QStringListH;
pragma Import(C,QXmlNamespaceSupport_prefixes, "QXmlNamespaceSupport_prefixes");

function  QXmlNamespaceSupport_prefixes1(spr:QXmlNamespaceSupportH;str:QStringH) return QStringListH;
pragma Import(C,QXmlNamespaceSupport_prefixes1, "QXmlNamespaceSupport_prefixes1");

procedure QXmlNamespaceSupport_pushContext(spr:QXmlNamespaceSupportH);
pragma Import(C,QXmlNamespaceSupport_pushContext, "QXmlNamespaceSupport_pushContext");

procedure QXmlNamespaceSupport_popContext(spr:QXmlNamespaceSupportH);
pragma Import(C,QXmlNamespaceSupport_popContext, "QXmlNamespaceSupport_popContext");

procedure QXmlNamespaceSupport_reset(spr:QXmlNamespaceSupportH);
pragma Import(C,QXmlNamespaceSupport_reset, "QXmlNamespaceSupport_reset");

end Qt.QXmlNamespaceSupport;
