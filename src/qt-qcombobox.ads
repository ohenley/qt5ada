--
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2016                 บ
-- บ Copyright (C) 2012,2014,2016                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Interfaces.C;  use Interfaces.C;
with Qt.QVariant;   use Qt.QVariant;
package Qt.QComboBox            is

type QComboBoxInsertPolicy is (QComboBoxNoInsert, QComboBoxInsertAtTop, QComboBoxInsertAtCurrent, QComboBoxInsertAtBottom, QComboBoxInsertAfterCurrent, QComboBoxInsertBeforeCurrent, QComboBoxInsertAlphabetically );
pragma Convention(C,QComboBoxInsertPolicy);

type QComboBoxSizeAdjustPolicy is (QComboBoxAdjustToContents, QComboBoxAdjustToContentsOnFirstShow, QComboBoxAdjustToMinimumContentsLength, QComboBoxAdjustToMinimumContentsLengthWithIcon );
pragma Convention(C,QComboBoxSizeAdjustPolicy);

function QComboBox_create(parent: QWidgetH := null) return QComboBoxH;   
pragma Import(C,QComboBox_create,"QComboBox_create");

procedure QComboBox_destroy(handle: not null  QComboBoxH);   
pragma Import(C,QComboBox_destroy,"QComboBox_destroy");

function QComboBox_maxVisibleItems(handle: not null  QComboBoxH) return  Integer;   
pragma Import(C,QComboBox_maxVisibleItems,"QComboBox_maxVisibleItems");

procedure QComboBox_setMaxVisibleItems(handle: not null  QComboBoxH; maxItems: Integer);   
pragma Import(C,QComboBox_setMaxVisibleItems,"QComboBox_setMaxVisibleItems");

function QComboBox_count(handle: not null  QComboBoxH) return  Integer;   
pragma Import(C,QComboBox_count,"QComboBox_count");

procedure QComboBox_setMaxCount(handle: not null  QComboBoxH; max: Integer);   
pragma Import(C,QComboBox_setMaxCount,"QComboBox_setMaxCount");

function QComboBox_maxCount(handle: not null  QComboBoxH) return  Integer;   
pragma Import(C,QComboBox_maxCount,"QComboBox_maxCount");

function QComboBox_autoCompletion(handle: not null  QComboBoxH) return  Boolean;   
pragma Import(C,QComboBox_autoCompletion,"QComboBox_autoCompletion");

procedure QComboBox_setAutoCompletion(handle: not null  QComboBoxH; enable: Boolean);   
pragma Import(C,QComboBox_setAutoCompletion,"QComboBox_setAutoCompletion");

function QComboBox_autoCompletionCaseSensitivity(handle: not null  QComboBoxH) return  QtCaseSensitivity;   
pragma Import(C,QComboBox_autoCompletionCaseSensitivity,"QComboBox_autoCompletionCaseSensitivity");

procedure QComboBox_setAutoCompletionCaseSensitivity(handle: not null  QComboBoxH; sensitivity: QtCaseSensitivity);   
pragma Import(C,QComboBox_setAutoCompletionCaseSensitivity,"QComboBox_setAutoCompletionCaseSensitivity");

function QComboBox_duplicatesEnabled(handle: not null  QComboBoxH) return  Boolean;   
pragma Import(C,QComboBox_duplicatesEnabled,"QComboBox_duplicatesEnabled");

procedure QComboBox_setDuplicatesEnabled(handle: not null  QComboBoxH; enable: Boolean);   
pragma Import(C,QComboBox_setDuplicatesEnabled,"QComboBox_setDuplicatesEnabled");

procedure QComboBox_setFrame(handle: not null  QComboBoxH; p1: Boolean);   
pragma Import(C,QComboBox_setFrame,"QComboBox_setFrame");

function QComboBox_hasFrame(handle: not null  QComboBoxH) return  Boolean;   
pragma Import(C,QComboBox_hasFrame,"QComboBox_hasFrame");

function QComboBox_findText(handle: not null  QComboBoxH; text: QStringH; flags: QtMatchFlags := QtMatchExactly or QtMatchCaseSensitive) return Integer;   
pragma Import(C,QComboBox_findText,"QComboBox_findText");

