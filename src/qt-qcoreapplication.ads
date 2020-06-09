--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2017                      บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QEvent; use Qt.QEvent;
with Qt.QNamespace; use Qt.QNamespace;
with builtin; use builtin;
package Qt.QCoreApplication is

type TCoreApplicationEventFilter is access function(Msg:zstring;Res:PLong) return boolean;
pragma Convention(C,TCoreApplicationEventFilter);

subtype  QCoreApplicationEncoding is cardinal;

QCoreApplicationCodecForTr   : constant QCoreApplicationEncoding := 0;
QCoreApplicationUnicodeUTF8  : constant QCoreApplicationEncoding := 1;
QCoreApplicationDefaultCodec : constant QCoreApplicationEncoding := 0;

function QCoreApplication_create(argc: Integer_ptr; argv:  void_Star) return  QCoreApplicationH;
pragma Import(C,QCoreApplication_create,"QCoreApplication_create");

procedure QCoreApplication_destroy(handle: not null  QCoreApplicationH);   
pragma Import(C,QCoreApplication_destroy,"QCoreApplication_destroy");

function  QCoreApplication_arguments return QStringListH;
pragma Import(C,QCoreApplication_arguments,"QCoreApplication_arguments");

procedure QCoreApplication_setAttribute(attribute: QtApplicationAttribute; on: Boolean := True);   
pragma Import(C,QCoreApplication_setAttribute,"QCoreApplication_setAttribute");

function QCoreApplication_testAttribute(attribute: QtApplicationAttribute) return  Boolean;   
pragma Import(C,QCoreApplication_testAttribute,"QCoreApplication_testAttribute");

procedure QCoreApplication_setOrganizationDomain(orgDomain: QStringH);   
pragma Import(C,QCoreApplication_setOrganizationDomain,"QCoreApplication_setOrganizationDomain");

function  QCoreApplication_organizationDomain return QStringH;
pragma Import(C,QCoreApplication_organizationDomain,"QCoreApplication_organizationDomain");

procedure QCoreApplication_setOrganizationName(orgName: QStringH);   
pragma Import(C,QCoreApplication_setOrganizationName,"QCoreApplication_setOrganizationName");

function  QCoreApplication_organizationName return QStringH;
pragma Import(C,QCoreApplication_organizationName,"QCoreApplication_organizationName");

procedure QCoreApplication_setApplicationName(application: QStringH);   
pragma Import(C,QCoreApplication_setApplicationName,"QCoreApplication_setApplicationName");

function  QCoreApplication_applicationName return QStringH;
pragma Import(C,QCoreApplication_applicationName,"QCoreApplication_applicationName");

function QCoreApplication_instance return  QCoreApplicationH;   
pragma Import(C,QCoreApplication_instance,"QCoreApplication_instance");

function QCoreApplication_exec return  Integer;   
pragma Import(C,QCoreApplication_exec,"QCoreApplication_exec");

procedure QCoreApplication_processEvents(flags: QEventLoopProcessEventsFlags := QEventLoopAllEvents);    
pragma Import(C,QCoreApplication_processEvents,"QCoreApplication_processEvents");

procedure QCoreApplication_processEvents2(flags: QEventLoopProcessEventsFlags; maxtime: Integer);
pragma Import(C,QCoreApplication_processEvents2,"QCoreApplication_processEvents2");

procedure QCoreApplication_exit(retcode: Integer := 0);   
pragma Import(C,QCoreApplication_exit,"QCoreApplication_exit");

function QCoreApplication_sendEvent(receiver: QObjectH; event: QEventH) return  Boolean;   
pragma Import(C,QCoreApplication_sendEvent,"QCoreApplication_sendEvent");

procedure QCoreApplication_postEvent(receiver: QObjectH; event: QEventH);    
pragma Import(C,QCoreApplication_postEvent,"QCoreApplication_postEvent");

procedure QCoreApplication_postEvent2(receiver: QObjectH; event: QEventH; priority: Integer);
pragma Import(C,QCoreApplication_postEvent2,"QCoreApplication_postEvent2");

procedure QCoreApplication_sendPostedEvents(receiver: QObjectH; event_type: Integer);    
pragma Import(C,QCoreApplication_sendPostedEvents,"QCoreApplication_sendPostedEvents");

procedure QCoreApplication_sendPostedEvents2;
pragma Import(C,QCoreApplication_sendPostedEvents2,"QCoreApplication_sendPostedEvents2");

