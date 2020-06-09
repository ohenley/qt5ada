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
with Qt.QSurfaceFormat;
package Qt.QOpenGLContext is

 type OpenGLModuleType is (LibGL,LibGLES);
 pragma convention(C,OpenGLModuleType);
 
 function  QOpenGLVersionProfile_create return QOpenGLVersionProfileH;
 pragma Import(C,QOpenGLVersionProfile_create, "QOpenGLVersionProfile_create");
 
 function  QOpenGLVersionProfile_create2(other:QOpenGLVersionProfileH) return QOpenGLVersionProfileH;
 pragma Import(C,QOpenGLVersionProfile_create2, "QOpenGLVersionProfile_create2");
 
 function  QOpenGLVersionProfile_create3(format:QSurfaceFormatH) return QOpenGLVersionProfileH;
 pragma Import(C,QOpenGLVersionProfile_create3, "QOpenGLVersionProfile_create3");
 
 procedure QOpenGLVersionProfile_destroy(handle:not null QOpenGLVersionProfileH);
 pragma Import(C,QOpenGLVersionProfile_destroy, "QOpenGLVersionProfile_destroy");
 
 function  QOpenGLVersionProfile_isValid(handle:not null QOpenGLVersionProfileH) return boolean;
 pragma Import(C,QOpenGLVersionProfile_isValid, "QOpenGLVersionProfile_isValid");
 
 procedure QOpenGLVersionProfile_setVersion(handle:not null QOpenGLVersionProfileH;majorVersion, minorVersion:integer);
 pragma Import(C,QOpenGLVersionProfile_setVersion, "QOpenGLVersionProfile_setVersion");
 
 function  QOpenGLVersionProfile_profile(handle:not null QOpenGLVersionProfileH) return Qt.QSurfaceFormat.OpenGLContextProfile;
 pragma Import(C,QOpenGLVersionProfile_profile, "QOpenGLVersionProfile_profile");
 
 procedure QOpenGLVersionProfile_setProfile(handle:not null QOpenGLVersionProfileH;profile:Qt.QSurfaceFormat.OpenGLContextProfile);
 pragma Import(C,QOpenGLVersionProfile_setProfile, "QOpenGLVersionProfile_setProfile");
 
 function  QOpenGLVersionProfile_hasProfiles(handle:not null QOpenGLVersionProfileH) return boolean;
 pragma Import(C,QOpenGLVersionProfile_hasProfiles, "QOpenGLVersionProfile_hasProfiles");
 
 function  QOpenGLVersionProfile_isLegacyVersion(handle:not null QOpenGLVersionProfileH) return boolean;
 pragma Import(C,QOpenGLVersionProfile_isLegacyVersion, "QOpenGLVersionProfile_isLegacyVersion");

 function  QOpenGLContext_create(parent:QObjectH := null) return QOpenGLContextH;
 pragma Import(C,QOpenGLContext_create, "QOpenGLContext_create");
 
 procedure QOpenGLContext_destroy(handle:not null QOpenGLContextH);
 pragma Import(C,QOpenGLContext_destroy, "QOpenGLContext_destroy");
 
 function  QOpenGLContext_isValid(handle:not null QOpenGLContextH) return boolean;
 pragma Import(C,QOpenGLContext_isValid, "QOpenGLContext_isValid");
 
 procedure QOpenGLContext_setFormat(handle:not null QOpenGLContextH;format:QSurfaceFormatH);
 pragma Import(C,QOpenGLContext_setFormat, "QOpenGLContext_setFormat");
 
 procedure QOpenGLContext_setShareContext(handle:not null QOpenGLContextH;shareContext:QOpenGLContextH);
 pragma Import(C,QOpenGLContext_setShareContext, "QOpenGLContext_setShareContext");
 
 procedure QOpenGLContext_setScreen(handle:not null QOpenGLContextH;screen:QScreenH);
 pragma Import(C,QOpenGLContext_setScreen, "QOpenGLContext_setScreen");
 
 procedure QOpenGLContext_setNativeHandle(handle:not null QOpenGLContextH; nativeHandle:QVariantH);
 pragma Import(C,QOpenGLContext_setNativeHandle, "QOpenGLContext_setNativeHandle");
 
 function  QOpenGLContext_contextCreate(handle:not null QOpenGLContextH) return boolean;
 pragma Import(C,QOpenGLContext_contextCreate, "QOpenGLContext_contextCreate");
 
 function  QOpenGLContext_format(handle:not null QOpenGLContextH) return QSurfaceFormatH;
 pragma Import(C,QOpenGLContext_format, "QOpenGLContext_format");
 
 function  QOpenGLContext_shareContext(handle:not null QOpenGLContextH) return QOpenGLContextH;
 pragma Import(C,QOpenGLContext_shareContext, "QOpenGLContext_shareContext");
 
 function  QOpenGLContext_shareGroup(handle:not null QOpenGLContextH) return QOpenGLContextGroupH;
 pragma Import(C,QOpenGLContext_shareGroup, "QOpenGLContext_shareGroup");
 
 function  QOpenGLContext_screen(handle:not null QOpenGLContextH) return QScreenH;
 pragma Import(C,QOpenGLContext_screen, "QOpenGLContext_screen");
 
 function  QOpenGLContext_nativeHandle(handle:not null QOpenGLContextH) return QVariantH;
 pragma Import(C,QOpenGLContext_nativeHandle, "QOpenGLContext_nativeHandle");
 
 function  QOpenGLContext_defaultFramebufferObject(handle:not null QOpenGLContextH) return GLuint;
 pragma Import(C,QOpenGLContext_defaultFramebufferObject, "QOpenGLContext_defaultFramebufferObject");
 
 function  QOpenGLContext_makeCurrent(handle:not null QOpenGLContextH; surface:QSurfaceH) return boolean;
 pragma Import(C,QOpenGLContext_makeCurrent, "QOpenGLContext_makeCurrent");
 
 procedure QOpenGLContext_doneCurrent(handle:not null QOpenGLContextH);
 pragma Import(C,QOpenGLContext_doneCurrent, "QOpenGLContext_doneCurrent");
 
 procedure QOpenGLContext_swapBuffers(handle:not null QOpenGLContextH;surface:QSurfaceH);
 pragma Import(C,QOpenGLContext_swapBuffers, "QOpenGLContext_swapBuffers");
 
 function  QOpenGLContext_getProcAddress(handle:not null QOpenGLContextH; procName:QByteArrayH) return void_Star;
 pragma Import(C,QOpenGLContext_getProcAddress, "QOpenGLContext_getProcAddress");
 
 function  QOpenGLContext_surface(handle:not null QOpenGLContextH) return QSurfaceH;
 pragma Import(C,QOpenGLContext_surface, "QOpenGLContext_surface");
 
 function  QOpenGLContext_handle(handle:not null QOpenGLContextH) return QPlatformOpenGLContextH;
 pragma Import(C,QOpenGLContext_handle, "QOpenGLContext_handle");
 
 function  QOpenGLContext_shareHandle(handle:not null QOpenGLContextH) return QPlatformOpenGLContextH;
 pragma Import(C,QOpenGLContext_shareHandle, "QOpenGLContext_shareHandle");
 
 function  QOpenGLContext_functions(handle:not null QOpenGLContextH) return QOpenGLFunctionsH;
 pragma Import(C,QOpenGLContext_functions, "QOpenGLContext_functions");
 
 function  QOpenGLContext_versionFunctions(handle:not null QOpenGLContextH; versionProfile:QOpenGLVersionProfileH := QOpenGLVersionProfile_create) return QAbstractOpenGLFunctionsH;
 pragma Import(C,QOpenGLContext_versionFunctions, "QOpenGLContext_versionFunctions");
 
 function  QOpenGLContext_extensions(handle:not null QOpenGLContextH) return QSetH;
 pragma Import(C,QOpenGLContext_extensions, "QOpenGLContext_extensions");
 
 function  QOpenGLContext_hasExtension(handle:not null QOpenGLContextH; extension:QByteArrayH) return boolean;
 pragma Import(C,QOpenGLContext_hasExtension, "QOpenGLContext_hasExtension");
 
 function  QOpenGLContext_isOpenGLES(handle:not null QOpenGLContextH) return boolean;
 pragma Import(C,QOpenGLContext_isOpenGLES, "QOpenGLContext_isOpenGLES");
 
 function  QOpenGLContext_currentContext return QOpenGLContextH;
 pragma Import(C,QOpenGLContext_currentContext, "QOpenGLContext_currentContext");
 
 function  QOpenGLContext_areSharing(first,second:QOpenGLContextH) return boolean;
 pragma Import(C,QOpenGLContext_areSharing, "QOpenGLContext_areSharing");
 
 function  QOpenGLContext_openGLModuleHandle return void_Star;
 pragma Import(C,QOpenGLContext_openGLModuleHandle, "QOpenGLContext_openGLModuleHandle");
 
 function  QOpenGLContext_openGLModuleType return OpenGLModuleType;
 pragma Import(C,QOpenGLContext_openGLModuleType, "QOpenGLContext_openGLModuleType");
 
 function  QOpenGLContext_currentContextGroup return QOpenGLContextGroupH;
 pragma Import(C,QOpenGLContext_currentContextGroup, "QOpenGLContext_currentContextGroup");

 procedure QOpenGLContext_sigmal_slot_aboutToBeDestroyed(handle:not null QOpenGLContextH; hook: voidCallbackH);
 pragma Import(C,QOpenGLContext_sigmal_slot_aboutToBeDestroyed, "QOpenGLContext_sigmal_slot_aboutToBeDestroyed");

end;
