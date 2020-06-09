--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman                                    บ
-- บ Copyright (C) 2012,2016,2017,2019                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin;
package Qt.QString is

type QLatin1CharH is new QObjectH;
type Wide_ZString is new Wide_String;

-----    Constant part  -------------------------
LF       : aliased constant character := ASCII.LF;
BLANK    : aliased constant character := ' ';
DOT      : aliased constant character := '.';
QUOT     : aliased constant character := '"';
UNDL     : aliased constant character := '_';
BS       : aliased constant character := '\';
SL       : aliased constant character := '/';
APST     : aliased constant character := character'val(39);
Null_Char: aliased constant character := character'val(0);
Null_Wide_Char: aliased constant wide_character := wide_character'val(0);
LFLF     : aliased constant string(1..2) := (others => LF);

 STRING_SectionDefault              : constant := 16#00#;
 STRING_SectionSkipEmpty            : constant := 16#01#;
 STRING_SectionIncludeLeadingSep    : constant := 16#02#;
 STRING_SectionIncludeTrailingSep   : constant := 16#04#;
 STRING_SectionCaseInsensitiveSeps  : constant := 16#08#;

 CaseInsensitive                    : constant := 0;
 CaseSensitive                      : constant := 1;

 KeepEmptyParts                     : constant := 0; 
 SkipEmptyParts                     : constant := 1; 

 NormalizationForm_D                : constant := 0; 
 NormalizationForm_C                : constant := 1; 
 NormalizationForm_KD               : constant := 2; 
 NormalizationForm_KC               : constant := 3; 

function ws2wzs(s: Wide_String) return Wide_ZString;
function wzs2zs(s: Wide_ZString) return Wide_String;

function QString_create return QStringH;
pragma Import(C,QString_create, "QString_create");

function QString_create1(arg1:QCharH) return QStringH;
pragma Import(C,QString_create1, "QString_create1");

function QString_create2(arg1:QStringH) return QStringH;
pragma Import(C,QString_create2, "QString_create2");

function QString_create3(arg1:QByteArrayH) return QStringH;
pragma Import(C,QString_create3, "QString_create3");

function QString_create4(unicode:QCharH;len: unsigned_long) return QStringH;
pragma Import(C,QString_create4, "QString_create4");

function QString_create5(str:builtin.zstring) return QStringH;
pragma Import(C,QString_create5, "QString_create5");

function QString_create6(str:Wide_ZString) return QStringH;
pragma Import(C,QString_create6, "QString_create6");

function QString_create7(str:QLatin1StringH) return QStringH;
pragma Import(C,QString_create7, "QString_create7");

function QString_create8(char:character) return QStringH;
pragma Import(C,QString_create8, "QString_create8");

function QString_create9(char:wide_character) return QStringH;
pragma Import(C,QString_create9, "QString_create9");

procedure QString_destroy(p: QStringH);
pragma Import(C,QString_destroy, "QString_destroy");

procedure QString_clear(p: QStringH);
pragma Import(C,QString_clear, "QString_clear");

procedure QString_chop(handle: not null  QStringH; n: integer);
pragma Import(C,QString_chop, "QString_chop");

function QString_isNull(str:QStringH) return boolean;
pragma Import(C,QString_isNull, "QString_isNull");

function QString_isEmpty(str:QStringH) return boolean;
pragma Import(C,QString_isEmpty, "QString_isEmpty");

function QString_length(str:QStringH) return quint;
pragma Import(C,QString_length, "QString_length");

procedure QString_truncate(str:QStringH;pos:quint);
pragma Import(C,QString_truncate, "QString_truncate");

function QString_fill(str:QStringH;c:QCharH;len: integer) return QStringH;
pragma Import(C,QString_fill, "QString_fill");

function QString_arg(str:QStringH;a:long_integer; fieldwidth,base :integer) return QStringH;
pragma Import(C,QString_arg, "QString_arg");

function QString_arg1(str:QStringH;a:unsigned_long;fieldwidth,base:integer) return QStringH;
pragma Import(C,QString_arg1, "QString_arg1");

function QString_arg2(str:QStringH;a,fieldwidth,base:integer) return QStringH;
pragma Import(C,QString_arg2, "QString_arg2");

function QString_arg3(str:QStringH;a:quint;fieldwidth,base:integer) return QStringH;
pragma Import(C,QString_arg3, "QString_arg3");

function QString_arg4(str:QStringH;a:short_integer;fieldwidth,base:integer) return QStringH;
pragma Import(C,QString_arg4, "QString_arg4");

function QString_arg5(str:QStringH;a:unsigned_short;fieldwidth,base:integer) return QStringH;
pragma Import(C,QString_arg5, "QString_arg5");

function QString_arg6(str:QStringH;a:character;fieldwidth:integer) return QStringH;
pragma Import(C,QString_arg6, "QString_arg6");

function QString_arg7(str:QStringH;a:QCharH;fieldwidth:integer) return QStringH;
pragma Import(C,QString_arg7, "QString_arg7");

