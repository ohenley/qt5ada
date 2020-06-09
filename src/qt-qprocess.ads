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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QVariant ; use Qt.QVariant;
with Qt.QString  ; use Qt.QString;
with Qt.QIODevice; use Qt.QIODevice;

package Qt.QProcess   is

subtype  ProcessError is integer range 0 .. 5;
  FailedToStart : constant ProcessError := 0;
  Crashed       : constant ProcessError := 1;
  Timedout      : constant ProcessError := 2;
  ReadError     : constant ProcessError := 3;
  WriteError    : constant ProcessError := 4;
  UnknownError  : constant ProcessError := 5;
   
subtype  ProcessState is integer range 0 .. 2;
  NotRunning    : constant ProcessState := 0;
  Starting      : constant ProcessState := 1;
  Running       : constant ProcessState := 2;
    
type  ProcessChannel is (StandardOutput, StandardError);
pragma Convention(C, ProcessChannel);
    
type  ProcessChannelMode is (SeparateChannels, MergedChannels, ForwardedChannel);
pragma Convention(C, ProcessChannelMode);

 
subtype ExitStatus is integer range 0 .. 1;
 NormalExit : constant ExitStatus := 0;
 CrashExit  : constant ExitStatus := 1;

type InputChannelMode is (ManagedInputChannel,ForwardedInputChannel); 
pragma Convention(C, InputChannelMode);
        
 function  QProcess_create(parent:QObjectH) return QProcessH;
 pragma Import(c,QProcess_create, "QProcess_create");

 procedure QProcess_destroy(handle: not null  QProcessH);
 pragma Import(c,QProcess_destroy, "QProcess_destroy");

 procedure QProcess_start(handle: not null  QProcessH; program:QStringH; arguments: QStringListH; mode: QIODeviceOpenMode := QIODeviceReadWrite);
 pragma Import(c,QProcess_start, "QProcess_start");

 procedure QProcess_start2(handle: not null  QProcessH; program:QStringH; mode: QIODeviceOpenMode := QIODeviceReadWrite);
 pragma Import(c,QProcess_start2, "QProcess_start2");

 function  QProcess_readChannelMode(handle: not null  QProcessH) return ProcessChannelMode;
 pragma Import(c,QProcess_readChannelMode, "QProcess_readChannelMode");

 procedure QProcess_setReadChannelMode(handle: not null  QProcessH; mode: ProcessChannelMode);
 pragma Import(c,QProcess_setReadChannelMode, "QProcess_setReadChannelMode");

 function  QProcess_processChannelMode(handle: not null  QProcessH) return ProcessChannelMode;
 pragma Import(c,QProcess_processChannelMode, "QProcess_processChannelMode");

 procedure QProcess_setProcessChannelMode(handle: not null  QProcessH; mode: ProcessChannelMode);
 pragma Import(c,QProcess_setProcessChannelMode, "QProcess_setProcessChannelMode");

 function  QProcess_readChannel(handle: not null  QProcessH) return ProcessChannel;
 pragma Import(c,QProcess_readChannel, "QProcess_readChannel");

 procedure QProcess_setReadChannel(handle: not null  QProcessH; channel: ProcessChannel);
 pragma Import(c,QProcess_setReadChannel, "QProcess_setReadChannel");

 procedure QProcess_closeReadChannel(handle: not null  QProcessH; channel: ProcessChannel);
 pragma Import(c,QProcess_closeReadChannel, "QProcess_closeReadChannel");

 procedure QProcess_closeWriteChannel(handle: not null  QProcessH);
 pragma Import(c,QProcess_closeWriteChannel, "QProcess_closeWriteChannel");

 procedure QProcess_setStandardInputFile(handle: not null  QProcessH; fileName: QStringH);
 pragma Import(c,QProcess_setStandardInputFile, "QProcess_setStandardInputFile");

 procedure QProcess_setStandardOutputFile(handle: not null  QProcessH; fileName: QStringH; mode: quint);
 pragma Import(c,QProcess_setStandardOutputFile, "QProcess_setStandardOutputFile");

 procedure QProcess_setStandardErrorFile(handle: not null  QProcessH; fileName: QStringH; mode: quint);
 pragma Import(c,QProcess_setStandardErrorFile, "QProcess_setStandardErrorFile");

 procedure QProcess_setStandardOutputProcess(handle: not null  QProcessH; destination: QProcessH);
 pragma Import(c,QProcess_setStandardOutputProcess, "QProcess_setStandardOutputProcess");

 function  QProcess_workingDirectory(handle: not null  QProcessH) return QStringH;
 pragma Import(c,QProcess_workingDirectory, "QProcess_workingDirectory");

 procedure QProcess_setWorkingDirectory(handle: not null  QProcessH; dir: QStringH);
 pragma Import(c,QProcess_setWorkingDirectory, "QProcess_setWorkingDirectory");

 procedure QProcess_setEnvironment(handle: not null  QProcessH; environment: QStringListH);
 pragma Import(c,QProcess_setEnvironment, "QProcess_setEnvironment");

 function  QProcess_environment(handle: not null  QProcessH) return QStringListH;
 pragma Import(c,QProcess_environment, "QProcess_environment");

 function  QProcess_error(handle: not null  QProcessH) return ProcessError;
 pragma Import(c,QProcess_error, "QProcess_error");

 function  QProcess_state(handle: not null  QProcessH) return ProcessState;
 pragma Import(c,QProcess_state, "QProcess_state");

 function  QProcess_pid(handle: not null  QProcessH) return Q_PID;
 pragma Import(c,QProcess_pid, "QProcess_pid");

 function  QProcess_waitForStarted(handle: not null  QProcessH; msecs: integer) return boolean;
 pragma Import(c,QProcess_waitForStarted, "QProcess_waitForStarted");

 function  QProcess_waitForReadyRead(handle: not null  QProcessH; msecs: integer) return boolean;
 pragma Import(c,QProcess_waitForReadyRead, "QProcess_waitForReadyRead");

 function  QProcess_waitForBytesWritten(handle: not null  QProcessH; msecs: integer) return boolean;
 pragma Import(c,QProcess_waitForBytesWritten, "QProcess_waitForBytesWritten");

 function  QProcess_waitForFinished(handle: not null  QProcessH; msecs: integer) return boolean;
 pragma Import(c,QProcess_waitForFinished, "QProcess_waitForFinished");

 function  QProcess_readAllStandardOutput(handle: not null  QProcessH) return QByteArrayH;
 pragma Import(c,QProcess_readAllStandardOutput, "QProcess_readAllStandardOutput");

 function  QProcess_readAllStandardError(handle: not null  QProcessH) return QByteArrayH;
 pragma Import(c,QProcess_readAllStandardError, "QProcess_readAllStandardError");

 function  QProcess_exitCode(handle: not null  QProcessH) return integer;
 pragma Import(c,QProcess_exitCode, "QProcess_exitCode");

 function  QProcess_exitStatus(handle: not null  QProcessH) return ExitStatus;
 pragma Import(c,QProcess_exitStatus, "QProcess_exitStatus");

 function  QProcess_bytesAvailable(handle: not null  QProcessH) return long_long_integer;
 pragma Import(c,QProcess_bytesAvailable, "QProcess_bytesAvailable");

 function  QProcess_bytesToWrite(handle: not null  QProcessH) return long_long_integer;
 pragma Import(c,QProcess_bytesToWrite, "QProcess_bytesToWrite");

 function  QProcess_isSequential(handle: not null  QProcessH) return boolean;
 pragma Import(c,QProcess_isSequential, "QProcess_isSequential");

 function  QProcess_canReadLine(handle: not null  QProcessH) return boolean;
 pragma Import(c,QProcess_canReadLine, "QProcess_canReadLine");

 procedure QProcess_close(handle: not null  QProcessH);
 pragma Import(c,QProcess_close, "QProcess_close");

 function  QProcess_atEnd(handle: not null  QProcessH) return boolean;
 pragma Import(c,QProcess_atEnd, "QProcess_atEnd");

 function  QProcess_execute(program:QStringH; arguments: QStringListH) return integer;
 pragma Import(c,QProcess_execute, "QProcess_execute");

 function  QProcess_execute2(program:QStringH) return integer;
 pragma Import(c,QProcess_execute2, "QProcess_execute2");

 function  QProcess_startDetached(program:QStringH; arguments: QStringListH; workingDirectory: QStringH; pid:long_long_integer) return boolean;
 pragma Import(c,QProcess_startDetached, "QProcess_startDetached");

 function  QProcess_startDetached2(program:QStringH; arguments: QStringListH) return boolean;
 pragma Import(c,QProcess_startDetached2, "QProcess_startDetached2");

 function  QProcess_startDetached3(program:QStringH) return boolean;
 pragma Import(c,QProcess_startDetached3, "QProcess_startDetached3");

 function  QProcess_systemEnvironment return QStringListH;
 pragma Import(c,QProcess_systemEnvironment, "QProcess_systemEnvironment");

 procedure QProcess_terminate(handle: not null  QProcessH);
 pragma Import(c,QProcess_terminate, "QProcess_terminate");

 procedure QProcess_kill(handle: not null  QProcessH);
 pragma Import(c,QProcess_kill, "QProcess_kill");

 type QProcess_startedEvent    is access procedure;
 pragma Convention(C,QProcess_startedEvent);

 type QProcess_finishedEvent   is access procedure(p1:integer);
 pragma Convention(C,QProcess_finishedEvent);

 type QProcess_finished2Event  is access procedure(p1,p2:integer);
 pragma Convention(C,QProcess_finished2Event);

 type QProcess_errorEvent   is access procedure(error:integer);
 pragma Convention(C,QProcess_errorEvent);

 type QProcess_stateChangedEvent is access procedure(p1:integer);
 pragma Convention(C,QProcess_stateChangedEvent);

 type QProcess_readyReadStandardOutputEvent is access procedure;
 pragma Convention(C,QProcess_readyReadStandardOutputEvent);

 type QProcess_readyReadStandardErrorEvent is access procedure;
 pragma Convention(C,QProcess_readyReadStandardErrorEvent);
 
 procedure QProcess_signal_slot_started(handle: not null QProcessH; hook:QProcess_startedEvent);
 pragma Import(C,QProcess_signal_slot_started, "QProcess_signal_slot_started");
 
 procedure QProcess_signal_slot_finished(handle: not null QProcessH; hook:QProcess_finishedEvent);
 pragma Import(C,QProcess_signal_slot_finished, "QProcess_signal_slot_finished");
 
 procedure QProcess_signal_slot_finished2(handle: not null QProcessH; hook:QProcess_finished2Event);
 pragma Import(C,QProcess_signal_slot_finished2, "QProcess_signal_slot_finished2");
 
 procedure QProcess_signal_slot_error(handle: not null QProcessH; hook:QProcess_errorEvent);
 pragma Import(C,QProcess_signal_slot_error, "QProcess_signal_slot_error");
 
 procedure QProcess_signal_slot_stateChanged(handle: not null QProcessH; hook:QProcess_stateChangedEvent);
 pragma Import(C,QProcess_signal_slot_stateChanged, "QProcess_signal_slot_stateChanged");
 
 procedure QProcess_signal_slot_readyReadStandardOutput(handle: not null QProcessH; hook:QProcess_readyReadStandardOutputEvent);
 pragma Import(C,QProcess_signal_slot_readyReadStandardOutput, "QProcess_signal_slot_readyReadStandardOutput");
 
 procedure QProcess_signal_slot_readyReadStandardError(handle: not null QProcessH; hook:QProcess_readyReadStandardErrorEvent);
 pragma Import(C,QProcess_signal_slot_readyReadStandardError, "QProcess_signal_slot_readyReadStandardError");

 procedure QProcess_signal_slot_errorOccurred(handle:not null QProcessH; hook: intCallbackH);
 pragma Import(C,QProcess_signal_slot_errorOccurred, "QProcess_signal_slot_errorOccurred");
 
 -------------------------------------------------------------------------------------------------------------------
 procedure QProcess_start(handle: not null  QProcessH; program:QStringH; mode: QIODeviceOpenMode := QIODeviceReadWrite);
 function  QProcess_execute(program:QStringH) return integer;
 function  QProcess_startDetached(program:QStringH; arguments: QStringListH) return boolean;
 function  QProcess_startDetached(program:QStringH) return boolean;
 procedure QProcess_signal_slot_finished(handle: not null QProcessH; hook:QProcess_finished2Event);

