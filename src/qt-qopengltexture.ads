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

package Qt.QOpenGLTexture is

type Target is (
        Target1D                   ,    -- GL_TEXTURE_1D
        Target2D                   ,    -- GL_TEXTURE_2D
        Target3D                   ,    -- GL_TEXTURE_3D
        TargetRectangle            ,    -- GL_TEXTURE_RECTANGLE
        TargetCubeMap              ,    -- GL_TEXTURE_CUBE_MAP
        Target1DArray              ,    -- GL_TEXTURE_1D_ARRAY
        Target2DArray              ,    -- GL_TEXTURE_2D_ARRAY
        TargetBuffer               ,    -- GL_TEXTURE_BUFFER
        TargetCubeMapArray         ,    -- GL_TEXTURE_CUBE_MAP_ARRAY
        Target2DMultisample        ,    -- GL_TEXTURE_2D_MULTISAMPLE
        Target2DMultisampleArray        -- GL_TEXTURE_2D_MULTISAMPLE_ARRAY
    ); 
    pragma Convention(C,Target);

for  Target  use  (
        Target1D                   => 16#0DE0#,    
        Target2D                   => 16#0DE1#,    
        Target3D                   => 16#806F#,    
        TargetRectangle            => 16#84F5#,    
        TargetCubeMap              => 16#8513#,    
        Target1DArray              => 16#8C18#,    
        Target2DArray              => 16#8C1A#,    
        TargetBuffer               => 16#8C2A#,    
        TargetCubeMapArray         => 16#9009#,    
        Target2DMultisample        => 16#9100#,    
        Target2DMultisampleArray   => 16#9102#     
    ); 
    
 type BindingTarget  is (
        BindingTarget1D                 ,    -- GL_TEXTURE_BINDING_1D
        BindingTarget2D                 ,    -- GL_TEXTURE_BINDING_2D
        BindingTarget3D                 ,    -- GL_TEXTURE_BINDING_3D
        BindingTargetRectangle          ,    -- GL_TEXTURE_BINDING_RECTANGLE
        BindingTargetCubeMap            ,    -- GL_TEXTURE_BINDING_CUBE_MAP
        BindingTarget1DArray            ,    -- GL_TEXTURE_BINDING_1D_ARRAY
        BindingTarget2DArray            ,    -- GL_TEXTURE_BINDING_2D_ARRAY
        BindingTargetBuffer,                 -- save_TEXTURE_BINDING_BUFFER
        BindingTargetCubeMapArray       ,    -- GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
        BindingTarget2DMultisample      ,    -- GL_TEXTURE_BINDING_2D_MULTISAMPLE
        BindingTarget2DMultisampleArray      -- GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY

    );   
 pragma Convention(C,BindingTarget);

 for  BindingTarget use (
        BindingTarget1D                    => 16#8068#,   
        BindingTarget2D                    => 16#8069#,   
        BindingTarget3D                    => 16#806A#,   
        BindingTargetRectangle             => 16#84F6#,   
        BindingTargetCubeMap               => 16#8514#,   
        BindingTarget1DArray               => 16#8C1C#,   
        BindingTarget2DArray               => 16#8C1D#,   
        BindingTargetBuffer                => 16#8C2C#,  
        BindingTargetCubeMapArray          => 16#900A#,   
        BindingTarget2DMultisample         => 16#9104#,   
        BindingTarget2DMultisampleArray    => 16#9105#    
    );   
    
type MipMapGeneration is (GenerateMipMaps,DontGenerateMipMaps);
pragma Convention(C,MipMapGeneration);    

type TextureUnitReset is(ResetTextureUnit,DontResetTextureUnit);
pragma Convention(C,TextureUnitReset);

