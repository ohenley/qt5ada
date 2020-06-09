--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2019                      บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QKeySequence; use Qt.QKeySequence;
with QT.QString;      use Qt.QString;
with Qt.QIODevice;
with builtin; use builtin;
package Qt.QEvent               is

subtype  QEventType is cardinal;

 QEventNone                             : constant QEventType := 0; -- invalid event
 QEventTimer                            : constant QEventType := 1; -- timer event
 QEventMouseButtonPress                 : constant QEventType := 2; -- mouse button pressed
 QEventMouseButtonRelease               : constant QEventType := 3; -- mouse button released
 QEventMouseButtonDblClick              : constant QEventType := 4; -- mouse button double click
 QEventMouseMove                        : constant QEventType := 5; -- mouse move
 QEventKeyPress                         : constant QEventType := 6; -- key pressed
 QEventKeyRelease                       : constant QEventType := 7; -- key released
 QEventFocusIn                          : constant QEventType := 8; -- keyboard focus received
 QEventFocusOut                         : constant QEventType := 9; -- keyboard focus lost
 QEventFocusAboutToChange               : constant QEventType := 23; -- keyboard focus is about to be lost
 QEventEnter                            : constant QEventType := 10; -- mouse enters widget
 QEventLeave                            : constant QEventType := 11; -- mouse leaves widget
 QEventPaint                            : constant QEventType := 12; -- paint widget
 QEventMove                             : constant QEventType := 13; -- move widget
 QEventResize                           : constant QEventType := 14; -- resize widget
 QEventCreate                           : constant QEventType := 15; -- after widget creation
 QEventDestroy                          : constant QEventType := 16; -- during widget destruction
 QEventShow                             : constant QEventType := 17; -- widget is shown
 QEventHide                             : constant QEventType := 18; -- widget is hidden
 QEventClose                            : constant QEventType := 19; -- request to close widget
 QEventQuit                             : constant QEventType := 20; -- request to quit application
 QEventParentChange                     : constant QEventType := 21; -- widget has been reparented
 QEventParentAboutToChange              : constant QEventType := 131; -- sent just before the parent change is done
 QEventThreadChange                     : constant QEventType := 22; -- object has changed threads
 QEventWindowActivate                   : constant QEventType := 24; -- window was activated
 QEventWindowDeactivate                 : constant QEventType := 25; -- window was deactivated
 QEventShowToParent                     : constant QEventType := 26; -- widget is shown to parent
 QEventHideToParent                     : constant QEventType := 27; -- widget is hidden to parent
 QEventWheel                            : constant QEventType := 31; -- wheel event
 QEventWindowTitleChange                : constant QEventType := 33; -- window title changed
 QEventWindowIconChange                 : constant QEventType := 34; -- icon changed
 QEventApplicationWindowIconChange      : constant QEventType := 35; -- application icon changed
 QEventApplicationFontChange            : constant QEventType := 36; -- application font changed
 QEventApplicationLayoutDirectionChange : constant QEventType := 37; -- application layout direction changed
 QEventApplicationPaletteChange         : constant QEventType := 38; -- application palette changed
 QEventPaletteChange                    : constant QEventType := 39; -- widget palette changed
 QEventClipboard                        : constant QEventType := 40; -- internal clipboard event
 QEventSpeech                           : constant QEventType := 42; -- reserved for speech input
 QEventMetaCall                         : constant QEventType := 43; -- meta call event
 QEventSockAct                          : constant QEventType := 50; -- socket activation
 QEventWinEventAct                      : constant QEventType := 132; -- win event activation
 QEventDeferredDelete                   : constant QEventType := 52; -- deferred delete event
 QEventDragEnter                        : constant QEventType := 60; -- drag moves into widget
 QEventDragMove                         : constant QEventType := 61; -- drag moves in widget
 QEventDragLeave                        : constant QEventType := 62; -- drag leaves or is cancelled
 QEventDrop                             : constant QEventType := 63; -- actual drop
 QEventDragResponse                     : constant QEventType := 64; -- drag accepted/rejected
 QEventChildAdded                       : constant QEventType := 68; -- new child widget
 QEventChildPolished                    : constant QEventType := 69; -- polished child widget
 QEventChildRemoved                     : constant QEventType := 71; -- deleted child widget
 QEventShowWindowRequest                : constant QEventType := 73; -- widget's window should be mapped
 QEventPolishRequest                    : constant QEventType := 74; -- widget should be polished
 QEventPolish                           : constant QEventType := 75; -- widget is polished
 QEventLayoutRequest                    : constant QEventType := 76; -- widget should be relayouted
 QEventUpdateRequest                    : constant QEventType := 77; -- widget should be repainted
 QEventUpdateLater                      : constant QEventType := 78; -- request update() later
 QEventEmbeddingControl                 : constant QEventType := 79; -- ActiveX embedding
 QEventActivateControl                  : constant QEventType := 80; -- ActiveX activation
 QEventDeactivateControl                : constant QEventType := 81; -- ActiveX deactivation
 QEventContextMenu                      : constant QEventType := 82; -- context popup menu
 QEventInputMethod                      : constant QEventType := 83; -- input method
 QEventTabletMove                       : constant QEventType := 87; -- Wacom tablet event
 QEventLocaleChange                     : constant QEventType := 88; -- the system locale changed
 QEventLanguageChange                   : constant QEventType := 89; -- the application language changed
 QEventLayoutDirectionChange            : constant QEventType := 90; -- the layout direction changed
 QEventStyle                            : constant QEventType := 91; -- internal style event
 QEventTabletPress                      : constant QEventType := 92; -- tablet press
 QEventTabletRelease                    : constant QEventType := 93; -- tablet release
 QEventOkRequest                        : constant QEventType := 94; -- CE (Ok) button pressed
 QEventHelpRequest                      : constant QEventType := 95; -- CE (?)  button pressed
 QEventIconDrag                         : constant QEventType := 96; -- proxy icon dragged
 QEventFontChange                       : constant QEventType := 97; -- font has changed
 QEventEnabledChange                    : constant QEventType := 98; -- enabled state has changed
 QEventActivationChange                 : constant QEventType := 99; -- window activation has changed
 QEventStyleChange                      : constant QEventType := 100; -- style has changed
 QEventIconTextChange                   : constant QEventType := 101; -- icon text has changed
 QEventModifiedChange                   : constant QEventType := 102; -- modified state has changed
 QEventMouseTrackingChange              : constant QEventType := 109; -- mouse tracking state has changed
 QEventWindowBlocked                    : constant QEventType := 103; -- window is about to be blocked modally
 QEventWindowUnblocked                  : constant QEventType := 104; -- windows modal blocking has ended
 QEventWindowStateChange                : constant QEventType := 105; 
 QEventToolTip                          : constant QEventType := 110; 
 QEventWhatsThis                        : constant QEventType := 111; 
 QEventStatusTip                        : constant QEventType := 112; 
 QEventActionChanged                    : constant QEventType := 113; 
 QEventActionAdded                      : constant QEventType := 114; 
 QEventActionRemoved                    : constant QEventType := 115; 
 QEventFileOpen                         : constant QEventType := 116; -- file open request
 QEventShortcut                         : constant QEventType := 117; -- shortcut triggered
 QEventShortcutOverride                 : constant QEventType := 51; -- shortcut override request
 QEventWhatsThisClicked                 : constant QEventType := 118; 
 QEventToolBarChange                    : constant QEventType := 120; -- toolbar visibility toggled
 QEventApplicationActivate              : constant QEventType := 121; -- application has been changed to active
 QEventApplicationActivated             : constant QEventType := QEventApplicationActivate; -- deprecated
 QEventApplicationDeactivate            : constant QEventType := 122; -- application has been changed to inactive
 QEventApplicationDeactivated           : constant QEventType := QEventApplicationDeactivate; -- deprecated
 QEventQueryWhatsThis                   : constant QEventType := 123; -- query what's this widget help
 QEventEnterWhatsThisMode               : constant QEventType := 124; 
 QEventLeaveWhatsThisMode               : constant QEventType := 125; 
 QEventZOrderChange                     : constant QEventType := 126; -- child widget has had its z-order changed
 QEventHoverEnter                       : constant QEventType := 127; -- mouse cursor enters a hover widget
 QEventHoverLeave                       : constant QEventType := 128; -- mouse cursor leaves a hover widget
 QEventHoverMove                        : constant QEventType := 129; -- mouse cursor move inside a hover widget
                                                                      -- last event id used = 132
 QEventEnterEditFocus                   : constant QEventType := 150; -- enter edit mode in keypad navigation
 QEventLeaveEditFocus                   : constant QEventType := 151; -- enter edit mode in keypad navigation
 QEventAcceptDropsChange                : constant QEventType := 152; 
 QEventZeroTimerEvent                   : constant QEventType := 154; -- Used for Windows Zero timer events
 QEventGraphicsSceneMouseMove           : constant QEventType := 155; -- GraphicsView
 QEventGraphicsSceneMousePress          : constant QEventType := 156; 
 QEventGraphicsSceneMouseRelease        : constant QEventType := 157; 
 QEventGraphicsSceneMouseDoubleClick    : constant QEventType := 158; 
 QEventGraphicsSceneContextMenu         : constant QEventType := 159; 
 QEventGraphicsSceneHoverEnter          : constant QEventType := 160; 
 QEventGraphicsSceneHoverMove           : constant QEventType := 161; 
 QEventGraphicsSceneHoverLeave          : constant QEventType := 162; 
 QEventGraphicsSceneHelp                : constant QEventType := 163; 
 QEventGraphicsSceneDragEnter           : constant QEventType := 164; 
 QEventGraphicsSceneDragMove            : constant QEventType := 165; 
 QEventGraphicsSceneDragLeave           : constant QEventType := 166; 
 QEventGraphicsSceneDrop                : constant QEventType := 167; 
 QEventGraphicsSceneWheel               : constant QEventType := 168; 
 QEventKeyboardLayoutChange             : constant QEventType := 169; -- keyboard layout changed
 QEventDynamicPropertyChange            : constant QEventType := 170; -- A dynamic property was changed through setProperty/property
 QEventTabletEnterProximity             : constant QEventType := 171; 
 QEventTabletLeaveProximity             : constant QEventType := 172; 
 QEventNonClientAreaMouseMove           : constant QEventType := 173; 
 QEventNonClientAreaMouseButtonPress    : constant QEventType := 174; 
 QEventNonClientAreaMouseButtonRelease  : constant QEventType := 175; 
 QEventNonClientAreaMouseButtonDblClick : constant QEventType := 176; 
 QEventMacSizeChange                    : constant QEventType := 177; -- when the Qt::WA_Mac{Normal;Small;Mini}Size changes
 QEventContentsRectChange               : constant QEventType := 178; -- sent by QWidget::setContentsMargins (internal)
 QEventMacGLWindowChange                : constant QEventType := 179; -- Internal! the window of the GLWidget has changed
 QEventFutureCallOut                    : constant QEventType := 180; 
 QEventGraphicsSceneResize              : constant QEventType := 181; 
 QEventGraphicsSceneMove                : constant QEventType := 182; 
 QEventCursorChange                     : constant QEventType := 183; 
 QEventToolTipChange                    : constant QEventType := 184; 
 QEventNetworkReplyUpdated              : constant QEventType := 185; -- Internal for QNetworkReply
 QEventGrabMouse                        : constant QEventType := 186; 
 QEventUngrabMouse                      : constant QEventType := 187; 
 QEventGrabKeyboard                     : constant QEventType := 188; 
 QEventUngrabKeyboard                   : constant QEventType := 189; 
 QEventMacGLClearDrawable               : constant QEventType := 191; -- Internal Cocoa; the window has changed; so we must clear
 QEventStateMachineSignal               : constant QEventType := 192; 
 QEventStateMachineWrapped              : constant QEventType := 193; 
 QEventTouchBegin                       : constant QEventType := 194; 
 QEventTouchUpdate                      : constant QEventType := 195; 
 QEventTouchEnd                         : constant QEventType := 196; 
 QEventNativeGesture                    : constant QEventType := 197; -- Internal for platform gesture support
 QEventRequestSoftwareInputPanel        : constant QEventType := 199; 
 QEventCloseSoftwareInputPanel          : constant QEventType := 200; 
 QEventWinIdChange                      : constant QEventType := 203; 
 QEventGesture                          : constant QEventType := 198; 
 QEventGestureOverride                  : constant QEventType := 202; 
 QEventScrollPrepare                    : constant QEventType := 204; 
 QEventScroll                           : constant QEventType := 205; 
 QEventExpose                           : constant QEventType := 206; 
 QEventInputMethodQuery                 : constant QEventType := 207; 
 QEventOrientationChange                : constant QEventType := 208; -- Screen orientation has changed
 QEventTouchCancel                      : constant QEventType := 209; 
 QEventThemeChange                      : constant QEventType := 210; 
 QEventSockClose                        : constant QEventType := 211; -- socket closed
 QEventPlatformPanel                    : constant QEventType := 212; 
 QEventStyleAnimationUpdate             : constant QEventType := 213; -- style animation target should be updated
                                                                      -- 512 reserved for Qt Jambi's MetaCall event
                                                                      -- 513 reserved for Qt Jambi's DeleteOnMainThread event
 QEventUser                             : constant QEventType := 1000; -- first user event id
 QEventMaxUser                          : constant QEventType := 65535; -- last user event id
 

