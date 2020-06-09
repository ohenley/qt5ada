--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2015                      บ
-- บ Copyright (C) 2012,2015                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *
with Qt.QValidator; use Qt.QValidator;
package Qt.QSpinBox             is

type QAbstractSpinBoxButtonSymbols is (QAbstractSpinBoxUpDownArrows, QAbstractSpinBoxPlusMinus, QAbstractSpinBoxNoButtons );
pragma Convention(C, QAbstractSpinBoxButtonSymbols);

type QAbstractSpinBoxCorrectionMode is (QAbstractSpinBoxCorrectToPreviousValue, QAbstractSpinBoxCorrectToNearestValue );
pragma Convention(C, QAbstractSpinBoxCorrectionMode);

subtype  QAbstractSpinBoxStepEnabledFlag is cardinal;
subtype  QAbstractSpinBoxStepEnabled     is cardinal;

QAbstractSpinBoxStepNone        : constant QAbstractSpinBoxStepEnabledFlag := 0;
QAbstractSpinBoxStepUpEnabled   : constant QAbstractSpinBoxStepEnabledFlag := 1;
QAbstractSpinBoxStepDownEnabled : constant QAbstractSpinBoxStepEnabledFlag := 2;

function QAbstractSpinBox_create(parent: QWidgetH := null) return QAbstractSpinBoxH;   
pragma Import(C,QAbstractSpinBox_create,"QAbstractSpinBox_create");

procedure QAbstractSpinBox_destroy(handle: not null  QAbstractSpinBoxH);   
pragma Import(C,QAbstractSpinBox_destroy,"QAbstractSpinBox_destroy");

function QAbstractSpinBox_buttonSymbols(handle: not null  QAbstractSpinBoxH) return  QAbstractSpinBoxButtonSymbols;   
pragma Import(C,QAbstractSpinBox_buttonSymbols,"QAbstractSpinBox_buttonSymbols");

procedure QAbstractSpinBox_setButtonSymbols(handle: not null  QAbstractSpinBoxH; bs: QAbstractSpinBoxButtonSymbols);   
pragma Import(C,QAbstractSpinBox_setButtonSymbols,"QAbstractSpinBox_setButtonSymbols");

procedure QAbstractSpinBox_setCorrectionMode(handle: not null  QAbstractSpinBoxH; cm: QAbstractSpinBoxCorrectionMode);   
pragma Import(C,QAbstractSpinBox_setCorrectionMode,"QAbstractSpinBox_setCorrectionMode");

function QAbstractSpinBox_correctionMode(handle: not null  QAbstractSpinBoxH) return  QAbstractSpinBoxCorrectionMode;   
pragma Import(C,QAbstractSpinBox_correctionMode,"QAbstractSpinBox_correctionMode");

function QAbstractSpinBox_hasAcceptableInput(handle: not null  QAbstractSpinBoxH) return  Boolean;   
pragma Import(C,QAbstractSpinBox_hasAcceptableInput,"QAbstractSpinBox_hasAcceptableInput");

function  QAbstractSpinBox_text(handle: not null  QAbstractSpinBoxH) return QStringH;
pragma Import(C,QAbstractSpinBox_text,"QAbstractSpinBox_text");

function  QAbstractSpinBox_specialValueText(handle: not null  QAbstractSpinBoxH) return QStringH;
pragma Import(C,QAbstractSpinBox_specialValueText,"QAbstractSpinBox_specialValueText");

procedure QAbstractSpinBox_setSpecialValueText(handle: not null  QAbstractSpinBoxH; txt: QStringH);   
pragma Import(C,QAbstractSpinBox_setSpecialValueText,"QAbstractSpinBox_setSpecialValueText");

function QAbstractSpinBox_wrapping(handle: not null  QAbstractSpinBoxH) return  Boolean;   
pragma Import(C,QAbstractSpinBox_wrapping,"QAbstractSpinBox_wrapping");

procedure QAbstractSpinBox_setWrapping(handle: not null  QAbstractSpinBoxH; w: Boolean);   
pragma Import(C,QAbstractSpinBox_setWrapping,"QAbstractSpinBox_setWrapping");

procedure QAbstractSpinBox_setReadOnly(handle: not null  QAbstractSpinBoxH; r: Boolean);   
pragma Import(C,QAbstractSpinBox_setReadOnly,"QAbstractSpinBox_setReadOnly");

function QAbstractSpinBox_isReadOnly(handle: not null  QAbstractSpinBoxH) return  Boolean;   
pragma Import(C,QAbstractSpinBox_isReadOnly,"QAbstractSpinBox_isReadOnly");

procedure QAbstractSpinBox_setKeyboardTracking(handle: not null  QAbstractSpinBoxH; kt: Boolean);   
pragma Import(C,QAbstractSpinBox_setKeyboardTracking,"QAbstractSpinBox_setKeyboardTracking");

