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

package Qt.QNetworkSession is

 State_Invalid      : constant := 0;
 State_NotAvailable : constant := 1;
 State_Connecting   : constant := 2;
 State_Connected    : constant := 3;
 State_Closing      : constant := 4;
 State_Disconnected : constant := 5;
 State_Roaming      : constant := 6;

 SessionError_UnknownSessionError        : constant := 0;
 SessionError_SessionAbortedError        : constant := 0;
 SessionError_RoamingError               : constant := 0;
 SessionError_OperationNotSupportedError : constant := 0;
 SessionError_InvalidConfigurationError  : constant := 0;

 function  QNetworkSession_create(config:QNetworkConfigurationH;parent:QObjectH := null) return QNetworkSessionH;
 pragma Import(C,QNetworkSession_create, "QNetworkSession_create");
 
 procedure QNetworkSession_destroy(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_destroy, "QNetworkSession_destroy");
 
 function  QNetworkSession_isOpen(handle: not null QNetworkSessionH) return boolean;
 pragma Import(C,QNetworkSession_isOpen, "QNetworkSession_isOpen");
 
 function  QNetworkSession_configuration(handle: not null QNetworkSessionH) return QNetworkConfigurationH;
 pragma Import(C,QNetworkSession_configuration, "QNetworkSession_configuration");
 
 function  QNetworkSession_state(handle: not null QNetworkSessionH) return integer;
 pragma Import(C,QNetworkSession_state, "QNetworkSession_state");
 
 function  QNetworkSession_errorString(handle: not null QNetworkSessionH) return QStringH;
 pragma Import(C,QNetworkSession_errorString, "QNetworkSession_errorString");
 
 function  QNetworkSession_sessionProperty(handle: not null QNetworkSessionH;key:QStringH) return QVariantH;
 pragma Import(C,QNetworkSession_sessionProperty, "QNetworkSession_sessionProperty");
 
 procedure QNetworkSession_setSessionProperty(handle: not null QNetworkSessionH; key:QStringH;value: QVariantH);
 pragma Import(C,QNetworkSession_setSessionProperty, "QNetworkSession_setSessionProperty");
 
 function  QNetworkSession_bytesWritten(handle: not null QNetworkSessionH) return quint64;
 pragma Import(C,QNetworkSession_bytesWritten, "QNetworkSession_bytesWritten");
 
 function  QNetworkSession_bytesReceived(handle: not null QNetworkSessionH) return quint64;
 pragma Import(C,QNetworkSession_bytesReceived, "QNetworkSession_bytesReceived");
 
 function  QNetworkSession_activeTime(handle: not null QNetworkSessionH) return quint64;
 pragma Import(C,QNetworkSession_activeTime, "QNetworkSession_activeTime");
 
 function  QNetworkSession_waitForOpened(handle: not null QNetworkSessionH; msecs: integer := 30000) return boolean;
 pragma Import(C,QNetworkSession_waitForOpened, "QNetworkSession_waitForOpened");
 
 procedure QNetworkSession_open(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_open, "QNetworkSession_open");
 
 procedure QNetworkSession_close(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_close, "QNetworkSession_close");
 
 procedure QNetworkSession_stop(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_stop, "QNetworkSession_stop");
 
 procedure QNetworkSession_migrate(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_migrate, "QNetworkSession_migrate");
 
 procedure QNetworkSession_ignore(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_ignore, "QNetworkSession_ignore");
 
 procedure QNetworkSession_accept(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_accept, "QNetworkSession_accept");
 
 procedure QNetworkSession_reject(handle: not null QNetworkSessionH);
 pragma Import(C,QNetworkSession_reject, "QNetworkSession_reject");

 type  QNetworkSession_stateChangedEvent is access procedure(state:integer);
 pragma Convention(C,QNetworkSession_stateChangedEvent);

 type  QNetworkSession_openedEvent is access procedure;
 pragma Convention(C,QNetworkSession_openedEvent);

 type  QNetworkSession_closedEvent is access procedure;
 pragma Convention(C,QNetworkSession_closedEvent);

 type  QNetworkSession_errorEvent is access procedure(error:integer);
 pragma Convention(C,QNetworkSession_errorEvent);

 type  QNetworkSession_preferredConfigurationChangedEvent is access procedure(config:QNetworkConfigurationH;isSeamless: boolean);
 pragma Convention(C,QNetworkSession_preferredConfigurationChangedEvent);

 type  QNetworkSession_newConfigurationActivatedEvent is access procedure;
 pragma Convention(C,QNetworkSession_newConfigurationActivatedEvent);

 procedure QNetworkSession_signal_slot_stateChanged(handle: not null QNetworkSessionH; hook:QNetworkSession_stateChangedEvent);
 pragma Import(C,QNetworkSession_signal_slot_stateChanged, "QNetworkSession_signal_slot_stateChanged");
 
 procedure QNetworkSession_signal_slot_opened(handle: not null QNetworkSessionH; hook:QNetworkSession_openedEvent);
 pragma Import(C,QNetworkSession_signal_slot_opened, "QNetworkSession_signal_slot_opened");
 
 procedure QNetworkSession_signal_slot_closed(handle: not null QNetworkSessionH; hook:QNetworkSession_closedEvent);
 pragma Import(C,QNetworkSession_signal_slot_closed, "QNetworkSession_signal_slot_closed");
 
 procedure QNetworkSession_signal_slot_error(handle: not null QNetworkSessionH; hook:QNetworkSession_errorEvent);
 pragma Import(C,QNetworkSession_signal_slot_error, "QNetworkSession_signal_slot_error");
 
 procedure QNetworkSession_signal_slot_preferredConfigurationChanged(handle: not null QNetworkSessionH; hook:QNetworkSession_preferredConfigurationChangedEvent);
 pragma Import(C,QNetworkSession_signal_slot_preferredConfigurationChanged, "QNetworkSession_signal_slot_preferredConfigurationChanged");
 
 procedure QNetworkSession_signal_slot_newConfigurationActivated(handle: not null QNetworkSessionH; hook:QNetworkSession_newConfigurationActivatedEvent);
 pragma Import(C,QNetworkSession_signal_slot_newConfigurationActivated, "QNetworkSession_signal_slot_newConfigurationActivated");

end Qt.QNetworkSession;
