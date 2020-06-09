-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QMatrix4x4 is

 function  QMatrix4x4_create return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_create, "QMatrix4x4_create");
 
 function  QMatrix4x4_create2(values:pfloat) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_create2, "QMatrix4x4_create2");
 
 function  QMatrix4x4_create3(m11,m12,m13,m14,m21,m22,m23,m24,m31,m32,m33,m34,m41,m42,m43,m44:float) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_create3, "QMatrix4x4_create3");
 
 function  QMatrix4x4_create4(values:pfloat;cols,rows:integer) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_create4, "QMatrix4x4_create4");
 
 function  QMatrix4x4_create5(transform:QTransformH) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_create5, "QMatrix4x4_create5");
 
 function  QMatrix4x4_create6(other:QMatrix4x4H) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_create6, "QMatrix4x4_create6");
 
 procedure QMatrix4x4_destroy(handle:not null QMatrix4x4H);
 pragma Import(C,QMatrix4x4_destroy, "QMatrix4x4_destroy");
 
 function  QMatrix4x4_isIdentity(handle:not null QMatrix4x4H) return boolean;
 pragma Import(C,QMatrix4x4_isIdentity, "QMatrix4x4_isIdentity");
 
 function  QMatrix4x4_column(handle:not null QMatrix4x4H;index:integer) return QVector4DH;
 pragma Import(C,QMatrix4x4_column, "QMatrix4x4_column");
 
 procedure QMatrix4x4_setColumn(handle:not null QMatrix4x4H;index:integer;value: QVector4DH);
 pragma Import(C,QMatrix4x4_setColumn, "QMatrix4x4_setColumn");
 
 function  QMatrix4x4_row(handle:not null QMatrix4x4H;index:integer) return QVector4DH;
 pragma Import(C,QMatrix4x4_row, "QMatrix4x4_row");
 
 procedure QMatrix4x4_setRow(handle:not null QMatrix4x4H;index:integer; value:QVector4DH);
 pragma Import(C,QMatrix4x4_setRow, "QMatrix4x4_setRow");
 
 procedure QMatrix4x4_setToIdentity(handle:not null QMatrix4x4H);
 pragma Import(C,QMatrix4x4_setToIdentity, "QMatrix4x4_setToIdentity");
 
 procedure QMatrix4x4_fill(handle:not null QMatrix4x4H;value:float);
 pragma Import(C,QMatrix4x4_fill, "QMatrix4x4_fill");
 
 function  QMatrix4x4_determinant(handle:not null QMatrix4x4H) return double;
 pragma Import(C,QMatrix4x4_determinant, "QMatrix4x4_determinant");
 
 function  QMatrix4x4_inverted(handle:not null QMatrix4x4H;invertible: pboolean := null) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_inverted, "QMatrix4x4_inverted");
 
 function  QMatrix4x4_transposed(handle:not null QMatrix4x4H) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_transposed, "QMatrix4x4_transposed");
 
 function  QMatrix4x4_normalMatrix(handle:not null QMatrix4x4H) return QMatrix3x3H;
 pragma Import(C,QMatrix4x4_normalMatrix, "QMatrix4x4_normalMatrix");
 
 function  QMatrix4x4_equal(handle:not null QMatrix4x4H;other:QMatrix4x4H) return boolean;
 pragma Import(C,QMatrix4x4_equal, "QMatrix4x4_equal");
 
 function  QMatrix4x4_notequal(handle:not null QMatrix4x4H; other:QMatrix4x4H) return boolean;
 pragma Import(C,QMatrix4x4_notequal, "QMatrix4x4_notequal");
 
 function  QMatrix4x4_sum(m1,m2:QMatrix4x4H) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_sum, "QMatrix4x4_sum");
 
 function  QMatrix4x4_substruct(m1,m2:QMatrix4x4H) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_substruct, "QMatrix4x4_substruct");
 
 function  QMatrix4x4_multiply(m1,m2:QMatrix4x4H) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_multiply, "QMatrix4x4_multiply");
 
 function  QMatrix4x4_multiply2(handle:not null QMatrix4x4H;vector: QVector3DH) return QVector3DH;
 pragma Import(C,QMatrix4x4_multiply2, "QMatrix4x4_multiply2");
 
 function  QMatrix4x4_multiply3(vector:QVector3DH;matrix: QMatrix4x4H) return QVector3DH;
 pragma Import(C,QMatrix4x4_multiply3, "QMatrix4x4_multiply3");
 
 function  QMatrix4x4_multiply4(vector:QVector4DH; matrix: QMatrix4x4H) return QVector4DH;
 pragma Import(C,QMatrix4x4_multiply4, "QMatrix4x4_multiply4");
 
 function  QMatrix4x4_multiply5(handle:not null QMatrix4x4H; vector:QVector4DH) return QVector4DH;
 pragma Import(C,QMatrix4x4_multiply5, "QMatrix4x4_multiply5");
 
 function  QMatrix4x4_multiply6(point:QPointH;matrix:QMatrix4x4H) return QPointH;
 pragma Import(C,QMatrix4x4_multiply6, "QMatrix4x4_multiply6");
 
 function  QMatrix4x4_multiply7(point:QPointFH;matrix:QMatrix4x4H) return QPointFH;
 pragma Import(C,QMatrix4x4_multiply7, "QMatrix4x4_multiply7");
 
 function  QMatrix4x4_multiply8(handle:not null QMatrix4x4H;point:QPointH) return QPointH;
 pragma Import(C,QMatrix4x4_multiply8, "QMatrix4x4_multiply8");
 
 function  QMatrix4x4_multiply9(handle:not null QMatrix4x4H;point:QPointFH) return QPointFH;
 pragma Import(C,QMatrix4x4_multiply9, "QMatrix4x4_multiply9");
 
 function  QMatrix4x4_multiply10(factor:float;matrix: QMatrix4x4H) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_multiply10, "QMatrix4x4_multiply10");
 
 function  QMatrix4x4_multiply11(handle:not null QMatrix4x4H; factor:float) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_multiply11, "QMatrix4x4_multiply11");
 
 function  QMatrix4x4_devide(handle:not null QMatrix4x4H; divisor:float) return QMatrix4x4H;
 pragma Import(C,QMatrix4x4_devide, "QMatrix4x4_devide");
 
 procedure QMatrix4x4_scale(handle:not null QMatrix4x4H;vector:QVector3DH);
 pragma Import(C,QMatrix4x4_scale, "QMatrix4x4_scale");
 
 procedure QMatrix4x4_translate(handle:not null QMatrix4x4H;vector:QVector3DH);
 pragma Import(C,QMatrix4x4_translate, "QMatrix4x4_translate");
 
 procedure QMatrix4x4_rotate(handle:not null QMatrix4x4H;angle:float;vector: QVector3DH);
 pragma Import(C,QMatrix4x4_rotate, "QMatrix4x4_rotate");
 
 procedure QMatrix4x4_scale2(handle:not null QMatrix4x4H;x,y:float);
 pragma Import(C,QMatrix4x4_scale2, "QMatrix4x4_scale2");
 
 procedure QMatrix4x4_scale3(handle:not null QMatrix4x4H;x,y,z:float);
 pragma Import(C,QMatrix4x4_scale3, "QMatrix4x4_scale3");
 
 procedure QMatrix4x4_scale4(handle:not null QMatrix4x4H;factor:float);
 pragma Import(C,QMatrix4x4_scale4, "QMatrix4x4_scale4");
 
 procedure QMatrix4x4_translate2(handle:not null QMatrix4x4H;x,y:float);
 pragma Import(C,QMatrix4x4_translate2, "QMatrix4x4_translate2");
 
 procedure QMatrix4x4_translate3(handle:not null QMatrix4x4H;x,y,z:float);
 pragma Import(C,QMatrix4x4_translate3, "QMatrix4x4_translate3");
 
 procedure QMatrix4x4_rotate2(handle:not null QMatrix4x4H;angle:float; x,y:float;z:float := 0.0);
 pragma Import(C,QMatrix4x4_rotate2, "QMatrix4x4_rotate2");
 
 procedure QMatrix4x4_rotate3(handle:not null QMatrix4x4H; quaternion:QQuaternionH);
 pragma Import(C,QMatrix4x4_rotate3, "QMatrix4x4_rotate3");
 
 procedure QMatrix4x4_ortho(handle:not null QMatrix4x4H;rect:QRectH);
 pragma Import(C,QMatrix4x4_ortho, "QMatrix4x4_ortho");
 
 procedure QMatrix4x4_ortho2(handle:not null QMatrix4x4H;rect:QRectFH);
 pragma Import(C,QMatrix4x4_ortho2, "QMatrix4x4_ortho2");
 
 procedure QMatrix4x4_ortho3(handle:not null QMatrix4x4H;left,right,bottom,top,nearPlane,farPlane:float);
 pragma Import(C,QMatrix4x4_ortho3, "QMatrix4x4_ortho3");
 
 procedure QMatrix4x4_frustum(handle:not null QMatrix4x4H;left,right,bottom,top,nearPlane,farPlane:float);
 pragma Import(C,QMatrix4x4_frustum, "QMatrix4x4_frustum");
 
 procedure QMatrix4x4_perspective(handle:not null QMatrix4x4H;verticalAngle,aspectRatio,nearPlane,farPlane:float);
 pragma Import(C,QMatrix4x4_perspective, "QMatrix4x4_perspective");
 
 procedure QMatrix4x4_lookAt(handle:not null QMatrix4x4H;eye,center,up:QVector3DH);
 pragma Import(C,QMatrix4x4_lookAt, "QMatrix4x4_lookAt");
 
 procedure QMatrix4x4_viewport(handle:not null QMatrix4x4H;rect:QRectFH);
 pragma Import(C,QMatrix4x4_viewport, "QMatrix4x4_viewport");
 
 procedure QMatrix4x4_viewport2(handle:not null QMatrix4x4H;left,bottom,width,height:float; nearPlane: float := 0.0; farPlane: float := 1.0);
 pragma Import(C,QMatrix4x4_viewport2, "QMatrix4x4_viewport2");
 
 procedure QMatrix4x4_flipCoordinates(handle:not null QMatrix4x4H);
 pragma Import(C,QMatrix4x4_flipCoordinates, "QMatrix4x4_flipCoordinates");
 
 procedure QMatrix4x4_copyDataTo(handle:not null QMatrix4x4H;values:pfloat);
 pragma Import(C,QMatrix4x4_copyDataTo, "QMatrix4x4_copyDataTo");
 
 function  QMatrix4x4_toAffine(handle:not null QMatrix4x4H) return QMatrixH;
 pragma Import(C,QMatrix4x4_toAffine, "QMatrix4x4_toAffine");
 
 function  QMatrix4x4_toTransform(handle:not null QMatrix4x4H) return QTransformH;
 pragma Import(C,QMatrix4x4_toTransform, "QMatrix4x4_toTransform");
 
 function  QMatrix4x4_toTransform2(handle:not null QMatrix4x4H;distanceToPlane:float) return QTransformH;
 pragma Import(C,QMatrix4x4_toTransform2, "QMatrix4x4_toTransform2");
 
 function  QMatrix4x4_map(handle:not null QMatrix4x4H;point:QPointH) return QPointH;
 pragma Import(C,QMatrix4x4_map, "QMatrix4x4_map");
 
 function  QMatrix4x4_map2(handle:not null QMatrix4x4H;point:QPointFH) return QPointFH;
 pragma Import(C,QMatrix4x4_map2, "QMatrix4x4_map2");
 
 function  QMatrix4x4_map3(handle:not null QMatrix4x4H; vector:QVector3DH) return QVector3DH;
 pragma Import(C,QMatrix4x4_map3, "QMatrix4x4_map3");
 
 function  QMatrix4x4_mapVector(handle:not null QMatrix4x4H;vector:QVector3DH) return QVector3DH;
 pragma Import(C,QMatrix4x4_mapVector, "QMatrix4x4_mapVector");
 
 function  QMatrix4x4_map4(handle:not null QMatrix4x4H;vector:QVector4DH) return QVector4DH;
 pragma Import(C,QMatrix4x4_map4, "QMatrix4x4_map4");
 
 function  QMatrix4x4_mapRect(handle:not null QMatrix4x4H;rect:QRectH) return QRectH;
 pragma Import(C,QMatrix4x4_mapRect, "QMatrix4x4_mapRect");
 
 function  QMatrix4x4_mapRect2(handle:not null QMatrix4x4H;rect:QRectFH) return QRectFH;
 pragma Import(C,QMatrix4x4_mapRect2, "QMatrix4x4_mapRect2");
 
 function  QMatrix4x4_data(handle:not null QMatrix4x4H) return pfloat;
 pragma Import(C,QMatrix4x4_data, "QMatrix4x4_data");
 
 function  QMatrix4x4_constData(handle:not null QMatrix4x4H) return pfloat;
 pragma Import(C,QMatrix4x4_constData, "QMatrix4x4_constData");
 
 procedure QMatrix4x4_optimize(handle:not null QMatrix4x4H);
 pragma Import(C,QMatrix4x4_optimize, "QMatrix4x4_optimize");
 
 function  QMatrix4x4_toQVariant(handle:not null QMatrix4x4H) return QVariantH;
 pragma Import(C,QMatrix4x4_toQVariant, "QMatrix4x4_toQVariant");
