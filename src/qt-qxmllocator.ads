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

package Qt.QXmlLocator is

procedure del_QXmlLocator(p:QXmlLocatorH);
pragma Import(C,del_QXmlLocator, "del_QXmlLocator");

function  QXmlLocator_columnNumber(locator:QXmlLocatorH) return integer;
pragma Import(C,QXmlLocator_columnNumber, "QXmlLocator_columnNumber");

function  QXmlLocator_lineNumber(locator:QXmlLocatorH) return integer;
pragma Import(C,QXmlLocator_lineNumber, "QXmlLocator_lineNumber");

end Qt.QXmlLocator;
