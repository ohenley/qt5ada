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
package Qt.QOpenGLFunctions is 

 type OpenGLFeature is new GLenum;
 subtype OpenGLFeatures is OpenGLFeature;
    
 Multitexture          : OpenGLFeature := 16#0001#;
 Shaders               : OpenGLFeature := 16#0002#;
 Buffers               : OpenGLFeature := 16#0004#;
 Framebuffers          : OpenGLFeature := 16#0008#;
 BlendColor            : OpenGLFeature := 16#0010#;
 BlendEquation         : OpenGLFeature := 16#0020#;
 BlendEquationSeparate : OpenGLFeature := 16#0040#;
 BlendFuncSeparate     : OpenGLFeature := 16#0080#;
 BlendSubtract         : OpenGLFeature := 16#0100#;
 CompressedTextures    : OpenGLFeature := 16#0200#;
 Multisample           : OpenGLFeature := 16#0400#;
 StencilSeparate       : OpenGLFeature := 16#0800#;
 NPOTTextures          : OpenGLFeature := 16#1000#;
 NPOTTextureRepeat     : OpenGLFeature := 16#2000#;
 FixedFunctionPipeline : OpenGLFeature := 16#4000#;
     

 function  QOpenGLFunctions_create return QOpenGLFunctionsH;
 pragma Import(C,QOpenGLFunctions_create, "QOpenGLFunctions_create");
 
 function  QOpenGLFunctions_create2(context:QOpenGLContextH) return QOpenGLFunctionsH;
 pragma Import(C,QOpenGLFunctions_create2, "QOpenGLFunctions_create2");
 
 procedure QOpenGLFunctions_destroy(handle:QOpenGLFunctionsH);
 pragma Import(C,QOpenGLFunctions_destroy, "QOpenGLFunctions_destroy");
 
 function  QOpenGLFunctions_openGLFeatures(handle:QOpenGLFunctionsH) return OpenGLFeatures;
 pragma Import(C,QOpenGLFunctions_openGLFeatures, "QOpenGLFunctions_openGLFeatures");
 
 function  QOpenGLFunctions_QOpenGLFunctions_hasOpenGLFeature(handle:QOpenGLFunctionsH; feature:OpenGLFeature) return boolean;
 pragma Import(C,QOpenGLFunctions_QOpenGLFunctions_hasOpenGLFeature, "QOpenGLFunctions_QOpenGLFunctions_hasOpenGLFeature");
 
 procedure QOpenGLFunctions_initializeOpenGLFunctions(handle:QOpenGLFunctionsH);
 pragma Import(C,QOpenGLFunctions_initializeOpenGLFunctions, "QOpenGLFunctions_initializeOpenGLFunctions");
 
 -- GLES2 + OpenGL1 common subset 

 procedure QOpenGLFunctions_glBindTexture(handle:QOpenGLFunctionsH;target:GLenum;texture:GLuint);
 pragma Import(C,QOpenGLFunctions_glBindTexture, "QOpenGLFunctions_glBindTexture");
 
 procedure QOpenGLFunctions_glBlendFunc(handle:QOpenGLFunctionsH;sfactor,dfactor:GLenum);
 pragma Import(C,QOpenGLFunctions_glBlendFunc, "QOpenGLFunctions_glBlendFunc");
 
 procedure QOpenGLFunctions_glClear(handle:QOpenGLFunctionsH;mask:GLbitfield);
 pragma Import(C,QOpenGLFunctions_glClear, "QOpenGLFunctions_glClear");
 
 procedure QOpenGLFunctions_glClearColor(handle:QOpenGLFunctionsH;red,green,blue,alpha:GLclampf);
 pragma Import(C,QOpenGLFunctions_glClearColor, "QOpenGLFunctions_glClearColor");
 
 procedure QOpenGLFunctions_glClearStencil(handle:QOpenGLFunctionsH;s:GLint);
 pragma Import(C,QOpenGLFunctions_glClearStencil, "QOpenGLFunctions_glClearStencil");
 
 procedure QOpenGLFunctions_glColorMask(handle:QOpenGLFunctionsH;red,green,blue,alpha:GLboolean);
 pragma Import(C,QOpenGLFunctions_glColorMask, "QOpenGLFunctions_glColorMask");
 
 procedure QOpenGLFunctions_glCopyTexImage2D(handle:QOpenGLFunctionsH;target:GLenum;level:GLint;internalformat:GLenum;x,y:GLint;width,height:GLsizei;border:GLint);
 pragma Import(C,QOpenGLFunctions_glCopyTexImage2D, "QOpenGLFunctions_glCopyTexImage2D");
 
 procedure QOpenGLFunctions_glCopyTexSubImage2D(handle:QOpenGLFunctionsH;target:GLenum;level,xoffset,yoffset,x,y:GLint;width,height:GLsizei);
 pragma Import(C,QOpenGLFunctions_glCopyTexSubImage2D, "QOpenGLFunctions_glCopyTexSubImage2D");
 
 procedure QOpenGLFunctions_glCullFace(handle:QOpenGLFunctionsH;mode:GLenum);
 pragma Import(C,QOpenGLFunctions_glCullFace, "QOpenGLFunctions_glCullFace");
 
 procedure QOpenGLFunctions_glDeleteTextures(handle:QOpenGLFunctionsH;n:GLsizei;textures:pGLuint);
 pragma Import(C,QOpenGLFunctions_glDeleteTextures, "QOpenGLFunctions_glDeleteTextures");
 
 procedure QOpenGLFunctions_glDepthFunc(handle:QOpenGLFunctionsH;func:GLenum);
 pragma Import(C,QOpenGLFunctions_glDepthFunc, "QOpenGLFunctions_glDepthFunc");
 
 procedure QOpenGLFunctions_glDepthMask(handle:QOpenGLFunctionsH;flag:GLboolean);
 pragma Import(C,QOpenGLFunctions_glDepthMask, "QOpenGLFunctions_glDepthMask");
 
 procedure QOpenGLFunctions_glDisable(handle:QOpenGLFunctionsH;cap:GLenum);
 pragma Import(C,QOpenGLFunctions_glDisable, "QOpenGLFunctions_glDisable");
 
 procedure QOpenGLFunctions_glDrawArrays(handle:QOpenGLFunctionsH;mode:GLenum;first:GLint; count:GLsizei);
 pragma Import(C,QOpenGLFunctions_glDrawArrays, "QOpenGLFunctions_glDrawArrays");
 
 procedure QOpenGLFunctions_glDrawElements(handle:QOpenGLFunctionsH;mode:GLenum; count:GLsizei;typ:GLenum;indices:void_Star);
 pragma Import(C,QOpenGLFunctions_glDrawElements, "QOpenGLFunctions_glDrawElements");
 
 procedure QOpenGLFunctions_glEnable(handle:QOpenGLFunctionsH;cap:GLenum);
 pragma Import(C,QOpenGLFunctions_glEnable, "QOpenGLFunctions_glEnable");
 
 procedure QOpenGLFunctions_glFinish(handle:QOpenGLFunctionsH);
 pragma Import(C,QOpenGLFunctions_glFinish, "QOpenGLFunctions_glFinish");
 
 procedure QOpenGLFunctions_glFlush(handle:QOpenGLFunctionsH);
 pragma Import(C,QOpenGLFunctions_glFlush, "QOpenGLFunctions_glFlush");
 
 procedure QOpenGLFunctions_glFrontFace(handle:QOpenGLFunctionsH;mode:GLenum);
 pragma Import(C,QOpenGLFunctions_glFrontFace, "QOpenGLFunctions_glFrontFace");
 
 procedure QOpenGLFunctions_glGenTextures(handle:QOpenGLFunctionsH;n:GLsizei;textures:pGLuint);
 pragma Import(C,QOpenGLFunctions_glGenTextures, "QOpenGLFunctions_glGenTextures");
 
 procedure QOpenGLFunctions_glGetBooleanv(handle:QOpenGLFunctionsH;pname:GLenum;params:pGLboolean);
 pragma Import(C,QOpenGLFunctions_glGetBooleanv, "QOpenGLFunctions_glGetBooleanv");
 
 function  QOpenGLFunctions_glGetError(handle:QOpenGLFunctionsH) return GLenum;
 pragma Import(C,QOpenGLFunctions_glGetError, "QOpenGLFunctions_glGetError");
 
 procedure QOpenGLFunctions_glGetFloatv(handle:QOpenGLFunctionsH;pname:GLenum; params:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glGetFloatv, "QOpenGLFunctions_glGetFloatv");
 
 procedure QOpenGLFunctions_glGetIntegerv(handle:QOpenGLFunctionsH;pname:GLenum; params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetIntegerv, "QOpenGLFunctions_glGetIntegerv");
 
 function  QOpenGLFunctions_glGetString(handle:QOpenGLFunctionsH;name:GLenum) return pGLubyte;
 pragma Import(C,QOpenGLFunctions_glGetString, "QOpenGLFunctions_glGetString");
 
 procedure QOpenGLFunctions_glGetTexParameterfv(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum; params:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glGetTexParameterfv, "QOpenGLFunctions_glGetTexParameterfv");
 
 procedure QOpenGLFunctions_glGetTexParameteriv(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum; params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetTexParameteriv, "QOpenGLFunctions_glGetTexParameteriv");
 
 procedure QOpenGLFunctions_glHint(handle:QOpenGLFunctionsH;target:GLenum; mode:GLenum);
 pragma Import(C,QOpenGLFunctions_glHint, "QOpenGLFunctions_glHint");
 
 function  QOpenGLFunctions_glIsEnabled(handle:QOpenGLFunctionsH;cap:GLenum) return GLboolean;
 pragma Import(C,QOpenGLFunctions_glIsEnabled, "QOpenGLFunctions_glIsEnabled");
 
 function  QOpenGLFunctions_glIsTexture(handle:QOpenGLFunctionsH;texture:GLuint) return GLboolean;
 pragma Import(C,QOpenGLFunctions_glIsTexture, "QOpenGLFunctions_glIsTexture");
 
 procedure QOpenGLFunctions_glLineWidth(handle:QOpenGLFunctionsH;width:GLfloat);
 pragma Import(C,QOpenGLFunctions_glLineWidth, "QOpenGLFunctions_glLineWidth");
 
 procedure QOpenGLFunctions_glPixelStorei(handle:QOpenGLFunctionsH;pname:GLenum;param:GLint);
 pragma Import(C,QOpenGLFunctions_glPixelStorei, "QOpenGLFunctions_glPixelStorei");
 
 procedure QOpenGLFunctions_glPolygonOffset(handle:QOpenGLFunctionsH;factor,units :GLfloat );
 pragma Import(C,QOpenGLFunctions_glPolygonOffset, "QOpenGLFunctions_glPolygonOffset");
 
 procedure QOpenGLFunctions_glReadPixels(handle:QOpenGLFunctionsH;x,y:GLint;width,height:GLsizei;format:GLenum;typ:GLenum;pixels:void_Star);
 pragma Import(C,QOpenGLFunctions_glReadPixels, "QOpenGLFunctions_glReadPixels");
 
 procedure QOpenGLFunctions_glScissor(handle:QOpenGLFunctionsH;x,y:GLint;width,height:GLsizei);
 pragma Import(C,QOpenGLFunctions_glScissor, "QOpenGLFunctions_glScissor");
 
 procedure QOpenGLFunctions_glStencilFunc(handle:QOpenGLFunctionsH;func:GLenum;ref:GLint; mask:GLuint);
 pragma Import(C,QOpenGLFunctions_glStencilFunc, "QOpenGLFunctions_glStencilFunc");
 
 procedure QOpenGLFunctions_glStencilMask(handle:QOpenGLFunctionsH;mask:GLuint);
 pragma Import(C,QOpenGLFunctions_glStencilMask, "QOpenGLFunctions_glStencilMask");
 
 procedure QOpenGLFunctions_glStencilOp(handle:QOpenGLFunctionsH;fail:GLenum;zfail:GLenum;zpass:GLenum);
 pragma Import(C,QOpenGLFunctions_glStencilOp, "QOpenGLFunctions_glStencilOp");
 
 procedure QOpenGLFunctions_glTexImage2D(handle:QOpenGLFunctionsH;target:GLenum;level,internalformat:GLint; width,height:GLsizei;border:GLint; format,typ:GLenum;pixels:void_Star);
 pragma Import(C,QOpenGLFunctions_glTexImage2D, "QOpenGLFunctions_glTexImage2D");
 
 procedure QOpenGLFunctions_glTexParameterf(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum; param:GLfloat);
 pragma Import(C,QOpenGLFunctions_glTexParameterf, "QOpenGLFunctions_glTexParameterf");
 
 procedure QOpenGLFunctions_glTexParameterfv(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum;params:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glTexParameterfv, "QOpenGLFunctions_glTexParameterfv");
 
 procedure QOpenGLFunctions_glTexParameteri(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum; param:GLint);
 pragma Import(C,QOpenGLFunctions_glTexParameteri, "QOpenGLFunctions_glTexParameteri");
 
 procedure QOpenGLFunctions_glTexParameteriv(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum;params:pGLint);
 pragma Import(C,QOpenGLFunctions_glTexParameteriv, "QOpenGLFunctions_glTexParameteriv");
 
 procedure QOpenGLFunctions_glTexSubImage2D(handle:QOpenGLFunctionsH;target:GLenum; level,xoffset,yoffset:GLint; width,height:GLsizei; format:GLenum; typ:GLenum; pixels:void_Star);
 pragma Import(C,QOpenGLFunctions_glTexSubImage2D, "QOpenGLFunctions_glTexSubImage2D");
 
 procedure QOpenGLFunctions_glViewport(handle:QOpenGLFunctionsH;x,y:GLint; width,height:GLsizei);
 pragma Import(C,QOpenGLFunctions_glViewport, "QOpenGLFunctions_glViewport");
 
 -- GL(ES)2 

 procedure QOpenGLFunctions_glActiveTexture(handle:QOpenGLFunctionsH;texture:GLenum);
 pragma Import(C,QOpenGLFunctions_glActiveTexture, "QOpenGLFunctions_glActiveTexture");
 
 procedure QOpenGLFunctions_glAttachShader(handle:QOpenGLFunctionsH;program,shader:GLuint);
 pragma Import(C,QOpenGLFunctions_glAttachShader, "QOpenGLFunctions_glAttachShader");
 
 procedure QOpenGLFunctions_glBindAttribLocation(handle:QOpenGLFunctionsH;program,index:GLuint;name:zstring);
 pragma Import(C,QOpenGLFunctions_glBindAttribLocation, "QOpenGLFunctions_glBindAttribLocation");
 
 procedure QOpenGLFunctions_glBindBuffer(handle:QOpenGLFunctionsH;target:GLenum;buffer:GLuint);
 pragma Import(C,QOpenGLFunctions_glBindBuffer, "QOpenGLFunctions_glBindBuffer");
 
 procedure QOpenGLFunctions_glBindFramebuffer(handle:QOpenGLFunctionsH;target:GLenum;framebuffer :GLuint);
 pragma Import(C,QOpenGLFunctions_glBindFramebuffer, "QOpenGLFunctions_glBindFramebuffer");
 
 procedure QOpenGLFunctions_glBindRenderbuffer(handle:QOpenGLFunctionsH;target:GLenum;renderbuffer:GLuint);
 pragma Import(C,QOpenGLFunctions_glBindRenderbuffer, "QOpenGLFunctions_glBindRenderbuffer");
 
 procedure QOpenGLFunctions_glBlendColor(handle:QOpenGLFunctionsH;red,green,blue,alpha:GLclampf);
 pragma Import(C,QOpenGLFunctions_glBlendColor, "QOpenGLFunctions_glBlendColor");
 
 procedure QOpenGLFunctions_glBlendEquation(handle:QOpenGLFunctionsH;mode:GLenum);
 pragma Import(C,QOpenGLFunctions_glBlendEquation, "QOpenGLFunctions_glBlendEquation");
 
 procedure QOpenGLFunctions_glBlendEquationSeparate(handle:QOpenGLFunctionsH;mode:GLenumRGB; modeAlpha:GLenum);
 pragma Import(C,QOpenGLFunctions_glBlendEquationSeparate, "QOpenGLFunctions_glBlendEquationSeparate");
 
 procedure QOpenGLFunctions_glBlendFuncSeparate(handle:QOpenGLFunctionsH;srcRGB,dstRGB,srcAlpha,dstAlpha:GLenum);
 pragma Import(C,QOpenGLFunctions_glBlendFuncSeparate, "QOpenGLFunctions_glBlendFuncSeparate");
 
 procedure QOpenGLFunctions_glBufferData(handle:QOpenGLFunctionsH;target:GLenum;size:pGLsizei; data:void_Star; usage:GLenum);
 pragma Import(C,QOpenGLFunctions_glBufferData, "QOpenGLFunctions_glBufferData");
 
 procedure QOpenGLFunctions_glBufferSubData(handle:QOpenGLFunctionsH;target:GLenum;offset:pGLint;size:pGLsizei; data:void_Star);
 pragma Import(C,QOpenGLFunctions_glBufferSubData, "QOpenGLFunctions_glBufferSubData");
 
 function  QOpenGLFunctions_glCheckFramebufferStatus(handle:QOpenGLFunctionsH;target:GLenum) return GLenum;
 pragma Import(C,QOpenGLFunctions_glCheckFramebufferStatus, "QOpenGLFunctions_glCheckFramebufferStatus");
 
 procedure QOpenGLFunctions_glClearDepthf(handle:QOpenGLFunctionsH;depth:GLclampf);
 pragma Import(C,QOpenGLFunctions_glClearDepthf, "QOpenGLFunctions_glClearDepthf");
 
 procedure QOpenGLFunctions_glCompileShader(handle:QOpenGLFunctionsH;shader:GLuint);
 pragma Import(C,QOpenGLFunctions_glCompileShader, "QOpenGLFunctions_glCompileShader");
 
 procedure QOpenGLFunctions_glCompressedTexImage2D(handle:QOpenGLFunctionsH;target:GLenum;level:GLint;internalformat:GLenum; width,height:GLsizei;border:GLint;imageSize:GLsizei;data:void_Star);
 pragma Import(C,QOpenGLFunctions_glCompressedTexImage2D, "QOpenGLFunctions_glCompressedTexImage2D");
 
 procedure QOpenGLFunctions_glCompressedTexSubImage2D(handle:QOpenGLFunctionsH;target:GLenum;level,xoffset,yoffset:GLint; width,height:GLsizei;format:GLenum;imageSize:GLsizei;data:void_Star);
 pragma Import(C,QOpenGLFunctions_glCompressedTexSubImage2D, "QOpenGLFunctions_glCompressedTexSubImage2D");
 
 function  QOpenGLFunctions_glCreateProgram(handle:QOpenGLFunctionsH) return GLuint;
 pragma Import(C,QOpenGLFunctions_glCreateProgram, "QOpenGLFunctions_glCreateProgram");
 
 function  QOpenGLFunctions_glCreateShader(handle:QOpenGLFunctionsH;typ:GLenum) return GLuint;
 pragma Import(C,QOpenGLFunctions_glCreateShader, "QOpenGLFunctions_glCreateShader");
 
 procedure QOpenGLFunctions_glDeleteBuffers(handle:QOpenGLFunctionsH;n:GLsizei; buffers:pGLuint);
 pragma Import(C,QOpenGLFunctions_glDeleteBuffers, "QOpenGLFunctions_glDeleteBuffers");
 
 procedure QOpenGLFunctions_glDeleteFramebuffers(handle:QOpenGLFunctionsH;n:GLsizei;framebuffers:pGLuint);
 pragma Import(C,QOpenGLFunctions_glDeleteFramebuffers, "QOpenGLFunctions_glDeleteFramebuffers");
 
 procedure QOpenGLFunctions_glDeleteProgram(handle:QOpenGLFunctionsH;program:GLuint);
 pragma Import(C,QOpenGLFunctions_glDeleteProgram, "QOpenGLFunctions_glDeleteProgram");
 
 procedure QOpenGLFunctions_glDeleteRenderbuffers(handle:QOpenGLFunctionsH;n:GLsizei;renderbuffers:pGLuint);
 pragma Import(C,QOpenGLFunctions_glDeleteRenderbuffers, "QOpenGLFunctions_glDeleteRenderbuffers");
 
 procedure QOpenGLFunctions_glDeleteShader(handle:QOpenGLFunctionsH;shader:GLuint);
 pragma Import(C,QOpenGLFunctions_glDeleteShader, "QOpenGLFunctions_glDeleteShader");
 
 procedure QOpenGLFunctions_glDepthRangef(handle:QOpenGLFunctionsH;zNear,zFar:GLclampf);
 pragma Import(C,QOpenGLFunctions_glDepthRangef, "QOpenGLFunctions_glDepthRangef");
 
 procedure QOpenGLFunctions_glDetachShader(handle:QOpenGLFunctionsH;program,shader:GLuint);
 pragma Import(C,QOpenGLFunctions_glDetachShader, "QOpenGLFunctions_glDetachShader");
 
 procedure QOpenGLFunctions_glDisableVertexAttribArray(handle:QOpenGLFunctionsH;index:GLuint);
 pragma Import(C,QOpenGLFunctions_glDisableVertexAttribArray, "QOpenGLFunctions_glDisableVertexAttribArray");
 
 procedure QOpenGLFunctions_glEnableVertexAttribArray(handle:QOpenGLFunctionsH;index:GLuint);
 pragma Import(C,QOpenGLFunctions_glEnableVertexAttribArray, "QOpenGLFunctions_glEnableVertexAttribArray");
 
 procedure QOpenGLFunctions_glFramebufferRenderbuffer(handle:QOpenGLFunctionsH;target,attachment,renderbuffertarget:GLenum;renderbuffer:GLuint);
 pragma Import(C,QOpenGLFunctions_glFramebufferRenderbuffer, "QOpenGLFunctions_glFramebufferRenderbuffer");
 
 procedure QOpenGLFunctions_glFramebufferTexture2D(handle:QOpenGLFunctionsH;target,attachment,textarget:GLenum;texture,level:GLint);
 pragma Import(C,QOpenGLFunctions_glFramebufferTexture2D, "QOpenGLFunctions_glFramebufferTexture2D");
 
 procedure QOpenGLFunctions_glGenBuffers(handle:QOpenGLFunctionsH;n:GLsizei;buffers:pGLuint);
 pragma Import(C,QOpenGLFunctions_glGenBuffers, "QOpenGLFunctions_glGenBuffers");
 
 procedure QOpenGLFunctions_glGenerateMipmap(handle:QOpenGLFunctionsH;target:GLenum);
 pragma Import(C,QOpenGLFunctions_glGenerateMipmap, "QOpenGLFunctions_glGenerateMipmap");
 
 procedure QOpenGLFunctions_glGenFramebuffers(handle:QOpenGLFunctionsH;n:GLsizei;framebuffers:pGLuint);
 pragma Import(C,QOpenGLFunctions_glGenFramebuffers, "QOpenGLFunctions_glGenFramebuffers");
 
 procedure QOpenGLFunctions_glGenRenderbuffers(handle:QOpenGLFunctionsH;n:GLsizei;renderbuffers:pGLuint);
 pragma Import(C,QOpenGLFunctions_glGenRenderbuffers, "QOpenGLFunctions_glGenRenderbuffers");
 
 procedure QOpenGLFunctions_glGetActiveAttrib(handle:QOpenGLFunctionsH;program,index:GLuint;bufsize:GLsizei;length:pGLsizei;size:pGLint;typ:pGLenum;name:zstring);
 pragma Import(C,QOpenGLFunctions_glGetActiveAttrib, "QOpenGLFunctions_glGetActiveAttrib");
 
 procedure QOpenGLFunctions_glGetActiveUniform(handle:QOpenGLFunctionsH;program,index:GLuint;bufsize:GLsizei;length:pGLsizei;size:pGLint;typ:pGLenum;name:zstring);
 pragma Import(C,QOpenGLFunctions_glGetActiveUniform, "QOpenGLFunctions_glGetActiveUniform");
 
 procedure QOpenGLFunctions_glGetAttachedShaders(handle:QOpenGLFunctionsH;program:GLuint;maxcount:GLsizei;count:pGLsizei;shaders:pGLuint);
 pragma Import(C,QOpenGLFunctions_glGetAttachedShaders, "QOpenGLFunctions_glGetAttachedShaders");
 
 function  QOpenGLFunctions_glGetAttribLocation(handle:QOpenGLFunctionsH;program:GLuint; name:zstring) return GLint;
 pragma Import(C,QOpenGLFunctions_glGetAttribLocation, "QOpenGLFunctions_glGetAttribLocation");
 
 procedure QOpenGLFunctions_glGetBufferParameteriv(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum; params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetBufferParameteriv, "QOpenGLFunctions_glGetBufferParameteriv");
 
 procedure QOpenGLFunctions_glGetFramebufferAttachmentParameteriv(handle:QOpenGLFunctionsH;target,attachment,pname:GLenum;params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetFramebufferAttachmentParameteriv, "QOpenGLFunctions_glGetFramebufferAttachmentParameteriv");
 
 procedure QOpenGLFunctions_glGetProgramiv(handle:QOpenGLFunctionsH;program:GLuint; pname:GLenum; params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetProgramiv, "QOpenGLFunctions_glGetProgramiv");
 
 procedure QOpenGLFunctions_glGetProgramInfoLog(handle:QOpenGLFunctionsH;program:GLuint;bufsize:GLsizei;length:pGLsizei;infolog:zstring);
 pragma Import(C,QOpenGLFunctions_glGetProgramInfoLog, "QOpenGLFunctions_glGetProgramInfoLog");
 
 procedure QOpenGLFunctions_glGetRenderbufferParameteriv(handle:QOpenGLFunctionsH;target:GLenum; pname:GLenum; params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetRenderbufferParameteriv, "QOpenGLFunctions_glGetRenderbufferParameteriv");
 
 procedure QOpenGLFunctions_glGetShaderiv(handle:QOpenGLFunctionsH;shader:GLuint; pname:GLenum; params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetShaderiv, "QOpenGLFunctions_glGetShaderiv");
 
 procedure QOpenGLFunctions_glGetShaderInfoLog(handle:QOpenGLFunctionsH;shader:GLuint;bufsize:GLsizei;length:pGLsizei;infolog:zstring);
 pragma Import(C,QOpenGLFunctions_glGetShaderInfoLog, "QOpenGLFunctions_glGetShaderInfoLog");
 
 procedure QOpenGLFunctions_glGetShaderPrecisionFormat(handle:QOpenGLFunctionsH;shadertype,precisiontype:GLenum;rng,precision:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetShaderPrecisionFormat, "QOpenGLFunctions_glGetShaderPrecisionFormat");
 
 procedure QOpenGLFunctions_glGetShaderSource(handle:QOpenGLFunctionsH;shader:GLuint;bufsize:GLsizei;length:pGLsizei;source:zstring);
 pragma Import(C,QOpenGLFunctions_glGetShaderSource, "QOpenGLFunctions_glGetShaderSource");
 
 procedure QOpenGLFunctions_glGetUniformfv(handle:QOpenGLFunctionsH;program:GLuint;location:GLint;params:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glGetUniformfv, "QOpenGLFunctions_glGetUniformfv");
 
 procedure QOpenGLFunctions_glGetUniformiv(handle:QOpenGLFunctionsH;program:GLuint;location:GLint;params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetUniformiv, "QOpenGLFunctions_glGetUniformiv");
 
 function  QOpenGLFunctions_glGetUniformLocation(handle:QOpenGLFunctionsH;program:GLuint;name:zstring) return GLint;
 pragma Import(C,QOpenGLFunctions_glGetUniformLocation, "QOpenGLFunctions_glGetUniformLocation");
 
 procedure QOpenGLFunctions_glGetVertexAttribfv(handle:QOpenGLFunctionsH;index:GLuint; pname:GLenum; params:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glGetVertexAttribfv, "QOpenGLFunctions_glGetVertexAttribfv");
 
 procedure QOpenGLFunctions_glGetVertexAttribiv(handle:QOpenGLFunctionsH;index:GLuint; pname:GLenum; params:pGLint);
 pragma Import(C,QOpenGLFunctions_glGetVertexAttribiv, "QOpenGLFunctions_glGetVertexAttribiv");
 
 procedure QOpenGLFunctions_glGetVertexAttribPointerv(handle:QOpenGLFunctionsH;index:GLuint; pname:GLenum;pointer:void_star);
 pragma Import(C,QOpenGLFunctions_glGetVertexAttribPointerv, "QOpenGLFunctions_glGetVertexAttribPointerv");
 
 function  QOpenGLFunctions_glIsBuffer(handle:QOpenGLFunctionsH;buffer:GLuint) return GLboolean;
 pragma Import(C,QOpenGLFunctions_glIsBuffer, "QOpenGLFunctions_glIsBuffer");
 
 function  QOpenGLFunctions_glIsFramebuffer(handle:QOpenGLFunctionsH;framebuffer:GLuint) return GLboolean;
 pragma Import(C,QOpenGLFunctions_glIsFramebuffer, "QOpenGLFunctions_glIsFramebuffer");
 
 function  QOpenGLFunctions_glIsProgram(handle:QOpenGLFunctionsH;program:GLuint) return GLboolean;
 pragma Import(C,QOpenGLFunctions_glIsProgram, "QOpenGLFunctions_glIsProgram");
 
 function  QOpenGLFunctions_glIsRenderbuffer(handle:QOpenGLFunctionsH;renderbuffer:GLuint) return GLboolean;
 pragma Import(C,QOpenGLFunctions_glIsRenderbuffer, "QOpenGLFunctions_glIsRenderbuffer");
 
 function  QOpenGLFunctions_glIsShader(handle:QOpenGLFunctionsH;shader:GLuint) return GLboolean;
 pragma Import(C,QOpenGLFunctions_glIsShader, "QOpenGLFunctions_glIsShader");
 
 procedure QOpenGLFunctions_glLinkProgram(handle:QOpenGLFunctionsH;program:GLuint);
 pragma Import(C,QOpenGLFunctions_glLinkProgram, "QOpenGLFunctions_glLinkProgram");
 
 procedure QOpenGLFunctions_glReleaseShaderCompiler(handle:QOpenGLFunctionsH);
 pragma Import(C,QOpenGLFunctions_glReleaseShaderCompiler, "QOpenGLFunctions_glReleaseShaderCompiler");
 
 procedure QOpenGLFunctions_glRenderbufferStorage(handle:QOpenGLFunctionsH;target:GLenum;internalformat:GLenum;width,height:GLsizei);
 pragma Import(C,QOpenGLFunctions_glRenderbufferStorage, "QOpenGLFunctions_glRenderbufferStorage");
 
 procedure QOpenGLFunctions_glSampleCoverage(handle:QOpenGLFunctionsH;value:GLclampf;invert:GLboolean);
 pragma Import(C,QOpenGLFunctions_glSampleCoverage, "QOpenGLFunctions_glSampleCoverage");
 
 procedure QOpenGLFunctions_glShaderBinary(handle:QOpenGLFunctionsH;n:GLint;shaders:pGLuint;binaryformat:GLenum;binary:void_star;length:GLint);
 pragma Import(C,QOpenGLFunctions_glShaderBinary, "QOpenGLFunctions_glShaderBinary");
 
 procedure QOpenGLFunctions_glShaderSource(handle:QOpenGLFunctionsH;shader:GLuint; count:GLsizei;str:void_Star;length:pGLint);
 pragma Import(C,QOpenGLFunctions_glShaderSource, "QOpenGLFunctions_glShaderSource");
 
 procedure QOpenGLFunctions_glStencilFuncSeparate(handle:QOpenGLFunctionsH;face,func:GLenum;ref:GLint; mask:GLuint);
 pragma Import(C,QOpenGLFunctions_glStencilFuncSeparate, "QOpenGLFunctions_glStencilFuncSeparate");
 
 procedure QOpenGLFunctions_glStencilMaskSeparate(handle:QOpenGLFunctionsH;face:GLenum; mask:GLuint);
 pragma Import(C,QOpenGLFunctions_glStencilMaskSeparate, "QOpenGLFunctions_glStencilMaskSeparate");
 
 procedure QOpenGLFunctions_glStencilOpSeparate(handle:QOpenGLFunctionsH;face,fail,zfail,zpass:GLenum);
 pragma Import(C,QOpenGLFunctions_glStencilOpSeparate, "QOpenGLFunctions_glStencilOpSeparate");
 
 procedure QOpenGLFunctions_glUniform1f(handle:QOpenGLFunctionsH;location:GLint; x:GLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform1f, "QOpenGLFunctions_glUniform1f");
 
 procedure QOpenGLFunctions_glUniform1fv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform1fv, "QOpenGLFunctions_glUniform1fv");
 
 procedure QOpenGLFunctions_glUniform1i(handle:QOpenGLFunctionsH;location,x:GLint);
 pragma Import(C,QOpenGLFunctions_glUniform1i, "QOpenGLFunctions_glUniform1i");
 
 procedure QOpenGLFunctions_glUniform1iv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLint);
 pragma Import(C,QOpenGLFunctions_glUniform1iv, "QOpenGLFunctions_glUniform1iv");
 
 procedure QOpenGLFunctions_glUniform2f(handle:QOpenGLFunctionsH;location:GLint;x,y:GLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform2f, "QOpenGLFunctions_glUniform2f");
 
 procedure QOpenGLFunctions_glUniform2fv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform2fv, "QOpenGLFunctions_glUniform2fv");
 
 procedure QOpenGLFunctions_glUniform2i(handle:QOpenGLFunctionsH;location:GLint; x,y:GLint);
 pragma Import(C,QOpenGLFunctions_glUniform2i, "QOpenGLFunctions_glUniform2i");
 
 procedure QOpenGLFunctions_glUniform2iv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLint);
 pragma Import(C,QOpenGLFunctions_glUniform2iv, "QOpenGLFunctions_glUniform2iv");
 
 procedure QOpenGLFunctions_glUniform3f(handle:QOpenGLFunctionsH;location:GLint;x,y,z:GLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform3f, "QOpenGLFunctions_glUniform3f");
 
 procedure QOpenGLFunctions_glUniform3fv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform3fv, "QOpenGLFunctions_glUniform3fv");
 
 procedure QOpenGLFunctions_glUniform3i(handle:QOpenGLFunctionsH;location,x,y,z:GLint);
 pragma Import(C,QOpenGLFunctions_glUniform3i, "QOpenGLFunctions_glUniform3i");
 
 procedure QOpenGLFunctions_glUniform3iv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLint);
 pragma Import(C,QOpenGLFunctions_glUniform3iv, "QOpenGLFunctions_glUniform3iv");
 
 procedure QOpenGLFunctions_glUniform4f(handle:QOpenGLFunctionsH;location:GLint;x,y,z,w: GLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform4f, "QOpenGLFunctions_glUniform4f");
 
 procedure QOpenGLFunctions_glUniform4fv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glUniform4fv, "QOpenGLFunctions_glUniform4fv");
 
 procedure QOpenGLFunctions_glUniform4i(handle:QOpenGLFunctionsH;location,x,y,z,w:GLint);
 pragma Import(C,QOpenGLFunctions_glUniform4i, "QOpenGLFunctions_glUniform4i");
 
 procedure QOpenGLFunctions_glUniform4iv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei;v:pGLint);
 pragma Import(C,QOpenGLFunctions_glUniform4iv, "QOpenGLFunctions_glUniform4iv");
 
 procedure QOpenGLFunctions_glUniformMatrix2fv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei; transpose:GLboolean;value:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glUniformMatrix2fv, "QOpenGLFunctions_glUniformMatrix2fv");
 
 procedure QOpenGLFunctions_glUniformMatrix3fv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei; transpose:GLboolean;value:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glUniformMatrix3fv, "QOpenGLFunctions_glUniformMatrix3fv");
 
 procedure QOpenGLFunctions_glUniformMatrix4fv(handle:QOpenGLFunctionsH;location:GLint; count:GLsizei; transpose:GLboolean;value:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glUniformMatrix4fv, "QOpenGLFunctions_glUniformMatrix4fv");
 
 procedure QOpenGLFunctions_glUseProgram(handle:QOpenGLFunctionsH;program:GLuint);
 pragma Import(C,QOpenGLFunctions_glUseProgram, "QOpenGLFunctions_glUseProgram");
 
 procedure QOpenGLFunctions_glValidateProgram(handle:QOpenGLFunctionsH;program:GLuint);
 pragma Import(C,QOpenGLFunctions_glValidateProgram, "QOpenGLFunctions_glValidateProgram");
 
 procedure QOpenGLFunctions_glVertexAttrib1f(handle:QOpenGLFunctionsH;indx:GLuint; x:GLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib1f, "QOpenGLFunctions_glVertexAttrib1f");
 
 procedure QOpenGLFunctions_glVertexAttrib1fv(handle:QOpenGLFunctionsH;indx:GLuint;values:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib1fv, "QOpenGLFunctions_glVertexAttrib1fv");
 
 procedure QOpenGLFunctions_glVertexAttrib2f(handle:QOpenGLFunctionsH;indx:GLuint; x,y:GLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib2f, "QOpenGLFunctions_glVertexAttrib2f");
 
 procedure QOpenGLFunctions_glVertexAttrib2fv(handle:QOpenGLFunctionsH;indx:GLuint;values:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib2fv, "QOpenGLFunctions_glVertexAttrib2fv");
 
 procedure QOpenGLFunctions_glVertexAttrib3f(handle:QOpenGLFunctionsH;indx:GLuint; x,y,z:GLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib3f, "QOpenGLFunctions_glVertexAttrib3f");
 
 procedure QOpenGLFunctions_glVertexAttrib3fv(handle:QOpenGLFunctionsH;indx:GLuint;values:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib3fv, "QOpenGLFunctions_glVertexAttrib3fv");
 
 procedure QOpenGLFunctions_glVertexAttrib4f(handle:QOpenGLFunctionsH;indx:GLuint; x,y,z,w:GLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib4f, "QOpenGLFunctions_glVertexAttrib4f");
 
 procedure QOpenGLFunctions_glVertexAttrib4fv(handle:QOpenGLFunctionsH;indx:GLuint;values:pGLfloat);
 pragma Import(C,QOpenGLFunctions_glVertexAttrib4fv, "QOpenGLFunctions_glVertexAttrib4fv");
 ----------------------------------------------------------------------
 function  QOpenGLFunctions_create(context:QOpenGLContextH) return QOpenGLFunctionsH;

end;
