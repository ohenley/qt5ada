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

package Qt.QXmlErrorHandler is

function  QXmlErrorHandler_warning(handler:QXmlErrorHandlerH;except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlErrorHandler_warning, "QXmlErrorHandler_warning");

function  QXmlErrorHandler_error(handler:QXmlErrorHandlerH;except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlErrorHandler_error, "QXmlErrorHandler_error");

function  QXmlErrorHandler_fatalError(handler:QXmlErrorHandlerH;except:QXmlParseExceptionH) return integer;
pragma Import(C,QXmlErrorHandler_fatalError, "QXmlErrorHandler_fatalError");

function  QXmlErrorHandler_errorString(handler:QXmlErrorHandlerH) return QStringH;
pragma Import(C,QXmlErrorHandler_errorString, "QXmlErrorHandler_errorString");

end Qt.QXmlErrorHandler;
