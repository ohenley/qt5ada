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

with builtin; use builtin;
with Qt.QOpenGLGlobal; use Qt.QOpenGLGlobal;        
with Qt.QOpenGLShader; use Qt.QOpenGLShader;
package Qt.QOpenGLShaderProgram is 

type QOpenGLShaderProgramH is new QObjectH;

 function  QOpenGLShaderProgram_create(parent :QObjectH := null) return QOpenGLShaderProgramH;
 pragma Import(C,QOpenGLShaderProgram_create, "QOpenGLShaderProgram_create");
 
 procedure QOpenGLShaderProgram_destroy(handle:not null QOpenGLShaderProgramH);
 pragma Import(C,QOpenGLShaderProgram_destroy, "QOpenGLShaderProgram_destroy");
 
 function  QOpenGLShaderProgram_log(handle:not null QOpenGLShaderProgramH) return QStringH;
 pragma Import(C,QOpenGLShaderProgram_log, "QOpenGLShaderProgram_log");
 
 function  QOpenGLShaderProgram_addShader(handle:not null QOpenGLShaderProgramH;shader:QOpenGLShaderH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_addShader, "QOpenGLShaderProgram_addShader");
 
 procedure QOpenGLShaderProgram_removeShader(handle:not null QOpenGLShaderProgramH;shader:QOpenGLShaderH);
 pragma Import(C,QOpenGLShaderProgram_removeShader, "QOpenGLShaderProgram_removeShader");
 
 function  QOpenGLShaderProgram_shaders(handle:not null QOpenGLShaderProgramH) return QListH;
 pragma Import(C,QOpenGLShaderProgram_shaders, "QOpenGLShaderProgram_shaders");
 
 function  QOpenGLShaderProgram_addShaderFromSourceCode(handle:not null QOpenGLShaderProgramH;typ:ShaderType; source:zstring) return boolean;
 pragma Import(C,QOpenGLShaderProgram_addShaderFromSourceCode, "QOpenGLShaderProgram_addShaderFromSourceCode");
 
 function  QOpenGLShaderProgram_addShaderFromSourceCode2(handle:not null QOpenGLShaderProgramH;typ:ShaderType;source:QByteArrayH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_addShaderFromSourceCode2, "QOpenGLShaderProgram_addShaderFromSourceCode2");
 
 function  QOpenGLShaderProgram_addShaderFromSourceCode3(handle:not null QOpenGLShaderProgramH;typ:ShaderType;source:QStringH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_addShaderFromSourceCode3, "QOpenGLShaderProgram_addShaderFromSourceCode3");
 
 function  QOpenGLShaderProgram_addShaderFromSourceFile(handle:not null QOpenGLShaderProgramH;typ:ShaderType;fileName:QStringH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_addShaderFromSourceFile, "QOpenGLShaderProgram_addShaderFromSourceFile");
 
 procedure QOpenGLShaderProgram_removeAllShaders(handle:not null QOpenGLShaderProgramH);
 pragma Import(C,QOpenGLShaderProgram_removeAllShaders, "QOpenGLShaderProgram_removeAllShaders");
 
 function  QOpenGLShaderProgram_link(handle:not null QOpenGLShaderProgramH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_link, "QOpenGLShaderProgram_link");
 
 function  QOpenGLShaderProgram_isLinked(handle:not null QOpenGLShaderProgramH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_isLinked, "QOpenGLShaderProgram_isLinked");
 
 function  QOpenGLShaderProgram_bind(handle:not null QOpenGLShaderProgramH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_bind, "QOpenGLShaderProgram_bind");
 
 procedure QOpenGLShaderProgram_release(handle:not null QOpenGLShaderProgramH);
 pragma Import(C,QOpenGLShaderProgram_release, "QOpenGLShaderProgram_release");
 
 function  QOpenGLShaderProgram_createShaderProgram(handle:not null QOpenGLShaderProgramH) return boolean;
 pragma Import(C,QOpenGLShaderProgram_createShaderProgram, "QOpenGLShaderProgram_createShaderProgram");
 
 function  QOpenGLShaderProgram_programId(handle:not null QOpenGLShaderProgramH) return GLuint;
 pragma Import(C,QOpenGLShaderProgram_programId, "QOpenGLShaderProgram_programId");
 
 function  QOpenGLShaderProgram_maxGeometryOutputVertices(handle:not null QOpenGLShaderProgramH) return integer;
 pragma Import(C,QOpenGLShaderProgram_maxGeometryOutputVertices, "QOpenGLShaderProgram_maxGeometryOutputVertices");
 
 procedure QOpenGLShaderProgram_setPatchVertexCount(handle:not null QOpenGLShaderProgramH;count:integer);
 pragma Import(C,QOpenGLShaderProgram_setPatchVertexCount, "QOpenGLShaderProgram_setPatchVertexCount");
 
 function  QOpenGLShaderProgram_patchVertexCount(handle:not null QOpenGLShaderProgramH) return integer;
 pragma Import(C,QOpenGLShaderProgram_patchVertexCount, "QOpenGLShaderProgram_patchVertexCount");
 
 procedure QOpenGLShaderProgram_setDefaultOuterTessellationLevels(handle:not null QOpenGLShaderProgramH;levels:void_Star);
 pragma Import(C,QOpenGLShaderProgram_setDefaultOuterTessellationLevels, "QOpenGLShaderProgram_setDefaultOuterTessellationLevels");
 
 function  QOpenGLShaderProgram_defaultOuterTessellationLevels(handle:not null QOpenGLShaderProgramH) return void_Star;
 pragma Import(C,QOpenGLShaderProgram_defaultOuterTessellationLevels, "QOpenGLShaderProgram_defaultOuterTessellationLevels");
 
 procedure QOpenGLShaderProgram_setDefaultInnerTessellationLevels(handle:not null QOpenGLShaderProgramH;levels:void_Star);
 pragma Import(C,QOpenGLShaderProgram_setDefaultInnerTessellationLevels, "QOpenGLShaderProgram_setDefaultInnerTessellationLevels");
 
 function  QOpenGLShaderProgram_defaultInnerTessellationLevels(handle:not null QOpenGLShaderProgramH) return void_Star;
 pragma Import(C,QOpenGLShaderProgram_defaultInnerTessellationLevels, "QOpenGLShaderProgram_defaultInnerTessellationLevels");
 
 procedure QOpenGLShaderProgram_bindAttributeLocation(handle:not null QOpenGLShaderProgramH;name:zstring; location:integer);
 pragma Import(C,QOpenGLShaderProgram_bindAttributeLocation, "QOpenGLShaderProgram_bindAttributeLocation");
 
 procedure QOpenGLShaderProgram_bindAttributeLocation2(handle:not null QOpenGLShaderProgramH;name:QByteArrayH; location:integer);
 pragma Import(C,QOpenGLShaderProgram_bindAttributeLocation2, "QOpenGLShaderProgram_bindAttributeLocation2");
 
 procedure QOpenGLShaderProgram_bindAttributeLocation3(handle:not null QOpenGLShaderProgramH;name:QStringH; location:integer);
 pragma Import(C,QOpenGLShaderProgram_bindAttributeLocation3, "QOpenGLShaderProgram_bindAttributeLocation3");
 
 function  QOpenGLShaderProgram_attributeLocation(handle:not null QOpenGLShaderProgramH;name:zstring) return integer;
 pragma Import(C,QOpenGLShaderProgram_attributeLocation, "QOpenGLShaderProgram_attributeLocation");
 
 function  QOpenGLShaderProgram_attributeLocation2(handle:not null QOpenGLShaderProgramH;name:QByteArrayH) return integer;
 pragma Import(C,QOpenGLShaderProgram_attributeLocation2, "QOpenGLShaderProgram_attributeLocation2");
 
 function  QOpenGLShaderProgram_attributeLocation3(handle:not null QOpenGLShaderProgramH;name:QStringH) return integer;
 pragma Import(C,QOpenGLShaderProgram_attributeLocation3, "QOpenGLShaderProgram_attributeLocation3");
 
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer; value:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue, "QOpenGLShaderProgram_setAttributeValue");
 
 procedure QOpenGLShaderProgram_setAttributeValue2(handle:not null QOpenGLShaderProgramH;location:integer; x,y: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue2, "QOpenGLShaderProgram_setAttributeValue2");
 
 procedure QOpenGLShaderProgram_setAttributeValue3(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue3, "QOpenGLShaderProgram_setAttributeValue3");
 
 procedure QOpenGLShaderProgram_setAttributeValue4(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z,w: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue4, "QOpenGLShaderProgram_setAttributeValue4");
 
 procedure QOpenGLShaderProgram_setAttributeValue5(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector2DH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue5, "QOpenGLShaderProgram_setAttributeValue5");
 
 procedure QOpenGLShaderProgram_setAttributeValue6(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector3DH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue6, "QOpenGLShaderProgram_setAttributeValue6");
 
 procedure QOpenGLShaderProgram_setAttributeValue7(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector4DH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue7, "QOpenGLShaderProgram_setAttributeValue7");
 
 procedure QOpenGLShaderProgram_setAttributeValue8(handle:not null QOpenGLShaderProgramH;location:integer;value:QColorH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue8, "QOpenGLShaderProgram_setAttributeValue8");
 
 procedure QOpenGLShaderProgram_setAttributeValue9(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLfloat; columns,rows:integer);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue9, "QOpenGLShaderProgram_setAttributeValue9");
 
 procedure QOpenGLShaderProgram_setAttributeValue10(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue10, "QOpenGLShaderProgram_setAttributeValue10");
 
 procedure QOpenGLShaderProgram_setAttributeValue11(handle:not null QOpenGLShaderProgramH;name:zstring; x,y: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue11, "QOpenGLShaderProgram_setAttributeValue11");
 
 procedure QOpenGLShaderProgram_setAttributeValue12(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue12, "QOpenGLShaderProgram_setAttributeValue12");
 
 procedure QOpenGLShaderProgram_setAttributeValue13(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z,w: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue13, "QOpenGLShaderProgram_setAttributeValue13");
 
 procedure QOpenGLShaderProgram_setAttributeValue14(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector2DH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue14, "QOpenGLShaderProgram_setAttributeValue14");
 
 procedure QOpenGLShaderProgram_setAttributeValue15(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector3DH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue15, "QOpenGLShaderProgram_setAttributeValue15");
 
 procedure QOpenGLShaderProgram_setAttributeValue16(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector4DH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue16, "QOpenGLShaderProgram_setAttributeValue16");
 
 procedure QOpenGLShaderProgram_setAttributeValue17(handle:not null QOpenGLShaderProgramH;name:zstring;value:QColorH);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue17, "QOpenGLShaderProgram_setAttributeValue17");
 
 procedure QOpenGLShaderProgram_setAttributeValue18(handle:not null QOpenGLShaderProgramH;name:zstring; values:pGLfloat; columns,rows:integer);
 pragma Import(C,QOpenGLShaderProgram_setAttributeValue18, "QOpenGLShaderProgram_setAttributeValue18");
 
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer; values:pGLfloat; tupleSize:integer; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray, "QOpenGLShaderProgram_setAttributeArray");
 
 procedure QOpenGLShaderProgram_setAttributeArray2(handle:not null QOpenGLShaderProgramH;location:integer; values:QVector2DH; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray2, "QOpenGLShaderProgram_setAttributeArray2");
 
 procedure QOpenGLShaderProgram_setAttributeArray3(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector3DH; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray3, "QOpenGLShaderProgram_setAttributeArray3");
 
 procedure QOpenGLShaderProgram_setAttributeArray4(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector4DH; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray4, "QOpenGLShaderProgram_setAttributeArray4");
 
 procedure QOpenGLShaderProgram_setAttributeArray5(handle:not null QOpenGLShaderProgramH;location:integer;typ:GLenum;values:void_Star; tupleSize:integer; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray5, "QOpenGLShaderProgram_setAttributeArray5");
 
 procedure QOpenGLShaderProgram_setAttributeArray6(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLfloat; tupleSize:integer; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray6, "QOpenGLShaderProgram_setAttributeArray6");
 
 procedure QOpenGLShaderProgram_setAttributeArray7(handle:not null QOpenGLShaderProgramH;name:zstring; values:QVector2DH; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray7, "QOpenGLShaderProgram_setAttributeArray7");
 
 procedure QOpenGLShaderProgram_setAttributeArray8(handle:not null QOpenGLShaderProgramH;name:zstring;  values:QVector3DH; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray8, "QOpenGLShaderProgram_setAttributeArray8");
 
 procedure QOpenGLShaderProgram_setAttributeArray9(handle:not null QOpenGLShaderProgramH;name:zstring;  values:QVector4DH; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray9, "QOpenGLShaderProgram_setAttributeArray9");
 
 procedure QOpenGLShaderProgram_setAttributeArray10(handle:not null QOpenGLShaderProgramH;name:zstring; typ:GLenum;values:void_Star; tupleSize:integer; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeArray10, "QOpenGLShaderProgram_setAttributeArray10");
 
 procedure QOpenGLShaderProgram_setAttributeBuffer(handle:not null QOpenGLShaderProgramH;location:integer; typ:GLenum; offset, tupleSize:integer; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeBuffer, "QOpenGLShaderProgram_setAttributeBuffer");
 
 procedure QOpenGLShaderProgram_setAttributeBuffer2(handle:not null QOpenGLShaderProgramH;name:zstring; typ:GLenum; offset,tupleSize:integer; stride:integer := 0);
 pragma Import(C,QOpenGLShaderProgram_setAttributeBuffer2, "QOpenGLShaderProgram_setAttributeBuffer2");
 
 procedure QOpenGLShaderProgram_enableAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer);
 pragma Import(C,QOpenGLShaderProgram_enableAttributeArray, "QOpenGLShaderProgram_enableAttributeArray");
 
 procedure QOpenGLShaderProgram_enableAttributeArray2(handle:not null QOpenGLShaderProgramH;name:zstring);
 pragma Import(C,QOpenGLShaderProgram_enableAttributeArray2, "QOpenGLShaderProgram_enableAttributeArray2");
 
 procedure QOpenGLShaderProgram_disableAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer);
 pragma Import(C,QOpenGLShaderProgram_disableAttributeArray, "QOpenGLShaderProgram_disableAttributeArray");
 
 procedure QOpenGLShaderProgram_disableAttributeArray2(handle:not null QOpenGLShaderProgramH;name:zstring);
 pragma Import(C,QOpenGLShaderProgram_disableAttributeArray2, "QOpenGLShaderProgram_disableAttributeArray2");
 
 function  QOpenGLShaderProgram_uniformLocation(handle:not null QOpenGLShaderProgramH;name:zstring) return integer;
 pragma Import(C,QOpenGLShaderProgram_uniformLocation, "QOpenGLShaderProgram_uniformLocation");
 
 function  QOpenGLShaderProgram_uniformLocation2(handle:not null QOpenGLShaderProgramH;name:QByteArrayH) return integer;
 pragma Import(C,QOpenGLShaderProgram_uniformLocation2, "QOpenGLShaderProgram_uniformLocation2");
 
 function  QOpenGLShaderProgram_uniformLocation3(handle:not null QOpenGLShaderProgramH;name:QStringH) return integer;
 pragma Import(C,QOpenGLShaderProgram_uniformLocation3, "QOpenGLShaderProgram_uniformLocation3");
 
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue, "QOpenGLShaderProgram_setUniformValue");
 
 procedure QOpenGLShaderProgram_setUniformValue2(handle:not null QOpenGLShaderProgramH;location:integer; value:GLint);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue2, "QOpenGLShaderProgram_setUniformValue2");
 
 procedure QOpenGLShaderProgram_setUniformValue3(handle:not null QOpenGLShaderProgramH;location:integer; value:GLuint);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue3, "QOpenGLShaderProgram_setUniformValue3");
 
 procedure QOpenGLShaderProgram_setUniformValue4(handle:not null QOpenGLShaderProgramH;location:integer; x,y: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue4, "QOpenGLShaderProgram_setUniformValue4");
 
 procedure QOpenGLShaderProgram_setUniformValue5(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue5, "QOpenGLShaderProgram_setUniformValue5");
 
 procedure QOpenGLShaderProgram_setUniformValue6(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z,w: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue6, "QOpenGLShaderProgram_setUniformValue6");
 
 procedure QOpenGLShaderProgram_setUniformValue7(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector2DH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue7, "QOpenGLShaderProgram_setUniformValue7");
 
 procedure QOpenGLShaderProgram_setUniformValue8(handle:not null QOpenGLShaderProgramH;location:integer; value:QVector3DH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue8, "QOpenGLShaderProgram_setUniformValue8");
 
 procedure QOpenGLShaderProgram_setUniformValue9(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector4DH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue9, "QOpenGLShaderProgram_setUniformValue9");
 
 procedure QOpenGLShaderProgram_setUniformValue10(handle:not null QOpenGLShaderProgramH;location:integer;color:QColorH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue10, "QOpenGLShaderProgram_setUniformValue10");
 
 procedure QOpenGLShaderProgram_setUniformValue11(handle:not null QOpenGLShaderProgramH;location:integer;point:QPointH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue11, "QOpenGLShaderProgram_setUniformValue11");
 
 procedure QOpenGLShaderProgram_setUniformValue12(handle:not null QOpenGLShaderProgramH;location:integer;point:QPointFH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue12, "QOpenGLShaderProgram_setUniformValue12");
 
 procedure QOpenGLShaderProgram_setUniformValue13(handle:not null QOpenGLShaderProgramH;location:integer;size:QSizeH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue13, "QOpenGLShaderProgram_setUniformValue13");
 
 procedure QOpenGLShaderProgram_setUniformValue14(handle:not null QOpenGLShaderProgramH;location:integer;size:QSizeFH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue14, "QOpenGLShaderProgram_setUniformValue14");
 
 procedure QOpenGLShaderProgram_setUniformValue15(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix2x2H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue15, "QOpenGLShaderProgram_setUniformValue15");
 
 procedure QOpenGLShaderProgram_setUniformValue16(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix2x3H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue16, "QOpenGLShaderProgram_setUniformValue16");
 
 procedure QOpenGLShaderProgram_setUniformValue17(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix2x4H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue17, "QOpenGLShaderProgram_setUniformValue17");
 
 procedure QOpenGLShaderProgram_setUniformValue18(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix3x2H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue18, "QOpenGLShaderProgram_setUniformValue18");
 
 procedure QOpenGLShaderProgram_setUniformValue19(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix3x3H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue19, "QOpenGLShaderProgram_setUniformValue19");
 
 procedure QOpenGLShaderProgram_setUniformValue20(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix3x4H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue20, "QOpenGLShaderProgram_setUniformValue20");
 
 procedure QOpenGLShaderProgram_setUniformValue21(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix4x2H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue21, "QOpenGLShaderProgram_setUniformValue21");
 
 procedure QOpenGLShaderProgram_setUniformValue22(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix4x3H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue22, "QOpenGLShaderProgram_setUniformValue22");
 
 procedure QOpenGLShaderProgram_setUniformValue23(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix4x4H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue23, "QOpenGLShaderProgram_setUniformValue23");
 