function QComboBox_findData(handle: not null  QComboBoxH; data: QVariantH; role: QtItemDataRole := QtUserRole; flags: QtMatchFlags := QtMatchExactly or QtMatchCaseSensitive) return Integer;   
pragma Import(C,QComboBox_findData,"QComboBox_findData");

function QComboBox_insertPolicy(handle: not null  QComboBoxH) return  QComboBoxInsertPolicy;   
pragma Import(C,QComboBox_insertPolicy,"QComboBox_insertPolicy");

procedure QComboBox_setInsertPolicy(handle: not null  QComboBoxH; policy: QComboBoxInsertPolicy);   
pragma Import(C,QComboBox_setInsertPolicy,"QComboBox_setInsertPolicy");

function QComboBox_sizeAdjustPolicy(handle: not null  QComboBoxH) return  QComboBoxSizeAdjustPolicy;   
pragma Import(C,QComboBox_sizeAdjustPolicy,"QComboBox_sizeAdjustPolicy");

procedure QComboBox_setSizeAdjustPolicy(handle: not null  QComboBoxH; policy: QComboBoxSizeAdjustPolicy);   
pragma Import(C,QComboBox_setSizeAdjustPolicy,"QComboBox_setSizeAdjustPolicy");

function QComboBox_minimumContentsLength(handle: not null  QComboBoxH) return  Integer;   
pragma Import(C,QComboBox_minimumContentsLength,"QComboBox_minimumContentsLength");

procedure QComboBox_setMinimumContentsLength(handle: not null  QComboBoxH; characters: Integer);   
pragma Import(C,QComboBox_setMinimumContentsLength,"QComboBox_setMinimumContentsLength");

function  QComboBox_iconSize(handle: not null  QComboBoxH) return  QSizeH;
pragma Import(C,QComboBox_iconSize,"QComboBox_iconSize");

procedure QComboBox_setIconSize(handle: not null  QComboBoxH; size: QSizeH);   
pragma Import(C,QComboBox_setIconSize,"QComboBox_setIconSize");

function QComboBox_isEditable(handle: not null  QComboBoxH) return  Boolean;   
pragma Import(C,QComboBox_isEditable,"QComboBox_isEditable");

procedure QComboBox_setEditable(handle: not null  QComboBoxH; editable: Boolean);   
pragma Import(C,QComboBox_setEditable,"QComboBox_setEditable");

procedure QComboBox_setLineEdit(handle: not null  QComboBoxH; edit: QLineEditH);   
pragma Import(C,QComboBox_setLineEdit,"QComboBox_setLineEdit");

function QComboBox_lineEdit(handle: not null  QComboBoxH) return  QLineEditH;   
pragma Import(C,QComboBox_lineEdit,"QComboBox_lineEdit");

procedure QComboBox_setValidator(handle: not null  QComboBoxH; v: QValidatorH);   
pragma Import(C,QComboBox_setValidator,"QComboBox_setValidator");

function QComboBox_validator(handle: not null  QComboBoxH) return  QValidatorH;   
pragma Import(C,QComboBox_validator,"QComboBox_validator");

procedure QComboBox_setCompleter(handle: not null  QComboBoxH; c: QCompleterH);   
pragma Import(C,QComboBox_setCompleter,"QComboBox_setCompleter");

function QComboBox_completer(handle: not null  QComboBoxH) return  QCompleterH;   
pragma Import(C,QComboBox_completer,"QComboBox_completer");

function QComboBox_itemDelegate(handle: not null  QComboBoxH) return  QAbstractItemDelegateH;   
pragma Import(C,QComboBox_itemDelegate,"QComboBox_itemDelegate");

procedure QComboBox_setItemDelegate(handle: not null  QComboBoxH; delegate: QAbstractItemDelegateH);   
pragma Import(C,QComboBox_setItemDelegate,"QComboBox_setItemDelegate");

function QComboBox_model(handle: not null  QComboBoxH) return  QAbstractItemModelH;   
pragma Import(C,QComboBox_model,"QComboBox_model");

procedure QComboBox_setModel(handle: not null  QComboBoxH; model: QAbstractItemModelH);   
pragma Import(C,QComboBox_setModel,"QComboBox_setModel");

