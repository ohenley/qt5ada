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

package Qt.QRect is

function QRect_create return  QRectH;    
pragma Import(C,QRect_create,"QRect_create");

procedure QRect_destroy(handle: not null  QRectH);   
pragma Import(C,QRect_destroy,"QRect_destroy");

function QRect_create2(topleft: QPointH; bottomright: QPointH) return  QRectH;
pragma Import(C,QRect_create2,"QRect_create2");

function QRect_create3(topleft: QPointH; size: QSizeH) return  QRectH;
pragma Import(C,QRect_create3,"QRect_create3");

function QRect_create4(left: Integer; top: Integer; width: Integer; height: Integer) return  QRectH;
pragma Import(C,QRect_create4,"QRect_create4");

function QRect_isNull(handle: not null  QRectH) return  Boolean;   
pragma Import(C,QRect_isNull,"QRect_isNull");

function QRect_isEmpty(handle: not null  QRectH) return  Boolean;   
pragma Import(C,QRect_isEmpty,"QRect_isEmpty");

function QRect_isValid(handle: not null  QRectH) return  Boolean;   
pragma Import(C,QRect_isValid,"QRect_isValid");

function QRect_left(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_left,"QRect_left");

function QRect_top(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_top,"QRect_top");

function QRect_right(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_right,"QRect_right");

function QRect_bottom(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_bottom,"QRect_bottom");

function  QRect_normalized(handle: not null  QRectH) return QRectH;
pragma Import(C,QRect_normalized,"QRect_normalized");

function QRect_x(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_x,"QRect_x");

function QRect_y(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_y,"QRect_y");

procedure QRect_setLeft(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_setLeft,"QRect_setLeft");

procedure QRect_setTop(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_setTop,"QRect_setTop");

procedure QRect_setRight(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_setRight,"QRect_setRight");

procedure QRect_setBottom(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_setBottom,"QRect_setBottom");

procedure QRect_setX(handle: not null  QRectH; x: Integer);   
pragma Import(C,QRect_setX,"QRect_setX");

procedure QRect_setY(handle: not null  QRectH; y: Integer);   
pragma Import(C,QRect_setY,"QRect_setY");

procedure QRect_setTopLeft(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_setTopLeft,"QRect_setTopLeft");

procedure QRect_setBottomRight(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_setBottomRight,"QRect_setBottomRight");

procedure QRect_setTopRight(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_setTopRight,"QRect_setTopRight");

procedure QRect_setBottomLeft(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_setBottomLeft,"QRect_setBottomLeft");

function  QRect_topLeft(handle: not null  QRectH) return  QPointH;
pragma Import(C,QRect_topLeft,"QRect_topLeft");

function  QRect_bottomRight(handle: not null  QRectH) return QPointH;
pragma Import(C,QRect_bottomRight,"QRect_bottomRight");

function  QRect_topRight(handle: not null  QRectH) return QPointH;
pragma Import(C,QRect_topRight,"QRect_topRight");

function  QRect_bottomLeft(handle: not null  QRectH) return QPointH;
pragma Import(C,QRect_bottomLeft,"QRect_bottomLeft");

function  QRect_center(handle: not null  QRectH) return QPointH;
pragma Import(C,QRect_center,"QRect_center");

procedure QRect_moveLeft(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_moveLeft,"QRect_moveLeft");

procedure QRect_moveTop(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_moveTop,"QRect_moveTop");

procedure QRect_moveRight(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_moveRight,"QRect_moveRight");

procedure QRect_moveBottom(handle: not null  QRectH; pos: Integer);   
pragma Import(C,QRect_moveBottom,"QRect_moveBottom");

procedure QRect_moveTopLeft(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_moveTopLeft,"QRect_moveTopLeft");

procedure QRect_moveBottomRight(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_moveBottomRight,"QRect_moveBottomRight");

procedure QRect_moveTopRight(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_moveTopRight,"QRect_moveTopRight");

procedure QRect_moveBottomLeft(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_moveBottomLeft,"QRect_moveBottomLeft");

procedure QRect_moveCenter(handle: not null  QRectH; p: QPointH);   
pragma Import(C,QRect_moveCenter,"QRect_moveCenter");

procedure QRect_translate(handle: not null  QRectH; dx: Integer; dy: Integer);    
pragma Import(C,QRect_translate,"QRect_translate");

procedure QRect_translate2(handle: not null  QRectH; p: QPointH);
pragma Import(C,QRect_translate2,"QRect_translate2");

