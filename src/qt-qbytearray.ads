--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QByteArray           is

function QByteArray_create return  QByteArrayH;   
pragma Import(C,QByteArray_create,"QByteArray_create");

procedure QByteArray_destroy(handle: not null  QByteArrayH);  
pragma Import(C,QByteArray_destroy,"QByteArray_destroy");

function QByteArray_create2(p1: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_create2,"QByteArray_create2");

function QByteArray_create3(p1: zstring; size: Integer) return  QByteArrayH;
pragma Import(C,QByteArray_create3,"QByteArray_create3");

function QByteArray_create4(size: Integer; c: char) return  QByteArrayH; 
pragma Import(C,QByteArray_create4,"QByteArray_create4");

function QByteArray_create5(p1: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_create5,"QByteArray_create5");

function QByteArray_size(handle: not null  QByteArrayH) return  Integer;  
pragma Import(C,QByteArray_size,"QByteArray_size");

function QByteArray_isEmpty(handle: not null  QByteArrayH) return  Boolean;  
pragma Import(C,QByteArray_isEmpty,"QByteArray_isEmpty");

procedure QByteArray_resize(handle: not null  QByteArrayH; size: Integer);  
pragma Import(C,QByteArray_resize,"QByteArray_resize");

function QByteArray_fill(handle: not null  QByteArrayH; c: char; size: Integer := -1) return QByteArrayH;  
pragma Import(C,QByteArray_fill,"QByteArray_fill");

function QByteArray_capacity(handle: not null  QByteArrayH) return  Integer;  
pragma Import(C,QByteArray_capacity,"QByteArray_capacity");

procedure QByteArray_reserve(handle: not null  QByteArrayH; size: Integer);  
pragma Import(C,QByteArray_reserve,"QByteArray_reserve");

procedure QByteArray_squeeze(handle: not null  QByteArrayH);  
pragma Import(C,QByteArray_squeeze,"QByteArray_squeeze");

function QByteArray_data(handle: not null  QByteArrayH) return zstring;   
pragma Import(C,QByteArray_data,"QByteArray_data");

function QByteArray_constData(handle: not null  QByteArrayH) return zstring;  
pragma Import(C,QByteArray_constData,"QByteArray_constData");

procedure QByteArray_detach(handle: not null  QByteArrayH);  
pragma Import(C,QByteArray_detach,"QByteArray_detach");

function QByteArray_isDetached(handle: not null  QByteArrayH) return  Boolean;  
pragma Import(C,QByteArray_isDetached,"QByteArray_isDetached");

procedure QByteArray_clear(handle: not null  QByteArrayH);  
pragma Import(C,QByteArray_clear,"QByteArray_clear");

function QByteArray_at(handle: not null  QByteArrayH; i: Integer) return  char;  
pragma Import(C,QByteArray_at,"QByteArray_at");

function QByteArray_indexOf(handle: not null  QByteArrayH; c: char; from: Integer := 0) return Integer;   
pragma Import(C,QByteArray_indexOf,"QByteArray_indexOf");

function QByteArray_indexOf2(handle: not null  QByteArrayH; c: zstring; from: Integer := 0) return Integer;
pragma Import(C,QByteArray_indexOf2,"QByteArray_indexOf2");

function QByteArray_indexOf3(handle: not null  QByteArrayH; a: QByteArrayH; from: Integer := 0) return Integer; 
pragma Import(C,QByteArray_indexOf3,"QByteArray_indexOf3");

function QByteArray_lastIndexOf(handle: not null  QByteArrayH; c: char; from: Integer := -1) return Integer;   
pragma Import(C,QByteArray_lastIndexOf,"QByteArray_lastIndexOf");

function QByteArray_lastIndexOf2(handle: not null  QByteArrayH; c: zstring; from: Integer := -1) return Integer;
pragma Import(C,QByteArray_lastIndexOf2,"QByteArray_lastIndexOf2");

function QByteArray_lastIndexOf3(handle: not null  QByteArrayH; a: QByteArrayH; from: Integer := -1) return Integer; 
pragma Import(C,QByteArray_lastIndexOf3,"QByteArray_lastIndexOf3");

