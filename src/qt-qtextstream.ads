-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to Qt5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2014,2015                 บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2013,2014,2015                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QIODEvice; use  Qt.QIODEvice;
with builtin; use builtin;
package Qt.QTextStream is

 type RealNumberNotation is (SmartNotation,FixedNotation,ScientificNotation);
 pragma convention(C,RealNumberNotation);
    
 type FieldAlignment is ( AlignLeft, AlignRight, AlignCenter, AlignAccountingStyle);
 pragma convention(C,FieldAlignment);
   
 type Status is ( Ok, ReadPastEnd, ReadCorruptData, WriteFailed);
 pragma convention(C,Status);
    
 type NumberFlags is ( ShowBase, ForcePoint, ForceSign,UppercaseBase,UppercaseDigits);
 pragma convention(C,NumberFlags);
 
 for NumberFlags  use (
        ShowBase => 1,
        ForcePoint => 2,
        ForceSign => 4,
        UppercaseBase => 8,
        UppercaseDigits => 16#10#
    );


 function  QTextStream_create return QTextStreamH;
 pragma Import(C,QTextStream_create, "QTextStream_create");
 
 function  QTextStream_create2(device:QIODeviceH) return QTextStreamH;
 pragma Import(C,QTextStream_create2, "QTextStream_create2");
 
 function  QTextStream_create3(str:QStringH;openMode: QIODeviceOpenMode := QIODeviceReadWrite) return QTextStreamH;
 pragma Import(C,QTextStream_create3, "QTextStream_create3");
 
 function  QTextStream_create4(str:QByteArrayH;openMode: QIODeviceOpenMode := QIODeviceReadWrite) return QTextStreamH;
 pragma Import(C,QTextStream_create4, "QTextStream_create4");
 
 function  QTextStream_create7(file:QFileH) return QTextStreamH;
 pragma Import(C,QTextStream_create7, "QTextStream_create7");
 
 function  QTextStream_createSTDIN return QTextStreamH;
 pragma Import(C,QTextStream_createSTDIN, "QTextStream_createSTDIN");
 
 function  QTextStream_createSTDOUT return QTextStreamH;
 pragma Import(C,QTextStream_createSTDOUT, "QTextStream_createSTDOUT");
 
 function  QTextStream_createSTDERR return QTextStreamH;
 pragma Import(C,QTextStream_createSTDERR, "QTextStream_createSTDERR");
 
 procedure QTextStream_destroy(handle:not null QTextStreamH);
 pragma Import(C,QTextStream_destroy, "QTextStream_destroy");
 
 procedure QTextStream_setLocale(handle:not null QTextStreamH;locale:QLocaleH);
 pragma Import(C,QTextStream_setLocale, "QTextStream_setLocale");
 
 function  QTextStream_locale(handle:not null QTextStreamH) return QLocaleH;
 pragma Import(C,QTextStream_locale, "QTextStream_locale");
 
 procedure QTextStream_setDevice(handle:not null QTextStreamH;device:QIODeviceH);
 pragma Import(C,QTextStream_setDevice, "QTextStream_setDevice");
 
 function  QTextStream_device(handle:not null QTextStreamH) return QIODeviceH;
 pragma Import(C,QTextStream_device, "QTextStream_device");
 
 procedure QTextStream_setString(handle:not null QTextStreamH;str:QStringH; openMode:QIODeviceOpenMode := QIODeviceReadWrite);
 pragma Import(C,QTextStream_setString, "QTextStream_setString");
 
 function  QTextStream_string(handle:not null QTextStreamH) return QStringH;
 pragma Import(C,QTextStream_string, "QTextStream_string");
 
 function  QTextStream_status(handle:not null QTextStreamH) return Status;
 pragma Import(C,QTextStream_status, "QTextStream_status");
 
 procedure QTextStream_setStatus(handle:not null QTextStreamH;tsStatus:Status);
 pragma Import(C,QTextStream_setStatus, "QTextStream_setStatus");
 
 procedure QTextStream_resetStatus(handle:not null QTextStreamH);
 pragma Import(C,QTextStream_resetStatus, "QTextStream_resetStatus");
 
 function  QTextStream_atEnd(handle:not null QTextStreamH) return boolean;
 pragma Import(C,QTextStream_atEnd, "QTextStream_atEnd");
 
 procedure QTextStream_reset(handle:not null QTextStreamH);
 pragma Import(C,QTextStream_reset, "QTextStream_reset");
 
 procedure QTextStream_flush(handle:not null QTextStreamH);
 pragma Import(C,QTextStream_flush, "QTextStream_flush");
 
 function  QTextStream_seek(handle:not null QTextStreamH;pos:qint64) return boolean;
 pragma Import(C,QTextStream_seek, "QTextStream_seek");
 
 function  QTextStream_pos(handle:not null QTextStreamH) return qint64;
 pragma Import(C,QTextStream_pos, "QTextStream_pos");
 
 procedure QTextStream_skipWhiteSpace(handle:not null QTextStreamH);
 pragma Import(C,QTextStream_skipWhiteSpace, "QTextStream_skipWhiteSpace");
 
 function  QTextStream_readLine(handle:not null QTextStreamH;maxlen:qint64 := 0) return QStringH;
 pragma Import(C,QTextStream_readLine, "QTextStream_readLine");
 
 function  QTextStream_readAll(handle:not null QTextStreamH) return QStringH;
 pragma Import(C,QTextStream_readAll, "QTextStream_readAll");
 
 function  QTextStream_read(handle:not null QTextStreamH;maxlen:qint64) return QStringH;
 pragma Import(C,QTextStream_read, "QTextStream_read");
 
 function  QTextStream_read2(handle:not null QTextStreamH) return QStringH;
 pragma Import(C,QTextStream_read2, "QTextStream_read2");
 
 procedure QTextStream_setFieldAlignment(handle:not null QTextStreamH;alignment:FieldAlignment);
 pragma Import(C,QTextStream_setFieldAlignment, "QTextStream_setFieldAlignment");
 
 function  QTextStream_fieldAlignment(handle:not null QTextStreamH) return FieldAlignment;
 pragma Import(C,QTextStream_fieldAlignment, "QTextStream_fieldAlignment");
 
 procedure QTextStream_setPadChar(handle:not null QTextStreamH;ch:QCharH);
 pragma Import(C,QTextStream_setPadChar, "QTextStream_setPadChar");
 
 function  QTextStream_padChar(handle:not null QTextStreamH) return QCharH;
 pragma Import(C,QTextStream_padChar, "QTextStream_padChar");
 
 procedure QTextStream_setFieldWidth(handle:not null QTextStreamH;width:integer);
 pragma Import(C,QTextStream_setFieldWidth, "QTextStream_setFieldWidth");
 
 function  QTextStream_fieldWidth(handle:not null QTextStreamH) return integer;
 pragma Import(C,QTextStream_fieldWidth, "QTextStream_fieldWidth");
 
 procedure QTextStream_setNumberFlags(handle:not null QTextStreamH; flags:NumberFlags);
 pragma Import(C,QTextStream_setNumberFlags, "QTextStream_setNumberFlags");
 
 function  QTextStream_numberFlags(handle:not null QTextStreamH) return NumberFlags;
 pragma Import(C,QTextStream_numberFlags, "QTextStream_numberFlags");
 
 procedure QTextStream_setIntegerBase(handle:not null QTextStreamH; base:integer);
 pragma Import(C,QTextStream_setIntegerBase, "QTextStream_setIntegerBase");
 
 function  QTextStream_integerBase(handle:not null QTextStreamH) return integer;
 pragma Import(C,QTextStream_integerBase, "QTextStream_integerBase");
 
 procedure QTextStream_setRealNumberNotation(handle:not null QTextStreamH; notation:RealNumberNotation);
 pragma Import(C,QTextStream_setRealNumberNotation, "QTextStream_setRealNumberNotation");
 
 function  QTextStream_realNumberNotation(handle:not null QTextStreamH) return RealNumberNotation;
 pragma Import(C,QTextStream_realNumberNotation, "QTextStream_realNumberNotation");
 
 procedure QTextStream_setRealNumberPrecision(handle:not null QTextStreamH; precision:integer);
 pragma Import(C,QTextStream_setRealNumberPrecision, "QTextStream_setRealNumberPrecision");
 
 function  QTextStream_realNumberPrecision(handle:not null QTextStreamH) return integer;
 pragma Import(C,QTextStream_realNumberPrecision, "QTextStream_realNumberPrecision");
 
 procedure QTextStream_setCodec(handle:not null QTextStreamH;codec:zstring);
 pragma Import(C,QTextStream_setCodec, "QTextStream_setCodec");
 
 function  QTextStream_codec(handle:not null QTextStreamH) return QTextCodecH;
 pragma Import(C,QTextStream_codec, "QTextStream_codec");
 
 procedure QTextStream_setCodec2(handle:not null QTextStreamH;codec:QTextCodecH);
 pragma Import(C,QTextStream_setCodec2, "QTextStream_setCodec2");
 
 procedure QTextStream_setCodec3(handle:not null QTextStreamH;codec:QByteArrayH);
 pragma Import(C,QTextStream_setCodec3, "QTextStream_setCodec");
 
 procedure QTextStream_setAutoDetectUnicode(handle:not null QTextStreamH;enabled:boolean);
 pragma Import(C,QTextStream_setAutoDetectUnicode, "QTextStream_setAutoDetectUnicode");
 
 function  QTextStream_autoDetectUnicode(handle:not null QTextStreamH) return boolean;
 pragma Import(C,QTextStream_autoDetectUnicode, "QTextStream_autoDetectUnicode");
 
 procedure QTextStream_setGenerateByteOrderMark(handle:not null QTextStreamH; generate:boolean);
 pragma Import(C,QTextStream_setGenerateByteOrderMark, "QTextStream_setGenerateByteOrderMark");
 
 function  QTextStream_generateByteOrderMark(handle:not null QTextStreamH) return boolean;
 pragma Import(C,QTextStream_generateByteOrderMark, "QTextStream_generateByteOrderMark");
 
 procedure QTextStream_write(handle:not null QTextStreamH;str:QStringH);
 pragma Import(C,QTextStream_write, "QTextStream_write");
 
-------------------------------------------------------------------------------------------------------
 function  QTextStream_create(device:QIODeviceH) return QTextStreamH;
 function  QTextStream_create(str:QStringH;openMode: QIODeviceOpenMode := QIODeviceReadWrite) return QTextStreamH;
 function  QTextStream_create(str:QByteArrayH;openMode: QIODeviceOpenMode := QIODeviceReadWrite) return QTextStreamH;
 function  QTextStream_create(file:QFileH) return QTextStreamH;
 procedure QTextStream_setCodec(handle:not null QTextStreamH;codec:QTextCodecH);
 procedure QTextStream_setCodec(handle:not null QTextStreamH;codec:QByteArrayH);
 function  QTextStream_read(handle:not null QTextStreamH) return QStringH;

end;