type ScrollState is (ScrollStarted,ScrollUpdated,ScrollFinished);
pragma convention(C,ScrollState); 

function QEvent_create(qtype: QEventType) return  QEventH;
pragma Import(C,QEvent_create,"QEvent_create");

procedure QEvent_destroy(handle: not null  QEventH);   
pragma Import(C,QEvent_destroy,"QEvent_destroy");

function QEvent_type(handle: not null  QEventH) return  QEventType;   
pragma Import(C,QEvent_type,"QEvent_type");

function QEvent_spontaneous(handle: not null  QEventH) return  Boolean;   
pragma Import(C,QEvent_spontaneous,"QEvent_spontaneous");

procedure QEvent_setAccepted(handle: not null  QEventH; accepted: Boolean);   
pragma Import(C,QEvent_setAccepted,"QEvent_setAccepted");

function QEvent_isAccepted(handle: not null  QEventH) return  Boolean;   
pragma Import(C,QEvent_isAccepted,"QEvent_isAccepted");

procedure QEvent_accept(handle: not null  QEventH);   
pragma Import(C,QEvent_accept,"QEvent_accept");

procedure QEvent_ignore(handle: not null  QEventH);   
pragma Import(C,QEvent_ignore,"QEvent_ignore");

function QTimerEvent_create(timerId: Integer) return  QTimerEventH;   
pragma Import(C,QTimerEvent_create,"QTimerEvent_create");

procedure QTimerEvent_destroy(handle: not null  QTimerEventH);   
pragma Import(C,QTimerEvent_destroy,"QTimerEvent_destroy");

function QTimerEvent_timerId(handle: not null  QTimerEventH) return  Integer;   
pragma Import(C,QTimerEvent_timerId,"QTimerEvent_timerId");

function QChildEvent_create(qtype: QEventType; child: QObjectH) return  QChildEventH;
pragma Import(C,QChildEvent_create,"QChildEvent_create");

procedure QChildEvent_destroy(handle: not null  QChildEventH);   
pragma Import(C,QChildEvent_destroy,"QChildEvent_destroy");

function QChildEvent_child(handle: not null  QChildEventH) return  QObjectH;   
pragma Import(C,QChildEvent_child,"QChildEvent_child");