function QAbstractSpinBox_keyboardTracking(handle: not null  QAbstractSpinBoxH) return  Boolean;   
pragma Import(C,QAbstractSpinBox_keyboardTracking,"QAbstractSpinBox_keyboardTracking");

procedure QAbstractSpinBox_setAlignment(handle: not null  QAbstractSpinBoxH; flag: QtAlignment);   
pragma Import(C,QAbstractSpinBox_setAlignment,"QAbstractSpinBox_setAlignment");

function QAbstractSpinBox_alignment(handle: not null  QAbstractSpinBoxH) return  QtAlignment;   
pragma Import(C,QAbstractSpinBox_alignment,"QAbstractSpinBox_alignment");

procedure QAbstractSpinBox_setFrame(handle: not null  QAbstractSpinBoxH; p1: Boolean);   
pragma Import(C,QAbstractSpinBox_setFrame,"QAbstractSpinBox_setFrame");

function QAbstractSpinBox_hasFrame(handle: not null  QAbstractSpinBoxH) return  Boolean;   
pragma Import(C,QAbstractSpinBox_hasFrame,"QAbstractSpinBox_hasFrame");

procedure QAbstractSpinBox_setAccelerated(handle: not null  QAbstractSpinBoxH; on: Boolean);   
pragma Import(C,QAbstractSpinBox_setAccelerated,"QAbstractSpinBox_setAccelerated");

function QAbstractSpinBox_isAccelerated(handle: not null  QAbstractSpinBoxH) return  Boolean;   
pragma Import(C,QAbstractSpinBox_isAccelerated,"QAbstractSpinBox_isAccelerated");

function  QAbstractSpinBox_sizeHint(handle: not null  QAbstractSpinBoxH) return QSizeH;
pragma Import(C,QAbstractSpinBox_sizeHint,"QAbstractSpinBox_sizeHint");

function  QAbstractSpinBox_minimumSizeHint(handle: not null  QAbstractSpinBoxH) return QSizeH;
pragma Import(C,QAbstractSpinBox_minimumSizeHint,"QAbstractSpinBox_minimumSizeHint");

procedure QAbstractSpinBox_interpretText(handle: not null  QAbstractSpinBoxH);   
pragma Import(C,QAbstractSpinBox_interpretText,"QAbstractSpinBox_interpretText");

function QAbstractSpinBox_event(handle: not null  QAbstractSpinBoxH; event: QEventH) return  Boolean;   
pragma Import(C,QAbstractSpinBox_event,"QAbstractSpinBox_event");

function QAbstractSpinBox_validate(handle: not null  QAbstractSpinBoxH; input: QStringH; pos: PInteger) return  QValidatorState;   
pragma Import(C,QAbstractSpinBox_validate,"QAbstractSpinBox_validate");

procedure QAbstractSpinBox_fixup(handle: not null  QAbstractSpinBoxH; input: QStringH);   
pragma Import(C,QAbstractSpinBox_fixup,"QAbstractSpinBox_fixup");

procedure QAbstractSpinBox_stepBy(handle: not null  QAbstractSpinBoxH; steps: Integer);   
pragma Import(C,QAbstractSpinBox_stepBy,"QAbstractSpinBox_stepBy");

procedure QAbstractSpinBox_stepUp(handle: not null  QAbstractSpinBoxH);   
pragma Import(C,QAbstractSpinBox_stepUp,"QAbstractSpinBox_stepUp");

procedure QAbstractSpinBox_stepDown(handle: not null  QAbstractSpinBoxH);   
pragma Import(C,QAbstractSpinBox_stepDown,"QAbstractSpinBox_stepDown");

procedure QAbstractSpinBox_selectAll(handle: not null  QAbstractSpinBoxH);   
pragma Import(C,QAbstractSpinBox_selectAll,"QAbstractSpinBox_selectAll");

procedure QAbstractSpinBox_clear(handle: not null  QAbstractSpinBoxH);   
pragma Import(C,QAbstractSpinBox_clear,"QAbstractSpinBox_clear");

function QSpinBox_create(parent: QWidgetH := null) return QSpinBoxH;   
pragma Import(C,QSpinBox_create,"QSpinBox_create");

procedure QSpinBox_destroy(handle: not null  QSpinBoxH);   
pragma Import(C,QSpinBox_destroy,"QSpinBox_destroy");

function QSpinBox_value(handle: not null  QSpinBoxH) return  Integer;   
pragma Import(C,QSpinBox_value,"QSpinBox_value");

function  QSpinBox_prefix(handle: not null  QSpinBoxH) return QStringH;
pragma Import(C,QSpinBox_prefix,"QSpinBox_prefix");

procedure QSpinBox_setPrefix(handle: not null  QSpinBoxH; prefix: QStringH);   
pragma Import(C,QSpinBox_setPrefix,"QSpinBox_setPrefix");