function QString_arg8(str:QStringH;a:QStringH;fieldwidth:integer) return QStringH;
pragma Import(C,QString_arg8, "QString_arg8");

function QString_arg9(str:QStringH;a: long_float;fieldwidth:integer;fmt:character;prec:integer) return QStringH;
pragma Import(C,QString_arg9, "QString_arg9");


function QString_contains(str:QStringH;c:QCharH; cs:integer := CaseSensitive) return boolean;
pragma Import(C,QString_contains, "QString_contains");

function QString_contains1(str:QStringH;c:character; cs:integer:= CaseSensitive) return boolean;
pragma Import(C,QString_contains1, "QString_contains1");

function QString_contains2(str:QStringH;str1:builtin.zstring; cs:integer:= CaseSensitive) return boolean;
pragma Import(C,QString_contains2, "QString_contains2");

function QString_contains3(str:QStringH;str1:QStringH; cs:integer:= CaseSensitive) return boolean;
pragma Import(C,QString_contains3, "QString_contains3");

function QString_contains4(str:QStringH;arg1:QRegExpH) return boolean;
pragma Import(C,QString_contains4, "QString_contains4");

function QString_section(str:QStringH;separator:QCharH; starts,ends,flags:integer) return QStringH;
pragma Import(C,QString_section, "QString_section");

function QString_section1(str:QStringH;sep:character; starts,ends,flags:integer) return QStringH;
pragma Import(C,QString_section1, "QString_section1");

function QString_section2(str:QStringH;in_sep:builtin.zstring; starts,ends,flags:integer) return QStringH;
pragma Import(C,QString_section2, "QString_section2");

function QString_section3(str:QStringH;in_sep:QStringH; starts,ends,flags:integer) return QStringH;
pragma Import(C,QString_section3, "QString_section3");

function QString_section4(str:QStringH;reg:QRegExpH; starts,ends,flags:integer) return QStringH;
pragma Import(C,QString_section4, "QString_section4");

function QString_left(str:QStringH;len:quint) return QStringH;
pragma Import(C,QString_left, "QString_left");

function QString_right(str:QStringH;len:quint) return QStringH;
pragma Import(C,QString_right, "QString_right");

function QString_mid(str:QStringH;indx:quint; len:quint) return QStringH;
pragma Import(C,QString_mid, "QString_mid");


function QString_toLower(str:QStringH) return QStringH;
pragma Import(C,QString_toLower, "QString_toLower");

function QString_toUpper(str:QStringH) return QStringH;
pragma Import(C,QString_toUpper, "QString_toUpper");

function QString_toCaseFolded(str:QStringH) return QStringH;
pragma Import(C,QString_toCaseFolded, "QString_toCaseFolded");

function QString_trimmed(str:QStringH) return QStringH;
pragma Import(C,QString_trimmed, "QString_trimmed");

function QString_simplified(str:QStringH) return QStringH;
pragma Import(C,QString_simplified, "QString_simplified");

function QString_insert(str:QStringH;indx:quint; arg1:QStringH) return QStringH;
pragma Import(C,QString_insert, "QString_insert");

function QString_insert1(str:QStringH;indx:quint; arg1:QCharH; len:quint) return QStringH;
pragma Import(C,QString_insert1, "QString_insert1");

function QString_insert2(str:QStringH;indx:quint; arg1:QCharH) return QStringH;
pragma Import(C,QString_insert2, "QString_insert2");

function QString_insert3(str:QStringH;indx:quint; c:character) return QStringH;
pragma Import(C,QString_insert3, "QString_insert3");

function QString_append(str:QStringH;arg1:character) return QStringH;
pragma Import(C,QString_append, "QString_append");

function QString_append1(str:QStringH;arg1:QCharH) return QStringH;
pragma Import(C,QString_append1, "QString_append1");

function QString_append2(str:QStringH;arg1:QStringH) return QStringH;
pragma Import(C,QString_append2, "QString_append2");

function QString_prepend(str:QStringH;arg1:character) return QStringH;
pragma Import(C,QString_prepend, "QString_prepend");

function QString_prepend1(str:QStringH;arg1:QCharH) return QStringH;
pragma Import(C,QString_prepend1, "QString_prepend1");

function QString_prepend2(str:QStringH;arg1:QStringH) return QStringH;
pragma Import(C,QString_prepend2, "QString_prepend2");

function QString_remove(str:QStringH;indx:quint; len:quint) return QStringH;
pragma Import(C,QString_remove, "QString_remove");

function QString_replace(str:QStringH;indx:quint; len:quint; arg1:QStringH) return QStringH;
pragma Import(C,QString_replace, "QString_replace");

function QString_replace1(str:QStringH;indx:quint; len:quint; arg1:QCharH;clen: quint) return QStringH;
pragma Import(C,QString_replace1, "QString_replace1");

function QString_replace2(str:QStringH;arg1:QRegExpH;arg2: QStringH) return QStringH;
pragma Import(C,QString_replace2, "QString_replace2");

