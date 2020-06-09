--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2020                      บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
package Qt.QVariant is

subtype   QVariantType is  cardinal;

QVariantInvalid : constant QVariantType      := 16#0#;
QVariantBool : constant QVariantType         := 16#1#;
QVariantInt : constant QVariantType          := 16#2#;
QVariantUInt : constant QVariantType         := 16#3#;
QVariantLongLong : constant QVariantType     := 16#4#;
QVariantULongLong : constant QVariantType    := 16#5#;
QVariantDouble : constant QVariantType       := 16#6#;
QVariantChar : constant QVariantType         := 16#7#;
QVariantMap : constant QVariantType          := 16#8#;
QVariantList : constant QVariantType         := 16#9#;
QVariantString : constant QVariantType       := 16#a#;
QVariantStringList : constant QVariantType   := 16#b#;
QVariantByteArray : constant QVariantType    := 16#c#;
QVariantBitArray : constant QVariantType     := 16#d#;
QVariantDate : constant QVariantType         := 16#e#;
QVariantTime : constant QVariantType         := 16#f#;
QVariantDateTime : constant QVariantType     := 16#10#;
QVariantUrl : constant QVariantType          := 16#11#;
QVariantLocale : constant QVariantType       := 16#12#;
QVariantRect : constant QVariantType         := 16#13#;
QVariantRectF : constant QVariantType        := 16#14#;
QVariantSize : constant QVariantType         := 16#15#;
QVariantSizeF : constant QVariantType        := 16#16#;
QVariantLine : constant QVariantType         := 16#17#;
QVariantLineF : constant QVariantType        := 16#18#;
QVariantPoint : constant QVariantType        := 16#19#;
QVariantPointF : constant QVariantType       := 16#1a#;
QVariantRegExp : constant QVariantType       := 16#1b#;
QVariantLastCoreType : constant QVariantType := 16#1b#;
QVariantFont : constant QVariantType         := 16#40#;
QVariantPixmap : constant QVariantType       := 16#41#;
QVariantBrush : constant QVariantType        := 16#42#;
QVariantColor : constant QVariantType        := 16#43#;
QVariantPalette : constant QVariantType      := 16#44#;
QVariantIcon : constant QVariantType         := 16#45#;
QVariantImage : constant QVariantType        := 16#46#;
QVariantPolygon : constant QVariantType      := 16#47#;
QVariantRegion : constant QVariantType       := 16#48#;
QVariantBitmap : constant QVariantType       := 16#49#;
QVariantCursor : constant QVariantType       := 16#4a#;
QVariantSizePolicy : constant QVariantType   := 16#4b#;
QVariantKeySequence : constant QVariantType  := 16#4c#;
QVariantPen : constant QVariantType          := 16#4d#;
QVariantTextLength : constant QVariantType   := 16#4e#;
QVariantTextFormat : constant QVariantType   := 16#4f#;
QVariantMatrix : constant QVariantType       := 16#50#;
QVariantTransform : constant QVariantType    := 16#51#;
QVariantLastGuiType : constant QVariantType  := 16#51#;
QVariantUserType : constant QVariantType     := 16#7f#;
QVariantLastType : constant QVariantType     := 16#ffffffff#;


function QVariant_create return  QVariantH;    
pragma Import(C,QVariant_create,"QVariant_create");

procedure QVariant_destroy(handle: not null  QVariantH);   
pragma Import(C,QVariant_destroy,"QVariant_destroy");

function QVariant_create2(qtype: QVariantType) return  QVariantH;
pragma Import(C,QVariant_create2,"QVariant_create2");

function QVariant_create3(typeOrUserType: Integer; copy: void_Star) return  QVariantH;
pragma Import(C,QVariant_create3,"QVariant_create3");

function QVariant_create4(other: QVariantH) return  QVariantH;
pragma Import(C,QVariant_create4,"QVariant_create4");

