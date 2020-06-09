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

with Qt.QString; use Qt.QString;
with builtin; use builtin;
package Qt.QFtp is

type State is (Unconnected, HostLookup, Connecting, Connected, LoggedIn, Closing);
pragma Convention (C,State);

type  Error is (NoError, UnknownError , HostNotFound, ConnectionRefused, NotConnected);
pragma Convention (C,Error);

type Command is (None,SetTransferMode, SetProxy, ConnectToHost, Login, Close, List, Cd, Get, Put, Remove, Mkdir, Rmdir, Rename, RawCommand);
pragma Convention (C,Command);

type TransferMode  is (Active, Passive);
pragma Convention (C,TransferMode);

type TransferType  is (Binary, Ascii);
pragma Convention (C,TransferType);

function  QFtp_create(parent: QObjectH := null) return QFtpH;
pragma Import(C,QFtp_create, "QFtp_create");

procedure del_QFtp(p:QFtpH);
pragma Import(C,del_QFtp, "del_QFtp");

procedure QFtp_abort(ftp: QFtpH);
pragma Import(C,QFtp_abort, "QFtp_abort");

procedure QFtp_deleteLater(ftp: QFtpH);
pragma Import(C,QFtp_deleteLater , "QFtp_deleteLater");

function  QFtp_supportedOperations(ftp:QFtpH) return integer;
pragma Import(C,QFtp_supportedOperations, "QFtp_supportedOperations");

procedure QFtp_parseDir(ftp:QFtpH;buffer:QStringH;info:QUrlInfoH);
pragma Import(C,QFtp_parseDir, "QFtp_parseDir");

procedure QFtp_operationListChildren(ftp:QFtpH;op:QNetworkOperationH);
pragma Import(C,QFtp_operationListChildren, "QFtp_operationListChildren");

procedure QFtp_operationMkDir(ftp:QFtpH;op:QNetworkOperationH);
pragma Import(C,QFtp_operationMkDir, "QFtp_operationMkDir");

procedure QFtp_operationRemove(ftp:QFtpH;op:QNetworkOperationH);
pragma Import(C,QFtp_operationRemove, "QFtp_operationRemove");

procedure QFtp_operationRename(ftp:QFtpH;op:QNetworkOperationH);
pragma Import(C,QFtp_operationRename, "QFtp_operationRename");

procedure QFtp_operationGet(ftp:QFtpH;op:QNetworkOperationH);
pragma Import(C,QFtp_operationGet, "QFtp_operationGet");

procedure QFtp_operationPut(ftp:QFtpH;op:QNetworkOperationH);
pragma Import(C,QFtp_operationPut, "QFtp_operationPut");

procedure QFtp_hostFound(ftp:QFtpH);
pragma Import(C,QFtp_hostFound, "QFtp_hostFound");

procedure QFtp_connected(ftp:QFtpH);
pragma Import(C,QFtp_connected, "QFtp_connected");

procedure QFtp_closed(ftp:QFtpH);
pragma Import(C,QFtp_closed, "QFtp_closed");

procedure QFtp_readyRead(ftp:QFtpH);
pragma Import(C,QFtp_readyRead, "QFtp_readyRead");

procedure QFtp_dataHostFound(ftp:QFtpH);
pragma Import(C,QFtp_dataHostFound, "QFtp_dataHostFound");

procedure QFtp_dataConnected(ftp:QFtpH);
pragma Import(C,QFtp_dataConnected, "QFtp_dataConnected");

procedure QFtp_dataClosed(ftp:QFtpH);
pragma Import(C,QFtp_dataClosed, "QFtp_dataClosed");

procedure QFtp_dataReadyRead(ftp:QFtpH);
pragma Import(C,QFtp_dataReadyRead, "QFtp_dataReadyRead");

procedure QFtp_dataBytesWritten(ftp:QFtpH;nbytes:integer);
pragma Import(C,QFtp_dataBytesWritten, "QFtp_dataBytesWritten");

function  QFtp_connectToHost(handle: not null QFtpH; host:QStringH; port: integer:= 21) return integer;
pragma Import(C,QFtp_connectToHost , "QFtp_connectToHost");

function  QFtp_login(handle: not null QFtpH; user,password: QStringH) return integer;
pragma Import(C,QFtp_login , "QFtp_login");

