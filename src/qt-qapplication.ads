--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2019                 บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with builtin; use builtin;
with Qt.QNamespace; use Qt.QNamespace;
package Qt.QApplication is

type  QApplicationColorSpec is  (QApplicationNormalColor,QApplicationCustomColor,QApplicationManyColor);

for   QApplicationColorSpec'size use cardinal'size;
for   QApplicationColorSpec use (
      QApplicationNormalColor => 0,
      QApplicationCustomColor => 1,
      QApplicationManyColor => 2 );


function QApplication_create(argc: integer_ptr; argv: void_Star; p3: Integer := QT_VERSION) return QApplicationH;
pragma Import(C,QApplication_create,"QApplication_create");

procedure QApplication_processEvents(handle: not null  QApplicationH);
pragma Import(C,QApplication_processEvents,"QApplication_processEvents");

function  QApplication_sender(handle: not null  QApplicationH) return QObjectH;
pragma Import(C,QApplication_sender,"QApplication_sender");

procedure QApplication_destroy(handle: not null  QApplicationH);   
pragma Import(C,QApplication_destroy,"QApplication_destroy");

function QApplication_style return  QStyleH;   
pragma Import(C,QApplication_style,"QApplication_style");

procedure QApplication_setStyle(p1: QStyleH);    
pragma Import(C,QApplication_setStyle,"QApplication_setStyle");

function QApplication_setStyle2(p1: QStringH) return  QStyleH;
pragma Import(C,QApplication_setStyle2,"QApplication_setStyle2");

function QApplication_colorSpec return  Integer;   
pragma Import(C,QApplication_colorSpec,"QApplication_colorSpec");

procedure QApplication_setColorSpec(p1: Integer);   
pragma Import(C,QApplication_setColorSpec,"QApplication_setColorSpec");

function QApplication_overrideCursor return  QCursorH;   
pragma Import(C,QApplication_overrideCursor,"QApplication_overrideCursor");

procedure QApplication_setOverrideCursor(p1: QCursorH);   
pragma Import(C,QApplication_setOverrideCursor,"QApplication_setOverrideCursor");

procedure QApplication_changeOverrideCursor(p1: QCursorH);   
pragma Import(C,QApplication_changeOverrideCursor,"QApplication_changeOverrideCursor");

procedure QApplication_restoreOverrideCursor;   
pragma Import(C,QApplication_restoreOverrideCursor,"QApplication_restoreOverrideCursor");

function  QApplication_palette return QPaletteH;
pragma Import(C,QApplication_palette,"QApplication_palette");

function  QApplication_palette2(p1: QWidgetH) return QPaletteH;
pragma Import(C,QApplication_palette2,"QApplication_palette2");

function  QApplication_palette3(className: zstring) return QPaletteH;
pragma Import(C,QApplication_palette3,"QApplication_palette3");

procedure QApplication_setPalette(p1: QPaletteH; className: zstring := null_ZStr);
pragma Import(C,QApplication_setPalette,"QApplication_setPalette");

function  QApplication_font return QFontH;
pragma Import(C,QApplication_font,"QApplication_font");

function  QApplication_font2(p1: QWidgetH) return QFontH;
pragma Import(C,QApplication_font2,"QApplication_font2");

function  QApplication_font3(className: zstring) return QFontH;
pragma Import(C,QApplication_font3,"QApplication_font3");

procedure QApplication_setFont(p1: QFontH; className: zstring := null_ZStr);
pragma Import(C,QApplication_setFont,"QApplication_setFont");

function  QApplication_fontMetrics return QFontMetricsH;
pragma Import(C,QApplication_fontMetrics,"QApplication_fontMetrics");

procedure QApplication_setWindowIcon(icon: QIconH);   
pragma Import(C,QApplication_setWindowIcon,"QApplication_setWindowIcon");

function  QApplication_windowIcon return QIconH;
pragma Import(C,QApplication_windowIcon,"QApplication_windowIcon");

function QApplication_desktop return  QDesktopWidgetH;   
pragma Import(C,QApplication_desktop,"QApplication_desktop");

function QApplication_activePopupWidget return  QWidgetH;   
pragma Import(C,QApplication_activePopupWidget,"QApplication_activePopupWidget");

function QApplication_activeModalWidget return  QWidgetH;   
pragma Import(C,QApplication_activeModalWidget,"QApplication_activeModalWidget");

