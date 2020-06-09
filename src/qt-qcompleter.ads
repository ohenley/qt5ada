 
-- ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
-- บ       D E S I G N   E N G I N E E R I N G            บDบSบ        บ
-- บ            S O F T W A R E                           ศอสอผ        บ
-- บ                                                                   บ
-- บ        QtAda - Ada to QT5 interface                               บ
-- บ                                                                   บ
-- บ        Author :  Leonid Dulman     2012,2014,2015                 บ
-- บ Copyright (C) 2012,2014,2015                                      บ
-- ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
--
--   This library is free software; you can redistribute it and/or modify  *
--   it under the terms of the GNU Library General Public License as       *
--   published by the Free Software Foundation; either version 3 of the    *
--   License, or (at your option) any later version.                       *

with Qt.QRect; use Qt.QRect;

package Qt.QCompleter      is

-- CompletitionMode
PopupCompletion           : constant := 0;
UnfilteredPopupCompletion : constant := 1;
InlineCompletion          : constant := 2;
 
 -- ModelSorting 
 UnsortedModel                : constant := 0;
 CaseSensitivelySortedModel   : constant := 1;
 CaseInsensitivelySortedModel : constant := 2;
   
 function  QCompleter_create(parent:QObjectH := null) return QCompleterH ;
 pragma Import(C,QCompleter_create, "QCompleter_create");
 
 function  QCompleter_create2(model:QAbstractItemModelH; parent:QObjectH := null) return QCompleterH ;
 pragma Import(C,QCompleter_create2, "QCompleter_create2");
 
 function  QCompleter_create3(list:QStringListH; parent:QObjectH := null) return QCompleterH ;
 pragma Import(C,QCompleter_create3, "QCompleter_create3");
 
 procedure QCompleter_destroy(handle: not null QCompleterH);
 pragma Import(C,QCompleter_destroy, "QCompleter_destroy");
 
 procedure QCompleter_setWidget(handle: not null QCompleterH;widget:QWidgetH);
 pragma Import(C,QCompleter_setWidget, "QCompleter_setWidget");
 
 function  QCompleter_widget(handle: not null QCompleterH) return QWidgetH;
 pragma Import(C,QCompleter_widget, "QCompleter_widget");
 
 procedure QCompleter_setModel(handle: not null QCompleterH;model:QAbstractItemModelH);
 pragma Import(C,QCompleter_setModel, "QCompleter_setModel");
 
 function  QCompleter_model(handle: not null QCompleterH) return QAbstractItemModelH;
 pragma Import(C,QCompleter_model, "QCompleter_model");
 
 procedure QCompleter_setCompletionMode(handle: not null QCompleterH; mode:integer);
 pragma Import(C,QCompleter_setCompletionMode, "QCompleter_setCompletionMode");
 
 function  QCompleter_completionMode(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_completionMode, "QCompleter_completionMode");
 
 function  QCompleter_popup(handle: not null QCompleterH) return QAbstractItemViewH;
 pragma Import(C,QCompleter_popup, "QCompleter_popup");
 
 procedure QCompleter_setPopup(handle: not null QCompleterH; popup:QAbstractItemViewH);
 pragma Import(C,QCompleter_setPopup, "QCompleter_setPopup");
 
 procedure QCompleter_setCaseSensitivity(handle: not null QCompleterH; caseSensitivity: QtCaseSensitivity);
 pragma Import(C,QCompleter_setCaseSensitivity, "QCompleter_setCaseSensitivity");
 
 function  QCompleter_caseSensitivity(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_caseSensitivity, "QCompleter_caseSensitivity");
 
 procedure QCompleter_setModelSorting(handle: not null QCompleterH; sorting: integer);
 pragma Import(C,QCompleter_setModelSorting, "QCompleter_setModelSorting");
 
 function  QCompleter_modelSorting(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_modelSorting, "QCompleter_modelSorting");
 
 procedure QCompleter_setCompletionColumn(handle: not null QCompleterH; column: integer);
 pragma Import(C,QCompleter_setCompletionColumn, "QCompleter_setCompletionColumn");
 
 function  QCompleter_completionColumn(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_completionColumn, "QCompleter_completionColumn");
 
 procedure QCompleter_setCompletionRole(handle: not null QCompleterH; role:integer);
 pragma Import(C,QCompleter_setCompletionRole, "QCompleter_setCompletionRole");
 
 function  QCompleter_completionRole(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_completionRole, "QCompleter_completionRole");
 
 function  QCompleter_wrapAround(handle: not null QCompleterH) return boolean;
 pragma Import(C,QCompleter_wrapAround, "QCompleter_wrapAround");
 
 function  QCompleter_maxVisibleItems(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_maxVisibleItems, "QCompleter_maxVisibleItems");
 
 procedure QCompleter_setMaxVisibleItems(handle: not null QCompleterH; maxItems: integer);
 pragma Import(C,QCompleter_setMaxVisibleItems, "QCompleter_setMaxVisibleItems");
 
 function  QCompleter_completionCount(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_completionCount, "QCompleter_completionCount");
 
 function  QCompleter_setCurrentRow(handle: not null QCompleterH; row: integer) return boolean;
 pragma Import(C,QCompleter_setCurrentRow, "QCompleter_setCurrentRow");
 
 function  QCompleter_currentRow(handle: not null QCompleterH) return integer;
 pragma Import(C,QCompleter_currentRow, "QCompleter_currentRow");
 
 function  QCompleter_currentIndex(handle: not null QCompleterH) return QModelIndexH;
 pragma Import(C,QCompleter_currentIndex, "QCompleter_currentIndex");
 
 function  QCompleter_currentCompletion(handle: not null QCompleterH) return QStringH;
 pragma Import(C,QCompleter_currentCompletion, "QCompleter_currentCompletion");
 
 function  QCompleter_completionModel(handle: not null QCompleterH) return QAbstractItemModelH;
 pragma Import(C,QCompleter_completionModel, "QCompleter_completionModel");
 
 function  QCompleter_completionPrefix(handle: not null QCompleterH) return QStringH;
 pragma Import(C,QCompleter_completionPrefix, "QCompleter_completionPrefix");

 function  QCompleter_pathFromIndex(handle: not null QCompleterH;index: QModelIndexH) return QStringH;
 pragma Import(C,QCompleter_pathFromIndex, "QCompleter_pathFromIndex");
 
 function  QCompleter_splitPath(handle: not null QCompleterH; path: QStringH) return QStringListH;
 pragma Import(C,QCompleter_splitPath, "QCompleter_splitPath");
 
 procedure QCompleter_setFilterMode(handle:QCompleterH;filterMode:QtMatchFlags);
 pragma Import(C,QCompleter_setFilterMode, "QCompleter_setFilterMode");
 
 function  QCompleter_filterMode(handle:QCompleterH) return QtMatchFlags;
 pragma Import(C,QCompleter_filterMode, "QCompleter_filterMode");
 
 procedure QCompleter_setCompletionPrefix(handle:QCompleterH;prefix:QStringH);
 pragma Import(C,QCompleter_setCompletionPrefix, "QCompleter_setCompletionPrefix");
 
 procedure QCompleter_complete(handle:QCompleterH;rect:QRectH := QRect_create);
 pragma Import(C,QCompleter_complete, "QCompleter_complete");
 
 procedure QCompleter_setWrapAround(handle:QCompleterH; wrap:boolean);
 pragma Import(C,QCompleter_setWrapAround, "QCompleter_setWrapAround");
 
 type QStringEvent is access procedure(text:QStringH);
 pragma convention(C,QStringEvent);

 type QModelIndexEvent is access procedure(index:QModelIndexH);
 pragma convention(C,QModelIndexEvent);

 procedure QCompleter_signal_slot_activated(handle:not null QCompleterH; hook:QStringEvent);
 pragma Import(C,QCompleter_signal_slot_activated, "QCompleter_signal_slot_activated");
 
 procedure QCompleter_signal_slot_highlighted(handle:not null QCompleterH;hook:QStringEvent);    
 pragma Import(C,QCompleter_signal_slot_highlighted, "QCompleter_signal_slot_highlighted");
 
 procedure QCompleter_signal_slot_activated2(handle:not null QCompleterH; hook:QModelIndexEvent);
 pragma Import(C,QCompleter_signal_slot_activated2, "QCompleter_signal_slot_activated2");
 
 procedure QCompleter_signal_slot_highlighted2(handle:not null QCompleterH;hook:QModelIndexEvent);       
 pragma Import(C,QCompleter_signal_slot_highlighted2, "QCompleter_signal_slot_highlighted2");
 
 --------------------------------------------------------------------------------------------
 function  QCompleter_create(model:QAbstractItemModelH; parent:QObjectH := null) return QCompleterH ;
 function  QCompleter_create(list:QStringListH; parent:QObjectH := null) return QCompleterH ;
 procedure QCompleter_signal_slot_activated(handle:not null QCompleterH; hook:QModelIndexEvent);
 procedure QCompleter_signal_slot_highlighted(handle:not null QCompleterH;hook:QModelIndexEvent);       

end;