-- [2][2]
 procedure QOpenGLShaderProgram_setUniformValue24(handle:not null QOpenGLShaderProgramH;location:integer;  value:pGLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue24, "QOpenGLShaderProgram_setUniformValue24");
 
 -- [3][3]
 procedure QOpenGLShaderProgram_setUniformValue25(handle:not null QOpenGLShaderProgramH;location:integer;  value:pGLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue25, "QOpenGLShaderProgram_setUniformValue25");
 
 -- [4][4]
 procedure QOpenGLShaderProgram_setUniformValue26(handle:not null QOpenGLShaderProgramH;location:integer;  value:pGLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue26, "QOpenGLShaderProgram_setUniformValue26");
 
 procedure QOpenGLShaderProgram_setUniformValue27(handle:not null QOpenGLShaderProgramH;location:integer;value:QTransformH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue27, "QOpenGLShaderProgram_setUniformValue27");
 
 procedure QOpenGLShaderProgram_setUniformValue28(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue28, "QOpenGLShaderProgram_setUniformValue28");
 
 procedure QOpenGLShaderProgram_setUniformValue29(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLint);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue29, "QOpenGLShaderProgram_setUniformValue29");
 
 procedure QOpenGLShaderProgram_setUniformValue30(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLuint);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue30, "QOpenGLShaderProgram_setUniformValue30");
 
 procedure QOpenGLShaderProgram_setUniformValue31(handle:not null QOpenGLShaderProgramH;name:zstring; x,y: GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue31, "QOpenGLShaderProgram_setUniformValue31");
 
 procedure QOpenGLShaderProgram_setUniformValue32(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue32, "QOpenGLShaderProgram_setUniformValue32");
 
 procedure QOpenGLShaderProgram_setUniformValue33(handle:not null QOpenGLShaderProgramH;name:zstring;x,y,z,w:GLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue33, "QOpenGLShaderProgram_setUniformValue33");
 
 procedure QOpenGLShaderProgram_setUniformValue34(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector2DH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue34, "QOpenGLShaderProgram_setUniformValue34");
 
 procedure QOpenGLShaderProgram_setUniformValue35(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector3DH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue35, "QOpenGLShaderProgram_setUniformValue35");
 
 procedure QOpenGLShaderProgram_setUniformValue36(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector4DH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue36, "QOpenGLShaderProgram_setUniformValue36");
 
 procedure QOpenGLShaderProgram_setUniformValue37(handle:not null QOpenGLShaderProgramH;name:zstring;color:QColorH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue37, "QOpenGLShaderProgram_setUniformValue37");
 
 procedure QOpenGLShaderProgram_setUniformValue38(handle:not null QOpenGLShaderProgramH;name:zstring;point:QPointH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue38, "QOpenGLShaderProgram_setUniformValue38");
 
 procedure QOpenGLShaderProgram_setUniformValue39(handle:not null QOpenGLShaderProgramH;name:zstring;point:QPointFH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue39, "QOpenGLShaderProgram_setUniformValue39");
 
 procedure QOpenGLShaderProgram_setUniformValue40(handle:not null QOpenGLShaderProgramH;name:zstring;size:QSizeH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue40, "QOpenGLShaderProgram_setUniformValue40");
 
 procedure QOpenGLShaderProgram_setUniformValue41(handle:not null QOpenGLShaderProgramH;name:zstring;size:QSizeFH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue41, "QOpenGLShaderProgram_setUniformValue41");
 
 procedure QOpenGLShaderProgram_setUniformValue42(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x2H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue42, "QOpenGLShaderProgram_setUniformValue42");
 
 procedure QOpenGLShaderProgram_setUniformValue43(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x3H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue43, "QOpenGLShaderProgram_setUniformValue43");
 
 procedure QOpenGLShaderProgram_setUniformValue44(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x4H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue44, "QOpenGLShaderProgram_setUniformValue44");
 
 procedure QOpenGLShaderProgram_setUniformValue45(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x2H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue45, "QOpenGLShaderProgram_setUniformValue45");
 
 procedure QOpenGLShaderProgram_setUniformValue46(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x3H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue46, "QOpenGLShaderProgram_setUniformValue46");
 
 procedure QOpenGLShaderProgram_setUniformValue47(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x4H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue47, "QOpenGLShaderProgram_setUniformValue47");
 
 procedure QOpenGLShaderProgram_setUniformValue48(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x2H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue48, "QOpenGLShaderProgram_setUniformValue48");
 
 procedure QOpenGLShaderProgram_setUniformValue49(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x3H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue49, "QOpenGLShaderProgram_setUniformValue49");
 
 procedure QOpenGLShaderProgram_setUniformValue50(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x4H);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue50, "QOpenGLShaderProgram_setUniformValue50");
 
 -- [2][2]                                      -- [2][2]
 procedure QOpenGLShaderProgram_setUniformValue51(handle:not null QOpenGLShaderProgramH;name:zstring; value:pGLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue51, "QOpenGLShaderProgram_setUniformValue51");
 
 -- [3][3]
 procedure QOpenGLShaderProgram_setUniformValue52(handle:not null QOpenGLShaderProgramH;name:zstring; value:pGLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue52, "QOpenGLShaderProgram_setUniformValue52");
 
