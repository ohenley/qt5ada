--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2014,2018                 บ
-- บ Copyright (C) 2012,2013,2014,2018                                 บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QEvent;     use Qt.QEvent;
with Qt.QNamespace; use Qt.QNamespace;
with builtin;       use builtin;
package Qt.QGuiApplication is

type TGuiApplicationEventFilter is access function(Msg:zstring;Res:PLong) return boolean;
pragma Convention(C,TGuiApplicationEventFilter);

subtype  QGuiApplicationEncoding is cardinal;

QGuiApplicationCodecForTr   : constant QGuiApplicationEncoding := 0;
QGuiApplicationUnicodeUTF8  : constant QGuiApplicationEncoding := 1;
QGuiApplicationDefaultCodec : constant QGuiApplicationEncoding := 0;

function QGuiApplication_create(argc: Integer_ptr; argv: void_Star; p3: Integer := QT_VERSION ) return  QApplicationH;
pragma Import(C,QGuiApplication_create,"QGuiApplication_create");

procedure QGuiApplication_destroy(handle: not null  QApplicationH);   
pragma Import(C,QGuiApplication_destroy,"QGuiApplication_destroy");

function  QGuiApplication_arguments return QStringListH;
pragma Import(C,QGuiApplication_arguments,"QGuiApplication_arguments");

procedure QGuiApplication_setAttribute(attribute: QtApplicationAttribute; on: Boolean := True);   
pragma Import(C,QGuiApplication_setAttribute,"QGuiApplication_setAttribute");

function QGuiApplication_testAttribute(attribute: QtApplicationAttribute) return  Boolean;   
pragma Import(C,QGuiApplication_testAttribute,"QGuiApplication_testAttribute");

procedure QGuiApplication_setOrganizationDomain(orgDomain: QStringH);   
pragma Import(C,QGuiApplication_setOrganizationDomain,"QGuiApplication_setOrganizationDomain");

function  QGuiApplication_organizationDomain return QStringH;
pragma Import(C,QGuiApplication_organizationDomain,"QGuiApplication_organizationDomain");

procedure QGuiApplication_setOrganizationName(orgName: QStringH);   
pragma Import(C,QGuiApplication_setOrganizationName,"QGuiApplication_setOrganizationName");

function  QGuiApplication_organizationName return QStringH;
pragma Import(C,QGuiApplication_organizationName,"QGuiApplication_organizationName");

procedure QGuiApplication_setApplicationName(application: QStringH);   
pragma Import(C,QGuiApplication_setApplicationName,"QGuiApplication_setApplicationName");

function  QGuiApplication_applicationName return QStringH;
pragma Import(C,QGuiApplication_applicationName,"QGuiApplication_applicationName");

function QGuiApplication_instance return  QApplicationH;   
pragma Import(C,QGuiApplication_instance,"QGuiApplication_instance");

function QGuiApplication_exec return  Integer;   
pragma Import(C,QGuiApplication_exec,"QGuiApplication_exec");

function QGuiApplication_exec2(handle:QApplicationH) return  Integer;   
pragma Import(C,QGuiApplication_exec2,"QGuiApplication_exec2");

procedure QGuiApplication_processEvents(flags: QEventLoopProcessEventsFlags := QEventLoopAllEvents);    
pragma Import(C,QGuiApplication_processEvents,"QGuiApplication_processEvents");

procedure QGuiApplication_processEvents2(flags: QEventLoopProcessEventsFlags; maxtime: Integer);
pragma Import(C,QGuiApplication_processEvents2,"QGuiApplication_processEvents2");

procedure QGuiApplication_exit(retcode: Integer := 0);   
pragma Import(C,QGuiApplication_exit,"QGuiApplication_exit");

function QGuiApplication_sendEvent(receiver: QObjectH; event: QEventH) return  Boolean;   
pragma Import(C,QGuiApplication_sendEvent,"QGuiApplication_sendEvent");

procedure QGuiApplication_postEvent(receiver: QObjectH; event: QEventH);    
pragma Import(C,QGuiApplication_postEvent,"QGuiApplication_postEvent");

procedure QGuiApplication_postEvent2(receiver: QObjectH; event: QEventH; priority: Integer);
pragma Import(C,QGuiApplication_postEvent2,"QGuiApplication_postEvent2");

