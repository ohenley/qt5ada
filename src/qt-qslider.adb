--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012 ,2014                                          บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QWidget         ; use Qt.QWidget;
with Qt.QString         ; use Qt.QString;
with Qt.QLayout         ; use Qt.QLayout;
with Qt.QLabel          ; use Qt.QLabel;
with Qt.QSlider         ; use Qt.QSlider;
with Interfaces.C       ; use  Interfaces.C;
with builtin;             use builtin;

package body Qt.QSlider              is

function QSlider_create(orientation: QtOrientation; parent: QWidgetH := null) return QSliderH is
begin
 return QSlider_create2(orientation, parent);
end;

procedure Hint(slider: QSliderH; value: integer;precision: integer := 4) is
 begin
   QWidget_setToolTip(handle => QWidgetH(slider), p1 => s2qs(
   "<p><strong>" & put_i(value,precision) & "</strong></p>"));
 end;

procedure QSlider_SetValueHint(handle:not null QSliderH; precision:integer := 4)  is
value : integer;
begin
 value := QAbstractSlider_value(handle);
 Hint(slider => handle,value => value, precision => precision);
end;

end Qt.QSlider;