function QVariant_create5(s: QDataStreamH) return  QVariantH;
pragma Import(C,QVariant_create5,"QVariant_create5");

function QVariant_create6(i: Integer) return  QVariantH;
pragma Import(C,QVariant_create6,"QVariant_create6");

function QVariant_create8(ll: int64) return  QVariantH;
pragma Import(C,QVariant_create8,"QVariant_create8");

function QVariant_create9(ull: qword) return  QVariantH;
pragma Import(C,QVariant_create9,"QVariant_create9");

function QVariant_create10(b: Boolean) return  QVariantH;
pragma Import(C,QVariant_create10,"QVariant_create10");

function QVariant_create11(d: Double) return  QVariantH;
pragma Import(C,QVariant_create11,"QVariant_create11");

function QVariant_create12(str: zstring) return  QVariantH;
pragma Import(C,QVariant_create12,"QVariant_create12");

function QVariant_create13(bytearray: QByteArrayH) return  QVariantH;
pragma Import(C,QVariant_create13,"QVariant_create13");

function QVariant_create14(bitarray: QBitArrayH) return  QVariantH;
pragma Import(C,QVariant_create14,"QVariant_create14");

function QVariant_create15(str: QStringH) return  QVariantH;
pragma Import(C,QVariant_create15,"QVariant_create15");

function QVariant_create16(str: QLatin1StringH) return  QVariantH;
pragma Import(C,QVariant_create16,"QVariant_create16");

function QVariant_create17(stringlist: QStringListH) return  QVariantH;
pragma Import(C,QVariant_create17,"QVariant_create17");

function QVariant_create18(qchar: QCharH) return  QVariantH;
pragma Import(C,QVariant_create18,"QVariant_create18");

function QVariant_create19(date: QDateH) return  QVariantH;
pragma Import(C,QVariant_create19,"QVariant_create19");

function QVariant_create20(time: QTimeH) return  QVariantH;
pragma Import(C,QVariant_create20,"QVariant_create20");

function QVariant_create21(datetime: QDateTimeH) return  QVariantH;
pragma Import(C,QVariant_create21,"QVariant_create21");

function QVariant_create24(size: QSizeH) return  QVariantH;
pragma Import(C,QVariant_create24,"QVariant_create24");

function QVariant_create25(size: QSizeFH) return  QVariantH;
pragma Import(C,QVariant_create25,"QVariant_create25");

function QVariant_create26(pt: QPointH) return  QVariantH;
pragma Import(C,QVariant_create26,"QVariant_create26");

function QVariant_create27(pt: QPointFH) return  QVariantH;
pragma Import(C,QVariant_create27,"QVariant_create27");

function QVariant_create28(line: QLineH) return  QVariantH;
pragma Import(C,QVariant_create28,"QVariant_create28");

function QVariant_create29(line: QLineFH) return  QVariantH;
pragma Import(C,QVariant_create29,"QVariant_create29");

function QVariant_create30(rect: QRectH) return  QVariantH;
pragma Import(C,QVariant_create30,"QVariant_create30");

function QVariant_create31(rect: QRectFH) return  QVariantH;
pragma Import(C,QVariant_create31,"QVariant_create31");

function QVariant_create32(url: QUrlH) return  QVariantH;
pragma Import(C,QVariant_create32,"QVariant_create32");

function QVariant_create33(locale: QLocaleH) return  QVariantH;
pragma Import(C,QVariant_create33,"QVariant_create33");

function QVariant_create34(regExp: QRegExpH) return  QVariantH;
pragma Import(C,QVariant_create34,"QVariant_create34");

function QVariant_create35(color: QColorH) return  QVariantH;
pragma Import(C,QVariant_create35,"QVariant_create35");

function  QVariant_create36(value:float) return QVariantH;
pragma Import(C,QVariant_create36, "QVariant_create36");
 
function  QVariant_create37(value:qreal) return QVariantH;
pragma Import(C,QVariant_create37, "QVariant_create37");
 
