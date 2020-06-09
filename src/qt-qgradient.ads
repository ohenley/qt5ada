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

package Qt.QGradient            is

type QGradientType is (QGradientLinearGradient, QGradientRadialGradient, QGradientConicalGradient, QGradientNoGradient );
type QGradientSpread is (QGradientPadSpread, QGradientReflectSpread, QGradientRepeatSpread );
type QGradientCoordinateMode is (QGradientLogicalMode, QGradientStretchToDeviceMode, QGradientObjectBoundingMode );

function QGradient_create return  QGradientH;   
pragma Import(C,QGradient_create,"QGradient_create");

procedure QGradient_destroy(handle: not null  QGradientH);   
pragma Import(C,QGradient_destroy,"QGradient_destroy");

function QGradient_type(handle: not null  QGradientH) return  QGradientType;   
pragma Import(C,QGradient_type,"QGradient_type");

procedure QGradient_setSpread(handle: not null  QGradientH; spread: QGradientSpread);   
pragma Import(C,QGradient_setSpread,"QGradient_setSpread");

function QGradient_spread(handle: not null  QGradientH) return  QGradientSpread;   
pragma Import(C,QGradient_spread,"QGradient_spread");

procedure QGradient_setColorAt(handle: not null  QGradientH; pos: Double; color: QColorH);
pragma Import(C,QGradient_setColorAt,"QGradient_setColorAt");

function QGradient_coordinateMode(handle: not null  QGradientH) return  QGradientCoordinateMode;   
pragma Import(C,QGradient_coordinateMode,"QGradient_coordinateMode");

procedure QGradient_setCoordinateMode(handle: not null  QGradientH; mode: QGradientCoordinateMode);   
pragma Import(C,QGradient_setCoordinateMode,"QGradient_setCoordinateMode");
------------------------------------------------------------------
function QLinearGradient_create return  QLinearGradientH;    
pragma Import(C,QLinearGradient_create,"QLinearGradient_create");

procedure QLinearGradient_destroy(handle: not null  QLinearGradientH);   
pragma Import(C,QLinearGradient_destroy,"QLinearGradient_destroy");

function QLinearGradient_create2(start: QPointFH; finalStop: QPointFH) return  QLinearGradientH;
pragma Import(C,QLinearGradient_create2,"QLinearGradient_create2");

function QLinearGradient_create3(xStart: Double; yStart: Double; xFinalStop: Double; yFinalStop: Double) return  QLinearGradientH;
pragma Import(C,QLinearGradient_create3,"QLinearGradient_create3");

function  QLinearGradient_start(handle: not null  QLinearGradientH) return QPointFH;
pragma Import(C,QLinearGradient_start,"QLinearGradient_start");

procedure QLinearGradient_setStart(handle: not null  QLinearGradientH; start: QPointFH);    
pragma Import(C,QLinearGradient_setStart,"QLinearGradient_setStart");

procedure QLinearGradient_setStart2(handle: not null  QLinearGradientH; x: Double; y: Double);
pragma Import(C,QLinearGradient_setStart2,"QLinearGradient_setStart2");

function  QLinearGradient_finalStop(handle: not null  QLinearGradientH) return QPointFH;
pragma Import(C,QLinearGradient_finalStop,"QLinearGradient_finalStop");

procedure QLinearGradient_setFinalStop(handle: not null  QLinearGradientH; stop: QPointFH);    
pragma Import(C,QLinearGradient_setFinalStop,"QLinearGradient_setFinalStop");

procedure QLinearGradient_setFinalStop2(handle: not null  QLinearGradientH; x: Double; y: Double);
pragma Import(C,QLinearGradient_setFinalStop2,"QLinearGradient_setFinalStop2");

procedure QLinearGradient_setColorAt(handle: not null  QLinearGradientH; pos: Double; color: QColorH);
pragma Import(C,QLinearGradient_setColorAt,"QLinearGradient_setColorAt");

------------------------------------------------------------------------
function QRadialGradient_create return  QRadialGradientH;    
pragma Import(C,QRadialGradient_create,"QRadialGradient_create");

procedure QRadialGradient_destroy(handle: not null  QRadialGradientH);   
pragma Import(C,QRadialGradient_destroy,"QRadialGradient_destroy");

function QRadialGradient_create2(center: QPointFH; radius: Double; focalPoint: QPointFH) return  QRadialGradientH;
pragma Import(C,QRadialGradient_create2,"QRadialGradient_create2");

function QRadialGradient_create3(cx: Double; cy: Double; radius: Double; fx: Double; fy: Double) return  QRadialGradientH;
pragma Import(C,QRadialGradient_create3,"QRadialGradient_create3");

function QRadialGradient_create4(center: QPointFH; radius: Double) return  QRadialGradientH;
pragma Import(C,QRadialGradient_create4,"QRadialGradient_create4");