function QByteArray_contains(handle: not null  QByteArrayH; c: char) return  boolean;   
pragma Import(C,QByteArray_contains,"QByteArray_contains");

function QByteArray_contains2(handle: not null  QByteArrayH; a: zstring) return  boolean;
pragma Import(C,QByteArray_contains2,"QByteArray_contains2");

function QByteArray_contains3(handle: not null  QByteArrayH; a: QByteArrayH) return  boolean; 
pragma Import(C,QByteArray_contains3,"QByteArray_contains3");

function QByteArray_count(handle: not null  QByteArrayH; c: char) return  Integer;   
pragma Import(C,QByteArray_count,"QByteArray_count");

function QByteArray_count2(handle: not null  QByteArrayH; a: zstring) return  Integer;
pragma Import(C,QByteArray_count2,"QByteArray_count2");

function QByteArray_count3(handle: not null  QByteArrayH; a: QByteArrayH) return  Integer; 
pragma Import(C,QByteArray_count3,"QByteArray_count3");

function  QByteArray_left(handle: not null  QByteArrayH; len: Integer)  return QByteArrayH;
pragma Import(C,QByteArray_left,"QByteArray_left");

function  QByteArray_right(handle: not null  QByteArrayH; len: Integer)  return QByteArrayH;
pragma Import(C,QByteArray_right,"QByteArray_right");

function  QByteArray_mid(handle: not null  QByteArrayH;  index: Integer; len: Integer := -1) return QByteArrayH;
pragma Import(C,QByteArray_mid,"QByteArray_mid");

function QByteArray_startsWith(handle: not null  QByteArrayH; a: QByteArrayH) return  Boolean;   
pragma Import(C,QByteArray_startsWith,"QByteArray_startsWith");

function QByteArray_startsWith2(handle: not null  QByteArrayH; c: char) return  Boolean; 
pragma Import(C,QByteArray_startsWith2,"QByteArray_startsWith2");

function QByteArray_startsWith3(handle: not null  QByteArrayH; c: zstring) return  Boolean;
pragma Import(C,QByteArray_startsWith3,"QByteArray_startsWith3");

function QByteArray_endsWith(handle: not null  QByteArrayH; a: QByteArrayH) return  Boolean;   
pragma Import(C,QByteArray_endsWith,"QByteArray_endsWith");

function QByteArray_endsWith2(handle: not null  QByteArrayH; c: char) return  Boolean; 
pragma Import(C,QByteArray_endsWith2,"QByteArray_endsWith2");

function QByteArray_endsWith3(handle: not null  QByteArrayH; c: zstring) return  Boolean;
pragma Import(C,QByteArray_endsWith3,"QByteArray_endsWith3");

procedure QByteArray_truncate(handle: not null  QByteArrayH; pos: Integer);  
pragma Import(C,QByteArray_truncate,"QByteArray_truncate");

procedure QByteArray_chop(handle: not null  QByteArrayH; n: Integer);  
pragma Import(C,QByteArray_chop,"QByteArray_chop");

function  QByteArray_toLower(handle: not null  QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_toLower,"QByteArray_toLower");

function  QByteArray_toUpper(handle: not null  QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_toUpper,"QByteArray_toUpper");

function  QByteArray_trimmed(handle: not null  QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_trimmed,"QByteArray_trimmed");

function  QByteArray_simplified(handle: not null  QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_simplified,"QByteArray_simplified");

function  QByteArray_leftJustified(handle: not null  QByteArrayH;  width: Integer; fill: char; truncate: Boolean := False) return QByteArrayH;
pragma Import(C,QByteArray_leftJustified,"QByteArray_leftJustified");

function  QByteArray_rightJustified(handle: not null  QByteArrayH;  width: Integer; fill: char; truncate: Boolean := False) return QByteArrayH;
pragma Import(C,QByteArray_rightJustified,"QByteArray_rightJustified");