function QApplication_clipboard return  QClipboardH;   
pragma Import(C,QApplication_clipboard,"QApplication_clipboard");

function QApplication_focusWidget return  QWidgetH;   
pragma Import(C,QApplication_focusWidget,"QApplication_focusWidget");

function QApplication_activeWindow return  QWidgetH;   
pragma Import(C,QApplication_activeWindow,"QApplication_activeWindow");

procedure QApplication_setActiveWindow(act: QWidgetH);   
pragma Import(C,QApplication_setActiveWindow,"QApplication_setActiveWindow");

function QApplication_widgetAt(p: QPointH) return  QWidgetH;    
pragma Import(C,QApplication_widgetAt,"QApplication_widgetAt");

function QApplication_widgetAt2(x: Integer; y: Integer) return  QWidgetH;
pragma Import(C,QApplication_widgetAt2,"QApplication_widgetAt2");

function QApplication_topLevelAt(p: QPointH) return  QWidgetH;    
pragma Import(C,QApplication_topLevelAt,"QApplication_topLevelAt");

function QApplication_topLevelAt2(x: Integer; y: Integer) return  QWidgetH;
pragma Import(C,QApplication_topLevelAt2,"QApplication_topLevelAt2");


procedure QApplication_beep;   
pragma Import(C,QApplication_beep,"QApplication_beep");

procedure QApplication_quit;
pragma Import(C,QApplication_quit,"QApplication_quit");

procedure QApplication_close;
pragma Import(C,QApplication_close,"QApplication_close");

procedure QApplication_alert(widget: QWidgetH; duration: Integer := 0);   
pragma Import(C,QApplication_alert,"QApplication_alert");

function QApplication_keyboardModifiers return  QtKeyboardModifiers;   
pragma Import(C,QApplication_keyboardModifiers,"QApplication_keyboardModifiers");

function QApplication_mouseButtons return  QtMouseButtons;   
pragma Import(C,QApplication_mouseButtons,"QApplication_mouseButtons");

procedure QApplication_setDesktopSettingsAware(p1: Boolean);   
pragma Import(C,QApplication_setDesktopSettingsAware,"QApplication_setDesktopSettingsAware");

function QApplication_desktopSettingsAware return  Boolean;   
pragma Import(C,QApplication_desktopSettingsAware,"QApplication_desktopSettingsAware");

procedure QApplication_setCursorFlashTime(p1: Integer);   
pragma Import(C,QApplication_setCursorFlashTime,"QApplication_setCursorFlashTime");

function QApplication_cursorFlashTime return  Integer;   
pragma Import(C,QApplication_cursorFlashTime,"QApplication_cursorFlashTime");

procedure QApplication_setDoubleClickInterval(p1: Integer);   
pragma Import(C,QApplication_setDoubleClickInterval,"QApplication_setDoubleClickInterval");

function QApplication_doubleClickInterval return  Integer;   
pragma Import(C,QApplication_doubleClickInterval,"QApplication_doubleClickInterval");

procedure QApplication_setKeyboardInputInterval(p1: Integer);   
pragma Import(C,QApplication_setKeyboardInputInterval,"QApplication_setKeyboardInputInterval");

function QApplication_keyboardInputInterval return  Integer;   
pragma Import(C,QApplication_keyboardInputInterval,"QApplication_keyboardInputInterval");

procedure QApplication_setWheelScrollLines(p1: Integer);   
pragma Import(C,QApplication_setWheelScrollLines,"QApplication_setWheelScrollLines");

function QApplication_wheelScrollLines return  Integer;   
pragma Import(C,QApplication_wheelScrollLines,"QApplication_wheelScrollLines");

procedure QApplication_setGlobalStrut(p1: QSizeH);   
pragma Import(C,QApplication_setGlobalStrut,"QApplication_setGlobalStrut");

function  QApplication_globalStrut return QSizeH;
pragma Import(C,QApplication_globalStrut,"QApplication_globalStrut");

procedure QApplication_setStartDragTime(ms: Integer);   
pragma Import(C,QApplication_setStartDragTime,"QApplication_setStartDragTime");

function QApplication_startDragTime return  Integer;   
pragma Import(C,QApplication_startDragTime,"QApplication_startDragTime");

procedure QApplication_setStartDragDistance(l: Integer);   
pragma Import(C,QApplication_setStartDragDistance,"QApplication_setStartDragDistance");