-- [4][4]
 procedure QOpenGLShaderProgram_setUniformValue53(handle:not null QOpenGLShaderProgramH;name:zstring; value:pGLfloat);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue53, "QOpenGLShaderProgram_setUniformValue53");
 
 procedure QOpenGLShaderProgram_setUniformValue54(handle:not null QOpenGLShaderProgramH;name:zstring;value:QTransformH);
 pragma Import(C,QOpenGLShaderProgram_setUniformValue54, "QOpenGLShaderProgram_setUniformValue54");
 
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLfloat; count:integer; tupleSize:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray, "QOpenGLShaderProgram_setUniformValueArray");
 
 procedure QOpenGLShaderProgram_setUniformValueArray2(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLint; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray2, "QOpenGLShaderProgram_setUniformValueArray2");
 
 procedure QOpenGLShaderProgram_setUniformValueArray3(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLuint; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray3, "QOpenGLShaderProgram_setUniformValueArray3");
 
 procedure QOpenGLShaderProgram_setUniformValueArray4(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector2DH; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray4, "QOpenGLShaderProgram_setUniformValueArray4");
 
 procedure QOpenGLShaderProgram_setUniformValueArray5(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector3DH; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray5, "QOpenGLShaderProgram_setUniformValueArray5");
 
 procedure QOpenGLShaderProgram_setUniformValueArray6(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector4DH; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray6, "QOpenGLShaderProgram_setUniformValueArray6");
 
 procedure QOpenGLShaderProgram_setUniformValueArray7(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x2H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray7, "QOpenGLShaderProgram_setUniformValueArray7");
 
 procedure QOpenGLShaderProgram_setUniformValueArray8(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x3H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray8, "QOpenGLShaderProgram_setUniformValueArray8");
 
 procedure QOpenGLShaderProgram_setUniformValueArray9(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x4H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray9, "QOpenGLShaderProgram_setUniformValueArray9");
 
 procedure QOpenGLShaderProgram_setUniformValueArray10(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x2H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray10, "QOpenGLShaderProgram_setUniformValueArray10");
 
 procedure QOpenGLShaderProgram_setUniformValueArray11(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x3H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray11, "QOpenGLShaderProgram_setUniformValueArray11");
 
 procedure QOpenGLShaderProgram_setUniformValueArray12(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x4H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray12, "QOpenGLShaderProgram_setUniformValueArray12");
 
 procedure QOpenGLShaderProgram_setUniformValueArray13(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x2H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray13, "QOpenGLShaderProgram_setUniformValueArray13");
 
 procedure QOpenGLShaderProgram_setUniformValueArray14(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x3H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray14, "QOpenGLShaderProgram_setUniformValueArray14");
 
 procedure QOpenGLShaderProgram_setUniformValueArray15(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x4H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray15, "QOpenGLShaderProgram_setUniformValueArray15");
 
 procedure QOpenGLShaderProgram_setUniformValueArray16(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLfloat; count:integer; tupleSize:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray16, "QOpenGLShaderProgram_setUniformValueArray16");
 
 procedure QOpenGLShaderProgram_setUniformValueArray17(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLint; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray17, "QOpenGLShaderProgram_setUniformValueArray17");
 
 procedure QOpenGLShaderProgram_setUniformValueArray18(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLuint; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray18, "QOpenGLShaderProgram_setUniformValueArray18");
 
 procedure QOpenGLShaderProgram_setUniformValueArray19(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector2DH; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray19, "QOpenGLShaderProgram_setUniformValueArray19");
 
 procedure QOpenGLShaderProgram_setUniformValueArray20(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector3DH; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray20, "QOpenGLShaderProgram_setUniformValueArray20");
 
 procedure QOpenGLShaderProgram_setUniformValueArray21(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector4DH; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray21, "QOpenGLShaderProgram_setUniformValueArray21");
 
 procedure QOpenGLShaderProgram_setUniformValueArray22(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x2H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray22, "QOpenGLShaderProgram_setUniformValueArray22");
 
 procedure QOpenGLShaderProgram_setUniformValueArray23(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x3H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray23, "QOpenGLShaderProgram_setUniformValueArray23");
 
 procedure QOpenGLShaderProgram_setUniformValueArray24(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x4H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray24, "QOpenGLShaderProgram_setUniformValueArray24");
 
 procedure QOpenGLShaderProgram_setUniformValueArray25(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x2H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray25, "QOpenGLShaderProgram_setUniformValueArray25");
 
 procedure QOpenGLShaderProgram_setUniformValueArray26(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x3H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray26, "QOpenGLShaderProgram_setUniformValueArray26");
 
 procedure QOpenGLShaderProgram_setUniformValueArray27(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x4H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray27, "QOpenGLShaderProgram_setUniformValueArray27");
 
 procedure QOpenGLShaderProgram_setUniformValueArray28(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x2H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray28, "QOpenGLShaderProgram_setUniformValueArray28");
 
 procedure QOpenGLShaderProgram_setUniformValueArray29(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x3H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray29, "QOpenGLShaderProgram_setUniformValueArray29");
 
 procedure QOpenGLShaderProgram_setUniformValueArray30(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x4H; count:integer);
 pragma Import(C,QOpenGLShaderProgram_setUniformValueArray30, "QOpenGLShaderProgram_setUniformValueArray30");
 
 function  QOpenGLShaderProgram_hasOpenGLShaderPrograms(context:QOpenGLContextH := null) return boolean;
 pragma Import(C,QOpenGLShaderProgram_hasOpenGLShaderPrograms, "QOpenGLShaderProgram_hasOpenGLShaderPrograms");
 
