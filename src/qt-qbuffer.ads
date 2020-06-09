--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2020                           บ
-- บ Copyright (C) 2012,2020                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt; use Qt;
with Qt.QIODevice; 
with builtin; use builtin;
package Qt.QBuffer is

 function  QBuffer_create return QBufferH;
 pragma Import(C,QBuffer_create, "QBuffer_create");
 
 function  QBuffer_create2(buf:QByteArrayH) return QBufferH;
 pragma Import(C,QBuffer_create2, "QBuffer_create2");
 
 procedure QBuffer_destroy(handle:not null QBufferH);
 pragma Import(C,QBuffer_destroy, "QBuffer_destroy");
 
 function  QBuffer_buffer(handle:not null QBufferH) return QByteArrayH;
 pragma Import(C,QBuffer_buffer, "QBuffer_buffer");
 
 procedure QBuffer_setBuffer(handle:not null QBufferH;buf:QByteArrayH);
 pragma Import(C,QBuffer_setBuffer, "QBuffer_setBuffer");
 
 procedure QBuffer_setData(handle:not null QBufferH;data:QByteArrayH);
 pragma Import(C,QBuffer_setData, "QBuffer_setData");
 
 procedure QBuffer_setData2(handle:not null QBufferH;data:zstring;len: integer);
 pragma Import(C,QBuffer_setData2, "QBuffer_setData2");
 
 function  QBuffer_data(handle:not null QBufferH) return QByteArrayH;
 pragma Import(C,QBuffer_data, "QBuffer_data");
 
 function  QBuffer_open(handle:not null QBufferH;mode:Qt.QIODevice.QIODeviceOpenMode) return boolean;
 pragma Import(C,QBuffer_open, "QBuffer_open");
 
 procedure QBuffer_close(handle:not null QBufferH);
 pragma Import(C,QBuffer_close, "QBuffer_close");
 
 function  QBuffer_size(handle:not null QBufferH) return qint64;
 pragma Import(C,QBuffer_size, "QBuffer_size");
 
 function  QBuffer_pos(handle:not null QBufferH) return qint64;
 pragma Import(C,QBuffer_pos, "QBuffer_pos");
 
 function  QBuffer_seek(handle:not null QBufferH;off:qint64) return boolean;
 pragma Import(C,QBuffer_seek, "QBuffer_seek");
 
 function  QBuffer_atEnd(handle:not null QBufferH) return boolean;
 pragma Import(C,QBuffer_atEnd, "QBuffer_atEnd");
 
 function  QBuffer_canReadLine(handle:not null QBufferH) return boolean;
 pragma Import(C,QBuffer_canReadLine, "QBuffer_canReadLine");
 
 procedure QBuffer_connectNotify(handle:not null QBufferH;method:QMetaMethodH);
 pragma Import(C,QBuffer_connectNotify, "QBuffer_connectNotify");
 
 procedure QBuffer_disconnectNotify(handle:not null QBufferH;method:QMetaMethodH);
 pragma Import(C,QBuffer_disconnectNotify, "QBuffer_disconnectNotify");
 
 function  QBuffer_readData(handle:not null QBufferH;data:zstring;maxlen: qint64) return qint64;
 pragma Import(C,QBuffer_readData, "QBuffer_readData");
 
 function  QBuffer_writeData(handle:not null QBufferH;data:zstring;len: qint64) return qint64;
 pragma Import(C,QBuffer_writeData, "QBuffer_writeData");
 
 -------------------------------------------------------------------------------
 function  QBuffer_create(buf:QByteArrayH) return QBufferH;
 procedure QBuffer_setData(handle:not null QBufferH;data:zstring;len: integer);
 
end;
