-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QTAda  - Ada to QT5  interface                             บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015,2019                 บ
-- บ Copyright (C) 2012,2019                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ--
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractAnimation;
with builtin; use builtin;
package Qt.QPropertyAnimation is

 function  QPropertyAnimation_create(parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QPropertyAnimation_create, "QPropertyAnimation_create");
 
 function  QPropertyAnimation_create2(target:QObjectH; propertyName:zstring;parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QPropertyAnimation_create2, "QPropertyAnimation_create2");
 
 function  QPropertyAnimation_create4(target:QGraphicsEffectH; propertyName:zstring;parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QPropertyAnimation_create4, "QPropertyAnimation_create4");
 
 procedure QPropertyAnimation_delete(handle:not null QAnimationH);
 pragma Import(C,QPropertyAnimation_delete, "QPropertyAnimation_delete");
 
 function  QPropertyAnimation_targetObject(handle:not null QAnimationH) return QObjectH;
 pragma Import(C,QPropertyAnimation_targetObject, "QPropertyAnimation_targetObject");
 
 procedure QPropertyAnimation_setTargetObject(handle:not null QAnimationH;target:QObjectH);
 pragma Import(C,QPropertyAnimation_setTargetObject, "QPropertyAnimation_setTargetObject");
 
 function  QPropertyAnimation_propertyName(handle:not null QAnimationH) return string;
 pragma Import(C,QPropertyAnimation_propertyName, "QPropertyAnimation_propertyName");
 
 procedure QPropertyAnimation_setPropertyName(handle:not null QAnimationH; propertyName:zstring);
 pragma Import(C,QPropertyAnimation_setPropertyName, "QPropertyAnimation_setPropertyName");
 
 procedure QPropertyAnimation_setPropertyName2(handle:not null QAnimationH; propertyName:QByteArrayH);
 pragma Import(C,QPropertyAnimation_setPropertyName2, "QPropertyAnimation_setPropertyName2");
 
 function  QPropertyAnimation_event(handle:not null QAnimationH;event:QEventH) return boolean;
 pragma Import(C,QPropertyAnimation_event, "QPropertyAnimation_event");
 
 procedure QPropertyAnimation_updateCurrentValue(handle:not null QAnimationH;value:QVariantH);
 pragma Import(C,QPropertyAnimation_updateCurrentValue, "QPropertyAnimation_updateCurrentValue");
 
 procedure QPropertyAnimation_updateState(handle:not null QAnimationH;newState,oldState:Qt.QAbstractAnimation.State);
 pragma Import(C,QPropertyAnimation_updateState, "QPropertyAnimation_updateState");

 function  QPropertyAnimation_interpolated(handle:not null QAnimationH;fromValue,toValue:QVariantH; progress:qreal) return QVariantH;
 pragma Import(C,QPropertyAnimation_interpolated, "QPropertyAnimation_interpolated");
 
 function  QBoolAnimation_create(tipping_point:double;target: QObjectH;propertyName: zstring; parent:QObjectH := null) return QAnimationH;
 pragma Import(C,QBoolAnimation_create, "QBoolAnimation_create");
 
 function  QBoolAnimation_interpolated(handle:not null QAnimationH;fromValue,toValue:QVariantH; progress:qreal) return boolean;
 pragma Import(C,QBoolAnimation_interpolated, "QBoolAnimation_interpolated");
 
 procedure QPropertyAnimation_setTargetGraphicsItem(handle:not null QAnimationH;target: not null QGraphicsItemH);
 pragma Import(C,QPropertyAnimation_setTargetGraphicsItem, "QPropertyAnimation_setTargetGraphicsItem");
 ------------------------------------------------------------------------

 function  QPropertyAnimation_create(target:QObjectH; propertyName:zstring;parent:QObjectH := null) return QAnimationH;
 function  QPropertyAnimation_create(target:QGraphicsEffectH; propertyName:zstring;parent:QObjectH := null) return QAnimationH;
 procedure QPropertyAnimation_setPropertyName(handle:not null QAnimationH; propertyName:QByteArrayH);

end;
