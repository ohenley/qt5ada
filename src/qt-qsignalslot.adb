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
   
with Qt.QString; 
package body Qt.QSignalSlot is

function QObject_connectToVoidSlot(sender: QObjectH; signal: string; handler : voidCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := voidSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("voidSlot()"),
                          p5          => Connection
                         ); 
 return ret;
end  QObject_connectToVoidSlot;

function QObject_connectToIntSlot(sender: QObjectH; signal: string; handler : intCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := intSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("intSlot(int)"),
                          p5          => Connection
                         ); 
 return ret;
end  QObject_connectToIntSlot;

function QObject_connectToFloatSlot(sender: QObjectH; signal: string; handler : floatCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := floatSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("floatSlot(float)"),
                          p5          => Connection
                         ); 

 return ret;
end  QObject_connectToFloatSlot;

function QObject_connectToQrealSlot(sender: QObjectH; signal: string; handler : qrealCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := qrealSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("floatSlot(qreal)"),
                          p5          => Connection
                         ); 

 return ret;
end  QObject_connectToQrealSlot;

function QObject_connectToQPointSlot(sender: QObjectH; signal: string; handler : QPointCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := qpointSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("QPointSlot(QPoint &)"),
                          p5          => Connection
                         ); 
 return ret;
end  QObject_connectToQPointSlot;

function QObject_connectToQStringSlot(sender: QObjectH; signal: string; handler : QStringCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := qstringSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("QStringSlot(QString &)"),
                          p5          => Connection
                         ); 

 return ret;
end  QObject_connectToQStringSlot;

function QObject_connectToAnySlot(sender: QObjectH; signal: string; 
                                  handler : anyParameterCallbackH;
                                  slot    : string := "AnyParameterSlot(void *)";
                                  Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := AnyParameterSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT(slot),
                          p5          => Connection
                         ); 

 return ret;
end  QObject_connectToAnySlot;

function QObject_connectToAnyListSlot(sender: QObjectH; signal: string; 
                                  handler : anyParameterListCallbackH;
                                  slot    : string := "AnyParameterListSlot(void **)";
                                  Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := AnyParameterListSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT(slot),
                          p5          => Connection
                         ); 

 return ret;
end;

function QObject_connectToQObjectSlot(sender: QObjectH; signal: string; handler : QObjectCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := qobjectSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("QObjectSlot(QObject &)"),
                          p5          => Connection
                         ); 
   return ret;
end  QObject_connectToQObjectSlot;

function QObject_connectToQActionSlot(sender: QObjectH; signal: string; handler : QActionCallbackH; Connection: QtConnectionType := QtAutoConnection) return Boolean is
clickSlot  : QSlotH;
ret : boolean;
begin
  clickSlot := qactionSlot_create(slot => handler);
  ret := QObject_connect(
                          sender      => QObjectH(sender),
                          signal      => Qt.QString.SIGNAL(signal),
                          receiver    => QObjectH(clickSlot),
                          slot        => Qt.QString.SLOT("QActionSlot(QAction &)"),
                          p5          => Connection
                         ); 

 return ret;
end  QObject_connectToQActionSlot;
end;