function  QComboBox_rootModelIndex(handle: not null  QComboBoxH) return  QModelIndexH;
pragma Import(C,QComboBox_rootModelIndex,"QComboBox_rootModelIndex");

procedure QComboBox_setRootModelIndex(handle: not null  QComboBoxH; index: QModelIndexH);   
pragma Import(C,QComboBox_setRootModelIndex,"QComboBox_setRootModelIndex");

function QComboBox_modelColumn(handle: not null  QComboBoxH) return  Integer;   
pragma Import(C,QComboBox_modelColumn,"QComboBox_modelColumn");

procedure QComboBox_setModelColumn(handle: not null  QComboBoxH; visibleColumn: Integer);   
pragma Import(C,QComboBox_setModelColumn,"QComboBox_setModelColumn");

function QComboBox_currentIndex(handle: not null  QComboBoxH) return  Integer;   
pragma Import(C,QComboBox_currentIndex,"QComboBox_currentIndex");

function QComboBox_currentText(handle: not null  QComboBoxH) return  QStringH;
pragma Import(C,QComboBox_currentText,"QComboBox_currentText");

function  QComboBox_currentData(handle:not null QComboBoxH;role: QtItemDataRole := QtUserRole) return QVariantH;
pragma Import(C,QComboBox_currentData, "QComboBox_currentData");
 
function  QComboBox_itemText(handle: not null  QComboBoxH; index: Integer) return QStringH;
pragma Import(C,QComboBox_itemText,"QComboBox_itemText");

function  QComboBox_itemIcon(handle: not null  QComboBoxH; index: Integer) return  QIconH;
pragma Import(C,QComboBox_itemIcon,"QComboBox_itemIcon");

function  QComboBox_itemData(handle: not null  QComboBoxH; index: Integer; role: QtItemDataRole := QtUserRole) return  QVariantH;
pragma Import(C,QComboBox_itemData,"QComboBox_itemData");

function  QComboBox_itemData2(handle: not null  QComboBoxH; index: Integer; role: QtItemDataRole := QtUserRole) return  integer;
pragma Import(C,QComboBox_itemData2,"QComboBox_itemData2");

procedure QComboBox_addItem(handle: not null  QComboBoxH; text: QStringH; userData: QVariantH := QVariant_create);    
pragma Import(C,QComboBox_addItem,"QComboBox_addItem");

procedure QComboBox_addItem2(handle: not null  QComboBoxH; icon: QIconH; text: QStringH; userData: QVariantH := QVariant_create);
pragma Import(C,QComboBox_addItem2,"QComboBox_addItem2");

procedure QComboBox_addItems(handle: not null  QComboBoxH; texts: QStringListH);   
pragma Import(C,QComboBox_addItems,"QComboBox_addItems");

procedure QComboBox_insertItem(handle: not null  QComboBoxH; index: Integer; text: QStringH; userData: QVariantH := QVariant_create);    
pragma Import(C,QComboBox_insertItem,"QComboBox_insertItem");

procedure QComboBox_insertItem2(handle: not null  QComboBoxH; index: Integer; icon: QIconH; text: QStringH; userData: QVariantH  := QVariant_create);
pragma Import(C,QComboBox_insertItem2,"QComboBox_insertItem2");

procedure QComboBox_insertItems(handle: not null  QComboBoxH; index: Integer; texts: QStringListH);   
pragma Import(C,QComboBox_insertItems,"QComboBox_insertItems");

procedure QComboBox_removeItem(handle: not null  QComboBoxH; index: Integer);   
pragma Import(C,QComboBox_removeItem,"QComboBox_removeItem");

procedure QComboBox_setItemText(handle: not null  QComboBoxH; index: Integer; text: QStringH);   
pragma Import(C,QComboBox_setItemText,"QComboBox_setItemText");

procedure QComboBox_setItemIcon(handle: not null  QComboBoxH; index: Integer; icon: QIconH);   
pragma Import(C,QComboBox_setItemIcon,"QComboBox_setItemIcon");

procedure QComboBox_setItemData(handle: not null  QComboBoxH; index: Integer; value: QVariantH; role: QtItemDataRole := QtUserRole);   
pragma Import(C,QComboBox_setItemData,"QComboBox_setItemData");

function QComboBox_view(handle: not null  QComboBoxH) return  QAbstractItemViewH;   
pragma Import(C,QComboBox_view,"QComboBox_view");