function  QSpinBox_suffix(handle: not null  QSpinBoxH)return QStringH;
pragma Import(C,QSpinBox_suffix,"QSpinBox_suffix");

procedure QSpinBox_setSuffix(handle: not null  QSpinBoxH; suffix: QStringH);   
pragma Import(C,QSpinBox_setSuffix,"QSpinBox_setSuffix");

function  QSpinBox_cleanText(handle: not null  QSpinBoxH) return QStringH;
pragma Import(C,QSpinBox_cleanText,"QSpinBox_cleanText");

function QSpinBox_singleStep(handle: not null  QSpinBoxH) return  Integer;   
pragma Import(C,QSpinBox_singleStep,"QSpinBox_singleStep");

procedure QSpinBox_setSingleStep(handle: not null  QSpinBoxH; val: Integer);   
pragma Import(C,QSpinBox_setSingleStep,"QSpinBox_setSingleStep");

function QSpinBox_minimum(handle: not null  QSpinBoxH) return  Integer;   
pragma Import(C,QSpinBox_minimum,"QSpinBox_minimum");

procedure QSpinBox_setMinimum(handle: not null  QSpinBoxH; min: Integer);   
pragma Import(C,QSpinBox_setMinimum,"QSpinBox_setMinimum");

function QSpinBox_maximum(handle: not null  QSpinBoxH) return  integer;   
pragma Import(C,QSpinBox_maximum,"QSpinBox_maximum");

procedure QSpinBox_setMaximum(handle: not null  QSpinBoxH; max: integer);   
pragma Import(C,QSpinBox_setMaximum,"QSpinBox_setMaximum");

procedure QSpinBox_setRange(handle: not null  QSpinBoxH; min: Integer; max: Integer);   
pragma Import(C,QSpinBox_setRange,"QSpinBox_setRange");

procedure QSpinBox_setValue(handle: not null  QSpinBoxH; val: Integer);   
pragma Import(C,QSpinBox_setValue,"QSpinBox_setValue");

function  QSpinBox_static_cast(handle:QSpinBoxH) return QSpinBoxH;
pragma Import(C,QSpinBox_static_cast, "QSpinBox_static_cast");
 
function QDoubleSpinBox_create(parent: QWidgetH := null) return QDoubleSpinBoxH;   
pragma Import(C,QDoubleSpinBox_create,"QDoubleSpinBox_create");

procedure QDoubleSpinBox_destroy(handle: not null  QDoubleSpinBoxH);   
pragma Import(C,QDoubleSpinBox_destroy,"QDoubleSpinBox_destroy");

function QDoubleSpinBox_value(handle: not null  QDoubleSpinBoxH) return  Double;   
pragma Import(C,QDoubleSpinBox_value,"QDoubleSpinBox_value");

function  QDoubleSpinBox_prefix(handle: not null  QDoubleSpinBoxH) return QStringH;
pragma Import(C,QDoubleSpinBox_prefix,"QDoubleSpinBox_prefix");

procedure QDoubleSpinBox_setPrefix(handle: not null  QDoubleSpinBoxH; prefix: QStringH);   
pragma Import(C,QDoubleSpinBox_setPrefix,"QDoubleSpinBox_setPrefix");

function  QDoubleSpinBox_suffix(handle: not null  QDoubleSpinBoxH) return QStringH;
pragma Import(C,QDoubleSpinBox_suffix,"QDoubleSpinBox_suffix");

procedure QDoubleSpinBox_setSuffix(handle: not null  QDoubleSpinBoxH; suffix: QStringH);   
pragma Import(C,QDoubleSpinBox_setSuffix,"QDoubleSpinBox_setSuffix");

function  QDoubleSpinBox_cleanText(handle: not null  QDoubleSpinBoxH) return QStringH;
pragma Import(C,QDoubleSpinBox_cleanText,"QDoubleSpinBox_cleanText");

function QDoubleSpinBox_singleStep(handle: not null  QDoubleSpinBoxH) return  Double;   
pragma Import(C,QDoubleSpinBox_singleStep,"QDoubleSpinBox_singleStep");

procedure QDoubleSpinBox_setSingleStep(handle: not null  QDoubleSpinBoxH; val: Double);   
pragma Import(C,QDoubleSpinBox_setSingleStep,"QDoubleSpinBox_setSingleStep");

function QDoubleSpinBox_minimum(handle: not null  QDoubleSpinBoxH) return  Double;   
pragma Import(C,QDoubleSpinBox_minimum,"QDoubleSpinBox_minimum");

procedure QDoubleSpinBox_setMinimum(handle: not null  QDoubleSpinBoxH; min: Double);   
pragma Import(C,QDoubleSpinBox_setMinimum,"QDoubleSpinBox_setMinimum");

