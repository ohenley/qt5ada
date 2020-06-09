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

package body Qt.QOpenGLShaderProgram is 

 function  QOpenGLShaderProgram_addShaderFromSourceCode(handle:not null QOpenGLShaderProgramH;typ:ShaderType;source:QByteArrayH) return boolean is
 begin
   return  QOpenGLShaderProgram_addShaderFromSourceCode2(handle,typ,source);
 end;

 function  QOpenGLShaderProgram_addShaderFromSourceCode(handle:not null QOpenGLShaderProgramH;typ:ShaderType;source:QStringH) return boolean is
 begin
   return  QOpenGLShaderProgram_addShaderFromSourceCode3(handle,typ,source);
 end;

 procedure QOpenGLShaderProgram_bindAttributeLocation(handle:not null QOpenGLShaderProgramH;name:QByteArrayH; location:integer) is
 begin
   QOpenGLShaderProgram_bindAttributeLocation2(handle,name,location);
 end;

 procedure QOpenGLShaderProgram_bindAttributeLocation(handle:not null QOpenGLShaderProgramH;name:QStringH; location:integer) is
 begin
   QOpenGLShaderProgram_bindAttributeLocation3(handle,name,location);
 end;

 function  QOpenGLShaderProgram_attributeLocation(handle:not null QOpenGLShaderProgramH;name:QByteArrayH) return integer is
 begin
  return  QOpenGLShaderProgram_attributeLocation2(handle,name);
 end;

 function  QOpenGLShaderProgram_attributeLocation(handle:not null QOpenGLShaderProgramH;name:QStringH) return integer is
 begin
  return  QOpenGLShaderProgram_attributeLocation3(handle,name);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y: GLfloat) is
 begin
  QOpenGLShaderProgram_setAttributeValue2(handle,location, x,y);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z:GLfloat) is
 begin
   QOpenGLShaderProgram_setAttributeValue3(handle,location,x,y,z);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z,w: GLfloat) is
 begin
   QOpenGLShaderProgram_setAttributeValue4(handle,location,x,y,z,w);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector2DH) is
 begin
   QOpenGLShaderProgram_setAttributeValue5(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector3DH) is
 begin
   QOpenGLShaderProgram_setAttributeValue6(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector4DH) is
 begin
  QOpenGLShaderProgram_setAttributeValue7(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QColorH) is
 begin
   QOpenGLShaderProgram_setAttributeValue8(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLfloat; columns,rows:integer) is
 begin
   QOpenGLShaderProgram_setAttributeValue9(handle,location,values,columns,rows);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLfloat) is
 begin
   QOpenGLShaderProgram_setAttributeValue10(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y: GLfloat) is
 begin
   QOpenGLShaderProgram_setAttributeValue11(handle,name,x,y);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z:GLfloat) is
 begin
   QOpenGLShaderProgram_setAttributeValue12(handle,name,x,y,z);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z,w: GLfloat) is
 begin
   QOpenGLShaderProgram_setAttributeValue13(handle,name,x,y,z,w);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector2DH) is
 begin
   QOpenGLShaderProgram_setAttributeValue14(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector3DH) is
 begin
  QOpenGLShaderProgram_setAttributeValue15(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector4DH) is
 begin
  QOpenGLShaderProgram_setAttributeValue16(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QColorH) is
 begin
  QOpenGLShaderProgram_setAttributeValue17(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setAttributeValue(handle:not null QOpenGLShaderProgramH;name:zstring; values:pGLfloat; columns,rows:integer) is
 begin
   QOpenGLShaderProgram_setAttributeValue18(handle,name,values,columns,rows);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer; values:QVector2DH; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeArray2(handle,location,values,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector3DH; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeArray3(handle,location,values);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector4DH; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeArray4(handle,location,values,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;location:integer;typ:GLenum;values:void_Star; tupleSize:integer; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeArray5(handle,location,typ,values,tupleSize,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLfloat; tupleSize:integer; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeArray6(handle,name,values,tupleSize,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring; values:QVector2DH; stride:integer := 0) is
 begin
   QOpenGLShaderProgram_setAttributeArray7(handle,name,values,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring;  values:QVector3DH; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeArray8(handle,name,values,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring;  values:QVector4DH; stride:integer := 0) is
 begin
   QOpenGLShaderProgram_setAttributeArray9(handle,name,values,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring; typ:GLenum;values:void_Star; tupleSize:integer; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeArray10(handle,name,typ,values,tupleSize,stride);
 end;

 procedure QOpenGLShaderProgram_setAttributeBuffer(handle:not null QOpenGLShaderProgramH;name:zstring; typ:GLenum; offset,tupleSize:integer; stride:integer := 0) is
 begin
  QOpenGLShaderProgram_setAttributeBuffer2(handle,name,typ,offset,tupleSize,stride);
 end;

 procedure QOpenGLShaderProgram_enableAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring) is
 begin
  QOpenGLShaderProgram_enableAttributeArray2(handle,name);
 end;

 procedure QOpenGLShaderProgram_disableAttributeArray(handle:not null QOpenGLShaderProgramH;name:zstring) is
 begin
   QOpenGLShaderProgram_disableAttributeArray2(handle,name);
 end;

 function  QOpenGLShaderProgram_uniformLocation(handle:not null QOpenGLShaderProgramH;name:QByteArrayH) return integer is
 begin
  return  QOpenGLShaderProgram_uniformLocation2(handle,name);
 end;

 function  QOpenGLShaderProgram_uniformLocation(handle:not null QOpenGLShaderProgramH;name:QStringH) return integer is
 begin
  return  QOpenGLShaderProgram_uniformLocation3(handle,name);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:GLint) is
 begin
   QOpenGLShaderProgram_setUniformValue2(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:GLuint) is
 begin
  QOpenGLShaderProgram_setUniformValue3(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y: GLfloat) is
 begin
   QOpenGLShaderProgram_setUniformValue4(handle,location,x,y);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z: GLfloat) is
 begin
   QOpenGLShaderProgram_setUniformValue5(handle,location,x,y,z);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; x,y,z,w: GLfloat) is
 begin
  QOpenGLShaderProgram_setUniformValue6(handle,location,x,y,z,w);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector2DH) is
 begin
   QOpenGLShaderProgram_setUniformValue7(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QVector3DH) is
 begin
   QOpenGLShaderProgram_setUniformValue8(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QVector4DH) is
 begin
   QOpenGLShaderProgram_setUniformValue9(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;color:QColorH) is
 begin
   QOpenGLShaderProgram_setUniformValue10(handle,location,color);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;point:QPointH) is
 begin
  QOpenGLShaderProgram_setUniformValue11(handle,location,point);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;point:QPointFH) is
 begin
   QOpenGLShaderProgram_setUniformValue12(handle,location,point);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;size:QSizeH) is
 begin
   QOpenGLShaderProgram_setUniformValue13(handle,location,size);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;size:QSizeFH) is
 begin
   QOpenGLShaderProgram_setUniformValue14(handle,location,size);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix2x2H) is
 begin
   QOpenGLShaderProgram_setUniformValue15(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix2x3H) is
 begin
  QOpenGLShaderProgram_setUniformValue16(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix2x4H) is
 begin
   QOpenGLShaderProgram_setUniformValue17(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix3x2H) is
 begin
   QOpenGLShaderProgram_setUniformValue18(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix3x3H) is
 begin
   QOpenGLShaderProgram_setUniformValue19(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix3x4H) is
 begin
   QOpenGLShaderProgram_setUniformValue20(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix4x2H) is
 begin
   QOpenGLShaderProgram_setUniformValue21(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QMatrix4x3H) is
 begin
   QOpenGLShaderProgram_setUniformValue22(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer; value:QMatrix4x4H) is
 begin
   QOpenGLShaderProgram_setUniformValue23(handle,location,value);
 end;
 
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;location:integer;value:QTransformH) is
 begin
   QOpenGLShaderProgram_setUniformValue27(handle,location,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLfloat) is
 begin
  QOpenGLShaderProgram_setUniformValue28(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLint) is
 begin
   QOpenGLShaderProgram_setUniformValue29(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; value:GLuint) is
 begin
   QOpenGLShaderProgram_setUniformValue30(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y: GLfloat) is
 begin
   QOpenGLShaderProgram_setUniformValue31(handle,name,x,y);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring; x,y,z:GLfloat) is
 begin
   QOpenGLShaderProgram_setUniformValue32(handle,name,x,y,z);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;x,y,z,w:GLfloat) is
 begin
  QOpenGLShaderProgram_setUniformValue33(handle,name,x,y,z,w);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector2DH) is
 begin
  QOpenGLShaderProgram_setUniformValue34(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector3DH) is
 begin
  QOpenGLShaderProgram_setUniformValue35(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QVector4DH) is
 begin
  QOpenGLShaderProgram_setUniformValue36(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;color:QColorH) is
 begin
  QOpenGLShaderProgram_setUniformValue37(handle,name,color);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;point:QPointH) is
 begin
   QOpenGLShaderProgram_setUniformValue38(handle,name,point);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;point:QPointFH) is
 begin
  QOpenGLShaderProgram_setUniformValue39(handle,name,point);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;size:QSizeH) is
 begin
  QOpenGLShaderProgram_setUniformValue40(handle,name,size);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;size:QSizeFH) is
 begin
  QOpenGLShaderProgram_setUniformValue41(handle,name,size);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x2H) is
 begin
  QOpenGLShaderProgram_setUniformValue42(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x3H) is
 begin
  QOpenGLShaderProgram_setUniformValue43(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix2x4H) is
 begin
  QOpenGLShaderProgram_setUniformValue44(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x2H) is
 begin
  QOpenGLShaderProgram_setUniformValue45(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x3H) is
 begin
   QOpenGLShaderProgram_setUniformValue46(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix3x4H) is
 begin
  QOpenGLShaderProgram_setUniformValue47(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x2H) is
 begin
  QOpenGLShaderProgram_setUniformValue48(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x3H) is
 begin
   QOpenGLShaderProgram_setUniformValue49(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QMatrix4x4H) is
 begin
   QOpenGLShaderProgram_setUniformValue50(handle,name,value);
 end;
 
 procedure QOpenGLShaderProgram_setUniformValue(handle:not null QOpenGLShaderProgramH;name:zstring;value:QTransformH) is
 begin
   QOpenGLShaderProgram_setUniformValue54(handle,name,value);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLint; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray2(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:pGLuint; count:integer) is
 begin
   QOpenGLShaderProgram_setUniformValueArray3(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector2DH; count:integer) is
 begin
   QOpenGLShaderProgram_setUniformValueArray4(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector3DH; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray5(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QVector4DH; count:integer) is
 begin
   QOpenGLShaderProgram_setUniformValueArray6(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x2H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray7(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x3H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray8(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix2x4H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray9(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x2H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray10(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x3H; count:integer) is
 begin
   QOpenGLShaderProgram_setUniformValueArray11(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix3x4H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray12(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x2H; count:integer) is
 begin
   QOpenGLShaderProgram_setUniformValueArray13(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x3H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray14(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;location:integer;values:QMatrix4x4H; count:integer) is
 begin
   QOpenGLShaderProgram_setUniformValueArray15(handle,location,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLfloat; count:integer; tupleSize:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray16(handle,name,values,count,tupleSize);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLint; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray17(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:pGLuint; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray18(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector2DH; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray19(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector3DH; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray20(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QVector4DH; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray21(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x2H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray22(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x3H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray23(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix2x4H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray24(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x2H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray25(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x3H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray26(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix3x4H; count:integer) is
 begin
   QOpenGLShaderProgram_setUniformValueArray27(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x2H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray28(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x3H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray29(handle,name,values,count);
 end;

 procedure QOpenGLShaderProgram_setUniformValueArray(handle:not null QOpenGLShaderProgramH;name:zstring;values:QMatrix4x4H; count:integer) is
 begin
  QOpenGLShaderProgram_setUniformValueArray30(handle,name,values,count);
 end;

end;