function  QRect_translated(handle: not null  QRectH; dx: Integer; dy: Integer) return QRectH;
pragma Import(C,QRect_translated,"QRect_translated");

function  QRect_translated2(handle: not null  QRectH; p: QPointH) return QRectH;
pragma Import(C,QRect_translated2,"QRect_translated2");

procedure QRect_moveTo(handle: not null  QRectH; x: Integer; t: Integer);    
pragma Import(C,QRect_moveTo,"QRect_moveTo");

procedure QRect_moveTo2(handle: not null  QRectH; p: QPointH);
pragma Import(C,QRect_moveTo2,"QRect_moveTo2");

procedure QRect_setRect(handle: not null  QRectH; x: Integer; y: Integer; w: Integer; h: Integer);   
pragma Import(C,QRect_setRect,"QRect_setRect");

procedure QRect_getRect(handle: not null  QRectH; x: PInteger; y: PInteger; w: PInteger; h: PInteger);   
pragma Import(C,QRect_getRect,"QRect_getRect");

procedure QRect_setCoords(handle: not null  QRectH; x1: Integer; y1: Integer; x2: Integer; y2: Integer);   
pragma Import(C,QRect_setCoords,"QRect_setCoords");

procedure QRect_getCoords(handle: not null  QRectH; x1: PInteger; y1: PInteger; x2: PInteger; y2: PInteger);   
pragma Import(C,QRect_getCoords,"QRect_getCoords");

procedure QRect_adjust(handle: not null  QRectH; x1: Integer; y1: Integer; x2: Integer; y2: Integer);   
pragma Import(C,QRect_adjust,"QRect_adjust");

function  QRect_adjusted(handle: not null  QRectH; x1: Integer; y1: Integer; x2: Integer; y2: Integer) return QRectH;
pragma Import(C,QRect_adjusted,"QRect_adjusted");

function  QRect_size(handle: not null  QRectH) return QSizeH;
pragma Import(C,QRect_size,"QRect_size");

function QRect_width(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_width,"QRect_width");

function QRect_height(handle: not null  QRectH) return  Integer;   
pragma Import(C,QRect_height,"QRect_height");

procedure QRect_setWidth(handle: not null  QRectH; w: Integer);   
pragma Import(C,QRect_setWidth,"QRect_setWidth");

procedure QRect_setHeight(handle: not null  QRectH; h: Integer);   
pragma Import(C,QRect_setHeight,"QRect_setHeight");

procedure QRect_setSize(handle: not null  QRectH; s: QSizeH);   
pragma Import(C,QRect_setSize,"QRect_setSize");

function QRect_contains(handle: not null  QRectH; x: Integer; y: Integer; proper: Boolean) return  Boolean;
pragma Import(C,QRect_contains,"QRect_contains");

function QRect_contains2(handle: not null  QRectH; x: Integer; y: Integer) return  Boolean;
pragma Import(C,QRect_contains2,"QRect_contains2");

function  QRect_unite(handle: not null QRectH;r: QRectH) return QRectH;
pragma Import(C,QRect_unite,"QRect_unite");

function  QRect_united(handle: not null  QRectH; other: QRectH) return QRectH;
pragma Import(C,QRect_united,"QRect_united");

function  QRect_intersect(handle: not null  QRectH; r: QRectH) return QRectH;
pragma Import(C,QRect_intersect,"QRect_intersect");

function  QRect_intersected(handle: not null  QRectH; other: QRectH) return QRectH;
pragma Import(C,QRect_intersected,"QRect_intersected");

function QRect_intersects(handle: not null  QRectH; r: QRectH) return  Boolean;   
pragma Import(C,QRect_intersects,"QRect_intersects");
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
function QRectF_create return  QRectFH;    
pragma Import(C,QRectF_create,"QRectF_create");

function QRectF_create2(topleft: QPointFH; size: QSizeFH) return  QRectFH;
pragma Import(C,QRectF_create2,"QRectF_create2");

function QRectF_create3(topleft: QPointFH; bottomRight: QPointFH) return  QRectFH;
pragma Import(C,QRectF_create3,"QRectF_create3");

function QRectF_create4(left: Double; top: Double; width: Double; height: Double) return  QRectFH;
pragma Import(C,QRectF_create4,"QRectF_create4");

function QRectF_create5(rect: QRectH) return  QRectFH;
pragma Import(C,QRectF_create5,"QRectF_create5");

procedure QRectF_destroy(handle: not null  QRectFH);   
pragma Import(C,QRectF_destroy,"QRectF_destroy");