type TextureFormat is (
        NoFormat               ,    -- GL_NONE

        RG3B2                  ,    -- GL_R3_G3_B2

        RGB8_UNorm             ,    -- GL_RGB8
        RGB16_UNorm            ,    -- GL_RGB16
        RGBA4                  ,    -- GL_RGBA4
        RGB5A1                 ,    -- GL_RGB5_A1
        RGBA8_UNorm            ,    -- GL_RGBA8
        RGBA16_UNorm           ,    -- GL_RGBA16

        D16                    ,    -- GL_DEPTH_COMPONENT16
        D24                    ,    -- GL_DEPTH_COMPONENT24
        D32                    ,    -- GL_DEPTH_COMPONENT32

        R8_UNorm               ,    -- GL_R8
        R16_UNorm              ,    -- GL_R16
        RG8_UNorm              ,    -- GL_RG8
        RG16_UNorm             ,    -- GL_RG16
        R16F                   ,    -- GL_R16F
        R32F                   ,    -- GL_R32F
        RG16F                  ,    -- GL_RG16F
        RG32F                  ,    -- GL_RG32F
        R8I                    ,    -- GL_R8I
        R8U                    ,    -- GL_R8UI
        R16I                   ,    -- GL_R16I
        R16U                   ,    -- GL_R16UI
        R32I                   ,    -- GL_R32I
        R32U                   ,    -- GL_R32UI
        RG8I                   ,    -- GL_RG8I
        RG8U                   ,    -- GL_RG8UI
        RG16I                  ,    -- GL_RG16I
        RG16U                  ,    -- GL_RG16UI
        RG32I                  ,    -- GL_RG32I
        RG32U                  ,    -- GL_RG32UI

        RGB_DXT1               ,    -- GL_COMPRESSED_RGB_S3TC_DXT1_EXT
        RGBA_DXT1              ,    -- GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
        RGBA_DXT3              ,    -- GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
        RGBA_DXT5              ,    -- GL_COMPRESSED_RGBA_S3TC_DXT5_EXT

        RGBA32F                ,    -- GL_RGBA32F
        RGB32F                 ,    -- GL_RGB32F
        RGBA16F                ,    -- GL_RGBA16F
        RGB16F                 ,    -- GL_RGB16F
        D24S8                  ,    -- GL_DEPTH24_STENCIL8

        RG11B10F               ,    -- GL_R11F_G11F_B10F
        RGB9E5                 ,    -- GL_RGB9_E5
        SRGB8                  ,    -- GL_SRGB8
        SRGB8_Alpha8           ,    -- GL_SRGB8_ALPHA8
        SRGB_DXT1              ,    -- GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
        SRGB_Alpha_DXT1        ,    -- GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
        SRGB_Alpha_DXT3        ,    -- GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
        SRGB_Alpha_DXT5        ,    -- GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT
        D32F                   ,    -- GL_DEPTH_COMPONENT32F
        D32FS8X24              ,    -- GL_DEPTH32F_STENCIL8

        R5G6B5                 ,    -- GL_RGB565
        RGBA32U                ,    -- GL_RGBA32UI
        RGB32U                 ,    -- GL_RGB32UI
        RGBA16U                ,    -- GL_RGBA16UI
        RGB16U                 ,    -- GL_RGB16UI
        RGBA8U                 ,    -- GL_RGBA8UI
        RGB8U                  ,    -- GL_RGB8UI
        RGBA32I                ,    -- GL_RGBA32I
        RGB32I                 ,    -- GL_RGB32I
        RGBA16I                ,    -- GL_RGBA16I
        RGB16I                 ,    -- GL_RGB16I
        RGBA8I                 ,    -- GL_RGBA8I
        RGB8I                  ,    -- GL_RGB8I
        R_ATI1N_UNorm          ,    -- GL_COMPRESSED_RED_RGTC1
        R_ATI1N_SNorm          ,    -- GL_COMPRESSED_SIGNED_RED_RGTC1
        RG_ATI2N_UNorm         ,    -- GL_COMPRESSED_RG_RGTC2
        RG_ATI2N_SNorm         ,    -- GL_COMPRESSED_SIGNED_RG_RGTC2

        RGB_BP_UNorm           ,    -- GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
        SRGB_BP_UNorm          ,    -- GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
        RGB_BP_SIGNED_FLOAT    ,    -- GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
        RGB_BP_UNSIGNED_FLOAT  ,    -- GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB

        R8_SNorm               ,    -- GL_R8_SNORM
        RG8_SNorm              ,    -- GL_RG8_SNORM
        RGB8_SNorm             ,    -- GL_RGB8_SNORM
        RGBA8_SNorm            ,    -- GL_RGBA8_SNORM
        R16_SNorm              ,    -- GL_R16_SNORM
        RG16_SNorm             ,    -- GL_RG16_SNORM
        RGB16_SNorm            ,    -- GL_RGB16_SNORM
        RGBA16_SNorm           ,    -- GL_RGBA16_SNORM

        RGB10A2                     -- GL_RGB10_A2UI
    );         
    pragma Convention(C,TextureFormat);

