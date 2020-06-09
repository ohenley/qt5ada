-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2017                           บ
-- บ Copyright (C) 2012,2016,2017                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ

--
--   This library is free software; you can redistribute it and/or modify
--   it under the terms of the GNU Library General Public License as
--   published by the Free Software Foundation; either version 3 of the
--   License; or (at your option) any later version.

with Qt.QString; use Qt.QString;
package Qt.QBoxSet is

 function  QBoxSet_create(label:QStringH := QString_create;parent : QObjectH :=  null) return QSetH;
 pragma Import(C,QBoxSet_create, "QBoxSet_create");
 
 function  QBoxSet_create2(le,lq,m,uq,ue: qreal;label :QStringH := QString_create;parent:QObjectH := null) return QSetH;
 pragma Import(C,QBoxSet_create2, "QBoxSet_create2");
 
 procedure QBoxSet_destroy(handle:not null QSetH);
 pragma Import(C,QBoxSet_destroy, "QBoxSet_destroy");
 
 procedure QBoxSet_append(handle:not null QSetH;value:qreal);
 pragma Import(C,QBoxSet_append, "QBoxSet_append");
 
 procedure QBoxSet_append2(handle:not null QSetH;values:QObjectListH);
 pragma Import(C,QBoxSet_append2, "QBoxSet_append2");
 
 procedure QBoxSet_clear(handle:not null QSetH);
 pragma Import(C,QBoxSet_clear, "QBoxSet_clear");
 
 procedure QBoxSet_setLabel(handle:not null QSetH;label:QStringH);
 pragma Import(C,QBoxSet_setLabel, "QBoxSet_setLabel");
 
 function  QBoxSet_label(handle:not null QSetH) return QStringH;
 pragma Import(C,QBoxSet_label, "QBoxSet_label");
 
 procedure QBoxSet_setValue(handle:not null QSetH;index:integer;value: qreal);
 pragma Import(C,QBoxSet_setValue, "QBoxSet_setValue");
 
 function  QBoxSet_at(handle:not null QSetH;index:int) return qreal;
 pragma Import(C,QBoxSet_at, "QBoxSet_at");
 
 function  QBoxSet_count(handle:not null QSetH) return integer;
 pragma Import(C,QBoxSet_count, "QBoxSet_count");
 
 procedure QBoxSet_setPen(handle:not null QSetH;pen:QPenH);
 pragma Import(C,QBoxSet_setPen, "QBoxSet_setPen");
 
 function  QBoxSet_pen(handle:not null QSetH) return QPenH;
 pragma Import(C,QBoxSet_pen, "QBoxSet_pen");
 
 procedure QBoxSet_setBrush(handle:not null QSetH;brush:QBrushH);
 pragma Import(C,QBoxSet_setBrush, "QBoxSet_setBrush");
 
 function  QBoxSet_brush(handle:not null QSetH) return QBrushH;
 pragma Import(C,QBoxSet_brush, "QBoxSet_brush");
 
 procedure QBoxSet_signal_slot_hovered(handle:not null QSetH;hook: boolCallbackH);
 pragma Import(C,QBoxSet_signal_slot_hovered, "QBoxSet_signal_slot_hovered");
 
 procedure QBoxSet_signal_slot_clicked(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_clicked, "QBoxSet_signal_slot_clicked");
 
 procedure QBoxSet_signal_slot_pressed(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_pressed, "QBoxSet_signal_slot_pressed");
 
 procedure QBoxSet_signal_slot_released(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_released, "QBoxSet_signal_slot_released");
 
 procedure QBoxSet_signal_slot_doubleClicked(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_doubleClicked, "QBoxSet_signal_slot_doubleClicked");
 
 procedure QBoxSet_signal_slot_penChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_penChanged, "QBoxSet_signal_slot_penChanged");
 
 procedure QBoxSet_signal_slot_brushChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_brushChanged, "QBoxSet_signal_slot_brushChanged");
 
 procedure QBoxSet_signal_slot_valuesChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_valuesChanged, "QBoxSet_signal_slot_valuesChanged");
 
 procedure QBoxSet_signal_slot_valueChanged(handle:not null QSetH;hook: intCallbackH);
 pragma Import(C,QBoxSet_signal_slot_valueChanged, "QBoxSet_signal_slot_valueChanged");
 
 procedure QBoxSet_signal_slot_cleared(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBoxSet_signal_slot_cleared, "QBoxSet_signal_slot_cleared");
 
end;