function QApplication_startDragDistance return  Integer;   
pragma Import(C,QApplication_startDragDistance,"QApplication_startDragDistance");

procedure QApplication_setLayoutDirection(direction: QtLayoutDirection);   
pragma Import(C,QApplication_setLayoutDirection,"QApplication_setLayoutDirection");

function QApplication_layoutDirection return  QtLayoutDirection;   
pragma Import(C,QApplication_layoutDirection,"QApplication_layoutDirection");

function QApplication_isRightToLeft return  Boolean;   
pragma Import(C,QApplication_isRightToLeft,"QApplication_isRightToLeft");

function QApplication_isLeftToRight return  Boolean;   
pragma Import(C,QApplication_isLeftToRight,"QApplication_isLeftToRight");

function QApplication_isEffectEnabled(p1: QtUIEffect) return  Boolean;   
pragma Import(C,QApplication_isEffectEnabled,"QApplication_isEffectEnabled");

procedure QApplication_setEffectEnabled(p1: QtUIEffect; enable: Boolean := True);   
pragma Import(C,QApplication_setEffectEnabled,"QApplication_setEffectEnabled");

function QApplication_isSessionRestored(handle: not null  QApplicationH) return  Boolean;   
pragma Import(C,QApplication_isSessionRestored,"QApplication_isSessionRestored");

function QApplication_sessionId(handle: not null  QApplicationH) return QStringH;
pragma Import(C,QApplication_sessionId,"QApplication_sessionId");

function QApplication_sessionKey(handle: not null  QApplicationH) return QStringH ;
pragma Import(C,QApplication_sessionKey,"QApplication_sessionKey");

function QApplication_exec return  Integer;   
pragma Import(C,QApplication_exec,"QApplication_exec");

function QApplication_notify(handle: not null  QApplicationH; p1: QObjectH; p2: QEventH) return  Boolean;   
pragma Import(C,QApplication_notify,"QApplication_notify");

procedure QApplication_setQuitOnLastWindowClosed(quit: Boolean);   
pragma Import(C,QApplication_setQuitOnLastWindowClosed,"QApplication_setQuitOnLastWindowClosed");

function QApplication_quitOnLastWindowClosed return  Boolean;   
pragma Import(C,QApplication_quitOnLastWindowClosed,"QApplication_quitOnLastWindowClosed");

function QApplication_styleSheet(handle: not null  QApplicationH) return QStringH;
pragma Import(C,QApplication_styleSheet,"QApplication_styleSheet");

procedure QApplication_setStyleSheet(handle: not null  QApplicationH; sheet: QStringH);   
pragma Import(C,QApplication_setStyleSheet,"QApplication_setStyleSheet");

procedure QApplication_closeAllWindows;   
pragma Import(C,QApplication_closeAllWindows,"QApplication_closeAllWindows");

procedure QApplication_aboutQt;   
pragma Import(C,QApplication_aboutQt,"QApplication_aboutQt");

function  QApplication_allWidgets return QObjectListH;
pragma Import(C,QApplication_allWidgets, "QApplication_allWidgets");
 
function  QApplication_topLevelWidgets return QObjectListH;
pragma Import(C,QApplication_topLevelWidgets, "QApplication_topLevelWidgets");
 
procedure QApplication_setAutoSipEnabled(handle: not null QApplicationH; enabled: boolean);
pragma Import(C,QApplication_setAutoSipEnabled, "QApplication_setAutoSipEnabled");
 
function  QApplication_autoSipEnabled(handle: not null QApplicationH) return boolean;
pragma Import(C,QApplication_autoSipEnabled, "QApplication_autoSipEnabled");

procedure QApplication_setApplicationDisplayName(name:not null QStringH);
pragma Import(C,QApplication_setApplicationDisplayName, "QApplication_setApplicationDisplayName");

function  QApplication_applicationDisplayName return QStringH;
pragma Import(C,QApplication_applicationDisplayName, "QApplication_applicationDisplayName");

function  QApplication_allWindows return QObjectListH;
pragma Import(C,QApplication_allWindows, "QApplication_allWindows");

function  QApplication_topLevelWindows return QObjectListH;
pragma Import(C,QApplication_topLevelWindows, "QApplication_topLevelWindows");

function  QApplication_platformName return QStringH;
pragma Import(C,QApplication_platformName, "QApplication_platformName");