function  QFtp_login2(handle: not null QFtpH; user: QStringH) return integer;
pragma Import(C,QFtp_login2 , "QFtp_login2");

function  QFtp_login3(handle: not null QFtpH) return integer;
pragma Import(C,QFtp_login3 , "QFtp_login3");

function  QFtp_close(handle: not null QFtpH) return integer;
pragma Import(C,QFtp_close , "QFtp_close");

function  QFtp_list(handle: not null QFtpH; dir: QStringH) return integer;
pragma Import(C,QFtp_list , "QFtp_list");

function  QFtp_list1(handle: not null QFtpH) return integer;
pragma Import(C,QFtp_list1, "QFtp_list1");

function  QFtp_cd(handle: not null QFtpH; dir: QStringH) return integer;
pragma Import(C,QFtp_cd , "QFtp_cd");

function  QFtp_mkdir(handle: not null QFtpH; dir: QStringH) return integer;
pragma Import(C,QFtp_mkdir , "QFtp_mkdir");

function  QFtp_rmdir(handle: not null QFtpH; dir: QStringH) return integer;
pragma Import(C,QFtp_rmdir , "QFtp_rmdir");

function  QFtp_remove(handle: not null QFtpH; file: QStringH) return integer;
pragma Import(C,QFtp_remove , "QFtp_remove");

function  QFtp_rawCommand(handle: not null QFtpH; command: QStringH) return integer;
pragma Import(C,QFtp_rawCommand , "QFtp_rawCommand");

function  QFtp_rename(handle: not null QFtpH; oldname, newname: QStringH) return integer;
pragma Import(C,QFtp_rename , "QFtp_rename");

function  QFtp_get(handle: not null QFtpH;  fileName: QStringH; dev: QIODeviceH; trType:TransferType := Binary) return integer;
pragma Import(C,QFtp_get , "QFtp_get");

function  QFtp_get1(handle: not null QFtpH;  fileName: QStringH; trType:TransferType := Binary) return integer;
pragma Import(C,QFtp_get1 , "QFtp_get1");

function  QFtp_get2(handle: not null QFtpH;  fileName: QStringH; file: QFileH; trType:TransferType := Binary) return integer;
pragma Import(C,QFtp_get2 , "QFtp_get2");

function  QFtp_put(handle: not null QFtpH; dev: QIODeviceH;  fileName: QStringH; trType:TransferType := Binary) return integer;
pragma Import(C,QFtp_put , "QFtp_put");

function  QFtp_put2(handle: not null QFtpH; file: QFileH;  fileName: QStringH; trType:TransferType := Binary) return integer;
pragma Import(C,QFtp_put2 , "QFtp_put2");

function  QFtp_put1(handle: not null QFtpH; data: QByteArrayH; fileName: QStringH; trType:TransferType := Binary) return integer;
pragma Import(C,QFtp_put1 , "QFtp_put1");

function  QFtp_currentId(handle: not null QFtpH) return integer;
pragma Import(C,QFtp_currentId , "QFtp_currentId");

function  QFtp_currentDevice(handle: not null QFtpH) return QIODeviceH;
pragma Import(C,QFtp_currentDevice , "QFtp_currentDevice");

function  QFtp_currentCommand(handle: not null QFtpH) return Command;
pragma Import(C,QFtp_currentCommand , "QFtp_currentCommand");

function  QFtp_hasPendingCommands(handle: not null QFtpH) return boolean;
pragma Import(C,QFtp_hasPendingCommands , "QFtp_hasPendingCommands");

procedure QFtp_clearPendingCommands(handle: not null QFtpH);
pragma Import(C,QFtp_clearPendingCommands, "QFtp_clearPendingCommands");

function  QFtp_readAll(handle: not null QFtpH) return QByteArrayH;
pragma Import(C,QFtp_readAll , "QFtp_readAll");

function  QFtp_bytesAvailable(handle: not null QFtpH) return qint64;
pragma Import(C,QFtp_bytesAvailable , "QFtp_bytesAvailable");

function  QFtp_state(ftp:QFtpH) return integer;
pragma Import(C,QFtp_state, "QFtp_state");

function  QFtp_error(ftp:QFtpH) return integer;
pragma Import(C,QFtp_error, "QFtp_error");

