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
package body Qt.QBitArray is

function  QBitArray_create(size:quint) return QBitArrayH is
begin
 return QBitArray_create1(size);
end;

function  QBitArray_create(ba:QBitArrayH) return QBitArrayH is
begin
 return QBitArray_create2(ba);
end;

procedure QBitArray_setBit(ba:QBitArrayH;indx:quint;value:integer) is
begin
 QBitArray_setBit1(ba,indx,value);
end QBitArray_setBit;

end Qt.QBitArray;