procedure QGuiApplication_sendPostedEvents(receiver: QObjectH; event_type: Integer);    
pragma Import(C,QGuiApplication_sendPostedEvents,"QGuiApplication_sendPostedEvents");

procedure QGuiApplication_sendPostedEvents2;
pragma Import(C,QGuiApplication_sendPostedEvents2,"QGuiApplication_sendPostedEvents2");

procedure QGuiApplication_removePostedEvents(receiver: QObjectH);    
pragma Import(C,QGuiApplication_removePostedEvents,"QGuiApplication_removePostedEvents");

procedure QGuiApplication_removePostedEvents2(receiver: QObjectH; eventType: Integer);
pragma Import(C,QGuiApplication_removePostedEvents2,"QGuiApplication_removePostedEvents2");

function QGuiApplication_hasPendingEvents return  Boolean;   
pragma Import(C,QGuiApplication_hasPendingEvents,"QGuiApplication_hasPendingEvents");

function QGuiApplication_notify(handle: not null  QApplicationH; p1: QObjectH; p2: QEventH) return  Boolean;   
pragma Import(C,QGuiApplication_notify,"QGuiApplication_notify");

function QGuiApplication_startingUp return  Boolean;   
pragma Import(C,QGuiApplication_startingUp,"QGuiApplication_startingUp");

function QGuiApplication_closingDown return  Boolean;   
pragma Import(C,QGuiApplication_closingDown,"QGuiApplication_closingDown");

function  QGuiApplication_applicationDirPath return QStringH;
pragma Import(C,QGuiApplication_applicationDirPath,"QGuiApplication_applicationDirPath");

function  QGuiApplication_applicationFilePath return QStringH;
pragma Import(C,QGuiApplication_applicationFilePath,"QGuiApplication_applicationFilePath");

procedure QGuiApplication_setLibraryPaths(p1: QStringListH);   
pragma Import(C,QGuiApplication_setLibraryPaths,"QGuiApplication_setLibraryPaths");

function  QGuiApplication_libraryPaths return  QStringListH;
pragma Import(C,QGuiApplication_libraryPaths,"QGuiApplication_libraryPaths");

procedure QGuiApplication_addLibraryPath(p1: QStringH);   
pragma Import(C,QGuiApplication_addLibraryPath,"QGuiApplication_addLibraryPath");

procedure QGuiApplication_removeLibraryPath(p1: QStringH);   
pragma Import(C,QGuiApplication_removeLibraryPath,"QGuiApplication_removeLibraryPath");

procedure QGuiApplication_installTranslator(messageFile: QTranslatorH);   
pragma Import(C,QGuiApplication_installTranslator,"QGuiApplication_installTranslator");

procedure QGuiApplication_removeTranslator(messageFile: QTranslatorH);   
pragma Import(C,QGuiApplication_removeTranslator,"QGuiApplication_removeTranslator");

function  QGuiApplication_translate(context: zstring; key: zstring; disambiguation: zstring := null_ZStr; n: Integer := -1) return  QStringH;
pragma Import(C,QGuiApplication_translate,"QGuiApplication_translate2");

procedure QGuiApplication_flush;   
pragma Import(C,QGuiApplication_flush,"QGuiApplication_flush");

procedure QGuiApplication_quit;   
pragma Import(C,QGuiApplication_quit,"QGuiApplication_quit");

type  QGuiApplication_aboutToQuitEvent is access procedure;
pragma Convention(C,QGuiApplication_aboutToQuitEvent);

type  QGuiApplication_unixSignalEvent is access procedure (p1: Integer);
pragma Convention(C,QGuiApplication_unixSignalEvent);
 
 procedure QGuiApplication_signal_slot_aboutToQuit(handle: not null QApplicationH; hook:QGuiApplication_aboutToQuitEvent);
 pragma Import(C,QGuiApplication_signal_slot_aboutToQuit, "QGuiApplication_signal_slot_aboutToQuit");
 
 procedure QGuiApplication_signal_slot_unixSignal(handle: not null QApplicationH; hook:QGuiApplication_unixSignalEvent);
 pragma Import(C,QGuiApplication_signal_slot_unixSignal, "QGuiApplication_signal_slot_unixSignal");
 