------------------------------------------------------------------------
 function  QMatrix4x4_create(values:pfloat) return QMatrix4x4H;
 function  QMatrix4x4_create(m11,m12,m13,m14,m21,m22,m23,m24,m31,m32,m33,m34,m41,m42,m43,m44:float) return QMatrix4x4H;
 function  QMatrix4x4_create(values:pfloat;cols,rows:integer) return QMatrix4x4H;
 function  QMatrix4x4_create(transform:QTransformH) return QMatrix4x4H;
 function  QMatrix4x4_create(other:QMatrix4x4H) return QMatrix4x4H;
 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H;vector: QVector3DH) return QVector3DH;
 function  QMatrix4x4_multiply(vector:QVector3DH;matrix: QMatrix4x4H) return QVector3DH;
 function  QMatrix4x4_multiply(vector:QVector4DH; matrix: QMatrix4x4H) return QVector4DH;
 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H; vector:QVector4DH) return QVector4DH;
 function  QMatrix4x4_multiply(point:QPointH;matrix:QMatrix4x4H) return QPointH;
 function  QMatrix4x4_multiply(point:QPointFH;matrix:QMatrix4x4H) return QPointFH;
 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H;point:QPointH) return QPointH;
 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H;point:QPointFH) return QPointFH;
 function  QMatrix4x4_multiply(factor:float;matrix: QMatrix4x4H) return QMatrix4x4H;
 function  QMatrix4x4_multiply(handle:not null QMatrix4x4H; factor:float) return QMatrix4x4H;
 procedure QMatrix4x4_scale(handle:not null QMatrix4x4H;x,y:float);
 procedure QMatrix4x4_scale(handle:not null QMatrix4x4H;x,y,z:float);
 procedure QMatrix4x4_scale(handle:not null QMatrix4x4H;factor:float);
 procedure QMatrix4x4_translate(handle:not null QMatrix4x4H;x,y:float);
 procedure QMatrix4x4_translate(handle:not null QMatrix4x4H;x,y,z:float);
 procedure QMatrix4x4_rotate(handle:not null QMatrix4x4H;angle:float; x,y:float;z:float := 0.0);
 procedure QMatrix4x4_rotate(handle:not null QMatrix4x4H; quaternion:QQuaternionH);
 procedure QMatrix4x4_ortho(handle:not null QMatrix4x4H;rect:QRectFH);
 procedure QMatrix4x4_ortho(handle:not null QMatrix4x4H;left,right,bottom,top,nearPlane,farPlane:float);
 procedure QMatrix4x4_viewport(handle:not null QMatrix4x4H;left,bottom,width,height:float; nearPlane: float := 0.0; farPlane: float := 1.0);
 function  QMatrix4x4_toTransform(handle:not null QMatrix4x4H;distanceToPlane:float) return QTransformH;
 function  QMatrix4x4_map(handle:not null QMatrix4x4H;point:QPointFH) return QPointFH;
 function  QMatrix4x4_map(handle:not null QMatrix4x4H; vector:QVector3DH) return QVector3DH;
 function  QMatrix4x4_map(handle:not null QMatrix4x4H;vector:QVector4DH) return QVector4DH;
 function  QMatrix4x4_mapRect(handle:not null QMatrix4x4H;rect:QRectFH) return QRectFH;

end;
