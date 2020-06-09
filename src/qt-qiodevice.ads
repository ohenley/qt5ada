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
 package Qt.QIODevice            is
 
 subtype  QIODeviceOpenModeFlag  is  cardinal;
 subtype  QIODeviceOpenMode      is  cardinal;
 
 QIODeviceNotOpen      : constant QIODeviceOpenMode  := 0;
 QIODeviceReadOnly     : constant QIODeviceOpenMode  := 1;
 QIODeviceWriteOnly    : constant QIODeviceOpenMode  := 2;
 QIODeviceReadWrite    : constant QIODeviceOpenMode  := 3;
 QIODeviceAppend       : constant QIODeviceOpenMode  := 4;
 QIODeviceTruncate     : constant QIODeviceOpenMode  := 8;
 QIODeviceText         : constant QIODeviceOpenMode  := 16#10#;
 QIODeviceUnbuffered   : constant QIODeviceOpenMode  := 16#20#;
 QIODeviceNewOnly      : constant QIODeviceOpenMode  := 16#40#;
 QIODeviceExistingOnly : constant QIODeviceOpenMode  := 16#80#;  
 
 type FileTime is (FileAccessTime, FileBirthTime, FileMetadataChangeTime, FileModificationTime);
 pragma convention(C,FileTime);     
 
 function QIODevice_create(file: QFileH) return QIODeviceH;
 pragma Import(C,QIODevice_create,"QIODevice_create");
 
 function QIODevice_openMode(handle: not null  QIODeviceH) return  QIODeviceOpenMode;   
 pragma Import(C,QIODevice_openMode,"QIODevice_openMode");
 
 procedure QIODevice_setTextModeEnabled(handle: not null  QIODeviceH; enabled: Boolean);   
 pragma Import(C,QIODevice_setTextModeEnabled,"QIODevice_setTextModeEnabled");
 
 function QIODevice_isTextModeEnabled(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_isTextModeEnabled,"QIODevice_isTextModeEnabled");
 
 function QIODevice_isOpen(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_isOpen,"QIODevice_isOpen");
 
 function QIODevice_isReadable(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_isReadable,"QIODevice_isReadable");
 
 function QIODevice_isWritable(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_isWritable,"QIODevice_isWritable");
 
 function QIODevice_isSequential(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_isSequential,"QIODevice_isSequential");
 
 function QIODevice_open(handle: not null  QIODeviceH; mode: QIODeviceOpenMode) return  Boolean;   
 pragma Import(C,QIODevice_open,"QIODevice_open");
 
 procedure QIODevice_close(handle: not null  QIODeviceH);   
 pragma Import(C,QIODevice_close,"QIODevice_close");
 
 function QIODevice_pos(handle: not null  QIODeviceH) return  int64;   
 pragma Import(C,QIODevice_pos,"QIODevice_pos");
 
 function QIODevice_size(handle: not null  QIODeviceH) return  int64;   
 pragma Import(C,QIODevice_size,"QIODevice_size");
 
 function QIODevice_seek(handle: not null  QIODeviceH; pos: int64) return  Boolean;   
 pragma Import(C,QIODevice_seek,"QIODevice_seek");
 
 function QIODevice_atEnd(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_atEnd,"QIODevice_atEnd");
 
 function QIODevice_reset(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_reset,"QIODevice_reset");
 
 function QIODevice_bytesAvailable(handle: not null  QIODeviceH) return  int64;   
 pragma Import(C,QIODevice_bytesAvailable,"QIODevice_bytesAvailable");
 
 function QIODevice_bytesToWrite(handle: not null  QIODeviceH) return  int64;   
 pragma Import(C,QIODevice_bytesToWrite,"QIODevice_bytesToWrite");
 
 function QIODevice_read(handle: not null  QIODeviceH; data: zstring; maxlen: int64) return  int64;    
 pragma Import(C,QIODevice_read,"QIODevice_read");
 
 function  QIODevice_read2(handle: not null  QIODeviceH; maxlen: int64) return QByteArrayH;
 pragma Import(C,QIODevice_read2,"QIODevice_read2");
 
 function  QIODevice_read3(handle: not null  QIODeviceH; maxlen: int64) return QStringH;
 pragma Import(C,QIODevice_read3,"QIODevice_read3");
 
 function  QIODevice_readAll(handle: not null  QIODeviceH) return QByteArrayH;
 pragma Import(C,QIODevice_readAll,"QIODevice_readAll");
 
 function  QIODevice_readAll2(handle: not null  QIODeviceH) return QStringH;
 pragma Import(C,QIODevice_readAll2,"QIODevice_readAll2");
 
 function QIODevice_readLine(handle: not null  QIODeviceH; data: zstring; maxlen: int64) return  int64;    
 pragma Import(C,QIODevice_readLine,"QIODevice_readLine");
 
 function  QIODevice_readLine2(handle: not null  QIODeviceH; maxlen: int64 := 0) return QByteArrayH;
 pragma Import(C,QIODevice_readLine2,"QIODevice_readLine2");
 
 function  QIODevice_readLine3(handle: not null  QIODeviceH; maxlen: int64 := 0) return QStringH;
 pragma Import(C,QIODevice_readLine3,"QIODevice_readLine3");
 
 function QIODevice_canReadLine(handle: not null  QIODeviceH) return  Boolean;   
 pragma Import(C,QIODevice_canReadLine,"QIODevice_canReadLine");
 
 function QIODevice_write(handle: not null  QIODeviceH; data: zstring; len: int64) return  int64;    
 pragma Import(C,QIODevice_write,"QIODevice_write");
 
 function QIODevice_write2(handle: not null  QIODeviceH; data: QByteArrayH) return  int64;
 pragma Import(C,QIODevice_write2,"QIODevice_write2");
 
 function QIODevice_write3(handle: not null  QIODeviceH; data: zstring) return  int64;
 pragma Import(C,QIODevice_write3,"QIODevice_write3");
 
 function QIODevice_peek(handle: not null  QIODeviceH; data: zstring; maxlen: int64) return  int64;    
 pragma Import(C,QIODevice_peek,"QIODevice_peek");
 
 function  QIODevice_peek2(handle: not null  QIODeviceH; maxlen: int64) return QByteArrayH;
 pragma Import(C,QIODevice_peek2,"QIODevice_peek2");
 
 function QIODevice_waitForReadyRead(handle: not null  QIODeviceH; msecs: Integer) return  Boolean;   
 pragma Import(C,QIODevice_waitForReadyRead,"QIODevice_waitForReadyRead");
 
 function QIODevice_waitForBytesWritten(handle: not null  QIODeviceH; msecs: Integer) return  Boolean;   
 pragma Import(C,QIODevice_waitForBytesWritten,"QIODevice_waitForBytesWritten");
 
 procedure QIODevice_ungetChar(handle: not null  QIODeviceH; c: char);   
 pragma Import(C,QIODevice_ungetChar,"QIODevice_ungetChar");
 
 function QIODevice_putChar(handle: not null  QIODeviceH; c: char) return  Boolean;   
 pragma Import(C,QIODevice_putChar,"QIODevice_putChar");
 
 function QIODevice_getChar(handle: not null  QIODeviceH; c: zstring) return  Boolean;   
 pragma Import(C,QIODevice_getChar,"QIODevice_getChar");
 
 function  QIODevice_errorString(handle: not null  QIODeviceH) return QStringH;
 pragma Import(C,QIODevice_errorString,"QIODevice_errorString");
  
 function  QIODevice_readAll3(handle:not null QIODeviceH) return zstring;
 pragma Import(C,QIODevice_readAll3, "QIODevice_readAll3");
 
 function  QIODevice_readLine4(handle:not null QIODeviceH; maxlen:qint64) return zstring;
 pragma Import(C,QIODevice_readLine4, "QIODevice_readLine4");

 type QIODevice_readyReadEvent is access procedure ;
 pragma Convention(C,QIODevice_readyReadEvent);

 type QIODevice_bytesWrittenEvent is access procedure (bytes: int64);
 pragma Convention(C,QIODevice_bytesWrittenEvent);

 type intInt64CallbackH is access procedure (num:integer;bytes: int64);
 pragma Convention(C,intInt64CallbackH);
 
 type QIODevice_aboutToCloseEvent is access procedure ;
 pragma Convention(C,QIODevice_aboutToCloseEvent);
  
 procedure QIODevice_signal_slot_readyRead(handle: not null QIODeviceH; hook:QIODevice_readyReadEvent);
 pragma Import(C,QIODevice_signal_slot_readyRead, "QIODevice_signal_slot_readyRead");
 
 procedure QIODevice_signal_slot_bytesWritten(handle: not null QIODeviceH; hook:QIODevice_bytesWrittenEvent);
 pragma Import(C,QIODevice_signal_slot_bytesWritten, "QIODevice_signal_slot_bytesWritten");
 
 procedure QIODevice_signal_slot_aboutToClose(handle: not null QIODeviceH; hook:QIODevice_aboutToCloseEvent);
 pragma Import(C,QIODevice_signal_slot_aboutToClose, "QIODevice_signal_slot_aboutToClose");

 procedure QIODevice_signal_slot_channelReadyRead(handle:not null QIODeviceH;hook:intCallbackH);
 pragma Import(C,QIODevice_signal_slot_channelReadyRead, "QIODevice_signal_slot_channelReadyRead");
 
 procedure QIODevice_signal_slot_channelBytesWritten(handle:not null QIODeviceH;hook:intInt64CallbackH);
 pragma Import(C,QIODevice_signal_slot_channelBytesWritten, "QIODevice_signal_slot_channelBytesWritten");

 ------------------------------------------------------------------
 function  QIODevice_read(handle: not null  QIODeviceH; maxlen: int64) return QByteArrayH;
 function  QIODevice_readLine(handle: not null  QIODeviceH; maxlen: int64 := 0) return QByteArrayH;
 function  QIODevice_write(handle: not null  QIODeviceH; data: QByteArrayH) return  int64;
 function  QIODevice_peek(handle: not null  QIODeviceH; maxlen: int64) return QByteArrayH;
 function  QIODevice_read(handle: not null  QIODeviceH; maxlen: int64) return QStringH;
 function  QIODevice_readAll(handle: not null  QIODeviceH) return QStringH;
 function  QIODevice_readLine(handle: not null  QIODeviceH; maxlen: int64 := 0) return QStringH;
 function  QIODevice_write(handle: not null  QIODeviceH; data: zstring) return  int64;
 function  QIODevice_readAll(handle:not null QIODeviceH) return zstring;
 function  QIODevice_readLine(handle:not null QIODeviceH; maxlen:qint64) return zstring;
 
end  Qt.QIODevice;
