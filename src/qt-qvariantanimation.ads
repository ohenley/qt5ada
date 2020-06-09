-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013,2015                 บ
-- บ Copyright (C) 2012,2013,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractAnimation;
package Qt.QVariantAnimation is

 type QEasingCurve is (
        Linear,
        InQuad, OutQuad, InOutQuad, OutInQuad,
        InCubic, OutCubic, InOutCubic, OutInCubic,
        InQuart, OutQuart, InOutQuart, OutInQuart,
        InQuint, OutQuint, InOutQuint, OutInQuint,
        InSine, OutSine, InOutSine, OutInSine,
        InExpo, OutExpo, InOutExpo, OutInExpo,
        InCirc, OutCirc, InOutCirc, OutInCirc,
        InElastic, OutElastic, InOutElastic, OutInElastic,
        InBack, OutBack, InOutBack, OutInBack,
        InBounce, OutBounce, InOutBounce, OutInBounce,
        InCurve, OutCurve, SineCurve, CosineCurve,
        BezierSpline, TCBSpline, Custom, NCurveTypes
   ); 
 pragma convention(C,QEasingCurve);

 function  QVariantAnimation_create(parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QVariantAnimation_create, "QVariantAnimation_create");
 
 procedure QVariantAnimation_delete(handle:not null QAnimationH);
 pragma Import(C,QVariantAnimation_delete, "QVariantAnimation_delete");
 
 function  QVariantAnimation_startValue(handle:not null QAnimationH) return QVariantH;
 pragma Import(C,QVariantAnimation_startValue, "QVariantAnimation_startValue");
 
 procedure QVariantAnimation_setStartValue(handle:not null QAnimationH;value:QVariantH);
 pragma Import(C,QVariantAnimation_setStartValue, "QVariantAnimation_setStartValue");
 
 function  QVariantAnimation_endValue(handle:not null QAnimationH) return QVariantH;
 pragma Import(C,QVariantAnimation_endValue, "QVariantAnimation_endValue");
 
 procedure QVariantAnimation_setEndValue(handle:not null QAnimationH;value:QVariantH);
 pragma Import(C,QVariantAnimation_setEndValue, "QVariantAnimation_setEndValue");
 
 function  QVariantAnimation_keyValueAt(handle:not null QAnimationH;step:qreal) return QVariantH;
 pragma Import(C,QVariantAnimation_keyValueAt, "QVariantAnimation_keyValueAt");
 
 procedure QVariantAnimation_setKeyValueAt(handle:not null QAnimationH;step:qreal;value:QVariantH);
 pragma Import(C,QVariantAnimation_setKeyValueAt, "QVariantAnimation_setKeyValueAt");
 
 function  QVariantAnimation_keyValues(handle:not null QAnimationH) return QListH;
 pragma Import(C,QVariantAnimation_keyValues, "QVariantAnimation_keyValues");
 
 procedure QVariantAnimation_setKeyValues(handle:not null QAnimationH;values:QListH);
 pragma Import(C,QVariantAnimation_setKeyValues, "QVariantAnimation_setKeyValues");
 
 function  QVariantAnimation_currentValue(handle:not null QAnimationH) return QVariantH;
 pragma Import(C,QVariantAnimation_currentValue, "QVariantAnimation_currentValue");
 
 function  QVariantAnimation_duration(handle:not null QAnimationH) return integer;
 pragma Import(C,QVariantAnimation_duration, "QVariantAnimation_duration");
 
 procedure QVariantAnimation_setDuration(handle:not null QAnimationH; msecs:integer);
 pragma Import(C,QVariantAnimation_setDuration, "QVariantAnimation_setDuration");
 
 function  QVariantAnimation_easingCurve(handle:not null QAnimationH) return QEasingCurve;
 pragma Import(C,QVariantAnimation_easingCurve, "QVariantAnimation_easingCurve");
 
 procedure QVariantAnimation_setEasingCurve(handle:not null QAnimationH;easing:QEasingCurve);
 pragma Import(C,QVariantAnimation_setEasingCurve, "QVariantAnimation_setEasingCurve");
 
 function  QVariantAnimation_event(handle:not null QAnimationH;event:QEventH) return boolean;
 pragma Import(C,QVariantAnimation_event, "QVariantAnimation_event");
 
 procedure QVariantAnimation_updateCurrentTime(handle:not null QAnimationH;currentTime:integer);
 pragma Import(C,QVariantAnimation_updateCurrentTime, "QVariantAnimation_updateCurrentTime");
 
 procedure QVariantAnimation_updateState(handle:not null QAnimationH; newState, oldState:Qt.QAbstractAnimation.State);
 pragma Import(C,QVariantAnimation_updateState, "QVariantAnimation_updateState");
 
 procedure QVariantAnimation_updateCurrentValue(handle:not null QAnimationH;value:QVariantH);
 pragma Import(C,QVariantAnimation_updateCurrentValue, "QVariantAnimation_updateCurrentValue");
 
 function  QVariantAnimation_interpolated(handle:not null QAnimationH;fromValue,toValue:QVariantH; progress:qreal) return QVariantH;
 pragma Import(C,QVariantAnimation_interpolated, "QVariantAnimation_interpolated");
 
 type valueChangedType is access procedure(value:QVariantH);
 pragma convention(C,valueChangedType);

 procedure QVariantAnimation_signal_slot_valueChanged(handle:not null QAnimationH; hook:valueChangedType);
 pragma Import(C,QVariantAnimation_signal_slot_valueChanged, "QVariantAnimation_signal_slot_valueChanged");
 

end;