function  QApplication_modalWindow return QWindowH;
pragma Import(C,QApplication_modalWindow, "QApplication_modalWindow");

function  QApplication_focusWindow return QWindowH;
pragma Import(C,QApplication_focusWindow, "QApplication_focusWindow");

function  QApplication_focusObject return QObjectH;
pragma Import(C,QApplication_focusObject, "QApplication_focusObject");

function  QApplication_primaryScreen return QScreenH;
pragma Import(C,QApplication_primaryScreen, "QApplication_primaryScreen");

function  QApplication_screens return QObjectListH;
pragma Import(C,QApplication_screens, "QApplication_screens");

function  QApplication_queryKeyboardModifiers return QtKeyboardModifiers;
pragma Import(C,QApplication_queryKeyboardModifiers, "QApplication_queryKeyboardModifiers");

function  QApplication_styleHints return QStyleHintsH;
pragma Import(C,QApplication_styleHints, "QApplication_styleHints");

function  QApplication_inputMethod return QInputMethodH;
pragma Import(C,QApplication_inputMethod, "QApplication_inputMethod");

function  QApplication_platformNativeInterface return QPlatformNativeInterfaceH;
pragma Import(C,QApplication_platformNativeInterface, "QApplication_platformNativeInterface");

type  QApplication_lastWindowClosed_Event is access procedure;
pragma Convention(C,QApplication_lastWindowClosed_Event );

type  QApplication_focusChanged_Event is access procedure (old: QWidgetH; now: QWidgetH);
pragma Convention(C,QApplication_focusChanged_Event );

type  QApplication_commitDataRequest_Event is access procedure (sessionManager: QSessionManagerH);
pragma Convention(C,QApplication_commitDataRequest_Event );

type  QApplication_saveStateRequest_Event is access procedure (sessionManager: QSessionManagerH);
pragma Convention(C,QApplication_saveStateRequest_Event );

type voidProc    is access procedure;
pragma Convention(C,voidProc);

type QObjectProc is access procedure(p:QObjectH);
pragma Convention(C,QObjectProc);

type QWindowProc is access procedure(p:QWindowH);
pragma Convention(C,QWindowProc);

type QScreenProc is access procedure(p:QScreenH);
pragma Convention(C,QScreenProc);

procedure QApplication_signal_slot_lastWindowClosed(handle: not null QApplicationH; hook:QApplication_lastWindowClosed_Event);
pragma Import(C,QApplication_signal_slot_lastWindowClosed, "QApplication_signal_slot_lastWindowClosed");
 
procedure QApplication_signal_slot_focusChanged(handle: not null QApplicationH; hook:QApplication_focusChanged_Event);
pragma Import(C,QApplication_signal_slot_focusChanged, "QApplication_signal_slot_focusChanged");
 
procedure QApplication_signal_slot_commitDataRequest(handle: not null QApplicationH; hook:QApplication_commitDataRequest_Event);
pragma Import(C,QApplication_signal_slot_commitDataRequest, "QApplication_signal_slot_commitDataRequest");
 
procedure QApplication_signal_slot_saveStateRequest(handle: not null QApplicationH; hook:QApplication_saveStateRequest_Event);
pragma Import(C,QApplication_signal_slot_saveStateRequest, "QApplication_signal_slot_saveStateRequest");
 
procedure QApplication_signal_slot_fontDatabaseChanged(handle: not null QApplicationH; hook: voidProc);
pragma Import(C,QApplication_signal_slot_fontDatabaseChanged, "QApplication_signal_slot_fontDatabaseChanged");

procedure QApplication_signal_slot_screenAdded(handle: not null QApplicationH; hook:QScreenProc);
pragma Import(C,QApplication_signal_slot_screenAdded, "QApplication_signal_slot_screenAdded");

procedure QApplication_signal_slot_focusObjectChanged(handle: not null QApplicationH; hook: QObjectProc);
pragma Import(C,QApplication_signal_slot_focusObjectChanged, "QApplication_signal_slot_focusObjectChanged");

procedure QApplication_signal_slot_focusWindowChanged(handle: not null QApplicationH; hook:QWindowProc);
pragma Import(C,QApplication_signal_slot_focusWindowChanged, "QApplication_signal_slot_focusWindowChanged");
 
------------------------------------------------------------------------------------------------------------------
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

procedure QGuiApplication_processEvents2(flags: integer; maxtime: Integer);
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