function QChildEvent_added(handle: not null  QChildEventH) return  Boolean;   
pragma Import(C,QChildEvent_added,"QChildEvent_added");

function QChildEvent_polished(handle: not null  QChildEventH) return  Boolean;   
pragma Import(C,QChildEvent_polished,"QChildEvent_polished");

function QChildEvent_removed(handle: not null  QChildEventH) return  Boolean;   
pragma Import(C,QChildEvent_removed,"QChildEvent_removed");

function QDynamicPropertyChangeEvent_create(name: QByteArrayH) return  QDynamicPropertyChangeEventH;   
pragma Import(C,QDynamicPropertyChangeEvent_create,"QDynamicPropertyChangeEvent_create");

procedure QDynamicPropertyChangeEvent_destroy(handle: not null  QDynamicPropertyChangeEventH);   
pragma Import(C,QDynamicPropertyChangeEvent_destroy,"QDynamicPropertyChangeEvent_destroy");

function  QDynamicPropertyChangeEvent_propertyName(handle: not null  QDynamicPropertyChangeEventH) return QByteArrayH;
pragma Import(C,QDynamicPropertyChangeEvent_propertyName,"QDynamicPropertyChangeEvent_propertyName");

subtype QEventLoopProcessEventsFlag is cardinal;
subtype QEventLoopProcessEventsFlags is QEventLoopProcessEventsFlag;
  
QEventLoopAllEvents              : constant QEventLoopProcessEventsFlag := 16#00#;
QEventLoopExcludeUserInputEvents : constant QEventLoopProcessEventsFlag := 16#01#;
QEventLoopExcludeSocketNotifiers : constant QEventLoopProcessEventsFlag := 16#02#;
QEventLoopWaitForMoreEvents      : constant QEventLoopProcessEventsFlag := 16#04#;
QEventLoopX11ExcludeTimers       : constant QEventLoopProcessEventsFlag := 16#08#;
QEventLoopDeferredDeletion       : constant QEventLoopProcessEventsFlag := 16#10#;

function QEventLoop_create(parent: QObjectH := null) return QEventLoopH;
pragma Import(C,QEventLoop_create,"QEventLoop_create");

procedure QEventLoop_destroy(handle: not null  QEventLoopH);   
pragma Import(C,QEventLoop_destroy,"QEventLoop_destroy");

function QEventLoop_processEvents(handle: not null  QEventLoopH; flags: QEventLoopProcessEventsFlags := QEventLoopAllEvents) return Boolean;
pragma Import(C,QEventLoop_processEvents,"QEventLoop_processEvents");

procedure QEventLoop_processEvents2(handle: not null  QEventLoopH; flags: QEventLoopProcessEventsFlags; maximumTime: Integer);
pragma Import(C,QEventLoop_processEvents2,"QEventLoop_processEvents2");

function QEventLoop_exec(handle: not null  QEventLoopH; flags: QEventLoopProcessEventsFlags := QEventLoopAllEvents) return Integer;
pragma Import(C,QEventLoop_exec,"QEventLoop_exec");

procedure QEventLoop_exit(handle: not null  QEventLoopH; returnCode: Integer := 0);
pragma Import(C,QEventLoop_exit,"QEventLoop_exit");

function QEventLoop_isRunning(handle: not null  QEventLoopH) return  Boolean;   
pragma Import(C,QEventLoop_isRunning,"QEventLoop_isRunning");

procedure QEventLoop_wakeUp(handle: not null  QEventLoopH);   
pragma Import(C,QEventLoop_wakeUp,"QEventLoop_wakeUp");

procedure QEventLoop_quit(handle: not null  QEventLoopH);   
pragma Import(C,QEventLoop_quit,"QEventLoop_quit");

type QTabletEventTabletDevice is (QTabletEventNoDevice, QTabletEventPuck, QTabletEventStylus, QTabletEventAirbrush, QTabletEventFourDMouse, QTabletEventXFreeEraser, QTabletEventRotationStylus );
pragma Convention(C, QTabletEventTabletDevice);

type QTabletEventvoid_StarType is (QTabletEventUnknownvoid_Star, QTabletEventPen, QTabletEventCursor, QTabletEventEraser );
pragma Convention(C, QTabletEventvoid_StarType);

type QContextMenuEventReason is (QContextMenuEventMouse, QContextMenuEventKeyboard, QContextMenuEventOther );
pragma Convention(C, QContextMenuEventReason);

type QInputMethodEventAttributeType is (QInputMethodEventTextFormat, QInputMethodEventCursor, QInputMethodEventLanguage, QInputMethodEventRuby );
pragma Convention(C, QInputMethodEventAttributeType);

function QInputEvent_create(qtype: QEventType; modifiers: QtKeyboardModifiers := QtNoModifier) return QInputEventH;   
pragma Import(C,QInputEvent_create,"QInputEvent_create");

procedure QInputEvent_destroy(handle: not null  QInputEventH);   
pragma Import(C,QInputEvent_destroy,"QInputEvent_destroy");

function QInputEvent_modifiers(handle: not null  QInputEventH) return  QtKeyboardModifiers;   
pragma Import(C,QInputEvent_modifiers,"QInputEvent_modifiers");

procedure QInputEvent_setModifiers(handle: not null QInputEventH; modifiers:quint);
pragma Import(C,QInputEvent_setModifiers, "QInputEvent_setModifiers");

function QMouseEvent_create(qtype: QEventType; pos: QPointH; button: QtMouseButton; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers) return  QMouseEventH;    
pragma Import(C,QMouseEvent_create,"QMouseEvent_create");

function QMouseEvent_create2(qtype: QEventType; pos: QPointH; globalPos: QPointH; button: QtMouseButton; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers) return  QMouseEventH;
pragma Import(C,QMouseEvent_create2,"QMouseEvent_create2");

function  QMouseEvent_create3(eventType:QEventType ; localPos,windowPos,screenPos:QPointFH;button: QtMouseButton;buttons:quint;modifiers: QtKeyboardModifiers) return QMouseEventH;
pragma Import(C,QMouseEvent_create3, "QMouseEvent_create3");

procedure QMouseEvent_destroy(handle: not null  QMouseEventH);   
pragma Import(C,QMouseEvent_destroy,"QMouseEvent_destroy");

function QMouseEvent_pos(handle: not null  QMouseEventH) return  QPointH;   
pragma Import(C,QMouseEvent_pos,"QMouseEvent_pos");

function QMouseEvent_globalPos(handle: not null  QMouseEventH) return  QPointH;   
pragma Import(C,QMouseEvent_globalPos,"QMouseEvent_globalPos");

function QMouseEvent_x(handle: not null  QMouseEventH) return  Integer;   
pragma Import(C,QMouseEvent_x,"QMouseEvent_x");

function QMouseEvent_y(handle: not null  QMouseEventH) return  Integer;   
pragma Import(C,QMouseEvent_y,"QMouseEvent_y");

function QMouseEvent_globalX(handle: not null  QMouseEventH) return  Integer;   
pragma Import(C,QMouseEvent_globalX,"QMouseEvent_globalX");

function QMouseEvent_globalY(handle: not null  QMouseEventH) return  Integer;   
pragma Import(C,QMouseEvent_globalY,"QMouseEvent_globalY");

function QMouseEvent_button(handle: not null  QMouseEventH) return  QtMouseButton;   
pragma Import(C,QMouseEvent_button,"QMouseEvent_button");

function QMouseEvent_buttons(handle: not null  QMouseEventH) return  QtMouseButtons;   
pragma Import(C,QMouseEvent_buttons,"QMouseEvent_buttons");

function  QMouseEvent_windowPos(handle:QMouseEventH) return QPointFH;
pragma Import(C,QMouseEvent_windowPos, "QMouseEvent_windowPos");
 
