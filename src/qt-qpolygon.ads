--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012,2017                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QPolygon             is

function QPolygon_create return  QPolygonH;    
pragma Import(C,QPolygon_create,"QPolygon_create");

procedure QPolygon_destroy(handle: not null  QPolygonH);   
pragma Import(C,QPolygon_destroy,"QPolygon_destroy");

function QPolygon_create2(size: Integer) return  QPolygonH;
pragma Import(C,QPolygon_create2,"QPolygon_create2");

function QPolygon_create3(a: QPolygonH) return  QPolygonH;
pragma Import(C,QPolygon_create3,"QPolygon_create3");

function QPolygon_create4(r: QRectH; closed: Boolean := False) return QPolygonH;
pragma Import(C,QPolygon_create4,"QPolygon_create4");

function QPolygon_create5(nPoints: Integer; points: PInteger) return  QPolygonH;
pragma Import(C,QPolygon_create5,"QPolygon_create5");

procedure QPolygon_translate(handle: not null  QPolygonH; dx: Integer; dy: Integer);    
pragma Import(C,QPolygon_translate,"QPolygon_translate");

procedure QPolygon_translate2(handle: not null  QPolygonH; offset: QPointH);
pragma Import(C,QPolygon_translate2,"QPolygon_translate2");

function  QPolygon_boundingRect(handle: not null  QPolygonH) return QRectH;
pragma Import(C,QPolygon_boundingRect,"QPolygon_boundingRect");

procedure QPolygon_point(handle: not null  QPolygonH; i: Integer; x: PInteger; y: PInteger);    
pragma Import(C,QPolygon_point,"QPolygon_point");

function  QPolygon_point2(handle: not null  QPolygonH; i: Integer) return QPointH;
pragma Import(C,QPolygon_point2,"QPolygon_point2");

procedure QPolygon_setPoint(handle: not null  QPolygonH; index: Integer; x: Integer; y: Integer);    
pragma Import(C,QPolygon_setPoint,"QPolygon_setPoint");

procedure QPolygon_setPoint2(handle: not null  QPolygonH; index: Integer; p: QPointH);
pragma Import(C,QPolygon_setPoint2,"QPolygon_setPoint2");

procedure QPolygon_setPoints(handle: not null  QPolygonH; nPoints: Integer; points: PInteger);    
pragma Import(C,QPolygon_setPoints,"QPolygon_setPoints");

procedure QPolygon_putPoints(handle: not null  QPolygonH; index: Integer; nPoints: Integer; points: PInteger);    
pragma Import(C,QPolygon_putPoints,"QPolygon_putPoints");

procedure QPolygon_putPoints3(handle: not null  QPolygonH; index: Integer; nPoints: Integer; from: QPolygonH; fromIndex: Integer := 0);
pragma Import(C,QPolygon_putPoints3,"QPolygon_putPoints3");

function QPolygon_containsPoint(handle: not null  QPolygonH; pt: QPointH; fillRule: QtFillRule) return  Boolean;   
pragma Import(C,QPolygon_containsPoint,"QPolygon_containsPoint");

function  QPolygon_united(handle: not null  QPolygonH; r: QPolygonH) return QPolygonH;
pragma Import(C,QPolygon_united,"QPolygon_united");

function  QPolygon_intersected(handle: not null  QPolygonH; r: QPolygonH) return QPolygonH;
pragma Import(C,QPolygon_intersected,"QPolygon_intersected");

function  QPolygon_subtracted(handle: not null  QPolygonH; r: QPolygonH) return QPolygonH;
pragma Import(C,QPolygon_subtracted,"QPolygon_subtracted");
-------------------------------------------------------------------
function QPolygonF_create return  QPolygonFH;    
pragma Import(C,QPolygonF_create,"QPolygonF_create");

procedure QPolygonF_destroy(handle: not null  QPolygonFH);   
pragma Import(C,QPolygonF_destroy,"QPolygonF_destroy");

function QPolygonF_create2(size: Integer) return  QPolygonFH;
pragma Import(C,QPolygonF_create2,"QPolygonF_create2");

function QPolygonF_create3(a: QPolygonFH) return  QPolygonFH;
pragma Import(C,QPolygonF_create3,"QPolygonF_create3");

