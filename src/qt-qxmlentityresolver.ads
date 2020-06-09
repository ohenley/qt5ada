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

package Qt.QXmlEntityResolver is

function  QXmlEntityResolver_resolveEntity(resolver:QXmlEntityResolverH;publicId,systemId:QStringH;ret:QXmlInputSourceH) return integer;
pragma Import(C,QXmlEntityResolver_resolveEntity, "QXmlEntityResolver_resolveEntity");

function  QXmlEntityResolver_errorString(resolver:QXmlEntityResolverH) return QStringH;
pragma Import(C,QXmlEntityResolver_errorString, "QXmlEntityResolver_errorString");


end Qt.QXmlEntityResolver;