function  QMouseEvent_screenPos(handle:QMouseEventH) return QPointFH;
pragma Import(C,QMouseEvent_screenPos, "QMouseEvent_screenPos");

function QHoverEvent_create(qtype: QEventType; pos: QPointH; oldPos: QPointH) return  QHoverEventH;   
pragma Import(C,QHoverEvent_create,"QHoverEvent_create");

procedure QHoverEvent_destroy(handle: not null  QHoverEventH);   
pragma Import(C,QHoverEvent_destroy,"QHoverEvent_destroy");

function QHoverEvent_pos(handle: not null  QHoverEventH) return  QPointH;   
pragma Import(C,QHoverEvent_pos,"QHoverEvent_pos");

function QHoverEvent_oldPos(handle: not null  QHoverEventH) return  QPointH;   
pragma Import(C,QHoverEvent_oldPos,"QHoverEvent_oldPos");

function QWheelEvent_create(pos: QPointH; delt: Integer; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers; orient: QtOrientation := QtVertical) return QWheelEventH;    
pragma Import(C,QWheelEvent_create,"QWheelEvent_create");

function QWheelEvent_create2(pos: QPointH; globalPos: QPointH; delt: Integer; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers; orient: QtOrientation := QtVertical) return QWheelEventH;
pragma Import(C,QWheelEvent_create2,"QWheelEvent_create2");

function  QWheelEvent_create3(pos,globalPos: QPointFH; pixelDelta,angleDelta:QPointH;qtDelta:integer; orientation:QtOrientation; buttons:quint;modifiers: QtKeyboardModifiers ) return QWheelEventH;
pragma Import(C,QWheelEvent_create3, "QWheelEvent_create3");
 
procedure QWheelEvent_destroy(handle: not null  QWheelEventH);   
pragma Import(C,QWheelEvent_destroy,"QWheelEvent_destroy");

function QWheelEvent_delta(handle: not null  QWheelEventH) return  Integer;   
pragma Import(C,QWheelEvent_delta,"QWheelEvent_delta");

function QWheelEvent_angleDelta(handle: not null  QWheelEventH) return  QPointH;   
pragma Import(C,QWheelEvent_angleDelta,"QWheelEvent_angleDelta");

function QWheelEvent_pixelDelta(handle: not null  QWheelEventH) return  QPointH;   
pragma Import(C,QWheelEvent_pixelDelta,"QWheelEvent_pixelDelta");

function QWheelEvent_pos(handle: not null  QWheelEventH) return  QPointH;   
pragma Import(C,QWheelEvent_pos,"QWheelEvent_pos");

function QWheelEvent_globalPos(handle: not null  QWheelEventH) return  QPointH;   
pragma Import(C,QWheelEvent_globalPos,"QWheelEvent_globalPos");

function QWheelEvent_x(handle: not null  QWheelEventH) return  Integer;   
pragma Import(C,QWheelEvent_x,"QWheelEvent_x");

function QWheelEvent_y(handle: not null  QWheelEventH) return  Integer;   
pragma Import(C,QWheelEvent_y,"QWheelEvent_y");

function QWheelEvent_globalX(handle: not null  QWheelEventH) return  Integer;   
pragma Import(C,QWheelEvent_globalX,"QWheelEvent_globalX");

function QWheelEvent_globalY(handle: not null  QWheelEventH) return  Integer;   
pragma Import(C,QWheelEvent_globalY,"QWheelEvent_globalY");

function QWheelEvent_buttons(handle: not null  QWheelEventH) return  QtMouseButtons;   
pragma Import(C,QWheelEvent_buttons,"QWheelEvent_buttons");

function QWheelEvent_orientation(handle: not null  QWheelEventH) return  QtOrientation;   
pragma Import(C,QWheelEvent_orientation,"QWheelEvent_orientation");

function QTabletEvent_create(t: QEventType; pos: QPointH; globalPos: QPointH; device: Integer; pointerType: Integer; pressure: Double; xTilt: Integer; yTilt: Integer; tangentialPressure: Double; rotation: Double; z: Integer; keyState: QtKeyboardModifiers; uniqueID: int64) return  QTabletEventH;   
pragma Import(C,QTabletEvent_create,"QTabletEvent_create");

procedure QTabletEvent_destroy(handle: not null  QTabletEventH);   
pragma Import(C,QTabletEvent_destroy,"QTabletEvent_destroy");

function QTabletEvent_pos(handle: not null  QTabletEventH) return  QPointH;   
pragma Import(C,QTabletEvent_pos,"QTabletEvent_pos");

function QTabletEvent_globalPos(handle: not null  QTabletEventH) return  QPointH;   
pragma Import(C,QTabletEvent_globalPos,"QTabletEvent_globalPos");

function QTabletEvent_x(handle: not null  QTabletEventH) return  Integer;   
pragma Import(C,QTabletEvent_x,"QTabletEvent_x");

function QTabletEvent_y(handle: not null  QTabletEventH) return  Integer;   
pragma Import(C,QTabletEvent_y,"QTabletEvent_y");

function QTabletEvent_globalX(handle: not null  QTabletEventH) return  Integer;   
pragma Import(C,QTabletEvent_globalX,"QTabletEvent_globalX");

function QTabletEvent_globalY(handle: not null  QTabletEventH) return  Integer;   
pragma Import(C,QTabletEvent_globalY,"QTabletEvent_globalY");

function QTabletEvent_hiResGlobalX(handle: not null  QTabletEventH) return  Double;   
pragma Import(C,QTabletEvent_hiResGlobalX,"QTabletEvent_hiResGlobalX");

function QTabletEvent_hiResGlobalY(handle: not null  QTabletEventH) return  Double;   
pragma Import(C,QTabletEvent_hiResGlobalY,"QTabletEvent_hiResGlobalY");

function QTabletEvent_device(handle: not null  QTabletEventH) return  QTabletEventTabletDevice;   
pragma Import(C,QTabletEvent_device,"QTabletEvent_device");

function QTabletEvent_pointerType(handle: not null  QTabletEventH) return  QTabletEventvoid_StarType;   
pragma Import(C,QTabletEvent_pointerType,"QTabletEvent_pointerType");

function QTabletEvent_uniqueId(handle: not null  QTabletEventH) return  int64;   
pragma Import(C,QTabletEvent_uniqueId,"QTabletEvent_uniqueId");

function QTabletEvent_pressure(handle: not null  QTabletEventH) return  Double;   
pragma Import(C,QTabletEvent_pressure,"QTabletEvent_pressure");

function QTabletEvent_z(handle: not null  QTabletEventH) return  Integer;   
pragma Import(C,QTabletEvent_z,"QTabletEvent_z");

function QTabletEvent_tangentialPressure(handle: not null  QTabletEventH) return  Double;   
pragma Import(C,QTabletEvent_tangentialPressure,"QTabletEvent_tangentialPressure");

function QTabletEvent_rotation(handle: not null  QTabletEventH) return  Double;   
pragma Import(C,QTabletEvent_rotation,"QTabletEvent_rotation");

function QTabletEvent_xTilt(handle: not null  QTabletEventH) return  Integer;   
pragma Import(C,QTabletEvent_xTilt,"QTabletEvent_xTilt");

function QTabletEvent_yTilt(handle: not null  QTabletEventH) return  Integer;   
pragma Import(C,QTabletEvent_yTilt,"QTabletEvent_yTilt");

function QKeyEvent_create(qtype: QEventType; key: Integer; modifiers: QtKeyboardModifiers; text: QStringH := QString_create; autorep: Boolean := False; count: Word := 1) return QKeyEventH;   
pragma Import(C,QKeyEvent_create,"QKeyEvent_create");

procedure QKeyEvent_destroy(handle: not null  QKeyEventH);   
pragma Import(C,QKeyEvent_destroy,"QKeyEvent_destroy");