for  TextureFormat use (
        NoFormat               => 0,         -- GL_NONE

        RG3B2                  => 16#2A10#,    -- GL_R3_G3_B2

        RGB8_UNorm             => 16#8051#,    -- GL_RGB8
        RGB16_UNorm            => 16#8054#,    -- GL_RGB16
        RGBA4                  => 16#8056#,    -- GL_RGBA4
        RGB5A1                 => 16#8057#,    -- GL_RGB5_A1
        RGBA8_UNorm            => 16#8058#,    -- GL_RGBA8
        RGBA16_UNorm           => 16#805B#,    -- GL_RGBA16

        D16                    => 16#81A5#,    -- GL_DEPTH_COMPONENT16
        D24                    => 16#81A6#,    -- GL_DEPTH_COMPONENT24
        D32                    => 16#81A7#,    -- GL_DEPTH_COMPONENT32

        R8_UNorm               => 16#8229#,    -- GL_R8
        R16_UNorm              => 16#822A#,    -- GL_R16
        RG8_UNorm              => 16#822B#,    -- GL_RG8
        RG16_UNorm             => 16#822C#,    -- GL_RG16
        R16F                   => 16#822D#,    -- GL_R16F
        R32F                   => 16#822E#,    -- GL_R32F
        RG16F                  => 16#822F#,    -- GL_RG16F
        RG32F                  => 16#8230#,    -- GL_RG32F
        R8I                    => 16#8231#,    -- GL_R8I
        R8U                    => 16#8232#,    -- GL_R8UI
        R16I                   => 16#8233#,    -- GL_R16I
        R16U                   => 16#8234#,    -- GL_R16UI
        R32I                   => 16#8235#,    -- GL_R32I
        R32U                   => 16#8236#,    -- GL_R32UI
        RG8I                   => 16#8237#,    -- GL_RG8I
        RG8U                   => 16#8238#,    -- GL_RG8UI
        RG16I                  => 16#8239#,    -- GL_RG16I
        RG16U                  => 16#823A#,    -- GL_RG16UI
        RG32I                  => 16#823B#,    -- GL_RG32I
        RG32U                  => 16#823C#,    -- GL_RG32UI

        RGB_DXT1               => 16#83F0#,    -- GL_COMPRESSED_RGB_S3TC_DXT1_EXT
        RGBA_DXT1              => 16#83F1#,    -- GL_COMPRESSED_RGBA_S3TC_DXT1_EXT
        RGBA_DXT3              => 16#83F2#,    -- GL_COMPRESSED_RGBA_S3TC_DXT3_EXT
        RGBA_DXT5              => 16#83F3#,    -- GL_COMPRESSED_RGBA_S3TC_DXT5_EXT

        RGBA32F                => 16#8814#,    -- GL_RGBA32F
        RGB32F                 => 16#8815#,    -- GL_RGB32F
        RGBA16F                => 16#881A#,    -- GL_RGBA16F
        RGB16F                 => 16#881B#,    -- GL_RGB16F
        D24S8                  => 16#88F0#,    -- GL_DEPTH24_STENCIL8

        RG11B10F               => 16#8C3A#,    -- GL_R11F_G11F_B10F
        RGB9E5                 => 16#8C3D#,    -- GL_RGB9_E5
        SRGB8                  => 16#8C41#,    -- GL_SRGB8
        SRGB8_Alpha8           => 16#8C43#,    -- GL_SRGB8_ALPHA8
        SRGB_DXT1              => 16#8C4C#,    -- GL_COMPRESSED_SRGB_S3TC_DXT1_EXT
        SRGB_Alpha_DXT1        => 16#8C4D#,    -- GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT
        SRGB_Alpha_DXT3        => 16#8C4E#,    -- GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT
        SRGB_Alpha_DXT5        => 16#8C4F#,    -- GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT
        D32F                   => 16#8CAC#,    -- GL_DEPTH_COMPONENT32F
        D32FS8X24              => 16#8CAD#,    -- GL_DEPTH32F_STENCIL8

        R5G6B5                 => 16#8D62#,    -- GL_RGB565
        RGBA32U                => 16#8D70#,    -- GL_RGBA32UI
        RGB32U                 => 16#8D71#,    -- GL_RGB32UI
        RGBA16U                => 16#8D76#,    -- GL_RGBA16UI
        RGB16U                 => 16#8D77#,    -- GL_RGB16UI
        RGBA8U                 => 16#8D7C#,    -- GL_RGBA8UI
        RGB8U                  => 16#8D7D#,    -- GL_RGB8UI
        RGBA32I                => 16#8D82#,    -- GL_RGBA32I
        RGB32I                 => 16#8D83#,    -- GL_RGB32I
        RGBA16I                => 16#8D88#,    -- GL_RGBA16I
        RGB16I                 => 16#8D89#,    -- GL_RGB16I
        RGBA8I                 => 16#8D8E#,    -- GL_RGBA8I
        RGB8I                  => 16#8D8F#,    -- GL_RGB8I
        R_ATI1N_UNorm          => 16#8DBB#,    -- GL_COMPRESSED_RED_RGTC1
        R_ATI1N_SNorm          => 16#8DBC#,    -- GL_COMPRESSED_SIGNED_RED_RGTC1
        RG_ATI2N_UNorm         => 16#8DBD#,    -- GL_COMPRESSED_RG_RGTC2
        RG_ATI2N_SNorm         => 16#8DBE#,    -- GL_COMPRESSED_SIGNED_RG_RGTC2

        RGB_BP_UNorm           => 16#8E8C#,    -- GL_COMPRESSED_RGBA_BPTC_UNORM_ARB
        SRGB_BP_UNorm          => 16#8E8D#,    -- GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB
        RGB_BP_SIGNED_FLOAT    => 16#8E8E#,    -- GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB
        RGB_BP_UNSIGNED_FLOAT  => 16#8E8F#,    -- GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB

        R8_SNorm               => 16#8F94#,    -- GL_R8_SNORM
        RG8_SNorm              => 16#8F95#,    -- GL_RG8_SNORM
        RGB8_SNorm             => 16#8F96#,    -- GL_RGB8_SNORM
        RGBA8_SNorm            => 16#8F97#,    -- GL_RGBA8_SNORM
        R16_SNorm              => 16#8F98#,    -- GL_R16_SNORM
        RG16_SNorm             => 16#8F99#,    -- GL_RG16_SNORM
        RGB16_SNorm            => 16#8F9A#,    -- GL_RGB16_SNORM
        RGBA16_SNorm           => 16#8F9B#,    -- GL_RGBA16_SNORM

        RGB10A2                => 16#906F#     -- GL_RGB10_A2UI
    );         

type CubeMapFace is (
        CubeMapPositiveX  ,  -- GL_TEXTURE_CUBE_MAP_POSITIVE_X
        CubeMapNegativeX  ,  -- GL_TEXTURE_CUBE_MAP_NEGATIVE_X
        CubeMapPositiveY  ,  -- GL_TEXTURE_CUBE_MAP_POSITIVE_Y
        CubeMapNegativeY  ,  -- GL_TEXTURE_CUBE_MAP_NEGATIVE_Y
        CubeMapPositiveZ  ,  -- GL_TEXTURE_CUBE_MAP_POSITIVE_Z
        CubeMapNegativeZ     -- GL_TEXTURE_CUBE_MAP_NEGATIVE_Z
   ); 
pragma Convention(C,CubeMapFace);

