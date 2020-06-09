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
package Qt.QTextCodec is

 DefaultConversion    : constant := 0;
 ConvertInvalidToNull : constant := 16#80000000#;
 IgnoreHeader         : constant := 1;
 FreeFunction         : constant := 2;

 procedure QTextCodec_setCodecForApplication(charset: zstring := s2zs("windows-1251"));

 function  QTextCodec_codecForName(name:QByteArrayH) return QTextCodecH;
 pragma Import(C,QTextCodec_codecForName, "QTextCodec_codecForName");
 
 function  QTextCodec_codecForName2(name:zstring) return QTextCodecH;
 pragma Import(C,QTextCodec_codecForName2, "QTextCodec_codecForName2");
 
 function  QTextCodec_codecForMib(mib:integer) return QTextCodecH;
 pragma Import(C,QTextCodec_codecForMib, "QTextCodec_codecForMib");
 
 function  QTextCodec_availableCodecs return QObjectListH;
 pragma Import(C,QTextCodec_availableCodecs, "QTextCodec_availableCodecs");
 
 function  QTextCodec_availableMibs return QIntListH;
 pragma Import(C,QTextCodec_availableMibs, "QTextCodec_availableMibs");
 
 function  QTextCodec_codecForLocale return QTextCodecH;
 pragma Import(C,QTextCodec_codecForLocale, "QTextCodec_codecForLocale");
 
 procedure QTextCodec_setCodecForLocale2(codec:QTextCodecH);
 pragma Import(C,QTextCodec_setCodecForLocale2, "QTextCodec_setCodecForLocale2");
 
-- function  QTextCodec_codecForTr return QTextCodecH;
-- pragma Import(C,QTextCodec_codecForTr, "QTextCodec_codecForTr");
 
 function  QTextCodec_codecForHtml(ba:QByteArrayH) return QTextCodecH;
 pragma Import(C,QTextCodec_codecForHtml, "QTextCodec_codecForHtml");
 
 function  QTextCodec_codecForHtml2(ba:QByteArrayH;defaultCodec:QTextCodecH) return QTextCodecH;
 pragma Import(C,QTextCodec_codecForHtml2, "QTextCodec_codecForHtml2");
 
 function  QTextCodec_codecForUtfText(ba:QByteArrayH) return QTextCodecH;
 pragma Import(C,QTextCodec_codecForUtfText, "QTextCodec_codecForUtfText");
 
 function  QTextCodec_codecForUtfText2(ba:QByteArrayH;defaultCodec :QTextCodecH) return QTextCodecH;
 pragma Import(C,QTextCodec_codecForUtfText2, "QTextCodec_codecForUtfText2");
 
 function  QTextCodec_canEncode(handle: not null QTextCodecH;char:QCharH) return boolean;
 pragma Import(C,QTextCodec_canEncode, "QTextCodec_canEncode");
 
 function  QTextCodec_canEncode2(handle: not null QTextCodecH;str:QStringH) return boolean;
 pragma Import(C,QTextCodec_canEncode2, "QTextCodec_canEncode2");
 
 function  QTextCodec_toUnicode(handle: not null QTextCodecH;ba:QByteArrayH) return QStringH;
 pragma Import(C,QTextCodec_toUnicode, "QTextCodec_toUnicode");
 
 function  QTextCodec_toUnicode2(handle: not null QTextCodecH; chars:zstring) return QStringH;
 pragma Import(C,QTextCodec_toUnicode2, "QTextCodec_toUnicode2");
 
 function  QTextCodec_toUnicode3(handle: not null QTextCodecH;input:zstring;length:integer;state: QConverterStateH := null) return QStringH;
 pragma Import(C,QTextCodec_toUnicode3, "QTextCodec_toUnicode3");
 
 function  QTextCodec_fromUnicode(handle: not null QTextCodecH; uc:QStringH) return QByteArrayH;
 pragma Import(C,QTextCodec_fromUnicode, "QTextCodec_fromUnicode");
 
 function  QTextCodec_fromUnicode2(handle: not null QTextCodecH;input:QCharH;length:integer;state: QConverterStateH := null) return QByteArrayH;
 pragma Import(C,QTextCodec_fromUnicode2, "QTextCodec_fromUnicode2");
 
 function  QTextCodec_makeDecoder(handle: not null QTextCodecH) return QTextDecoderH;
 pragma Import(C,QTextCodec_makeDecoder, "QTextCodec_makeDecoder");
 
 function  QTextCodec_makeDecoder2(handle: not null QTextCodecH; flags:quint) return QTextDecoderH;
 pragma Import(C,QTextCodec_makeDecoder2, "QTextCodec_makeDecoder2");
 
 function  QTextCodec_makeEncoder(handle: not null QTextCodecH) return QTextEncoderH;
 pragma Import(C,QTextCodec_makeEncoder, "QTextCodec_makeEncoder");
 
 function  QTextCodec_makeEncoder2(handle: not null QTextCodecH; flags:quint) return QTextEncoderH;
 pragma Import(C,QTextCodec_makeEncoder2, "QTextCodec_makeEncoder2");
 
 function  QTextCodec_name(handle: not null QTextCodecH) return QByteArrayH;
 pragma Import(C,QTextCodec_name, "QTextCodec_name");
 
 function  QTextCodec_aliases(handle: not null QTextCodecH) return QObjectListH;
 pragma Import(C,QTextCodec_aliases, "QTextCodec_aliases");
 
 function  QTextCodec_mibEnum(handle: not null QTextCodecH) return integer;
 pragma Import(C,QTextCodec_mibEnum, "QTextCodec_mibEnum");

 function  QTextCodec_findCodecs return QObjectListH;
 pragma Import(C,QTextCodec_findCodecs, "QTextCodec_findCodecs");

 function QTextCodec_availableCodecAt(index:integer) return QByteArrayH;
 pragma Import(C,QTextCodec_availableCodecAt, "QTextCodec_availableCodecAt");
 
---------------------------------------------------------------------------------------------------------------------
 function  QTextCodec_codecForName(name:zstring) return QTextCodecH;
 procedure QTextCodec_setCodecForLocale(codec:QTextCodecH);
 function  QTextCodec_codecForHtml(ba:QByteArrayH;defaultCodec:QTextCodecH) return QTextCodecH;
 function  QTextCodec_codecForUtfText(ba:QByteArrayH;defaultCodec :QTextCodecH) return QTextCodecH;
 function  QTextCodec_canEncode(handle: not null QTextCodecH;str:QStringH) return boolean;
 function  QTextCodec_toUnicode(handle: not null QTextCodecH; chars:zstring) return QStringH;
 function  QTextCodec_toUnicode(handle: not null QTextCodecH;input:zstring;length:integer;state: QConverterStateH := null) return QStringH;
 function  QTextCodec_fromUnicode(handle: not null QTextCodecH;input:QCharH;length:integer;state: QConverterStateH := null) return QByteArrayH;
 function  QTextCodec_makeDecoder(handle: not null QTextCodecH; flags:quint) return QTextDecoderH;
 function  QTextCodec_makeEncoder(handle: not null QTextCodecH; flags:quint) return QTextEncoderH;
 
end Qt.QTextCodec;