function QKeyEvent_key(handle: not null  QKeyEventH) return  Integer;   
pragma Import(C,QKeyEvent_key,"QKeyEvent_key");

function QKeyEvent_matches(handle: not null  QKeyEventH; key: QKeySequenceStandardKey) return  Boolean;   
pragma Import(C,QKeyEvent_matches,"QKeyEvent_matches");

function QKeyEvent_modifiers(handle: not null  QKeyEventH) return  QtKeyboardModifiers;   
pragma Import(C,QKeyEvent_modifiers,"QKeyEvent_modifiers");

function  QKeyEvent_text(handle: not null  QKeyEventH) return QStringH;
pragma Import(C,QKeyEvent_text,"QKeyEvent_text");

function QKeyEvent_isAutoRepeat(handle: not null  QKeyEventH) return  Boolean;   
pragma Import(C,QKeyEvent_isAutoRepeat,"QKeyEvent_isAutoRepeat");

function QKeyEvent_count(handle: not null  QKeyEventH) return  Integer;   
pragma Import(C,QKeyEvent_count,"QKeyEvent_count");

--function QKeyEvent_createExtendedKeyEvent(qtype: QEventType; key: Integer; modifiers: QtKeyboardModifiers; nativeScanCode: LongWord; nativeVirtualKey: LongWord; nativeModifiers: LongWord; text: QStringH := null; autorep: Boolean := False; count: Word := 1) return QKeyEventH;   
--pragma Import(C,QKeyEvent_createExtendedKeyEvent,"QKeyEvent_createExtendedKeyEvent");

--function QKeyEvent_hasExtendedInfo(handle: not null  QKeyEventH) return  Boolean;   
--pragma Import(C,QKeyEvent_hasExtendedInfo,"QKeyEvent_hasExtendedInfo");

function QKeyEvent_nativeScanCode(handle: not null  QKeyEventH) return  LongWord;   
pragma Import(C,QKeyEvent_nativeScanCode,"QKeyEvent_nativeScanCode");

function QKeyEvent_nativeVirtualKey(handle: not null  QKeyEventH) return  LongWord;   
pragma Import(C,QKeyEvent_nativeVirtualKey,"QKeyEvent_nativeVirtualKey");

function QKeyEvent_nativeModifiers(handle: not null  QKeyEventH) return  LongWord;   
pragma Import(C,QKeyEvent_nativeModifiers,"QKeyEvent_nativeModifiers");

function QFocusEvent_create(qtype: QEventType; reason: QtFocusReason := QtOtherFocusReason) return QFocusEventH;   
pragma Import(C,QFocusEvent_create,"QFocusEvent_create");

procedure QFocusEvent_destroy(handle: not null  QFocusEventH);   
pragma Import(C,QFocusEvent_destroy,"QFocusEvent_destroy");

function QFocusEvent_gotFocus(handle: not null  QFocusEventH) return  Boolean;   
pragma Import(C,QFocusEvent_gotFocus,"QFocusEvent_gotFocus");

function QFocusEvent_lostFocus(handle: not null  QFocusEventH) return  Boolean;   
pragma Import(C,QFocusEvent_lostFocus,"QFocusEvent_lostFocus");

function QFocusEvent_reason(handle: not null  QFocusEventH) return   QtFocusReason;
pragma Import(C,QFocusEvent_reason,"QFocusEvent_reason");

function QPaintEvent_create(paintRegion: QRegionH) return  QPaintEventH;    
pragma Import(C,QPaintEvent_create,"QPaintEvent_create");

procedure QPaintEvent_destroy(handle: not null  QPaintEventH);   
pragma Import(C,QPaintEvent_destroy,"QPaintEvent_destroy");

function QPaintEvent_create2(paintRect: QRectH) return  QPaintEventH;
pragma Import(C,QPaintEvent_create2,"QPaintEvent_create2");

function  QPaintEvent_rect(handle: not null  QPaintEventH) return QRectH;
pragma Import(C,QPaintEvent_rect,"QPaintEvent_rect");

function QPaintEvent_region(handle: not null  QPaintEventH) return  QRegionH;   
pragma Import(C,QPaintEvent_region,"QPaintEvent_region");

function QMoveEvent_create(pos: QPointH; oldPos: QPointH) return  QMoveEventH;   
pragma Import(C,QMoveEvent_create,"QMoveEvent_create");

procedure QMoveEvent_destroy(handle: not null  QMoveEventH);   
pragma Import(C,QMoveEvent_destroy,"QMoveEvent_destroy");

function QMoveEvent_pos(handle: not null  QMoveEventH) return  QPointH;   
pragma Import(C,QMoveEvent_pos,"QMoveEvent_pos");

function QMoveEvent_oldPos(handle: not null  QMoveEventH) return  QPointH;   
pragma Import(C,QMoveEvent_oldPos,"QMoveEvent_oldPos");

function QResizeEvent_create(size: QSizeH; oldSize: QSizeH) return  QResizeEventH;   
pragma Import(C,QResizeEvent_create,"QResizeEvent_create");

procedure QResizeEvent_destroy(handle: not null  QResizeEventH);   
pragma Import(C,QResizeEvent_destroy,"QResizeEvent_destroy");

function QResizeEvent_size(handle: not null  QResizeEventH) return  QSizeH;   
pragma Import(C,QResizeEvent_size,"QResizeEvent_size");

function QResizeEvent_oldSize(handle: not null  QResizeEventH) return  QSizeH;   
pragma Import(C,QResizeEvent_oldSize,"QResizeEvent_oldSize");

function QCloseEvent_create return  QCloseEventH;   
pragma Import(C,QCloseEvent_create,"QCloseEvent_create");

procedure QCloseEvent_destroy(handle: not null  QCloseEventH);   
pragma Import(C,QCloseEvent_destroy,"QCloseEvent_destroy");

function QIconDragEvent_create return  QIconDragEventH;   
pragma Import(C,QIconDragEvent_create,"QIconDragEvent_create");

procedure QIconDragEvent_destroy(handle: not null  QIconDragEventH);   
pragma Import(C,QIconDragEvent_destroy,"QIconDragEvent_destroy");
function QShowEvent_create return  QShowEventH;   
pragma Import(C,QShowEvent_create,"QShowEvent_create");

procedure QShowEvent_destroy(handle: not null  QShowEventH);   
pragma Import(C,QShowEvent_destroy,"QShowEvent_destroy");

function QHideEvent_create return  QHideEventH;   
pragma Import(C,QHideEvent_create,"QHideEvent_create");

procedure QHideEvent_destroy(handle: not null  QHideEventH);   
pragma Import(C,QHideEvent_destroy,"QHideEvent_destroy");

function QContextMenuEvent_create(reason: QContextMenuEventReason; pos: QPointH; globalPos: QPointH) return  QContextMenuEventH;    
pragma Import(C,QContextMenuEvent_create,"QContextMenuEvent_create");

procedure QContextMenuEvent_destroy(handle: not null  QContextMenuEventH);   
pragma Import(C,QContextMenuEvent_destroy,"QContextMenuEvent_destroy");

function QContextMenuEvent_create2(reason: QContextMenuEventReason; pos: QPointH) return  QContextMenuEventH;
pragma Import(C,QContextMenuEvent_create2,"QContextMenuEvent_create2");

function QContextMenuEvent_x(handle: not null  QContextMenuEventH) return  Integer;   
pragma Import(C,QContextMenuEvent_x,"QContextMenuEvent_x");

function QContextMenuEvent_y(handle: not null  QContextMenuEventH) return  Integer;   
pragma Import(C,QContextMenuEvent_y,"QContextMenuEvent_y");

function QContextMenuEvent_globalX(handle: not null  QContextMenuEventH) return  Integer;   
pragma Import(C,QContextMenuEvent_globalX,"QContextMenuEvent_globalX");

