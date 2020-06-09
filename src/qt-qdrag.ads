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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

package Qt.QDrag                is

function QDrag_create(dragSource: QWidgetH) return  QDragH;  
pragma Import(C,QDrag_create,"QDrag_create");

procedure QDrag_destroy(handle: not null  QDragH);  
pragma Import(C,QDrag_destroy,"QDrag_destroy");

procedure QDrag_setMimeData(handle: not null  QDragH; data: QMimeDataH);  
pragma Import(C,QDrag_setMimeData,"QDrag_setMimeData");

function QDrag_mimeData(handle: not null  QDragH) return  QMimeDataH;  
pragma Import(C,QDrag_mimeData,"QDrag_mimeData");

procedure QDrag_setPixmap(handle: not null  QDragH; p1: QPixmapH);  
pragma Import(C,QDrag_setPixmap,"QDrag_setPixmap");

function  QDrag_pixmap(handle: not null  QDragH) return QPixmapH;
pragma Import(C,QDrag_pixmap,"QDrag_pixmap");

procedure QDrag_setHotSpot(handle: not null  QDragH; hotspot: QPointH);
pragma Import(C,QDrag_setHotSpot,"QDrag_setHotSpot");

function  QDrag_hotSpot(handle: not null  QDragH) return  QPointH;
pragma Import(C,QDrag_hotSpot,"QDrag_hotSpot");

function QDrag_source(handle: not null  QDragH) return  QWidgetH;  
pragma Import(C,QDrag_source,"QDrag_source");

function QDrag_target(handle: not null  QDragH) return  QWidgetH;  
pragma Import(C,QDrag_target,"QDrag_target");

function QDrag_start(handle: not null  QDragH; supportedActions: QtDropActions := QtCopyAction) return QtDropAction;
pragma Import(C,QDrag_start,"QDrag_start");

function QDrag_exec(handle: not null  QDragH; supportedActions: QtDropActions := QtMoveAction) return QtDropAction;   
pragma Import(C,QDrag_exec,"QDrag_exec");

function QDrag_exec2(handle: not null  QDragH; supportedActions: QtDropActions; defaultAction: QtDropAction) return  QtDropAction;
pragma Import(C,QDrag_exec2,"QDrag_exec2");

procedure QDrag_setDragCursor(handle: not null  QDragH; cursor: QPixmapH; action: QtDropAction);  
pragma Import(C,QDrag_setDragCursor,"QDrag_setDragCursor");

type QDrag_actionChangedEvent is access procedure (action: QtDropAction);
pragma Convention(C, QDrag_actionChangedEvent);

type QDrag_targetChangedEvent is access procedure (newTarget: QWidgetH);
pragma Convention(C,QDrag_targetChangedEvent);
 
 procedure QDrag_signal_slot_actionChanged(handle: not null QDragH; hook:QDrag_actionChangedEvent);
 pragma Import(C,QDrag_signal_slot_actionChanged, "QDrag_signal_slot_actionChanged");
 
 procedure QDrag_signal_slot_targetChanged(handle: not null QDragH; hook:QDrag_targetChangedEvent);
 pragma Import(C,QDrag_signal_slot_targetChanged, "QDrag_signal_slot_targetChanged");
 
-------------------------------------------------------------------
function QDrag_exec(handle: not null  QDragH; supportedActions: QtDropActions; defaultAction: QtDropAction) return  QtDropAction;

end Qt.QDrag;