function QVariant_type(handle: not null  QVariantH) return  QVariantType;
pragma Import(C,QVariant_type,"QVariant_type");

function QVariant_userType(handle: not null  QVariantH) return  Integer;   
pragma Import(C,QVariant_userType,"QVariant_userType");

function QVariant_typeName(handle: not null  QVariantH) return string;   
pragma Import(C,QVariant_typeName,"QVariant_typeName");

function QVariant_canConvert(handle: not null  QVariantH; t: QVariantType) return  Boolean;    
pragma Import(C,QVariant_canConvert,"QVariant_canConvert");

function QVariant_convert(handle: not null  QVariantH; t: QVariantType) return  Boolean;   
pragma Import(C,QVariant_convert,"QVariant_convert");

function QVariant_isValid(handle: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_isValid,"QVariant_isValid");

function QVariant_isNull(handle: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_isNull,"QVariant_isNull");

procedure QVariant_clear(handle: not null  QVariantH);   
pragma Import(C,QVariant_clear,"QVariant_clear");

procedure QVariant_detach(handle: not null  QVariantH);   
pragma Import(C,QVariant_detach,"QVariant_detach");

function QVariant_isDetached(handle: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_isDetached,"QVariant_isDetached");

function QVariant_toInt(handle: not null  QVariantH; ok: PBoolean := null) return Integer;
pragma Import(C,QVariant_toInt,"QVariant_toInt");

function QVariant_toUInt(handle: not null  QVariantH; ok: PBoolean := null) return LongWord;
pragma Import(C,QVariant_toUInt,"QVariant_toUInt");

function QVariant_toLongLong(handle: not null  QVariantH; ok: PBoolean := null) return int64;
pragma Import(C,QVariant_toLongLong,"QVariant_toLongLong");

function QVariant_toULongLong(handle: not null  QVariantH; ok: PBoolean := null) return qword;
pragma Import(C,QVariant_toULongLong,"QVariant_toULongLong");

function QVariant_toBool(handle: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_toBool,"QVariant_toBool");

function QVariant_toDouble(handle: not null  QVariantH; ok: PBoolean := null) return Double;
pragma Import(C,QVariant_toDouble,"QVariant_toDouble");

function  QVariant_toByteArray(handle: not null  QVariantH) return  QByteArrayH;
pragma Import(C,QVariant_toByteArray,"QVariant_toByteArray");

function  QVariant_toBitArray(handle: not null  QVariantH) return  QBitArrayH;
pragma Import(C,QVariant_toBitArray,"QVariant_toBitArray");

function  QVariant_toString(handle: not null  QVariantH) return QStringH;
pragma Import(C,QVariant_toString,"QVariant_toString");

function  QVariant_toStringList(handle: not null  QVariantH) return QStringListH;
pragma Import(C,QVariant_toStringList,"QVariant_toStringList");

function  QVariant_toChar(handle: not null  QVariantH) return QCharH;
pragma Import(C,QVariant_toChar,"QVariant_toChar");

function  QVariant_toDate(handle: not null  QVariantH) return QDateH;
pragma Import(C,QVariant_toDate,"QVariant_toDate");

function  QVariant_toTime(handle: not null  QVariantH) return QTimeH;
pragma Import(C,QVariant_toTime,"QVariant_toTime");

function  QVariant_toDateTime(handle: not null  QVariantH) return QDateTimeH;
pragma Import(C,QVariant_toDateTime,"QVariant_toDateTime");

function  QVariant_toPoint(handle: not null  QVariantH) return QPointH;
pragma Import(C,QVariant_toPoint,"QVariant_toPoint");

function  QVariant_toPointF(handle: not null  QVariantH) return QPointFH;
pragma Import(C,QVariant_toPointF,"QVariant_toPointF");

function  QVariant_toRect(handle: not null  QVariantH) return QRectH;
pragma Import(C,QVariant_toRect,"QVariant_toRect");

