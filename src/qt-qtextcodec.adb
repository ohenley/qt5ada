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

with builtin; use builtin;
package body Qt.QTextCodec is


 function  QTextCodec_codecForName(name:zstring) return QTextCodecH is
 begin
   return QTextCodec_codecForName2(name);
 end;

 procedure QTextCodec_setCodecForLocale(codec:QTextCodecH) is
 begin
   QTextCodec_setCodecForLocale2(codec);
 end;

 function  QTextCodec_codecForHtml(ba:QByteArrayH;defaultCodec:QTextCodecH) return QTextCodecH is
 begin
  return  QTextCodec_codecForHtml2(ba,defaultCodec);
 end;

 function  QTextCodec_codecForUtfText(ba:QByteArrayH;defaultCodec :QTextCodecH) return QTextCodecH is
 begin
  return  QTextCodec_codecForUtfText2(ba,defaultCodec);
 end;

 function  QTextCodec_canEncode(handle: not null QTextCodecH;str:QStringH) return boolean is
 begin
   return  QTextCodec_canEncode2(handle,str);
 end;

 function  QTextCodec_toUnicode(handle: not null QTextCodecH; chars:zstring) return QStringH is
 begin
   return  QTextCodec_toUnicode2(handle, chars);
 end;

 function  QTextCodec_toUnicode(handle: not null QTextCodecH;input:zstring;length:integer;state: QConverterStateH := null) return QStringH is
 begin
  return  QTextCodec_toUnicode3(handle,input,length,state);
 end;

 function  QTextCodec_fromUnicode(handle: not null QTextCodecH;input:QCharH;length:integer;state: QConverterStateH := null) return QByteArrayH is
 begin
   return  QTextCodec_fromUnicode2(handle,input,length,state);
 end;

 function  QTextCodec_makeDecoder(handle: not null QTextCodecH; flags:quint) return QTextDecoderH is
 begin
   return  QTextCodec_makeDecoder2(handle,flags);
 end;

 function  QTextCodec_makeEncoder(handle: not null QTextCodecH; flags:quint) return QTextEncoderH is
 begin
  return  QTextCodec_makeEncoder2(handle, flags);
 end;

 procedure QTextCodec_setCodecForApplication(charset: zstring := s2zs("windows-1251")) is
 codec         : Qt.QTextCodecH ;
 begin
  codec := QTextCodec_codecForName(name => charset);
--QTextCodec_setCodecForTr(codec => codec);
  QTextCodec_setCodecForLocale(codec => codec);
--QTextCodec_setCodecForCStrings(codec => codec);
 end;

end Qt.QTextCodec;
