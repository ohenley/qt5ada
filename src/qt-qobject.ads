--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2019                      บ
-- บ                                                                   บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--

--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QString;  use Qt.QString;
with Qt.QNameSpace;  use Qt.QNameSpace;
with builtin; use builtin;
package Qt.QObject is

function QObject_create(parent: QObjectH := null) return QObjectH;
pragma Import(C,QObject_create,"QObject_create");

function  QObject_sender(handle: not null  QObjectH := QObjectH(app)) return QObjectH;
pragma Import(C,QObject_sender,"QObject_sender");

function  QObject_getSender(handle: not null  QObjectH := QObjectH(app)) return QObjectH;
pragma Import(C,QObject_getSender,"QObject_getSender");

procedure QObject_destroy(handle: not null  QObjectH);   
pragma Import(C,QObject_destroy,"QObject_destroy");

function QObject_event(handle: not null  QObjectH; p1: QEventH) return  Boolean;   
pragma Import(C,QObject_event,"QObject_event");

function QObject_eventFilter(handle: not null  QObjectH; p1: QObjectH; p2: QEventH) return  Boolean;   
pragma Import(C,QObject_eventFilter,"QObject_eventFilter");

function  QObject_tr(sourceText: zstring; comment: zstring := s2zs(""); n: Integer := -1) return QStringH;
pragma Import(C,QObject_tr,"QObject_tr");

function  QObject_trUtf8(sourceText: zstring; comment: zstring := s2zs(""); n: Integer := -1) return  QStringH;
pragma Import(C,QObject_trUtf8,"QObject_trUtf8");

function QObject_metaObject(handle: not null  QObjectH) return  QMetaObjectH;   
pragma Import(C,QObject_metaObject,"QObject_metaObject");

function  QObject_objectName(handle: not null  QObjectH) return QStringH;
pragma Import(C,QObject_objectName,"QObject_objectName");

procedure QObject_setObjectName(handle: not null  QObjectH; name: QStringH);   
pragma Import(C,QObject_setObjectName,"QObject_setObjectName");

function QObject_isWidgetType(handle: not null  QObjectH) return  Boolean;   
pragma Import(C,QObject_isWidgetType,"QObject_isWidgetType");

function QObject_signalsBlocked(handle: not null  QObjectH) return  Boolean;   
pragma Import(C,QObject_signalsBlocked,"QObject_signalsBlocked");

function QObject_blockSignals(handle: not null  QObjectH; b: Boolean) return  Boolean;   
pragma Import(C,QObject_blockSignals,"QObject_blockSignals");

function QObject_thread(handle: not null  QObjectH) return  QThreadH;   
pragma Import(C,QObject_thread,"QObject_thread");

procedure QObject_moveToThread(handle: not null  QObjectH; thread: QThreadH);   
pragma Import(C,QObject_moveToThread,"QObject_moveToThread");

function QObject_startTimer(handle: not null  QObjectH; interval: Integer) return  Integer;   
pragma Import(C,QObject_startTimer,"QObject_startTimer");

procedure QObject_killTimer(handle: not null  QObjectH; id: Integer);   
pragma Import(C,QObject_killTimer,"QObject_killTimer");

procedure QObject_setParent(handle: not null  QObjectH; p1: QObjectH);   
pragma Import(C,QObject_setParent,"QObject_setParent");

procedure QObject_installEventFilter(handle: not null  QObjectH; p1: QObjectH);   
pragma Import(C,QObject_installEventFilter,"QObject_installEventFilter");

procedure QObject_removeEventFilter(handle: not null  QObjectH; p1: QObjectH);   
pragma Import(C,QObject_removeEventFilter,"QObject_removeEventFilter");

function QObject_connect(sender: QObjectH; signal: zstring; receiver: QObjectH; slot: zstring; p5: QtConnectionType := QtAutoConnection) return Boolean;
pragma Import(C,QObject_connect,"QObject_connect");

function QObject_connect2(handle: not null  QObjectH; sender: QObjectH; signal: zstring; member: zstring; Connection: QtConnectionType := QtAutoConnection) return Boolean;
pragma Import(C,QObject_connect2,"QObject_connect2");

function QObject_disconnect(sender: QObjectH; signal: zstring; receiver: QObjectH; member: zstring) return  Boolean;
pragma Import(C,QObject_disconnect,"QObject_disconnect");

function QObject_disconnect1(handle: not null  QObjectH) return Boolean;
pragma Import(C,QObject_disconnect1,"QObject_disconnect1");

function QObject_disconnect3(handle: not null  QObjectH; receiver: QObjectH; member: zstring := "") return Boolean;
pragma Import(C,QObject_disconnect3,"QObject_disconnect3");

procedure QObject_dumpObjectTree(handle: not null  QObjectH);   
pragma Import(C,QObject_dumpObjectTree,"QObject_dumpObjectTree");

procedure QObject_dumpObjectInfo(handle: not null  QObjectH);   
pragma Import(C,QObject_dumpObjectInfo,"QObject_dumpObjectInfo");

