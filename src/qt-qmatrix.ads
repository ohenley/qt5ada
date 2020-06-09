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

package Qt.QMatrix              is

function QMatrix_create return  QMatrixH;    
pragma Import(C,QMatrix_create,"QMatrix_create");

procedure QMatrix_destroy(handle: not null  QMatrixH);   
pragma Import(C,QMatrix_destroy,"QMatrix_destroy");

function QMatrix_create2(m11: Double; m12: Double; m21: Double; m22: Double; dx: Double; dy: Double) return  QMatrixH;
pragma Import(C,QMatrix_create2,"QMatrix_create2");

function QMatrix_create3(matrix: QMatrixH) return  QMatrixH;
pragma Import(C,QMatrix_create3,"QMatrix_create3");

procedure QMatrix_setMatrix(handle: not null  QMatrixH; m11: Double; m12: Double; m21: Double; m22: Double; dx: Double; dy: Double);   
pragma Import(C,QMatrix_setMatrix,"QMatrix_setMatrix");

function QMatrix_m11(handle: not null  QMatrixH) return  Double;   
pragma Import(C,QMatrix_m11,"QMatrix_m11");

function QMatrix_m12(handle: not null  QMatrixH) return  Double;   
pragma Import(C,QMatrix_m12,"QMatrix_m12");

function QMatrix_m21(handle: not null  QMatrixH) return  Double;   
pragma Import(C,QMatrix_m21,"QMatrix_m21");

function QMatrix_m22(handle: not null  QMatrixH) return  Double;   
pragma Import(C,QMatrix_m22,"QMatrix_m22");

function QMatrix_dx(handle: not null  QMatrixH) return  Double;   
pragma Import(C,QMatrix_dx,"QMatrix_dx");

function QMatrix_dy(handle: not null  QMatrixH) return  Double;   
pragma Import(C,QMatrix_dy,"QMatrix_dy");

procedure QMatrix_map(handle: not null  QMatrixH; x: Integer; y: Integer; tx: PInteger; ty: PInteger);    
pragma Import(C,QMatrix_map,"QMatrix_map");

procedure QMatrix_map2(handle: not null  QMatrixH; x: Double; y: Double; tx: PDouble; ty: PDouble);
pragma Import(C,QMatrix_map2,"QMatrix_map2");

function  QMatrix_mapRect(handle: not null  QMatrixH; p1: QRectH) return QRectH;
pragma Import(C,QMatrix_mapRect,"QMatrix_mapRect");

function  QMatrix_mapRect2(handle: not null  QMatrixH; p1: QRectFH) return QRectFH;
pragma Import(C,QMatrix_mapRect2,"QMatrix_mapRect2");

function  QMatrix_map3(handle: not null  QMatrixH; p: QPointH) return QPointH;
pragma Import(C,QMatrix_map3,"QMatrix_map3");

function  QMatrix_map4(handle: not null  QMatrixH; p: QPointFH) return QPointFH;
pragma Import(C,QMatrix_map4,"QMatrix_map4");

function  QMatrix_map5(handle: not null  QMatrixH; l: QLineH) return QLineH;
pragma Import(C,QMatrix_map5,"QMatrix_map5");

function  QMatrix_map6(handle: not null  QMatrixH; l: QLineFH) return QLineFH;
pragma Import(C,QMatrix_map6,"QMatrix_map6");

function  QMatrix_map7(handle: not null  QMatrixH; a: QPolygonFH) return  QPolygonFH;
pragma Import(C,QMatrix_map7,"QMatrix_map7");

function  QMatrix_map8(handle: not null  QMatrixH; a: QPolygonH) return QPolygonH;
pragma Import(C,QMatrix_map8,"QMatrix_map8");

function  QMatrix_map9(handle: not null  QMatrixH; r: QRegionH) return QRegionH;
pragma Import(C,QMatrix_map9,"QMatrix_map9");

function  QMatrix_map10(handle: not null  QMatrixH; p: QPainterPathH) return QPainterPathH;
pragma Import(C,QMatrix_map10,"QMatrix_map10");

function  QMatrix_mapToPolygon(handle: not null  QMatrixH; r: QRectH) return QPolygonH;
pragma Import(C,QMatrix_mapToPolygon,"QMatrix_mapToPolygon");

procedure QMatrix_reset(handle: not null  QMatrixH);   
pragma Import(C,QMatrix_reset,"QMatrix_reset");

function QMatrix_isIdentity(handle: not null  QMatrixH) return  Boolean;   
pragma Import(C,QMatrix_isIdentity,"QMatrix_isIdentity");

function QMatrix_translate(handle: not null  QMatrixH; dx: Double; dy: Double) return  QMatrixH;   
pragma Import(C,QMatrix_translate,"QMatrix_translate");

function QMatrix_scale(handle: not null  QMatrixH; sx: Double; sy: Double) return  QMatrixH;   
pragma Import(C,QMatrix_scale,"QMatrix_scale");

function QMatrix_shear(handle: not null  QMatrixH; sh: Double; sv: Double) return  QMatrixH;   
pragma Import(C,QMatrix_shear,"QMatrix_shear");

function QMatrix_rotate(handle: not null  QMatrixH; a: Double) return  QMatrixH;   
pragma Import(C,QMatrix_rotate,"QMatrix_rotate");

function QMatrix_isInvertible(handle: not null  QMatrixH) return  Boolean;   
pragma Import(C,QMatrix_isInvertible,"QMatrix_isInvertible");

-- function QMatrix_det(handle: not null  QMatrixH) return  Double;   
-- pragma Import(C,QMatrix_det,"QMatrix_det");

function  QMatrix_inverted(handle: not null  QMatrixH; invertible: PBoolean := null) return QMatrixH;
pragma Import(C,QMatrix_inverted,"QMatrix_inverted");

function  QMatrix_determinant(handle: not null QMatrixH) return qreal;
pragma Import(C,QMatrix_determinant, "QMatrix_determinant");
----------------------------------------------------------------------------------------------------------
function QMatrix_create(m11: Double; m12: Double; m21: Double; m22: Double; dx: Double; dy: Double) return  QMatrixH;
function QMatrix_create(matrix: QMatrixH) return  QMatrixH;
procedure QMatrix_map(handle: not null  QMatrixH; x: Double; y: Double; tx: PDouble; ty: PDouble);
function  QMatrix_map(handle: not null  QMatrixH; p: QPointH) return QPointH;
function  QMatrix_map(handle: not null  QMatrixH; p: QPointFH) return QPointFH;
function  QMatrix_map(handle: not null  QMatrixH; l: QLineH) return QLineH;
function  QMatrix_map(handle: not null  QMatrixH; l: QLineFH) return QLineFH;
function  QMatrix_map(handle: not null  QMatrixH; a: QPolygonFH) return QPolygonFH;
function  QMatrix_map(handle: not null  QMatrixH; a: QPolygonH) return QPolygonH;
function  QMatrix_map(handle: not null  QMatrixH; r: QRegionH)  return QRegionH;
function  QMatrix_map(handle: not null  QMatrixH; p: QPainterPathH) return QPainterPathH;
function  QMatrix_mapRect(handle: not null  QMatrixH; p1: QRectFH) return QRectFH;

end Qt.QMatrix;