function QPolygonF_create4(r: QRectFH) return  QPolygonFH;
pragma Import(C,QPolygonF_create4,"QPolygonF_create4");

function QPolygonF_create5(a: QPolygonH) return  QPolygonFH;
pragma Import(C,QPolygonF_create5,"QPolygonF_create5");

procedure QPolygonF_translate(handle: not null  QPolygonFH; dx: Double; dy: Double);    
pragma Import(C,QPolygonF_translate,"QPolygonF_translate");

procedure QPolygonF_translate2(handle: not null  QPolygonFH; offset: QPointFH);
pragma Import(C,QPolygonF_translate2,"QPolygonF_translate2");

function  QPolygonF_toPolygon(handle: not null  QPolygonFH) return QPolygonH;
pragma Import(C,QPolygonF_toPolygon,"QPolygonF_toPolygon");

function QPolygonF_isClosed(handle: not null  QPolygonFH) return  Boolean;   
pragma Import(C,QPolygonF_isClosed,"QPolygonF_isClosed");

function  QPolygonF_boundingRect(handle: not null  QPolygonFH) return QRectFH;
pragma Import(C,QPolygonF_boundingRect,"QPolygonF_boundingRect");

function QPolygonF_containsPoint(handle: not null  QPolygonFH; pt: QPointFH; fillRule: QtFillRule) return  Boolean;   
pragma Import(C,QPolygonF_containsPoint,"QPolygonF_containsPoint");

function  QPolygonF_united(handle: not null  QPolygonFH; r: QPolygonFH) return QPolygonFH;
pragma Import(C,QPolygonF_united,"QPolygonF_united");

function  QPolygonF_intersected(handle: not null  QPolygonFH; r: QPolygonFH) return QPolygonFH;
pragma Import(C,QPolygonF_intersected,"QPolygonF_intersected");

function  QPolygonF_subtracted(handle: not null  QPolygonFH; r: QPolygonFH) return QPolygonFH;
pragma Import(C,QPolygonF_subtracted,"QPolygonF_subtracted");

 procedure QPolygon_append(handle:not null QPolygonH;x,y: integer);
 pragma Import(C,QPolygon_append, "QPolygon_append");
 
 procedure QPolygon_append2(handle:not null QPolygonH;p: QPointH);
 pragma Import(C,QPolygon_append2, "QPolygon_append2");
 
---------------------------------------------------------------------
 function QPolygon_create(size: Integer) return  QPolygonH;
 function QPolygon_create(a: QPolygonH) return  QPolygonH;
 function QPolygon_create(r: QRectH; closed: Boolean := False) return QPolygonH;
 function QPolygon_create(nPoints: Integer; points: PInteger) return  QPolygonH;
 procedure QPolygon_translate(handle: not null  QPolygonH; offset: QPointH);
 function  QPolygon_point(handle: not null  QPolygonH; i: Integer) return QPointH;
 procedure QPolygon_append(handle:not null QPolygonH;p: QPointH);
 procedure QPolygon_setPoint(handle: not null  QPolygonH; index: Integer; p: QPointH);
 procedure QPolygon_putPoints(handle: not null  QPolygonH; index: Integer; nPoints: Integer; from: QPolygonH; fromIndex: Integer := 0);

 procedure QPolygonF_append(handle:not null QPolygonFH;x,y: qreal);
 pragma Import(C,QPolygonF_append, "QPolygonF_append");
 
 procedure QPolygonF_append2(handle:not null QPolygonFH;p: QPointFH);
 pragma Import(C,QPolygonF_append2, "QPolygonF_append2");

 function QPolygonF_create(size: Integer) return  QPolygonFH;
 function QPolygonF_create(a: QPolygonFH) return  QPolygonFH;
 function QPolygonF_create(r: QRectFH) return  QPolygonFH;
 function QPolygonF_create(a: QPolygonH) return  QPolygonFH;
 procedure QPolygonF_translate(handle: not null  QPolygonFH; offset: QPointFH);
 procedure QPolygonF_append(handle:not null QPolygonFH;p: QPointFH);

end Qt.QPolygon;
