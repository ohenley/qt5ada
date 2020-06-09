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

with Qt.QAbstractSlider ; use Qt.QAbstractSlider;
package Qt.QLabeledSlider              is

type QLabeledSliderR is private;
type QLabeledSliderH is access QLabeledSliderR;

function QLabeledSlider_create(text: QStringH; valueChangedAction:QAbstractSlider_valueChangedEvent; orientation: QtOrientation := QtHorizontal;min : qt.double := 0.0; max : qt.double := 1.0; val: qt.double := 0.0;scale : qt.double := 100.0; textPos : LabelPos := labelLeft) return QLabeledSliderH;

function QLabeledSlider_GetSlider(handle:not null QLabeledSliderH) return QSliderH;

function QLabeledSlider_GetLabel(handle:not null QLabeledSliderH) return  QLabelH;

function QLabeledSlider_GetBuiltWidget(handle:not null QLabeledSliderH) return QWidgetH;

procedure QLabeledSlider_SetValueHint(handle:not null QLabeledSliderH; precision:integer := 8);

 private type QLabeledSliderR is  record
 slider : QSliderH;
 label  : QLabelH;
 widget : QWidgetH;
 scale  : qt.double;
end record;

end Qt.QLabeledSlider;
