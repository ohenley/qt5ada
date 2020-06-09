--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QBrush               is

function QBrush_create return  QBrushH;    
pragma Import(C,QBrush_create,"QBrush_create");

procedure QBrush_destroy(handle: not null  QBrushH);   
pragma Import(C,QBrush_destroy,"QBrush_destroy");

function QBrush_create2(bs: QtBrushStyle) return  QBrushH;
pragma Import(C,QBrush_create2,"QBrush_create2");

function QBrush_create3(color: QColorH; bs: QtBrushStyle := QtSolidPattern) return QBrushH;
pragma Import(C,QBrush_create3,"QBrush_create3");

function QBrush_create4(color: QtGlobalColor; bs: QtBrushStyle := QtSolidPattern) return QBrushH;
pragma Import(C,QBrush_create4,"QBrush_create4");

function QBrush_create5(color: QColorH; pixmap: QPixmapH) return  QBrushH;
pragma Import(C,QBrush_create5,"QBrush_create5");

function QBrush_create6(color: QtGlobalColor; pixmap: QPixmapH) return  QBrushH;
pragma Import(C,QBrush_create6,"QBrush_create6");

function QBrush_create7(pixmap: QPixmapH) return  QBrushH;
pragma Import(C,QBrush_create7,"QBrush_create7");

function QBrush_create8(image: QImageH) return  QBrushH;
pragma Import(C,QBrush_create8,"QBrush_create8");

function QBrush_create9(brush: QBrushH) return  QBrushH;
pragma Import(C,QBrush_create9,"QBrush_create9");

function QBrush_create10(gradient: QGradientH) return  QBrushH;
pragma Import(C,QBrush_create10,"QBrush_create10");

function QBrush_style(handle: not null  QBrushH) return  QtBrushStyle;   
pragma Import(C,QBrush_style,"QBrush_style");

procedure QBrush_setStyle(handle: not null  QBrushH; p1: QtBrushStyle);   
pragma Import(C,QBrush_setStyle,"QBrush_setStyle");

function QBrush_matrix(handle: not null  QBrushH) return  QMatrixH;   
pragma Import(C,QBrush_matrix,"QBrush_matrix");

procedure QBrush_setMatrix(handle: not null  QBrushH; mat: QMatrixH);   
pragma Import(C,QBrush_setMatrix,"QBrush_setMatrix");

function  QBrush_transform(handle: not null  QBrushH) return QTransformH;
pragma Import(C,QBrush_transform,"QBrush_transform");

procedure QBrush_setTransform(handle: not null  QBrushH; p1: QTransformH);   
pragma Import(C,QBrush_setTransform,"QBrush_setTransform");

function  QBrush_texture(handle: not null  QBrushH) return QPixmapH;
pragma Import(C,QBrush_texture,"QBrush_texture");

procedure QBrush_setTexture(handle: not null  QBrushH; pixmap: QPixmapH);   
pragma Import(C,QBrush_setTexture,"QBrush_setTexture");

function  QBrush_textureImage(handle: not null  QBrushH) return QImageH;
pragma Import(C,QBrush_textureImage,"QBrush_textureImage");

procedure QBrush_setTextureImage(handle: not null  QBrushH; image: QImageH);   
pragma Import(C,QBrush_setTextureImage,"QBrush_setTextureImage");

function QBrush_color(handle: not null  QBrushH) return  QColorH;   
pragma Import(C,QBrush_color,"QBrush_color");

procedure QBrush_setColor(handle: not null  QBrushH; color: QColorH);    
pragma Import(C,QBrush_setColor,"QBrush_setColor");

procedure QBrush_setColor2(handle: not null  QBrushH; color: QtGlobalColor);
pragma Import(C,QBrush_setColor2,"QBrush_setColor2");

function QBrush_gradient(handle: not null  QBrushH) return  QGradientH;   
pragma Import(C,QBrush_gradient,"QBrush_gradient");

function QBrush_isOpaque(handle: not null  QBrushH) return  Boolean;   
pragma Import(C,QBrush_isOpaque,"QBrush_isOpaque");

function QBrush_isDetached(handle: not null  QBrushH) return  Boolean;   
pragma Import(C,QBrush_isDetached,"QBrush_isDetached");

----------------------------------------------------------------------
function QBrush_create(bs: QtBrushStyle) return  QBrushH;
function QBrush_create(color: QColorH; bs: QtBrushStyle := QtSolidPattern) return QBrushH;
function QBrush_create(color: QtGlobalColor; bs: QtBrushStyle := QtSolidPattern) return QBrushH;
function QBrush_create(color: QColorH; pixmap: QPixmapH) return  QBrushH;
function QBrush_create(color: QtGlobalColor; pixmap: QPixmapH) return  QBrushH;
function QBrush_create(pixmap: QPixmapH) return  QBrushH;
function QBrush_create(image: QImageH) return  QBrushH;
function QBrush_create(brush: QBrushH) return  QBrushH;
function QBrush_create(gradient: QGradientH) return  QBrushH;
procedure QBrush_setColor(handle: not null  QBrushH; color: QtGlobalColor);


end Qt.QBrush;
