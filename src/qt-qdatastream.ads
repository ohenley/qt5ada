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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with builtin; use builtin;
package Qt.QDataStream is

 QDATASTREAM_BigEndian   : constant :=  0;
 QDATASTREAM_LittleEndian: constant :=  1;

function  QDataStream_create return QDataStreamH;
pragma Import(C,QDataStream_create, "QDataStream_create");

function  QDataStream_create1(dev:QIODeviceH) return QDataStreamH;
pragma Import(C,QDataStream_create1, "QDataStream_create1");

function  QDataStream_create2(ba:QByteArrayH;mode:integer) return QDataStreamH;
pragma Import(C,QDataStream_create2, "QDataStream_create2");

procedure del_QDataStream(p:QDataStreamH);
pragma Import(C,del_QDataStream, "del_QDataStream");

function  QDataStream_device(stream:QDataStreamH) return QIODeviceH;
pragma Import(C,QDataStream_device, "QDataStream_device");

procedure QDataStream_setDevice(stream:QDataStreamH;dev:QIODeviceH);
pragma Import(C,QDataStream_setDevice, "QDataStream_setDevice");

procedure QDataStream_unsetDevice(stream:QDataStreamH);
pragma Import(C,QDataStream_unsetDevice, "QDataStream_unsetDevice");

function  QDataStream_atEnd(stream:QDataStreamH) return integer;
pragma Import(C,QDataStream_atEnd, "QDataStream_atEnd");

--function  QDataStream_eof(stream:QDataStreamH) return integer;
--pragma Import(C,QDataStream_eof, "QDataStream_eof");

function  QDataStream_byteOrder(stream:QDataStreamH) return integer;
pragma Import(C,QDataStream_byteOrder, "QDataStream_byteOrder");

procedure QDataStream_setByteOrder(stream:QDataStreamH;arg1:integer);
pragma Import(C,QDataStream_setByteOrder, "QDataStream_setByteOrder");

--function  QDataStream_isPrintableData(stream:QDataStreamH) return integer;
--pragma Import(C,QDataStream_isPrintableData, "QDataStream_isPrintableData");

--procedure QDataStream_setPrintableData(stream:QDataStreamH;arg1:integer);
--pragma Import(C,QDataStream_setPrintableData, "QDataStream_setPrintableData");

function  QDataStream_version(stream:QDataStreamH) return integer;
pragma Import(C,QDataStream_version, "QDataStream_version");

procedure QDataStream_setVersion(stream:QDataStreamH;arg1:integer);
pragma Import(C,QDataStream_setVersion, "QDataStream_setVersion");

function  QDataStream_readBytes(stream:QDataStreamH;data:zstring;len:quint) return QDataStreamH;
pragma Import(C,QDataStream_readBytes, "QDataStream_readBytes");

--function  QDataStream_readRawBytes(stream:QDataStreamH;data:zstring;len:quint) return QDataStreamH;
--pragma Import(C,QDataStream_readRawBytes, "QDataStream_readRawBytes");

function  QDataStream_writeBytes(stream:QDataStreamH;data:zstring;len:quint) return QDataStreamH;
pragma Import(C,QDataStream_writeBytes, "QDataStream_writeBytes");

-- function  QDataStream_writeRawBytes(stream:QDataStreamH;data:zstring;len:quint) return QDataStreamH;
-- pragma Import(C,QDataStream_writeRawBytes, "QDataStream_writeRawBytes");

function  QDataStream_getInt(stream: QDataStreamH) return integer;
pragma Import(C,QDataStream_getInt, "QDataStream_getInt");

procedure QDataStream_putInt(stream: QDataStreamH; n : integer);
pragma Import(C,QDataStream_putInt, "QDataStream_putInt");

function  QDataStream_getQUInt16(stream: QDataStreamH) return quint16;
pragma Import(C,QDataStream_getQUInt16, "QDataStream_getQUInt16");

procedure QDataStream_putQUInt16(stream: QDataStreamH; n : quint16);
pragma Import(C,QDataStream_putQUInt16, "QDataStream_putQUInt16");

function  QDataStream_getQUInt32(stream: QDataStreamH) return quint;
pragma Import(C,QDataStream_getQUInt32, "QDataStream_getQUInt32");

procedure QDataStream_putQUInt32(stream: QDataStreamH; n : quint);
pragma Import(C,QDataStream_putQUInt32, "QDataStream_putQUInt32");

function  QDataStream_getQUInt64(stream: QDataStreamH) return quint64;
pragma Import(C,QDataStream_getQUInt64, "QDataStream_getQUInt64");

procedure QDataStream_putQUInt64(stream: QDataStreamH; n : quint64);
pragma Import(C,QDataStream_putQUInt64, "QDataStream_putQUInt64");

function  QDataStream_getFloat(stream: QDataStreamH) return float;
pragma Import(C,QDataStream_getFloat, "QDataStream_getFloat");

procedure QDataStream_putFloat(stream: QDataStreamH; f : float);
pragma Import(C,QDataStream_putFloat, "QDataStream_putFloat");

function  QDataStream_getString(stream: QDataStreamH) return string;
pragma Import(C,QDataStream_getString, "QDataStream_getString");

procedure QDataStream_putString(stream: QDataStreamH; s : zstring);
pragma Import(C,QDataStream_putString, "QDataStream_putString");

function  QDataStream_getQString(stream: QDataStreamH) return QStringH;
pragma Import(C,QDataStream_getQString, "QDataStream_getQString");

procedure QDataStream_putQString(stream: QDataStreamH ; qs: QStringH);
pragma Import(C,QDataStream_putQString, "QDataStream_putQString");

function  QDataStream_getQTime(stream: QDataStreamH) return QTimeH;
pragma Import(C,QDataStream_getQTime, "QDataStream_getQTime");

procedure QDataStream_putQTime(stream: QDataStreamH ; time: QTimeH);
pragma Import(C,QDataStream_putQTime, "QDataStream_putQTime");

function  QDataStream_create(dev:QIODeviceH) return QDataStreamH;
function  QDataStream_create(ba:QByteArrayH;mode:integer) return QDataStreamH;

end Qt.QDataStream;
