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

package Qt.QScxmlCompiler is

 function  QScxmlCompiler_create( xmlReader:QXmlStreamReaderH) return QXmlCompilerH ;
 pragma Import(C,QScxmlCompiler_create, "QScxmlCompiler_create");
 
 procedure QScxmlCompiler_destroy(handle:not null QXmlCompilerH);
 pragma Import(C,QScxmlCompiler_destroy, "QScxmlCompiler_destroy");
 
 function  QScxmlCompiler_fileName(handle:not null QXmlCompilerH) return QStringH;
 pragma Import(C,QScxmlCompiler_fileName, "QScxmlCompiler_fileName");
 
 procedure QScxmlCompiler_setFileName(handle:not null QXmlCompilerH;fileName:QStringH);
 pragma Import(C,QScxmlCompiler_setFileName, "QScxmlCompiler_setFileName");
 
 function  QScxmlCompiler_loader(handle:not null QXmlCompilerH) return QLoaderH;
 pragma Import(C,QScxmlCompiler_loader, "QScxmlCompiler_loader");
 
 procedure QScxmlCompiler_setLoader(handle:not null QXmlCompilerH;newLoader:QLoaderH);
 pragma Import(C,QScxmlCompiler_setLoader, "QScxmlCompiler_setLoader");
 
 procedure QScxmlCompiler_compile(handle:not null QXmlCompilerH);
 pragma Import(C,QScxmlCompiler_compile, "QScxmlCompiler_compile");
 
 function  QScxmlCompiler_errors(handle:not null QXmlCompilerH) return QVectorH;
 pragma Import(C,QScxmlCompiler_errors, "QScxmlCompiler_errors");
 
end;