--------------------------------------------------------------------------
 function  QOpenGLShaderProgram_addShaderFromSourceCode(handle:not null QOpenGLShaderProgramH;typ:ShaderType;source:QByteArrayH) return boolean;
 function  QOpenGLShaderProgram_addShaderFromSourceCode(handle:not null QOpenGLShaderProgramH;typ:ShaderType;source:QStringH) return boolean;
 procedure QOpenGLShaderProgram_bindAttributeLocation(handle:not null QOpenGLShaderProgramH;name:QByteArrayH; location:integer);
 procedure QOpenGLShaderProgram_bindAttributeLocation(handle:not null QOpenGLShaderProgramH;name:QStringH; location:integer);
 function  QOpenGLShaderProgram_attributeLocation(handle:not null QOpenGLShaderProgramH;name:QByteArrayH) return integer;
 function  QOpenGLShaderProgram_attributeLocation(handle:not null QOpenGLShaderProgramH;name:QStringH) return integer;
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y: GLfloat);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z:GLfloat);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z,w: GLfloat);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector2DH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector3DH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector4DH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QColorH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLfloat; columns,rows:integer);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLfloat);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y: GLfloat);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z:GLfloat);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z,w: GLfloat);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector2DH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector3DH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector4DH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QColorH);
 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; values:pGLfloat; columns,rows:integer);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer; values:QVector2DH; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector3DH; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector4DH; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer;typ:GLenum;values:void_Star; tupleSize:integer; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLfloat; tupleSize:integer; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring; values:QVector2DH; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring;  values:QVector3DH; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring;  values:QVector4DH; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring; typ:GLenum;values:void_Star; tupleSize:integer; stride:integer := 0);
 procedure QOpenGLShaderProgram_setAttributeBuffer(handle:not null QOpenGLShaderProgramH;name:zstring; typ:GLenum; offset,tupleSize:integer; stride:integer := 0);
 procedure QOpenGLShaderProgram_enableAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring);
 procedure QOpenGLShaderProgram_disableAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring);
 function  QOpenGLShaderProgram_uniformLocation(handle:not null QOpenGLShaderProgramH;name:QByteArrayH) return integer;
 function  QOpenGLShaderProgram_uniformLocation(handle:not null QOpenGLShaderProgramH;name:QStringH) return integer;
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:GLint);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:GLuint);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y: GLfloat);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z: GLfloat);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z,w: GLfloat);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector2DH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QVector3DH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector4DH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;color:QColorH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;point:QPointH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;point:QPointFH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;size:QSizeH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;size:QSizeFH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix2x2H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix2x3H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix2x4H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix3x2H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix3x3H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix3x4H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix4x2H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix4x3H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix4x4H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QTransformH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLfloat);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLint);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLuint);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y: GLfloat);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z:GLfloat);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;x,y,z,w:GLfloat);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector2DH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector3DH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector4DH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;color:QColorH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;point:QPointH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;point:QPointFH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;size:QSizeH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;size:QSizeFH);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x2H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x3H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x4H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x2H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x3H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x4H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x2H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x3H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x4H);
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QTransformH);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLint; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLuint; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector2DH; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector3DH; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector4DH; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x2H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x3H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x4H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x2H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x3H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x4H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x2H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x3H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x4H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLfloat; count:integer; tupleSize:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLint; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLuint; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector2DH; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector3DH; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector4DH; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x2H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x3H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x4H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x2H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x3H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x4H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x2H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x3H; count:integer);
 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x4H; count:integer);

end;