function QString_toShort(str:QStringH;ok:in out boolean; base:integer) return short_integer;
pragma Import(C,QString_toShort, "QString_toShort");

function QString_toUShort(str:QStringH;ok:in out boolean;base: integer) return unsigned_short;
pragma Import(C,QString_toUShort, "QString_toUShort");

function QString_toInt(str:QStringH;ok:in out boolean; base:integer) return integer;
pragma Import(C,QString_toInt, "QString_toInt");

function QString_toUInt(str:QStringH;ok:in out boolean; base:integer) return quint;
pragma Import(C,QString_toUInt, "QString_toUInt");

function QString_toLong(str:QStringH;ok:in out boolean; base:integer) return long_integer;
pragma Import(C,QString_toLong, "QString_toLong");

function QString_toULong(str:QStringH;ok:in out boolean; base:integer) return unsigned_long;
pragma Import(C,QString_toULong, "QString_toULong");

function QString_toFloat(str:QStringH;ok:in out boolean) return float;
pragma Import(C,QString_toFloat, "QString_toFloat");

function QString_toDouble(str:QStringH;ok:in out boolean) return long_float;
pragma Import(C,QString_toDouble, "QString_toDouble");

function QString_setNum(str:QStringH;arg1:short_integer; base:integer) return QStringH;
pragma Import(C,QString_setNum, "QString_setNum");

function QString_setNum1(str:QStringH;arg1:unsigned_short; base:integer) return QStringH;
pragma Import(C,QString_setNum1, "QString_setNum1");

function QString_setNum2(str:QStringH;arg1:integer; base:integer) return QStringH;
pragma Import(C,QString_setNum2, "QString_setNum2");

function QString_setNum3(str:QStringH;arg1:quint; base:integer) return QStringH;
pragma Import(C,QString_setNum3, "QString_setNum3");

function QString_setNum4(str:QStringH;arg1:long_integer; base:integer) return QStringH;
pragma Import(C,QString_setNum4, "QString_setNum4");

function QString_setNum5(str:QStringH;arg1:unsigned_long; base:integer) return QStringH;
pragma Import(C,QString_setNum5, "QString_setNum5");

function QString_setNum6(str:QStringH;arg1:float;f: character;prec:integer) return QStringH;
pragma Import(C,QString_setNum6, "QString_setNum6");

function QString_setNum7(str:QStringH;arg1:long_float;f:character;prec:integer) return QStringH;
pragma Import(C,QString_setNum7, "QString_setNum7");

function QString_setNum8(str:QStringH;arg1:double) return QStringH;
pragma Import(C,QString_setNum8, "QString_setNum8");

function QString_setNum9(str:QStringH;arg1:float) return QStringH;
pragma Import(C,QString_setNum9, "QString_setNum9");

procedure QString_setExpand(str:QStringH;indx:quint;c: QCharH);
pragma Import(C,QString_setExpand, "QString_setExpand");

function QString_at(str:QStringH;i:quint) return QCharH;
pragma Import(C,QString_at, "QString_at");

function QString_at1(str:QStringH;i:quint) return QCharRefH;
pragma Import(C,QString_at1, "QString_at1");

function QString_unicode(str:QStringH) return QCharH;
pragma Import(C,QString_unicode, "QString_unicode");

function QString_toAscii(str:QStringH) return QByteArrayH;
pragma Import(C,QString_toAscii, "QString_toLatin1");

function QString_toLatin1(str:QStringH) return QByteArrayH;
pragma Import(C,QString_toLatin1, "QString_toLatin1");

function QString_toUtf8(str:QStringH) return QByteArrayH;
pragma Import(C,QString_toUtf8, "QString_toUtf8");

function QString_toLocal8Bit(str:QStringH) return QByteArrayH;
pragma Import(C,QString_toLocal8Bit, "QString_toLocal8Bit");

function QString_setUnicode(str:QStringH;unicode: QCharH; len:quint) return QStringH;
pragma Import(C,QString_setUnicode, "QString_setUnicode");


function QString_compare1(str:QStringH;s:QStringH) return integer;
pragma Import(C,QString_compare1, "QString_compare1");

function QString_localeAwareCompare(str:QStringH;s:QStringH) return integer;
pragma Import(C,QString_localeAwareCompare, "QString_localeAwareCompare");

procedure QString_compose(str:QStringH);
pragma Import(C,QString_compose, "QString_compose");

function QString_data(str:QStringH) return wcharp;
pragma Import(C,QString_data, "QString_data");

function QString_simpleText(str:QStringH) return integer;
pragma Import(C,QString_simpleText, "QString_simpleText");

function QString_isRightToLeft(str:QStringH) return boolean;
pragma Import(C,QString_isRightToLeft, "QString_isRightToLeft");

function QString_number(arg1: long_integer; base:integer := 10) return QStringH;
pragma Import(C,QString_number, "QString_number");

function QString_number1(arg1: unsigned_long; base:integer := 10) return QStringH;
pragma Import(C,QString_number1, "QString_number1");