for  CubeMapFace use (
        CubeMapPositiveX => 16#8515#,
        CubeMapNegativeX => 16#8516#,
        CubeMapPositiveY => 16#8517#,
        CubeMapNegativeY => 16#8518#,
        CubeMapPositiveZ => 16#8519#,
        CubeMapNegativeZ => 16#851A#
   ); 
   
 type PixelFormat is  (
        NoSourceFormat ,    -- GL_NONE
        Depth          ,    -- GL_DEPTH_COMPONENT
        Red            ,    -- GL_RED
        RGB            ,    -- GL_RGB
        RGBA           ,    -- GL_RGBA
        BGR            ,    -- GL_BGR
        BGRA           ,    -- GL_BGRA
        RG             ,    -- GL_RG
        RG_Integer     ,    -- GL_RG_INTEGER
        DepthStencil   ,    -- GL_DEPTH_STENCIL
        Red_Integer    ,    -- GL_RED_INTEGER
        RGB_Integer    ,    -- GL_RGB_INTEGER
        RGBA_Integer   ,    -- GL_RGBA_INTEGER
        BGR_Integer    ,    -- GL_BGR_INTEGER
        BGRA_Integer        -- GL_BGRA_INTEGER
    );   
  pragma Convention(C,PixelFormat);
   
 for  PixelFormat use (
        NoSourceFormat => 0,         
        Depth          => 16#1902#,    
        Red            => 16#1903#,    
        RGB            => 16#1907#,    
        RGBA           => 16#1908#,    
        BGR            => 16#80E0#,    
        BGRA           => 16#80E1#,    
        RG             => 16#8227#,    
        RG_Integer     => 16#8228#,    
        DepthStencil   => 16#84F9#,    
        Red_Integer    => 16#8D94#,    
        RGB_Integer    => 16#8D98#,    
        RGBA_Integer   => 16#8D99#,    
        BGR_Integer    => 16#8D9A#,    
        BGRA_Integer   => 16#8D9B#    
    ); 
    
 type PixelType is (
        NoPixelType        ,    -- GL_NONE
        Int8               ,    -- GL_BYTE
        UInt8              ,    -- GL_UNSIGNED_BYTE
        Int16              ,    -- GL_SHORT
        UInt16             ,    -- GL_UNSIGNED_SHORT
        Int32              ,    -- GL_INT
        UInt32             ,    -- GL_UNSIGNED_INT
        Float32            ,    -- GL_FLOAT
        Float16            ,    -- GL_HALF_FLOAT
                                --
        UInt8_RG3B2        ,    -- GL_UNSIGNED_BYTE_3_3_2
        UInt16_RGBA4       ,    -- GL_UNSIGNED_SHORT_4_4_4_4
        UInt16_RGB5A1      ,    -- GL_UNSIGNED_SHORT_5_5_5_1
        UInt32_RGB10A2     ,    -- GL_UNSIGNED_INT_10_10_10_2
                                --
        UInt8_RG3B2_Rev    ,    -- GL_UNSIGNED_BYTE_2_3_3_REV
        UInt16_R5G6B5      ,    -- GL_UNSIGNED_SHORT_5_6_5
        UInt16_R5G6B5_Rev  ,    -- GL_UNSIGNED_SHORT_5_6_5_REV
        UInt16_RGBA4_Rev   ,    -- GL_UNSIGNED_SHORT_4_4_4_4_REV
        UInt16_RGB5A1_Rev  ,    -- GL_UNSIGNED_SHORT_1_5_5_5_REV
        UInt32_RGB10A2_Rev ,    -- GL_UNSIGNED_INT_2_10_10_10_REV
                                --
        UInt32_RG11B10F    ,    -- GL_UNSIGNED_INT_10F_11F_11F_REV
        UInt32_RGB9_E5          -- GL_UNSIGNED_INT_5_9_9_9_REV
    );      

 for  PixelType use (
        NoPixelType        => 0,        
        Int8               => 16#1400#,    
        UInt8              => 16#1401#,    
        Int16              => 16#1402#,    
        UInt16             => 16#1403#,    
        Int32              => 16#1404#,    
        UInt32             => 16#1405#,    
        Float32            => 16#1406#,    
        Float16            => 16#140B#,    

        UInt8_RG3B2        => 16#8032#,    
        UInt16_RGBA4       => 16#8033#,    
        UInt16_RGB5A1      => 16#8034#,    
        UInt32_RGB10A2     => 16#8036#,    

        UInt8_RG3B2_Rev    => 16#8362#,    
        UInt16_R5G6B5      => 16#8363#,    
        UInt16_R5G6B5_Rev  => 16#8364#,    
        UInt16_RGBA4_Rev   => 16#8365#,    
        UInt16_RGB5A1_Rev  => 16#8366#,    
        UInt32_RGB10A2_Rev => 16#8368#,    

        UInt32_RG11B10F    => 16#8C3B#,    
        UInt32_RGB9_E5     => 16#8C3E#    
    );      
    
type Feature is (
        ImmutableStorage            ,
        ImmutableMultisampleStorage ,
        TextureRectangle            ,
        TextureArrays               ,
        Texture3D                   ,
        TextureMultisample          ,
        TextureBuffer               ,
        TextureCubeMapArrays        ,
        Swizzle                     ,
        StencilTexturing            ,
        AnisotropicFiltering        ,
        NPOTTextures                ,
        NPOTTextureRepeat            
  );         
 pragma Convention(C,Feature);
    
for  Feature use (
        ImmutableStorage            => 16#00000001#,
        ImmutableMultisampleStorage => 16#00000002#,
        TextureRectangle            => 16#00000004#,
        TextureArrays               => 16#00000008#,
        Texture3D                   => 16#00000010#,
        TextureMultisample          => 16#00000020#,
        TextureBuffer               => 16#00000040#,
        TextureCubeMapArrays        => 16#00000080#,
        Swizzle                     => 16#00000100#,
        StencilTexturing            => 16#00000200#,
        AnisotropicFiltering        => 16#00000400#,
        NPOTTextures                => 16#00000800#,
        NPOTTextureRepeat           => 16#00001000#
  );
  
 type SwizzleComponent is (
        SwizzleRed   ,  -- GL_TEXTURE_SWIZZLE_R
        SwizzleGreen ,  -- GL_TEXTURE_SWIZZLE_G
        SwizzleBlue  ,  -- GL_TEXTURE_SWIZZLE_B
        SwizzleAlpha    -- GL_TEXTURE_SWIZZLE_A
 );
 pragma Convention(C,SwizzleComponent);
  
 for  SwizzleComponent use (
        SwizzleRed   => 16#8E42#,  
        SwizzleGreen => 16#8E43#,  
        SwizzleBlue  => 16#8E44#,  
        SwizzleAlpha => 16#8E45#  
 );

 type SwizzleValue is (
        ZeroValue  , -- GL_ZERO
        OneValue   , -- GL_ONE
        RedValue   , -- GL_RED
        GreenValue , -- GL_GREEN
        BlueValue  , -- GL_BLUE
        AlphaValue   -- GL_ALPHA
  );             
 pragma Convention(C,SwizzleValue);

 for  SwizzleValue use (
        ZeroValue  => 0       ,  
        OneValue   => 1       ,  
        RedValue   => 16#1903#, 
        GreenValue => 16#1904#, 
        BlueValue  => 16#1905#, 
        AlphaValue => 16#1906# 
  );             

type DepthStencilMode is (
        StencilMode ,   -- GL_STENCIL_INDEX
        DepthMode       -- GL_DEPTH_COMPONENT
 );    