function  QFtp_errorString(ftp:QFtpH) return QStringH;
pragma Import(C,QFtp_errorString, "QFtp_errorString");

 function  QFtp_setProxy(handle: not null  QFtpH;host:QStringH; port: integer) return integer;
 pragma Import(C,QFtp_setProxy, "QFtp_setProxy");

 function  QFtp_read(handle: not null QFtpH; data:zstring;maxlen: qint64) return qint64;
 pragma Import(C,QFtp_read, "QFtp_read");
 
 function  QFtp_setTransferMode(handle: not null  QFtpH; mode:TransferMode) return integer;
 pragma Import(C,QFtp_setTransferMode , "QFtp_setTransferMode");


 type QFtp_stateChangedEvent is access procedure(state:integer);
 pragma Convention(C,QFtp_stateChangedEvent);

 type QFtp_listInfoEvent is access procedure(urlInfo:QUrlInfoH);
 pragma Convention(C,QFtp_listInfoEvent);

 type QFtp_readyReadEvent is access procedure;
 pragma Convention(C,QFtp_readyReadEvent);

 type QFtp_dataTransferProgressEvent is access procedure(read,total:qint64);
 pragma Convention(C,QFtp_dataTransferProgressEvent);

 type QFtp_rawCommandReplyEvent is access procedure(raw:integer;command: QStringH);
 pragma Convention(C,QFtp_rawCommandReplyEvent);

 type QFtp_commandStartedEvent is access procedure(state:integer);
 pragma Convention(C,QFtp_commandStartedEvent);

 type QFtp_commandFinishedEvent is access procedure(state:integer;isOk:boolean);
 pragma Convention(C,QFtp_commandFinishedEvent);

 type QFtp_doneEvent is access procedure(isOk:boolean);
 pragma Convention(C,QFtp_doneEvent);


 procedure QFtp_signal_slot_stateChanged(handle: not null QFtpH; hook:QFtp_stateChangedEvent);
 pragma Import(C,QFtp_signal_slot_stateChanged, "QFtp_signal_slot_stateChanged");
 
 procedure QFtp_signal_slot_listInfo(handle: not null QFtpH; hook:QFtp_listInfoEvent);
 pragma Import(C,QFtp_signal_slot_listInfo, "QFtp_signal_slot_listInfo");
 
 procedure QFtp_signal_slot_readyRead(handle: not null QFtpH; hook:QFtp_readyReadEvent);
 pragma Import(C,QFtp_signal_slot_readyRead, "QFtp_signal_slot_readyRead");
 
 procedure QFtp_signal_slot_dataTransferProgress(handle: not null QFtpH; hook:QFtp_dataTransferProgressEvent);
 pragma Import(C,QFtp_signal_slot_dataTransferProgress, "QFtp_signal_slot_dataTransferProgress");
 
 procedure QFtp_signal_slot_rawCommandReply(handle: not null QFtpH; hook:QFtp_rawCommandReplyEvent);
 pragma Import(C,QFtp_signal_slot_rawCommandReply, "QFtp_signal_slot_rawCommandReply");
 
 procedure QFtp_signal_slot_commandStarted(handle: not null QFtpH; hook:QFtp_commandStartedEvent);
 pragma Import(C,QFtp_signal_slot_commandStarted, "QFtp_signal_slot_commandStarted");
 
 procedure QFtp_signal_slot_commandFinished(handle: not null QFtpH; hook:QFtp_commandFinishedEvent);
 pragma Import(C,QFtp_signal_slot_commandFinished, "QFtp_signal_slot_commandFinished");
 
 procedure QFtp_signal_slot_done(handle: not null QFtpH; hook:QFtp_doneEvent);
 pragma Import(C,QFtp_signal_slot_done, "QFtp_signal_slot_done");

------------------------------------------------------------------------------------------------------------------
function  QFtp_list(handle: not null QFtpH) return integer;
function  QFtp_get(handle: not null QFtpH;  file: QStringH) return integer;
function  QFtp_put(handle: not null QFtpH; data: QByteArrayH; file: QStringH) return integer;
function  QFtp_login(handle: not null QFtpH; user: QStringH) return integer;
function  QFtp_login(handle: not null QFtpH) return integer;
function  QFtp_get(handle: not null QFtpH;  fileName: QStringH; file: QFileH; trType:TransferType := Binary) return integer;
function  QFtp_put(handle: not null QFtpH; file: QFileH;  fileName: QStringH; trType:TransferType := Binary) return integer;

end Qt.QFtp;