procedure QCoreApplication_removePostedEvents(receiver: QObjectH);    
pragma Import(C,QCoreApplication_removePostedEvents,"QCoreApplication_removePostedEvents");

procedure QCoreApplication_removePostedEvents2(receiver: QObjectH; eventType: Integer);
pragma Import(C,QCoreApplication_removePostedEvents2,"QCoreApplication_removePostedEvents2");

function QCoreApplication_hasPendingEvents return  Boolean;   
pragma Import(C,QCoreApplication_hasPendingEvents,"QCoreApplication_hasPendingEvents");

function QCoreApplication_notify(handle: not null  QCoreApplicationH; p1: QObjectH; p2: QEventH) return  Boolean;   
pragma Import(C,QCoreApplication_notify,"QCoreApplication_notify");

function QCoreApplication_startingUp return  Boolean;   
pragma Import(C,QCoreApplication_startingUp,"QCoreApplication_startingUp");

function QCoreApplication_closingDown return  Boolean;   
pragma Import(C,QCoreApplication_closingDown,"QCoreApplication_closingDown");

function  QCoreApplication_applicationDirPath return QStringH;
pragma Import(C,QCoreApplication_applicationDirPath,"QCoreApplication_applicationDirPath");

function  QCoreApplication_applicationFilePath return QStringH;
pragma Import(C,QCoreApplication_applicationFilePath,"QCoreApplication_applicationFilePath");

procedure QCoreApplication_setLibraryPaths(p1: QStringListH);   
pragma Import(C,QCoreApplication_setLibraryPaths,"QCoreApplication_setLibraryPaths");

function  QCoreApplication_libraryPaths return  QStringListH;
pragma Import(C,QCoreApplication_libraryPaths,"QCoreApplication_libraryPaths");

procedure QCoreApplication_addLibraryPath(p1: QStringH);   
pragma Import(C,QCoreApplication_addLibraryPath,"QCoreApplication_addLibraryPath");

procedure QCoreApplication_removeLibraryPath(p1: QStringH);   
pragma Import(C,QCoreApplication_removeLibraryPath,"QCoreApplication_removeLibraryPath");

procedure QCoreApplication_installTranslator(messageFile: QTranslatorH);   
pragma Import(C,QCoreApplication_installTranslator,"QCoreApplication_installTranslator");

procedure QCoreApplication_removeTranslator(messageFile: QTranslatorH);   
pragma Import(C,QCoreApplication_removeTranslator,"QCoreApplication_removeTranslator");

function  QCoreApplication_translate(context: zstring; key: zstring; disambiguation: zstring := null_ZStr; n: Integer := -1) return  QStringH;
pragma Import(C,QCoreApplication_translate,"QCoreApplication_translate");

procedure QCoreApplication_flush;   
pragma Import(C,QCoreApplication_flush,"QCoreApplication_flush");

procedure QCoreApplication_quit;   
pragma Import(C,QCoreApplication_quit,"QCoreApplication_quit");

type  QCoreApplication_aboutToQuitEvent is access procedure;
pragma Convention(C,QCoreApplication_aboutToQuitEvent);

type  QCoreApplication_unixSignalEvent is access procedure (p1: Integer);
pragma Convention(C,QCoreApplication_unixSignalEvent);
 
 procedure QCoreApplication_signal_slot_aboutToQuit(handle: not null QCoreApplicationH; hook:QCoreApplication_aboutToQuitEvent);
 pragma Import(C,QCoreApplication_signal_slot_aboutToQuit, "QCoreApplication_signal_slot_aboutToQuit");
 
 procedure QCoreApplication_signal_slot_unixSignal(handle: not null QCoreApplicationH; hook:QCoreApplication_unixSignalEvent);
 pragma Import(C,QCoreApplication_signal_slot_unixSignal, "QCoreApplication_signal_slot_unixSignal");
 
---------------------------------------------------------------------------------------------------------------------
procedure QCoreApplication_processEvents(flags: QEventLoopProcessEventsFlags; maxtime: Integer); 
procedure QCoreApplication_postEvent(receiver: QObjectH; event: QEventH; priority: Integer);
procedure QCoreApplication_sendPostedEvents; 
procedure QCoreApplication_removePostedEvents(receiver: QObjectH; eventType: Integer); 

function QCoreApplication_create return  QCoreApplicationH;

end Qt.QCoreApplication;
