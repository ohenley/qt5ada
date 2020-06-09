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
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

package Qt.QTimeLine is

 type State is (NotRunning,Paused, Running);
 pragma Convention(C,State);

 type Direction is (Forward,Backward);
 pragma Convention(C,Direction);

 type CurveShape is (EaseInCurve,EaseOutCurve,EaseInOutCurve,LinearCurve,SineCurve,CosineCurve);
 pragma Convention(C,CurveShape);

 function  QTimeLine_create(duration: integer := 1000; parent: QObjectH := null) return QTimeLineH;
 pragma Import(C,QTimeLine_create, "QTimeLine_create");
 
 procedure QTimeLine_destroy(handle: not null QTimeLineH);
 pragma Import(C,QTimeLine_destroy, "QTimeLine_destroy");
 
 function  QTimeLine_state(handle: not null QTimeLineH) return State;
 pragma Import(C,QTimeLine_state, "QTimeLine_state");
 
 function  QTimeLine_loopCount(handle: not null QTimeLineH) return integer;
 pragma Import(C,QTimeLine_loopCount, "QTimeLine_loopCount");
 
 procedure QTimeLine_setLoopCount(handle: not null QTimeLineH; count:integer);
 pragma Import(C,QTimeLine_setLoopCount, "QTimeLine_setLoopCount");
 
 function  QTimeLine_direction(handle: not null QTimeLineH) return Direction;
 pragma Import(C,QTimeLine_direction, "QTimeLine_direction");
 
 procedure QTimeLine_setDirection(handle: not null QTimeLineH;direct:Direction);
 pragma Import(C,QTimeLine_setDirection, "QTimeLine_setDirection");
 
 function  QTimeLine_duration(handle: not null QTimeLineH) return integer;
 pragma Import(C,QTimeLine_duration, "QTimeLine_duration");
 
 procedure QTimeLine_setDuration(handle: not null QTimeLineH; duration:integer);
 pragma Import(C,QTimeLine_setDuration, "QTimeLine_setDuration");
 
 function  QTimeLine_startFrame(handle: not null QTimeLineH) return integer;
 pragma Import(C,QTimeLine_startFrame, "QTimeLine_startFrame");
 
 procedure QTimeLine_setStartFrame(handle: not null QTimeLineH; frame:integer);
 pragma Import(C,QTimeLine_setStartFrame, "QTimeLine_setStartFrame");
 
 function  QTimeLine_endFrame(handle: not null QTimeLineH) return integer;
 pragma Import(C,QTimeLine_endFrame, "QTimeLine_endFrame");
 
 procedure QTimeLine_setEndFrame(handle: not null QTimeLineH; frame:integer);
 pragma Import(C,QTimeLine_setEndFrame, "QTimeLine_setEndFrame");
 
 procedure QTimeLine_setFrameRange(handle: not null QTimeLineH; startFrame, endFrame:integer);
 pragma Import(C,QTimeLine_setFrameRange, "QTimeLine_setFrameRange");
 
 function  QTimeLine_updateInterval(handle: not null QTimeLineH) return integer;
 pragma Import(C,QTimeLine_updateInterval, "QTimeLine_updateInterval");
 
 procedure QTimeLine_setUpdateInterval(handle: not null QTimeLineH; interval:integer);
 pragma Import(C,QTimeLine_setUpdateInterval, "QTimeLine_setUpdateInterval");
 
 function  QTimeLine_curveShape(handle: not null QTimeLineH) return CurveShape;
 pragma Import(C,QTimeLine_curveShape, "QTimeLine_curveShape");
 
 procedure QTimeLine_setCurveShape(handle: not null QTimeLineH;shape:CurveShape);
 pragma Import(C,QTimeLine_setCurveShape, "QTimeLine_setCurveShape");
 
 function  QTimeLine_easingCurve(handle: not null QTimeLineH) return QEasingCurveH;
 pragma Import(C,QTimeLine_easingCurve, "QTimeLine_easingCurve");
 
 procedure QTimeLine_setEasingCurve(handle: not null QTimeLineH; curve:QEasingCurveH);
 pragma Import(C,QTimeLine_setEasingCurve, "QTimeLine_setEasingCurve");
 
 function  QTimeLine_currentTime(handle: not null QTimeLineH) return integer;
 pragma Import(C,QTimeLine_currentTime, "QTimeLine_currentTime");
 
 function  QTimeLine_currentFrame(handle: not null QTimeLineH) return integer;
 pragma Import(C,QTimeLine_currentFrame, "QTimeLine_currentFrame");
 
 function  QTimeLine_currentValue(handle: not null QTimeLineH) return qreal;
 pragma Import(C,QTimeLine_currentValue, "QTimeLine_currentValue");
 
 function  QTimeLine_frameForTime(handle: not null QTimeLineH; msec:integer) return integer;
 pragma Import(C,QTimeLine_frameForTime, "QTimeLine_frameForTime");
 
 function  QTimeLine_valueForTime(handle: not null QTimeLineH; msec:integer) return qreal;
 pragma Import(C,QTimeLine_valueForTime, "QTimeLine_valueForTime");
 
 procedure QTimeLine_start(handle: not null QTimeLineH);
 pragma Import(C,QTimeLine_start, "QTimeLine_start");
 
 procedure QTimeLine_resume(handle: not null QTimeLineH);
 pragma Import(C,QTimeLine_resume, "QTimeLine_resume");
 
 procedure QTimeLine_stop(handle: not null QTimeLineH);
 pragma Import(C,QTimeLine_stop, "QTimeLine_stop");
 
 procedure QTimeLine_setPaused(handle: not null QTimeLineH; paused:boolean);
 pragma Import(C,QTimeLine_setPaused, "QTimeLine_setPaused");
 
 procedure QTimeLine_setCurrentTime(handle: not null QTimeLineH; msec:integer);
 pragma Import(C,QTimeLine_setCurrentTime, "QTimeLine_setCurrentTime");
 
 procedure QTimeLine_toggleDirection(handle: not null QTimeLineH);
 pragma Import(C,QTimeLine_toggleDirection, "QTimeLine_toggleDirection");

 type QTimeLine_finishedEvent      is access procedure;
 pragma Convention(C,QTimeLine_finishedEvent);

 type QTimeLine_frameChangedEvent  is access procedure (p:integer);
 pragma Convention(C,QTimeLine_frameChangedEvent);

 type QTimeLine_stateChangedEvent  is access procedure (p:integer);
 pragma Convention(C,QTimeLine_stateChangedEvent);

 type QTimeLine_valueChangedEvent  is access procedure (p:qreal);
 pragma Convention(C,QTimeLine_valueChangedEvent);

 procedure QTimeLine_signal_slot_finished(handle: not null QTimeLineH; hook:QTimeLine_finishedEvent);
 pragma Import(C,QTimeLine_signal_slot_finished, "QTimeLine_signal_slot_finished");
 
 procedure QTimeLine_signal_slot_frameChanged(handle: not null QTimeLineH; hook:QTimeLine_frameChangedEvent);
 pragma Import(C,QTimeLine_signal_slot_frameChanged, "QTimeLine_signal_slot_frameChanged");
 
 procedure QTimeLine_signal_slot_stateChanged(handle: not null QTimeLineH; hook:QTimeLine_stateChangedEvent);
 pragma Import(C,QTimeLine_signal_slot_stateChanged, "QTimeLine_signal_slot_stateChanged");
 
 procedure QTimeLine_signal_slot_valueChanged(handle: not null QTimeLineH; hook:QTimeLine_valueChangedEvent);
 pragma Import(C,QTimeLine_signal_slot_valueChanged, "QTimeLine_signal_slot_valueChanged");
 
end Qt.QTimeLine;
