--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License, or (at your option) any later version.

package Qt.QGL is

   GL_VERSION_1_1                                : constant  := 1;
   GL_VERSION_1_2                                : constant  := 1;
   GL_VERSION_1_3                                : constant  := 1;

   GL_ARB_IMAGING                                : constant  := 1;

   --  Boolean values
   GL_FALSE                                      : constant  := 16#0000#;
   GL_TRUE                                       : constant  := 16#0001#;

   --  Data types
   GL_BYTE                                       : constant  := 16#1400#;
   GL_UNSIGNED_BYTE                              : constant  := 16#1401#;
   GL_SHORT                                      : constant  := 16#1402#;
   GL_UNSIGNED_SHORT                             : constant  := 16#1403#;
   GL_INT                                        : constant  := 16#1404#;
   GL_UNSIGNED_INT                               : constant  := 16#1405#;
   GL_FLOAT                                      : constant  := 16#1406#;
   GL_DOUBLE                                     : constant  := 16#140A#;
   GL_2_BYTES                                    : constant  := 16#1407#;
   GL_3_BYTES                                    : constant  := 16#1408#;
   GL_4_BYTES                                    : constant  := 16#1409#;

   --  Primitives
   GL_POINTS                                     : constant  := 16#0000#;
   GL_LINES                                      : constant  := 16#0001#;
   GL_LINE_LOOP                                  : constant  := 16#0002#;
   GL_LINE_STRIP                                 : constant  := 16#0003#;
   GL_TRIANGLES                                  : constant  := 16#0004#;
   GL_TRIANGLE_STRIP                             : constant  := 16#0005#;
   GL_TRIANGLE_FAN                               : constant  := 16#0006#;
   GL_QUADS                                      : constant  := 16#0007#;
   GL_QUAD_STRIP                                 : constant  := 16#0008#;
   GL_POLYGON                                    : constant  := 16#0009#;

   --  Vertex Arrays
   GL_VERTEX_ARRAY                               : constant  := 16#0000_8074#;
   GL_NORMAL_ARRAY                               : constant  := 16#0000_8075#;
   GL_COLOR_ARRAY                                : constant  := 16#0000_8076#;
   GL_INDEX_ARRAY                                : constant  := 16#0000_8077#;
   GL_TEXTURE_COORD_ARRAY                        : constant  := 16#0000_8078#;
   GL_EDGE_FLAG_ARRAY                            : constant  := 16#0000_8079#;
   GL_VERTEX_ARRAY_SIZE                          : constant  := 16#0000_807A#;
   GL_VERTEX_ARRAY_TYPE                          : constant  := 16#0000_807B#;
   GL_VERTEX_ARRAY_STRIDE                        : constant  := 16#0000_807C#;
   GL_NORMAL_ARRAY_TYPE                          : constant  := 16#0000_807E#;
   GL_NORMAL_ARRAY_STRIDE                        : constant  := 16#0000_807F#;
   GL_COLOR_ARRAY_SIZE                           : constant  := 16#0000_8081#;
   GL_COLOR_ARRAY_TYPE                           : constant  := 16#0000_8082#;
   GL_COLOR_ARRAY_STRIDE                         : constant  := 16#0000_8083#;
   GL_INDEX_ARRAY_TYPE                           : constant  := 16#0000_8085#;
   GL_INDEX_ARRAY_STRIDE                         : constant  := 16#0000_8086#;
   GL_TEXTURE_COORD_ARRAY_SIZE                   : constant  := 16#0000_8088#;
   GL_TEXTURE_COORD_ARRAY_TYPE                   : constant  := 16#0000_8089#;
   GL_TEXTURE_COORD_ARRAY_STRIDE                 : constant  := 16#0000_808A#;
   GL_EDGE_FLAG_ARRAY_STRIDE                     : constant  := 16#0000_808C#;
   GL_VERTEX_ARRAY_POINTER                       : constant  := 16#0000_808E#;
   GL_NORMAL_ARRAY_POINTER                       : constant  := 16#0000_808F#;
   GL_COLOR_ARRAY_POINTER                        : constant  := 16#0000_8090#;
   GL_INDEX_ARRAY_POINTER                        : constant  := 16#0000_8091#;
   GL_TEXTURE_COORD_ARRAY_POINTER                : constant  := 16#0000_8092#;
   GL_EDGE_FLAG_ARRAY_POINTER                    : constant  := 16#0000_8093#;
   GL_V2F                                        : constant  := 16#2A20#;
   GL_V3F                                        : constant  := 16#2A21#;
   GL_C4UB_V2F                                   : constant  := 16#2A22#;
   GL_C4UB_V3F                                   : constant  := 16#2A23#;
   GL_C3F_V3F                                    : constant  := 16#2A24#;
   GL_N3F_V3F                                    : constant  := 16#2A25#;
   GL_C4F_N3F_V3F                                : constant  := 16#2A26#;
   GL_T2F_V3F                                    : constant  := 16#2A27#;
   GL_T4F_V4F                                    : constant  := 16#2A28#;
   GL_T2F_C4UB_V3F                               : constant  := 16#2A29#;
   GL_T2F_C3F_V3F                                : constant  := 16#2A2A#;
   GL_T2F_N3F_V3F                                : constant  := 16#2A2B#;
   GL_T2F_C4F_N3F_V3F                            : constant  := 16#2A2C#;
   GL_T4F_C4F_N3F_V4F                            : constant  := 16#2A2D#;

   --  Matrix Mode
   GL_MATRIX_MODE                                : constant  := 16#0BA0#;
   GL_MODELVIEW                                  : constant  := 16#1700#;
   GL_PROJECTION                                 : constant  := 16#1701#;
   GL_TEXTURE                                    : constant  := 16#1702#;

   --  Points
   GL_POINT_SMOOTH                               : constant  := 16#0B10#;
   GL_POINT_SIZE                                 : constant  := 16#0B11#;
   GL_POINT_SIZE_GRANULARITY                     : constant  := 16#0B13#;
   GL_POINT_SIZE_RANGE                           : constant  := 16#0B12#;

   --  Lines
   GL_LINE_SMOOTH                                : constant  := 16#0B20#;
   GL_LINE_STIPPLE                               : constant  := 16#0B24#;
   GL_LINE_STIPPLE_PATTERN                       : constant  := 16#0B25#;
   GL_LINE_STIPPLE_REPEAT                        : constant  := 16#0B26#;
   GL_LINE_WIDTH                                 : constant  := 16#0B21#;
   GL_LINE_WIDTH_GRANULARITY                     : constant  := 16#0B23#;
   GL_LINE_WIDTH_RANGE                           : constant  := 16#0B22#;

   --  Polygons
   GL_POINT                                      : constant  := 16#1B00#;
   GL_LINE                                       : constant  := 16#1B01#;
   GL_FILL                                       : constant  := 16#1B02#;
   GL_CW                                         : constant  := 16#0900#;
   GL_CCW                                        : constant  := 16#0901#;
   GL_FRONT                                      : constant  := 16#0404#;
   GL_BACK                                       : constant  := 16#0405#;
   GL_POLYGON_MODE                               : constant  := 16#0B40#;
   GL_POLYGON_SMOOTH                             : constant  := 16#0B41#;
   GL_POLYGON_STIPPLE                            : constant  := 16#0B42#;
   GL_EDGE_FLAG                                  : constant  := 16#0B43#;
   GL_CULL_FACE                                  : constant  := 16#0B44#;
   GL_CULL_FACE_MODE                             : constant  := 16#0B45#;
   GL_FRONT_FACE                                 : constant  := 16#0B46#;
   GL_POLYGON_OFFSET_FACTOR                      : constant  := 16#0000_8038#;
   GL_POLYGON_OFFSET_UNITS                       : constant  := 16#2A00#;
   GL_POLYGON_OFFSET_POINT                       : constant  := 16#2A01#;
   GL_POLYGON_OFFSET_LINE                        : constant  := 16#2A02#;
   GL_POLYGON_OFFSET_FILL                        : constant  := 16#0000_8037#;

   --  Display lists
   GL_COMPILE                                    : constant  := 16#1300#;
   GL_COMPILE_AND_EXECUTE                        : constant  := 16#1301#;
   GL_LIST_BASE                                  : constant  := 16#0B32#;
   GL_LIST_INDEX                                 : constant  := 16#0B33#;
   GL_LIST_MODE                                  : constant  := 16#0B30#;

   --  Depth buffer
   GL_NEVER                                      : constant  := 16#0200#;
   GL_LESS                                       : constant  := 16#0201#;
   GL_EQUAL                                      : constant  := 16#0202#;
   GL_LEQUAL                                     : constant  := 16#0203#;
   GL_GREATER                                    : constant  := 16#0204#;
   GL_NOTEQUAL                                   : constant  := 16#0205#;
   GL_GEQUAL                                     : constant  := 16#0206#;
   GL_ALWAYS                                     : constant  := 16#0207#;
   GL_DEPTH_TEST                                 : constant  := 16#0B71#;
   GL_DEPTH_BITS                                 : constant  := 16#0D56#;
   GL_DEPTH_CLEAR_VALUE                          : constant  := 16#0B73#;
   GL_DEPTH_FUNC                                 : constant  := 16#0B74#;
   GL_DEPTH_RANGE                                : constant  := 16#0B70#;
   GL_DEPTH_WRITEMASK                            : constant  := 16#0B72#;
   GL_DEPTH_COMPONENT                            : constant  := 16#1902#;

   --  Lighting
   GL_LIGHTING                                   : constant  := 16#0B50#;
   GL_LIGHT0                                     : constant  := 16#4000#;
   GL_LIGHT1                                     : constant  := 16#4001#;
   GL_LIGHT2                                     : constant  := 16#4002#;
   GL_LIGHT3                                     : constant  := 16#4003#;
   GL_LIGHT4                                     : constant  := 16#4004#;
   GL_LIGHT5                                     : constant  := 16#4005#;
   GL_LIGHT6                                     : constant  := 16#4006#;
   GL_LIGHT7                                     : constant  := 16#4007#;
   GL_SPOT_EXPONENT                              : constant  := 16#1205#;
   GL_SPOT_CUTOFF                                : constant  := 16#1206#;
   GL_CONSTANT_ATTENUATION                       : constant  := 16#1207#;
   GL_LINEAR_ATTENUATION                         : constant  := 16#1208#;
   GL_QUADRATIC_ATTENUATION                      : constant  := 16#1209#;
   GL_AMBIENT                                    : constant  := 16#1200#;
   GL_DIFFUSE                                    : constant  := 16#1201#;
   GL_SPECULAR                                   : constant  := 16#1202#;
   GL_SHININESS                                  : constant  := 16#1601#;
   GL_EMISSION                                   : constant  := 16#1600#;
   GL_POSITION                                   : constant  := 16#1203#;
   GL_SPOT_DIRECTION                             : constant  := 16#1204#;
   GL_AMBIENT_AND_DIFFUSE                        : constant  := 16#1602#;
   GL_COLOR_INDEXES                              : constant  := 16#1603#;
   GL_LIGHT_MODEL_TWO_SIDE                       : constant  := 16#0B52#;
   GL_LIGHT_MODEL_LOCAL_VIEWER                   : constant  := 16#0B51#;
   GL_LIGHT_MODEL_AMBIENT                        : constant  := 16#0B53#;
   GL_FRONT_AND_BACK                             : constant  := 16#0408#;
   GL_SHADE_MODEL                                : constant  := 16#0B54#;
   GL_FLAT                                       : constant  := 16#1D00#;
   GL_SMOOTH                                     : constant  := 16#1D01#;
   GL_COLOR_MATERIAL                             : constant  := 16#0B57#;
   GL_COLOR_MATERIAL_FACE                        : constant  := 16#0B55#;
   GL_COLOR_MATERIAL_PARAMETER                   : constant  := 16#0B56#;
   GL_NORMALIZE                                  : constant  := 16#0BA1#;

   --  User clipping planes
   GL_CLIP_PLANE0                                : constant  := 16#3000#;
   GL_CLIP_PLANE1                                : constant  := 16#3001#;
   GL_CLIP_PLANE2                                : constant  := 16#3002#;
   GL_CLIP_PLANE3                                : constant  := 16#3003#;
   GL_CLIP_PLANE4                                : constant  := 16#3004#;
   GL_CLIP_PLANE5                                : constant  := 16#3005#;

   --  Accumulation buffer
   GL_ACCUM_RED_BITS                             : constant  := 16#0D58#;
   GL_ACCUM_GREEN_BITS                           : constant  := 16#0D59#;
   GL_ACCUM_BLUE_BITS                            : constant  := 16#0D5A#;
   GL_ACCUM_ALPHA_BITS                           : constant  := 16#0D5B#;
   GL_ACCUM_CLEAR_VALUE                          : constant  := 16#0B80#;
   GL_ACCUM                                      : constant  := 16#0100#;
   GL_ADD                                        : constant  := 16#0104#;
   GL_LOAD                                       : constant  := 16#0101#;
   GL_MULT                                       : constant  := 16#0103#;
   GL_RETURN                                     : constant  := 16#0102#;

   --  Alpha testing
   GL_ALPHA_TEST                                 : constant  := 16#0BC0#;
   GL_ALPHA_TEST_REF                             : constant  := 16#0BC2#;
   GL_ALPHA_TEST_FUNC                            : constant  := 16#0BC1#;

   --  Blending
   GL_BLEND                                      : constant  := 16#0BE2#;
   GL_BLEND_SRC                                  : constant  := 16#0BE1#;
   GL_BLEND_DST                                  : constant  := 16#0BE0#;
   GL_ZERO                                       : constant  := 16#0000#;
   GL_ONE                                        : constant  := 16#0001#;
   GL_SRC_COLOR                                  : constant  := 16#0300#;
   GL_ONE_MINUS_SRC_COLOR                        : constant  := 16#0301#;
   GL_SRC_ALPHA                                  : constant  := 16#0302#;
   GL_ONE_MINUS_SRC_ALPHA                        : constant  := 16#0303#;
   GL_DST_ALPHA                                  : constant  := 16#0304#;
   GL_ONE_MINUS_DST_ALPHA                        : constant  := 16#0305#;
   GL_DST_COLOR                                  : constant  := 16#0306#;
   GL_ONE_MINUS_DST_COLOR                        : constant  := 16#0307#;
   GL_SRC_ALPHA_SATURATE                         : constant  := 16#0308#;

   --  Render mode
   GL_FEEDBACK                                   : constant  := 16#1C01#;
   GL_RENDER                                     : constant  := 16#1C00#;
   GL_SELECT                                     : constant  := 16#1C02#;

   --  Feedback
   GL_2D                                         : constant  := 16#0600#;
   GL_3D                                         : constant  := 16#0601#;
   GL_3D_COLOR                                   : constant  := 16#0602#;
   GL_3D_COLOR_TEXTURE                           : constant  := 16#0603#;
   GL_4D_COLOR_TEXTURE                           : constant  := 16#0604#;
   GL_POINT_TOKEN                                : constant  := 16#0701#;
   GL_LINE_TOKEN                                 : constant  := 16#0702#;
   GL_LINE_RESET_TOKEN                           : constant  := 16#0707#;
   GL_POLYGON_TOKEN                              : constant  := 16#0703#;
   GL_BITMAP_TOKEN                               : constant  := 16#0704#;
   GL_DRAW_PIXEL_TOKEN                           : constant  := 16#0705#;
   GL_COPY_PIXEL_TOKEN                           : constant  := 16#0706#;
   GL_PASS_THROUGH_TOKEN                         : constant  := 16#0700#;
   GL_FEEDBACK_BUFFER_POINTER                    : constant  := 16#0DF0#;
   GL_FEEDBACK_BUFFER_SIZE                       : constant  := 16#0DF1#;
   GL_FEEDBACK_BUFFER_TYPE                       : constant  := 16#0DF2#;

   --  Selection
   GL_SELECTION_BUFFER_POINTER                   : constant  := 16#0DF3#;
   GL_SELECTION_BUFFER_SIZE                      : constant  := 16#0DF4#;

   --  Fog
   GL_FOG                                        : constant  := 16#0B60#;
   GL_FOG_MODE                                   : constant  := 16#0B65#;
   GL_FOG_DENSITY                                : constant  := 16#0B62#;
   GL_FOG_COLOR                                  : constant  := 16#0B66#;
   GL_FOG_INDEX                                  : constant  := 16#0B61#;
   GL_FOG_START                                  : constant  := 16#0B63#;
   GL_FOG_END                                    : constant  := 16#0B64#;
   GL_LINEAR                                     : constant  := 16#2601#;
   GL_EXP                                        : constant  := 16#0800#;
   GL_EXP2                                       : constant  := 16#0801#;

   --  Logic ops
   GL_LOGIC_OP                                   : constant  := 16#0BF1#;
   GL_INDEX_LOGIC_OP                             : constant  := 16#0BF1#;
   GL_COLOR_LOGIC_OP                             : constant  := 16#0BF2#;
   GL_LOGIC_OP_MODE                              : constant  := 16#0BF0#;
   GL_CLEAR                                      : constant  := 16#1500#;
   GL_SET                                        : constant  := 16#150F#;
   GL_COPY                                       : constant  := 16#1503#;
   GL_COPY_INVERTED                              : constant  := 16#150C#;
   GL_NOOP                                       : constant  := 16#1505#;
   GL_INVERT                                     : constant  := 16#150A#;
   GL_AND                                        : constant  := 16#1501#;
   GL_NAND                                       : constant  := 16#150E#;
   GL_OR                                         : constant  := 16#1507#;
   GL_NOR                                        : constant  := 16#1508#;
   GL_XOR                                        : constant  := 16#1506#;
   GL_EQUIV                                      : constant  := 16#1509#;
   GL_AND_REVERSE                                : constant  := 16#1502#;
   GL_AND_INVERTED                               : constant  := 16#1504#;
   GL_OR_REVERSE                                 : constant  := 16#150B#;
   GL_OR_INVERTED                                : constant  := 16#150D#;

   --  Stencil
   GL_STENCIL_TEST                               : constant  := 16#0B90#;
   GL_STENCIL_WRITEMASK                          : constant  := 16#0B98#;
   GL_STENCIL_BITS                               : constant  := 16#0D57#;
   GL_STENCIL_FUNC                               : constant  := 16#0B92#;
   GL_STENCIL_VALUE_MASK                         : constant  := 16#0B93#;
   GL_STENCIL_REF                                : constant  := 16#0B97#;
   GL_STENCIL_FAIL                               : constant  := 16#0B94#;
   GL_STENCIL_PASS_DEPTH_PASS                    : constant  := 16#0B96#;
   GL_STENCIL_PASS_DEPTH_FAIL                    : constant  := 16#0B95#;
   GL_STENCIL_CLEAR_VALUE                        : constant  := 16#0B91#;
   GL_STENCIL_INDEX                              : constant  := 16#1901#;
   GL_KEEP                                       : constant  := 16#1E00#;
   GL_REPLACE                                    : constant  := 16#1E01#;
   GL_INCR                                       : constant  := 16#1E02#;
   GL_DECR                                       : constant  := 16#1E03#;

   --  Buffers, Pixel Drawing/Reading
   GL_NONE                                       : constant  := 16#0000#;
   GL_LEFT                                       : constant  := 16#0406#;
   GL_RIGHT                                      : constant  := 16#0407#;
   --  GL_FRONT                                     ;
   --  GL_BACK                                      ;
   --  GL_FRONT_AND_BACK                            ;
   GL_FRONT_LEFT                                 : constant  := 16#0400#;
   GL_FRONT_RIGHT                                : constant  := 16#0401#;
   GL_BACK_LEFT                                  : constant  := 16#0402#;
   GL_BACK_RIGHT                                 : constant  := 16#0403#;
   GL_AUX0                                       : constant  := 16#0409#;
   GL_AUX1                                       : constant  := 16#040A#;
   GL_AUX2                                       : constant  := 16#040B#;
   GL_AUX3                                       : constant  := 16#040C#;
   GL_COLOR_INDEX                                : constant  := 16#1900#;
   GL_RED                                        : constant  := 16#1903#;
   GL_GREEN                                      : constant  := 16#1904#;
   GL_BLUE                                       : constant  := 16#1905#;
   GL_ALPHA                                      : constant  := 16#1906#;
   GL_LUMINANCE                                  : constant  := 16#1909#;
   GL_LUMINANCE_ALPHA                            : constant  := 16#190A#;
   GL_ALPHA_BITS                                 : constant  := 16#0D55#;
   GL_RED_BITS                                   : constant  := 16#0D52#;
   GL_GREEN_BITS                                 : constant  := 16#0D53#;
   GL_BLUE_BITS                                  : constant  := 16#0D54#;
   GL_INDEX_BITS                                 : constant  := 16#0D51#;
   GL_SUBPIXEL_BITS                              : constant  := 16#0D50#;
   GL_AUX_BUFFERS                                : constant  := 16#0C00#;
   GL_READ_BUFFER                                : constant  := 16#0C02#;
   GL_DRAW_BUFFER                                : constant  := 16#0C01#;
   GL_DOUBLEBUFFER                               : constant  := 16#0C32#;
   GL_STEREO                                     : constant  := 16#0C33#;
   GL_BITMAP                                     : constant  := 16#1A00#;
   GL_COLOR                                      : constant  := 16#1800#;
   GL_DEPTH                                      : constant  := 16#1801#;
   GL_STENCIL                                    : constant  := 16#1802#;
   GL_DITHER                                     : constant  := 16#0BD0#;
   GL_RGB                                        : constant  := 16#1907#;
   GL_RGBA                                       : constant  := 16#1908#;

   --  Implementation limits
   GL_MAX_LIST_NESTING                           : constant  := 16#0B31#;
   GL_MAX_ATTRIB_STACK_DEPTH                     : constant  := 16#0D35#;
   GL_MAX_MODELVIEW_STACK_DEPTH                  : constant  := 16#0D36#;
   GL_MAX_NAME_STACK_DEPTH                       : constant  := 16#0D37#;
   GL_MAX_PROJECTION_STACK_DEPTH                 : constant  := 16#0D38#;
   GL_MAX_TEXTURE_STACK_DEPTH                    : constant  := 16#0D39#;
   GL_MAX_EVAL_ORDER                             : constant  := 16#0D30#;
   GL_MAX_LIGHTS                                 : constant  := 16#0D31#;
   GL_MAX_CLIP_PLANES                            : constant  := 16#0D32#;
   GL_MAX_TEXTURE_SIZE                           : constant  := 16#0D33#;
   GL_MAX_PIXEL_MAP_TABLE                        : constant  := 16#0D34#;
   GL_MAX_VIEWPORT_DIMS                          : constant  := 16#0D3A#;
   GL_MAX_CLIENT_ATTRIB_STACK_DEPTH              : constant  := 16#0D3B#;

   --  Gets
   GL_ATTRIB_STACK_DEPTH                         : constant  := 16#0BB0#;
   GL_CLIENT_ATTRIB_STACK_DEPTH                  : constant  := 16#0BB1#;
   GL_COLOR_CLEAR_VALUE                          : constant  := 16#0C22#;
   GL_COLOR_WRITEMASK                            : constant  := 16#0C23#;
   GL_CURRENT_INDEX                              : constant  := 16#0B01#;
   GL_CURRENT_COLOR                              : constant  := 16#0B00#;
   GL_CURRENT_NORMAL                             : constant  := 16#0B02#;
   GL_CURRENT_RASTER_COLOR                       : constant  := 16#0B04#;
   GL_CURRENT_RASTER_DISTANCE                    : constant  := 16#0B09#;
   GL_CURRENT_RASTER_INDEX                       : constant  := 16#0B05#;
   GL_CURRENT_RASTER_POSITION                    : constant  := 16#0B07#;
   GL_CURRENT_RASTER_TEXTURE_COORDS              : constant  := 16#0B06#;
   GL_CURRENT_RASTER_POSITION_VALID              : constant  := 16#0B08#;
   GL_CURRENT_TEXTURE_COORDS                     : constant  := 16#0B03#;
   GL_INDEX_CLEAR_VALUE                          : constant  := 16#0C20#;
   GL_INDEX_MODE                                 : constant  := 16#0C30#;
   GL_INDEX_WRITEMASK                            : constant  := 16#0C21#;
   GL_MODELVIEW_MATRIX                           : constant  := 16#0BA6#;
   GL_MODELVIEW_STACK_DEPTH                      : constant  := 16#0BA3#;
   GL_NAME_STACK_DEPTH                           : constant  := 16#0D70#;
   GL_PROJECTION_MATRIX                          : constant  := 16#0BA7#;
   GL_PROJECTION_STACK_DEPTH                     : constant  := 16#0BA4#;
   GL_RENDER_MODE                                : constant  := 16#0C40#;
   GL_RGBA_MODE                                  : constant  := 16#0C31#;
   GL_TEXTURE_MATRIX                             : constant  := 16#0BA8#;
   GL_TEXTURE_STACK_DEPTH                        : constant  := 16#0BA5#;
   GL_VIEWPORT                                   : constant  := 16#0BA2#;

   --  Evaluators
   GL_AUTO_NORMAL                                : constant  := 16#0D80#;
   GL_MAP1_COLOR_4                               : constant  := 16#0D90#;
   GL_MAP1_INDEX                                 : constant  := 16#0D91#;
   GL_MAP1_NORMAL                                : constant  := 16#0D92#;
   GL_MAP1_TEXTURE_COORD_1                       : constant  := 16#0D93#;
   GL_MAP1_TEXTURE_COORD_2                       : constant  := 16#0D94#;
   GL_MAP1_TEXTURE_COORD_3                       : constant  := 16#0D95#;
   GL_MAP1_TEXTURE_COORD_4                       : constant  := 16#0D96#;
   GL_MAP1_VERTEX_3                              : constant  := 16#0D97#;
   GL_MAP1_VERTEX_4                              : constant  := 16#0D98#;
   GL_MAP2_COLOR_4                               : constant  := 16#0DB0#;
   GL_MAP2_INDEX                                 : constant  := 16#0DB1#;
   GL_MAP2_NORMAL                                : constant  := 16#0DB2#;
   GL_MAP2_TEXTURE_COORD_1                       : constant  := 16#0DB3#;
   GL_MAP2_TEXTURE_COORD_2                       : constant  := 16#0DB4#;
   GL_MAP2_TEXTURE_COORD_3                       : constant  := 16#0DB5#;
   GL_MAP2_TEXTURE_COORD_4                       : constant  := 16#0DB6#;
   GL_MAP2_VERTEX_3                              : constant  := 16#0DB7#;
   GL_MAP2_VERTEX_4                              : constant  := 16#0DB8#;
   GL_MAP1_GRID_DOMAIN                           : constant  := 16#0DD0#;
   GL_MAP1_GRID_SEGMENTS                         : constant  := 16#0DD1#;
   GL_MAP2_GRID_DOMAIN                           : constant  := 16#0DD2#;
   GL_MAP2_GRID_SEGMENTS                         : constant  := 16#0DD3#;
   GL_COEFF                                      : constant  := 16#0A00#;
   GL_DOMAIN                                     : constant  := 16#0A02#;
   GL_ORDER                                      : constant  := 16#0A01#;

   --  Hints
   GL_FOG_HINT                                   : constant  := 16#0C54#;
   GL_LINE_SMOOTH_HINT                           : constant  := 16#0C52#;
   GL_PERSPECTIVE_CORRECTION_HINT                : constant  := 16#0C50#;
   GL_POINT_SMOOTH_HINT                          : constant  := 16#0C51#;
   GL_POLYGON_SMOOTH_HINT                        : constant  := 16#0C53#;
   GL_DONT_CARE                                  : constant  := 16#1100#;
   GL_FASTEST                                    : constant  := 16#1101#;
   GL_NICEST                                     : constant  := 16#1102#;

   --  Scissor box
   GL_SCISSOR_TEST                               : constant  := 16#0C11#;
   GL_SCISSOR_BOX                                : constant  := 16#0C10#;

   --  Pixel Mode / Transfer
   GL_MAP_COLOR                                  : constant  := 16#0D10#;
   GL_MAP_STENCIL                                : constant  := 16#0D11#;
   GL_INDEX_SHIFT                                : constant  := 16#0D12#;
   GL_INDEX_OFFSET                               : constant  := 16#0D13#;
   GL_RED_SCALE                                  : constant  := 16#0D14#;
   GL_RED_BIAS                                   : constant  := 16#0D15#;
   GL_GREEN_SCALE                                : constant  := 16#0D18#;
   GL_GREEN_BIAS                                 : constant  := 16#0D19#;
   GL_BLUE_SCALE                                 : constant  := 16#0D1A#;
   GL_BLUE_BIAS                                  : constant  := 16#0D1B#;
   GL_ALPHA_SCALE                                : constant  := 16#0D1C#;
   GL_ALPHA_BIAS                                 : constant  := 16#0D1D#;
   GL_DEPTH_SCALE                                : constant  := 16#0D1E#;
   GL_DEPTH_BIAS                                 : constant  := 16#0D1F#;
   GL_PIXEL_MAP_S_TO_S_SIZE                      : constant  := 16#0CB1#;
   GL_PIXEL_MAP_I_TO_I_SIZE                      : constant  := 16#0CB0#;
   GL_PIXEL_MAP_I_TO_R_SIZE                      : constant  := 16#0CB2#;
   GL_PIXEL_MAP_I_TO_G_SIZE                      : constant  := 16#0CB3#;
   GL_PIXEL_MAP_I_TO_B_SIZE                      : constant  := 16#0CB4#;
   GL_PIXEL_MAP_I_TO_A_SIZE                      : constant  := 16#0CB5#;
   GL_PIXEL_MAP_R_TO_R_SIZE                      : constant  := 16#0CB6#;
   GL_PIXEL_MAP_G_TO_G_SIZE                      : constant  := 16#0CB7#;
   GL_PIXEL_MAP_B_TO_B_SIZE                      : constant  := 16#0CB8#;
   GL_PIXEL_MAP_A_TO_A_SIZE                      : constant  := 16#0CB9#;
   GL_PIXEL_MAP_S_TO_S                           : constant  := 16#0C71#;
   GL_PIXEL_MAP_I_TO_I                           : constant  := 16#0C70#;
   GL_PIXEL_MAP_I_TO_R                           : constant  := 16#0C72#;
   GL_PIXEL_MAP_I_TO_G                           : constant  := 16#0C73#;
   GL_PIXEL_MAP_I_TO_B                           : constant  := 16#0C74#;
   GL_PIXEL_MAP_I_TO_A                           : constant  := 16#0C75#;
   GL_PIXEL_MAP_R_TO_R                           : constant  := 16#0C76#;
   GL_PIXEL_MAP_G_TO_G                           : constant  := 16#0C77#;
   GL_PIXEL_MAP_B_TO_B                           : constant  := 16#0C78#;
   GL_PIXEL_MAP_A_TO_A                           : constant  := 16#0C79#;
   GL_PACK_ALIGNMENT                             : constant  := 16#0D05#;
   GL_PACK_LSB_FIRST                             : constant  := 16#0D01#;
   GL_PACK_ROW_LENGTH                            : constant  := 16#0D02#;
   GL_PACK_SKIP_PIXELS                           : constant  := 16#0D04#;
   GL_PACK_SKIP_ROWS                             : constant  := 16#0D03#;
   GL_PACK_SWAP_BYTES                            : constant  := 16#0D00#;
   GL_UNPACK_ALIGNMENT                           : constant  := 16#0CF5#;
   GL_UNPACK_LSB_FIRST                           : constant  := 16#0CF1#;
   GL_UNPACK_ROW_LENGTH                          : constant  := 16#0CF2#;
   GL_UNPACK_SKIP_PIXELS                         : constant  := 16#0CF4#;
   GL_UNPACK_SKIP_ROWS                           : constant  := 16#0CF3#;
   GL_UNPACK_SWAP_BYTES                          : constant  := 16#0CF0#;
   GL_ZOOM_X                                     : constant  := 16#0D16#;
   GL_ZOOM_Y                                     : constant  := 16#0D17#;

   --  Texture mapping
   GL_TEXTURE_ENV                                : constant  := 16#2300#;
   GL_TEXTURE_ENV_MODE                           : constant  := 16#2200#;
   GL_TEXTURE_1D                                 : constant  := 16#0DE0#;
   GL_TEXTURE_2D                                 : constant  := 16#0DE1#;
   GL_TEXTURE_WRAP_S                             : constant  := 16#2802#;
   GL_TEXTURE_WRAP_T                             : constant  := 16#2803#;
   GL_TEXTURE_MAG_FILTER                         : constant  := 16#2800#;
   GL_TEXTURE_MIN_FILTER                         : constant  := 16#2801#;
   GL_TEXTURE_ENV_COLOR                          : constant  := 16#2201#;
   GL_TEXTURE_GEN_S                              : constant  := 16#0C60#;
   GL_TEXTURE_GEN_T                              : constant  := 16#0C61#;
   GL_TEXTURE_GEN_MODE                           : constant  := 16#2500#;
   GL_TEXTURE_BORDER_COLOR                       : constant  := 16#1004#;
   GL_TEXTURE_WIDTH                              : constant  := 16#1000#;
   GL_TEXTURE_HEIGHT                             : constant  := 16#1001#;
   GL_TEXTURE_BORDER                             : constant  := 16#1005#;
   GL_TEXTURE_COMPONENTS                         : constant  := 16#1003#;
   GL_TEXTURE_RED_SIZE                           : constant  := 16#0000_805C#;
   GL_TEXTURE_GREEN_SIZE                         : constant  := 16#0000_805D#;
   GL_TEXTURE_BLUE_SIZE                          : constant  := 16#0000_805E#;
   GL_TEXTURE_ALPHA_SIZE                         : constant  := 16#0000_805F#;
   GL_TEXTURE_LUMINANCE_SIZE                     : constant  := 16#0000_8060#;
   GL_TEXTURE_INTENSITY_SIZE                     : constant  := 16#0000_8061#;
   GL_NEAREST_MIPMAP_NEAREST                     : constant  := 16#2700#;
   GL_NEAREST_MIPMAP_LINEAR                      : constant  := 16#2702#;
   GL_LINEAR_MIPMAP_NEAREST                      : constant  := 16#2701#;
   GL_LINEAR_MIPMAP_LINEAR                       : constant  := 16#2703#;
   GL_OBJECT_LINEAR                              : constant  := 16#2401#;
   GL_OBJECT_PLANE                               : constant  := 16#2501#;
   GL_EYE_LINEAR                                 : constant  := 16#2400#;
   GL_EYE_PLANE                                  : constant  := 16#2502#;
   GL_SPHERE_MAP                                 : constant  := 16#2402#;
   GL_DECAL                                      : constant  := 16#2101#;
   GL_MODULATE                                   : constant  := 16#2100#;
   GL_NEAREST                                    : constant  := 16#2600#;
   GL_REPEAT                                     : constant  := 16#2901#;
   GL_CLAMP                                      : constant  := 16#2900#;
   GL_S                                          : constant  := 16#2000#;
   GL_T                                          : constant  := 16#2001#;
   GL_R                                          : constant  := 16#2002#;
   GL_Q                                          : constant  := 16#2003#;
   GL_TEXTURE_GEN_R                              : constant  := 16#0C62#;
   GL_TEXTURE_GEN_Q                              : constant  := 16#0C63#;

   --  Utility
   GL_VENDOR                                     : constant  := 16#1F00#;
   GL_RENDERER                                   : constant  := 16#1F01#;
   GL_VERSION                                    : constant  := 16#1F02#;
   GL_EXTENSIONS                                 : constant  := 16#1F03#;

   --  Errors
   GL_NO_ERROR                                   : constant  := 16#0000#;
   GL_INVALID_VALUE                              : constant  := 16#0501#;
   GL_INVALID_ENUM                               : constant  := 16#0500#;
   GL_INVALID_OPERATION                          : constant  := 16#0502#;
   GL_STACK_OVERFLOW                             : constant  := 16#0503#;
   GL_STACK_UNDERFLOW                            : constant  := 16#0504#;
   GL_OUT_OF_MEMORY                              : constant  := 16#0505#;

   --  glPushAttrib/glPopAttrib bits
   GL_CURRENT_BIT                                : constant  := 16#0001#;
   GL_POINT_BIT                                  : constant  := 16#0002#;
   GL_LINE_BIT                                   : constant  := 16#0004#;
   GL_POLYGON_BIT                                : constant  := 16#0008#;
   GL_POLYGON_STIPPLE_BIT                        : constant  := 16#0010#;
   GL_PIXEL_MODE_BIT                             : constant  := 16#0020#;
   GL_LIGHTING_BIT                               : constant  := 16#0040#;
   GL_FOG_BIT                                    : constant  := 16#0080#;
   GL_DEPTH_BUFFER_BIT                           : constant  := 16#0100#;
   GL_ACCUM_BUFFER_BIT                           : constant  := 16#0200#;
   GL_STENCIL_BUFFER_BIT                         : constant  := 16#0400#;
   GL_VIEWPORT_BIT                               : constant  := 16#0800#;
   GL_TRANSFORM_BIT                              : constant  := 16#1000#;
   GL_ENABLE_BIT                                 : constant  := 16#2000#;
   GL_COLOR_BUFFER_BIT                           : constant  := 16#4000#;
   GL_HINT_BIT                                   : constant  := 16#8000#;
   GL_EVAL_BIT                                   : constant  := 16#0001_0000#;
   GL_LIST_BIT                                   : constant  := 16#0002_0000#;
   GL_TEXTURE_BIT                                : constant  := 16#0004_0000#;
   GL_SCISSOR_BIT                                : constant  := 16#0008_0000#;
   GL_ALL_ATTRIB_BITS                            : constant  := 16#000F_FFFF#;

   --  OpenGL 1.1
   GL_PROXY_TEXTURE_1D                           : constant  := 16#0000_8063#;
   GL_PROXY_TEXTURE_2D                           : constant  := 16#0000_8064#;
   GL_TEXTURE_PRIORITY                           : constant  := 16#0000_8066#;
   GL_TEXTURE_RESIDENT                           : constant  := 16#0000_8067#;
   GL_TEXTURE_BINDING_1D                         : constant  := 16#0000_8068#;
   GL_TEXTURE_BINDING_2D                         : constant  := 16#0000_8069#;
   GL_TEXTURE_INTERNAL_FORMAT                    : constant  := 16#1003#;
   GL_ALPHA4                                     : constant  := 16#0000_803B#;
   GL_ALPHA8                                     : constant  := 16#0000_803C#;
   GL_ALPHA12                                    : constant  := 16#0000_803D#;
   GL_ALPHA16                                    : constant  := 16#0000_803E#;
   GL_LUMINANCE4                                 : constant  := 16#0000_803F#;
   GL_LUMINANCE8                                 : constant  := 16#0000_8040#;
   GL_LUMINANCE12                                : constant  := 16#0000_8041#;
   GL_LUMINANCE16                                : constant  := 16#0000_8042#;
   GL_LUMINANCE4_ALPHA4                          : constant  := 16#0000_8043#;
   GL_LUMINANCE6_ALPHA2                          : constant  := 16#0000_8044#;
   GL_LUMINANCE8_ALPHA8                          : constant  := 16#0000_8045#;
   GL_LUMINANCE12_ALPHA4                         : constant  := 16#0000_8046#;
   GL_LUMINANCE12_ALPHA12                        : constant  := 16#0000_8047#;
   GL_LUMINANCE16_ALPHA16                        : constant  := 16#0000_8048#;
   GL_INTENSITY                                  : constant  := 16#0000_8049#;
   GL_INTENSITY4                                 : constant  := 16#0000_804A#;
   GL_INTENSITY8                                 : constant  := 16#0000_804B#;
   GL_INTENSITY12                                : constant  := 16#0000_804C#;
   GL_INTENSITY16                                : constant  := 16#0000_804D#;
   GL_R3_G3_B2                                   : constant  := 16#2A10#;
   GL_RGB4                                       : constant  := 16#0000_804F#;
   GL_RGB5                                       : constant  := 16#0000_8050#;
   GL_RGB8                                       : constant  := 16#0000_8051#;
   GL_RGB10                                      : constant  := 16#0000_8052#;
   GL_RGB12                                      : constant  := 16#0000_8053#;
   GL_RGB16                                      : constant  := 16#0000_8054#;
   GL_RGBA2                                      : constant  := 16#0000_8055#;
   GL_RGBA4                                      : constant  := 16#0000_8056#;
   GL_RGB5_A1                                    : constant  := 16#0000_8057#;
   GL_RGBA8                                      : constant  := 16#0000_8058#;
   GL_RGB10_A2                                   : constant  := 16#0000_8059#;
   GL_RGBA12                                     : constant  := 16#0000_805A#;
   GL_RGBA16                                     : constant  := 16#0000_805B#;
   GL_CLIENT_PIXEL_STORE_BIT                     : constant  := 16#0001#;
   GL_CLIENT_VERTEX_ARRAY_BIT                    : constant  := 16#0002#;
   GL_ALL_CLIENT_ATTRIB_BITS                     : constant  := 16#FFFF_FFFF#;
   GL_CLIENT_ALL_ATTRIB_BITS                     : constant  := 16#FFFF_FFFF#;

   --  OpenGL 1.2
   GL_RESCALE_NORMAL                             : constant  := 16#0000_803A#;
   GL_CLAMP_TO_EDGE                              : constant  := 16#0000_812F#;
   GL_MAX_ELEMENTS_VERTICES                      : constant  := 16#0000_80E8#;
   GL_MAX_ELEMENTS_INDICES                       : constant  := 16#0000_80E9#;
   GL_BGR                                        : constant  := 16#0000_80E0#;
   GL_BGRA                                       : constant  := 16#0000_80E1#;
   GL_UNSIGNED_BYTE_3_3_2                        : constant  := 16#0000_8032#;
   GL_UNSIGNED_BYTE_2_3_3_REV                    : constant  := 16#0000_8362#;
   GL_UNSIGNED_SHORT_5_6_5                       : constant  := 16#0000_8363#;
   GL_UNSIGNED_SHORT_5_6_5_REV                   : constant  := 16#0000_8364#;
   GL_UNSIGNED_SHORT_4_4_4_4                     : constant  := 16#0000_8033#;
   GL_UNSIGNED_SHORT_4_4_4_4_REV                 : constant  := 16#0000_8365#;
   GL_UNSIGNED_SHORT_5_5_5_1                     : constant  := 16#0000_8034#;
   GL_UNSIGNED_SHORT_1_5_5_5_REV                 : constant  := 16#0000_8366#;
   GL_UNSIGNED_INT_8_8_8_8                       : constant  := 16#0000_8035#;
   GL_UNSIGNED_INT_8_8_8_8_REV                   : constant  := 16#0000_8367#;
   GL_UNSIGNED_INT_10_10_10_2                    : constant  := 16#0000_8036#;
   GL_UNSIGNED_INT_2_10_10_10_REV                : constant  := 16#0000_8368#;
   GL_LIGHT_MODEL_COLOR_CONTROL                  : constant  := 16#0000_81F8#;
   GL_SINGLE_COLOR                               : constant  := 16#0000_81F9#;
   GL_SEPARATE_SPECULAR_COLOR                    : constant  := 16#0000_81FA#;
   GL_TEXTURE_MIN_LOD                            : constant  := 16#0000_813A#;
   GL_TEXTURE_MAX_LOD                            : constant  := 16#0000_813B#;
   GL_TEXTURE_BASE_LEVEL                         : constant  := 16#0000_813C#;
   GL_TEXTURE_MAX_LEVEL                          : constant  := 16#0000_813D#;
   GL_SMOOTH_POINT_SIZE_RANGE                    : constant  := 16#0B12#;
   GL_SMOOTH_POINT_SIZE_GRANULARITY              : constant  := 16#0B13#;
   GL_SMOOTH_LINE_WIDTH_RANGE                    : constant  := 16#0B22#;
   GL_SMOOTH_LINE_WIDTH_GRANULARITY              : constant  := 16#0B23#;
   GL_ALIASED_POINT_SIZE_RANGE                   : constant  := 16#0000_846D#;
   GL_ALIASED_LINE_WIDTH_RANGE                   : constant  := 16#0000_846E#;
   GL_PACK_SKIP_IMAGES                           : constant  := 16#0000_806B#;
   GL_PACK_IMAGE_HEIGHT                          : constant  := 16#0000_806C#;
   GL_UNPACK_SKIP_IMAGES                         : constant  := 16#0000_806D#;
   GL_UNPACK_IMAGE_HEIGHT                        : constant  := 16#0000_806E#;
   GL_TEXTURE_3D                                 : constant  := 16#0000_806F#;
   GL_PROXY_TEXTURE_3D                           : constant  := 16#0000_8070#;
   GL_TEXTURE_DEPTH                              : constant  := 16#0000_8071#;
   GL_TEXTURE_WRAP_R                             : constant  := 16#0000_8072#;
   GL_MAX_3D_TEXTURE_SIZE                        : constant  := 16#0000_8073#;
   GL_TEXTURE_BINDING_3D                         : constant  := 16#0000_806A#;

   --  GL_ARB_imaging
   GL_CONSTANT_COLOR                             : constant  := 16#0000_8001#;
   GL_ONE_MINUS_CONSTANT_COLOR                   : constant  := 16#0000_8002#;
   GL_CONSTANT_ALPHA                             : constant  := 16#0000_8003#;
   GL_ONE_MINUS_CONSTANT_ALPHA                   : constant  := 16#0000_8004#;
   GL_COLOR_TABLE                                : constant  := 16#0000_80D0#;
   GL_POST_CONVOLUTION_COLOR_TABLE               : constant  := 16#0000_80D1#;
   GL_POST_COLOR_MATRIX_COLOR_TABLE              : constant  := 16#0000_80D2#;
   GL_PROXY_COLOR_TABLE                          : constant  := 16#0000_80D3#;
   GL_PROXY_POST_CONVOLUTION_COLOR_TABLE         : constant  := 16#0000_80D4#;
   GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE        : constant  := 16#0000_80D5#;
   GL_COLOR_TABLE_SCALE                          : constant  := 16#0000_80D6#;
   GL_COLOR_TABLE_BIAS                           : constant  := 16#0000_80D7#;
   GL_COLOR_TABLE_FORMAT                         : constant  := 16#0000_80D8#;
   GL_COLOR_TABLE_WIDTH                          : constant  := 16#0000_80D9#;
   GL_COLOR_TABLE_RED_SIZE                       : constant  := 16#0000_80DA#;
   GL_COLOR_TABLE_GREEN_SIZE                     : constant  := 16#0000_80DB#;
   GL_COLOR_TABLE_BLUE_SIZE                      : constant  := 16#0000_80DC#;
   GL_COLOR_TABLE_ALPHA_SIZE                     : constant  := 16#0000_80DD#;
   GL_COLOR_TABLE_LUMINANCE_SIZE                 : constant  := 16#0000_80DE#;
   GL_COLOR_TABLE_INTENSITY_SIZE                 : constant  := 16#0000_80DF#;
   GL_CONVOLUTION_1D                             : constant  := 16#0000_8010#;
   GL_CONVOLUTION_2D                             : constant  := 16#0000_8011#;
   GL_SEPARABLE_2D                               : constant  := 16#0000_8012#;
   GL_CONVOLUTION_BORDER_MODE                    : constant  := 16#0000_8013#;
   GL_CONVOLUTION_FILTER_SCALE                   : constant  := 16#0000_8014#;
   GL_CONVOLUTION_FILTER_BIAS                    : constant  := 16#0000_8015#;
   GL_REDUCE                                     : constant  := 16#0000_8016#;
   GL_CONVOLUTION_FORMAT                         : constant  := 16#0000_8017#;
   GL_CONVOLUTION_WIDTH                          : constant  := 16#0000_8018#;
   GL_CONVOLUTION_HEIGHT                         : constant  := 16#0000_8019#;
   GL_MAX_CONVOLUTION_WIDTH                      : constant  := 16#0000_801A#;
   GL_MAX_CONVOLUTION_HEIGHT                     : constant  := 16#0000_801B#;
   GL_POST_CONVOLUTION_RED_SCALE                 : constant  := 16#0000_801C#;
   GL_POST_CONVOLUTION_GREEN_SCALE               : constant  := 16#0000_801D#;
   GL_POST_CONVOLUTION_BLUE_SCALE                : constant  := 16#0000_801E#;
   GL_POST_CONVOLUTION_ALPHA_SCALE               : constant  := 16#0000_801F#;
   GL_POST_CONVOLUTION_RED_BIAS                  : constant  := 16#0000_8020#;
   GL_POST_CONVOLUTION_GREEN_BIAS                : constant  := 16#0000_8021#;
   GL_POST_CONVOLUTION_BLUE_BIAS                 : constant  := 16#0000_8022#;
   GL_POST_CONVOLUTION_ALPHA_BIAS                : constant  := 16#0000_8023#;
   GL_CONSTANT_BORDER                            : constant  := 16#0000_8151#;
   GL_REPLICATE_BORDER                           : constant  := 16#0000_8153#;
   GL_CONVOLUTION_BORDER_COLOR                   : constant  := 16#0000_8154#;
   GL_COLOR_MATRIX                               : constant  := 16#0000_80B1#;
   GL_COLOR_MATRIX_STACK_DEPTH                   : constant  := 16#0000_80B2#;
   GL_MAX_COLOR_MATRIX_STACK_DEPTH               : constant  := 16#0000_80B3#;
   GL_POST_COLOR_MATRIX_RED_SCALE                : constant  := 16#0000_80B4#;
   GL_POST_COLOR_MATRIX_GREEN_SCALE              : constant  := 16#0000_80B5#;
   GL_POST_COLOR_MATRIX_BLUE_SCALE               : constant  := 16#0000_80B6#;
   GL_POST_COLOR_MATRIX_ALPHA_SCALE              : constant  := 16#0000_80B7#;
   GL_POST_COLOR_MATRIX_RED_BIAS                 : constant  := 16#0000_80B8#;
   GL_POST_COLOR_MATRIX_GREEN_BIAS               : constant  := 16#0000_80B9#;
   GL_POST_COLOR_MATRIX_BLUE_BIAS                : constant  := 16#0000_80BA#;
   GL_POST_COLOR_MATRIX_ALPHA_BIAS               : constant  := 16#0000_80BB#;
   GL_HISTOGRAM                                  : constant  := 16#0000_8024#;
   GL_PROXY_HISTOGRAM                            : constant  := 16#0000_8025#;
   GL_HISTOGRAM_WIDTH                            : constant  := 16#0000_8026#;
   GL_HISTOGRAM_FORMAT                           : constant  := 16#0000_8027#;
   GL_HISTOGRAM_RED_SIZE                         : constant  := 16#0000_8028#;
   GL_HISTOGRAM_GREEN_SIZE                       : constant  := 16#0000_8029#;
   GL_HISTOGRAM_BLUE_SIZE                        : constant  := 16#0000_802A#;
   GL_HISTOGRAM_ALPHA_SIZE                       : constant  := 16#0000_802B#;
   GL_HISTOGRAM_LUMINANCE_SIZE                   : constant  := 16#0000_802C#;
   GL_HISTOGRAM_SINK                             : constant  := 16#0000_802D#;
   GL_MINMAX                                     : constant  := 16#0000_802E#;
   GL_MINMAX_FORMAT                              : constant  := 16#0000_802F#;
   GL_MINMAX_SINK                                : constant  := 16#0000_8030#;
   GL_TABLE_TOO_LARGE                            : constant  := 16#0000_8031#;
   GL_BLEND_EQUATION                             : constant  := 16#0000_8009#;
   GL_MIN                                        : constant  := 16#0000_8007#;
   GL_MAX                                        : constant  := 16#0000_8008#;
   GL_FUNC_ADD                                   : constant  := 16#0000_8006#;
   GL_FUNC_SUBTRACT                              : constant  := 16#0000_800A#;
   GL_FUNC_REVERSE_SUBTRACT                      : constant  := 16#0000_800B#;
   GL_BLEND_COLOR                                : constant  := 16#0000_8005#;

   --  OpenGL 1.3
   --  multitexture
   GL_TEXTURE0                                   : constant  := 16#0000_84C0#;
   GL_TEXTURE1                                   : constant  := 16#0000_84C1#;
   GL_TEXTURE2                                   : constant  := 16#0000_84C2#;
   GL_TEXTURE3                                   : constant  := 16#0000_84C3#;
   GL_TEXTURE4                                   : constant  := 16#0000_84C4#;
   GL_TEXTURE5                                   : constant  := 16#0000_84C5#;
   GL_TEXTURE6                                   : constant  := 16#0000_84C6#;
   GL_TEXTURE7                                   : constant  := 16#0000_84C7#;
   GL_TEXTURE8                                   : constant  := 16#0000_84C8#;
   GL_TEXTURE9                                   : constant  := 16#0000_84C9#;
   GL_TEXTURE10                                  : constant  := 16#0000_84CA#;
   GL_TEXTURE11                                  : constant  := 16#0000_84CB#;
   GL_TEXTURE12                                  : constant  := 16#0000_84CC#;
   GL_TEXTURE13                                  : constant  := 16#0000_84CD#;
   GL_TEXTURE14                                  : constant  := 16#0000_84CE#;
   GL_TEXTURE15                                  : constant  := 16#0000_84CF#;
   GL_TEXTURE16                                  : constant  := 16#0000_84D0#;
   GL_TEXTURE17                                  : constant  := 16#0000_84D1#;
   GL_TEXTURE18                                  : constant  := 16#0000_84D2#;
   GL_TEXTURE19                                  : constant  := 16#0000_84D3#;
   GL_TEXTURE20                                  : constant  := 16#0000_84D4#;
   GL_TEXTURE21                                  : constant  := 16#0000_84D5#;
   GL_TEXTURE22                                  : constant  := 16#0000_84D6#;
   GL_TEXTURE23                                  : constant  := 16#0000_84D7#;
   GL_TEXTURE24                                  : constant  := 16#0000_84D8#;
   GL_TEXTURE25                                  : constant  := 16#0000_84D9#;
   GL_TEXTURE26                                  : constant  := 16#0000_84DA#;
   GL_TEXTURE27                                  : constant  := 16#0000_84DB#;
   GL_TEXTURE28                                  : constant  := 16#0000_84DC#;
   GL_TEXTURE29                                  : constant  := 16#0000_84DD#;
   GL_TEXTURE30                                  : constant  := 16#0000_84DE#;
   GL_TEXTURE31                                  : constant  := 16#0000_84DF#;
   GL_ACTIVE_TEXTURE                             : constant  := 16#0000_84E0#;
   GL_CLIENT_ACTIVE_TEXTURE                      : constant  := 16#0000_84E1#;
   GL_MAX_TEXTURE_UNITS                          : constant  := 16#0000_84E2#;

   --  texture_cube_map
   GL_NORMAL_MAP                                 : constant  := 16#0000_8511#;
   GL_REFLECTION_MAP                             : constant  := 16#0000_8512#;
   GL_TEXTURE_CUBE_MAP                           : constant  := 16#0000_8513#;
   GL_TEXTURE_BINDING_CUBE_MAP                   : constant  := 16#0000_8514#;
   GL_TEXTURE_CUBE_MAP_POSITIVE_X                : constant  := 16#0000_8515#;
   GL_TEXTURE_CUBE_MAP_NEGATIVE_X                : constant  := 16#0000_8516#;
   GL_TEXTURE_CUBE_MAP_POSITIVE_Y                : constant  := 16#0000_8517#;
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                : constant  := 16#0000_8518#;
   GL_TEXTURE_CUBE_MAP_POSITIVE_Z                : constant  := 16#0000_8519#;
   GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                : constant  := 16#0000_851A#;
   GL_PROXY_TEXTURE_CUBE_MAP                     : constant  := 16#0000_851B#;
   GL_MAX_CUBE_MAP_TEXTURE_SIZE                  : constant  := 16#0000_851C#;

   --  texture_compression
   GL_COMPRESSED_ALPHA                           : constant  := 16#0000_84E9#;
   GL_COMPRESSED_LUMINANCE                       : constant  := 16#0000_84EA#;
   GL_COMPRESSED_LUMINANCE_ALPHA                 : constant  := 16#0000_84EB#;
   GL_COMPRESSED_INTENSITY                       : constant  := 16#0000_84EC#;
   GL_COMPRESSED_RGB                             : constant  := 16#0000_84ED#;
   GL_COMPRESSED_RGBA                            : constant  := 16#0000_84EE#;
   GL_TEXTURE_COMPRESSION_HINT                   : constant  := 16#0000_84EF#;
   GL_TEXTURE_COMPRESSED_IMAGE_SIZE              : constant  := 16#0000_86A0#;
   GL_TEXTURE_COMPRESSED                         : constant  := 16#0000_86A1#;
   GL_NUM_COMPRESSED_TEXTURE_FORMATS             : constant  := 16#0000_86A2#;
   GL_COMPRESSED_TEXTURE_FORMATS                 : constant  := 16#0000_86A3#;

   --  multisample
   GL_MULTISAMPLE                                : constant  := 16#0000_809D#;
   GL_SAMPLE_ALPHA_TO_COVERAGE                   : constant  := 16#0000_809E#;
   GL_SAMPLE_ALPHA_TO_ONE                        : constant  := 16#0000_809F#;
   GL_SAMPLE_COVERAGE                            : constant  := 16#0000_80A0#;
   GL_SAMPLE_BUFFERS                             : constant  := 16#0000_80A8#;
   GL_SAMPLES                                    : constant  := 16#0000_80A9#;
   GL_SAMPLE_COVERAGE_VALUE                      : constant  := 16#0000_80AA#;
   GL_SAMPLE_COVERAGE_INVERT                     : constant  := 16#0000_80AB#;
   GL_MULTISAMPLE_BIT                            : constant  := 16#2000_0000#;

   --  transpose_matrix
   GL_TRANSPOSE_MODELVIEW_MATRIX                 : constant  := 16#0000_84E3#;
   GL_TRANSPOSE_PROJECTION_MATRIX                : constant  := 16#0000_84E4#;
   GL_TRANSPOSE_TEXTURE_MATRIX                   : constant  := 16#0000_84E5#;
   GL_TRANSPOSE_COLOR_MATRIX                     : constant  := 16#0000_84E6#;

   --  texture_env_combine
   GL_COMBINE                                    : constant  := 16#0000_8570#;
   GL_COMBINE_RGB                                : constant  := 16#0000_8571#;
   GL_COMBINE_ALPHA                              : constant  := 16#0000_8572#;
   GL_SOURCE0_RGB                                : constant  := 16#0000_8580#;
   GL_SOURCE1_RGB                                : constant  := 16#0000_8581#;
   GL_SOURCE2_RGB                                : constant  := 16#0000_8582#;
   GL_SOURCE0_ALPHA                              : constant  := 16#0000_8588#;
   GL_SOURCE1_ALPHA                              : constant  := 16#0000_8589#;
   GL_SOURCE2_ALPHA                              : constant  := 16#0000_858A#;
   GL_OPERAND0_RGB                               : constant  := 16#0000_8590#;
   GL_OPERAND1_RGB                               : constant  := 16#0000_8591#;
   GL_OPERAND2_RGB                               : constant  := 16#0000_8592#;
   GL_OPERAND0_ALPHA                             : constant  := 16#0000_8598#;
   GL_OPERAND1_ALPHA                             : constant  := 16#0000_8599#;
   GL_OPERAND2_ALPHA                             : constant  := 16#0000_859A#;
   GL_RGB_SCALE                                  : constant  := 16#0000_8573#;
   GL_ADD_SIGNED                                 : constant  := 16#0000_8574#;
   GL_INTERPOLATE                                : constant  := 16#0000_8575#;
   GL_SUBTRACT                                   : constant  := 16#0000_84E7#;
   GL_CONSTANT                                   : constant  := 16#0000_8576#;
   GL_PRIMARY_COLOR                              : constant  := 16#0000_8577#;
   GL_PREVIOUS                                   : constant  := 16#0000_8578#;

   --  texture_env_dot3
   GL_DOT3_RGB                                   : constant  := 16#0000_86AE#;
   GL_DOT3_RGBA                                  : constant  := 16#0000_86AF#;

   --  texture_border_clamp
   GL_CLAMP_TO_BORDER                            : constant  := 16#0000_812D#;

   --  GL_ARB_multitexture  (ARB extension 1 and OpenGL 1.2.1)
   GL_ARB_MULTITEXTURE                           : constant  := 1;
   GL_TEXTURE0_ARB                               : constant  := 16#0000_84C0#;
   GL_TEXTURE1_ARB                               : constant  := 16#0000_84C1#;
   GL_TEXTURE2_ARB                               : constant  := 16#0000_84C2#;
   GL_TEXTURE3_ARB                               : constant  := 16#0000_84C3#;
   GL_TEXTURE4_ARB                               : constant  := 16#0000_84C4#;
   GL_TEXTURE5_ARB                               : constant  := 16#0000_84C5#;
   GL_TEXTURE6_ARB                               : constant  := 16#0000_84C6#;
   GL_TEXTURE7_ARB                               : constant  := 16#0000_84C7#;
   GL_TEXTURE8_ARB                               : constant  := 16#0000_84C8#;
   GL_TEXTURE9_ARB                               : constant  := 16#0000_84C9#;
   GL_TEXTURE10_ARB                              : constant  := 16#0000_84CA#;
   GL_TEXTURE11_ARB                              : constant  := 16#0000_84CB#;
   GL_TEXTURE12_ARB                              : constant  := 16#0000_84CC#;
   GL_TEXTURE13_ARB                              : constant  := 16#0000_84CD#;
   GL_TEXTURE14_ARB                              : constant  := 16#0000_84CE#;
   GL_TEXTURE15_ARB                              : constant  := 16#0000_84CF#;
   GL_TEXTURE16_ARB                              : constant  := 16#0000_84D0#;
   GL_TEXTURE17_ARB                              : constant  := 16#0000_84D1#;
   GL_TEXTURE18_ARB                              : constant  := 16#0000_84D2#;
   GL_TEXTURE19_ARB                              : constant  := 16#0000_84D3#;
   GL_TEXTURE20_ARB                              : constant  := 16#0000_84D4#;
   GL_TEXTURE21_ARB                              : constant  := 16#0000_84D5#;
   GL_TEXTURE22_ARB                              : constant  := 16#0000_84D6#;
   GL_TEXTURE23_ARB                              : constant  := 16#0000_84D7#;
   GL_TEXTURE24_ARB                              : constant  := 16#0000_84D8#;
   GL_TEXTURE25_ARB                              : constant  := 16#0000_84D9#;
   GL_TEXTURE26_ARB                              : constant  := 16#0000_84DA#;
   GL_TEXTURE27_ARB                              : constant  := 16#0000_84DB#;
   GL_TEXTURE28_ARB                              : constant  := 16#0000_84DC#;
   GL_TEXTURE29_ARB                              : constant  := 16#0000_84DD#;
   GL_TEXTURE30_ARB                              : constant  := 16#0000_84DE#;
   GL_TEXTURE31_ARB                              : constant  := 16#0000_84DF#;
   GL_ACTIVE_TEXTURE_ARB                         : constant  := 16#0000_84E0#;
   GL_CLIENT_ACTIVE_TEXTURE_ARB                  : constant  := 16#0000_84E1#;
   GL_MAX_TEXTURE_UNITS_ARB                      : constant  := 16#0000_84E2#;

   --  GL_MESA_trace
   GL_MESA_TRACE                                 : constant  := 1;
   GL_TRACE_ALL_BITS_MESA                        : constant  := 16#0000_FFFF#;
   GL_TRACE_OPERATIONS_BIT_MESA                  : constant  := 16#0001#;
   GL_TRACE_PRIMITIVES_BIT_MESA                  : constant  := 16#0002#;
   GL_TRACE_ARRAYS_BIT_MESA                      : constant  := 16#0004#;
   GL_TRACE_TEXTURES_BIT_MESA                    : constant  := 16#0008#;
   GL_TRACE_PIXELS_BIT_MESA                      : constant  := 16#0010#;
   GL_TRACE_ERRORS_BIT_MESA                      : constant  := 16#0020#;
   GL_TRACE_MASK_MESA                            : constant  := 16#0000_8755#;
   GL_TRACE_NAME_MESA                            : constant  := 16#0000_8756#;

   --  GL_MESA_packed_depth_stencil
   GL_MESA_PACKED_DEPTH_STENCIL                  : constant  := 1;
   GL_DEPTH_STENCIL_MESA                         : constant  := 16#0000_8750#;
   GL_UNSIGNED_INT_24_8_MESA                     : constant  := 16#0000_8751#;
   GL_UNSIGNED_INT_8_24_REV_MESA                 : constant  := 16#0000_8752#;
   GL_UNSIGNED_SHORT_15_1_MESA                   : constant  := 16#0000_8753#;
   GL_UNSIGNED_SHORT_1_15_REV_MESA               : constant  := 16#0000_8754#;

   --  GL_MESA_texture_ycbcr
   GL_MESA_YCBCR_TEXTURE                         : constant  := 1;
   GL_YCBCR_MESA                                 : constant  := 16#0000_8757#;
   GL_UNSIGNED_SHORT_8_8_MESA                    : constant  := 16#0000_85BA#;
   GL_UNSIGNED_SHORT_8_8_REV_MESA                : constant  := 16#0000_85BB#;

   --  GL_MESA_pack_invert
   GL_MESA_PACK_INVERT                           : constant  := 1;
   GL_PACK_INVERT_MESA                           : constant  := 16#0000_8758#;

   --  GL_DEPTH_BOUNDS
   GL_DEPTH_BOUNDS_TEST_EXT                      : constant  := 16#0000_8890#;
   GL_DEPTH_BOUNDS_EXT                           : constant  := 16#0000_8891#;

   --  GL_ARB_occlusion_query
   GL_ARB_OCCLUSION_QUERY                        : constant  := 1;

   --  GL_ARB
   GL_SAMPLES_PASSED_ARB                         : constant  := 16#0000_8914#;
   GL_QUERY_COUNTER_BITS_ARB                     : constant  := 16#0000_8864#;
   GL_CURRENT_QUERY_ARB                          : constant  := 16#0000_8865#;
   GL_QUERY_RESULT_ARB                           : constant  := 16#0000_8866#;
  

 QGL_DoubleBuffer      : constant :=  16#0001#;
 QGL_DepthBuffer       : constant :=  16#0002#;
 QGL_Rgba              : constant :=  16#0004#;
 QGL_AlphaChannel      : constant :=  16#0008#;
 QGL_AccumBuffer       : constant :=  16#0010#;
 QGL_StencilBuffer     : constant :=  16#0020#;
 QGL_StereoBuffers     : constant :=  16#0040#;
 QGL_DirectRendering   : constant :=  16#0080#;
 QGL_HasOverlay        : constant :=  16#0100#;
 QGL_SingleBuffer      : constant :=  QGL_DoubleBuffer    * 16#10000#;
 QGL_NoDepthBuffer     : constant :=  QGL_DepthBuffer     * 16#10000#;
 QGL_ColorIndex        : constant :=  QGL_Rgba            * 16#10000#;
 QGL_NoAlphaChannel    : constant :=  QGL_AlphaChannel    * 16#10000#;
 QGL_NoAccumBuffer     : constant :=  QGL_AccumBuffer     * 16#10000#;
 QGL_NoStencilBuffer   : constant :=  QGL_StencilBuffer   * 16#10000#;
 QGL_NoStereoBuffers   : constant :=  QGL_StereoBuffers   * 16#10000#;
 QGL_IndirectRendering : constant :=  QGL_DirectRendering * 16#10000#;
 QGL_NoOverlay         : constant :=  QGL_HasOverlay      * 16#10000#;

end Qt.QGL;