function QByteArray_prepend(handle: not null  QByteArrayH; c: char) return  QByteArrayH;   
pragma Import(C,QByteArray_prepend,"QByteArray_prepend");

function QByteArray_prepend2(handle: not null  QByteArrayH; s: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_prepend2,"QByteArray_prepend2");

function QByteArray_prepend3(handle: not null  QByteArrayH; a: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_prepend3,"QByteArray_prepend3");

function QByteArray_append(handle: not null  QByteArrayH; c: char) return  QByteArrayH;   
pragma Import(C,QByteArray_append,"QByteArray_append");

function QByteArray_append2(handle: not null  QByteArrayH; s: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_append2,"QByteArray_append2");

function QByteArray_append3(handle: not null  QByteArrayH; a: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_append3,"QByteArray_append3");

function QByteArray_insert(handle: not null  QByteArrayH; i: Integer; c: char) return  QByteArrayH;   
pragma Import(C,QByteArray_insert,"QByteArray_insert");

function QByteArray_insert2(handle: not null  QByteArrayH; i: Integer; s: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_insert2,"QByteArray_insert2");

function QByteArray_insert3(handle: not null  QByteArrayH; i: Integer; a: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_insert3,"QByteArray_insert3");

function QByteArray_remove(handle: not null  QByteArrayH; index: Integer; len: Integer) return  QByteArrayH;  
pragma Import(C,QByteArray_remove,"QByteArray_remove");

function QByteArray_replace(handle: not null  QByteArrayH; index: Integer; len: Integer; s: zstring) return  QByteArrayH;   
pragma Import(C,QByteArray_replace,"QByteArray_replace");

function QByteArray_replace2(handle: not null  QByteArrayH; index: Integer; len: Integer; s: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_replace2,"QByteArray_replace2");

function QByteArray_replace3(handle: not null  QByteArrayH; before: char; after: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_replace3,"QByteArray_replace3");

function QByteArray_replace4(handle: not null  QByteArrayH; before: char; after: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_replace4,"QByteArray_replace4");

function QByteArray_replace5(handle: not null  QByteArrayH; before: zstring; after: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_replace5,"QByteArray_replace5");

function QByteArray_replace6(handle: not null  QByteArrayH; before: QByteArrayH; after: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_replace6,"QByteArray_replace6");

function QByteArray_replace7(handle: not null  QByteArrayH; before: QByteArrayH; after: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_replace7,"QByteArray_replace7");

function QByteArray_replace8(handle: not null  QByteArrayH; before: zstring; after: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_replace8,"QByteArray_replace8");

function QByteArray_replace9(handle: not null  QByteArrayH; before: char; after: char) return  QByteArrayH; 
pragma Import(C,QByteArray_replace9,"QByteArray_replace9");

function QByteArray_replace10(handle: not null  QByteArrayH; before: QStringH; after: zstring) return  QByteArrayH; 
pragma Import(C,QByteArray_replace10,"QByteArray_replace10");

function QByteArray_replace11(handle: not null  QByteArrayH; c: char; after: QStringH) return  QByteArrayH; 
pragma Import(C,QByteArray_replace11,"QByteArray_replace11");

function QByteArray_replace12(handle: not null  QByteArrayH; before: QStringH; after: QByteArrayH) return  QByteArrayH; 
pragma Import(C,QByteArray_replace12,"QByteArray_replace12");

function QByteArray_append4(handle: not null  QByteArrayH; s: QStringH) return  QByteArrayH; 
pragma Import(C,QByteArray_append4,"QByteArray_append4");

function QByteArray_insert4(handle: not null  QByteArrayH; i: Integer; s: QStringH) return  QByteArrayH; 
pragma Import(C,QByteArray_insert4,"QByteArray_insert4");

function QByteArray_indexOf4(handle: not null  QByteArrayH; s: QStringH; from: Integer := 0) return Integer; 
pragma Import(C,QByteArray_indexOf4,"QByteArray_indexOf4");

function QByteArray_lastIndexOf4(handle: not null  QByteArrayH; s: QStringH; from: Integer := -1) return Integer; 
pragma Import(C,QByteArray_lastIndexOf4,"QByteArray_lastIndexOf4");

