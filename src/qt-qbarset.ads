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

package Qt.QBarSet is

 function  QBarSet_create(label:QStringH;parent : QObjectH := null) return QSetH;
 pragma Import(C,QBarSet_create, "QBarSet_create");
 
 procedure QBarSet_destroy(handle:not null QSetH);
 pragma Import(C,QBarSet_destroy, "QBarSet_destroy");
 
 procedure QBarSet_setLabel(handle:not null QSetH;label:QStringH);
 pragma Import(C,QBarSet_setLabel, "QBarSet_setLabel");
 
 function  QBarSet_label(handle:not null QSetH) return QStringH;
 pragma Import(C,QBarSet_label, "QBarSet_label");
 
 procedure QBarSet_append(handle:not null QSetH;value:qreal);
 pragma Import(C,QBarSet_append, "QBarSet_append");
 
 procedure QBarSet_append2(handle:not null QSetH;values:QObjectListH);
 pragma Import(C,QBarSet_append2, "QBarSet_append2");
 
 procedure QBarSet_insert(handle:not null QSetH;index:integer;value: qreal);
 pragma Import(C,QBarSet_insert, "QBarSet_insert");
 
 procedure QBarSet_remove(handle:not null QSetH;index:integer;count : integer :=  1);
 pragma Import(C,QBarSet_remove, "QBarSet_remove");
 
 procedure QBarSet_replace(handle:not null QSetH;index:integer;value: qreal);
 pragma Import(C,QBarSet_replace, "QBarSet_replace");
 
 function  QBarSet_at(handle:not null QSetH;index:int) return qreal;
 pragma Import(C,QBarSet_at, "QBarSet_at");
 
 function  QBarSet_count(handle:not null QSetH) return integer;
 pragma Import(C,QBarSet_count, "QBarSet_count");
 
 function  QBarSet_sum(handle:not null QSetH) return qreal;
 pragma Import(C,QBarSet_sum, "QBarSet_sum");
 
 procedure QBarSet_setPen(handle:not null QSetH;pen:QPenH);
 pragma Import(C,QBarSet_setPen, "QBarSet_setPen");
 
 function  QBarSet_pen(handle:not null QSetH) return QPenH;
 pragma Import(C,QBarSet_pen, "QBarSet_pen");
 
 procedure QBarSet_setBrush(handle:not null QSetH;brush:QBrushH);
 pragma Import(C,QBarSet_setBrush, "QBarSet_setBrush");
 
 function  QBarSet_brush(handle:not null QSetH) return QBrushH;
 pragma Import(C,QBarSet_brush, "QBarSet_brush");
 
 procedure QBarSet_setLabelBrush(handle:not null QSetH;brush:QBrushH);
 pragma Import(C,QBarSet_setLabelBrush, "QBarSet_setLabelBrush");
 
 function  QBarSet_labelBrush(handle:not null QSetH) return QBrushH;
 pragma Import(C,QBarSet_labelBrush, "QBarSet_labelBrush");
 
 procedure QBarSet_setLabelFont(handle:not null QSetH;font:QFontH);
 pragma Import(C,QBarSet_setLabelFont, "QBarSet_setLabelFont");
 
 function  QBarSet_labelFont(handle:not null QSetH) return QFontH;
 pragma Import(C,QBarSet_labelFont, "QBarSet_labelFont");
 
 function  QBarSet_color(handle:not null QSetH) return QColorH;
 pragma Import(C,QBarSet_color, "QBarSet_color");
 
 procedure QBarSet_setColor(handle:not null QSetH;color:QColorH);
 pragma Import(C,QBarSet_setColor, "QBarSet_setColor");
 
 function  QBarSet_borderColor(handle:not null QSetH) return QColorH;
 pragma Import(C,QBarSet_borderColor, "QBarSet_borderColor");
 
 procedure QBarSet_setBorderColor(handle:not null QSetH;color:QColorH);
 pragma Import(C,QBarSet_setBorderColor, "QBarSet_setBorderColor");
 
 function  QBarSet_labelColor(handle:not null QSetH) return QColorH;
 pragma Import(C,QBarSet_labelColor, "QBarSet_labelColor");
 
 procedure QBarSet_setLabelColor(handle:not null QSetH;color:QColorH);
 pragma Import(C,QBarSet_setLabelColor, "QBarSet_setLabelColor");
 

 type boolIntCallbackH is access procedure(p1:boolean;p2:integer);
 pragma convention(C,boolIntCallbackH);

 type colorCallbackH is access procedure(p :QColorH);
 pragma convention(C,colorCallbackH);

 type intIntCallbackH is access procedure(p1,p2:integer);
 pragma convention(C,intIntCallbackH);

 procedure QBarSet_signal_slot_hovered(handle:not null QSetH;hook:boolIntCallbackH);
 pragma Import(C,QBarSet_signal_slot_hovered, "QBarSet_signal_slot_hovered");
 
 procedure QBarSet_signal_slot_clicked(handle:not null QSetH;hook:intCallbackH);
 pragma Import(C,QBarSet_signal_slot_clicked, "QBarSet_signal_slot_clicked");
 
 procedure QBarSet_signal_slot_pressed(handle:not null QSetH;hook:intCallbackH);
 pragma Import(C,QBarSet_signal_slot_pressed, "QBarSet_signal_slot_pressed");
 
 procedure QBarSet_signal_slot_released(handle:not null QSetH;hook:intCallbackH);
 pragma Import(C,QBarSet_signal_slot_released, "QBarSet_signal_slot_released");
 
 procedure QBarSet_signal_slot_doubleClicked(handle:not null QSetH;hook:intCallbackH);
 pragma Import(C,QBarSet_signal_slot_doubleClicked, "QBarSet_signal_slot_doubleClicked");
 
 procedure QBarSet_signal_slot_penChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBarSet_signal_slot_penChanged, "QBarSet_signal_slot_penChanged");
 
 procedure QBarSet_signal_slot_brushChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBarSet_signal_slot_brushChanged, "QBarSet_signal_slot_brushChanged");
 
 procedure QBarSet_signal_slot_labelChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBarSet_signal_slot_labelChanged, "QBarSet_signal_slot_labelChanged");
 
 procedure QBarSet_signal_slot_labelBrushChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBarSet_signal_slot_labelBrushChanged, "QBarSet_signal_slot_labelBrushChanged");
 
 procedure QBarSet_signal_slot_labelFontChanged(handle:not null QSetH;hook: voidCallbackH);
 pragma Import(C,QBarSet_signal_slot_labelFontChanged, "QBarSet_signal_slot_labelFontChanged");
 
 procedure QBarSet_signal_slot_colorChanged(handle:not null QSetH;hook:colorCallbackH);
 pragma Import(C,QBarSet_signal_slot_colorChanged, "QBarSet_signal_slot_colorChanged");
 
 procedure QBarSet_signal_slot_borderColorChanged(handle:not null QSetH;hook:colorCallbackH);
 pragma Import(C,QBarSet_signal_slot_borderColorChanged, "QBarSet_signal_slot_borderColorChanged");
 
 procedure QBarSet_signal_slot_labelColorChanged(handle:not null QSetH;hook:colorCallbackH);
 pragma Import(C,QBarSet_signal_slot_labelColorChanged, "QBarSet_signal_slot_labelColorChanged");
 
 procedure QBarSet_signal_slot_valuesAdded(handle:not null QSetH;hook:intIntCallbackH);
 pragma Import(C,QBarSet_signal_slot_valuesAdded, "QBarSet_signal_slot_valuesAdded");
 
 procedure QBarSet_signal_slot_valuesRemoved(handle:not null QSetH;hook:intIntCallbackH); 
 pragma Import(C,QBarSet_signal_slot_valuesRemoved, "QBarSet_signal_slot_valuesRemoved");
 
 procedure QBarSet_signal_slot_valueChanged(handle:not null QSetH;hook:intCallbackH);
 pragma Import(C,QBarSet_signal_slot_valueChanged, "QBarSet_signal_slot_valueChanged");
 
 procedure QBarSet_append(handle:not null QSetH;values:QObjectListH);

end;
