--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2014                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QSurfaceFormat is

 type FormatOption is (StereoBuffers,DebugContext,DeprecatedFunctions);
 pragma convention(C,FormatOption);
 for  FormatOption use (StereoBuffers => 1,
                        DebugContext  => 2,
                        DeprecatedFunctions => 4
                       );
 type SwapBehavior is (DefaultSwapBehavior,SingleBuffer,DoubleBuffer, TripleBuffer);
 pragma convention(C,SwapBehavior);

 type RenderableType is (DefaultRenderableType,OpenGL,OpenGLES,OpenVG);
 pragma convention(C,RenderableType);
 for RenderableType use (DefaultRenderableType => 0,
                         OpenGL                => 1,
                         OpenGLES              => 2,
                         OpenVG                => 4
                        );

 type OpenGLContextProfile is (NoProfile,CoreProfile,CompatibilityProfile);
 pragma convention(C,OpenGLContextProfile);
    
 function  QSurfaceFormat_create return QSurfaceFormatH;
 pragma Import(C,QSurfaceFormat_create, "QSurfaceFormat_create");
 
 function  QSurfaceFormat_create2(other:QSurfaceFormatH) return QSurfaceFormatH;
 pragma Import(C,QSurfaceFormat_create2, "QSurfaceFormat_create2");
 
 procedure QSurfaceFormat_destroy(handle:not null QSurfaceFormatH);
 pragma Import(C,QSurfaceFormat_destroy, "QSurfaceFormat_destroy");
 
 procedure QSurfaceFormat_setDepthBufferSize(handle:not null QSurfaceFormatH;size:integer);
 pragma Import(C,QSurfaceFormat_setDepthBufferSize, "QSurfaceFormat_setDepthBufferSize");
 
 function  QSurfaceFormat_depthBufferSize(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_depthBufferSize, "QSurfaceFormat_depthBufferSize");
 
 procedure QSurfaceFormat_setStencilBufferSize(handle:not null QSurfaceFormatH;size:integer);
 pragma Import(C,QSurfaceFormat_setStencilBufferSize, "QSurfaceFormat_setStencilBufferSize");
 
 function  QSurfaceFormat_stencilBufferSize(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_stencilBufferSize, "QSurfaceFormat_stencilBufferSize");
 
 procedure QSurfaceFormat_setRedBufferSize(handle:not null QSurfaceFormatH;size:integer);
 pragma Import(C,QSurfaceFormat_setRedBufferSize, "QSurfaceFormat_setRedBufferSize");
 
 function  QSurfaceFormat_redBufferSize(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_redBufferSize, "QSurfaceFormat_redBufferSize");
 
 procedure QSurfaceFormat_setGreenBufferSize(handle:not null QSurfaceFormatH;size:integer);
 pragma Import(C,QSurfaceFormat_setGreenBufferSize, "QSurfaceFormat_setGreenBufferSize");
 
 function  QSurfaceFormat_greenBufferSize(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_greenBufferSize, "QSurfaceFormat_greenBufferSize");
 
 procedure QSurfaceFormat_setBlueBufferSize(handle:not null QSurfaceFormatH;size:integer);
 pragma Import(C,QSurfaceFormat_setBlueBufferSize, "QSurfaceFormat_setBlueBufferSize");
 
 function  QSurfaceFormat_blueBufferSize(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_blueBufferSize, "QSurfaceFormat_blueBufferSize");
 
 procedure QSurfaceFormat_setAlphaBufferSize(handle:not null QSurfaceFormatH;size:integer);
 pragma Import(C,QSurfaceFormat_setAlphaBufferSize, "QSurfaceFormat_setAlphaBufferSize");
 
 function  QSurfaceFormat_alphaBufferSize(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_alphaBufferSize, "QSurfaceFormat_alphaBufferSize");
 
 procedure QSurfaceFormat_setSamples(handle:not null QSurfaceFormatH;numSamples:integer);
 pragma Import(C,QSurfaceFormat_setSamples, "QSurfaceFormat_setSamples");
 
 function  QSurfaceFormat_samples(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_samples, "QSurfaceFormat_samples");
 
 procedure QSurfaceFormat_setSwapBehavior(handle:not null QSurfaceFormatH;behavior:SwapBehavior);
 pragma Import(C,QSurfaceFormat_setSwapBehavior, "QSurfaceFormat_setSwapBehavior");
 
 function  QSurfaceFormat_swapBehavior(handle:not null QSurfaceFormatH) return SwapBehavior;
 pragma Import(C,QSurfaceFormat_swapBehavior, "QSurfaceFormat_swapBehavior");
 
 function  QSurfaceFormat_hasAlpha(handle:not null QSurfaceFormatH) return boolean;
 pragma Import(C,QSurfaceFormat_hasAlpha, "QSurfaceFormat_hasAlpha");
 
 procedure QSurfaceFormat_setProfile(handle:not null QSurfaceFormatH;profile:OpenGLContextProfile);
 pragma Import(C,QSurfaceFormat_setProfile, "QSurfaceFormat_setProfile");
 
 function  QSurfaceFormat_profile(handle:not null QSurfaceFormatH) return OpenGLContextProfile;
 pragma Import(C,QSurfaceFormat_profile, "QSurfaceFormat_profile");
 
 procedure QSurfaceFormat_setRenderableType(handle:not null QSurfaceFormatH;rType:RenderableType);
 pragma Import(C,QSurfaceFormat_setRenderableType, "QSurfaceFormat_setRenderableType");
 
 function  QSurfaceFormat_renderableType(handle:not null QSurfaceFormatH) return RenderableType;
 pragma Import(C,QSurfaceFormat_renderableType, "QSurfaceFormat_renderableType");
 
 procedure QSurfaceFormat_setMajorVersion(handle:not null QSurfaceFormatH; majorVersion:integer);
 pragma Import(C,QSurfaceFormat_setMajorVersion, "QSurfaceFormat_setMajorVersion");
 
 function  QSurfaceFormat_majorVersion(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_majorVersion, "QSurfaceFormat_majorVersion");
 
 procedure QSurfaceFormat_setMinorVersion(handle:not null QSurfaceFormatH;minorVersion:integer);
 pragma Import(C,QSurfaceFormat_setMinorVersion, "QSurfaceFormat_setMinorVersion");
 
 function  QSurfaceFormat_minorVersion(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_minorVersion, "QSurfaceFormat_minorVersion");
 
 procedure QSurfaceFormat_setVersion(handle:not null QSurfaceFormatH;major,minor:integer);
 pragma Import(C,QSurfaceFormat_setVersion, "QSurfaceFormat_setVersion");
 
 function  QSurfaceFormat_stereo(handle:not null QSurfaceFormatH) return boolean;
 pragma Import(C,QSurfaceFormat_stereo, "QSurfaceFormat_stereo");
 
 procedure QSurfaceFormat_setStereo(handle:not null QSurfaceFormatH; enable: boolean := true);
 pragma Import(C,QSurfaceFormat_setStereo, "QSurfaceFormat_setStereo");
 
 procedure QSurfaceFormat_setOption(handle:not null QSurfaceFormatH;option:FormatOption; on:boolean := true);
 pragma Import(C,QSurfaceFormat_setOption, "QSurfaceFormat_setOption");
 
 function  QSurfaceFormat_testOption(handle:not null QSurfaceFormatH;option:FormatOption) return boolean;
 pragma Import(C,QSurfaceFormat_testOption, "QSurfaceFormat_testOption");
 
 function  QSurfaceFormat_swapInterval(handle:not null QSurfaceFormatH) return integer;
 pragma Import(C,QSurfaceFormat_swapInterval, "QSurfaceFormat_swapInterval");
 
 procedure QSurfaceFormat_setSwapInterval(handle:not null QSurfaceFormatH;interval:integer);
 pragma Import(C,QSurfaceFormat_setSwapInterval, "QSurfaceFormat_setSwapInterval");
 
 procedure QSurfaceFormat_setDefaultFormat(format:QSurfaceFormatH);
 pragma Import(C,QSurfaceFormat_setDefaultFormat, "QSurfaceFormat_setDefaultFormat");
 
 function  QSurfaceFormat_defaultFormat return QSurfaceFormatH;
 pragma Import(C,QSurfaceFormat_defaultFormat, "QSurfaceFormat_defaultFormat");

--------------------------------------------------------------------
 function  QSurfaceFormat_create(other:QSurfaceFormatH) return QSurfaceFormatH;
 
end;