function  QVariant_toSize(handle: not null  QVariantH) return QSizeH;
pragma Import(C,QVariant_toSize,"QVariant_toSize");

function  QVariant_toSizeF(handle: not null  QVariantH) return QSizeFH;
pragma Import(C,QVariant_toSizeF,"QVariant_toSizeF");

function  QVariant_toLine(handle: not null  QVariantH) return QLineH;
pragma Import(C,QVariant_toLine,"QVariant_toLine");

function  QVariant_toLineF(handle: not null  QVariantH) return QLineFH;
pragma Import(C,QVariant_toLineF,"QVariant_toLineF");

function  QVariant_toRectF(handle: not null  QVariantH) return QRectFH;
pragma Import(C,QVariant_toRectF,"QVariant_toRectF");

function  QVariant_toUrl(handle: not null  QVariantH) return  QUrlH;
pragma Import(C,QVariant_toUrl,"QVariant_toUrl");

function  QVariant_toLocale(handle: not null  QVariantH) return QLocaleH;
pragma Import(C,QVariant_toLocale,"QVariant_toLocale");

function  QVariant_toRegExp(handle: not null  QVariantH) return QRegExpH;
pragma Import(C,QVariant_toRegExp,"QVariant_toRegExp");

function  QVariant_toFloat(handle:not null QVariantH) return float;
pragma Import(C,QVariant_toFloat, "QVariant_toFloat");
 
function  QVariant_toReal(handle:not null QVariantH) return qreal;
pragma Import(C,QVariant_toReal, "QVariant_toReal");
 
procedure QVariant_load(handle: not null  QVariantH; ds: QDataStreamH);   
pragma Import(C,QVariant_load,"QVariant_load");

procedure QVariant_save(handle: not null  QVariantH; ds: QDataStreamH);   
pragma Import(C,QVariant_save,"QVariant_save");

function QVariant_typeToName(qtype: QVariantType) return string;
pragma Import(C,QVariant_typeToName,"QVariant_typeToName");

function QVariant_nameToType(name: zstring) return  QVariantType;   
pragma Import(C,QVariant_nameToType,"QVariant_nameToType");

function QVariant_constData(handle: not null  QVariantH) return  void_Star;   
pragma Import(C,QVariant_constData,"QVariant_constData");

 function  QVariant_fromValue(object:QObjectH) return QVariantH;
 pragma Import(C,QVariant_fromValue, "QVariant_fromValue");

function QVariantMap_create return  QVariantMapH;    
pragma Import(C,QVariantMap_create,"QVariantMap_create");

------------------------------------------------------------------
function QVariant_create(qtype: QVariantType) return  QVariantH;
function QVariant_create(typeOrUserType: Integer; copy: void_Star) return  QVariantH;
function QVariant_create(other: QVariantH) return  QVariantH;
function QVariant_create(s: QDataStreamH) return  QVariantH;
function QVariant_create(i: Integer) return  QVariantH;

function QVariant_create(ll: int64) return  QVariantH;
function QVariant_create(b: Boolean) return  QVariantH;
function QVariant_create(str: zstring) return  QVariantH;
function QVariant_create(bytearray: QByteArrayH) return  QVariantH;
function QVariant_create(bitarray: QBitArrayH) return  QVariantH;
function QVariant_create(str: QStringH) return  QVariantH;
function QVariant_create(str: QLatin1StringH) return  QVariantH;
function QVariant_create(stringlist: QStringListH) return  QVariantH;
function QVariant_create(qchar: QCharH) return  QVariantH;
function QVariant_create(date: QDateH) return  QVariantH;
function QVariant_create(time: QTimeH) return  QVariantH;
function QVariant_create(datetime: QDateTimeH) return  QVariantH;

