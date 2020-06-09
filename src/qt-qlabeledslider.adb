--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2014                           บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QObject         ; use Qt.QObject;
with Qt.QWidget         ; use Qt.QWidget;
with Qt.QString         ; use Qt.QString;
with Qt.QLayout         ; use Qt.QLayout;
with Qt.QLabel          ; use Qt.QLabel;
with Qt.QSlider         ; use Qt.QSlider;
with Qt.QAbstractSlider ; use Qt.QAbstractSlider;
with Interfaces.C       ; use  Interfaces.C;
with builtin            ; use builtin;

package body Qt.QLabeledSlider              is

 procedure Hint(slider: QSliderH; value: double;precision: integer := 8) is
 begin
   QWidget_setToolTip(handle => QWidgetH(slider), p1 => s2qs(
   "<p><strong>" & put_d(value,precision) & "</strong></p>"));
 end;

function QLabeledSlider_create(text: QStringH; valueChangedAction:QAbstractSlider_valueChangedEvent; orientation: QtOrientation := QtHorizontal;min : qt.double := 0.0; max : qt.double := 1.0; val: qt.double := 0.0;scale : qt.double := 100.0; textPos : LabelPos := labelLeft) return QLabeledSliderH is

lbsl : QLabeledSliderH;
 hbox      : QHBoxLayoutH;
 vbox      : QVBoxLayoutH;
 rc        : boolean;
 width, height : integer;
 begin
  lbsl := new QLabeledSliderR;
  lbsl.widget   := QWidget_create;    
  lbsl.slider  := QSlider_create(orientation => orientation);
  lbsl.label   := QLabel_create(text);
  lbsl.scale   := scale;
  
  QAbstractSlider_setRange(handle => lbsl.slider, min => integer(min*scale), max => integer(max*scale));   
  QAbstractSlider_setValue(handle => lbsl.slider, p1 => integer(val*scale));
  QSlider_setTickPosition(handle => lbsl.slider, position => QSliderTicksAbove);
  QAbstractSlider_setOrientation(handle => lbsl.slider, p1 => orientation);
  QAbstractSlider_signal_slot_valueChanged(handle => lbsl.slider, hook => valueChangedAction);
  

  hbox   := QHBoxLayout_create;
  vbox   := QVBoxLayout_create;

  case textPos is
    when  labelLeft =>
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(hbox));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.label));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.slider));
    when labelRight =>
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(hbox));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.slider));
     QLayout_addWidget(handle => QLayoutH(hbox), w => QWidgetH(lbsl.label));
   when labelTop  => 
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(vbox));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.label));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.slider));
   when labelBottom  => 
     QWidget_setLayout(handle => lbsl.widget, p1 =>  QLayoutH(vbox));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.slider));
     QLayout_addWidget(handle => QLayoutH(vbox), w => QWidgetH(lbsl.label));
  end case;
  width := QWidget_width(handle => QWidgetH(lbsl.slider));
  height := QWidget_height(handle => QWidgetH(lbsl.slider));

  return lbsl;

end QLabeledSlider_create;

function QLabeledSlider_GetSlider(handle:not null QLabeledSliderH) return QSliderH is
begin
 return handle.slider;
end;

function QLabeledSlider_GetLabel(handle:not null QLabeledSliderH) return  QLabelH is
begin
 return handle.label;
end;

function QLabeledSlider_GetBuiltWidget(handle:not null QLabeledSliderH) return QWidgetH is
begin
 return handle.widget;
end;

procedure QLabeledSlider_SetValueHint(handle:not null QLabeledSliderH; precision:integer := 8)  is
value : qt.double;
begin
 value := qt.double(QAbstractSlider_value(handle.slider))/handle.scale;
 Hint(slider => handle.slider,value => value, precision => precision);
end;


end Qt.QLabeledSlider;