function QByteArray_toShort(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return Short_Integer;
pragma Import(C,QByteArray_toShort,"QByteArray_toShort");

function QByteArray_toUShort(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return Word;  
pragma Import(C,QByteArray_toUShort,"QByteArray_toUShort");

function QByteArray_toInt(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return Integer;  
pragma Import(C,QByteArray_toInt,"QByteArray_toInt");

function QByteArray_toUInt(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return LongWord;  
pragma Import(C,QByteArray_toUInt,"QByteArray_toUInt");

function QByteArray_toLong(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return Long_Integer;
pragma Import(C,QByteArray_toLong,"QByteArray_toLong");

function QByteArray_toULong(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return Longword;  
pragma Import(C,QByteArray_toULong,"QByteArray_toULong");

function QByteArray_toLongLong(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return int64;  
pragma Import(C,QByteArray_toLongLong,"QByteArray_toLongLong");

function QByteArray_toULongLong(handle: not null  QByteArrayH; ok: PBoolean := null; base: Integer := 10) return qword;  
pragma Import(C,QByteArray_toULongLong,"QByteArray_toULongLong");

function QByteArray_toFloat(handle: not null  QByteArrayH; ok: PBoolean := null) return Single;  
pragma Import(C,QByteArray_toFloat,"QByteArray_toFloat");

function QByteArray_toDouble(handle: not null  QByteArrayH; ok: PBoolean := null) return Double;  
pragma Import(C,QByteArray_toDouble,"QByteArray_toDouble");

function  QByteArray_toBase64(handle: not null  QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_toBase64,"QByteArray_toBase64");

function  QByteArray_toHex(handle: not null  QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_toHex,"QByteArray_toHex");

function QByteArray_setNum(handle: not null  QByteArrayH; p1: Short_Integer; base: Integer := 10) return QByteArrayH;
pragma Import(C,QByteArray_setNum,"QByteArray_setNum");

function QByteArray_setNum2(handle: not null  QByteArrayH; p1: Word; base: Integer := 10) return QByteArrayH; 
pragma Import(C,QByteArray_setNum2,"QByteArray_setNum2");

function QByteArray_setNum3(handle: not null  QByteArrayH; p1: Integer; base: Integer := 10) return QByteArrayH; 
pragma Import(C,QByteArray_setNum3,"QByteArray_setNum3");

function QByteArray_setNum4(handle: not null  QByteArrayH; p1: LongWord; base: Integer := 10) return QByteArrayH; 
pragma Import(C,QByteArray_setNum4,"QByteArray_setNum4");

function QByteArray_setNum5(handle: not null  QByteArrayH; p1: int64; base: Integer := 10) return QByteArrayH; 
pragma Import(C,QByteArray_setNum5,"QByteArray_setNum5");

function QByteArray_setNum6(handle: not null  QByteArrayH; p1: qword; base: Integer := 10) return QByteArrayH; 
pragma Import(C,QByteArray_setNum6,"QByteArray_setNum6");

function QByteArray_setNum7(handle: not null  QByteArrayH; p1: Single; f: char; prec: Integer := 6) return QByteArrayH; 
pragma Import(C,QByteArray_setNum7,"QByteArray_setNum7");

function QByteArray_setNum8(handle: not null  QByteArrayH; p1: Double; f: char; prec: Integer := 6) return QByteArrayH; 
pragma Import(C,QByteArray_setNum8,"QByteArray_setNum8");

function  QByteArray_number(p1: Integer; base: Integer := 10) return QByteArrayH;
pragma Import(C,QByteArray_number,"QByteArray_number");

function  QByteArray_number2(p1: LongWord; base: Integer := 10) return QByteArrayH;
pragma Import(C,QByteArray_number2,"QByteArray_number2");

function  QByteArray_number3(p1: int64; base: Integer := 10) return QByteArrayH;
pragma Import(C,QByteArray_number3,"QByteArray_number3");

function  QByteArray_number4(p1: qword; base: Integer := 10) return QByteArrayH;
pragma Import(C,QByteArray_number4,"QByteArray_number4");

function  QByteArray_number5(p1: Double; f: char; prec: Integer := 6) return QByteArrayH;
pragma Import(C,QByteArray_number5,"QByteArray_number5");

function  QByteArray_fromRawData(p1: zstring; size: Integer) return QByteArrayH;
pragma Import(C,QByteArray_fromRawData,"QByteArray_fromRawData");

function  QByteArray_fromBase64(base64: QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_fromBase64,"QByteArray_fromBase64");

function  QByteArray_fromHex(hexEncoded: QByteArrayH) return QByteArrayH;
pragma Import(C,QByteArray_fromHex,"QByteArray_fromHex");

procedure QByteArray_push_back(handle: not null  QByteArrayH; c: char);   
pragma Import(C,QByteArray_push_back,"QByteArray_push_back");

procedure QByteArray_push_back2(handle: not null  QByteArrayH; c: zstring); 
pragma Import(C,QByteArray_push_back2,"QByteArray_push_back2");

procedure QByteArray_push_back3(handle: not null  QByteArrayH; a: QByteArrayH); 
pragma Import(C,QByteArray_push_back3,"QByteArray_push_back3");

procedure QByteArray_push_front(handle: not null  QByteArrayH; c: char);   
pragma Import(C,QByteArray_push_front,"QByteArray_push_front");

procedure QByteArray_push_front2(handle: not null  QByteArrayH; c: zstring); 
pragma Import(C,QByteArray_push_front2,"QByteArray_push_front2");

procedure QByteArray_push_front3(handle: not null  QByteArrayH; a: QByteArrayH); 
pragma Import(C,QByteArray_push_front3,"QByteArray_push_front3");

function QByteArray_count4(handle: not null  QByteArrayH) return  Integer; 
pragma Import(C,QByteArray_count4,"QByteArray_count4");

function QByteArray_length(handle: not null  QByteArrayH) return  Integer;  
pragma Import(C,QByteArray_length,"QByteArray_length");

function QByteArray_isNull(handle: not null  QByteArrayH) return  Boolean;  
pragma Import(C,QByteArray_isNull,"QByteArray_isNull");

 function  QByteArray_begin(handle:not null QByteArrayH) return zstring;
 pragma Import(C,QByteArray_begin, "QByteArray_begin");
 
 function  QByteArray_cbegin(handle:not null QByteArrayH) return zstring;
 pragma Import(C,QByteArray_cbegin, "QByteArray_cbegin");
 
 function  QByteArray_constBegin(handle:not null QByteArrayH) return zstring;
 pragma Import(C,QByteArray_constBegin, "QByteArray_constBegin");
 
 function  QByteArray_end(handle:not null QByteArrayH) return zstring;
 pragma Import(C,QByteArray_end, "QByteArray_end");
 
 function  QByteArray_cend(handle:not null QByteArrayH) return zstring;
 pragma Import(C,QByteArray_cend, "QByteArray_cend");
 
 function  QByteArray_constEnd(handle:not null QByteArrayH) return zstring;
 pragma Import(C,QByteArray_constEnd, "QByteArray_constEnd");
 
----------------------------------------------------------------------
function QByteArray_create(p1: zstring) return  QByteArrayH; 
function QByteArray_create(p1: zstring; size: Integer) return  QByteArrayH;
function QByteArray_create(size: Integer; c: char) return  QByteArrayH; 
function QByteArray_create(p1: QByteArrayH) return  QByteArrayH; 
function QByteArray_indexOf(handle: not null  QByteArrayH; c: zstring; from: Integer := 0) return Integer;
function QByteArray_indexOf(handle: not null  QByteArrayH; a: QByteArrayH; from: Integer := 0) return Integer; 
function QByteArray_lastIndexOf(handle: not null  QByteArrayH; c: zstring; from: Integer := -1) return Integer;
function QByteArray_lastIndexOf(handle: not null  QByteArrayH; a: QByteArrayH; from: Integer := -1) return Integer; 
function QByteArray_contains(handle: not null  QByteArrayH; a: zstring) return  boolean;
function QByteArray_contains(handle: not null  QByteArrayH; a: QByteArrayH) return  boolean; 
function QByteArray_count(handle: not null  QByteArrayH; a: zstring) return  Integer;
function QByteArray_count(handle: not null  QByteArrayH; a: QByteArrayH) return  Integer; 
function QByteArray_startsWith(handle: not null  QByteArrayH; c: char) return  Boolean; 
function QByteArray_startsWith(handle: not null  QByteArrayH; c: zstring) return  Boolean;
function QByteArray_endsWith(handle: not null  QByteArrayH; c: char) return  Boolean; 
function QByteArray_endsWith(handle: not null  QByteArrayH; c: zstring) return  Boolean;
function QByteArray_prepend(handle: not null  QByteArrayH; s: zstring) return  QByteArrayH; 
function QByteArray_prepend(handle: not null  QByteArrayH; a: QByteArrayH) return  QByteArrayH; 
function QByteArray_append(handle: not null  QByteArrayH; s: zstring) return  QByteArrayH; 
function QByteArray_append(handle: not null  QByteArrayH; a: QByteArrayH) return  QByteArrayH; 
function QByteArray_insert(handle: not null  QByteArrayH; i: Integer; s: zstring) return  QByteArrayH; 
function QByteArray_insert(handle: not null  QByteArrayH; i: Integer; a: QByteArrayH) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; index: Integer; len: Integer; s: QByteArrayH) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: char; after: zstring) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: char; after: QByteArrayH) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: zstring; after: zstring) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: QByteArrayH; after: QByteArrayH) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: QByteArrayH; after: zstring) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: zstring; after: QByteArrayH) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: char; after: char) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: QStringH; after: zstring) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; c: char; after: QStringH) return  QByteArrayH; 
function QByteArray_replace(handle: not null  QByteArrayH; before: QStringH; after: QByteArrayH) return  QByteArrayH; 
function QByteArray_append(handle: not null  QByteArrayH; s: QStringH) return  QByteArrayH; 
function QByteArray_insert(handle: not null  QByteArrayH; i: Integer; s: QStringH) return  QByteArrayH; 
function QByteArray_indexOf(handle: not null  QByteArrayH; s: QStringH; from: Integer := 0) return Integer; 
function QByteArray_lastIndexOf(handle: not null  QByteArrayH; s: QStringH; from: Integer := -1) return Integer; 
function QByteArray_setNum(handle: not null  QByteArrayH; p1: Word; base: Integer := 10) return QByteArrayH; 
function QByteArray_setNum(handle: not null  QByteArrayH; p1: Integer; base: Integer := 10) return QByteArrayH; 
function QByteArray_setNum(handle: not null  QByteArrayH; p1: LongWord; base: Integer := 10) return QByteArrayH; 
function QByteArray_setNum(handle: not null  QByteArrayH; p1: int64; base: Integer := 10) return QByteArrayH; 
function QByteArray_setNum(handle: not null  QByteArrayH; p1: Single; f: char; prec: Integer := 6) return QByteArrayH; 
function QByteArray_setNum(handle: not null  QByteArrayH; p1: Double; f: char; prec: Integer := 6) return QByteArrayH; 
function  QByteArray_number(p1: LongWord; base: Integer := 10) return QByteArrayH;
function  QByteArray_number(p1: int64; base: Integer := 10) return QByteArrayH;
function  QByteArray_number(p1: Double; f: char; prec: Integer := 6) return QByteArrayH;
procedure QByteArray_push_back(handle: not null  QByteArrayH; c: zstring); 
procedure QByteArray_push_back(handle: not null  QByteArrayH; a: QByteArrayH); 
procedure QByteArray_push_front(handle: not null  QByteArrayH; c: zstring); 
procedure QByteArray_push_front(handle: not null  QByteArrayH; a: QByteArrayH); 
function QByteArray_count(handle: not null  QByteArrayH) return  Integer; 

end Qt.QByteArray;