function QObject_setProperty(handle: not null  QObjectH; name: zstring; value: QVariantH) return  Boolean;   
pragma Import(C,QObject_setProperty,"QObject_setProperty");

function  QObject_property(handle: not null  QObjectH; name: zstring) return QVariantH;
pragma Import(C,QObject_property,"QObject_property");

function QObject_registerUserData return  LongWord;   
pragma Import(C,QObject_registerUserData,"QObject_registerUserData");

function QObject_parent(handle: not null  QObjectH) return  QObjectH;   
pragma Import(C,QObject_parent,"QObject_parent");

function QObject_inherits(handle: not null  QObjectH; classname: zstring) return  Boolean;   
pragma Import(C,QObject_inherits,"QObject_inherits");

procedure QObject_deleteLater(handle: not null  QObjectH);   
pragma Import(C,QObject_deleteLater,"QObject_deleteLater");

procedure QObject_connectSlotsByName(handle: not null  QObjectH);
pragma Import(C,QObject_connectSlotsByName ,"QObject_connectSlotsByName");

function  QObject_voidToObject(pointer:Void_Star) return QObjectH;
pragma Import(C,QObject_voidToObject, "QObject_voidToObject");
 
function  QObject_ObjectToVoid(object:QObjectH) return Void_Star;
pragma Import(C,QObject_ObjectToVoid, "QObject_ObjectToVoid");
 
procedure QObject_timerEvent(handle: not null QObjectH;e:QTimerEventH);
pragma Import(C,QObject_timerEvent, "QObject_timerEvent");

procedure QObject_childEvent(handle: not null QObjectH;e:QChildEventH);
pragma Import(C,QObject_childEvent, "QObject_childEvent");

procedure QObject_customEvent(handle: not null QObjectH;e:QEventH);
pragma Import(C,QObject_customEvent, "QObject_customEvent");

 type QObject_pointerEvent is access procedure(addr: System.Address);
 pragma Convention(C,QObject_pointerEvent);

 procedure QObject_signal_slot_pointer(handle: not null QObjectH; sig: zstring := Qt.QString.SIGNAL("pointer(void *)"); hook: QObject_pointerEvent);
 pragma Import(C,QObject_signal_slot_pointer, "QObject_signal_slot_pointer");

 -- for any emited signals
 procedure QObject_signal_slot_custom(handle: not null QObjectH; signal : QStringH; hook: void_Star);
 pragma Import(C,QObject_signal_slot_custom, "QObject_signal_slot_custom");

 procedure QObject_emit(emit:QStringH);  -- emit -> s2qs("<Object Name>.<sigmnal>(<parameters>)")
 pragma Import(C,QObject_emit, "QObject_emit");
 
 procedure QObject_emit2(emit: zstring); -- emit -> s2zs("<Object Name>.<sigmnal>(<parameters>)")
 pragma Import(C,QObject_emit2, "QObject_emit2");

-- ------------------------  2017 --------------------------------------
 subtype  FindChildOption is integer;
 type QRegularExpressionH  is new QRegExpH;

 function  QObject_findChildren(handle:not null QObjectH;name :QStringH := QString_create;options :FindChildOption :=  FindChildrenRecursively) return QObjectListH;
 pragma Import(C,QObject_findChildren, "QObject_findChildren");
 
 function  QObject_findChildren2(handle:not null QObjectH;re:QRegExpH;options :FindChildOption :=  FindChildrenRecursively) return QObjectListH;    
 pragma Import(C,QObject_findChildren2, "QObject_findChildren2");
 
 function  QObject_findChildren3(handle:not null QObjectH;re:QRegularExpressionH;options :FindChildOption :=  FindChildrenRecursively) return QObjectListH;    
 pragma Import(C,QObject_findChildren3, "QObject_findChildren3");
 
 function  QObject_children(handle:not null QObjectH) return QObjectListH;
 pragma Import(C,QObject_children, "QObject_children");
 
------------------------------------------------------------------------------------------------------------------
function QObject_connect(handle: not null  QObjectH; sender: QObjectH; signal: zstring; member: zstring; Connection: QtConnectionType := QtAutoConnection) return Boolean;
function QObject_disconnect(handle: not null  QObjectH) return Boolean;
function QObject_disconnect(handle: not null  QObjectH; receiver: QObjectH; member: zstring := s2zs("")) return Boolean;
procedure QObject_emit(emit: zstring);
procedure QObject_quitApplication(sender: QObjectH; signaltoQuit: string; p5: QtConnectionType := QtAutoConnection);
 
 function  QObject_findChildren(handle:not null QObjectH;re:QRegExpH;options :FindChildOption :=  FindChildrenRecursively) return QObjectListH;    
 function  QObject_findChildren(handle:not null QObjectH;re:QRegularExpressionH;options :FindChildOption :=  FindChildrenRecursively) return QObjectListH;    
 function  QObject_findChild(handle:not null QObjectH;name :QStringH := QString_create;options :FindChildOption :=  FindChildrenRecursively) return QObjectH;

end Qt.QObject;