------------------------------------------------------------------------------------------
 function  QProcessEnvironment_create return QObjectH;
 pragma Import(C,QProcessEnvironment_create, "QProcessEnvironment_create");
 
 function  QProcessEnvironment_create2(other:QObjectH) return QObjectH;
 pragma Import(C,QProcessEnvironment_create2, "QProcessEnvironment_create2");
 
 procedure QProcessEnvironment_destroy(handle:not null QObjectH);
 pragma Import(C,QProcessEnvironment_destroy, "QProcessEnvironment_destroy");
 
 procedure QProcessEnvironment_swap(handle:not null QObjectH;other:QObjectH);
 pragma Import(C,QProcessEnvironment_swap, "QProcessEnvironment_swap");
 
 function  QProcessEnvironment_isEmpty(handle:not null QObjectH) return boolean;
 pragma Import(C,QProcessEnvironment_isEmpty, "QProcessEnvironment_isEmpty");
 
 procedure QProcessEnvironment_clear(handle:not null QObjectH);
 pragma Import(C,QProcessEnvironment_clear, "QProcessEnvironment_clear");
 
 function  QProcessEnvironment_contains(handle:not null QObjectH;name:QStringH) return boolean;
 pragma Import(C,QProcessEnvironment_contains, "QProcessEnvironment_contains");
 
 procedure QProcessEnvironment_insert(handle:not null QObjectH;name:QStringH;value: QStringH);
 pragma Import(C,QProcessEnvironment_insert, "QProcessEnvironment_insert");
 
 procedure QProcessEnvironment_remove(handle:not null QObjectH;name:QStringH);
 pragma Import(C,QProcessEnvironment_remove, "QProcessEnvironment_remove");
 
 function  QProcessEnvironment_value(handle:not null QObjectH;name:QStringH;defaultValue : QStringH := QString_create) return QStringH;
 pragma Import(C,QProcessEnvironment_value, "QProcessEnvironment_value");
 
 function  QProcessEnvironment_toStringList(handle:not null QObjectH) return QStringListH;
 pragma Import(C,QProcessEnvironment_toStringList, "QProcessEnvironment_toStringList");
 
 function  QProcessEnvironment_keys(handle:not null QObjectH)  return QStringListH;
 pragma Import(C,QProcessEnvironment_keys, "QProcessEnvironment_keys");
 
 procedure QProcessEnvironment_insert2(handle:not null QObjectH;e:QObjectH);
 pragma Import(C,QProcessEnvironment_insert2, "QProcessEnvironment_insert2");
 
 function  QProcessEnvironment_systemEnvironment  return QObjectH;
 pragma Import(C,QProcessEnvironment_systemEnvironment, "QProcessEnvironment_systemEnvironment");
 
 function  QProcessEnvironment_create(other:QObjectH) return QObjectH;
 procedure QProcessEnvironment_insert(handle:not null QObjectH;e:QObjectH);

end Qt.QProcess;