function QString_number2(arg1: integer; base:integer := 10) return QStringH;
pragma Import(C,QString_number2, "QString_number2");

function QString_number3(arg1: quint; base:integer := 10) return QStringH;
pragma Import(C,QString_number3, "QString_number3");

function QString_number4(arg1:long_float;f:character;prec:integer) return QStringH;
pragma Import(C,QString_number4, "QString_number4");

function QString_fromLatin1(arg1: charp;len: integer) return QStringH;
pragma Import(C,QString_fromLatin1, "QString_fromLatin1");

function QString_fromUtf8(arg1:builtin.zstring;len:integer) return QStringH;
pragma Import(C,QString_fromUtf8, "QString_fromUtf8");

function QString_fromLocal8Bit(arg1:builtin.zstring;len:integer) return QStringH;
pragma Import(C,QString_fromLocal8Bit, "QString_fromLocal8Bit");

function QString_fromLocal8Bit2(arg :QByteArrayH) return QStringH;
pragma Import(C,QString_fromLocal8Bit2, "QString_fromLocal8Bit2");

function  QString_indexOf(str: QStringH; c :QCharH; from : integer := 0;            cs : QtCaseSensitivity := QtCaseSensitive) return integer;
pragma Import(C,QString_indexOf , "QString_indexOf");

function  QString_indexOf1(str: QStringH; s: QStringH; from : integer := 0;         cs : QtCaseSensitivity := QtCaseSensitive) return integer;
pragma Import(C,QString_indexOf1 , "QString_indexOf1");

function  QString_indexOf2(str: QStringH; s: QByteArrayH; from : integer := 0;      cs : QtCaseSensitivity := QtCaseSensitive) return integer;
pragma Import(C,QString_indexOf2 , "QString_indexOf2");

function  QString_lastIndexOf(str: QStringH; c: QCharH; from : integer := -1;       cs : QtCaseSensitivity := QtCaseSensitive) return integer;
pragma Import(C,QString_lastIndexOf , "QString_lastIndexOf");

function  QString_lastIndexOf1(str: QStringH; s: QStringH; from : integer := -1;    cs : QtCaseSensitivity := QtCaseSensitive) return integer;
pragma Import(C,QString_lastIndexOf1 , "QString_lastIndexOf1");

function  QString_lastIndexOf2(str: QStringH; s : QByteArrayH; from : integer := -1;cs : QtCaseSensitivity := QtCaseSensitive) return integer;
pragma Import(C,QString_lastIndexOf2 , "QString_lastIndexOf2");

function QString_localeAwareCompare1(s1,s2: QStringH) return integer;
pragma Import(C,QString_localeAwareCompare1, "QString_localeAwareCompare1");

function QString_null return QStringH;
pragma Import(C,QString_null, "QString_null");

function  QString_toInt2(str:QStringH) return  integer;
pragma Import(C,QString_toInt2, "QString_toInt2");

function  QString_toUInt2(str:QStringH) return  quint;
pragma Import(C,QString_toUInt2, "QString_toUInt2");

function  QString_toFloat2(str:QStringH) return  float;
pragma Import(C,QString_toFloat2, "QString_toFloat2");

function  QString_toDouble2(str:QStringH) return  double;
pragma Import(C,QString_toDouble2, "QString_toDouble2");
 
function  QString_toShort2(str: QStringH) return  short_integer;
pragma Import(C,QString_toShort2, "QString_toShort2");
 
function  QString_toUShort2(str:QStringH) return  quint16;
pragma Import(C,QString_toUShort2, "QString_toUShort2");

function QString_split(str: QStringH; arg: character) return QStringListH;
pragma Import(C,QString_split, "QString_split");

function QString_split2(str: QStringH; arg: QStringH) return QStringListH;
pragma Import(C,QString_split2, "QString_split2");

------------------------------------------------------------------------------------------------------

function s2qs(s: string;codec:QTextCodecH := appCodec) return QStringH;
function qs2s(s: QStringH) return string;
function qs2zs(s: QStringH) return builtin.zstring;

function qs2ws(s: QStringH) return wide_string;
pragma Import(C,qs2ws, "qs2ws");

function "+"(str,add : QStringH) return QStringH;
function "="(s1,s2 : QStringH) return boolean;

---------------------------------------------
 function  QString_equal(str1,str2: QStringH) return boolean;
 pragma Import(C,QString_equal, "QString_equal");
 
 function  QString_append3(handle: not null  QStringH; stringRef:QStringRefH) return QStringH;
 pragma Import(C,QString_append3, "QString_append3");
 
 function  QString_append4(handle: not null  QStringH; str:QLatin1StringH) return QStringH;
 pragma Import(C,QString_append4, "QString_append4");
 
 function  QString_prepend3(handle: not null  QStringH; str:QLatin1StringH) return QStringH;
 pragma Import(C,QString_prepend3, "QString_prepend3");
 
 function  QString_compare(str1,str2 : QStringH; cs: QtCaseSensitivity := QtCaseSensitive) return integer;
 pragma Import(C,QString_compare, "QString_compare");
 
 function  QString_compare2(str :QStringH;stringRef: QStringRefH; cs: QtCaseSensitivity := QtCaseSensitive) return integer;
 pragma Import(C,QString_compare2, "QString_compare2");
 