function QRectF_isNull(handle: not null  QRectFH) return  Boolean;   
pragma Import(C,QRectF_isNull,"QRectF_isNull");

function QRectF_isEmpty(handle: not null  QRectFH) return  Boolean;   
pragma Import(C,QRectF_isEmpty,"QRectF_isEmpty");

function QRectF_isValid(handle: not null  QRectFH) return  Boolean;   
pragma Import(C,QRectF_isValid,"QRectF_isValid");

function  QRectF_normalized(handle: not null  QRectFH) return QRectFH;
pragma Import(C,QRectF_normalized,"QRectF_normalized");

function QRectF_left(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_left,"QRectF_left");

function QRectF_top(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_top,"QRectF_top");

function QRectF_right(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_right,"QRectF_right");

function QRectF_bottom(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_bottom,"QRectF_bottom");

function QRectF_x(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_x,"QRectF_x");

function QRectF_y(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_y,"QRectF_y");

procedure QRectF_setLeft(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_setLeft,"QRectF_setLeft");

procedure QRectF_setTop(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_setTop,"QRectF_setTop");

procedure QRectF_setRight(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_setRight,"QRectF_setRight");

procedure QRectF_setBottom(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_setBottom,"QRectF_setBottom");

procedure QRectF_setX(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_setX,"QRectF_setX");

procedure QRectF_setY(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_setY,"QRectF_setY");

function  QRectF_topLeft(handle: not null  QRectFH) return QPointFH;
pragma Import(C,QRectF_topLeft,"QRectF_topLeft");

function  QRectF_bottomRight(handle: not null  QRectFH) return QPointFH;
pragma Import(C,QRectF_bottomRight,"QRectF_bottomRight");

function  QRectF_topRight(handle: not null  QRectFH) return QPointFH;
pragma Import(C,QRectF_topRight,"QRectF_topRight");

function  QRectF_bottomLeft(handle: not null  QRectFH) return QPointFH;
pragma Import(C,QRectF_bottomLeft,"QRectF_bottomLeft");

function  QRectF_center(handle: not null  QRectFH) return QPointFH;
pragma Import(C,QRectF_center,"QRectF_center");

procedure QRectF_setTopLeft(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_setTopLeft,"QRectF_setTopLeft");

procedure QRectF_setBottomRight(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_setBottomRight,"QRectF_setBottomRight");

procedure QRectF_setTopRight(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_setTopRight,"QRectF_setTopRight");

procedure QRectF_setBottomLeft(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_setBottomLeft,"QRectF_setBottomLeft");

procedure QRectF_moveLeft(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_moveLeft,"QRectF_moveLeft");

procedure QRectF_moveTop(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_moveTop,"QRectF_moveTop");

procedure QRectF_moveRight(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_moveRight,"QRectF_moveRight");

procedure QRectF_moveBottom(handle: not null  QRectFH; pos: Double);   
pragma Import(C,QRectF_moveBottom,"QRectF_moveBottom");

procedure QRectF_moveTopLeft(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_moveTopLeft,"QRectF_moveTopLeft");

procedure QRectF_moveBottomRight(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_moveBottomRight,"QRectF_moveBottomRight");

procedure QRectF_moveTopRight(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_moveTopRight,"QRectF_moveTopRight");

procedure QRectF_moveBottomLeft(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_moveBottomLeft,"QRectF_moveBottomLeft");

procedure QRectF_moveCenter(handle: not null  QRectFH; p: QPointFH);   
pragma Import(C,QRectF_moveCenter,"QRectF_moveCenter");

procedure QRectF_translate(handle: not null  QRectFH; dx: Double; dy: Double);    
pragma Import(C,QRectF_translate,"QRectF_translate");

procedure QRectF_translate2(handle: not null  QRectFH; p: QPointFH);
pragma Import(C,QRectF_translate2,"QRectF_translate2");

function  QRectF_translated(handle: not null  QRectFH; dx: Double; dy: Double) return QRectFH;
pragma Import(C,QRectF_translated,"QRectF_translated");

function  QRectF_translated2(handle: not null  QRectFH; p: QPointFH) return QRectFH;
pragma Import(C,QRectF_translated2,"QRectF_translated2");

procedure QRectF_moveTo(handle: not null  QRectFH; x: Double; t: Double);    
pragma Import(C,QRectF_moveTo,"QRectF_moveTo");

procedure QRectF_moveTo2(handle: not null  QRectFH; p: QPointFH);
pragma Import(C,QRectF_moveTo2,"QRectF_moveTo2");

