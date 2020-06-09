--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2013                      บ
-- บ Copyright (C) 2012,2013                                           บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QEdit; use Qt.QEdit;
with Qt.QString; use Qt.QString;
with Interfaces.C; use Interfaces.C;
with builtin; use builtin;
package Qt.QInputDialog  is

 type InputDialogOption is (NoButtons,UseListViewForComboBoxItems);
 pragma convention(C,InputDialogOption);
 for InputDialogOption use (
        NoButtons                   => 1,
        UseListViewForComboBoxItems => 2);

 type InputMode is (TextInput,IntInput,DoubleInput);      
 pragma convention(C,InputMode);

 type stringProc is access procedure(p:QStringH);
 pragma convention(C,stringProc);

 type intProc is access procedure(p:integer);
 pragma convention(C,intProc);

 type doubleProc is access procedure(p:double);
 pragma convention(C,doubleProc);

 function  QInputDialog_create(parent:QWidgetH := null;flags: integer := 0) return QInputDialogH ;
 pragma Import(C,QInputDialog_create, "QInputDialog_create");
 
 procedure QInputDialog_destroy(handle: not null QInputDialogH);
 pragma Import(C,QInputDialog_destroy, "QInputDialog_destroy");
 
 procedure QInputDialog_setInputMode(handle: not null QInputDialogH;mode:InputMode);
 pragma Import(C,QInputDialog_setInputMode, "QInputDialog_setInputMode");
 
 function  QInputDialog_inputMode(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_inputMode, "QInputDialog_inputMode");
 
 procedure QInputDialog_setLabelText(handle: not null QInputDialogH;text:QStringH);
 pragma Import(C,QInputDialog_setLabelText, "QInputDialog_setLabelText");
 
 function  QInputDialog_labelText(handle: not null QInputDialogH) return QStringH;
 pragma Import(C,QInputDialog_labelText, "QInputDialog_labelText");
 
 procedure QInputDialog_setOption(handle: not null QInputDialogH;option:InputDialogOption;on: boolean := true);
 pragma Import(C,QInputDialog_setOption, "QInputDialog_setOption");
 
 function  QInputDialog_testOption(handle: not null QInputDialogH;option:InputDialogOption) return boolean;
 pragma Import(C,QInputDialog_testOption, "QInputDialog_testOption");
 
 procedure QInputDialog_setOptions(handle: not null QInputDialogH;options:integer);
 pragma Import(C,QInputDialog_setOptions, "QInputDialog_setOptions");
 
 function  QInputDialog_options(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_options, "QInputDialog_options");
 
 procedure QInputDialog_setTextValue(handle: not null QInputDialogH; text:QStringH);
 pragma Import(C,QInputDialog_setTextValue, "QInputDialog_setTextValue");
 
 function  QInputDialog_textValue(handle: not null QInputDialogH) return QStringH;
 pragma Import(C,QInputDialog_textValue, "QInputDialog_textValue");
 
 procedure QInputDialog_setTextEchoMode(handle: not null QInputDialogH;mode:QLineEditEchoMode);
 pragma Import(C,QInputDialog_setTextEchoMode, "QInputDialog_setTextEchoMode");
 
 function  QInputDialog_textEchoMode(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_textEchoMode, "QInputDialog_textEchoMode");
 
 procedure QInputDialog_setComboBoxEditable(handle: not null QInputDialogH; isEditable: boolean);
 pragma Import(C,QInputDialog_setComboBoxEditable, "QInputDialog_setComboBoxEditable");
 
 function  QInputDialog_isComboBoxEditable(handle: not null QInputDialogH) return boolean;
 pragma Import(C,QInputDialog_isComboBoxEditable, "QInputDialog_isComboBoxEditable");
 
 procedure QInputDialog_setComboBoxItems(handle: not null QInputDialogH;items: QStringListH);
 pragma Import(C,QInputDialog_setComboBoxItems, "QInputDialog_setComboBoxItems");
 
 function  QInputDialog_comboBoxItems(handle: not null QInputDialogH) return QStringListH;
 pragma Import(C,QInputDialog_comboBoxItems, "QInputDialog_comboBoxItems");
 
 procedure QInputDialog_setIntValue(handle: not null QInputDialogH;value:integer);
 pragma Import(C,QInputDialog_setIntValue, "QInputDialog_setIntValue");
 
 function  QInputDialog_intValue(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_intValue, "QInputDialog_intValue");
 
 procedure QInputDialog_setIntMinimum(handle: not null QInputDialogH;min:integer);
 pragma Import(C,QInputDialog_setIntMinimum, "QInputDialog_setIntMinimum");
 
 function  QInputDialog_intMinimum(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_intMinimum, "QInputDialog_intMinimum");
 
 procedure QInputDialog_setIntMaximum(handle: not null QInputDialogH; max:integer);
 pragma Import(C,QInputDialog_setIntMaximum, "QInputDialog_setIntMaximum");
 
 function  QInputDialog_intMaximum(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_intMaximum, "QInputDialog_intMaximum");
 
 procedure QInputDialog_setIntRange(handle: not null QInputDialogH; min,max:integer);
 pragma Import(C,QInputDialog_setIntRange, "QInputDialog_setIntRange");
 
 procedure QInputDialog_setIntStep(handle: not null QInputDialogH; step:integer);
 pragma Import(C,QInputDialog_setIntStep, "QInputDialog_setIntStep");
 
 function  QInputDialog_intStep(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_intStep, "QInputDialog_intStep");
 
 procedure QInputDialog_setDoubleValue(handle: not null QInputDialogH; value:double);
 pragma Import(C,QInputDialog_setDoubleValue, "QInputDialog_setDoubleValue");
 
 function  QInputDialog_doubleValue(handle: not null QInputDialogH) return double;
 pragma Import(C,QInputDialog_doubleValue, "QInputDialog_doubleValue");
 
 procedure QInputDialog_setDoubleMinimum(handle: not null QInputDialogH;min:double);
 pragma Import(C,QInputDialog_setDoubleMinimum, "QInputDialog_setDoubleMinimum");
 
 function  QInputDialog_doubleMinimum(handle: not null QInputDialogH) return double;
 pragma Import(C,QInputDialog_doubleMinimum, "QInputDialog_doubleMinimum");
 
 procedure QInputDialog_setDoubleMaximum(handle: not null QInputDialogH;max:double);
 pragma Import(C,QInputDialog_setDoubleMaximum, "QInputDialog_setDoubleMaximum");
 
 function  QInputDialog_doubleMaximum(handle: not null QInputDialogH) return double;
 pragma Import(C,QInputDialog_doubleMaximum, "QInputDialog_doubleMaximum");
 
 procedure QInputDialog_setDoubleRange(handle: not null QInputDialogH;min,max:double);
 pragma Import(C,QInputDialog_setDoubleRange, "QInputDialog_setDoubleRange");
 
 procedure QInputDialog_setDoubleDecimals(handle: not null QInputDialogH; decimals:integer);
 pragma Import(C,QInputDialog_setDoubleDecimals, "QInputDialog_setDoubleDecimals");
 
 function  QInputDialog_doubleDecimals(handle: not null QInputDialogH) return integer;
 pragma Import(C,QInputDialog_doubleDecimals, "QInputDialog_doubleDecimals");
 
 procedure QInputDialog_setOkButtonText(handle: not null QInputDialogH; text:QStringH);
 pragma Import(C,QInputDialog_setOkButtonText, "QInputDialog_setOkButtonText");
 
 function  QInputDialog_okButtonText(handle: not null QInputDialogH) return QStringH;
 pragma Import(C,QInputDialog_okButtonText, "QInputDialog_okButtonText");
 
 procedure QInputDialog_setCancelButtonText(handle: not null QInputDialogH;text:QStringH);
 pragma Import(C,QInputDialog_setCancelButtonText, "QInputDialog_setCancelButtonText");
 
 function  QInputDialog_cancelButtonText(handle: not null QInputDialogH) return QStringH;
 pragma Import(C,QInputDialog_cancelButtonText, "QInputDialog_cancelButtonText");
 
 procedure QInputDialog_open(handle: not null QInputDialogH;receiver:QObjectH; member: zstring);
 pragma Import(C,QInputDialog_open, "QInputDialog_open");
 
 function  QInputDialog_minimumSizeHint(handle: not null QInputDialogH) return QSizeH;
 pragma Import(C,QInputDialog_minimumSizeHint, "QInputDialog_minimumSizeHint");
 
 function  QInputDialog_sizeHint(handle: not null QInputDialogH) return QSizeH;
 pragma Import(C,QInputDialog_sizeHint, "QInputDialog_sizeHint");
 
 procedure QInputDialog_setVisible(handle: not null QInputDialogH;isVisible: boolean);
 pragma Import(C,QInputDialog_setVisible, "QInputDialog_setVisible");
 
 procedure QInputDialog_done(handle: not null QInputDialogH; result:integer);
 pragma Import(C,QInputDialog_done, "QInputDialog_done");
 
 function  QInputDialog_getText( parent: QWidgetH; title: QStringH; label: QStringH; echo: QLineEditEchoMode := QLineEditNormal; text: QStringH := s2qs(""); ok: PBoolean := null; f: QtWindowFlags := 0) return QStringH;
 pragma Import(C,QInputDialog_getText,"QInputDialog_getText");

 function QInputDialog_getInt(parent: QWidgetH; title: QStringH; label: QStringH; value: Integer := 0; minValue: Integer := -2147483647; maxValue: Integer := 2147483647; step: Integer := 1; ok: PBoolean := null; f: QtWindowFlags := 0) return Integer;   
 pragma Import(C,QInputDialog_getInt,"QInputDialog_getInt");

 function QInputDialog_getDouble(parent: QWidgetH; title: QStringH; label: QStringH; value: Double := 0.0; minValue: Double := -2147483647.0; maxValue: Double := 2147483647.0; decimals: Integer := 1; ok: PBoolean := null; f: QtWindowFlags := 0) return Double;
 pragma Import(C,QInputDialog_getDouble,"QInputDialog_getDouble");

 function  QInputDialog_getItem(parent: QWidgetH; title: QStringH; label: QStringH; list: QStringListH; current: Integer := 0; editable: Boolean := True; ok: PBoolean := null; f: QtWindowFlags := 0) return QStringH;
 pragma Import(C,QInputDialog_getItem,"QInputDialog_getItem");

 function  QInputDialog_getMultiLineText(parent:QWidgetH; title,label: QStringH; text:QStringH := QString_create; ok: pboolean := null; flags:integer := 0; inputMethodHints: quint := 0) return QStringH;
 pragma Import(C,QInputDialog_getMultiLineText, "QInputDialog_getMultiLineText");

 procedure QInputDialog_signal_slot_textValueChanged(handle: not null QInputDialogH;hook: stringProc);
 pragma Import(C,QInputDialog_signal_slot_textValueChanged, "QInputDialog_signal_slot_textValueChanged");
 
 procedure QInputDialog_signal_slot_textValueSelectedChanged(handle: not null QInputDialogH;hook: stringProc);
 pragma Import(C,QInputDialog_signal_slot_textValueSelectedChanged, "QInputDialog_signal_slot_textValueSelectedChanged");
 
 procedure QInputDialog_signal_slot_intValueChanged(handle: not null QInputDialogH;hook: intProc);
 pragma Import(C,QInputDialog_signal_slot_intValueChanged, "QInputDialog_signal_slot_intValueChanged");
 
 procedure QInputDialog_signal_slot_intValueSelectedChanged(handle: not null QInputDialogH;hook: intProc);
 pragma Import(C,QInputDialog_signal_slot_intValueSelectedChanged, "QInputDialog_signal_slot_intValueSelectedChanged");
 
 procedure QInputDialog_signal_slot_doubleValueChanged(handle: not null QInputDialogH;hook: doubleProc);
 pragma Import(C,QInputDialog_signal_slot_doubleValueChanged, "QInputDialog_signal_slot_doubleValueChanged");
 
 procedure QInputDialog_signal_slot_doubleValueSelectedChanged(handle: not null QInputDialogH;hook: doubleProc);
 pragma Import(C,QInputDialog_signal_slot_doubleValueSelectedChanged, "QInputDialog_signal_slot_doubleValueSelectedChanged");
 
end Qt.QInputDialog;