---------------------------------------------------------------------------------------------------------------------
 procedure QGuiApplication_setApplicationDisplayName(name:QStringH);
 pragma Import(C,QGuiApplication_setApplicationDisplayName, "QGuiApplication_setApplicationDisplayName");
 
 function  QGuiApplication_applicationDisplayName return QStringH;
 pragma Import(C,QGuiApplication_applicationDisplayName, "QGuiApplication_applicationDisplayName");
 
 function  QGuiApplication_allWindows return QObjectListH;
 pragma Import(C,QGuiApplication_allWindows, "QGuiApplication_allWindows");
 
 function  QGuiApplication_topLevelWindows return QObjectListH;
 pragma Import(C,QGuiApplication_topLevelWindows, "QGuiApplication_topLevelWindows");
 
 function  QGuiApplication_topLevelAt(pos:QPointH) return QWindowH;
 pragma Import(C,QGuiApplication_topLevelAt, "QGuiApplication_topLevelAt");
 
 function  QGuiApplication_platformName return QStringH;
 pragma Import(C,QGuiApplication_platformName, "QGuiApplication_platformName");
 
 function  QGuiApplication_modalWindow return QWindowH;
 pragma Import(C,QGuiApplication_modalWindow, "QGuiApplication_modalWindow");
 
 function  QGuiApplication_focusWindow return QWindowH;
 pragma Import(C,QGuiApplication_focusWindow, "QGuiApplication_focusWindow");
 
 function  QGuiApplication_focusObject return QObjectH;
 pragma Import(C,QGuiApplication_focusObject, "QGuiApplication_focusObject");
 
 function  QGuiApplication_primaryScreen return QScreenH;
 pragma Import(C,QGuiApplication_primaryScreen, "QGuiApplication_primaryScreen");
 
 function  QGuiApplication_screens return QObjectListH;
 pragma Import(C,QGuiApplication_screens, "QGuiApplication_screens");
 
 function  QGuiApplication_font return QFontH;
 pragma Import(C,QGuiApplication_font, "QGuiApplication_font");
 
 procedure QGuiApplication_setFont(font:QFontH);
 pragma Import(C,QGuiApplication_setFont, "QGuiApplication_setFont");
 
 function  QGuiApplication_keyboardModifiers return QtKeyboardModifiers;
 pragma Import(C,QGuiApplication_keyboardModifiers, "QGuiApplication_keyboardModifiers");
 
 function  QGuiApplication_queryKeyboardModifiers return QtKeyboardModifiers;
 pragma Import(C,QGuiApplication_queryKeyboardModifiers, "QGuiApplication_queryKeyboardModifiers");
 
 function  QGuiApplication_mouseButtons return QtMouseButtons;
 pragma Import(C,QGuiApplication_mouseButtons, "QGuiApplication_mouseButtons");
 
 procedure QGuiApplication_setLayoutDirection( direction:QtLayoutDirection);
 pragma Import(C,QGuiApplication_setLayoutDirection, "QGuiApplication_setLayoutDirection");
 
 function  QGuiApplication_layoutDirection return QtLayoutDirection;
 pragma Import(C,QGuiApplication_layoutDirection, "QGuiApplication_layoutDirection");
 
 function  QGuiApplication_isRightToLeft return boolean;
 pragma Import(C,QGuiApplication_isRightToLeft, "QGuiApplication_isRightToLeft");
 
 function  QGuiApplication_isLeftToRight return boolean;
 pragma Import(C,QGuiApplication_isLeftToRight, "QGuiApplication_isLeftToRight");
 
 function  QGuiApplication_styleHints return QStyleHintsH;
 pragma Import(C,QGuiApplication_styleHints, "QGuiApplication_styleHints");
 
 procedure QGuiApplication_setDesktopSettingsAware(on:boolean);
 pragma Import(C,QGuiApplication_setDesktopSettingsAware, "QGuiApplication_setDesktopSettingsAware");
 
 function  QGuiApplication_desktopSettingsAware return boolean;
 pragma Import(C,QGuiApplication_desktopSettingsAware, "QGuiApplication_desktopSettingsAware");
 
 function  QGuiApplication_inputMethod return QInputMethodH;
 pragma Import(C,QGuiApplication_inputMethod, "QGuiApplication_inputMethod");
 
 function  QGuiApplication_platformNativeInterface return QPlatformNativeInterfaceH;
 pragma Import(C,QGuiApplication_platformNativeInterface, "QGuiApplication_platformNativeInterface");
 
 procedure QGuiApplication_setQuitOnLastWindowClosed(quit:boolean := true);
 pragma Import(C,QGuiApplication_setQuitOnLastWindowClosed, "QGuiApplication_setQuitOnLastWindowClosed");
 
 function  QGuiApplication_quitOnLastWindowClosed return boolean;
 pragma Import(C,QGuiApplication_quitOnLastWindowClosed, "QGuiApplication_quitOnLastWindowClosed");
 
 function  QGuiApplication_applicationState return integer;
 pragma Import(C,QGuiApplication_applicationState, "QGuiApplication_applicationState");
 
 function  QGuiApplication_devicePixelRatio(handle:not null QApplicationH) return qreal;
 pragma Import(C,QGuiApplication_devicePixelRatio, "QGuiApplication_devicePixelRatio");
 
 procedure QGuiApplication_setWindowIcon(icon:QIconH);
 pragma Import(C,QGuiApplication_setWindowIcon, "QGuiApplication_setWindowIcon");
 
 function  QGuiApplication_windowIcon return QIconH;
 pragma Import(C,QGuiApplication_windowIcon, "QGuiApplication_windowIcon");
 
 function  QGuiApplication_overrideCursor return QCursorH;
 pragma Import(C,QGuiApplication_overrideCursor, "QGuiApplication_overrideCursor");
 
 procedure QGuiApplication_setOverrideCursor(cursor:QCursorH);
 pragma Import(C,QGuiApplication_setOverrideCursor, "QGuiApplication_setOverrideCursor");
 
 procedure QGuiApplication_changeOverrideCursor(cursor:QCursorH);
 pragma Import(C,QGuiApplication_changeOverrideCursor, "QGuiApplication_changeOverrideCursor");
 
 procedure QGuiApplication_restoreOverrideCursor;
 pragma Import(C,QGuiApplication_restoreOverrideCursor, "QGuiApplication_restoreOverrideCursor");
 
 function  QGuiApplication_clipboard return QClipboardH;
 pragma Import(C,QGuiApplication_clipboard, "QGuiApplication_clipboard");
 
 function  QGuiApplication_palette return QPaletteH;
 pragma Import(C,QGuiApplication_palette, "QGuiApplication_palette");
 
 procedure QGuiApplication_setPalette(palette:QPaletteH);
 pragma Import(C,QGuiApplication_setPalette, "QGuiApplication_setPalette");
 
 function  QGuiApplication_isFallbackSessionManagementEnabled return boolean;
 pragma Import(C,QGuiApplication_isFallbackSessionManagementEnabled, "QGuiApplication_isFallbackSessionManagementEnabled");
 
 procedure QGuiApplication_setFallbackSessionManagementEnabled(flag:boolean);
 pragma Import(C,QGuiApplication_setFallbackSessionManagementEnabled, "QGuiApplication_setFallbackSessionManagementEnabled");
 
 procedure QGuiApplication_sync;
 pragma Import(C,QGuiApplication_sync, "QGuiApplication_sync");
 
 function  QGuiApplication_isSessionRestored(handle:not null QApplicationH) return boolean;
 pragma Import(C,QGuiApplication_isSessionRestored, "QGuiApplication_isSessionRestored");
 
 function  QGuiApplication_sessionId(handle:not null QApplicationH) return QStringH;
 pragma Import(C,QGuiApplication_sessionId, "QGuiApplication_sessionId");
 
 function  QGuiApplication_sessionKey(handle:not null QApplicationH) return QStringH;
 pragma Import(C,QGuiApplication_sessionKey, "QGuiApplication_sessionKey");
 
 function  QGuiApplication_isSavingSession(handle:not null QApplicationH) return boolean;
 pragma Import(C,QGuiApplication_isSavingSession, "QGuiApplication_isSavingSession");

 type QGuiApplication_fontDatabaseChangedEvent  is access procedure;
 pragma Convention(C,QGuiApplication_fontDatabaseChangedEvent);

 type QGuiApplication_lastWindowClosedEvent  is access procedure;
 pragma Convention(C,QGuiApplication_lastWindowClosedEvent);

 type QGuiApplication_applicationStateChangedEvent is access procedure (p1: Integer);
 pragma Convention(C,QGuiApplication_applicationStateChangedEvent);

 type QGuiApplication_screenAddedEvent is access procedure (p1: QScreenH);
 pragma Convention(C,QGuiApplication_screenAddedEvent);

 type QGuiApplication_focusObjectChangedEvent is access procedure (p1: QObjectH);
 pragma Convention(C,QGuiApplication_focusObjectChangedEvent);

 type QGuiApplication_focusWindowChangedEvent is access procedure (p1: QWindowH);
 pragma Convention(C,QGuiApplication_focusWindowChangedEvent);

 procedure QGuiApplication_signal_slot_fontDatabaseChanged(handle:not null QApplicationH;hook:QGuiApplication_fontDatabaseChangedEvent);
 pragma Import(C,QGuiApplication_signal_slot_fontDatabaseChanged, "QGuiApplication_signal_slot_fontDatabaseChanged");
 
 procedure QGuiApplication_signal_slot_lastWindowClosed(handle:not null QApplicationH;hook:QGuiApplication_lastWindowClosedEvent);
 pragma Import(C,QGuiApplication_signal_slot_lastWindowClosed, "QGuiApplication_signal_slot_lastWindowClosed");
 
 procedure QGuiApplication_signal_slot_applicationStateChanged(handle:not null QApplicationH;hook:QGuiApplication_applicationStateChangedEvent);
 pragma Import(C,QGuiApplication_signal_slot_applicationStateChanged, "QGuiApplication_signal_slot_applicationStateChanged");
 
 procedure QGuiApplication_signal_slot_screenAdded(handle:not null QApplicationH;hook:QGuiApplication_screenAddedEvent);
 pragma Import(C,QGuiApplication_signal_slot_screenAdded, "QGuiApplication_signal_slot_screenAdded");
 
 procedure QGuiApplication_signal_slot_focusObjectChanged(handle:not null QApplicationH;hook:QGuiApplication_focusObjectChangedEvent );
 pragma Import(C,QGuiApplication_signal_slot_focusObjectChanged, "QGuiApplication_signal_slot_focusObjectChanged");
 
 procedure QGuiApplication_signal_slot_focusWindowChanged(handle:not null QApplicationH; hook:QGuiApplication_focusWindowChangedEvent);
 pragma Import(C,QGuiApplication_signal_slot_focusWindowChanged, "QGuiApplication_signal_slot_focusWindowChanged");
 
 type fontEventProc is access procedure(font:QFontH);
 pragma convention(C,fontEventProc);
 
 procedure QGuiApplication_signal_slot_fontChanged(handle:not null QApplicationH; hook: fontEventProc);
 pragma Import(C,QGuiApplication_signal_slot_fontChanged, "QGuiApplication_signal_slot_fontChanged");
 
 procedure QGuiApplication_signal_slot_screenRemoved(handle:not null QApplicationH; hook: anyParameterCallbackH);
 pragma Import(C,QGuiApplication_signal_slot_screenRemoved, "QGuiApplication_signal_slot_screenRemoved");
 
 procedure QGuiApplication_signal_slot_primaryScreenChanged(handle:not null QApplicationH; hook: anyParameterCallbackH);
 pragma Import(C,QGuiApplication_signal_slot_primaryScreenChanged, "QGuiApplication_signal_slot_primaryScreenChanged");
 
 procedure QCheckBox_signal_slot_layoutDirectionChanged(handle:not null QApplicationH;hook: intCallbackH);
 pragma Import(C,QCheckBox_signal_slot_layoutDirectionChanged, "QCheckBox_signal_slot_layoutDirectionChanged");
 
 procedure QGuiApplication_signal_slot_paletteChanged(handle:not null QApplicationH;hook: anyParameterCallbackH);
 pragma Import(C,QGuiApplication_signal_slot_paletteChanged, "QGuiApplication_signal_slot_paletteChanged");
 
---------------------------------------------------------------------------------------------------------------------
procedure QGuiApplication_processEvents(flags: QEventLoopProcessEventsFlags; maxtime: Integer); 
procedure QGuiApplication_postEvent(receiver: QObjectH; event: QEventH; priority: Integer);
procedure QGuiApplication_sendPostedEvents; 
procedure QGuiApplication_removePostedEvents(receiver: QObjectH; eventType: Integer); 

function  QGuiApplication_create return QApplicationH;
procedure QGuiApplication_invoke(p : QApplicationH:= app; rc:integer := 0);
function  QGuiApplication_exec(handle:QApplicationH) return  Integer;   

end Qt.QGuiApplication;
