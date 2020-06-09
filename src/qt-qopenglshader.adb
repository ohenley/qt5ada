--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QOpenGLShader is 

 function  QOpenGLShader_compileSourceCode(handle:QOpenGLShaderH;source:QByteArrayH) return boolean is
 begin
   return  QOpenGLShader_compileSourceCode2(handle,source);
 end;

 function  QOpenGLShader_compileSourceCode(handle:QOpenGLShaderH;source:QStringH) return boolean is
 begin
   return  QOpenGLShader_compileSourceCode3(handle,source);
 end;

end;