procedure QGuiApplication_flush;   
pragma Import(C,QGuiApplication_flush,"QGuiApplication_flush");

 function  QGuiApplication_quitOnLastWindowClosed return boolean;
 pragma Import(C,QGuiApplication_quitOnLastWindowClosed, "QGuiApplication_quitOnLastWindowClosed");
 
 function  QGuiApplication_applicationState return integer;
 pragma Import(C,QGuiApplication_applicationState, "QGuiApplication_applicationState");
 
 function  QGuiApplication_devicePixelRatio(handle:not null QApplicationH) return qreal;
 pragma Import(C,QGuiApplication_devicePixelRatio, "QGuiApplication_devicePixelRatio");
 
 type QGuiApplication_fontDatabaseChangedEvent  is access procedure;
 pragma Convention(C,QGuiApplication_fontDatabaseChangedEvent);

 type QGuiApplication_lastWindowClosedEvent  is access procedure;
 pragma Convention(C,QGuiApplication_lastWindowClosedEvent);

 type QGuiApplication_applicationStateChangedEvent is access procedure (p1: Integer);
 pragma Convention(C,QGuiApplication_applicationStateChangedEvent);

 procedure QGuiApplication_signal_slot_applicationStateChanged(handle:not null QApplicationH;hook:QGuiApplication_applicationStateChangedEvent);
 pragma Import(C,QGuiApplication_signal_slot_applicationStateChanged, "QGuiApplication_signal_slot_applicationStateChanged");
 
type  QGuiApplication_aboutToQuitEvent is access procedure;
pragma Convention(C,QGuiApplication_aboutToQuitEvent);

type  QGuiApplication_unixSignalEvent is access procedure (p1: Integer);
pragma Convention(C,QGuiApplication_unixSignalEvent);
 
 procedure QGuiApplication_signal_slot_aboutToQuit(handle: not null QApplicationH; hook:QGuiApplication_aboutToQuitEvent);
 pragma Import(C,QGuiApplication_signal_slot_aboutToQuit, "QGuiApplication_signal_slot_aboutToQuit");
 
 procedure QGuiApplication_signal_slot_unixSignal(handle: not null QApplicationH; hook:QGuiApplication_unixSignalEvent);
 pragma Import(C,QGuiApplication_signal_slot_unixSignal, "QGuiApplication_signal_slot_unixSignal");
 
 function  QApplication_InitResourcesIcons return integer;
 pragma Import(C,QApplication_InitResourcesIcons,"qInitResources_icons");

 function  QApplication_translate(context,key:zstring;n: integer := -1) return QStringH;
 pragma Import(C,QApplication_translate, "QApplication_translate");
 
 function  QApplication_translate2(context,key,disambiguation:zstring;n: integer := -1) return QStringH;      
 pragma Import(C,QApplication_translate2, "QApplication_translate2");

function  QApplication_arguments return QStringListH;
pragma Import(C,QApplication_arguments,"QApplication_arguments");
 
procedure QApplication_setApplicationVersion(application: QStringH);   
pragma Import(C,QApplication_setApplicationVersion,"QApplication_setApplicationVersion");

function  QApplication_applicationVersion return QStringH;
pragma Import(C,QApplication_applicationVersion,"QApplication_applicationVersion");
 
------------------------------------------------------------------------------------------------------------------
function  QApplication_create return QApplicationH; --2
function  QApplication_setStyle(p1: QStringH) return  QStyleH;  -- 2
function  QApplication_palette(p1: QWidgetH) return QPaletteH;  -- 2
function  QApplication_palette(className: zstring) return QPaletteH;   --3
function  QApplication_font(p1: QWidgetH) return QFontH;  --2
function  QApplication_font(className: zstring) return QFontH;  --3
function  QApplication_widgetAt(x: Integer; y: Integer) return  QWidgetH;  --2
function  QApplication_topLevelAt(x: Integer; y: Integer) return  QWidgetH;  --2

procedure QApplication_invoke(p : qApplicationH:= app; rc:integer := 0);
procedure QApplication_invoke(mWidget: QWidgetH; p : QApplicationH := app; rc:integer :=0 );
function  QApplication_translate(context,key,disambiguation:zstring;n: integer := -1) return QStringH;      
function  QApplication_connect(sender: QObjectH;objSignal : string := "clicked()"; appSlot: string := "quit()") return boolean;

end Qt.QApplication;
