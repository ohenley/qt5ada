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

with QT.QObject; use Qt.QObject;
with builtin; use builtin;
package Qt.QSignalSlot is

type slots is (VoidSlot,FloatSlot,IntSlot,QRectSlot,QPointSlot,QSizeSlot,QUrlSlot,QObjectSlot,QActionSlot,QStringSlot,UserDataSlot,Qint64int64Slot,AnyParameterSlot,AnyParameterListSlot);
pragma Convention(C,slots);

function  IntSlot_create(slot:intCallbackH) return QSlotH;
pragma Import(C,IntSlot_create, "IntSlot_create");

function  Qint64int64Slot_create(slot:qint64int64CallbackH) return QSlotH;
pragma Import(C,Qint64int64Slot_create , "Qint64int64Slot_create");

function  VoidSlot_create(slot:voidCallbackH) return QSlotH;
pragma Import(C,VoidSlot_create,"VoidSlot_create");

function  FloatSlot_create(slot:floatCallbackH) return QSlotH;
pragma Import(C,FloatSlot_create, "FloatSlot_create");

function  QrealSlot_create(slot:qrealCallbackH) return QSlotH;
pragma Import(C,QrealSlot_create, "QrealSlot_create");

function  QRectSlot_create(slot:QRectCallbackH) return QSlotH;
pragma Import(C,QRectSlot_create, "QRectSlot_create");

function  QPointSlot_create(slot:QPointCallbackH) return QSlotH;
pragma Import(C,QPointSlot_create, "QPointSlot_create");

function  QSizeSlot_create(slot:QSizeCallbackH) return QSlotH;
pragma Import(C,QSizeSlot_create, "QSizeSlot_create");

function  QUrlSlot_create(slot:QUrlCallbackH) return QSlotH;
pragma Import(C,QUrlSlot_create, "QUrlSlot_create");

function  QSqlRecordSlot_create(slot:QSqlRecordCallbackH) return QSlotH;
pragma Import(C,QSqlRecordSlot_create, "QSqlRecordSlot_create");

function  QModelIndexSlot_create(slot:QModelIndexCallbackH) return QSlotH;
pragma Import(C,QModelIndexSlot_create, "QModelIndexSlot_create");

function  QStringSlot_create(slot:QStringCallbackH) return QSlotH;
pragma Import(C,QStringSlot_create, "QStringSlot_create");

function  QObjectSlot_create(slot:QObjectCallbackH) return QSlotH;
pragma Import(C,QObjectSlot_create, "QObjectSlot_create");

function  QActionSlot_create(slot:QActionCallbackH) return QSlotH;
pragma Import(C,QActionSlot_create, "QActionSlot_create");

function  UserDataSlot_create(slot:UserDataCallbackH;userData:void_Star) return QSlotH;
pragma Import(C,UserDataSlot_create, "UserDataSlot_create");

function AnyParameterSlot_create(slot:anyParameterCallbackH) return QSlotH;
pragma import(C,AnyParameterSlot_create ,"AnyParameterSlot_create");

function AnyParameterListSlot_create(slot:anyParameterListCallbackH) return QSlotH;
pragma import(C,AnyParameterListSlot_create ,"AnyParameterListSlot_create");

procedure QSlot_destroy(slot:QSlotH);
pragma Import(C,QSlot_destroy, "QSlot_destroy");

function  QSignal_create(parent:QObjectH := null;signal:zstring) return QSignalH;
pragma Import(C,QSignal_create, "QSignal_create");

procedure QSignal_emitInt(signal:QSignalH;i:integer);
pragma Import(C,QSignal_emitInt, "QSignal_emitInt");

procedure QSignal_emitBool(signal:QSignalH;i:boolean);
pragma Import(C,QSignal_emitBool, "QSignal_emitBool");

procedure QSignal_emitVoid(signal:QSignalH);
pragma Import(C,QSignal_emitVoid, "QSignal_emitVoid");

procedure QSignal_emitFloat(signal:QSignalH;f:float);
pragma Import(C,QSignal_emitFloat, "QSignal_emitFloat");

procedure QSignal_emitQreal(signal:QSignalH;f:qreal);
pragma Import(C,QSignal_emitQreal, "QSignal_emitQreal");

procedure QSignal_emitPointer(signal:QSignalH;p: void_Star);
pragma Import(C,QSignal_emitPointer, "QSignal_emitPointer");

procedure QSignal_emitPPointer(signal:QSignalH;p: void_Star_Star);
pragma Import(C,QSignal_emitPPointer, "QSignal_emitPPointer");

function QObject_connectToVoidSlot(sender: QObjectH; signal: string; handler : voidCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToIntSlot(sender: QObjectH; signal: string; handler : intCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToFloatSlot(sender: QObjectH; signal: string; handler : floatCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToQrealSlot(sender: QObjectH; signal: string; handler : qrealCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToQPointSlot(sender: QObjectH; signal: string; handler : QPointCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToQStringSlot(sender: QObjectH; signal: string; handler : QStringCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToAnySlot(sender: QObjectH; signal: string; 
                                  handler : anyParameterCallbackH;
                                  slot    : string := "AnyParameterSlot(void *)";
                                  Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToAnyListSlot(sender: QObjectH; signal: string; 
                                  handler : anyParameterListCallbackH;
                                  slot    : string := "AnyParameterListSlot(void **)";
                                  Connection: QtConnectionType := QtAutoConnection) return Boolean;

function QObject_connectToQObjectSlot(sender: QObjectH; signal: string; handler : QObjectCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;
function QObject_connectToQActionSlot(sender: QObjectH; signal: string; handler : QActionCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean;

------------------------------------------
 --  voidSignal()
 procedure QSignal_signal_slot_voidSignal(handle:not null QSignalH;hook: voidCallbackH);
 pragma Import(C,QSignal_signal_slot_voidSignal, "QSignal_signal_slot_voidSignal");
 
 --  boolSignal(bool)
 procedure QSignal_signal_slot_boolSignal(handle:not null QSignalH; hook: boolCallbackH);           
 pragma Import(C,QSignal_signal_slot_boolSignal, "QSignal_signal_slot_boolSignal");
 
 --  intSignal(int)
 procedure QSignal_signal_slot_intSignal(handle:not null QSignalH;hook:intCallbackH);
 pragma Import(C,QSignal_signal_slot_intSignal, "QSignal_signal_slot_intSignal");
 
 --  qrealSignal(qreal)
 procedure QSignal_signal_slot_qrealSignal(handle:not null QSignalH;hook:qrealCallbackH);
 pragma Import(C,QSignal_signal_slot_qrealSignal, "QSignal_signal_slot_qrealSignal");
 
 -- pointerSignal(void*)
 procedure QSignal_signal_slot_pointerSignal(handle:not null QSignalH;hook: anyParameterListCallbackH);
 pragma Import(C,QSignal_signal_slot_pointerSignal, "QSignal_signal_slot_pointerSignal");
 
 -- ppointerSignal(void**)
 procedure QSignal_signal_slot_ppointerSignal(handle:not null QSignalH;hook: anyParameterListCallbackH);
 pragma Import(C,QSignal_signal_slot_ppointerSignal, "QSignal_signal_slot_ppointerSignal");


end Qt.QSignalSlot;
