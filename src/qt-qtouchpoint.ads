--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2013,2016                      บ
-- บ Copyright (C) 2013,2016                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QTouchPoint is

 function  TouchPoint_create(id: integer := -1) return TouchPointH;
 pragma Import(C,TouchPoint_create, "TouchPoint_create");
 
 function  TouchPoint_create2(other:TouchPointH) return TouchPointH;
 pragma Import(C,TouchPoint_create2, "TouchPoint_create2");
 
 procedure TouchPoint_destroy(handle: not null TouchPointH);
 pragma Import(C,TouchPoint_destroy, "TouchPoint_destroy");
 
 function  TouchPoint_lastNormalizedPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_lastNormalizedPos, "TouchPoint_lastNormalizedPos");
 
 function  TouchPoint_lastPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_lastPos, "TouchPoint_lastPos");
 
 function  TouchPoint_lastScenePos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_lastScenePos, "TouchPoint_lastScenePos");
 
 function  TouchPoint_lastScreenPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_lastScreenPos, "TouchPoint_lastScreenPos");
 
 function  TouchPoint_normalizedPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_normalizedPos, "TouchPoint_normalizedPos");
 
 function  TouchPoint_pos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_pos, "TouchPoint_pos");
 
 function  TouchPoint_scenePos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_scenePos, "TouchPoint_scenePos");
 
 function  TouchPoint_screenPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_screenPos, "TouchPoint_screenPos");
 
 function  TouchPoint_startNormalizedPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_startNormalizedPos, "TouchPoint_startNormalizedPos");
 
 function  TouchPoint_startPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_startPos, "TouchPoint_startPos");
 
 function  TouchPoint_startScenePos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_startScenePos, "TouchPoint_startScenePos");
 
 function  TouchPoint_startScreenPos(handle: not null TouchPointH) return QPointFH;
 pragma Import(C,TouchPoint_startScreenPos, "TouchPoint_startScreenPos");
 
 function  TouchPoint_rect(handle: not null TouchPointH) return QRectFH;
 pragma Import(C,TouchPoint_rect, "TouchPoint_rect");
 
 function  TouchPoint_sceneRect(handle: not null TouchPointH) return QRectFH;
 pragma Import(C,TouchPoint_sceneRect, "TouchPoint_sceneRect");
 
 function  TouchPoint_screenRect(handle: not null TouchPointH) return QRectFH;
 pragma Import(C,TouchPoint_screenRect, "TouchPoint_screenRect");
 
 function  TouchPoint_velocity(handle: not null TouchPointH) return QVector2DH;
 pragma Import(C,TouchPoint_velocity, "TouchPoint_velocity");
 
 function  TouchPoint_rawScreenPositions(handle: not null TouchPointH) return QVectorH;
 pragma Import(C,TouchPoint_rawScreenPositions, "TouchPoint_rawScreenPositions");
 
 function  TouchPoint_id(handle: not null TouchPointH) return integer;
 pragma Import(C,TouchPoint_id, "TouchPoint_id");
 
 function  TouchPoint_state(handle: not null TouchPointH) return integer;
 pragma Import(C,TouchPoint_state, "TouchPoint_state");
 
 function  TouchPoint_pressure(handle: not null TouchPointH) return qreal;
 pragma Import(C,TouchPoint_pressure, "TouchPoint_pressure");
 
 function  TouchPoint_rotation(handle: not null TouchPointH) return qreal;
 pragma Import(C,TouchPoint_rotation, "TouchPoint_rotation");
 
 function  TouchPoint_flags(handle: not null TouchPointH) return quint;
 pragma Import(C,TouchPoint_flags, "TouchPoint_flags");
 
 procedure TouchPoint_setFlags(handle: not null TouchPointH;flags:quint);
 pragma Import(C,TouchPoint_setFlags, "TouchPoint_setFlags");
 
 procedure TouchPoint_setId(handle: not null TouchPointH; id:integer);
 pragma Import(C,TouchPoint_setId, "TouchPoint_setId");
 
 procedure TouchPoint_setLastNormalizedPos(handle: not null TouchPointH;lastNormalizedPos:QPointFH);
 pragma Import(C,TouchPoint_setLastNormalizedPos, "TouchPoint_setLastNormalizedPos");
 
 procedure TouchPoint_setLastPos(handle: not null TouchPointH;lastPos:QPointFH);
 pragma Import(C,TouchPoint_setLastPos, "TouchPoint_setLastPos");
 
 procedure TouchPoint_setLastScenePos(handle: not null TouchPointH;lastScenePos:QPointFH);
 pragma Import(C,TouchPoint_setLastScenePos, "TouchPoint_setLastScenePos");
 
 procedure TouchPoint_setLastScreenPos(handle: not null TouchPointH;lastScreenPos:QPointFH);
 pragma Import(C,TouchPoint_setLastScreenPos, "TouchPoint_setLastScreenPos");
 
 procedure TouchPoint_setNormalizedPos(handle: not null TouchPointH;normalizedPos:QPointFH);
 pragma Import(C,TouchPoint_setNormalizedPos, "TouchPoint_setNormalizedPos");
 
 procedure TouchPoint_setPos(handle: not null TouchPointH;pos:QPointFH);
 pragma Import(C,TouchPoint_setPos, "TouchPoint_setPos");
 
 procedure TouchPoint_setPressure(handle: not null TouchPointH;pressure:qreal);
 pragma Import(C,TouchPoint_setPressure, "TouchPoint_setPressure");
 
 procedure TouchPoint_setRotation(handle: not null TouchPointH;pressure:qreal);
 pragma Import(C,TouchPoint_setRotation, "TouchPoint_setRotation");
 
 procedure TouchPoint_setRawScreenPositions(handle: not null TouchPointH;positions:QVectorH);
 pragma Import(C,TouchPoint_setRawScreenPositions, "TouchPoint_setRawScreenPositions");
 
 procedure TouchPoint_setRect(handle: not null TouchPointH;rect:QRectFH);
 pragma Import(C,TouchPoint_setRect, "TouchPoint_setRect");
 
 procedure TouchPoint_setScenePos(handle: not null TouchPointH;scenePos:QPointFH);
 pragma Import(C,TouchPoint_setScenePos, "TouchPoint_setScenePos");
 
 procedure TouchPoint_setSceneRect(handle: not null TouchPointH;sceneRect:QRectFH);
 pragma Import(C,TouchPoint_setSceneRect, "TouchPoint_setSceneRect");
 
 procedure TouchPoint_setScreenPos(handle: not null TouchPointH;screenPos:QPointFH);
 pragma Import(C,TouchPoint_setScreenPos, "TouchPoint_setScreenPos");
 
 procedure TouchPoint_setScreenRect(handle: not null TouchPointH; screenRect:QRectFH);
 pragma Import(C,TouchPoint_setScreenRect, "TouchPoint_setScreenRect");
 
 procedure TouchPoint_setStartNormalizedPos(handle: not null TouchPointH;startNormalizedPos:QPointFH);
 pragma Import(C,TouchPoint_setStartNormalizedPos, "TouchPoint_setStartNormalizedPos");
 
 procedure TouchPoint_setStartPos(handle: not null TouchPointH;startPos:QPointFH);
 pragma Import(C,TouchPoint_setStartPos, "TouchPoint_setStartPos");
 
 procedure TouchPoint_setStartScenePos(handle: not null TouchPointH;startScenePos:QPointFH);
 pragma Import(C,TouchPoint_setStartScenePos, "TouchPoint_setStartScenePos");
 
 procedure TouchPoint_setStartScreenPos(handle: not null TouchPointH;startScreenPos:QPointFH);
 pragma Import(C,TouchPoint_setStartScreenPos, "TouchPoint_setStartScreenPos");
 
 procedure TouchPoint_setState(handle: not null TouchPointH; state:quint);
 pragma Import(C,TouchPoint_setState, "TouchPoint_setState");
 
 procedure TouchPoint_setVelocity(handle: not null TouchPointH;velocity:QVector2DH);
 pragma Import(C,TouchPoint_setVelocity, "TouchPoint_setVelocity");
 
 procedure TouchPoint_swap(handle: not null TouchPointH;other:TouchPointH);
 pragma Import(C,TouchPoint_swap, "TouchPoint_swap");
 
 function  TouchPoint_create(other:TouchPointH) return TouchPointH;

end;
