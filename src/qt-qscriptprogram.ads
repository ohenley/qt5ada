--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2019                           บ
-- บ Copyright (C) 2019                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString; use Qt.QString;     
package QT.QScriptProgram is

 function  QScriptProgram_create(sourceCode:QStringH ;fileName :QStringH := QString_create; firstLineNumber :integer :=  1) return QScriptProgramH;
 pragma Import(C,QScriptProgram_create, "QScriptProgram_create");
 
 function  QScriptProgram_create2 return QScriptProgramH;
 pragma Import(C,QScriptProgram_create2, "QScriptProgram_create2");
 
 function  QScriptProgram_create3(other:QScriptProgramH) return QScriptProgramH;
 pragma Import(C,QScriptProgram_create3, "QScriptProgram_create3");
 
 procedure QScriptProgram_destroy(handle:not null QScriptProgramH);
 pragma Import(C,QScriptProgram_destroy, "QScriptProgram_destroy");
 
 function  QScriptProgram_isNull(handle:not null QScriptProgramH) return boolean;
 pragma Import(C,QScriptProgram_isNull, "QScriptProgram_isNull");
 
 function  QScriptProgram_sourceCode(handle:not null QScriptProgramH) return QStringH;
 pragma Import(C,QScriptProgram_sourceCode, "QScriptProgram_sourceCode");
 
 function  QScriptProgram_fileName(handle:not null QScriptProgramH) return QStringH;
 pragma Import(C,QScriptProgram_fileName, "QScriptProgram_fileName");
 
 function  QScriptProgram_firstLineNumber(handle:not null QScriptProgramH) return integer;
 pragma Import(C,QScriptProgram_firstLineNumber, "QScriptProgram_firstLineNumber");
 
 function  QScriptProgram_eq(handle:not null QScriptProgramH;other:QScriptProgramH) return boolean;
 pragma Import(C,QScriptProgram_eq, "QScriptProgram_eq");
 

end;
