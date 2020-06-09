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
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *


package  Qt.QAbstractSlider                is

type QAbstractSliderSliderAction is (QAbstractSliderSliderNoAction, QAbstractSliderSliderSingleStepAdd, QAbstractSliderSliderSingleStepSub, QAbstractSliderSliderPageStepAdd, QAbstractSliderSliderPageStepSub, QAbstractSliderSliderToMinimum, 
                                     QAbstractSliderSliderToMaximum, QAbstractSliderSliderMove );
pragma Convention(C,QAbstractSliderSliderAction);

function QAbstractSlider_create(parent: QWidgetH := null) return QAbstractSliderH;   
pragma Import(C,QAbstractSlider_create,"QAbstractSlider_create");

procedure QAbstractSlider_destroy(handle: not null  QAbstractSliderH);   
pragma Import(C,QAbstractSlider_destroy,"QAbstractSlider_destroy");

function QAbstractSlider_orientation(handle: not null  QAbstractSliderH) return  QtOrientation;   
pragma Import(C,QAbstractSlider_orientation,"QAbstractSlider_orientation");

procedure QAbstractSlider_setMinimum(handle: not null  QAbstractSliderH; p1: Integer);   
pragma Import(C,QAbstractSlider_setMinimum,"QAbstractSlider_setMinimum");

function QAbstractSlider_minimum(handle: not null  QAbstractSliderH) return  Integer;   
pragma Import(C,QAbstractSlider_minimum,"QAbstractSlider_minimum");

procedure QAbstractSlider_setMaximum(handle: not null  QAbstractSliderH; p1: Integer);   
pragma Import(C,QAbstractSlider_setMaximum,"QAbstractSlider_setMaximum");

function QAbstractSlider_maximum(handle: not null  QAbstractSliderH) return  Integer;   
pragma Import(C,QAbstractSlider_maximum,"QAbstractSlider_maximum");

procedure QAbstractSlider_setRange(handle: not null  QAbstractSliderH; min: Integer; max: Integer);   
pragma Import(C,QAbstractSlider_setRange,"QAbstractSlider_setRange");

procedure QAbstractSlider_setSingleStep(handle: not null  QAbstractSliderH; p1: Integer);   
pragma Import(C,QAbstractSlider_setSingleStep,"QAbstractSlider_setSingleStep");

function QAbstractSlider_singleStep(handle: not null  QAbstractSliderH) return  Integer;   
pragma Import(C,QAbstractSlider_singleStep,"QAbstractSlider_singleStep");

procedure QAbstractSlider_setPageStep(handle: not null  QAbstractSliderH; p1: Integer);   
pragma Import(C,QAbstractSlider_setPageStep,"QAbstractSlider_setPageStep");

function QAbstractSlider_pageStep(handle: not null  QAbstractSliderH) return  Integer;   
pragma Import(C,QAbstractSlider_pageStep,"QAbstractSlider_pageStep");

procedure QAbstractSlider_setTracking(handle: not null  QAbstractSliderH; enable: Boolean);   
pragma Import(C,QAbstractSlider_setTracking,"QAbstractSlider_setTracking");

function QAbstractSlider_hasTracking(handle: not null  QAbstractSliderH) return  Boolean;   
pragma Import(C,QAbstractSlider_hasTracking,"QAbstractSlider_hasTracking");

procedure QAbstractSlider_setSliderDown(handle: not null  QAbstractSliderH; p1: Boolean);   
pragma Import(C,QAbstractSlider_setSliderDown,"QAbstractSlider_setSliderDown");

function QAbstractSlider_isSliderDown(handle: not null  QAbstractSliderH) return  Boolean;   
pragma Import(C,QAbstractSlider_isSliderDown,"QAbstractSlider_isSliderDown");

procedure QAbstractSlider_setSliderPosition(handle: not null  QAbstractSliderH; p1: Integer);   
pragma Import(C,QAbstractSlider_setSliderPosition,"QAbstractSlider_setSliderPosition");

function QAbstractSlider_sliderPosition(handle: not null  QAbstractSliderH) return  Integer;   
pragma Import(C,QAbstractSlider_sliderPosition,"QAbstractSlider_sliderPosition");

procedure QAbstractSlider_setInvertedAppearance(handle: not null  QAbstractSliderH; p1: Boolean);   
pragma Import(C,QAbstractSlider_setInvertedAppearance,"QAbstractSlider_setInvertedAppearance");