procedure QRectF_setRect(handle: not null  QRectFH; x: Double; y: Double; w: Double; h: Double);   
pragma Import(C,QRectF_setRect,"QRectF_setRect");

procedure QRectF_getRect(handle: not null  QRectFH; x: PDouble; y: PDouble; w: PDouble; h: PDouble);   
pragma Import(C,QRectF_getRect,"QRectF_getRect");

procedure QRectF_setCoords(handle: not null  QRectFH; x1: Double; y1: Double; x2: Double; y2: Double);   
pragma Import(C,QRectF_setCoords,"QRectF_setCoords");

procedure QRectF_getCoords(handle: not null  QRectFH; x1: PDouble; y1: PDouble; x2: PDouble; y2: PDouble);   
pragma Import(C,QRectF_getCoords,"QRectF_getCoords");

procedure QRectF_adjust(handle: not null  QRectFH; x1: Double; y1: Double; x2: Double; y2: Double);   
pragma Import(C,QRectF_adjust,"QRectF_adjust");

function  QRectF_adjusted(handle: not null  QRectFH; x1: Double; y1: Double; x2: Double; y2: Double) return QRectFH;
pragma Import(C,QRectF_adjusted,"QRectF_adjusted");

function  QRectF_size(handle: not null  QRectFH) return QSizeFH;
pragma Import(C,QRectF_size,"QRectF_size");

function QRectF_width(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_width,"QRectF_width");

function QRectF_height(handle: not null  QRectFH) return  Double;   
pragma Import(C,QRectF_height,"QRectF_height");

procedure QRectF_setWidth(handle: not null  QRectFH; w: Double);   
pragma Import(C,QRectF_setWidth,"QRectF_setWidth");

procedure QRectF_setHeight(handle: not null  QRectFH; h: Double);   
pragma Import(C,QRectF_setHeight,"QRectF_setHeight");

procedure QRectF_setSize(handle: not null  QRectFH; s: QSizeFH);   
pragma Import(C,QRectF_setSize,"QRectF_setSize");

function QRectF_contains(handle: not null  QRectFH; p: QPointFH) return  Boolean;    
pragma Import(C,QRectF_contains,"QRectF_contains");

function QRectF_contains2(handle: not null  QRectFH; x: Double; y: Double) return  Boolean;
pragma Import(C,QRectF_contains2,"QRectF_contains2");

function QRectF_contains3(handle: not null  QRectFH; r: QRectFH) return  Boolean;
pragma Import(C,QRectF_contains3,"QRectF_contains3");

function  QRectF_united(handle: not null  QRectFH; other: QRectFH) return QRectFH;
pragma Import(C,QRectF_united,"QRectF_united");

function  QRectF_intersected(handle: not null  QRectFH; other: QRectFH) return QRectFH;
pragma Import(C,QRectF_intersected,"QRectF_intersected");

function QRectF_intersects(handle: not null  QRectFH; r: QRectFH) return  Boolean;   
pragma Import(C,QRectF_intersects,"QRectF_intersects");

function  QRectF_toRect(handle: not null  QRectFH) return QRectH;
pragma Import(C,QRectF_toRect,"QRectF_toRect");

function  QRectF_toAlignedRect(handle: not null  QRectFH) return QRectH;
pragma Import(C,QRectF_toAlignedRect,"QRectF_toAlignedRect");
------------------------------------------------
function QRect_create(topleft: QPointH; bottomright: QPointH) return  QRectH;
function QRect_create(topleft: QPointH; size: QSizeH) return  QRectH;
function QRect_create(left: Integer; top: Integer; width: Integer; height: Integer) return  QRectH;

procedure QRect_translate(handle: not null  QRectH; p: QPointH);
function  QRect_translated(handle: not null  QRectH; p: QPointH) return QRectH;
procedure QRect_moveTo(handle: not null  QRectH; p: QPointH);
function QRect_contains(handle: not null  QRectH; x: Integer; y: Integer) return  Boolean;

function QRectF_create(topleft: QPointFH; size: QSizeFH) return  QRectFH;
function QRectF_create(topleft: QPointFH; bottomRight: QPointFH) return  QRectFH;
function QRectF_create(left: Double; top: Double; width: Double; height: Double) return  QRectFH;
function QRectF_create(rect: QRectH) return  QRectFH;

procedure QRectF_translate(handle: not null  QRectFH; p: QPointFH);
function  QRectF_translated(handle: not null  QRectFH; p: QPointFH) return QRectFH;
procedure QRectF_moveTo(handle: not null  QRectFH; p: QPointFH);

end Qt.QRect;
