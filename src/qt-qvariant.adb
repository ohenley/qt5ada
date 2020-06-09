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
  
package body Qt.QVariant is
  
  function QVariant_create(qtype: QVariantType) return  QVariantH is
  begin
   return QVariant_create2(qtype);
  end;
  
  function QVariant_create(typeOrUserType: Integer; copy: void_Star) return  QVariantH is
  begin
   return QVariant_create3(typeOrUserType, copy);
  end;
  
  function QVariant_create(other: QVariantH) return  QVariantH is
  begin
   return QVariant_create4(other);
  end;
  
  function QVariant_create(s: QDataStreamH) return  QVariantH is
  begin
   return QVariant_create5(s);
  end;
  
  function QVariant_create(i: Integer) return  QVariantH is
  begin
   return QVariant_create6(i);
  end;
  
  function QVariant_create(ll: int64) return  QVariantH is
  begin
   return QVariant_create8(ll);
  end;
  
  function QVariant_create(b: Boolean) return  QVariantH is
  begin
   return QVariant_create10(b);
  end;
  
  function QVariant_create(str: zstring) return  QVariantH is
  begin
   return  QVariant_create12(str);
  end;
  
  function QVariant_create(bytearray: QByteArrayH) return  QVariantH is
  begin
   return  QVariant_create13(bytearray);
  end;
  
  function QVariant_create(bitarray: QBitArrayH) return  QVariantH is
  begin
   return QVariant_create14(bitarray);
  end;
  
  function QVariant_create(str: QStringH) return  QVariantH is
  begin
   return QVariant_create15(str);
  end;
  
  function QVariant_create(str: QLatin1StringH) return  QVariantH is
  begin
   return QVariant_create16(str);
  end;
  
  function QVariant_create(stringlist: QStringListH) return  QVariantH is
  begin
   return  QVariant_create17(stringlist);
  end;
  
  function QVariant_create(qchar: QCharH) return  QVariantH is
  begin
   return  QVariant_create18(qchar);
  end;
  
  function QVariant_create(date: QDateH) return  QVariantH is
  begin
   return QVariant_create19(date);
  end;
  
  function QVariant_create(time: QTimeH) return  QVariantH is
  begin
   return  QVariant_create20(time);
  end;
  
  function QVariant_create(datetime: QDateTimeH) return  QVariantH is
  begin
   return  QVariant_create21(datetime);
  end;
  
  
  function QVariant_create(size: QSizeH) return  QVariantH is
  begin
   return QVariant_create24(size);
  end;
  
  function QVariant_create(size: QSizeFH) return  QVariantH is
  begin
   return  QVariant_create25(size);
  end;
  
  function QVariant_create(pt: QPointH) return  QVariantH is
  begin
   return  QVariant_create26(pt);
  end;
  
  function QVariant_create(pt: QPointFH) return  QVariantH is
  begin
   return  QVariant_create27(pt);
  end;
  
  function QVariant_create(line: QLineH) return  QVariantH is
  begin
   return QVariant_create28(line);
  end;
  
  function QVariant_create(line: QLineFH) return  QVariantH is
  begin
   return  QVariant_create29(line);
  end;
  
  function QVariant_create(rect: QRectH) return  QVariantH is
  begin
   return QVariant_create30(rect);
  end;
  
  function QVariant_create(rect: QRectFH) return  QVariantH is
  begin
   return QVariant_create31(rect);
  end;
  
  function QVariant_create(url: QUrlH) return  QVariantH is
  begin
   return  QVariant_create32(url);
  end;
  
  function QVariant_create(locale: QLocaleH) return  QVariantH is
  begin
   return  QVariant_create33(locale);
  end;
  
  function QVariant_create(regExp: QRegExpH) return  QVariantH is
  begin
   return QVariant_create34(regExp);
  end;

  function QVariant_create(color: QColorH) return  QVariantH is
  begin
    return QVariant_create35(color);
  end;

  function  QVariant_create(value:float) return QVariantH is
  begin
    return  QVariant_create36(value);
  end;

  function  QVariant_create(value:qreal) return QVariantH is
  begin
    return QVariant_create37(value);
  end;
  
  function QVariant_fromStream(s: QDataStreamH) return  QVariantH  is
  begin
    return QVariant_create5(s);
  end;
  
  function QVariant_fromInt(i: Integer) return  QVariantH is
  begin
    return QVariant_create6(i);
  end;
  
  function QVariant_fromInt64(ll: int64) return  QVariantH is
  begin
    return QVariant_create8(ll);
  end;
  
  function QVariant_fromQWord(ull: qword) return  QVariantH is
  begin
    return QVariant_create9(ull);
  end;
  
  function QVariant_fromBool(b: Boolean) return  QVariantH is
  begin
    return QVariant_create10(b);
  end;
  
  function QVariant_fromDouble(d: Double) return  QVariantH is
  begin
    return QVariant_create11(d);
  end;
  
  function QVariant_fromZString(str: zstring) return  QVariantH is
  begin
    return QVariant_create12(str);
  end;
  
  function QVariant_fromByteArray(bytearray: QByteArrayH) return  QVariantH is
  begin
    return QVariant_create13(bytearray);
  end;
  
  function QVariant_fromBitArray(bitarray: QBitArrayH) return  QVariantH is
  begin
    return QVariant_create14(bitarray);
  end;
  
  function QVariant_fromQString(str: QStringH) return  QVariantH is
  begin
    return QVariant_create15(str);
  end;
  
  function QVariant_fromQLatin1String(str: QLatin1StringH) return  QVariantH is
  begin
    return QVariant_create16(str);
  end;
  
  function QVariant_fromQStringList(stringlist: QStringListH) return  QVariantH is
  begin
    return QVariant_create17(stringlist);
  end;
  
  function QVariant_fromQChar(qchar: QCharH) return  QVariantH is
  begin
    return QVariant_create18(qchar);
  end;
  
  function QVariant_fromQDate(date: QDateH) return  QVariantH is
  begin
    return QVariant_create19(date);
  end;
  
  function QVariant_fromQTime(time: QTimeH) return  QVariantH is
  begin
    return QVariant_create20(time);
  end;
  
  function QVariant_fromDateTime(datetime: QDateTimeH) return  QVariantH is
  begin
    return QVariant_create21(datetime);
  end;
  
  function QVariant_fromQSize(size: QSizeH) return  QVariantH is
  begin
    return QVariant_create24(size);
  end;
  
  function QVariant_fromQSizeF(size: QSizeFH) return  QVariantH is
  begin
    return QVariant_create25(size);
  end;
  
  function QVariant_fromQPoint(pt: QPointH) return  QVariantH is
  begin
    return QVariant_create26(pt);
  end;
  
  function QVariant_fromQPointF(pt: QPointFH) return  QVariantH is
  begin
    return QVariant_create27(pt);
  end;
  
  function QVariant_fromQLine(line: QLineH) return  QVariantH is
  begin
    return QVariant_create28(line);
  end;
  
  function QVariant_fromQLineF(line: QLineFH) return  QVariantH is
  begin
    return QVariant_create29(line);
  end;
  
  function QVariant_fromQRect(rect: QRectH) return  QVariantH is
  begin
    return QVariant_create30(rect);
  end;
  
  function QVariant_fromQRectF(rect: QRectFH) return  QVariantH is
  begin
    return QVariant_create31(rect);
  end;
  
  function QVariant_fromQUrl(url: QUrlH) return  QVariantH is
  begin
    return QVariant_create32(url);
  end;
  
  function QVariant_fromQLocale(locale: QLocaleH) return  QVariantH is
  begin
    return QVariant_create33(locale);
  end;
  
  function QVariant_fromQRegExp(regExp: QRegExpH) return  QVariantH is
  begin
    return QVariant_create34(regExp);
  end;

  function QVariant_fromFloat(f: float) return  QVariantH is
  begin
   return QVariant_create36(f);
  end;

  function QVariant_fromReal (f:qreal) return  QVariantH is
  begin
   return QVariant_create37(f);
  end;

 function "="(v1,v2: not null  QVariantH) return  Boolean is 
 begin
   return QVariant_eq(v1,v2);
 end;

 function ">"(v1,v2: not null  QVariantH) return  Boolean is 
 begin
  return QVariant_gt(v1,v2);
 end;

 function ">="(v1,v2: not null  QVariantH) return  Boolean is 
 begin
  return QVariant_ge(v1,v2);
 end;

 function "<"(v1,v2: not null  QVariantH) return  Boolean is 
 begin
  return QVariant_lt(v1,v2);
 end;

 function "<="(v1,v2: not null  QVariantH) return  Boolean is 
 begin
  return QVariant_le(v1,v2);
 end;
  
end Qt.QVariant;
