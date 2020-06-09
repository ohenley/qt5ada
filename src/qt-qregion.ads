--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt4 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QRegion              is

type QRegionRegionType is (QRegionRectangle, QRegionEllipse );

function QRegion_create return  QRegionH;    
pragma Import(C,QRegion_create,"QRegion_create");

procedure QRegion_destroy(handle: not null  QRegionH);   
pragma Import(C,QRegion_destroy,"QRegion_destroy");

function QRegion_create2(x: Integer; y: Integer; w: Integer; h: Integer; t: QRegionRegionType := QRegionRectangle) return QRegionH;
pragma Import(C,QRegion_create2,"QRegion_create2");

function QRegion_create3(r: QRectH; t: QRegionRegionType := QRegionRectangle) return QRegionH;
pragma Import(C,QRegion_create3,"QRegion_create3");

function QRegion_create4(pa: QPolygonH; fillRule: QtFillRule := QtOddEvenFill) return QRegionH;
pragma Import(C,QRegion_create4,"QRegion_create4");

function QRegion_create5(region: QRegionH) return  QRegionH;
pragma Import(C,QRegion_create5,"QRegion_create5");

function QRegion_create6(bitmap: QBitmapH) return  QRegionH;
pragma Import(C,QRegion_create6,"QRegion_create6");

function QRegion_isEmpty(handle: not null  QRegionH) return  Boolean;   
pragma Import(C,QRegion_isEmpty,"QRegion_isEmpty");

function QRegion_contains(handle: not null  QRegionH; p: QPointH) return  Boolean;    
pragma Import(C,QRegion_contains,"QRegion_contains");

function QRegion_contains2(handle: not null  QRegionH; r: QRectH) return  Boolean;
pragma Import(C,QRegion_contains2,"QRegion_contains2");

procedure QRegion_translate(handle: not null  QRegionH; dx: Integer; dy: Integer);    
pragma Import(C,QRegion_translate,"QRegion_translate");

procedure QRegion_translate2(handle: not null  QRegionH; p: QPointH);
pragma Import(C,QRegion_translate2,"QRegion_translate2");

function  QRegion_translated(handle: not null  QRegionH; dx: Integer; dy: Integer) return QRegionH;
pragma Import(C,QRegion_translated,"QRegion_translated");

function  QRegion_translated2(handle: not null  QRegionH; p: QPointH) return QRegionH;
pragma Import(C,QRegion_translated2,"QRegion_translated2");

--function  QRegion_unite(handle: not null  QRegionH; r: QRegionH) return QRegionH;
--pragma Import(C,QRegion_unite,"QRegion_unite");
--function  QRegion_intersect(handle: not null  QRegionH; r: QRegionH) return QRegionH;
--pragma Import(C,QRegion_intersect,"QRegion_intersect");
--function  QRegion_subtract(handle: not null  QRegionH; r: QRegionH) return QRegionH;
--pragma Import(C,QRegion_subtract,"QRegion_subtract");
--function  QRegion_eor(handle: not null  QRegionH; r: QRegionH) return QRegionH;
--pragma Import(C,QRegion_eor,"QRegion_eor");

function  QRegion_united(handle: not null  QRegionH; r: QRegionH) return QRegionH;
pragma Import(C,QRegion_united,"QRegion_united");

function  QRegion_intersected(handle: not null  QRegionH; r: QRegionH) return QRegionH;
pragma Import(C,QRegion_intersected,"QRegion_intersected");

function  QRegion_subtracted(handle: not null  QRegionH; r: QRegionH) return QRegionH;
pragma Import(C,QRegion_subtracted,"QRegion_subtracted");

function  QRegion_xored(handle: not null  QRegionH; r: QRegionH) return QRegionH;
pragma Import(C,QRegion_xored,"QRegion_xored");

function QRegion_intersects(handle: not null  QRegionH; r: QRegionH) return  Boolean;    
pragma Import(C,QRegion_intersects,"QRegion_intersects");

function QRegion_intersects2(handle: not null  QRegionH; r: QRectH) return  Boolean;
pragma Import(C,QRegion_intersects2,"QRegion_intersects2");

function  QRegion_boundingRect(handle: not null  QRegionH) return  QRectH;
pragma Import(C,QRegion_boundingRect,"QRegion_boundingRect");

procedure QRegion_setRects(handle: not null  QRegionH; rect: QRectH; num: Integer);   
pragma Import(C,QRegion_setRects,"QRegion_setRects");
----------------------------------------------------------------------------------------------------------
function QRegion_create(x: Integer; y: Integer; w: Integer; h: Integer; t: QRegionRegionType := QRegionRectangle) return QRegionH;
function QRegion_create(r: QRectH; t: QRegionRegionType := QRegionRectangle) return QRegionH;
function QRegion_create(pa: QPolygonH; fillRule: QtFillRule := QtOddEvenFill) return QRegionH;
function QRegion_create(region: QRegionH) return  QRegionH;
function QRegion_create(bitmap: QBitmapH) return  QRegionH;
function QRegion_contains(handle: not null  QRegionH; r: QRectH) return  Boolean;
procedure QRegion_translate(handle: not null  QRegionH; p: QPointH);
function  QRegion_translated(handle: not null  QRegionH; p: QPointH) return QRegionH;
function QRegion_intersects(handle: not null  QRegionH; r: QRectH) return  Boolean;


end Qt.QRegion;