function QContextMenuEvent_globalY(handle: not null  QContextMenuEventH) return  Integer;   
pragma Import(C,QContextMenuEvent_globalY,"QContextMenuEvent_globalY");

function QContextMenuEvent_pos(handle: not null  QContextMenuEventH) return  QPointH;   
pragma Import(C,QContextMenuEvent_pos,"QContextMenuEvent_pos");

function QContextMenuEvent_globalPos(handle: not null  QContextMenuEventH) return  QPointH;   
pragma Import(C,QContextMenuEvent_globalPos,"QContextMenuEvent_globalPos");

function QContextMenuEvent_reason(handle: not null  QContextMenuEventH) return  QContextMenuEventReason;   
pragma Import(C,QContextMenuEvent_reason,"QContextMenuEvent_reason");

function QInputMethodEvent_create return  QInputMethodEventH;    
pragma Import(C,QInputMethodEvent_create,"QInputMethodEvent_create");

function  QInputMethodEvent_create2(preeditText:QStringH; attributes:QObjectListH) return QInputMethodEventH;
pragma Import(C,QInputMethodEvent_create2, "QInputMethodEvent_create2");
 
function  QInputMethodEvent_create3(other: QInputMethodEventH) return QInputMethodEventH;
pragma Import(C,QInputMethodEvent_create3, "QInputMethodEvent_create3");

procedure QInputMethodEvent_destroy(handle: not null  QInputMethodEventH);   
pragma Import(C,QInputMethodEvent_destroy,"QInputMethodEvent_destroy");

procedure QInputMethodEvent_setCommitString(handle: not null  QInputMethodEventH; commitString: QStringH; replaceFrom: Integer := 0; replaceLength: Integer := 0);   
pragma Import(C,QInputMethodEvent_setCommitString,"QInputMethodEvent_setCommitString");

function  QInputMethodEvent_preeditString(handle: not null  QInputMethodEventH) return  QStringH;
pragma Import(C,QInputMethodEvent_preeditString,"QInputMethodEvent_preeditString");

function  QInputMethodEvent_commitString(handle: not null  QInputMethodEventH) return QStringH;
pragma Import(C,QInputMethodEvent_commitString,"QInputMethodEvent_commitString");

function QInputMethodEvent_replacementStart(handle: not null  QInputMethodEventH) return  Integer;   
pragma Import(C,QInputMethodEvent_replacementStart,"QInputMethodEvent_replacementStart");

function QInputMethodEvent_replacementLength(handle: not null  QInputMethodEventH) return  Integer;   
pragma Import(C,QInputMethodEvent_replacementLength,"QInputMethodEvent_replacementLength");

function  QInputMethodQueryEvent_create(queries:quint) return QInputMethodQueryEventH;
pragma Import(C,QInputMethodQueryEvent_create, "QInputMethodQueryEvent_create");
 
procedure QInputMethodQueryEvent_destroy(handle:QInputMethodQueryEventH);
pragma Import(C,QInputMethodQueryEvent_destroy, "QInputMethodQueryEvent_destroy");
 
function  QInputMethodQueryEvent_queries(handle:QInputMethodQueryEventH) return quint;
pragma Import(C,QInputMethodQueryEvent_queries, "QInputMethodQueryEvent_queries");
 

function QDropEvent_create(pos: QPointH; actions: QtDropActions; data: QMimeDataH; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers; qtype: QEventType) return  QDropEventH;   
pragma Import(C,QDropEvent_create,"QDropEvent_create");

procedure QDropEvent_destroy(handle: not null  QDropEventH);   
pragma Import(C,QDropEvent_destroy,"QDropEvent_destroy");

function QDropEvent_pos(handle: not null  QDropEventH) return  QPointH;   
pragma Import(C,QDropEvent_pos,"QDropEvent_pos");

function  QDropEvent_posF(handle:QDropEventH) return QPointFH;
pragma Import(C,QDropEvent_posF, "QDropEvent_posF");

function QDropEvent_mouseButtons(handle: not null  QDropEventH) return  QtMouseButtons;   
pragma Import(C,QDropEvent_mouseButtons,"QDropEvent_mouseButtons");

function QDropEvent_keyboardModifiers(handle: not null  QDropEventH) return  QtKeyboardModifiers;   
pragma Import(C,QDropEvent_keyboardModifiers,"QDropEvent_keyboardModifiers");

function QDropEvent_possibleActions(handle: not null  QDropEventH) return  QtDropActions;   
pragma Import(C,QDropEvent_possibleActions,"QDropEvent_possibleActions");

function QDropEvent_proposedAction(handle: not null  QDropEventH) return  QtDropAction;   
pragma Import(C,QDropEvent_proposedAction,"QDropEvent_proposedAction");

procedure QDropEvent_acceptProposedAction(handle: not null  QDropEventH);   
pragma Import(C,QDropEvent_acceptProposedAction,"QDropEvent_acceptProposedAction");

function QDropEvent_dropAction(handle: not null  QDropEventH) return  QtDropAction;   
pragma Import(C,QDropEvent_dropAction,"QDropEvent_dropAction");

procedure QDropEvent_setDropAction(handle: not null  QDropEventH; action: QtDropAction);   
pragma Import(C,QDropEvent_setDropAction,"QDropEvent_setDropAction");

function QDropEvent_source(handle: not null  QDropEventH) return  QWidgetH;   
pragma Import(C,QDropEvent_source,"QDropEvent_source");

function QDropEvent_mimeData(handle: not null  QDropEventH) return  QMimeDataH;   
pragma Import(C,QDropEvent_mimeData,"QDropEvent_mimeData");

--function QDropEvent_format(handle: not null  QDropEventH; n: Integer := 0) return string;   
--pragma Import(C,QDropEvent_format,"QDropEvent_format");

--function  QDropEvent_encodedData(handle: not null  QDropEventH; p1: zstring) return QByteArrayH;
--pragma Import(C,QDropEvent_encodedData,"QDropEvent_encodedData");

--function QDropEvent_provides(handle: not null  QDropEventH; p1: zstring) return  Boolean;   
--pragma Import(C,QDropEvent_provides,"QDropEvent_provides");

function QDragMoveEvent_create(pos: QPointH; actions: QtDropActions; data: QMimeDataH; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers; qtype: QEventType) return  QDragMoveEventH;   
pragma Import(C,QDragMoveEvent_create,"QDragMoveEvent_create");

procedure QDragMoveEvent_destroy(handle: not null  QDragMoveEventH);   
pragma Import(C,QDragMoveEvent_destroy,"QDragMoveEvent_destroy");

function  QDragMoveEvent_answerRect(handle: not null  QDragMoveEventH) return QRectH;
pragma Import(C,QDragMoveEvent_answerRect,"QDragMoveEvent_answerRect");

procedure QDragMoveEvent_accept(handle: not null  QDragMoveEventH);    
pragma Import(C,QDragMoveEvent_accept,"QDragMoveEvent_accept");

procedure QDragMoveEvent_ignore(handle: not null  QDragMoveEventH);    
pragma Import(C,QDragMoveEvent_ignore,"QDragMoveEvent_ignore");

procedure QDragMoveEvent_accept2(handle: not null  QDragMoveEventH; r: QRectH);
pragma Import(C,QDragMoveEvent_accept2,"QDragMoveEvent_accept2");

procedure QDragMoveEvent_ignore2(handle: not null  QDragMoveEventH; r: QRectH);
pragma Import(C,QDragMoveEvent_ignore2,"QDragMoveEvent_ignore2");

function QDragEnterEvent_create(pos: QPointH; actions: QtDropActions; data: QMimeDataH; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers) return  QDragEnterEventH;   
pragma Import(C,QDragEnterEvent_create,"QDragEnterEvent_create");

procedure QDragEnterEvent_destroy(handle: not null  QDragEnterEventH);   
pragma Import(C,QDragEnterEvent_destroy,"QDragEnterEvent_destroy");

