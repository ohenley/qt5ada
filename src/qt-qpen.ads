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

package Qt.QPen                 is

function QPen_create return  QPenH;    
pragma Import(C,QPen_create,"QPen_create");

procedure QPen_destroy(handle: not null  QPenH);   
pragma Import(C,QPen_destroy,"QPen_destroy");

function QPen_create2(p1: QtPenStyle) return  QPenH;
pragma Import(C,QPen_create2,"QPen_create2");

function QPen_create3(color: QColorH) return  QPenH;
pragma Import(C,QPen_create3,"QPen_create3");

function QPen_create4(brush: QBrushH; width: Double; s: QtPenStyle := QtSolidLine; c: QtPenCapStyle := QtSquareCap; j: QtPenJoinStyle := QtBevelJoin) return QPenH;
pragma Import(C,QPen_create4,"QPen_create4");

function QPen_create5(pen: QPenH) return  QPenH;
pragma Import(C,QPen_create5,"QPen_create5");

function QPen_style(handle: not null  QPenH) return  QtPenStyle;   
pragma Import(C,QPen_style,"QPen_style");

procedure QPen_setStyle(handle: not null  QPenH; p1: QtPenStyle);   
pragma Import(C,QPen_setStyle,"QPen_setStyle");

function QPen_dashOffset(handle: not null  QPenH) return  Double;   
pragma Import(C,QPen_dashOffset,"QPen_dashOffset");

procedure QPen_setDashOffset(handle: not null  QPenH; doffset: Double);   
pragma Import(C,QPen_setDashOffset,"QPen_setDashOffset");

function QPen_miterLimit(handle: not null  QPenH) return  Double;   
pragma Import(C,QPen_miterLimit,"QPen_miterLimit");

procedure QPen_setMiterLimit(handle: not null  QPenH; limit: Double);   
pragma Import(C,QPen_setMiterLimit,"QPen_setMiterLimit");

function QPen_widthF(handle: not null  QPenH) return  Double;   
pragma Import(C,QPen_widthF,"QPen_widthF");

procedure QPen_setWidthF(handle: not null  QPenH; width: Double);   
pragma Import(C,QPen_setWidthF,"QPen_setWidthF");

function QPen_width(handle: not null  QPenH) return  Integer;   
pragma Import(C,QPen_width,"QPen_width");

procedure QPen_setWidth(handle: not null  QPenH; width: Integer);   
pragma Import(C,QPen_setWidth,"QPen_setWidth");

function  QPen_color(handle: not null  QPenH) return QColorH;
pragma Import(C,QPen_color,"QPen_color");

procedure QPen_setColor(handle: not null  QPenH; color: QColorH);   
pragma Import(C,QPen_setColor,"QPen_setColor");

function  QPen_brush(handle: not null  QPenH) return QBrushH;
pragma Import(C,QPen_brush,"QPen_brush");

procedure QPen_setBrush(handle: not null  QPenH; brush: QBrushH);   
pragma Import(C,QPen_setBrush,"QPen_setBrush");

function QPen_isSolid(handle: not null  QPenH) return  Boolean;   
pragma Import(C,QPen_isSolid,"QPen_isSolid");

function QPen_capStyle(handle: not null  QPenH) return  QtPenCapStyle;   
pragma Import(C,QPen_capStyle,"QPen_capStyle");

procedure QPen_setCapStyle(handle: not null  QPenH; pcs: QtPenCapStyle);   
pragma Import(C,QPen_setCapStyle,"QPen_setCapStyle");

function QPen_joinStyle(handle: not null  QPenH) return  QtPenJoinStyle;   
pragma Import(C,QPen_joinStyle,"QPen_joinStyle");

procedure QPen_setJoinStyle(handle: not null  QPenH; pcs: QtPenJoinStyle);   
pragma Import(C,QPen_setJoinStyle,"QPen_setJoinStyle");

function QPen_isCosmetic(handle: not null  QPenH) return  Boolean;   
pragma Import(C,QPen_isCosmetic,"QPen_isCosmetic");

procedure QPen_setCosmetic(handle: not null  QPenH; cosmetic: Boolean);   
pragma Import(C,QPen_setCosmetic,"QPen_setCosmetic");

function QPen_isDetached(handle: not null  QPenH) return  Boolean;   
pragma Import(C,QPen_isDetached,"QPen_isDetached");
-----------------------------------------------------------------

function QPen_create(p1: QtPenStyle) return  QPenH;
function QPen_create(color: QColorH) return  QPenH;
function QPen_create(brush: QBrushH; width: Double; s: QtPenStyle := QtSolidLine; c: QtPenCapStyle := QtSquareCap; j: QtPenJoinStyle := QtBevelJoin) return QPenH;
function QPen_create(pen: QPenH) return  QPenH;

end  Qt.QPen;