--
 function  QString_startsWith(handle: not null QStringH;str:QStringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 pragma Import(C,QString_startsWith, "QString_startsWith");
 
 function  QString_startsWith2(handle: not null QStringH;str:QLatin1StringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 pragma Import(C,QString_startsWith2, "QString_startsWith2");
 
 function  QString_startsWith3(handle: not null QStringH;char:QCharH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 pragma Import(C,QString_startsWith3, "QString_startsWith3");
 
 function  QString_endsWith(handle: not null QStringH;str:QStringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 pragma Import(C,QString_endsWith, "QString_endsWith");
 
 function  QString_endsWith2(handle: not null QStringH;str:QLatin1StringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 pragma Import(C,QString_endsWith2, "QString_endsWith2");
 
 function  QString_endsWith3(handle: not null QStringH;char:QCharH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 pragma Import(C,QString_endsWith3, "QString_endsWith3");

 function  s2qs2(str:string;length:integer) return QStringH;     
 pragma Import(C,s2qs2, "s2qs2");
 
 function  QString_FromUnicode(unicode:QCharH)return QStringH;
 pragma Import(C,QString_FromUnicode, "QString_FromUnicode");
 
 procedure QString_swap(handle: not null QStringH;otherString:QStringH);
 pragma Import(C,QString_swap, "QString_swap");
 
 function  QString_size(handle: not null QStringH) return integer;
 pragma Import(C,QString_size, "QString_size");
 
 function  QString_count(handle: not null QStringH) return integer;
 pragma Import(C,QString_count, "QString_count");
 
 procedure QString_resize(handle: not null QStringH; size: integer);
 pragma Import(C,QString_resize, "QString_resize");
 
 function  QString_capacity(handle: not null QStringH) return integer;
 pragma Import(C,QString_capacity, "QString_capacity");
 
 procedure QString_reserve(handle: not null QStringH;size:integer);
 pragma Import(C,QString_reserve, "QString_reserv");
 
 procedure QString_squeeze(handle: not null QStringH);
 pragma Import(C,QString_squeeze, "QString_squeeze");
 
 function  QString_constData(handle: not null QStringH) return QCharH;
 pragma Import(C,QString_constData, "QString_constData");
 
 procedure QString_detach(handle: not null QStringH);
 pragma Import(C,QString_detach, "QString_detach");
 
 function  QString_isDetached(handle: not null QStringH) return boolean;
 pragma Import(C,QString_isDetached, "QString_isDetached");
 
 function  QString_isSharedWith(handle: not null QStringH; otherString: QStringH) return boolean;
 pragma Import(C,QString_isSharedWith, "QString_isSharedWith");
 
function  QString_fromAscii(str:builtin.zstring; size: integer := -1) return  QStringH;
pragma Import(C,QString_fromAscii, "QString_fromLatin1");
 
 function  QString_fromUtf16(utf16: wide_string; size: integer := -1) return  QStringH;
 pragma Import(C,QString_fromUtf16, "QString_fromUtf16");
 
 function  QString_fromUcs4(ucs4: access quint; size: integer := -1) return  QStringH;
 pragma Import(C,QString_fromUcs4, "QString_fromUcs4");
 
 function  QString_fromRawData(rawData: QCharH;size : integer) return  QStringH;
 pragma Import(C,QString_fromRawData, "QString_fromRawData");
 
--
 function  QLatin1String_create(str:string)return QLatin1StringH;
 pragma Import(C,QLatin1String_create, "QLatin1String_create");
 
 function  QLatin1String_create2(str:string;size:integer)return QLatin1StringH;
 pragma Import(C,QLatin1String_create2, "QLatin1String_create2");
 
 function  QLatin1String_create3(str:QByteArrayH)return QLatin1StringH;
 pragma Import(C,QLatin1String_create3, "QLatin1String_create3");
 
 function  QLatin1String_latin1(handle: not null QLatin1StringH)return string;
 pragma Import(C,QLatin1String_latin1, "QLatin1String_latin1");
 
 function  QLatin1String_data(handle: not null QLatin1StringH)return string;
 pragma Import(C,QLatin1String_data, "QLatin1String_data");
 
 function  QLatin1String_size(handle: not null QLatin1StringH)return integer;
 pragma Import(C,QLatin1String_size, "QLatin1String_size");
 
 function  QLatin1String_at(handle:not null QLatin1StringH;i:integer) return QLatin1CharH;
 pragma Import(C,QLatin1String_at, "QLatin1String_at");
 
 function  QLatin1String_mid(handle:not null QLatin1StringH;pos:integer) return QLatin1StringH;
 pragma Import(C,QLatin1String_mid, "QLatin1String_mid");
 
 function  QLatin1String_mid2(handle:not null QLatin1StringH;pos,i:integer) return QLatin1StringH;
 pragma Import(C,QLatin1String_mid2, "QLatin1String_mid2");
 
 function  QLatin1String_left(handle:not null QLatin1StringH;n:integer) return QLatin1StringH;
 pragma Import(C,QLatin1String_left, "QLatin1String_left");
 
 function  QLatin1String_right(handle:not null QLatin1StringH;n:integer) return QLatin1StringH;
 pragma Import(C,QLatin1String_right, "QLatin1String_right");

 function  QString_data2(handle: not null QStringH) return QCharH;
 pragma Import(C,QString_data2, "QString_data2");
 
 function  QString_leftRef( handle: not null QStringH;length:quint)return QStringRefH;
 pragma Import(C,QString_leftRef, "QString_leftRef");
 
 function  QString_rightRef( handle: not null QStringH;length:quint)return QStringRefH;
 pragma Import(C,QString_rightRef, "QString_rightRef");
 
 function  QString_midRef( handle: not null QStringH;index,length:quint)return QStringRefH;
 pragma Import(C,QString_midRef, "QString_midRef");
 
 function  QString_toHtmlEscaped( handle: not null QStringH)return QStringH;
 pragma Import(C,QString_toHtmlEscaped, "QString_toHtmlEscaped");
 
 function  QString_replace3( handle: not null QStringH;index,length:integer;after: QCharH)return QStringH;
 pragma Import(C,QString_replace3, "QString_replace3");
 
 function  QString_replace4( handle: not null QStringH;before:QCharH;length:integer;after: QCharH;alen,cs: integer)return QStringH;
 pragma Import(C,QString_replace4, "QString_replace4");
 
 function  QString_replace5( handle: not null QStringH;before,after:QLatin1StringH;cs: integer)return QStringH;
 pragma Import(C,QString_replace5, "QString_replace5");
 
 function  QString_replace6( handle: not null QStringH;before:QLatin1StringH;after: QStringH;cs:integer )return QStringH;
 pragma Import(C,QString_replace6, "QString_replace6");
 
 function  QString_replace7( handle: not null QStringH;char:QCharH;after: QStringH;cs: integer)return QStringH;
 pragma Import(C,QString_replace7, "QString_replace7");
 
 function  QString_replace8( handle: not null QStringH;char:QCharH;after: QLatin1StringH; cs: integer )return QStringH;
 pragma Import(C,QString_replace8, "QString_replace8");
 
 function  QString_replace9( handle: not null QStringH;before,after:QStringH) return QStringH;
 pragma Import(C,QString_replace9, "QString_replace9");
 
 function  QString_split3(handle: not null QStringH;separator:QStringH;behavior : integer := KeepEmptyParts; cs: integer := CaseSensitive) return QStringListH;
 pragma Import(C,QString_split3, "QString_split3");
 
 function  QString_split4(handle: not null QStringH;separator:QCharH; behavior : integer := KeepEmptyParts; cs: integer := CaseSensitive ) return QStringListH;
 pragma Import(C,QString_split4, "QString_split4");
 
 function  QString_normalized(handle: not null QStringH; mode: integer := NormalizationForm_D; version: integer := 0) return QStringH;
 pragma Import(C,QString_normalized, "QString_normalized");
 
 function  QString_repeated(handle: not null QStringH;times:integer) return QStringH;
 pragma Import(C,QString_repeated, "QString_repeated");
 
 function  QString_utf16(handle: not null QStringH) return short_integer_ptr;
 pragma Import(C,QString_utf16, "QString_utf16");
 
 function  QString_fromLatin12(arr:QByteArrayH) return QStringH;
 pragma Import(C,QString_fromLatin12, "QString_fromLatin12");
 
 function  QString_fromUtf82(arr:QByteArrayH) return QStringH;
 pragma Import(C,QString_fromUtf82, "QString_fromUtf82");
 
 function  QString_fromWCharArray(str: wide_string; size: integer := -1) return QStringH;
 pragma Import(C,QString_fromWCharArray, "QString_fromWCharArray");
 
 function  QString_toWCharArray(handle: not null QStringH; str: wide_string) return integer;
 pragma Import(C,QString_toWCharArray, "QString_toWCharArray");
 
 function  QString_compare3(handle: not null QStringH;str:QLatin1StringH; cs: integer := CaseSensitive)return integer;
 pragma Import(C,QString_compare3, "QString_compare3");
 
 function  QString_toLongLong( handle: not null QStringH; ok:in out boolean;base: integer := 10)return long_long_integer;
 pragma Import(C,QString_toLongLong, "QString_toLongLong");
 
 
 function  QString_setNum10( handle: not null QStringH; arg: long_long_integer; base: integer := 10)return QStringH;
 pragma Import(C,QString_setNum10, "QString_setNum10");
 
 function  QString_number5(arg: long_long_integer; base: integer := 10)return QStringH;
 pragma Import(C,QString_number5, "QString_number5");
 
 procedure QString_push_back( handle: not null QStringH;char:QCharH);
 pragma Import(C,QString_push_back, "QString_push_back");
 
 procedure QString_push_back2( handle: not null QStringH;str:QStringH);
 pragma Import(C,QString_push_back2, "QString_push_back2");
 
 procedure QString_push_front( handle: not null QStringH;char:QCharH);      
 pragma Import(C,QString_push_front, "QString_push_front");
 
 procedure QString_push_front2( handle: not null QStringH;str:QStringH);
 pragma Import(C,QString_push_front2, "QString_push_front2");
 
 function  QString_isSimpleText( handle: not null QStringH)return boolean;
 pragma Import(C,QString_isSimpleText, "QString_isSimpleText");
 
 function  QString_arg10(handle: not null QStringH;arg:long_long_integer;fieldwidth : integer; base:integer := 10)return QStringH;
 pragma Import(C,QString_arg10, "QString_arg10");
 
 function  QString_QStringLiteral(str:builtin.zstring) return QStringH;
 pragma Import(C,QString_QStringLiteral, "QString_QStringLiteral");
 
-----------------------------------------------------------------------------------------------------------

function  QString_indexOf(str: QStringH; s: QStringH; from : integer := 0;         cs : QtCaseSensitivity := QtCaseSensitive) return integer;
function  QString_indexOf(str: QStringH; s: QByteArrayH; from : integer := 0;      cs : QtCaseSensitivity := QtCaseSensitive) return integer;
function  QString_lastIndexOf(str: QStringH; s: QStringH; from : integer := -1;    cs : QtCaseSensitivity := QtCaseSensitive) return integer;
function  QString_lastIndexOf(str: QStringH; s : QByteArrayH; from : integer := -1;cs : QtCaseSensitivity := QtCaseSensitive) return integer;

function METHOD(subprogram:string) return builtin.zstring;
function SLOT  (subprogram:string) return builtin.zstring;
function SIGNAL(subprogram:string) return builtin.zstring;

function QString_create(arg1:QCharH) return QStringH;
function QString_create(arg1:QByteArrayH) return QStringH;
function QString_create(unicode:QCharH;len: unsigned_long) return QStringH;
function QString_create(str:builtin.zstring) return QStringH;
function QString_create(str:wide_zstring) return QStringH;
function QString_create(str:QLatin1StringH) return QStringH;
function QString_create(char:character) return QStringH;
function QString_create(char:wide_character) return QStringH;

function QString_arg(str:QStringH;a:unsigned_long;fieldwidth,base:integer) return QStringH;
function QString_arg(str:QStringH;a,fieldwidth,base:integer) return QStringH;
function QString_arg(str:QStringH;a:short_integer;fieldwidth,base:integer) return QStringH;
function QString_arg(str:QStringH;a:unsigned_short;fieldwidth,base:integer) return QStringH;
function QString_arg(str:QStringH;a:character;fieldwidth:integer) return QStringH;

function QString_insert(str:QStringH;indx:quint; arg1:QCharH; len:quint) return QStringH;
function QString_insert(str:QStringH;indx:quint; c:character) return QStringH;

function QString_append(str:QStringH;arg1:QCharH) return QStringH;
function QString_append(str:QStringH;arg1:QStringH) return QStringH;

function QString_prepend(str:QStringH;arg1:QCharH) return QStringH;

function QString_replace(str:QStringH;indx:quint; len:quint; arg1:QCharH;clen: quint) return QStringH;
function QString_replace(str:QStringH;arg1:QRegExpH;arg2: QStringH) return QStringH;
function  QString_replace(handle: not null QStringH;before,after:QStringH) return QStringH;

function QString_setNum(str:QStringH;arg1:unsigned_short; base:integer) return QStringH;
function QString_setNum(str:QStringH;arg1:integer; base:integer) return QStringH;
function QString_setNum(str:QStringH;arg1:long_integer; base:integer) return QStringH;
function QString_setNum(str:QStringH;arg1:unsigned_long; base:integer) return QStringH;
function QString_setNum(str:QStringH;arg1:float;f: character;prec:integer) return QStringH;
function QString_setNum(str:QStringH;arg1:long_float;f:character;prec:integer) return QStringH;

function QString_setNum(str:QStringH;arg1:double) return QStringH;
function QString_setNum(str:QStringH;arg1:float) return QStringH;

function QString_number(arg1: unsigned_long; base:integer := 10) return QStringH;
function QString_number(arg1: integer; base:integer := 10) return QStringH;
function QString_number(arg1:long_float;f:character;prec:integer) return QStringH;
function QString_empty  return QStringH;

function  QString_toInt(str:QStringH) return  integer;
function  QString_toUInt(str:QStringH) return  quint;
function  QString_toFloat(str:QStringH) return  float;
function  QString_toDouble(str:QStringH) return  double;
function  QString_toShort(str: QStringH) return  short_integer;
function  QString_toUShort(str:QStringH) return  quint16;
function  QString_split(str: QStringH; arg: QStringH) return QStringListH;
function  QString_split(handle: not null QStringH;separator:QStringH;behavior : integer; cs: integer := CaseSensitive) return QStringListH;
function  QString_split(handle: not null QStringH;separator:QCharH; behavior : integer; cs: integer := CaseSensitive ) return QStringListH;
function  QString_fromLocal8Bit(arg :QByteArrayH) return QStringH;

 function  QString_append(handle: not null  QStringH; stringRef:QStringRefH) return QStringH;
 function  QString_append(handle: not null  QStringH; str:QLatin1StringH) return QStringH;
 function  QString_prepend(handle: not null  QStringH; str:QLatin1StringH) return QStringH;
 function  QString_compare(str :QStringH;stringRef: QStringRefH; cs: QtCaseSensitivity := QtCaseSensitive) return integer;

 function  QString_startsWith(handle: not null QStringH;str:QLatin1StringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 function  QString_startsWith(handle: not null QStringH;char:QCharH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 function  QString_endsWith(handle: not null QStringH;str:QLatin1StringH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 function  QString_endsWith(handle: not null QStringH;char:QCharH;cs:QtCaseSensitivity := QtCaseSensitive) return boolean;
 function  s2qs(str:string;length:integer) return QStringH;     
 function  ws2qs(s: wide_string) return QStringH;
-------------
 function  QLatin1String_create(str:string;size:integer)return QLatin1StringH;
 function  QLatin1String_create(str:QByteArrayH)return QLatin1StringH;
 function  QString_data(handle: not null QStringH) return QCharH;
 
 function  QString_replace( handle: not null QStringH;index,length:integer;after: QCharH)return QStringH;
 function  QString_replace( handle: not null QStringH;before:QCharH;length:integer;after: QCharH;alen,cs: integer)return QStringH;
 function  QString_replace( handle: not null QStringH;before,after:QLatin1StringH;cs: integer)return QStringH;
 function  QString_replace( handle: not null QStringH;before:QLatin1StringH;after: QStringH;cs:integer )return QStringH;
 function  QString_replace( handle: not null QStringH;char:QCharH;after: QStringH;cs: integer)return QStringH;
 function  QString_replace( handle: not null QStringH;char:QCharH;after: QLatin1StringH; cs: integer )return QStringH;
 
 function  QString_fromLatin1(arr:QByteArrayH) return QStringH;
 function  QString_fromUtf8(arr:QByteArrayH) return QStringH;
 
 function  QString_compare(handle: not null QStringH;str:QLatin1StringH; cs: integer := CaseSensitive)return integer;
 function  QString_setNum( handle: not null QStringH; arg: long_long_integer; base: integer := 10)return QStringH;
 function  QString_number(arg: long_long_integer; base: integer := 10)return QStringH;
 procedure QString_push_back( handle: not null QStringH;str:QStringH);
 procedure QString_push_front( handle: not null QStringH;str:QStringH);
 
 function  QString_arg(handle: not null QStringH;arg:long_long_integer;fieldwidth : integer; base:integer := 10)return QStringH;
 
 function QString_contains(str:QStringH;c:character; cs:integer:= CaseSensitive) return boolean;
 function QString_contains(str:QStringH;str1:builtin.zstring; cs:integer:= CaseSensitive) return boolean;
 function QString_contains(str:QStringH;str1:QStringH; cs:integer:= CaseSensitive) return boolean;
 function QString_contains(str:QStringH;arg1:QRegExpH) return boolean;
 function QString_isNotEmpty(str:QStringH) return boolean;

 function  QLatin1String_mid(handle:not null QLatin1StringH;pos,i:integer) return QLatin1StringH;

-- --------------------------------- 2018 -------------------------
 function  QString_remove2(handle:not null QStringH;c:QCharH;cs : integer :=  CaseSensitive) return QStringH;
 pragma Import(C,QString_remove2, "QString_remove2");
 
 function  QString_remove3(handle:not null QStringH;s:QLatin1StringH;cs : integer :=  CaseSensitive) return QStringH;
 pragma Import(C,QString_remove3, "QString_remove3");
 
 function  QString_remove4(handle:not null QStringH;s:QStringH;cs : integer :=  CaseSensitive) return QStringH;
 pragma Import(C,QString_remove4, "QString_remove4");
 
 function  QString_remove5(handle:not null QStringH;rx:QRegExpH) return QStringH;
 pragma Import(C,QString_remove5, "QString_remove5");
 
 function  QString_remove(handle:not null QStringH;c:QCharH;cs : integer :=  CaseSensitive) return QStringH;
 function  QString_remove(handle:not null QStringH;s:QLatin1StringH;cs : integer :=  CaseSensitive) return QStringH;
 function  QString_remove(handle:not null QStringH;s:QStringH;cs : integer :=  CaseSensitive) return QStringH;
 function  QString_remove(handle:not null QStringH;rx:QRegExpH) return QStringH;
 function  s2tr(str:string) return QStringH;
 function  s2tr(str:QStringH) return QStringH;

end Qt.QString;