function QDragLeaveEvent_create return  QDragLeaveEventH;   
pragma Import(C,QDragLeaveEvent_create,"QDragLeaveEvent_create");

procedure QDragLeaveEvent_destroy(handle: not null  QDragLeaveEventH);   
pragma Import(C,QDragLeaveEvent_destroy,"QDragLeaveEvent_destroy");

function  QExposeEvent_create(region:QRegionH) return QExposeEventH;
pragma Import(C,QExposeEvent_create, "QExposeEvent_create");
 
procedure QExposeEvent_destroy(handle:QExposeEventH);
pragma Import(C,QExposeEvent_destroy, "QExposeEvent_destroy");
 
function  QExposeEvent_region(handle:QExposeEventH) return QRegionH;
pragma Import(C,QExposeEvent_region, "QExposeEvent_region");

function QHelpEvent_create(qtype: QEventType; pos: QPointH; globalPos: QPointH) return  QHelpEventH;   
pragma Import(C,QHelpEvent_create,"QHelpEvent_create");

procedure QHelpEvent_destroy(handle: not null  QHelpEventH);   
pragma Import(C,QHelpEvent_destroy,"QHelpEvent_destroy");

function QHelpEvent_x(handle: not null  QHelpEventH) return  Integer;   
pragma Import(C,QHelpEvent_x,"QHelpEvent_x");

function QHelpEvent_y(handle: not null  QHelpEventH) return  Integer;   
pragma Import(C,QHelpEvent_y,"QHelpEvent_y");

function QHelpEvent_globalX(handle: not null  QHelpEventH) return  Integer;   
pragma Import(C,QHelpEvent_globalX,"QHelpEvent_globalX");

function QHelpEvent_globalY(handle: not null  QHelpEventH) return  Integer;   
pragma Import(C,QHelpEvent_globalY,"QHelpEvent_globalY");

function QHelpEvent_pos(handle: not null  QHelpEventH) return  QPointH;   
pragma Import(C,QHelpEvent_pos,"QHelpEvent_pos");

function QHelpEvent_globalPos(handle: not null  QHelpEventH) return  QPointH;   
pragma Import(C,QHelpEvent_globalPos,"QHelpEvent_globalPos");

function QStatusTipEvent_create(tip: QStringH) return  QStatusTipEventH;   
pragma Import(C,QStatusTipEvent_create,"QStatusTipEvent_create");

procedure QStatusTipEvent_destroy(handle: not null  QStatusTipEventH);   
pragma Import(C,QStatusTipEvent_destroy,"QStatusTipEvent_destroy");

function  QStatusTipEvent_tip(handle: not null  QStatusTipEventH) return QStringH;
pragma Import(C,QStatusTipEvent_tip,"QStatusTipEvent_tip");

function QWhatsThisClickedEvent_create(href: QStringH) return  QWhatsThisClickedEventH;   
pragma Import(C,QWhatsThisClickedEvent_create,"QWhatsThisClickedEvent_create");

procedure QWhatsThisClickedEvent_destroy(handle: not null  QWhatsThisClickedEventH);   
pragma Import(C,QWhatsThisClickedEvent_destroy,"QWhatsThisClickedEvent_destroy");

function  QWhatsThisClickedEvent_href(handle: not null  QWhatsThisClickedEventH) return QStringH;
pragma Import(C,QWhatsThisClickedEvent_href,"QWhatsThisClickedEvent_href");

function QActionEvent_create(qtype: Integer; action: QActionH; before: QActionH := null) return QActionEventH;   
pragma Import(C,QActionEvent_create,"QActionEvent_create");

procedure QActionEvent_destroy(handle: not null  QActionEventH);   
pragma Import(C,QActionEvent_destroy,"QActionEvent_destroy");

function QActionEvent_action(handle: not null  QActionEventH) return  QActionH;   
pragma Import(C,QActionEvent_action,"QActionEvent_action");

function QActionEvent_before(handle: not null  QActionEventH) return  QActionH;   
pragma Import(C,QActionEvent_before,"QActionEvent_before");

function QFileOpenEvent_create(file: QStringH) return  QFileOpenEventH;   
pragma Import(C,QFileOpenEvent_create,"QFileOpenEvent_create");

procedure QFileOpenEvent_destroy(handle: not null  QFileOpenEventH);   
pragma Import(C,QFileOpenEvent_destroy,"QFileOpenEvent_destroy");

function  QFileOpenEvent_file(handle: not null  QFileOpenEventH) return QStringH;
pragma Import(C,QFileOpenEvent_file,"QFileOpenEvent_file");

function  QFileOpenEvent_url(handle:QFileOpenEventH) return QUrlH;
pragma Import(C,QFileOpenEvent_url, "QFileOpenEvent_url");
 
function  QFileOpenEvent_openFile(handle:QFileOpenEventH;file:QFileH;flags:Qt.QIODevice.QIODeviceOpenMode) return boolean;
pragma Import(C,QFileOpenEvent_openFile, "QFileOpenEvent_openFile");

function QShortcutEvent_create(key: QKeySequenceH; id: Integer; ambiguous: Boolean := False) return QShortcutEventH;   
pragma Import(C,QShortcutEvent_create,"QShortcutEvent_create");

procedure QShortcutEvent_destroy(handle: not null  QShortcutEventH);   
pragma Import(C,QShortcutEvent_destroy,"QShortcutEvent_destroy");

function QShortcutEvent_key(handle: not null  QShortcutEventH) return   QKeySequenceH;
pragma Import(C,QShortcutEvent_key,"QShortcutEvent_key");

function QShortcutEvent_shortcutId(handle: not null  QShortcutEventH) return   Integer;
pragma Import(C,QShortcutEvent_shortcutId,"QShortcutEvent_shortcutId");

function QShortcutEvent_isAmbiguous(handle: not null  QShortcutEventH) return   Boolean;
pragma Import(C,QShortcutEvent_isAmbiguous,"QShortcutEvent_isAmbiguous");

function QWindowStateChangeEvent_create(aOldState: QtWindowStates) return  QWindowStateChangeEventH;    
pragma Import(C,QWindowStateChangeEvent_create,"QWindowStateChangeEvent_create");

procedure QWindowStateChangeEvent_destroy(handle: not null  QWindowStateChangeEventH);   
pragma Import(C,QWindowStateChangeEvent_destroy,"QWindowStateChangeEvent_destroy");

function QWindowStateChangeEvent_create2(aOldState: QtWindowStates; isOverride: Boolean) return  QWindowStateChangeEventH;
pragma Import(C,QWindowStateChangeEvent_create2,"QWindowStateChangeEvent_create2");

function QWindowStateChangeEvent_oldState(handle: not null  QWindowStateChangeEventH) return  QtWindowStates;   
pragma Import(C,QWindowStateChangeEvent_oldState,"QWindowStateChangeEvent_oldState");

function QWindowStateChangeEvent_isOverride(handle: not null  QWindowStateChangeEventH) return  Boolean;   
pragma Import(C,QWindowStateChangeEvent_isOverride,"QWindowStateChangeEvent_isOverride");

function  QChildEvent_create2(tp:integer;child: QObjectH) return QChildEventH;
pragma Import(C,QChildEvent_create2, "QChildEvent_create2");

function  QChildEvent_inserted(childEvent:QChildEventH) return integer;
pragma Import(C,QChildEvent_inserted, "QChildEvent_inserted");