function QVariant_create(size: QSizeH) return  QVariantH;
function QVariant_create(size: QSizeFH) return  QVariantH;
function QVariant_create(pt: QPointH) return  QVariantH;
function QVariant_create(pt: QPointFH) return  QVariantH;
function QVariant_create(line: QLineH) return  QVariantH;
function QVariant_create(line: QLineFH) return  QVariantH;
function QVariant_create(rect: QRectH) return  QVariantH;
function QVariant_create(rect: QRectFH) return  QVariantH;
function QVariant_create(url: QUrlH) return  QVariantH;
function QVariant_create(locale: QLocaleH) return  QVariantH;
function QVariant_create(regExp: QRegExpH) return  QVariantH;
function QVariant_create(color: QColorH) return  QVariantH;
function  QVariant_create(value:float) return QVariantH;
function  QVariant_create(value:qreal) return QVariantH;
--------------------------------------------------------------------------

function QVariant_fromStream(s: QDataStreamH) return  QVariantH;
function QVariant_fromInt(i: Integer) return  QVariantH;
function QVariant_fromInt64(ll: int64) return  QVariantH;
function QVariant_fromQWord(ull: qword) return  QVariantH;
function QVariant_fromBool(b: Boolean) return  QVariantH;
function QVariant_fromDouble(d: Double) return  QVariantH;
function QVariant_fromZString(str: zstring) return  QVariantH;
function QVariant_fromByteArray(bytearray: QByteArrayH) return  QVariantH;
function QVariant_fromBitArray(bitarray: QBitArrayH) return  QVariantH;
function QVariant_fromQString(str: QStringH) return  QVariantH;
function QVariant_fromQLatin1String(str: QLatin1StringH) return  QVariantH;
function QVariant_fromQStringList(stringlist: QStringListH) return  QVariantH;
function QVariant_fromQChar(qchar: QCharH) return  QVariantH;
function QVariant_fromQDate(date: QDateH) return  QVariantH;
function QVariant_fromQTime(time: QTimeH) return  QVariantH;
function QVariant_fromDateTime(datetime: QDateTimeH) return  QVariantH;
function QVariant_fromQSize(size: QSizeH) return  QVariantH;
function QVariant_fromQSizeF(size: QSizeFH) return  QVariantH;
function QVariant_fromQPoint(pt: QPointH) return  QVariantH;
function QVariant_fromQPointF(pt: QPointFH) return  QVariantH;
function QVariant_fromQLine(line: QLineH) return  QVariantH;
function QVariant_fromQLineF(line: QLineFH) return  QVariantH;
function QVariant_fromQRect(rect: QRectH) return  QVariantH;
function QVariant_fromQRectF(rect: QRectFH) return  QVariantH;
function QVariant_fromQUrl(url: QUrlH) return  QVariantH;
function QVariant_fromQLocale(locale: QLocaleH) return  QVariantH;
function QVariant_fromQRegExp(regExp: QRegExpH) return  QVariantH;
function QVariant_fromFloat(f: float) return  QVariantH;
function QVariant_fromReal (f:qreal) return  QVariantH;
-------------------------------------------------------------------------
function QVariant_eq(v1,v2: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_eq,"QVariant_eq");

function QVariant_ne(v1,v2: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_ne,"QVariant_ne");

function QVariant_gt(v1,v2: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_gt,"QVariant_gt");

function QVariant_ge(v1,v2: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_ge,"QVariant_ge");

function QVariant_lt(v1,v2: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_lt,"QVariant_lt");

function QVariant_le(v1,v2: not null  QVariantH) return  Boolean;   
pragma Import(C,QVariant_le,"QVariant_le");

function "="(v1,v2: not null  QVariantH) return  Boolean;   
function ">"(v1,v2: not null  QVariantH) return  Boolean;   
function ">="(v1,v2: not null  QVariantH) return  Boolean;   
function "<"(v1,v2: not null  QVariantH) return  Boolean;   
function "<="(v1,v2: not null  QVariantH) return  Boolean;   

end Qt.QVariant;
