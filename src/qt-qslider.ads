--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014                      บ
-- บ Copyright (C) 2012,2014                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QAbstractSlider ; use Qt.QAbstractSlider;
package Qt.QSlider              is

subtype QSliderTickPosition is cardinal;

QSliderNoTicks        : constant QSliderTickPosition := 0;
QSliderTicksAbove     : constant QSliderTickPosition := 1;
QSliderTicksLeft      : constant QSliderTickPosition := 1;
QSliderTicksBelow     : constant QSliderTickPosition := 2;
QSliderTicksRight     : constant QSliderTickPosition := 2;
QSliderTicksBothSides : constant QSliderTickPosition := 3;

function QSlider_create(parent: QWidgetH := null) return QSliderH;    
pragma Import(C,QSlider_create,"QSlider_create");

procedure QSlider_destroy(handle: not null  QSliderH);   
pragma Import(C,QSlider_destroy,"QSlider_destroy");

function QSlider_create2(orientation: QtOrientation; parent: QWidgetH := null) return QSliderH;
pragma Import(C,QSlider_create2,"QSlider_create2");

function  QSlider_sizeHint(handle: not null  QSliderH) return QSizeH;
pragma Import(C,QSlider_sizeHint,"QSlider_sizeHint");

function  QSlider_minimumSizeHint(handle: not null  QSliderH) return QSizeH;
pragma Import(C,QSlider_minimumSizeHint,"QSlider_minimumSizeHint");

procedure QSlider_setTickPosition(handle: not null  QSliderH; position: QSliderTickPosition);   
pragma Import(C,QSlider_setTickPosition,"QSlider_setTickPosition");

function QSlider_tickPosition(handle: not null  QSliderH) return  QSliderTickPosition;   
pragma Import(C,QSlider_tickPosition,"QSlider_tickPosition");

procedure QSlider_setTickInterval(handle: not null  QSliderH; ti: Integer);   
pragma Import(C,QSlider_setTickInterval,"QSlider_setTickInterval");

function QSlider_tickInterval(handle: not null  QSliderH) return  Integer;   
pragma Import(C,QSlider_tickInterval,"QSlider_tickInterval");

function QSlider_event(handle: not null  QSliderH; event: QEventH) return  Boolean;   
pragma Import(C,QSlider_event,"QSlider_event");
 
--------------------------------------------------------------------------------------------------------
function QSlider_create(orientation: QtOrientation; parent: QWidgetH := null) return QSliderH;
procedure QSlider_SetValueHint(handle:not null QSliderH; precision:integer := 4);

end Qt.QSlider;