function  QChildEvent_removed2(childEvent:QChildEventH) return integer;
pragma Import(C,QChildEvent_removed2, "QChildEvent_removed2");
  
 function  QTouchEvent_create(eventType:QEventType;device:QTouchDeviceH := null;modifiers:QtKeyboardModifiers := QtNoModifier; touchPointState:quint := 0; touchPoints: QObjectListH) return QTouchEventH;
 pragma Import(C,QTouchEvent_create, "QTouchEvent_create");
 
 procedure QTouchEvent_destroy(handle:QTouchEventH);
 pragma Import(C,QTouchEvent_destroy, "QTouchEvent_destroy");
 
 function  QTouchEvent_window(handle:QTouchEventH) return QWindowH;
 pragma Import(C,QTouchEvent_window, "QTouchEvent_window");
 
 function  QTouchEvent_target(handle:QTouchEventH) return QObjectH;
 pragma Import(C,QTouchEvent_target, "QTouchEvent_target");
 
 function  QTouchEvent_touchPointStates(handle:QTouchEventH) return quint;
 pragma Import(C,QTouchEvent_touchPointStates, "QTouchEvent_touchPointStates");
 
 function  QTouchEvent_touchPoints(handle:QTouchEventH) return QObjectListH;
 pragma Import(C,QTouchEvent_touchPoints, "QTouchEvent_touchPoints");
 
 function  QTouchEvent_device(handle:QTouchEventH) return QTouchDeviceH;
 pragma Import(C,QTouchEvent_device, "QTouchEvent_device");
 
 procedure QTouchEvent_setWindow(handle:QTouchEventH;window:QWindowH);
 pragma Import(C,QTouchEvent_setWindow, "QTouchEvent_setWindow");
 
 procedure QTouchEvent_setTarget(handle:QTouchEventH;target:QObjectH);
 pragma Import(C,QTouchEvent_setTarget, "QTouchEvent_setTarget");
 
 procedure QTouchEvent_setTouchPointStates(handle:QTouchEventH;touchPointStates:quint);
 pragma Import(C,QTouchEvent_setTouchPointStates, "QTouchEvent_setTouchPointStates");
 
 procedure QTouchEvent_setDevice(handle:QTouchEventH;device:QTouchDeviceH);
 pragma Import(C,QTouchEvent_setDevice, "QTouchEvent_setDevice");
 
 function  QScrollPrepareEvent_create(startPos:QPointFH) return QScrollPrepareEventH;
 pragma Import(C,QScrollPrepareEvent_create, "QScrollPrepareEvent_create");
 
 procedure QScrollPrepareEvent_destroy(handle:QScrollPrepareEventH);
 pragma Import(C,QScrollPrepareEvent_destroy, "QScrollPrepareEvent_destroy");
 
 function  QScrollPrepareEvent_startPos(handle:QScrollPrepareEventH) return QPointFH;
 pragma Import(C,QScrollPrepareEvent_startPos, "QScrollPrepareEvent_startPos");
 
 function  QScrollPrepareEvent_viewportSize(handle:QScrollPrepareEventH) return QSizeFH;
 pragma Import(C,QScrollPrepareEvent_viewportSize, "QScrollPrepareEvent_viewportSize");
 
 function  QScrollPrepareEvent_contentPosRange(handle:QScrollPrepareEventH) return QRectFH;
 pragma Import(C,QScrollPrepareEvent_contentPosRange, "QScrollPrepareEvent_contentPosRange");
 
 function  QScrollPrepareEvent_contentPos(handle:QScrollPrepareEventH) return QPointFH;
 pragma Import(C,QScrollPrepareEvent_contentPos, "QScrollPrepareEvent_contentPos");
 
 procedure QScrollPrepareEvent_setViewportSize(handle:QScrollPrepareEventH;size:QSizeFH);
 pragma Import(C,QScrollPrepareEvent_setViewportSize, "QScrollPrepareEvent_setViewportSize");
 
 procedure QScrollPrepareEvent_setContentPosRange(handle:QScrollPrepareEventH;rect:QRectFH);
 pragma Import(C,QScrollPrepareEvent_setContentPosRange, "QScrollPrepareEvent_setContentPosRange");
 
 procedure QScrollPrepareEvent_setContentPos(handle:QScrollPrepareEventH;pos:QPointFH);
 pragma Import(C,QScrollPrepareEvent_setContentPos, "QScrollPrepareEvent_setContentPos");
 
 function  QScrollEvent_create(contentPos,overshoot:QPointFH;scroll_State:ScrollState) return QScrollEventH;
 pragma Import(C,QScrollEvent_create, "QScrollEvent_create");
 
 procedure QScrollEvent_destroy(handle:QScrollEventH);
 pragma Import(C,QScrollEvent_destroy, "QScrollEvent_destroy");
 
 function  QScrollEvent_contentPos(handle:QScrollEventH) return QPointFH;
 pragma Import(C,QScrollEvent_contentPos, "QScrollEvent_contentPos");
 
 function  QScrollEvent_overshootDistance(handle:QScrollEventH) return QPointFH;
 pragma Import(C,QScrollEvent_overshootDistance, "QScrollEvent_overshootDistance");
 
 function  QScrollEvent_scrollState(handle:QScrollEventH) return ScrollState;
 pragma Import(C,QScrollEvent_scrollState, "QScrollEvent_scrollState");
 
 function  QScreenOrientationChangeEvent_create(screen:QScreenH; orientation :QtScreenOrientation) return QScreenOrientationChangeEventH;
 pragma Import(C,QScreenOrientationChangeEvent_create, "QScreenOrientationChangeEvent_create");
 
 procedure QScreenOrientationChangeEvent_destroy(handle:QScreenOrientationChangeEventH);
 pragma Import(C,QScreenOrientationChangeEvent_destroy, "QScreenOrientationChangeEvent_destroy");
 
 function  QScreenOrientationChangeEvent_screen(handle:QScreenOrientationChangeEventH) return QScreenH;
 pragma Import(C,QScreenOrientationChangeEvent_screen, "QScreenOrientationChangeEvent_screen");
 
 function  QScreenOrientationChangeEvent_orientation(handle:QScreenOrientationChangeEventH) return QtScreenOrientation;
 pragma Import(C,QScreenOrientationChangeEvent_orientation, "QScreenOrientationChangeEvent_orientation");
 

---------------------------------------------------------------------------------------------------------------------

function  QChildEvent_create(tp:integer;child: QObjectH) return QChildEventH;
function  QChildEvent_removed(childEvent:QChildEventH) return integer;

procedure QEventLoop_processEvents(handle: not null  QEventLoopH; flags: QEventLoopProcessEventsFlags; maximumTime: Integer);
function QMouseEvent_create(qtype: QEventType; pos: QPointH; globalPos: QPointH; button: QtMouseButton; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers) return  QMouseEventH;
function QWheelEvent_create(pos: QPointH; globalPos: QPointH; delt: Integer; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers; orient: QtOrientation := QtVertical) return QWheelEventH;
function QPaintEvent_create(paintRect: QRectH) return  QPaintEventH;
function QContextMenuEvent_create(reason: QContextMenuEventReason; pos: QPointH) return  QContextMenuEventH;
procedure QDragMoveEvent_accept(handle: not null  QDragMoveEventH; r: QRectH);
procedure QDragMoveEvent_ignore(handle: not null  QDragMoveEventH; r: QRectH);
function QWindowStateChangeEvent_create(aOldState: QtWindowStates; isOverride: Boolean) return  QWindowStateChangeEventH;

function QInputMethodEvent_create(other: QInputMethodEventH) return  QInputMethodEventH;

function  QMouseEvent_create(eventType:QEventType ; localPos,windowPos,screenPos:QPointFH;button: QtMouseButton;buttons:quint;modifiers: QtKeyboardModifiers) return QMouseEventH;
function  QWheelEvent_create(pos,globalPos: QPointFH; pixelDelta,angleDelta:QPointH; qtDelta:integer; orientation:QtOrientation; buttons:quint;modifiers: QtKeyboardModifiers ) return QWheelEventH;
function  QInputMethodEvent_create(preeditText:QStringH; attributes:QObjectListH) return QInputMethodEventH;

end Qt.QEvent;
