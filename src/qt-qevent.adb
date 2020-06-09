--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012                           บ
-- บ                                                                   บ
-- บ Copyright (C) 2012                                                บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QObject     ; use Qt.QObject;
with Qt.QEventFilter; use Qt.QEventFilter;
with Ada.Exceptions;
with text_io; use text_io;
package body Qt.QEvent               is

procedure QEventLoop_processEvents(handle: not null  QEventLoopH; flags: QEventLoopProcessEventsFlags; maximumTime: Integer) is
begin
 QEventLoop_processEvents2(handle, flags, maximumTime);
end;

function QMouseEvent_create(qtype: QEventType; pos: QPointH; globalPos: QPointH; button: QtMouseButton; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers) return  QMouseEventH is
begin
 return  QMouseEvent_create2(qtype, pos, globalPos, button, buttons, modifiers);
end;

function QWheelEvent_create(pos: QPointH; globalPos: QPointH; delt: Integer; buttons: QtMouseButtons; modifiers: QtKeyboardModifiers; orient: QtOrientation := QtVertical) return QWheelEventH is
begin
 return QWheelEvent_create2(pos, globalPos, delt, buttons, modifiers, orient);
end;

function QPaintEvent_create(paintRect: QRectH) return  QPaintEventH is
begin
 return QPaintEvent_create2(paintRect);
end;

function QContextMenuEvent_create(reason: QContextMenuEventReason; pos: QPointH) return  QContextMenuEventH is
begin
 return QContextMenuEvent_create2(reason, pos);
end;

procedure QDragMoveEvent_accept(handle: not null  QDragMoveEventH; r: QRectH) is
begin
  QDragMoveEvent_accept2(handle, r);
end;

procedure QDragMoveEvent_ignore(handle: not null  QDragMoveEventH; r: QRectH) is
begin
  QDragMoveEvent_ignore2(handle, r);
end;

function QWindowStateChangeEvent_create(aOldState: QtWindowStates; isOverride: Boolean) return  QWindowStateChangeEventH is
begin
 return QWindowStateChangeEvent_create2(aOldState, isOverride);
end;


function QInputMethodEvent_create(other: QInputMethodEventH) return  QInputMethodEventH is
begin
 return QInputMethodEvent_create3(other);
end;

function  QChildEvent_create(tp:integer;child: QObjectH) return QChildEventH is
begin
  return QChildEvent_create2(tp,child);
end;

function  QChildEvent_removed(childEvent:QChildEventH) return integer is
begin
  return QChildEvent_removed2(childEvent);
end;

function  QMouseEvent_create(eventType:QEventType ; localPos,windowPos,screenPos:QPointFH;button: QtMouseButton;buttons:quint;modifiers: QtKeyboardModifiers) return QMouseEventH is
begin
   return  QMouseEvent_create3(eventType,localPos,windowPos,screenPos,button,buttons,modifiers);
end;

function  QWheelEvent_create(pos,globalPos: QPointFH; pixelDelta,angleDelta:QPointH;qtDelta:integer; orientation:QtOrientation; buttons:quint;modifiers: QtKeyboardModifiers ) return QWheelEventH is
begin
  return  QWheelEvent_create3(pos,globalPos,pixelDelta,angleDelta,qtDelta,orientation, buttons,modifiers);
end;

function  QInputMethodEvent_create(preeditText:QStringH; attributes:QObjectListH) return QInputMethodEventH is
begin
   return  QInputMethodEvent_create2(preeditText,attributes);
end;

end Qt.QEvent;