pragma Convention(C,DepthStencilMode);
    
for  DepthStencilMode use (
        StencilMode => 16#1901#,
        DepthMode   => 16#1902# 
 );    
    
type Filter is (
        Nearest               ,   -- GL_NEAREST
        Linear                ,   -- GL_LINEAR
        NearestMipMapNearest  ,   -- GL_NEAREST_MIPMAP_NEAREST
        LinearMipMapNearest   ,   -- GL_LINEAR_MIPMAP_NEAREST
        NearestMipMapLinear   ,   -- GL_NEAREST_MIPMAP_LINEAR
        LinearMipMapLinear        -- GL_LINEAR_MIPMAP_LINEAR
 ); 
 pragma Convention(C,Filter);
    
for  Filter use (
        Nearest                 => 16#2600#, 
        Linear                  => 16#2601#, 
        NearestMipMapNearest    => 16#2700#, 
        LinearMipMapNearest     => 16#2701#, 
        NearestMipMapLinear     => 16#2702#, 
        LinearMipMapLinear      => 16#2703# 
 ); 
    
 type WrapMode is (
        Repeat         , -- GL_REPEAT
        ClampToBorder  , -- GL_CLAMP_TO_BORDER
        ClampToEdge    , -- GL_CLAMP_TO_EDGE
        MirroredRepeat   -- GL_MIRRORED_REPEAT
 );
 pragma Convention(C,WrapMode);
    
 for  WrapMode use (
        Repeat         => 16#2901#, 
        ClampToBorder  => 16#812D#, 
        ClampToEdge    => 16#812F#, 
        MirroredRepeat => 16#8370# 
 );

 type CoordinateDirection is (
        DirectionS , -- GL_TEXTURE_WRAP_S
        DirectionT , -- GL_TEXTURE_WRAP_T
        DirectionR   -- GL_TEXTURE_WRAP_R
  );         
 pragma Convention(C,CoordinateDirection);

 for  CoordinateDirection use (
        DirectionS => 16#2802#,
        DirectionT => 16#2803#,
        DirectionR => 16#8072# 
  );         

 function  QOpenGLTexture_create(tag:Target) return QOpenGLTextureH;
 pragma Import(C,QOpenGLTexture_create, "QOpenGLTexture_create");
 
 function  QOpenGLTexture_create2(image: not null QImageH; genMipMaps:MipMapGeneration  := GenerateMipMaps) return QOpenGLTextureH;
 pragma Import(C,QOpenGLTexture_create2, "QOpenGLTexture_create2");
 
 procedure QOpenGLTexture_delete(handle: not null QOpenGLTextureH);
 pragma Import(C,QOpenGLTexture_delete, "QOpenGLTexture_delete");
 
 function  QOpenGLTexture_create3(handle: not null QOpenGLTextureH) return boolean;
 pragma Import(C,QOpenGLTexture_create3, "QOpenGLTexture_create3");
 
 procedure QOpenGLTexture_destroy(handle: not null QOpenGLTextureH);
 pragma Import(C,QOpenGLTexture_destroy, "QOpenGLTexture_destroy");
 
 function  QOpenGLTexture_isCreated(handle: not null QOpenGLTextureH) return boolean;
 pragma Import(C,QOpenGLTexture_isCreated, "QOpenGLTexture_isCreated");
 
 function  QOpenGLTexture_textureId(handle: not null QOpenGLTextureH) return quint;
 pragma Import(C,QOpenGLTexture_textureId, "QOpenGLTexture_textureId");
 
 procedure QOpenGLTexture_bind(handle: not null QOpenGLTextureH);
 pragma Import(C,QOpenGLTexture_bind, "QOpenGLTexture_bind");
 
 procedure QOpenGLTexture_bind2(handle: not null QOpenGLTextureH;unit:quint; reset:TextureUnitReset := DontResetTextureUnit);
 pragma Import(C,QOpenGLTexture_bind2, "QOpenGLTexture_bind2");
 
 procedure QOpenGLTexture_release(handle: not null QOpenGLTextureH);
 pragma Import(C,QOpenGLTexture_release, "QOpenGLTexture_release");
 
 procedure QOpenGLTexture_release2(handle: not null QOpenGLTextureH;unit:quint; reset:TextureUnitReset := DontResetTextureUnit);
 pragma Import(C,QOpenGLTexture_release2, "QOpenGLTexture_release2");
 
 function  QOpenGLTexture_isBound(handle: not null QOpenGLTextureH) return boolean;
 pragma Import(C,QOpenGLTexture_isBound, "QOpenGLTexture_isBound");
 
 function  QOpenGLTexture_isBound2(handle: not null QOpenGLTextureH;unit:quint) return boolean;
 pragma Import(C,QOpenGLTexture_isBound2, "QOpenGLTexture_isBound2");
 
 function  QOpenGLTexture_boundTextureId(target:BindingTarget) return quint;
 pragma Import(C,QOpenGLTexture_boundTextureId, "QOpenGLTexture_boundTextureId");
 
 function  QOpenGLTexture_boundTextureId2(unit:quint; target:BindingTarget) return quint;
 pragma Import(C,QOpenGLTexture_boundTextureId2, "QOpenGLTexture_boundTextureId2");
 
 procedure QOpenGLTexture_setFormat(handle: not null QOpenGLTextureH;format:TextureFormat);
 pragma Import(C,QOpenGLTexture_setFormat, "QOpenGLTexture_setFormat");
 
 function  QOpenGLTexture_format(handle: not null QOpenGLTextureH) return TextureFormat;
 pragma Import(C,QOpenGLTexture_format, "QOpenGLTexture_format");
 
 procedure QOpenGLTexture_setSize(handle: not null QOpenGLTextureH; width:integer;height:integer := 1; depth:integer := 1);
 pragma Import(C,QOpenGLTexture_setSize, "QOpenGLTexture_setSize");
 
 function  QOpenGLTexture_width(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_width, "QOpenGLTexture_width");
 
 function  QOpenGLTexture_height(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_height, "QOpenGLTexture_height");
 
 function  QOpenGLTexture_depth(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_depth, "QOpenGLTexture_depth");
 
 procedure QOpenGLTexture_setMipLevels(handle: not null QOpenGLTextureH; levels:integer);
 pragma Import(C,QOpenGLTexture_setMipLevels, "QOpenGLTexture_setMipLevels");
 
 function  QOpenGLTexture_mipLevels(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_mipLevels, "QOpenGLTexture_mipLevels");
 
 function  QOpenGLTexture_maximumMipLevels(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_maximumMipLevels, "QOpenGLTexture_maximumMipLevels");
 
 procedure QOpenGLTexture_setLayers(handle: not null QOpenGLTextureH;layers:integer);
 pragma Import(C,QOpenGLTexture_setLayers, "QOpenGLTexture_setLayers");
 
 function  QOpenGLTexture_layers(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_layers, "QOpenGLTexture_layers");
 
 function  QOpenGLTexture_faces(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_faces, "QOpenGLTexture_faces");
 
 procedure QOpenGLTexture_allocateStorage(handle: not null QOpenGLTextureH);
 pragma Import(C,QOpenGLTexture_allocateStorage, "QOpenGLTexture_allocateStorage");
 
 function  QOpenGLTexture_isStorageAllocated(handle: not null QOpenGLTextureH) return boolean;
 pragma Import(C,QOpenGLTexture_isStorageAllocated, "QOpenGLTexture_isStorageAllocated");
 
 function  QOpenGLTexture_createTextureView(handle: not null QOpenGLTextureH;tag:Target; viewFormat:TextureFormat; minimumMipmapLevel,maximumMipmapLevel,minimumLayer, maximumLayer:integer) return QOpenGLTextureH;
 pragma Import(C,QOpenGLTexture_createTextureView, "QOpenGLTexture_createTextureView");
 
 function  QOpenGLTexture_isTextureView(handle: not null QOpenGLTextureH) return boolean;
 pragma Import(C,QOpenGLTexture_isTextureView, "QOpenGLTexture_isTextureView");
 
 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH;mipLevel,layer:integer; cubeFace:CubeMapFace;sourceFormat:PixelFormat; sourceType:PixelType;data:void_Star; options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setData, "QOpenGLTexture_setData");
 
 procedure QOpenGLTexture_setData2(handle: not null QOpenGLTextureH;mipLevel,layer:integer; sourceFormat:PixelFormat; sourceType:PixelType ;data:void_Star; options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setData2, "QOpenGLTexture_setData2");
 
 procedure QOpenGLTexture_setData3(handle: not null QOpenGLTextureH;mipLevel:integer;sourceFormat:PixelFormat ; sourceType:PixelType ;data:void_Star; options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setData3, "QOpenGLTexture_setData3");
 
 procedure QOpenGLTexture_setData4(handle: not null QOpenGLTextureH; sourceFormat:PixelFormat;  sourceType:PixelType;data:void_Star; options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setData4, "QOpenGLTexture_setData4");
 
 procedure QOpenGLTexture_setData5(handle: not null QOpenGLTextureH;image:QImageH;  genMipMaps:MipMapGeneration := GenerateMipMaps);
 pragma Import(C,QOpenGLTexture_setData5, "QOpenGLTexture_setData5");
 
 procedure QOpenGLTexture_setCompressedData(handle: not null QOpenGLTextureH;mipLevel,layer:integer;  cubeFace:CubeMapFace;dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setCompressedData, "QOpenGLTexture_setCompressedData");
 
 procedure QOpenGLTexture_setCompressedData2(handle: not null QOpenGLTextureH;mipLevel,layer,dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setCompressedData2, "QOpenGLTexture_setCompressedData2");
 
 procedure QOpenGLTexture_setCompressedData3(handle: not null QOpenGLTextureH;mipLevel, dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setCompressedData3, "QOpenGLTexture_setCompressedData3");
 
 procedure QOpenGLTexture_setCompressedData4(handle: not null QOpenGLTextureH;dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null);
 pragma Import(C,QOpenGLTexture_setCompressedData4, "QOpenGLTexture_setCompressedData4");
 
 procedure QOpenGLTexture_setMipBaseLevel(handle: not null QOpenGLTextureH;baseLevel:integer);
 pragma Import(C,QOpenGLTexture_setMipBaseLevel, "QOpenGLTexture_setMipBaseLevel");
 
 function  QOpenGLTexture_mipBaseLevel(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_mipBaseLevel, "QOpenGLTexture_mipBaseLevel");
 
 procedure QOpenGLTexture_setMipMaxLevel(handle: not null QOpenGLTextureH;maxLevel:integer);
 pragma Import(C,QOpenGLTexture_setMipMaxLevel, "QOpenGLTexture_setMipMaxLevel");
 
 function  QOpenGLTexture_mipMaxLevel(handle: not null QOpenGLTextureH) return integer;
 pragma Import(C,QOpenGLTexture_mipMaxLevel, "QOpenGLTexture_mipMaxLevel");
 
 procedure QOpenGLTexture_setMipLevelRange(handle: not null QOpenGLTextureH;baseLevel,maxLevel:integer);
 pragma Import(C,QOpenGLTexture_setMipLevelRange, "QOpenGLTexture_setMipLevelRange");
 
 function  QOpenGLTexture_mipLevelRange(handle: not null QOpenGLTextureH) return pinteger;
 pragma Import(C,QOpenGLTexture_mipLevelRange, "QOpenGLTexture_mipLevelRange");
 
 procedure QOpenGLTexture_setAutoMipMapGenerationEnabled(handle: not null QOpenGLTextureH; enabled:boolean);
 pragma Import(C,QOpenGLTexture_setAutoMipMapGenerationEnabled, "QOpenGLTexture_setAutoMipMapGenerationEnabled");
 
 function  QOpenGLTexture_isAutoMipMapGenerationEnabled(handle: not null QOpenGLTextureH) return boolean;
 pragma Import(C,QOpenGLTexture_isAutoMipMapGenerationEnabled, "QOpenGLTexture_isAutoMipMapGenerationEnabled");
 
 procedure QOpenGLTexture_generateMipMaps(handle: not null QOpenGLTextureH);
 pragma Import(C,QOpenGLTexture_generateMipMaps, "QOpenGLTexture_generateMipMaps");
 
 procedure QOpenGLTexture_generateMipMaps2(handle: not null QOpenGLTextureH; baseLevel:integer; resetBaseLevel:boolean := true);
 pragma Import(C,QOpenGLTexture_generateMipMaps2, "QOpenGLTexture_generateMipMaps2");
 
 procedure QOpenGLTexture_setSwizzleMask(handle: not null QOpenGLTextureH;component:SwizzleComponent; value:SwizzleValue);
 pragma Import(C,QOpenGLTexture_setSwizzleMask, "QOpenGLTexture_setSwizzleMask");
 
 procedure QOpenGLTexture_setSwizzleMask2(handle: not null QOpenGLTextureH;r,g,b,a:SwizzleValue);
 pragma Import(C,QOpenGLTexture_setSwizzleMask2, "QOpenGLTexture_setSwizzleMask2");
 
 function  QOpenGLTexture_swizzleMask(handle: not null QOpenGLTextureH;componenet:SwizzleComponent) return SwizzleValue;
 pragma Import(C,QOpenGLTexture_swizzleMask, "QOpenGLTexture_swizzleMask");
 
 procedure QOpenGLTexture_setDepthStencilMode(handle: not null QOpenGLTextureH;mode:DepthStencilMode);
 pragma Import(C,QOpenGLTexture_setDepthStencilMode, "QOpenGLTexture_setDepthStencilMode");
 
 function  QOpenGLTexture_depthStencilMode(handle: not null QOpenGLTextureH) return DepthStencilMode;
 pragma Import(C,QOpenGLTexture_depthStencilMode, "QOpenGLTexture_depthStencilMode");
 
 procedure QOpenGLTexture_setMinificationFilter(handle: not null QOpenGLTextureH;mFilter:Filter);
 pragma Import(C,QOpenGLTexture_setMinificationFilter, "QOpenGLTexture_setMinificationFilter");
 
 function  QOpenGLTexture_minificationFilter(handle: not null QOpenGLTextureH) return Filter;
 pragma Import(C,QOpenGLTexture_minificationFilter, "QOpenGLTexture_minificationFilter");
 
 procedure QOpenGLTexture_setMagnificationFilter(handle: not null QOpenGLTextureH;mFiler:Filter);
 pragma Import(C,QOpenGLTexture_setMagnificationFilter, "QOpenGLTexture_setMagnificationFilter");
 
 function  QOpenGLTexture_magnificationFilter(handle: not null QOpenGLTextureH) return Filter;
 pragma Import(C,QOpenGLTexture_magnificationFilter, "QOpenGLTexture_magnificationFilter");
 
 procedure QOpenGLTexture_setMinMagFilters(handle: not null QOpenGLTextureH;minificationFilter, magnificationFilter:Filter);
 pragma Import(C,QOpenGLTexture_setMinMagFilters, "QOpenGLTexture_setMinMagFilters");
 
 function  QOpenGLTexture_minMagFilters(handle: not null QOpenGLTextureH) return pinteger;
 pragma Import(C,QOpenGLTexture_minMagFilters, "QOpenGLTexture_minMagFilters");
 
 procedure QOpenGLTexture_setMaximumAnisotropy(handle: not null QOpenGLTextureH; anisotropy:float);
 pragma Import(C,QOpenGLTexture_setMaximumAnisotropy, "QOpenGLTexture_setMaximumAnisotropy");
 
 function  QOpenGLTexture_maximumAnisotropy(handle: not null QOpenGLTextureH) return float;
 pragma Import(C,QOpenGLTexture_maximumAnisotropy, "QOpenGLTexture_maximumAnisotropy");
 
 procedure QOpenGLTexture_setWrapMode(handle: not null QOpenGLTextureH;mode:WrapMode);
 pragma Import(C,QOpenGLTexture_setWrapMode, "QOpenGLTexture_setWrapMode");
 
 procedure QOpenGLTexture_setWrapMode2(handle: not null QOpenGLTextureH;direction:CoordinateDirection; mode:WrapMode);
 pragma Import(C,QOpenGLTexture_setWrapMode2, "QOpenGLTexture_setWrapMode2");
 
 function  QOpenGLTexture_wrapMode(handle: not null QOpenGLTextureH;direction:CoordinateDirection) return WrapMode;
 pragma Import(C,QOpenGLTexture_wrapMode, "QOpenGLTexture_wrapMode");
 
 procedure QOpenGLTexture_setBorderColor(handle: not null QOpenGLTextureH;color:QColorH);
 pragma Import(C,QOpenGLTexture_setBorderColor, "QOpenGLTexture_setBorderColor");
 
 procedure QOpenGLTexture_setBorderColor2(handle: not null QOpenGLTextureH;r,g,b,a: float);
 pragma Import(C,QOpenGLTexture_setBorderColor2, "QOpenGLTexture_setBorderColor2");
 
 procedure QOpenGLTexture_setBorderColor3(handle: not null QOpenGLTextureH;r,g,b,a: integer);
 pragma Import(C,QOpenGLTexture_setBorderColor3, "QOpenGLTexture_setBorderColor3");
 
 procedure QOpenGLTexture_setBorderColor4(handle: not null QOpenGLTextureH;r,g,b,a: quint);
 pragma Import(C,QOpenGLTexture_setBorderColor4, "QOpenGLTexture_setBorderColor4");
 
 function  QOpenGLTexture_borderColor(handle: not null QOpenGLTextureH) return QColorH;
 pragma Import(C,QOpenGLTexture_borderColor, "QOpenGLTexture_borderColor");
 
 procedure QOpenGLTexture_borderColor2(handle: not null QOpenGLTextureH;border:pfloat);
 pragma Import(C,QOpenGLTexture_borderColor2, "QOpenGLTexture_borderColor2");
 
 procedure QOpenGLTexture_borderColor3(handle: not null QOpenGLTextureH;border:pinteger);
 pragma Import(C,QOpenGLTexture_borderColor3, "QOpenGLTexture_borderColor3");
 
 procedure QOpenGLTexture_borderColor4(handle: not null QOpenGLTextureH;border:pquint);
 pragma Import(C,QOpenGLTexture_borderColor4, "QOpenGLTexture_borderColor4");
 
 procedure QOpenGLTexture_setMinimumLevelOfDetail(handle: not null QOpenGLTextureH;value:float);
 pragma Import(C,QOpenGLTexture_setMinimumLevelOfDetail, "QOpenGLTexture_setMinimumLevelOfDetail");
 
 function  QOpenGLTexture_minimumLevelOfDetail(handle: not null QOpenGLTextureH) return float;
 pragma Import(C,QOpenGLTexture_minimumLevelOfDetail, "QOpenGLTexture_minimumLevelOfDetail");
 
 procedure QOpenGLTexture_setMaximumLevelOfDetail(handle: not null QOpenGLTextureH;value:float);
 pragma Import(C,QOpenGLTexture_setMaximumLevelOfDetail, "QOpenGLTexture_setMaximumLevelOfDetail");
 
 function  QOpenGLTexture_maximumLevelOfDetail(handle: not null QOpenGLTextureH) return float;
 pragma Import(C,QOpenGLTexture_maximumLevelOfDetail, "QOpenGLTexture_maximumLevelOfDetail");
 
 procedure QOpenGLTexture_setLevelOfDetailRange(handle: not null QOpenGLTextureH;min,max:float);
 pragma Import(C,QOpenGLTexture_setLevelOfDetailRange, "QOpenGLTexture_setLevelOfDetailRange");
 
 function  QOpenGLTexture_levelOfDetailRange(handle: not null QOpenGLTextureH) return pfloat;
 pragma Import(C,QOpenGLTexture_levelOfDetailRange, "QOpenGLTexture_levelOfDetailRange");
 
 procedure QOpenGLTexture_setLevelofDetailBias(handle: not null QOpenGLTextureH;bias:float);
 pragma Import(C,QOpenGLTexture_setLevelofDetailBias, "QOpenGLTexture_setLevelofDetailBias");
 
 function  QOpenGLTexture_levelofDetailBias(handle: not null QOpenGLTextureH) return float;
 pragma Import(C,QOpenGLTexture_levelofDetailBias, "QOpenGLTexture_levelofDetailBias");
 