function QAbstractSlider_invertedAppearance(handle: not null  QAbstractSliderH) return  Boolean;   
pragma Import(C,QAbstractSlider_invertedAppearance,"QAbstractSlider_invertedAppearance");

procedure QAbstractSlider_setInvertedControls(handle: not null  QAbstractSliderH; p1: Boolean);   
pragma Import(C,QAbstractSlider_setInvertedControls,"QAbstractSlider_setInvertedControls");

function QAbstractSlider_invertedControls(handle: not null  QAbstractSliderH) return  Boolean;   
pragma Import(C,QAbstractSlider_invertedControls,"QAbstractSlider_invertedControls");

function QAbstractSlider_value(handle: not null  QAbstractSliderH) return  Integer;   
pragma Import(C,QAbstractSlider_value,"QAbstractSlider_value");

procedure QAbstractSlider_triggerAction(handle: not null  QAbstractSliderH; action: QAbstractSliderSliderAction);   
pragma Import(C,QAbstractSlider_triggerAction,"QAbstractSlider_triggerAction");

procedure QAbstractSlider_setValue(handle: not null  QAbstractSliderH; p1: Integer);   
pragma Import(C,QAbstractSlider_setValue,"QAbstractSlider_setValue");

procedure QAbstractSlider_setOrientation(handle: not null  QAbstractSliderH; p1: QtOrientation);   
pragma Import(C,QAbstractSlider_setOrientation,"QAbstractSlider_setOrientation");

type  QAbstractSlider_valueChangedEvent is access procedure (value: Integer);
pragma Convention(C,QAbstractSlider_valueChangedEvent);

type  QAbstractSlider_sliderPressedEvent is access procedure ;
pragma Convention(C,QAbstractSlider_sliderPressedEvent);

type  QAbstractSlider_sliderMovedEvent is access procedure (position: Integer);
pragma Convention(C,QAbstractSlider_sliderMovedEvent);

type  QAbstractSlider_sliderReleasedEvent is access procedure ;
pragma Convention(C,QAbstractSlider_sliderReleasedEvent);

type  QAbstractSlider_rangeChangedEvent is access procedure (min: Integer; max: Integer);
pragma Convention(C,QAbstractSlider_rangeChangedEvent);

type  QAbstractSlider_actionTriggeredEvent is access procedure (action: Integer);
pragma Convention(C,QAbstractSlider_actionTriggeredEvent);
 
 procedure QAbstractSlider_signal_slot_valueChanged(handle: not null QAbstractSliderH; hook:QAbstractSlider_valueChangedEvent);
 pragma Import(C,QAbstractSlider_signal_slot_valueChanged, "QAbstractSlider_signal_slot_valueChanged");
 
 procedure QAbstractSlider_signal_slot_sliderPressed(handle: not null QAbstractSliderH; hook:QAbstractSlider_sliderPressedEvent);
 pragma Import(C,QAbstractSlider_signal_slot_sliderPressed, "QAbstractSlider_signal_slot_sliderPressed");
 
 procedure QAbstractSlider_signal_slot_sliderMoved(handle: not null QAbstractSliderH; hook:QAbstractSlider_sliderMovedEvent);
 pragma Import(C,QAbstractSlider_signal_slot_sliderMoved, "QAbstractSlider_signal_slot_sliderMoved");
 
 procedure QAbstractSlider_signal_slot_sliderReleased(handle: not null QAbstractSliderH; hook:QAbstractSlider_sliderReleasedEvent);
 pragma Import(C,QAbstractSlider_signal_slot_sliderReleased, "QAbstractSlider_signal_slot_sliderReleased");
 
 procedure QAbstractSlider_signal_slot_rangeChanged(handle: not null QAbstractSliderH; hook:QAbstractSlider_rangeChangedEvent);
 pragma Import(C,QAbstractSlider_signal_slot_rangeChanged, "QAbstractSlider_signal_slot_rangeChanged");
 
 procedure QAbstractSlider_signal_slot_actionTriggered(handle: not null QAbstractSliderH; hook:QAbstractSlider_actionTriggeredEvent);
 pragma Import(C,QAbstractSlider_signal_slot_actionTriggered, "QAbstractSlider_signal_slot_actionTriggered");
 

end Qt.QAbstractSlider;
