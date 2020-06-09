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

package Qt.QOpenGLPixelTransferOptions is

 function  QOpenGLPixelTransferOptions_create return QOpenGLPixelTransferOptionsH;
 pragma Import(C,QOpenGLPixelTransferOptions_create, "QOpenGLPixelTransferOptions_create");
 
 function  QOpenGLPixelTransferOptions_create2(options: not null QOpenGLPixelTransferOptionsH) return QOpenGLPixelTransferOptionsH;
 pragma Import(C,QOpenGLPixelTransferOptions_create2, "QOpenGLPixelTransferOptions_create2");
 
 procedure QOpenGLPixelTransferOptions_destroy(handle: not null QOpenGLPixelTransferOptionsH);
 pragma Import(C,QOpenGLPixelTransferOptions_destroy, "QOpenGLPixelTransferOptions_destroy");
 
 procedure QOpenGLPixelTransferOptions_setAlignment(handle: not null QOpenGLPixelTransferOptionsH; alignment:integer);
 pragma Import(C,QOpenGLPixelTransferOptions_setAlignment, "QOpenGLPixelTransferOptions_setAlignment");
 
 function  QOpenGLPixelTransferOptions_alignment(handle: not null QOpenGLPixelTransferOptionsH) return integer;
 pragma Import(C,QOpenGLPixelTransferOptions_alignment, "QOpenGLPixelTransferOptions_alignment");
 
 procedure QOpenGLPixelTransferOptions_setSkipImages(handle: not null QOpenGLPixelTransferOptionsH; skipImages:integer);
 pragma Import(C,QOpenGLPixelTransferOptions_setSkipImages, "QOpenGLPixelTransferOptions_setSkipImages");
 
 function  QOpenGLPixelTransferOptions_skipImages(handle: not null QOpenGLPixelTransferOptionsH) return integer;
 pragma Import(C,QOpenGLPixelTransferOptions_skipImages, "QOpenGLPixelTransferOptions_skipImages");
 
 procedure QOpenGLPixelTransferOptions_setSkipRows(handle: not null QOpenGLPixelTransferOptionsH; skipRows:integer);
 pragma Import(C,QOpenGLPixelTransferOptions_setSkipRows, "QOpenGLPixelTransferOptions_setSkipRows");
 
 function  QOpenGLPixelTransferOptions_skipRows(handle: not null QOpenGLPixelTransferOptionsH) return integer;
 pragma Import(C,QOpenGLPixelTransferOptions_skipRows, "QOpenGLPixelTransferOptions_skipRows");
 
 procedure QOpenGLPixelTransferOptions_setSkipPixels(handle: not null QOpenGLPixelTransferOptionsH; skipPixels:integer);
 pragma Import(C,QOpenGLPixelTransferOptions_setSkipPixels, "QOpenGLPixelTransferOptions_setSkipPixels");
 
 function  QOpenGLPixelTransferOptions_skipPixels(handle: not null QOpenGLPixelTransferOptionsH) return integer;
 pragma Import(C,QOpenGLPixelTransferOptions_skipPixels, "QOpenGLPixelTransferOptions_skipPixels");
 
 procedure QOpenGLPixelTransferOptions_setImageHeight(handle: not null QOpenGLPixelTransferOptionsH; imageHeight:integer);
 pragma Import(C,QOpenGLPixelTransferOptions_setImageHeight, "QOpenGLPixelTransferOptions_setImageHeight");
 
 function  QOpenGLPixelTransferOptions_imageHeight(handle: not null QOpenGLPixelTransferOptionsH) return integer;
 pragma Import(C,QOpenGLPixelTransferOptions_imageHeight, "QOpenGLPixelTransferOptions_imageHeight");
 
 procedure QOpenGLPixelTransferOptions_setRowLength(handle: not null QOpenGLPixelTransferOptionsH; rowLength:integer);
 pragma Import(C,QOpenGLPixelTransferOptions_setRowLength, "QOpenGLPixelTransferOptions_setRowLength");
 
 function  QOpenGLPixelTransferOptions_rowLength(handle: not null QOpenGLPixelTransferOptionsH) return integer;
 pragma Import(C,QOpenGLPixelTransferOptions_rowLength, "QOpenGLPixelTransferOptions_rowLength");
 
 procedure QOpenGLPixelTransferOptions_setLeastSignificantByteFirst(handle: not null QOpenGLPixelTransferOptionsH; lsbFirst:boolean);
 pragma Import(C,QOpenGLPixelTransferOptions_setLeastSignificantByteFirst, "QOpenGLPixelTransferOptions_setLeastSignificantByteFirst");
 
 function  QOpenGLPixelTransferOptions_isLeastSignificantBitFirst(handle: not null QOpenGLPixelTransferOptionsH) return boolean;
 pragma Import(C,QOpenGLPixelTransferOptions_isLeastSignificantBitFirst, "QOpenGLPixelTransferOptions_isLeastSignificantBitFirst");
 
 procedure QOpenGLPixelTransferOptions_setSwapBytesEnabled(handle: not null QOpenGLPixelTransferOptionsH; swapBytes:boolean);
 pragma Import(C,QOpenGLPixelTransferOptions_setSwapBytesEnabled, "QOpenGLPixelTransferOptions_setSwapBytesEnabled");
 
 function  QOpenGLPixelTransferOptions_isSwapBytesEnabled(handle: not null QOpenGLPixelTransferOptionsH) return boolean;
 pragma Import(C,QOpenGLPixelTransferOptions_isSwapBytesEnabled, "QOpenGLPixelTransferOptions_isSwapBytesEnabled");
 
 function  QOpenGLPixelTransferOptions_create(options: not null QOpenGLPixelTransferOptionsH) return QOpenGLPixelTransferOptionsH;

end;
