--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2018                      บ
-- บ Copyright (C) 2012,2018                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QBitArray is

function  QBitArray_create return QBitArrayH;
pragma Import(C,QBitArray_create, "QBitArray_create");

function  QBitArray_create1(size:quint) return QBitArrayH;
pragma Import(C,QBitArray_create1, "QBitArray_create1");

function  QBitArray_create2(ba:QBitArrayH) return QBitArrayH;
pragma Import(C,QBitArray_create2, "QBitArray_create2");

function  QBitArray_size(ba:QBitArrayH) return quint;
pragma Import(C,QBitArray_size, "QBitArray_size");

procedure  QBitArray_resize(ba:QBitArrayH;size:integer);
pragma Import(C,QBitArray_resize, "QBitArray_resize");

function  QBitArray_fill(ba:QBitArrayH;v,size:integer) return integer;
pragma Import(C,QBitArray_fill, "QBitArray_fill");

procedure QBitArray_detach(ba:QBitArrayH);
pragma Import(C,QBitArray_detach, "QBitArray_detach");

function  QBitArray_testBit(ba:QBitArrayH;indx:quint) return integer;
pragma Import(C,QBitArray_testBit, "QBitArray_testBit");

procedure QBitArray_setBit(ba:QBitArrayH;indx:quint);
pragma Import(C,QBitArray_setBit, "QBitArray_setBit");

procedure QBitArray_setBit1(ba:QBitArrayH;indx:quint;value:integer);
pragma Import(C,QBitArray_setBit1, "QBitArray_setBit1");

procedure QBitArray_clearBit(ba:QBitArrayH;indx:quint);
pragma Import(C,QBitArray_clearBit, "QBitArray_clearBit");

function  QBitArray_toggleBit(ba:QBitArrayH;indx:quint) return integer;
pragma Import(C,QBitArray_toggleBit, "QBitArray_toggleBit");

function  QBitArray_at(ba:QBitArrayH;indx:quint) return integer;
pragma Import(C,QBitArray_at, "QBitArray_at");

 function  QBitArray_bits(handle:not null QBitArrayH) return zstring;
 pragma Import(C,QBitArray_bits, "QBitArray_bits");
 
 function  QBitArray_fromBits(data:zstring;len: int) return QBitArrayH ;
 pragma Import(C,QBitArray_fromBits, "QBitArray_fromBits");
 
-----------------------------------------------------------------
function  QBitArray_create(size:quint) return QBitArrayH;
function  QBitArray_create(ba:QBitArrayH) return QBitArrayH;
procedure QBitArray_setBit(ba:QBitArrayH;indx:quint;value:integer);

end Qt.QBitArray;