function QDoubleSpinBox_maximum(handle: not null  QDoubleSpinBoxH) return  Double;   
pragma Import(C,QDoubleSpinBox_maximum,"QDoubleSpinBox_maximum");

procedure QDoubleSpinBox_setMaximum(handle: not null  QDoubleSpinBoxH; max: Double);   
pragma Import(C,QDoubleSpinBox_setMaximum,"QDoubleSpinBox_setMaximum");

procedure QDoubleSpinBox_setRange(handle: not null  QDoubleSpinBoxH; min: Double; max: Double);   
pragma Import(C,QDoubleSpinBox_setRange,"QDoubleSpinBox_setRange");

function QDoubleSpinBox_decimals(handle: not null  QDoubleSpinBoxH) return  Integer;   
pragma Import(C,QDoubleSpinBox_decimals,"QDoubleSpinBox_decimals");

procedure QDoubleSpinBox_setDecimals(handle: not null  QDoubleSpinBoxH; prec: Integer);   
pragma Import(C,QDoubleSpinBox_setDecimals,"QDoubleSpinBox_setDecimals");

function QDoubleSpinBox_validate(handle: not null  QDoubleSpinBoxH; input: QStringH; pos: PInteger) return  QValidatorState;   
pragma Import(C,QDoubleSpinBox_validate,"QDoubleSpinBox_validate");

function QDoubleSpinBox_valueFromText(handle: not null  QDoubleSpinBoxH; text: QStringH) return  Double;   
pragma Import(C,QDoubleSpinBox_valueFromText,"QDoubleSpinBox_valueFromText");

function  QDoubleSpinBox_textFromValue(handle: not null  QDoubleSpinBoxH; val: Double) return QStringH;
pragma Import(C,QDoubleSpinBox_textFromValue,"QDoubleSpinBox_textFromValue");

procedure QDoubleSpinBox_fixup(handle: not null  QDoubleSpinBoxH; str: QStringH);   
pragma Import(C,QDoubleSpinBox_fixup,"QDoubleSpinBox_fixup");

procedure QDoubleSpinBox_setValue(handle: not null  QDoubleSpinBoxH; val: Double);   
pragma Import(C,QDoubleSpinBox_setValue,"QDoubleSpinBox_setValue");

 function  QDoubleSpinBox_static_cast(handle:QDoubleSpinBoxH) return QDoubleSpinBoxH;
 pragma Import(C,QDoubleSpinBox_static_cast, "QDoubleSpinBox_static_cast");
 
 type QSpinBox_valueChangedEvent is access procedure (p1: Integer);
 pragma Convention(C,QSpinBox_valueChangedEvent);

 type QSpinBox_valueChanged2Event is access procedure (p1: QStringH);
 pragma Convention(C,QSpinBox_valueChanged2Event);

 type QDoubleSpinBox_valueChangedEvent is access procedure (p1: Double);
 pragma Convention(C,QDoubleSpinBox_valueChangedEvent);

 type QDoubleSpinBox_valueChanged2Event is access procedure (p1: QStringH);
 pragma Convention(C,QDoubleSpinBox_valueChanged2Event);

 type QAbstractSpinBox_editingFinishedEvent is access procedure;
 pragma Convention(C, QAbstractSpinBox_editingFinishedEvent);

 
 procedure QAbstractSpinBox_signal_slot_editingFinished(handle: not null QAbstractSpinBoxH; hook:QAbstractSpinBox_editingFinishedEvent);
 pragma Import(C,QAbstractSpinBox_signal_slot_editingFinished, "QAbstractSpinBox_signal_slot_editingFinished");
 
 procedure QSpinBox_signal_slot_valueChanged(handle: not null QSpinBoxH; hook:QSpinBox_valueChangedEvent);
 pragma Import(C,QSpinBox_signal_slot_valueChanged, "QSpinBox_signal_slot_valueChanged");
 
 procedure QSpinBox_signal_slot_valueChanged2(handle: not null QSpinBoxH; hook:QSpinBox_valueChanged2Event);
 pragma Import(C,QSpinBox_signal_slot_valueChanged2, "QSpinBox_signal_slot_valueChanged2");
 
 procedure QDoubleSpinBox_signal_slot_valueChanged(handle: not null QDoubleSpinBoxH; hook:QDoubleSpinBox_valueChangedEvent);
 pragma Import(C,QDoubleSpinBox_signal_slot_valueChanged, "QDoubleSpinBox_signal_slot_valueChanged");
 
 procedure QDoubleSpinBox_signal_slot_valueChanged2(handle: not null QDoubleSpinBoxH; hook:QDoubleSpinBox_valueChanged2Event);
 pragma Import(C,QDoubleSpinBox_signal_slot_valueChanged2, "QDoubleSpinBox_signal_slot_valueChanged2");

end Qt.QSpinBox;
