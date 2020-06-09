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

package Qt.QXmlParseException is

function  QXmlParseException_create(name:QStringH;c,l:integer;p,s:QStringH) return QXmlParseExceptionH;
pragma Import(C,QXmlParseException_create, "QXmlParseException_create");

function  QXmlParseException_columnNumber(except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlParseException_columnNumber, "QXmlParseException_columnNumber");

function  QXmlParseException_lineNumber(except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlParseException_lineNumber, "QXmlParseException_lineNumber");

function  QXmlParseException_publicId(except:QXmlParseExceptionH) return QStringH;
pragma Import(C,QXmlParseException_publicId, "QXmlParseException_publicId");

function  QXmlParseException_systemId(except:QXmlParseExceptionH) return QStringH;
pragma Import(C,QXmlParseException_systemId, "QXmlParseException_systemId");

function  QXmlParseException_message(except:QXmlParseExceptionH) return QStringH;
pragma Import(C,QXmlParseException_message, "QXmlParseException_message");


end Qt.QXmlParseException;