------------------------------------------------------------------------
 function  QOpenGLTexture_create(image: not null QImageH; genMipMaps:MipMapGeneration  := GenerateMipMaps) return QOpenGLTextureH;
 function  QOpenGLTexture_create(handle: not null QOpenGLTextureH) return boolean;
 procedure QOpenGLTexture_bind(handle: not null QOpenGLTextureH;unit:quint; reset:TextureUnitReset := DontResetTextureUnit);
 procedure QOpenGLTexture_release(handle: not null QOpenGLTextureH;unit:quint; reset:TextureUnitReset := DontResetTextureUnit);
 function  QOpenGLTexture_isBound(handle: not null QOpenGLTextureH;unit:quint) return boolean;
 function  QOpenGLTexture_boundTextureId(unit:quint; target:BindingTarget) return quint;
 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH;mipLevel,layer:integer; sourceFormat:PixelFormat; sourceType:PixelType ;data:void_Star; options:QOpenGLPixelTransferOptionsH := null);
 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH;mipLevel:integer;sourceFormat:PixelFormat ; sourceType:PixelType ;data:void_Star; options:QOpenGLPixelTransferOptionsH := null);
 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH; sourceFormat:PixelFormat;  sourceType:PixelType;data:void_Star; options:QOpenGLPixelTransferOptionsH := null);
 procedure QOpenGLTexture_setData(handle: not null QOpenGLTextureH;image:QImageH;  genMipMaps:MipMapGeneration := GenerateMipMaps);
 procedure QOpenGLTexture_setCompressedData(handle: not null QOpenGLTextureH;mipLevel,layer,dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null);
 procedure QOpenGLTexture_setCompressedData(handle: not null QOpenGLTextureH;mipLevel, dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null);
 procedure QOpenGLTexture_setCompressedData(handle: not null QOpenGLTextureH;dataSize:integer; data:void_Star;options:QOpenGLPixelTransferOptionsH := null);
 procedure QOpenGLTexture_generateMipMaps(handle: not null QOpenGLTextureH; baseLevel:integer; resetBaseLevel:boolean := true);
 procedure QOpenGLTexture_setSwizzleMask(handle: not null QOpenGLTextureH;r,g,b,a:SwizzleValue);
 procedure QOpenGLTexture_setWrapMode(handle: not null QOpenGLTextureH;direction:CoordinateDirection; mode:WrapMode);
 procedure QOpenGLTexture_setBorderColor(handle: not null QOpenGLTextureH;r,g,b,a: float);
 procedure QOpenGLTexture_setBorderColor(handle: not null QOpenGLTextureH;r,g,b,a: integer);
 procedure QOpenGLTexture_setBorderColor(handle: not null QOpenGLTextureH;r,g,b,a: quint);
 procedure QOpenGLTexture_borderColor(handle: not null QOpenGLTextureH;border:pfloat);
 procedure QOpenGLTexture_borderColor(handle: not null QOpenGLTextureH;border:pinteger);
 procedure QOpenGLTexture_borderColor(handle: not null QOpenGLTextureH;border:pquint);
end;