function QRadialGradient_create5(cx: Double; cy: Double; radius: Double) return  QRadialGradientH;
pragma Import(C,QRadialGradient_create5,"QRadialGradient_create5");

function  QRadialGradient_center(handle: not null  QRadialGradientH) return QPointFH;
pragma Import(C,QRadialGradient_center,"QRadialGradient_center");

procedure QRadialGradient_setCenter(handle: not null  QRadialGradientH; center: QPointFH);    
pragma Import(C,QRadialGradient_setCenter,"QRadialGradient_setCenter");

procedure QRadialGradient_setCenter2(handle: not null  QRadialGradientH; x: Double; y: Double);
pragma Import(C,QRadialGradient_setCenter2,"QRadialGradient_setCenter2");

function  QRadialGradient_focalPoint(handle: not null  QRadialGradientH) return QPointFH;
pragma Import(C,QRadialGradient_focalPoint,"QRadialGradient_focalPoint");

procedure QRadialGradient_setFocalPoint(handle: not null  QRadialGradientH; focalPoint: QPointFH);    
pragma Import(C,QRadialGradient_setFocalPoint,"QRadialGradient_setFocalPoint");

procedure QRadialGradient_setFocalPoint2(handle: not null  QRadialGradientH; x: Double; y: Double);
pragma Import(C,QRadialGradient_setFocalPoint2,"QRadialGradient_setFocalPoint2");

function QRadialGradient_radius(handle: not null  QRadialGradientH) return  Double;   
pragma Import(C,QRadialGradient_radius,"QRadialGradient_radius");

procedure QRadialGradient_setRadius(handle: not null  QRadialGradientH; radius: Double);   
pragma Import(C,QRadialGradient_setRadius,"QRadialGradient_setRadius");
---------------------------------------------------------------------
function QConicalGradient_create return  QConicalGradientH;    
pragma Import(C,QConicalGradient_create,"QConicalGradient_create");

procedure QConicalGradient_destroy(handle: not null  QConicalGradientH);   
pragma Import(C,QConicalGradient_destroy,"QConicalGradient_destroy");

function QConicalGradient_create2(center: QPointFH; startAngle: Double) return  QConicalGradientH;
pragma Import(C,QConicalGradient_create2,"QConicalGradient_create2");

function QConicalGradient_create3(cx: Double; cy: Double; startAngle: Double) return  QConicalGradientH;
pragma Import(C,QConicalGradient_create3,"QConicalGradient_create3");

function  QConicalGradient_center(handle: not null  QConicalGradientH) return QPointFH;
pragma Import(C,QConicalGradient_center,"QConicalGradient_center");

procedure QConicalGradient_setCenter(handle: not null  QConicalGradientH; center: QPointFH);    
pragma Import(C,QConicalGradient_setCenter,"QConicalGradient_setCenter");

procedure QConicalGradient_setCenter2(handle: not null  QConicalGradientH; x: Double; y: Double);
pragma Import(C,QConicalGradient_setCenter2,"QConicalGradient_setCenter2");

function QConicalGradient_angle(handle: not null  QConicalGradientH) return  Double;   
pragma Import(C,QConicalGradient_angle,"QConicalGradient_angle");

procedure QConicalGradient_setAngle(handle: not null  QConicalGradientH; angle: Double);   
pragma Import(C,QConicalGradient_setAngle,"QConicalGradient_setAngle");
---------------------------------------------------------------------------

function QLinearGradient_create(start: QPointFH; finalStop: QPointFH) return  QLinearGradientH;
function QLinearGradient_create(xStart: Double; yStart: Double; xFinalStop: Double; yFinalStop: Double) return  QLinearGradientH;
procedure QLinearGradient_setStart(handle: not null  QLinearGradientH; x: Double; y: Double);
procedure QLinearGradient_setFinalStop(handle: not null  QLinearGradientH; x: Double; y: Double);
function QRadialGradient_create(center: QPointFH; radius: Double; focalPoint: QPointFH) return  QRadialGradientH;
function QRadialGradient_create(cx: Double; cy: Double; radius: Double; fx: Double; fy: Double) return  QRadialGradientH;
function QRadialGradient_create(center: QPointFH; radius: Double) return  QRadialGradientH;
function QRadialGradient_create(cx: Double; cy: Double; radius: Double) return  QRadialGradientH;
procedure QRadialGradient_setCenter(handle: not null  QRadialGradientH; x: Double; y: Double);
procedure QRadialGradient_setFocalPoint(handle: not null  QRadialGradientH; x: Double; y: Double);
function QConicalGradient_create(center: QPointFH; startAngle: Double) return  QConicalGradientH;
function QConicalGradient_create(cx: Double; cy: Double; startAngle: Double) return  QConicalGradientH;
procedure QConicalGradient_setCenter(handle: not null  QConicalGradientH; x: Double; y: Double);

end Qt.QGradient;
