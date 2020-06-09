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
package Qt.QOpenGLBuffer is 

 type QOpenGLBufferH is new QObjectH;

 type bufferType is new cardinal;
 VertexBuffer      : constant bufferType := 16#8892#; -- GL_ARRAY_BUFFER
 IndexBuffer       : constant bufferType := 16#8893#; -- GL_ELEMENT_ARRAY_BUFFER
 PixelPackBuffer   : constant bufferType := 16#88EB#; -- GL_PIXEL_PACK_BUFFER
 PixelUnpackBuffer : constant bufferType := 16#88EC#; -- GL_PIXEL_UNPACK_BUFFER

 type UsagePattern is new cardinal;
 StreamDraw  : constant UsagePattern := 16#88E0#; -- GL_STREAM_DRAW
 StreamRead  : constant UsagePattern := 16#88E1#; -- GL_STREAM_READ
 StreamCopy  : constant UsagePattern := 16#88E2#; -- GL_STREAM_COPY
 StaticDraw  : constant UsagePattern := 16#88E4#; -- GL_STATIC_DRAW
 StaticRead  : constant UsagePattern := 16#88E5#; -- GL_STATIC_READ
 StaticCopy  : constant UsagePattern := 16#88E6#; -- GL_STATIC_COPY
 DynamicDraw : constant UsagePattern := 16#88E8#; -- GL_DYNAMIC_DRAW
 DynamicRead : constant UsagePattern := 16#88E9#; -- GL_DYNAMIC_READ
 DynamicCopy : constant UsagePattern := 16#88EA#; -- GL_DYNAMIC_COPY

 type bufferAccess  is new cardinal;
 ReadOnly  : constant bufferAccess := 16#88B8#; -- GL_READ_ONLY
 WriteOnly : constant bufferAccess := 16#88B9#; -- GL_WRITE_ONLY
 ReadWrite : constant bufferAccess := 16#88BA#; -- GL_READ_WRITE

 type RangeAccessFlag is new cardinal;
 RangeRead             : constant RangeAccessFlag := 16#0001#; -- GL_MAP_READ_BIT
 RangeWrite            : constant RangeAccessFlag := 16#0002#; -- GL_MAP_WRITE_BIT
 RangeInvalidate       : constant RangeAccessFlag := 16#0004#; -- GL_MAP_INVALIDATE_RANGE_BIT
 RangeInvalidateBuffer : constant RangeAccessFlag := 16#0008#; -- GL_MAP_INVALIDATE_BUFFER_BIT
 RangeFlushExplicit    : constant RangeAccessFlag := 16#0010#; -- GL_MAP_FLUSH_EXPLICIT_BIT
 RangeUnsynchronized   : constant RangeAccessFlag := 16#0020#; -- GL_MAP_UNSYNCHRONIZED_BIT
 subtype RangeAccessFlags is RangeAccessFlag;

 function  QOpenGLBuffer_create return QOpenGLBufferH;
 pragma Import(C,QOpenGLBuffer_create, "QOpenGLBuffer_create");
 
 function  QOpenGLBuffer_create2(typ:bufferType) return QOpenGLBufferH;
 pragma Import(C,QOpenGLBuffer_create2, "QOpenGLBuffer_create2");
 
 function  QOpenGLBuffer_create3(other:QOpenGLBufferH) return QOpenGLBufferH;
 pragma Import(C,QOpenGLBuffer_create3, "QOpenGLBuffer_create3");
 
 procedure QOpenGLBuffer_delete(handle:not null QOpenGLBufferH);
 pragma Import(C,QOpenGLBuffer_delete, "QOpenGLBuffer_delete");
 
 function  QOpenGLBuffer_type(handle:not null QOpenGLBufferH) return bufferType;
 pragma Import(C,QOpenGLBuffer_type, "QOpenGLBuffer_type");
 
 function  QOpenGLBuffer_usagePattern(handle:not null QOpenGLBufferH) return UsagePattern;
 pragma Import(C,QOpenGLBuffer_usagePattern, "QOpenGLBuffer_usagePattern");
 
 procedure QOpenGLBuffer_setUsagePattern(handle:not null QOpenGLBufferH;value:UsagePattern);
 pragma Import(C,QOpenGLBuffer_setUsagePattern, "QOpenGLBuffer_setUsagePattern");
 
 -- original create method
 function  QOpenGLBuffer_createBuffer(handle:not null QOpenGLBufferH) return boolean;
 pragma Import(C,QOpenGLBuffer_createBuffer, "QOpenGLBuffer_createBuffer");
 
 function  QOpenGLBuffer_isCreated(handle:not null QOpenGLBufferH) return boolean;
 pragma Import(C,QOpenGLBuffer_isCreated, "QOpenGLBuffer_isCreated");
 
 procedure QOpenGLBuffer_destroy(handle:not null QOpenGLBufferH);
 pragma Import(C,QOpenGLBuffer_destroy, "QOpenGLBuffer_destroy");
 
 function  QOpenGLBuffer_bind(handle:not null QOpenGLBufferH) return boolean;
 pragma Import(C,QOpenGLBuffer_bind, "QOpenGLBuffer_bind");
 
 procedure QOpenGLBuffer_release(handle:not null QOpenGLBufferH);
 pragma Import(C,QOpenGLBuffer_release, "QOpenGLBuffer_release");
 
 procedure QOpenGLBuffer_release2(typ:bufferType);
 pragma Import(C,QOpenGLBuffer_release2, "QOpenGLBuffer_release2");
 
 function  QOpenGLBuffer_bufferId(handle:not null QOpenGLBufferH) return GLuint;
 pragma Import(C,QOpenGLBuffer_bufferId, "QOpenGLBuffer_bufferId");
 
 function  QOpenGLBuffer_size(handle:not null QOpenGLBufferH) return integer;
 pragma Import(C,QOpenGLBuffer_size, "QOpenGLBuffer_size");
 
 function  QOpenGLBuffer_read(handle:not null QOpenGLBufferH;offset:integer;data:void_Star;count:integer) return boolean;
 pragma Import(C,QOpenGLBuffer_read, "QOpenGLBuffer_read");
 
 procedure QOpenGLBuffer_write(handle:not null QOpenGLBufferH;offset:integer;data:void_Star;count:integer);
 pragma Import(C,QOpenGLBuffer_write, "QOpenGLBuffer_write");
 
 procedure QOpenGLBuffer_allocate(handle:not null QOpenGLBufferH;data : void_Star; count : integer := 0);
 pragma Import(C,QOpenGLBuffer_allocate, "QOpenGLBuffer_allocate");
 
 function  QOpenGLBuffer_map(handle:not null QOpenGLBufferH;accessToBuffer:bufferAccess) return void_Star;
 pragma Import(C,QOpenGLBuffer_map, "QOpenGLBuffer_map");
 
 function  QOpenGLBuffer_mapRange(handle:not null QOpenGLBufferH;offset,count : integer;accessFlags: RangeAccessFlags) return void_Star;
 pragma Import(C,QOpenGLBuffer_mapRange, "QOpenGLBuffer_mapRange");
 
 function  QOpenGLBuffer_unmap(handle:not null QOpenGLBufferH) return boolean;
 pragma Import(C,QOpenGLBuffer_unmap, "QOpenGLBuffer_unmap");
 
--------------------------------------------------------------------
 function  QOpenGLBuffer_create(typ:bufferType) return QOpenGLBufferH;
 function  QOpenGLBuffer_create(other:QOpenGLBufferH) return QOpenGLBufferH;
 procedure QOpenGLBuffer_release(typ:bufferType);
 procedure QOpenGLBuffer_allocate(handle:not null QOpenGLBufferH;count : integer := 0);

end;
