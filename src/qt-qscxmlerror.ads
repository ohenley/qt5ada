--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2016                           บ
-- บ Copyright (C) 2016                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QScxmlError is

 function  QScxmlError_create return QXmlErrorH;
 pragma Import(C,QScxmlError_create, "QScxmlError_create");
 
 function  QScxmlError_create2(fileName:QStringH ;line,column: integer;description: QStringH) return QXmlErrorH;
 pragma Import(C,QScxmlError_create2, "QScxmlError_create2");
 
 function  QScxmlError_create3(other:QXmlErrorH) return QXmlErrorH;
 pragma Import(C,QScxmlError_create3, "QScxmlError_create3");
 
 procedure QScxmlError_destroy(handle:not null QXmlErrorH);
 pragma Import(C,QScxmlError_destroy, "QScxmlError_destroy");
 
 function  QScxmlError_isValid(handle:not null QXmlErrorH) return boolean;
 pragma Import(C,QScxmlError_isValid, "QScxmlError_isValid");
 
 function  QScxmlError_fileName(handle:not null QXmlErrorH) return QStringH;
 pragma Import(C,QScxmlError_fileName, "QScxmlError_fileName");
 
 function  QScxmlError_line(handle:not null QXmlErrorH) return integer;
 pragma Import(C,QScxmlError_line, "QScxmlError_line");
 
 function  QScxmlError_column(handle:not null QXmlErrorH) return integer;
 pragma Import(C,QScxmlError_column, "QScxmlError_column");
 
 function  QScxmlError_description(handle:not null QXmlErrorH) return QStringH;
 pragma Import(C,QScxmlError_description, "QScxmlError_description");
 
 function  QScxmlError_toString(handle:not null QXmlErrorH) return QStringH;
 pragma Import(C,QScxmlError_toString, "QScxmlError_toString");
 
 function  QScxmlError_create(fileName:QStringH ;line,column: integer;description: QStringH) return QXmlErrorH;
 function  QScxmlError_create(other:QXmlErrorH) return QXmlErrorH;
end;
