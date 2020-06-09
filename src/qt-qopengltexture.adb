--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013                           บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package body Qt.QOpenGLTexture is 

 function  QOpenGLTexture_create(image: not null QImageH; genMipMaps:MipMapGeneration  := GenerateMipMaps) return QOpenGLTextureH is
 begin
  return  QOpenGLTexture_create2(image, genMipMaps);
 end;

 function  QOpenGLTexture_create(handle: not null QOpenGLTextureH) return boolean is
 begin
   return  QOpenGLTexture_create3(handle);
 end;

 procedure QOpenGLTexture_bind(handle: not null QOpenGLTextureH;unit:quint; reset:TextureUnitReset := DontResetTextureUnit) is
 begin
  QOpenGLTexture_bind2(handle,unit,reset);
 end;

 procedure QOpenGLTexture_release(handle: not null QOpenGLTextureH;unit:quint; reset:TextureUnitReset := DontResetTextureUnit) is
 begin
  QOpenGLTexture_release2(handle,unit,reset);
 end;

 function  QOpenGLTexture_isBound(handle: not null QOpenGLTextureH;unit:quint) return boolean is
 begin
  return  QOpenGLTexture_isBound2(handle,unit);
 end;

 function  QOpenGLTexture_boundTextureId(unit:quint; target:BindingTarget) return quint is
 begin
  return  QOpenGLTexture_boundTextureId2(unit, target);
 end;

 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH;mipLevel,layer:integer; sourceFormat:PixelFormat; sourceType:PixelType ;data:void_Star; options:QOpenGLPixelTransferOptionsH := null) is
 begin
  QOpenGLTexture_setData2(handle,mipLevel,layer,sourceFormat,sourceType,data,options);
 end;

 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH;mipLevel:integer;sourceFormat:PixelFormat ; sourceType:PixelType ;data:void_Star; options:QOpenGLPixelTransferOptionsH := null) is
 begin
  QOpenGLTexture_setData3(handle,mipLevel,sourceFormat, sourceType,data,options);
 end;

 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH; sourceFormat:PixelFormat;  sourceType:PixelType;data:void_Star; options:QOpenGLPixelTransferOptionsH := null) is
 begin
  QOpenGLTexture_setData4(handle, sourceFormat, sourceType,data,options);
 end;

 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH;image:QImageH;  genMipMaps:MipMapGeneration := GenerateMipMaps) is
 begin
  QOpenGLTexture_setData5(handle,image,genMipMaps);
 end;

 procedure QOpenGLTexture_setCompressedData(handle: not null QOpenGLTextureH;mipLevel,layer,dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null) is
 begin
  QOpenGLTexture_setCompressedData2(handle,mipLevel,layer,dataSize, data,options);
 end;

 procedure QOpenGLTexture_setCompressedData(handle: not null QOpenGLTextureH;mipLevel, dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null) is
 begin
  QOpenGLTexture_setCompressedData3(handle,mipLevel, dataSize,data,options);
 end;

 procedure QOpenGLTexture_setCompressedData(handle: not null QOpenGLTextureH;dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null) is
 begin
  QOpenGLTexture_setCompressedData4(handle,dataSize,data,options);
 end;

 procedure QOpenGLTexture_generateMipMaps(handle: not null QOpenGLTextureH; baseLevel:integer; resetBaseLevel:boolean := true) is
 begin
  QOpenGLTexture_generateMipMaps2(handle, baseLevel, resetBaseLevel);
 end;

 procedure QOpenGLTexture_setSwizzleMask(handle: not null QOpenGLTextureH;r,g,b,a:SwizzleValue) is
 begin
  QOpenGLTexture_setSwizzleMask2(handle,r,g,b,a);
 end;

 procedure QOpenGLTexture_setWrapMode(handle: not null QOpenGLTextureH;direction:CoordinateDirection; mode:WrapMode) is
 begin
  QOpenGLTexture_setWrapMode2(handle,direction, mode);
 end;

 procedure QOpenGLTexture_setBorderColor(handle: not null QOpenGLTextureH;r,g,b,a: float) is
 begin
  QOpenGLTexture_setBorderColor2(handle,r,g,b,a);
 end;

 procedure QOpenGLTexture_setBorderColor(handle: not null QOpenGLTextureH;r,g,b,a: integer) is
 begin
  QOpenGLTexture_setBorderColor3(handle,r,g,b,a);
 end;

 procedure QOpenGLTexture_setBorderColor(handle: not null QOpenGLTextureH;r,g,b,a: quint) is
 begin
  QOpenGLTexture_setBorderColor4(handle,r,g,b,a);
 end;

 procedure QOpenGLTexture_borderColor(handle: not null QOpenGLTextureH;border:pfloat) is
 begin
  QOpenGLTexture_borderColor2(handle,border);
 end;

 procedure QOpenGLTexture_borderColor(handle: not null QOpenGLTextureH;border:pinteger) is
 begin
  QOpenGLTexture_borderColor3(handle,border);
 end;

 procedure QOpenGLTexture_borderColor(handle: not null QOpenGLTextureH;border:pquint) is
 begin
  QOpenGLTexture_borderColor4(handle,border);
 end;

end;
