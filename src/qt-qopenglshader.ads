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

with Qt.QOpenGLGlobal; use Qt.QOpenGLGlobal;        
with builtin; use builtin;
package Qt.QOpenGLShader is 

type QOpenGLShaderH is new QObjectH;
subtype ShaderType is cardinal; 
    
 Vertex                 : constant := 16#001#;
 Fragment               : constant := 16#002#;
 Geometry               : constant := 16#004#;
 TessellationControl    : constant := 16#008#;
 TessellationEvaluation : constant := 16#010#;
 Compute                : constant := 16#020#;
     
 function  QOpenGLShader_create(typ:ShaderType;parent:QObjectH := null) return QOpenGLShaderH;
 pragma Import(C,QOpenGLShader_create, "QOpenGLShader_create");
 
 procedure QOpenGLShader_destroy(handle:QOpenGLShaderH);
 pragma Import(C,QOpenGLShader_destroy, "QOpenGLShader_destroy");
 
 function  QOpenGLShader_compileSourceCode(handle:QOpenGLShaderH;source:zstring) return boolean;
 pragma Import(C,QOpenGLShader_compileSourceCode, "QOpenGLShader_compileSourceCode");
 
 function  QOpenGLShader_compileSourceCode2(handle:QOpenGLShaderH;source:QByteArrayH) return boolean;
 pragma Import(C,QOpenGLShader_compileSourceCode2, "QOpenGLShader_compileSourceCode2");
 
 function  QOpenGLShader_compileSourceCode3(handle:QOpenGLShaderH;source:QStringH) return boolean;
 pragma Import(C,QOpenGLShader_compileSourceCode3, "QOpenGLShader_compileSourceCode3");
 
 function  QOpenGLShader_compileSourceFile(handle:QOpenGLShaderH;fileName:QStringH) return boolean;
 pragma Import(C,QOpenGLShader_compileSourceFile, "QOpenGLShader_compileSourceFile");
 
 function  QOpenGLShader_sourceCode(handle:QOpenGLShaderH) return QByteArrayH;
 pragma Import(C,QOpenGLShader_sourceCode, "QOpenGLShader_sourceCode");
 
 function  QOpenGLShader_isCompiled(handle:QOpenGLShaderH) return boolean;
 pragma Import(C,QOpenGLShader_isCompiled, "QOpenGLShader_isCompiled");
 
 function  QOpenGLShader_log(handle:QOpenGLShaderH) return QStringH;
 pragma Import(C,QOpenGLShader_log, "QOpenGLShader_log");
 
 function  QOpenGLShader_shaderId(handle:QOpenGLShaderH) return GLuint;
 pragma Import(C,QOpenGLShader_shaderId, "QOpenGLShader_shaderId");
 
 function  QOpenGLShader_hasOpenGLShaders(typ:ShaderType;context:QOpenGLContextH := null) return boolean;
 pragma Import(C,QOpenGLShader_hasOpenGLShaders, "QOpenGLShader_hasOpenGLShaders");

------------------------------------------------------------------
 function  QOpenGLShader_compileSourceCode(handle:QOpenGLShaderH;source:QByteArrayH) return boolean;
 function  QOpenGLShader_compileSourceCode(handle:QOpenGLShaderH;source:QStringH) return boolean;
 
end;