procedure QComboBox_setView(handle: not null  QComboBoxH; itemView: QAbstractItemViewH);   
pragma Import(C,QComboBox_setView,"QComboBox_setView");

function  QComboBox_sizeHint(handle: not null  QComboBoxH) return  QSizeH;
pragma Import(C,QComboBox_sizeHint,"QComboBox_sizeHint");

function  QComboBox_minimumSizeHint(handle: not null  QComboBoxH) return QSizeH;
pragma Import(C,QComboBox_minimumSizeHint,"QComboBox_minimumSizeHint");

procedure QComboBox_showPopup(handle: not null  QComboBoxH);   
pragma Import(C,QComboBox_showPopup,"QComboBox_showPopup");

procedure QComboBox_hidePopup(handle: not null  QComboBoxH);   
pragma Import(C,QComboBox_hidePopup,"QComboBox_hidePopup");

function QComboBox_event(handle: not null  QComboBoxH; event: QEventH) return  Boolean;   
pragma Import(C,QComboBox_event,"QComboBox_event");

procedure QComboBox_clear(handle: not null  QComboBoxH);   
pragma Import(C,QComboBox_clear,"QComboBox_clear");

procedure QComboBox_clearEditText(handle: not null  QComboBoxH);   
pragma Import(C,QComboBox_clearEditText,"QComboBox_clearEditText");

procedure QComboBox_setEditText(handle: not null  QComboBoxH; text: QStringH);   
pragma Import(C,QComboBox_setEditText,"QComboBox_setEditText");

procedure QComboBox_setCurrentIndex(handle: not null  QComboBoxH; index: Integer);   
pragma Import(C,QComboBox_setCurrentIndex,"QComboBox_setCurrentIndex");
-----------------------------------------------------------------------------
 procedure QComboBox_signal_slot_editTextChanged(handle: not null QComboBoxH; hook:QStringCallbackH);
 pragma Import(C,QComboBox_signal_slot_editTextChanged, "QComboBox_signal_slot_editTextChanged");
 
 procedure QComboBox_signal_slot_activated(handle: not null QComboBoxH; hook:intCallbackH);
 pragma Import(C,QComboBox_signal_slot_activated, "QComboBox_signal_slot_activated");
 
 procedure QComboBox_signal_slot_activated2(handle: not null QComboBoxH; hook:QStringCallbackH);
 pragma Import(C,QComboBox_signal_slot_activated2, "QComboBox_signal_slot_activated2");
 
 procedure QComboBox_signal_slot_highlighted(handle: not null QComboBoxH; hook:intCallbackH);
 pragma Import(C,QComboBox_signal_slot_highlighted, "QComboBox_signal_slot_highlighted");
 
 procedure QComboBox_signal_slot_highlighted2(handle: not null QComboBoxH; hook:QStringCallbackH);
 pragma Import(C,QComboBox_signal_slot_highlighted2, "QComboBox_signal_slot_highlighted2");
 
 procedure QComboBox_signal_slot_currentIndexChanged(handle: not null QComboBoxH; hook:intCallbackH);
 pragma Import(C,QComboBox_signal_slot_currentIndexChanged, "QComboBox_signal_slot_currentIndexChanged");
 
 procedure QComboBox_signal_slot_currentIndexChanged2(handle: not null QComboBoxH; hook:QStringCallbackH);
 pragma Import(C,QComboBox_signal_slot_currentIndexChanged2, "QComboBox_signal_slot_currentIndexChanged2");
 
 procedure QComboBox_setCurrentText(handle:not null QComboBoxH;text:QStringH);
 pragma Import(C,QComboBox_setCurrentText, "QComboBox_setCurrentText");

------------------------------------------------------------------
procedure QComboBox_addItem(handle: not null  QComboBoxH; icon: QIconH; text: QStringH; userData: QVariantH := QVariant_create);
procedure QComboBox_insertItem(handle: not null  QComboBoxH; index: Integer; icon: QIconH; text: QStringH; userData: QVariantH  := QVariant_create);
function  QComboBox_itemData(handle: not null  QComboBoxH; index: Integer; role: QtItemDataRole := QtUserRole) return  integer;

end Qt.QComboBox;
